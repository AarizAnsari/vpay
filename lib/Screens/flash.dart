import 'package:flutter/material.dart';
import 'package:vpay/Screens/Home.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                height: 200,
                child: Card(
                  color: Colors.black,
                  elevation: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Important Note:',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '1. Make sure that the registered account number is present in the Phone.',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '2. Allow the Phone permission for the app to work properly',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const Home()));},
            style: ElevatedButton.styleFrom(
              elevation: 25,
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width/2 -70, vertical: 20.0),
              primary: Colors.black,
              shape: StadiumBorder(),
            ),
            child: Text(
              "Continue",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    ));
  }
}
