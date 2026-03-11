import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/colors.dart';
//import 'package:flutter_application_1/classes/navigation.dart';
import 'package:flutter_application_1/welcome.dart';
import 'package:flutter_application_1/classes/categorybutton.dart';
import 'package:flutter_application_1/classes/product_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});
void seeAllPressed(BuildContext context) {
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ScaffoldBackgroundColor,
     // bottomNavigationBar: const Navigation(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Welcome(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Categorybutton(
                      title: "Food",
                      image: 'assets/images/food2.png',
                      onTap: () {}),
                  Categorybutton(
                      title: "Salad",
                      image: 'assets/images/salad.png',
                      onTap: () {}),
                  Categorybutton(
                      title: "Sweet",
                      image: 'assets/images/sweet.png',
                      onTap: () {}),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Near You',
                    style: TextStyle(
                      color: AppColors.textcolor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.btnColor,
                      side: BorderSide(color: AppColors.textcolor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    child: Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.textcolor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(
                      icon: Icons.person,
                      title: 'Rana Aloran',
                      rating: 9.1,
                    ),
                    ProductCard(
                      icon: Icons.person,
                      title: 'Olfat Bishmaph',
                      rating: 9.0,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}