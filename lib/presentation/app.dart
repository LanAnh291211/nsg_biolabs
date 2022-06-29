import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nsg_biolabs/routes/app_pages.dart';
import 'package:nsg_biolabs/routes/app_routes.dart';
import 'package:nsg_biolabs/shared/config/text_style.dart';
import 'package:nsg_biolabs/shared/languages/app_translations.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: 'NSG BIOLABS',
            debugShowCheckedModeBanner: false,
            getPages: AppPages.pages,
            initialRoute: Routes.login,
            locale: const Locale("en"),
            theme: ThemeData(
              textTheme: CustomTextStyle.textFontApp,
            ),
            translationsKeys: AppTranslation.translations,
          );
        });
  }
}
