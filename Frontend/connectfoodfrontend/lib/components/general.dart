import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(key: const Key('messages'), children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 18),
                child: Text('Messages',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Container(
                  child: Row(
                children: [
                  Image.asset(
                    'assets/pic.png',
                    width: 76,
                    height: 76,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Dr. Agbo",
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text("Hello, how are you doing today?",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 15,
                              color: const Color(0xFF3C4043),
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0, bottom: 20),
                      child: Text("12:00pm",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 14, color: const Color(0xFF3C4043))),
                    ),
                  ),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Container(
                  child: Row(
                children: [
                  Image.asset(
                    'assets/pic.png',
                    width: 76,
                    height: 76,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Dr. Agbo",
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text("Hello, how are you doing today?",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 15,
                              color: const Color(0xFF3C4043),
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0, bottom: 20),
                      child: Text("12:00pm",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 14, color: const Color(0xFF3C4043))),
                    ),
                  ),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22.0, top: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () {},
                    child: Text("See more ...",
                        style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF3C4043)))),
              ),
            )
          ]),
          const SizedBox(height: 20),
          Column(key: const Key('Follow Request'), children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 18),
                child: Text('Follow Requests',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Container(
                  child: Row(
                children: [
                  Image.asset(
                    'assets/pic.png',
                    width: 76,
                    height: 76,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Dr. Agbo",
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text("Food nutritionist",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 15,
                              color: const Color(0xFF3C4043),
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const Form2()));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xFF34A853),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                        child: const Text(
                          "Follow back",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Container(
                  child: Row(
                children: [
                  Image.asset(
                    'assets/pic.png',
                    width: 76,
                    height: 76,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Dr. Agbo",
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text("Food nutritionist",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 15,
                              color: const Color(0xFF3C4043),
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const Form2()));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xFF34A853),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                        child: const Text(
                          "Follow back",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22.0, top: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () {},
                    child: Text("See more ...",
                        style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF3C4043)))),
              ),
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          Column(key: const Key('likes and comments'), children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 18),
                child: Text('Likes and Comments',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Container(
                  child: Row(
                children: [
                  Image.asset(
                    'assets/pic.png',
                    width: 76,
                    height: 76,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Saka",
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text("Liked your post",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 15,
                              color: const Color(0xFF3C4043),
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22.0, top: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () {},
                    child: Text("See more ...",
                        style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF3C4043)))),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
