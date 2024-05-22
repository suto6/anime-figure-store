import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/pages/home_page.dart';
import 'package:shop_app_flutter/providers/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

//Types of Providers
// Provider -- it's read only
// ChangeNotifierProvider -- change the values and notify the widgets that are listening to it about those changes
// FutureProvider -- it can listen to Futures, subscribe to them and show th changes
// StreamProvider -- provides a stream

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MaterialApp(
        title: 'Shopping App',
        theme: ThemeData(
          fontFamily: 'Rubik',
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(255, 95, 2, 0.918),
              primary: const Color.fromRGBO(247, 92, 2, 0.918)),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
            fontSize: 25,
            color: Colors.black,
          )),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 2),
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
