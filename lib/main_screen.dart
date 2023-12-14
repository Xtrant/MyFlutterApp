import 'package:flutter/material.dart';
import 'package:studiox/detail_screen.dart';
import 'package:studiox/notification.dart';
import 'package:studiox/profile.dart';
import 'package:studiox/text_detail_list.dart';
import 'package:studiox/voucher.dart';

import 'main_image_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    MediaQuery.of(context).size;
    MediaQuery.of(context).orientation;

    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'StudioXt',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 30,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.person_pin_outlined,
                color: Colors.white60,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const Profile();
                }));
              }, //profile berisi nama,gender,dll
            ),
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.orangeAccent,
              size: 35,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NotificationState();
              }));
            }, //Ke halaman berisi center Text tidak ada notif terbaru
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue, width: 1.5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.money_outlined,
                              color: Colors.green,
                              size: 23,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Rp1.500.000,00',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12, fontFamily: 'Ariel'),
                                ),
                                Text(
                                  'Saldo Saya',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12, fontFamily: 'Ariel'),
                                )
                              ],
                            ),
                          ],
                        )),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue, width: 1.5),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.monetization_on,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '150',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12, fontFamily: 'Ariel'),
                                ),
                                Text(
                                  'Koin Saya',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12, fontFamily: 'Ariel'),
                                )
                              ],
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 1.5),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.transfer_within_a_station,
                                color: Colors.blue,
                                size: 12,
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Transfer',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12, fontFamily: 'Ariel'),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration:
                        const BoxDecoration(color: Colors.white70, boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        offset: Offset(3, 6),
                        blurRadius: 5,
                      )
                    ]),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '   Film yang Sedang Tayang    ',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              SingleChildScrollView(
                child: SizedBox(
                    height: 200,
                    child: Scrollbar(
                      child : Container(
                        height: 50,
                          padding: const EdgeInsets.only(bottom: 12),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final TextDetailList list = textList[index];
                          return InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return DetailScreen(
                                    list: list,
                                  );
                                }));
                              },
                              child: SizedBox(
                                width: 200,
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(list.imageAsset),
                                    ),
                                  ),
                                ),
                              ));
                        },
                        itemCount: textList.length,
                      ),
                      )
                    )
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration:
                        const BoxDecoration(color: Colors.white70, boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        offset: Offset(3, 6),
                        blurRadius: 5,
                      )
                    ]),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '    Voucher yang Tersedia    ',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              SingleChildScrollView(
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder : (BuildContext context, int index){
                        final ImageVoucher voucher = listVoucher[index];
                        return Card(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Voucher(voucher: voucher);
                                }));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(voucher.url),
                                ),
                              )),
                        );
                      },
                    itemCount: listVoucher.length,
                      )
                ),
              ),
            ],
          ),
        ));
  }
}
