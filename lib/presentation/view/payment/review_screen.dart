import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranzgoo/utils/theme/app_colors.dart';
import 'package:tranzgoo/utils/theme/app_style.dart';
import 'package:tranzgoo/utils/widget/app_button.dart';

class ReView extends StatelessWidget {
  const ReView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Review',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 330.0,
                    height: 330,
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        _buildRow("Biller", "MTN"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(color: Colors.grey),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildRow("Product", "MTNNG"),
                        const Divider(color: Colors.grey),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildRow("Amount", "N1999.99"),
                        const Divider(color: Colors.grey),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildRow("TG ID", "A200231"),
                        const Divider(color: Colors.grey),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildRow("Reference", "08054200231"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 90),
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
                          Navigator.pushNamed(context, '/successView');
                        },
                        label: 'Pay',
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

  Widget _buildRow(String leftText, String rightText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: const TextStyle(fontSize: 16.0),
        ),
        Text(
          rightText,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
