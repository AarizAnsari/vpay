import 'package:flutter/material.dart';
import 'package:vpay/Screens/Options.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
backgroundColor: Colors.black,
            title: Text('Vpay'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  Options(option: 1,heading:"Send Money")));},
                    style: ElevatedButton.styleFrom(
                      elevation: 25,
                      padding: EdgeInsets.symmetric( vertical: 20.0),
                      primary: Colors.black,
                      shape: StadiumBorder(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Send Money",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(width: 30,),
                        Icon(Icons.arrow_upward)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) =>  Options(option: 2,heading:"Recieve Money")));},
                    style: ElevatedButton.styleFrom(
                      elevation: 25,
                      padding: EdgeInsets.symmetric(
                         vertical: 20.0),
                      primary: Colors.black,
                      shape: StadiumBorder(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Recieve Money",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.arrow_downward)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  Options(option: 3,heading:"Check Balance")));},
                    style: ElevatedButton.styleFrom(
                      elevation: 25,
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0),
                      primary: Colors.black,
                      shape: StadiumBorder(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Check Balance",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(width: 20,),
                        Icon(Icons.currency_rupee)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
