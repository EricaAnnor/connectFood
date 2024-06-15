import 'package:connectfoodfrontend/signin.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implemen
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xFF26AE57),
            appBar: AppBar(
              backgroundColor: const Color(0xFF26AE57),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 96,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(72),
                        topRight: Radius.circular(72),
                      ),
                    ),
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 38, left: 30, bottom: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
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
                                        fontWeight: FontWeight.w400,
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
                                      fillColor: const Color(0xFFD9D9D9),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                            const SizedBox(height: 14),
                            Column(children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 34),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Email',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
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
                                      fillColor: const Color(0xFFD9D9D9),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                            const SizedBox(height: 14),
                            Column(children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 34),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Password',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 24),
                                child: SizedBox(
                                  height: 50,
                                  child: TextFormField(
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      fillColor: const Color(0xFFD9D9D9),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 24,
                                right: 24,
                              ),
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: _isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _isChecked = value!;
                                      });
                                    },
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 16.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "I agree to all the terms included in the",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          " Terms of Service",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF26AE57),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF26AE57),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 64, vertical: 14),
                                ),
                                child: const Text(
                                  "Create Account",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Row(
                          children: [
                            SizedBox(
                                width: 130,
                                height: 1,
                                child: (DecoratedBox(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ))))),
                            const Padding(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              child: Text('or',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                            SizedBox(
                                width: 130,
                                height: 1,
                                child: (DecoratedBox(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ))))),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                          height: 50,
                          width: 350,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFDADCE0),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0, right: 90),
                                    child: Image.asset('assets/google.png'),
                                  ),
                                  const Center(
                                    child: Text("Sign in with google"),
                                  )
                                ],
                              ))),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 12.0, left: 80),
                            child: Text("Already have an acount?",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Signin()),
                                );
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(color: Color(0xFF26AE57)),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
                  )
                ],
              ),
            )));
  }
}
