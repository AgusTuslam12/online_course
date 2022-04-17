import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_course/componen/detailCourse.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:online_course/theme.dart';
import 'package:online_course/HomePages.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  static const nameRoute = '/homepages';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0; //default index

  @override
  Widget build(BuildContext context) {
    Widget appbar() {
      return AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset("assets/images/Profile.png"),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Image.asset("assets/icons/btn_search.png"),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("assets/icons/btn_notif.png"),
            onPressed: () {},
          )
        ],
      );
    }

    Widget customNavbar() {
      return BottomNavigationBar(
        fixedColor: bgColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            print(value);
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Image.asset(
                    'assets/icons/Home.png',
                    width: 24,
                    color: _selectedIndex == 0 ? btn_Color : bg_buttom,
                  )),
              label: ''),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              margin: EdgeInsets.only(top: 5),
              child: SvgPicture.asset(
                'assets/icons/List.svg',
                width: 24.0,
                height: 24.0,
                color: _selectedIndex == 1 ? btn_Color : bg_buttom,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 5),
              child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  size: 24.0,
                  color: _selectedIndex == 2 ? favorite : bg_buttom,
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(top: 5, bottom: 0),
              child: Image.asset(
                'assets/icons/Profile_nav.png',
                width: 24,
              ),
            ),
            label: '',
          ),
        ],
      );
    }

    Widget body() {
      switch (_selectedIndex) {
        case 0:
          return HomePages();
          break;
        case 1:
          return HomePages();
          break;
        default:
          return HomePages();
      }
    }

    return Scaffold(
      appBar: appbar(),
      body: body(),
      bottomNavigationBar: customNavbar(),
    );
  }
}
