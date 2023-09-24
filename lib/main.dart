import 'package:ecommerce/src/controller/home_controller.dart';
import 'package:ecommerce/src/data/global_widgets/bottom_navigation.dart';
import 'package:ecommerce/src/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
   const  MyApp(),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
       return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => HomeController()),
          ],
         child:MaterialApp(
           debugShowCheckedModeBanner: false,
           title: 'First Method',
           // You can use the library anywhere in the app even in theme
           theme: ThemeData(
             primaryColor: Colors.black,
             textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
           ),
           home: BottomNavigation(),

         ) ,

        );
      },
    );
  }
}

