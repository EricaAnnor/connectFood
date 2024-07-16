import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final contactController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF34A853)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Edit Profile'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 24, bottom: 14),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg"),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 56.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Edit',
                      style: TextStyle(
                          color: Color(0xFF34A853),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                ),
              ),
              const SizedBox(height: 80),
              Form(
                child: Column(
                  children: [
                    Column(children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Name',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 24),
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xFF34A853), width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xFF34A853), width: 2.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xFF34A853), width: 2.0),
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                    const SizedBox(height: 50),
                    Column(children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 34),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Email',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 24),
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xFF34A853),
                                    width: 2,
                                    style: BorderStyle.solid),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xFF34A853), width: 2.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xFF34A853), width: 2.0),
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                    const SizedBox(height: 50),
                    Column(children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 34),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Contact',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 24),
                        child: SizedBox(
                          height: 50,
                          child: TextFormField(
                            controller: contactController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 2.0,
                                  color: Color(0xFF34A853),
                                  style: BorderStyle.solid,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xFF34A853), width: 2.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Color(0xFF34A853), width: 2.0),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 34),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const Form1()));
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
                      "Save",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
