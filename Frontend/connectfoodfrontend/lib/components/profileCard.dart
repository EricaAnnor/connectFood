import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor:
                  const Color(0xFFD9D9D9), // Set the background color

              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              title: const Text('Profile',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500)),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Column(children: [
                    Image.asset('assets/profile 2.png'),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 16),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Dr Agbo Tetteh",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            )),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Food nutritionist | Senior Researcher",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("University of Ghana",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Color(0xFFF9AD1A)),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: Color(0xFFF9AD1A)),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: Color(0xFFF9AD1A)),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: Color(0xFFF9AD1A)),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: Color(0xfffd9d9d9)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text("72 ratings",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xFF3C4043),
                                ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const ProfileCard()));
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xFF26AE57),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 34, vertical: 10),
                          ),
                          child: const Text(
                            "Engage",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 10,
                      color: const Color(0xFFD9D9D9),
                    ),
                  ]),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.0, left: 20),
                          child: Text('Bio',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                              )),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 20),
                        child: Text(
                            "Dr. Agbo has a decade of experience in nutritional planning and dietetics, working with clients to develop healthy eating plans.",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                      Container(
                        height: 10,
                        color: const Color(0xFFD9D9D9),
                      ),
                      Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 20.0, left: 20, bottom: 20),
                              child: Text('Credentials and Expertise',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                  )),
                            ),
                          ),
                          const Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.fiber_manual_record,
                                    size: 12, color: Colors.black),
                                title: Text(
                                    'Master of Business Administration (MBA) - [University Name]',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              ListTile(
                                leading: Icon(Icons.fiber_manual_record,
                                    size: 12, color: Colors.black),
                                title: Text(
                                    'Master of Business Administration (MBA) - [University Name]',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                            color: const Color(0xFFD9D9D9),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 20.0, left: 20, bottom: 20),
                              child: Text('Services Offered',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                  )),
                            ),
                          ),
                          const Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.fiber_manual_record,
                                    size: 12, color: Colors.black),
                                title: Text('Strategic Planning and Management',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                              ListTile(
                                leading: Icon(Icons.fiber_manual_record,
                                    size: 12, color: Colors.black),
                                title: Text('Operational Efficiency',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                            color: const Color(0xFFD9D9D9),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ))));
  }
}
