import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_bypawel/theme.dart';
import 'package:photo_bypawel/widgets/newPost_card.dart';

List<String> Image_List = [
  'assets/images/b1.png',
  'assets/images/b2.png',
  'assets/images/b3.png',
  'assets/images/b4.png',
  'assets/images/b5.png',
  'assets/images/b6.png',
  'assets/images/b7.png',
  'assets/images/b8.png',
  'assets/images/b9.png',
  'assets/images/b10.png',
];

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: 32,
        left: defaultMargin,
      ),
      child: Text(
        'Discover',
        style: subtitleTextStyle.copyWith(
          fontSize: 36,
        ),
      ),
    );
  }

  Widget whatNewTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: 32,
        left: defaultMargin,
      ),
      child: Text(
        'WHAT\’S NEW TODAY',
        style: primaryTextStyle.copyWith(
          fontSize: 13,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  Widget browseAllTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: 48,
        left: defaultMargin,
      ),
      child: Text(
        'BROWSE ALL',
        style: primaryTextStyle.copyWith(
          fontSize: 13,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  Widget newPostCard() {
    return Container(
      margin: EdgeInsets.only(
        top: 24,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            NewPostCard(newpostData[0]),
            NewPostCard(newpostData[1]),
            NewPostCard(newpostData[2]),
            NewPostCard(newpostData[3]),
          ],
        ),
      ),
    );
  }

  Widget DetailScreen() {
    return Container(
      margin: EdgeInsets.only(
        top: 24,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            NewPostCard(newpostData[0]),
            NewPostCard(newpostData[1]),
            NewPostCard(newpostData[2]),
            NewPostCard(newpostData[3]),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        whatNewTitle(),
        newPostCard(),
        browseAllTitle(),
        Container(
          height: 1573,
          width: double.infinity,
          margin: EdgeInsets.only(
            top: 24,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: StaggeredGridView.countBuilder(
            physics: ScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
            itemCount: Image_List.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'home');
                    },
                    child: Image.asset(
                      Image_List[index],
                    ),
                  ),
                ],
              );
            },
            staggeredTileBuilder: (int index) {
              return StaggeredTile.count(1, index.isEven ? 1.85 : 1.85);
            },
          ),
        ),
      ],
    );
  }
}
