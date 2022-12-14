import 'package:flutter/material.dart';
import 'package:parcel_app/parcel_app_theme.dart';
import 'package:parcel_app/ui/screens/screens.dart';
import 'package:parcel_app/ui/widgets/my_bottom_navigation_bar.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ParcelAppTheme.lightTheme,
      home: const Scaffold(
        // body: SendParcelScreen(),
        body: HomeScreen(),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}
