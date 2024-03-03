import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranzgoo/utils/theme/app_colors.dart';
import 'package:tranzgoo/utils/theme/app_style.dart';
import 'package:tranzgoo/utils/widget/app_phone_field.dart';
import 'package:tranzgoo/utils/widget/app_textfield.dart';
import 'package:tranzgoo/utils/widget/app_toggleswitch.dart';
import 'package:tranzgoo/utils/widget/app_network_providers.dart';
import 'package:tranzgoo/utils/widget/app_button.dart';

class AirTime extends StatefulWidget {
  const AirTime({super.key});

  @override
  State<AirTime> createState() => _AirTimeState();
}

class _AirTimeState extends State<AirTime> {
  final TextEditingController tranzgoId = TextEditingController();
  final TextEditingController sendamount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Airtime',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Phone Number
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Phone Number',
                                    style: AppText.mediumStyle
                                        .copyWith(letterSpacing: 0.09),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  AppPhoneField(
                                    textCenter: true,
                                    controller: sendamount,
                                    hintText: 'Enter Your Phone Number',
                                    width: 320.w,
                                    height: 50.h,
                                    icon: const Icon(
                                        Icons.perm_contact_calendar_outlined),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AppToggleSwitch(
                            width: 30,
                            height: 15,
                          ),
                          Text(
                            'Own Number',
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Text(
                            'Beneficiary',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20), // Spacer between rows

              //Select Provider
              const Row(
                children: [
                  SizedBox(
                    child: AppNetworkProviders(),
                  ),
                ],
              ),
              const SizedBox(height: 15), //
              //Save As Beneficiary
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Save as Beneficiary',
                            style: AppText.mediumStyle
                                .copyWith(letterSpacing: 0.09),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Row(
                        children: [
                          AppToggleSwitch(),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),

              //Enter Amount
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Amount',
                            style: AppText.mediumStyle
                                .copyWith(letterSpacing: 0.09),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          AppTextField(
                            textCenter: true,
                            controller: sendamount,
                            hintText: 'N 0.00',
                            width: 320.w,
                            height: 50.h,
                          ),
                          const SizedBox(
                            height: 55,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 80),

              //Cotinue Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 320.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryColor),
                    child: Center(
                      child: AppButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/reView');
                        },
                        label: 'Continue',
                        isText: true,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
