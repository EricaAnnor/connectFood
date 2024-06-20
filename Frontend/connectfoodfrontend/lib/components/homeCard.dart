import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
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
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Erica Annor',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.black)),
                            Text(
                              '2d.',
                              style: TextStyle(
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
                    child: const Text(
                      "Follow +",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(child: Image.asset('assets/homeImage.png', width: 380)),
              const SizedBox(height: 10),
              const Text(
                  'Strawberries are the only fruit with seeds on the outside, boasting about 200 seeds per berry!',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              // const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                          )),
                      const Text('25 likes',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.chat_bubble_text,
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
}
