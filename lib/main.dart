import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:cuarta_app/src/pages/basico_page.dart';
import 'package:cuarta_app/src/pages/scroll_page.dart';
import 'package:cuarta_app/src/pages/botones_page.dart';
import 'package:cuarta_app/src/pages/settings.dart';
import 'package:cuarta_app/src/pages/travel.dart';
import 'package:cuarta_app/src/pages/login.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'cuarta_app',
      initialRoute: 'login',
      routes: {
        'scroll'  : (BuildContext context ) => ScrollPage(),
        'basico'  : (BuildContext context ) => BasicoPage(),
        'botones' : (BuildContext context ) => BotonesPage(),
        'settings' : (BuildContext context ) => SettingsTwoPage(),
        'travel' : (BuildContext context ) => DestinationPage(),
        'login' : (BuildContext context ) => AuthThreePage(),
      },
    );
  }

}