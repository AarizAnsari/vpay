import 'package:flutter/material.dart';
import 'package:vpay/Services.dart';

class CheckBalance extends StatefulWidget {
  const CheckBalance({Key? key}) : super(key: key);

  @override
  State<CheckBalance> createState() => _CheckBalanceState();
}

class _CheckBalanceState extends State<CheckBalance> {
  @override

  @override
  Widget build(BuildContext context) {
    Services().checkBalance();
    if(true){
    return Center(
      child: Container(
        child:CircularProgressIndicator(

        )
      ),
    );}
    else{
      return Container();
    }
  }
}
