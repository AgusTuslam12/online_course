import 'package:flutter/material.dart';
import 'package:online_course/HomeScreen.dart';
import 'package:online_course/theme.dart';

class detailCourse extends StatelessWidget {
  const detailCourse({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        width: 327,
        height: 227,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          'assets/images/PlayTrailer.png',
          height: double.infinity,
          width: double.infinity,
        ),
      );
    }

    Widget header() {
      return Container(
        padding: EdgeInsets.only(
          top: 14,
        ),
        margin: EdgeInsets.only(left: 24, right: 160),
        child: Column(
          children: [
            Text(
              'UI Design : Wireframe to Visual Design',
              style: textColor.copyWith(
                fontSize: 18,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget mentor() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultmargin,
          top: 12,
          right: 10,
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Image.asset(
                'assets/images/mentor.png',
                width: 40,
                height: 40,
              ),
            ),
            SizedBox(
              width: 6,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shem Bizo',
                    style: textColor.copyWith(
                      fontWeight: semibold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Mentor UI Designer',
                    style: textDetail.copyWith(
                      fontWeight: medium,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/icons/icon_right.png'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget _listDetail(
      int index,
      String name,
    ) {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        margin: EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: index == 1 ? bglistButtom : bgItems,
          // border: Border.all(width: 0.5),
        ),
        child: Text(
          name,
          style: index == 1
              ? textBlue.copyWith(
                  fontWeight: semibold,
                  fontSize: 12,
                )
              : textColor.copyWith(
                  fontWeight: semibold,
                  fontSize: 12,
                ),
        ),
      );
    }

    Widget listDetail() {
      var categories;
      return Container(
        margin: EdgeInsets.only(
          top: defaultmargin,
          left: defaultmargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _listDetail(0, 'About'),
              _listDetail(1, 'Lesson'),
              _listDetail(2, 'Tools'),
              _listDetail(3, 'Resource'),
              _listDetail(4, 'Review'),
            ],
          ),
        ),
      );
    }

    Widget courseListTiltle() {
      return Padding(
        padding: EdgeInsets.only(
          top: 12,
          left: defaultmargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Course List',
              style: textColor.copyWith(
                fontWeight: semibold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    Widget _courseList(
      int index,
      String number,
      String name,
      String date,
    ) {
      return Container(
        padding: EdgeInsets.symmetric(
          vertical: 12,
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: bglistButtom,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number,
                    style: textBlue.copyWith(
                      fontWeight: semibold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: textColor.copyWith(
                    fontWeight: semibold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  date,
                  style: textDetail.copyWith(
                    fontSize: 14,
                    fontWeight: reguler,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget courseList() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultmargin,
          right: defaultmargin,
          top: 6,
          bottom: defaultmargin,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgItems,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _courseList(0, '1', 'Visual Design Into', '04:47'),
              _courseList(1, '2', 'Design Reference', '03:45'),
              _courseList(2, '3', 'Careate Moodboard', '03:45'),
              _courseList(3, '4', 'Wireframe to Visual Design Part 1', '08:40'),
              _courseList(4, '5', 'Wireframe to Visual Design Part 2', '09:50'),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        content(),
        header(),
        mentor(),
        listDetail(),
        courseListTiltle(),
        courseList(),
      ],
    );
  }
}
