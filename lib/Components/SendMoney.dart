import 'package:flutter/material.dart';
import 'package:vpay/Screens/Options.dart';
import 'package:vpay/Services.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  var id='';
  var amt=0;
  bool ctr = false;
  @override
  Widget build(BuildContext context) {
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
                label: Text("Enter UPI ID")
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
          child: TextFormField(
            keyboardType: TextInputType.number,
            onChanged: (val){
              amt=int.parse(val);
            },
            cursorColor: Colors.black,
            decoration:  const InputDecoration(
                label: Text("Enter Amount")
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
          child: TextFormField(
            keyboardType: TextInputType.number,
            onChanged: (val){
              if(val==amt){
                setState(() {
                  ctr=true;
                });
              }
            },
            cursorColor: Colors.black,
            decoration:  const InputDecoration(
                label: Text("Confirm Amount")
            ),
          ),
        ),
        SizedBox(height: 30,),
        SizedBox(
          width: 320,
          child: ElevatedButton(
            onPressed: () {Services().sendMoney();},
            style: ElevatedButton.styleFrom(
              elevation: 25,
              padding: EdgeInsets.symmetric(
                  vertical: 20.0),
              primary: Colors.black,
              shape: StadiumBorder(),
            ),
            child: Text(
              "Continue",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
