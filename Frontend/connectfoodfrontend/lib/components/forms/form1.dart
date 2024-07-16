import 'package:connectfoodfrontend/components/forms/form2.dart';
import 'package:flutter/material.dart';

class Form1 extends StatefulWidget {
  const Form1({super.key});

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final contactController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF34A853)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Consultation',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 180),
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
              Padding(
                padding: const EdgeInsets.only(right: 30.0, top: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Form2()));
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
                      "Next >",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
