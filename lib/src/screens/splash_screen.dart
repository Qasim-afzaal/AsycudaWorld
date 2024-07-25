import 'package:asycudeworld/src/screens/home_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CountryPickerScreen()), 
        
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.black,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              "assets/images/splash/animated_logo_bounce.gif",
              height: 300,
              width: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
                textAlign: TextAlign.center,
                "Asycuda World \n Mobile App",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 40,
                    fontWeight: FontWeight.w800)),
            const SizedBox(
              height: 40,
            ),
            const Text(
                textAlign: TextAlign.center,
                "Loading...",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600)),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset("assets/images/splash/loading.gif",
                            height: 90, width: 90),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text(
                          textAlign: TextAlign.center,
                          "Architech Engineer: Vanavah Edwards",
                          style: TextStyle(
                              color: Colors.orange,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
