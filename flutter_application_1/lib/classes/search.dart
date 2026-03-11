import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/colors.dart';
import 'package:flutter_application_1/utils/responsive_size_helper.dart';
import 'package:flutter_application_1/classes/app_text.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: responsiveWidth(context, 2),
          vertical: responsiveHeight(context, 5)),
      child: Container(
        width: responsiveWidth(context, 320), // control box length
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.btnColor,
          boxShadow: [
            BoxShadow(
              blurStyle: BlurStyle.inner,
            ),
          ],
          border: Border.all(color: Color.fromARGB(255, 61, 24, 5), width: 1.0),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // keep icon & text left
          children: [
            Icon(
              Icons.search,
              size: responsiveWidth(context, 20),
              color: AppColors.textcolor,
            ),
            SizedBox(width: responsiveWidth(context, 10)), // small gap
            CustomAppText(
              text: "Search",
              textAlign: TextAlign.left,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 61, 24, 5),
            ),
          ],
        ),
      ),
    );
  }
}