import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studiox/buy_ticket.dart';

class BuyTicket extends StatefulWidget {
  const BuyTicket({Key? key}) : super(key: key);

  _BuyTicketState createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicket> {
  bool isBuy = true;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        child: isBuy
            ? const Text(
                'Beli Tiket',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                Text(
                  'Buyed',
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.check,
                  color: Colors.green,
                )
              ]),
        onPressed: () {
          setState(() {
            isBuy = false;
            showDialog(context: context, builder: (context){
              return const AlertDialog(
                content: Text('You succeed buy the ticket',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              );
            });
          });
        });
  }
}
/*if (isBuy==true) {
            ElevatedButton(
                child: Row(children: const [
                  Text(
                    'Buyed',
                    style: TextStyle(color: Colors.greenAccent),
                  ),
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  )
                ]),
                onPressed: () {
                  isBuy = true;
                });
          }
        });
      },
    );
  }
}*/

/*
    ElevatedButton(
    child: const Text('Beli Tiket',
    style: TextStyle(
    fontSize: 30,
    color: Colors.red,
    fontWeight: FontWeight.bold,
    ),),
    onPressed: () {
    setState(() {
    isBuy = true;
    });
    },);
    }]),
           ],
         );
*/
