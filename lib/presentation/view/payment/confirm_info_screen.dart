// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranzgoo/utils/theme/app_colors.dart';
import 'package:tranzgoo/utils/theme/app_style.dart';
import 'package:tranzgoo/utils/widget/app_button.dart';

class ConfirmInfo extends StatelessWidget {
  const ConfirmInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Aritime2Cash',
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
        body: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 100),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('To'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Jachimma P.',
                          style: AppText.bold.copyWith(
                              fontSize: 25, color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Amount'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'N 1000.00',
                          style: AppText.bold.copyWith(
                              fontSize: 15, color: AppColors.blackColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              InfoBar(
                titles: [
                  'Conversion Rate',
                  'Payout Amount',
                  'Network',
                  'Phone No.',
                  'Bank',
                  'Account Number'
                ],
                texts: [
                  '82%',
                  'NGN 820.0',
                  'Airtime Conversion',
                  '08102961518',
                  'UBA',
                  '2135907016'
                ],
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 330.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryColor),
                    child: Center(
                      child: AppButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/successView');
                        },
                        label: 'Confirm',
                        isText: true,
                      ),
                    ),
                  ),
                ],
              ),
            ])));
  }
}

class InfoBar extends StatelessWidget {
  final List<String> titles;
  final List<String> texts;

  const InfoBar({
    Key? key,
    required this.titles,
    required this.texts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        titles.length,
        (index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    width: 330.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          titles[index],
                        ),
                        Text(
                          texts[index],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
