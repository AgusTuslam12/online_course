import 'package:flutter/material.dart';
import 'package:online_course/HomeScreen.dart';
import 'package:online_course/componen/detailCourse.dart';
import 'package:online_course/theme.dart';

class course extends StatefulWidget {
  const course({Key key}) : super(key: key);

  @override
  State<course> createState() => _courseState();
}

class _courseState extends State<course> {
  @override
  Widget build(BuildContext context) {
    Widget appbar() {
      return AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          'Course Details',
          style: textColor.copyWith(
            fontWeight: semibold,
            fontSize: 14,
          ),
        ),
        leading: IconButton(
          icon: Image.asset('assets/icons/Union.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        leadingWidth: 50,
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 8,
            ),
            child: IconButton(
              icon: Image.asset('assets/icons/whiteList.png'),
              onPressed: () {},
              iconSize: 24,
            ),
          ),
        ],
        elevation: 0,
      );
    }

    Widget body() {
      return detailCourse();
    }

    Widget navBar() {
      return Container(
        height: 72,
        width: double.infinity,
        color: bgItems,
        child: Container(
          margin: const EdgeInsets.only(
            left: 24,
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: textDetail.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Free',
                        style: textFree.copyWith(
                          fontSize: 18,
                          fontWeight: semibold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
                child: Container(
                  width: 226,
                  height: 72,
                  color: colorBlue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Start Course',
                        style: textWhite.copyWith(
                          fontWeight: semibold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: appbar(),
      body: body(),
      bottomNavigationBar: navBar(),
    );
  }
}
