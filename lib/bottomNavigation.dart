import 'package:bookticket_version1/My_Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomApp extends StatefulWidget {
  const BottomApp({super.key});

  @override
  State<BottomApp> createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  int currentIndex = 0;
  List<Widget> pages = [My_Home_Page()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: pages,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index; // Cập nhật chỉ số tab khi thay đổi trang
          });
        },
      ),
      bottomNavigationBar: GNav(
          onTabChange: (index) => {
                setState(() {
                  currentIndex = index; // Cập nhật chỉ số tab khi chọn tab khác
                })
              },
          tabMargin: const EdgeInsets.symmetric(horizontal: 20),
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey,
          tabs: const [
            GButton(
              icon: Icons.home,
              padding: EdgeInsets.all(10),
            ),
            GButton(
              icon: Icons.menu,
              padding: EdgeInsets.all(10),
            )
          ]),
    );
  }
}
