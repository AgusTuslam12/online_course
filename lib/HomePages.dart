import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:online_course/HomeScreen.dart';
import 'package:online_course/componen/course.dart';
import 'package:online_course/theme.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:online_course/widgets/rating.dart';
import 'package:favorite_button/favorite_button.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    Widget heading() {
      return Container(
        width: 108,
        margin: EdgeInsets.only(left: 24, right: 160),
        child: Column(
          children: [
            Text(
              "Want to Study Class what's Today?",
              style: textColor.copyWith(
                fontWeight: semibold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      );
    }

    Widget category(
      int index,
      String imgUrl,
      String name,
      String info,
    ) {
      return Container(
        width: 120,
        height: 120,
        margin: EdgeInsets.only(right: 12),
        padding: EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 12,
            ),
            Image.asset(
              imgUrl,
              width: 42,
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              name,
              style: TextStyle(
                  fontWeight: semibold, fontSize: 12, color: fontColor),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              info,
              style: TextStyle(
                color: fontGrey,
                fontWeight: medium,
                fontSize: 10,
              ),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 24,
              ),
              Row(
                children: [
                  category(0, 'assets/icons/kelas1.png', 'Design', '49 Course'),
                  category(
                      1, 'assets/icons/kelas2.png', 'Soft Skill', '12 Course'),
                  category(2, 'assets/icons/kelas3.png', 'Art', '50 Course'),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget popularCourseTitle() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Course',
              style: textColor.copyWith(
                fontWeight: semibold,
                fontSize: 14,
              ),
            ),
            Text(
              'Show all',
              style: textColor.copyWith(
                fontWeight: medium,
                fontSize: 10,
                color: colorBlue,
              ),
            ),
          ],
        ),
      );
    }

    Widget _popularCourse(
      int idex,
      String imgUrl,
      String type,
      String name,
      String rating,
    ) {
      return Container(
        width: 180,
        height: 205,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: Image.asset(
                imgUrl,
                width: double.infinity,
                fit: BoxFit.fitWidth,
                height: 100,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/detailCourse');
              },
              child: Container(
                margin: EdgeInsets.only(right: 30, left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type,
                      style: textFree.copyWith(
                        fontWeight: semibold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      name,
                      style: textColor.copyWith(
                          fontSize: 12, fontWeight: semibold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 12,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 3,
              ),
              child: Row(
                children: [
                  Rating(),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    rating,
                    style: textDetail.copyWith(
                      fontWeight: medium,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget popularCourse() {
      return Container(
        margin: EdgeInsets.only(
          right: 24,
          left: 24,
          top: 12,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Row(
                children: [
                  _popularCourse(
                    0,
                    'assets/images/Image_course1.png',
                    'Free',
                    'UI Design : Wireframe to Visual Design',
                    '(4016)',
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  _popularCourse(0, 'assets/images/Image_course2.png', 'Free',
                      'UI Design : Styleguide with Figma', '(1055)'),
                  SizedBox(
                    width: 12,
                  ),
                  _popularCourse(0, 'assets/images/Image_course3.png', 'Free',
                      'UI Design : Wireframe to Visual Design', '(1000)'),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget articlesTitle() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Articles',
              style: textColor.copyWith(
                fontWeight: semibold,
                fontSize: 14,
              ),
            ),
            Text(
              'Show all',
              style: textColor.copyWith(
                fontWeight: medium,
                fontSize: 10,
                color: colorBlue,
              ),
            ),
          ],
        ),
      );
    }

    Widget _artikel(
      int index,
      String imgUrl,
      String name,
      String couser,
    ) {
      return Container(
        margin: EdgeInsets.only(
          left: defaultmargin,
          right: defaultmargin,
          top: 6,
        ),
        padding: EdgeInsets.only(
          right: defaultmargin,
        ),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: Image.asset(
                imgUrl,
                height: double.infinity,
                fit: BoxFit.cover,
                width: 86,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: textColor.copyWith(
                          fontSize: 12, fontWeight: semibold),
                    ),
                    Text(
                      couser,
                      style: textDetail.copyWith(
                        fontWeight: medium,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 26,
            ),
            FavoriteButton(
              isFavorite: false,
              iconSize: 30.0,
              valueChanged: (
                _isFavorite,
              ) {
                print('Is Favorite : $_isFavorite');
              },
            ),
          ],
        ),
      );
    }

    Widget artikel() {
      return Container(
        margin: EdgeInsets.only(
          top: 12,
        ),
        padding: EdgeInsets.only(),
        child: Column(
          children: [
            articlesTitle(),
            _artikel(0, 'assets/images/Image_course1.png',
                'How to: Work faster as Full Stack Designer', 'UI Design'),
            _artikel(1, 'assets/images/Image_course2.png',
                'How to: Digital Art from Sketch', 'UI Design'),
            _artikel(2, 'assets/images/image8.png',
                'How to: Work faster as Full Stack Designer', 'UI Design'),
          ],
        ),
      );
    }

    return ListView(
      children: [
        heading(),
        categories(),
        popularCourseTitle(),
        popularCourse(),
        artikel(),
      ],
    );
  }
}
