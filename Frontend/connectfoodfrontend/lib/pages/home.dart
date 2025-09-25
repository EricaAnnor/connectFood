import 'package:connectfoodfrontend/components/homeCard.dart';
import 'package:connectfoodfrontend/pages/myprofile.dart';
import 'package:connectfoodfrontend/pages/notifications.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 14),
          child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyProfile()));
              },
              child: Image.asset('assets/profile.png')),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20, left: 34),
          child: SizedBox(
            width: 220,
            height: 36,
            child: Center(
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 10.0),
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                  alignLabelWithHint: true,
                  labelStyle: GoogleFonts.nunitoSans(height: 2.0),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: Color(0xFF34A853)),
                  ),
                  focusedBorder: const OutlineInputBorder(
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
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Notifications()));
              },
              child: const Icon(Icons.notifications,
                  size: 30, color: Color(0xFF34A853)),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(78.0),
          child: TabBar(
            controller: _tabController,
            indicator:
                const BoxDecoration(border: Border(bottom: BorderSide.none)),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  width: 120,
                  height: 36,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 0
                        ? const Color(0xFF26AE57)
                        : const Color(0xFFE3F3DD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    "All",
                    style: GoogleFonts.nunitoSans(),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  width: 120,
                  height: 36,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 1
                        ? const Color(0xFF26AE57)
                        : const Color(0xFFE3F3DD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text("Facts", style: GoogleFonts.nunitoSans())),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  width: 120,
                  height: 36,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 2
                        ? const Color(0xFF26AE57)
                        : const Color(0xFFE3F3DD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text("Hygiene", style: GoogleFonts.nunitoSans())),
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          SingleChildScrollView(
              child: Column(children: [
            HomeCard(),
            HomeCard(),
          ])),
          Center(child: Text('Content of Tab 2')),
          Center(child: Text('Content of Tab 3')),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }
}
