import 'package:flutter/material.dart';
import 'package:vpay/Components/CheckBalance.dart';
import 'package:vpay/Components/RecieveMoney.dart';
import 'package:vpay/Components/SendMoney.dart';
import 'package:vpay/Screens/Home.dart';
import 'package:vpay/Services.dart';

class Options extends StatefulWidget {
  var option;
  var heading;
  Options({required this.option,required this.heading});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override

  Widget build(BuildContext context) {
if(widget.option==1){Services().sendMoney();}
else if(widget.option ==2){Services().recieveMoney();}
else{Services().checkBalance();}

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(widget.heading),
            centerTitle: true,
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: CircularProgressIndicator(),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 450, 0, 0),
                    child: SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  Home()));},
                        style: ElevatedButton.styleFrom(
                          elevation: 25,
                          padding: EdgeInsets.symmetric(
                              vertical: 20.0),
                          primary: Colors.white30,
                          shape: StadiumBorder(),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Go Back",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(width: 20,),
                            Icon(Icons.arrow_back)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ),
        )
    );
  }
}
