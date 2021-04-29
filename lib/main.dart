import 'package:buddy_budge/src/invoice/presentation/add_invoice_screen.dart';
import 'package:buddy_budge/src/invoice/presentation/list_invoices_screen.dart';
import 'package:buddy_budge/src/invoice/presentation/pay_invoice_screen.dart';
import 'package:buddy_budge/src/onboard/presentation/onboard_screen.dart';
import 'package:buddy_budge/src/register/presentation/register_group_screen.dart';
import 'package:flutter/material.dart';

import 'src/home/presentation/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buddy Budge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
          hintStyle: TextStyle(fontSize: 12.0, color: Colors.white70),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: OnboardScreen.screenName,
      routes: {
        HomeScreen.screenName: (context) => HomeScreen(),
        OnboardScreen.screenName: (context) => OnboardScreen(),
        RegisterGroupScreen.screenName: (context) => RegisterGroupScreen(),
        AddInvoiceScreen.screenName: (context) => AddInvoiceScreen(),
        PayInvoiceScreen.screenName: (context) => PayInvoiceScreen(),
        ListInvoicesScreen.screenName: (context) => ListInvoicesScreen()
      },
    );
  }
}
