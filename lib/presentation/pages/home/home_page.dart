import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nsg_biolabs/presentation/pages/pages.dart';
import 'package:nsg_biolabs/shared/widgets/card%20item/booking_item.dart';

import '../../../data/model/infor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            "NSG Biolab",
            style: TextStyle(backgroundColor: Colors.white, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, top: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "My Upcoming Bookings",
                  style: TextStyle(color: Colors.lime[900], fontWeight: FontWeight.bold),
                ),
              ),
              // ConstrainedBox(
              //   constraints: BoxConstraints(),
              //   child: SingleChildScrollView(
              //     scrollDirection: Axis.vertical,

              //     child: Column(
              //       children: List.generate(inforListDemo.length, (index) => _item(inforListDemo[index])),
              //     ),
              //   ),
              // ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ClampingScrollPhysics(),
                  itemCount: inforListDemo.length,
                  itemBuilder: (BuildContext context, int index) {
                    return BookingItem(infor:  inforListDemo[index]);
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => BookingPage(),
            ),
          ),
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  
}
