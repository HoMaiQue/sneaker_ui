import 'package:flutter/material.dart';

import 'screens/cart_screen.dart';
import 'screens/item_detail_screen.dart';
import 'screens/payment_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        ItemDetailScreen.routerName: (context) => const ItemDetailScreen(),
        CartScreen.routerName: (context) => const CartScreen(),
        PaymentScreen.routerName: (context) => const PaymentScreen(),
      },
      home: const ItemDetailScreen(),
    );
  }
}
