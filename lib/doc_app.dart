import 'package:doc_doc_app/core/route/app_router.dart';
import 'package:doc_doc_app/core/route/routes.dart';
import 'package:doc_doc_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
 
class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primaryColor: AppColors.mainBlue,
          ),
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.onBoardingView,
        );
  }
}
