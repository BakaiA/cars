import 'package:carapp/carspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Authorization extends StatelessWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 102,
                ),
                const Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 87,
                ),
                const Text(
                  'EMAIL OR PHONE',
                  style: TextStyle(
                      color: Color(0xff2B4C59),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(hintText: 'Loremipsum@gmail.com'),
                ),
                const SizedBox(height: 28),
                const Text(
                  "PASSWORD",
                  style: TextStyle(
                      color: Color(0xff2B4C59),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const TextField(
                  decoration: InputDecoration(hintText: '*********'),
                ),
                const Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: 34),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PageThree()));
                    },
                    child: const Text('Log In'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
