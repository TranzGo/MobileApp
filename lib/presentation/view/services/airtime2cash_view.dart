// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranzgoo/utils/theme/app_colors.dart';
import 'package:tranzgoo/utils/theme/app_style.dart';
import 'package:tranzgoo/utils/widget/app_button.dart';
import 'package:tranzgoo/utils/widget/app_network_providers.dart';
import 'package:tranzgoo/utils/widget/app_phone_field.dart';

class Airtime2cash extends StatefulWidget {
  const Airtime2cash({Key? key}) : super(key: key);

  @override
  State<Airtime2cash> createState() => _Airime2cashState();
}

class _Airime2cashState extends State<Airtime2cash> {
  final TextEditingController sendamount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Airtime2Cash',
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
              SizedBox(height: 20),
              Row(
                children: [
                  const AppNetworkProviders(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Amount to Convert',
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
                    hintText: 'Min: N1000',
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
                    'Phone Number',
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
                    hintText: '0700-000-000',
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
                          Navigator.pushNamed(context, '/bankdetailsView');
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
