import 'package:flutter/material.dart';
import 'package:studiox/buy_ticket.dart';
import 'package:studiox/text_detail_list.dart';
import 'package:studiox/watchlist.dart';

class DetailScreen extends StatelessWidget {
  final TextDetailList list;

  const DetailScreen({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 500,
                  child: Center(
                    child: Image.asset(
                      list.imageAsset,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const WatchList()
                  ],
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  list.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: 'Arial', fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  decoration:
                      const BoxDecoration(color: Colors.lightBlueAccent),
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list.genre,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              list.duration,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              list.director,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(fontSize: 20),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 30, bottom: 10),
                                  child: Text(
                                    'Deskripsi Film',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Text(
                                  list.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                )
                              ],
                            )
                          ]))),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: BuyTicket(),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
