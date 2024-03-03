// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranzgoo/utils/theme/app_colors.dart';
import 'package:tranzgoo/utils/theme/app_style.dart';
import 'package:tranzgoo/utils/widget/app_button.dart';
import 'package:tranzgoo/utils/widget/app_phone_field.dart';

class BankDetails extends StatelessWidget {
  const BankDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController sendamount = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Bank Details',
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
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Text('Plese Fill Correctly'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Bank Details',
                    style: AppText.mediumStyle.copyWith(letterSpacing: 0.09),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  AppPhoneField(
                    textCenter: false,
                    controller: sendamount,
                    hintText: 'e.g UBA',
                    width: 330.w,
                    height: 50.h,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Account NAme',
                    style: AppText.mediumStyle.copyWith(letterSpacing: 0.09),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  AppPhoneField(
                    textCenter: false,
                    controller: sendamount,
                    hintText: 'e.g JACHIMMA PRINCE',
                    width: 330.w,
                    height: 50.h,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Account Number',
                    style: AppText.mediumStyle.copyWith(letterSpacing: 0.09),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  AppPhoneField(
                    textCenter: false,
                    controller: sendamount,
                    hintText: 'e.g. 2135907016',
                    width: 330.w,
                    height: 50.h,
                  ),
                ],
              ),
              SizedBox(height: 100),
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
                          Navigator.pushNamed(context, '/confirmView');
                        },
                        label: 'Next',
                        isText: true,
                      ),
                    ),
                  ),
                ],
              ),
            ])));
  }
}
