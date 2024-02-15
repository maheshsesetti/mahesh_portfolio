import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/HomePage/Presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        ScreenUtil.init(context);
        return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(1.0)),
            child: MaterialApp(
              title: "Mahesh Portfolio's",
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme:
                    ColorScheme.fromSeed(seedColor: const Color(0x00333333)),
                useMaterial3: true,
              ),
              home: const HomePage(),
            ));
      },
    );
  }
}
