import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prototype_lahan/constrants.dart';
import 'package:prototype_lahan/form/inventarisasi.dart';
import 'package:prototype_lahan/share/routes.dart';
import 'package:provider/provider.dart';
import 'controller/menu_controller.dart';
import 'dashboard/dashboard.dart';
import 'main/main_screen.dart';
import 'dashboard/bloc/dashboard_bloc.dart';

void main() {
  runApp(
      MultiBlocProvider(providers: [
        BlocProvider(create: (BuildContext) => DashboardBloc())
      ],
        child:
        MyApp(),
      )
      );
 }


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prototype Lahan',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        //     .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),

      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: MainScreen(),
      ),

      routes: {
        CustomRoutes.dashboard : (context) =>  Dashboard(),
        CustomRoutes.inventarisasi : (context) =>  Inventarisasi(),
      },
    );
  }
}
