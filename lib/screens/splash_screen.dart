import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/images/pizza.png"),
                height: 400,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
   "Food Ordering App",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: const Text(
                    "Get a meal",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
