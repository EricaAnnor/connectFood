import 'package:connectfoodfrontend/pages/signup.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 32,
              left: 0,
              child: Image.asset(
                "assets/logo.png",
                width: 160,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/splashImg.png",
                  ),
                  Column(children: [
                    Text(
                      "Elevate your food",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 32,
                          // fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900,
                          color: const Color(0xFF26AE57)),
                    ),
                    Center(
                      child: Text(
                        "operations",
                        style: GoogleFonts.nunitoSans(
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            // fontFamily: 'Poppins',
                            color: const Color(0xFF26AE57)),
                      ),
                    )
                  ]),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 60,
              left: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signup()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF26AE57),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(5)), // Small border radius

                  padding:
                      const EdgeInsets.symmetric(horizontal: 78, vertical: 14),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    // fontFamily: 'Poppins'
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
