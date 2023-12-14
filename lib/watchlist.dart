import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WatchList extends StatefulWidget {
  const WatchList({Key? key}) : super(key: key);

  _WatchListState createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  bool isList = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isList ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            isList = !isList;
            if (isList) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Added to Watchlist'),
                    duration: Duration(seconds: 1),
                  )
              );
            }
            else {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Removed from Watchlist'),
                    duration: Duration(seconds: 1),
                  )
              );
            }

          });
        });
  }
}
