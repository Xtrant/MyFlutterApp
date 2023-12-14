import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studiox/main_image_list.dart';

class Voucher extends StatelessWidget {
  final ImageVoucher voucher;

  const Voucher({Key? key, required this.voucher}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: SizedBox(
                  height: 400,
                    child: Image.network(voucher.url)),
              ),
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
            ]),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          content: Text(
                            'Sorry, I will update this app',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        );
                      });
                },
                child: const Text(
                  'Use Voucher',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
