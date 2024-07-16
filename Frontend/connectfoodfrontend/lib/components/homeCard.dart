import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    const String text =
        'Guys, the combination of Gari and Peanuts is a Ghanaian delight. Discover this in our chocolate bars.'
        '#peanut #chocolate #BIOKO #newfavorite #recommendation #delicious #yummy #foodie #foodlover #foodblogger';

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14, top: 14),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Image.asset('assets/profile.png'),
                    const SizedBox(width: 14),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Erica Annor',
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.black)),
                            Text(
                              '2d.',
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            )
                          ]),
                    )
                  ]),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF26AE57),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 26, vertical: 8),
                    ),
                    child: Text(
                      "Follow +",
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(child: Image.asset('assets/chocolate.png', width: 380)),
              const SizedBox(height: 25),
              Text.rich(
                TextSpan(
                  children: _getTextSpans(text, isExpanded ? text.length : 100),
                ),
                style: GoogleFonts.nunitoSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Text(
                      isExpanded ? 'See less' : 'See more',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border, size: 30)),
                      Text('25 likes',
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.chat_bubble_text,
                        size: 30,
                        color: Colors.black,
                      )),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 10,
          color: const Color(0xFFCCCCCF),
        ),
      ],
    );
  }

  List<TextSpan> _getTextSpans(String text, int length) {
    final RegExp hashtagRegExp = RegExp(r'(#[a-zA-Z0-9_]+)');
    final List<TextSpan> spans = [];
    final String truncatedText =
        text.length > length ? '${text.substring(0, length)}...' : text;

    truncatedText.splitMapJoin(
      hashtagRegExp,
      onMatch: (Match match) {
        spans.add(
          TextSpan(
            text: match.group(0),
            style: const TextStyle(color: Color(0xFF26AE57)),
          ),
        );
        return '';
      },
      onNonMatch: (String nonMatch) {
        spans.add(TextSpan(text: nonMatch));
        return '';
      },
    );

    return spans;
  }
}
