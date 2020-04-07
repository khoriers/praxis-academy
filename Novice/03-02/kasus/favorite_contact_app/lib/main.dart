import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:favorite_contact/models/model.dart';
import 'package:favorite_contact/screens/screens.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => Favorite(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(),
          '/favorite': (context) => FavoritePage()
        },
        title: 'Favorite Contact App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.deepPurple[900]),
      ),
    ));
