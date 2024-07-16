import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Responses extends StatefulWidget {
  const Responses({super.key});

  @override
  _ResponsesState createState() => _ResponsesState();
}

class _ResponsesState extends State<Responses> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        key: const Key('responses'), // Ensure this key is unique and necessary
        children: [
          _buildMessageWidget(),
          const SizedBox(height: 14),
          _buildMessageWidget(),
          Padding(
            padding: const EdgeInsets.only(right: 22.0, top: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Implement your "See more..." functionality here
                },
                child: Text(
                  "See more ...",
                  style: GoogleFonts.nunitoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF3C4043),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Container(
        child: Row(
          children: [
            Image.asset(
              'assets/pic.png',
              width: 76,
              height: 76,
            ),
            const SizedBox(width: 10), // Add space between image and text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Dr. Agbo",
                        style: GoogleFonts.nunitoSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "Responded",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 15,
                      color: const Color(0xFF3C4043),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(), // Use Spacer for flexible space
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, bottom: 2),
                    child: Text(
                      "12:00pm",
                      style: GoogleFonts.nunitoSans(
                        fontSize: 14,
                        color: const Color(0xFF3C4043),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, bottom: 0),
                    child: Text(
                      "View Response",
                      style: GoogleFonts.nunitoSans(
                        fontSize: 14,
                        color: const Color(0xFF26AE57),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
