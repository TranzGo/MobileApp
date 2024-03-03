// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tranzgoo/utils/theme/app_colors.dart';
import 'package:tranzgoo/utils/theme/app_style.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '',
          style: AppText.extraBold,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/homeView');
            },
            icon: const Icon(
              Icons.home,
              color: AppColors.primaryColor,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/success.png',
                width: 160,
                height: 160,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Transaction Successful',
                  style:
                      TextStyle(fontSize: 30, color: AppColors.primaryColor)),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/confetti.png',
                width: 60,
                height: 60,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hooray!!',
                  style:
                      TextStyle(fontSize: 20, color: AppColors.primaryColor)),
              const SizedBox(height: 20)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your transaction has been',
                  style:
                      TextStyle(fontSize: 20, color: AppColors.primaryColor)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Completed',
                  style:
                      TextStyle(fontSize: 20, color: AppColors.primaryColor)),
            ],
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                color: AppColors.whiteColor,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('How was your transaction experience?',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/homeView');
                          },
                          child: Image.asset(
                            'assets/images/Like.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/Dislike.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
