import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMeMobileWidget extends StatelessWidget {
  const AboutMeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 1.2,
       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.3.h,
              child: Image.asset('assets/images/Frame 20.png')),
          Text(
            "Hello I’am Mahesh Babu.\nFlutter Developer\nBased In India.",
            style: TextStyle(
              fontSize: 25.sp,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "I'm Evren Shah Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to specimen book.",
              style: TextStyle(fontSize: 15.sp, color: Colors.grey[350]),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: SizedBox.square(
                    dimension: 40,
                    child: Image.asset("assets/images/linkedIn.png")),
              ),
              const SizedBox(width: 20,),
              GestureDetector(
                onTap: () {},
                child: SizedBox.square(
                    dimension: 40,
                    child: Image.asset("assets/images/github.png")),
              )
            ],
          )
        ],
      ),
    );
  }
}
