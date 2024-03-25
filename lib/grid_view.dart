import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'screen_helper.dart';

class GridListView extends StatefulWidget {
  const GridListView({super.key});

  @override
  State<GridListView> createState() => _GridListViewState();
}

class _GridListViewState extends State<GridListView> {
  List image = [
    '1.jpg',
    '2.jpg',
    '3.jpg',
    '4.jpg',
    '5.jpg',
    '6.jpg',
    '7.jpg',
    '8.jpg',
    '9.jpg',
    '10.jpg',
    '11.jpg',
  ];

  List imageText = [
    'Happy New Year',
    'Start Celebration',
    'Great Time',
    'Stay Safe & Cheer',
    'We Are One Step Away',
    'Enjoy Have Fun, Lots of Love',
    'We Love You All',
    'Thank You For Watching',
    'Please Subscribe',
    'Enjoy Your Day With Your Family & Friends',
    'Enjoy Your Day With Your Family & Friends',
    'Eat Sleep Code Workout Repeat'
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
          backgroundColor: Colors.cyan[200],
        ),
        backgroundColor: Colors.grey[200],
        body: AnimationLimiter(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: ScreenHelper.isMobile(context) ? 2 : 4,
              ),
            shrinkWrap: true,
            itemCount: image.length,
            itemBuilder: (context, index) => _gridItem(index),
          ),
        ),
      );

  Widget _gridItem(int index) => Padding(
        padding: const EdgeInsets.all(12),
        child: AnimationConfiguration.staggeredGrid(
          duration: const Duration(milliseconds: 1000),
          position: index,
          columnCount:  image.length,
          child: FlipAnimation(
            child: Card(
              color: Colors.white,
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                side: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(12.0),
                        topLeft: Radius.circular(12.0)),
                    // ignore: prefer_interpolation_to_compose_strings
                    child: SizedBox(
                      height:  200,
                      width:  double.infinity,
                      child: Image.asset(
                        "assets/images/" + image[index],
                        fit: BoxFit.cover,
                        package: "grid_view_animation",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      imageText[index],
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
