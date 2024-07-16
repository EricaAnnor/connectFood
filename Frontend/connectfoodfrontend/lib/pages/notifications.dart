import 'package:connectfoodfrontend/components/general.dart';
import 'package:connectfoodfrontend/components/responses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Notifications(),
    );
  }
}

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF34A853)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text('Notifications'),
            centerTitle: true,
            expandedHeight: 180.0,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 14.0),
                child: Icon(
                  Icons.message_outlined,
                  size: 30,
                ),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  const SizedBox(
                    height: 70.0, // Adjust the height here
                  ),
                  const Divider(
                    color: Color(0xFFD9D9D9),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 12, left: 16),
                    child: SizedBox(
                      width: 358,
                      height: 44,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(top: 10.0, bottom: 5),
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search),
                            alignLabelWithHint: true,
                            labelStyle: TextStyle(height: 2.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                              borderSide: BorderSide(
                                color: Color(0xFF34A853),
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                              borderSide: BorderSide(
                                color: Color(0xFF34A853),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  TabBar(
                    controller: _tabController,
                    indicator: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0xFF34A853)))),
                    labelColor: const Color(0xFF34A853),
                    unselectedLabelColor: const Color(0xFF3C4043),
                    tabs: [
                      SizedBox(
                        child: Center(
                            child: Text("General",
                                style: GoogleFonts.nunitoSans(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: SizedBox(
                          width: 180,
                          height: 36,
                          child: Center(
                              child: Text("Consultant Responses",
                                  style: GoogleFonts.nunitoSans(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: _tabController,
              children: const [
                General(),
                Responses(),
              ],
            ),
          ),
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
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }
}
