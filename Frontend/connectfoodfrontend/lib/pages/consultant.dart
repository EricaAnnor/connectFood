import 'package:connectfoodfrontend/components/profileCard.dart';
import 'package:flutter/material.dart';

class ConsultantPage extends StatefulWidget {
  const ConsultantPage({super.key});

  @override
  _ConsultantPageState createState() => _ConsultantPageState();
}

class _ConsultantPageState extends State<ConsultantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 14),
              child: Image.asset('assets/profile.png'),
            ),
            title: const Padding(
              padding: EdgeInsets.only(top: 20, left: 34),
              child: SizedBox(
                width: 220,
                height: 36,
                child: Center(
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10.0),
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      alignLabelWithHint: true,
                      labelStyle: TextStyle(height: 2.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Color(0xFF34A853)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Color(0xFF34A853)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 16, right: 10, bottom: 30),
                child: IconButton(
                  icon: const Icon(Icons.notifications,
                      size: 30, color: Color(0xFF34A853)),
                  onPressed: () {},
                ),
              ),
            ]),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
              padding: EdgeInsets.only(top: 18.0, left: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Consultants',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),

          const SizedBox(
            height: 20,
          ),

          // Consultant List
          Column(
            children: [
              Container(
                  child: Center(
                child: Column(children: [
                  Image.asset('assets/profile 1.png'),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfileCard()));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xFF34A853),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 34, vertical: 10),
                        ),
                        child: const Text(
                          "View Profile",
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
                  const Divider(
                    height: 2,
                  )
                ]),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                    child: Center(
                  child: Column(children: [
                    Image.asset('assets/profile 1.png'),
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
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: const Color(0xFFE3F3DD),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 34, vertical: 10),
                          ),
                          child: const Text(
                            "View Profile",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                )),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          )
        ]),
      ),
    );
  }
}
