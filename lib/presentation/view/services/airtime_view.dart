import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranzgoo/utils/theme/app_style.dart';
import '../../../utils/theme/app_colors.dart';

class AirTime extends StatefulWidget {
  const AirTime({super.key});

  @override
  State<AirTime> createState() => _AirTimeState();
}

class _AirTimeState extends State<AirTime> {
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
          Container(
            height: 23.h,
            width: 23.w,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Image.asset('assets/icons/homeIcon.png'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Continue'),
              ),
              Text(
                'Continue',
                textAlign: TextAlign.center,
                style: AppText.mediumStyle.copyWith(letterSpacing: 0.09),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
