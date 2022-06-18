import 'package:flutter/material.dart';
import 'package:photo_bypawel/theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: 32,
        left: defaultMargin,
      ),
      child: Text(
        'Search',
        style: subtitleTextStyle.copyWith(
          fontSize: 36,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget searchBar() {
    return Container(
      margin: EdgeInsets.only(
        top: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search all photos',
                hintStyle: primaryTextStyle.copyWith(
                    fontSize: 15,
                    color: primaryColor.withOpacity(0.5),
                    fontWeight: FontWeight.w400),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                    width: 3,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                    width: 3,
                  ),
                ),
              ),
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        searchBar(),
      ],
    );
  }
}
