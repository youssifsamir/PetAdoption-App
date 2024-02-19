//packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

//providers
import '/providers/accounts.dart';
import '/providers/dogProvider.dart';
import '/providers/cartProvider.dart';
import '/providers/marketProvider.dart';
import '/providers/bottombarProvider.dart';

//screens
import '/screens/tabScreen.dart';
import '/screens/QRscanner.dart';
import '/screens/petScreen.dart';
import '/screens/petsScreen.dart';
import './screens/loginScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => DogProvider()),
        ChangeNotifierProvider(create: (ctx) => BottomBarProvider()),
        ChangeNotifierProvider(create: (ctx) => AccountsProvider()),
        ChangeNotifierProvider(create: (ctx) => MarketProvider()),
        ChangeNotifierProvider(create: (ctx) => CartProvider()),
      ],
      child: MaterialApp(
        title: 'My Pet App',
        theme: ThemeData(
          snackBarTheme: const SnackBarThemeData(
            backgroundColor: Colors.amber,
            contentTextStyle: TextStyle(
              fontSize: 15,
              fontFamily: 'RaleWay',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          canvasColor: Colors.white,
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontFamily: 'RaleWay',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            displayMedium: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            displaySmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
            titleSmall: TextStyle(
              fontFamily: 'RaleWay',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            labelLarge: TextStyle(
              fontSize: 16,
              fontFamily: 'RaleWay',
              color: Colors.blue,
            ),
            titleMedium: TextStyle(fontFamily: 'RaleWay'),
            labelMedium: TextStyle(
              fontSize: 15,
              color: Colors.amber,
            ),
            labelSmall: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            headlineLarge: TextStyle(
              fontSize: 30,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            headlineMedium: TextStyle(
              fontFamily: 'RaleWay',
              fontSize: 18,
              // fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            headlineSmall: TextStyle(
              // fontFamily: 'RaleWay',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            bodyLarge: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
            bodySmall: TextStyle(
              fontFamily: 'RaleWay',
              fontSize: 18,
              color: Colors.black,
            ),
            bodyMedium: TextStyle(
              fontFamily: 'RaleWay',
              fontSize: 22,
            ),
          ),
        ),
        home: LoginScreen(),
        routes: {
          TabScreen.routeName: (ctx) => TabScreen(),
          PetScreen.routeName: (ctx) => PetScreen(),
          PetsScreen.routeName: (ctx) => PetsScreen(),
          QRscanner.routeName: (ctx) => QRscanner(),
        },
      ),
    );
  }
}
