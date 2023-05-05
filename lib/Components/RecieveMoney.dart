import 'package:flutter/material.dart';
import 'package:vpay/Screens/Options.dart';
import 'package:vpay/Services.dart';

class RecieveMoney extends StatefulWidget {
  const RecieveMoney({Key? key}) : super(key: key);

  @override
  State<RecieveMoney> createState() => _RecieveMoneyState();
}

class _RecieveMoneyState extends State<RecieveMoney> {
  @override
  Widget build(BuildContext context) {
    var id;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
          child: TextFormField(
            onChanged: (val){
              id=val;
            },
            cursorColor: Colors.black,
            decoration:  const InputDecoration(
                label: Text("Enter Number or UPI ID")
            ),
          ),
        ),
        SizedBox(height: 60,),
        SizedBox(
          width: 320,
          child: ElevatedButton(
            onPressed: () {Services().recieveMoney();},
            style: ElevatedButton.styleFrom(
              elevation: 25,
              padding: EdgeInsets.symmetric(
                  vertical: 20.0),
              primary: Colors.black,
              shape: StadiumBorder(),
            ),
            child: Text(
              "Bank Account",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
