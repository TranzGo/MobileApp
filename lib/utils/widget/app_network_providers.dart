import 'package:flutter/material.dart';
import 'package:tranzgoo/utils/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppNetworkProviders extends StatelessWidget {
  const AppNetworkProviders({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 330.w,
        height: 80.h,
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Provider',
                style: TextStyle(
                  fontSize: 14.0,
                  // fontWeight: FontWeight.bold,
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(height: 2.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectNetwork(image: 'assets/images/airtel.jpg'),
                  SelectNetwork(image: 'assets/images/mtn.jpg'),
                  SelectNetwork(image: 'assets/images/9mobile.jpg'),
                  SelectNetwork(image: 'assets/images/glo.jpg'),
                ],
              ),
            ],
          ),
        ));
  }
}

class SelectNetwork extends StatefulWidget {
  final String image;

  const SelectNetwork({super.key, required this.image});

  @override
  State<SelectNetwork> createState() => _SelectNetworkState();
}

class _SelectNetworkState extends State<SelectNetwork> {
  static List<bool> isSelectedList = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    int index = getIndex();

    return GestureDetector(
      onTap: () {
        setState(() {
          if (!isSelectedList[index]) {
            isSelectedList = [false, false, false, false];
            isSelectedList[index] = true;
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.all(1.0),
        width: 80.0,
        height: 50.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelectedList[index] ? Colors.blue : Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(
          widget.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  int getIndex() {
    int index = [
      'assets/images/airtel.jpg',
      'assets/images/mtn.jpg',
      'assets/images/9mobile.jpg',
      'assets/images/glo.jpg'
    ].indexOf(widget.image);

    return index != -1 ? index : 0;
  }
}
