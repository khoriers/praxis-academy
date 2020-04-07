import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common/theme.dart';
import 'models/cart.dart';
import 'models/catalog.dart';
import 'screens/cart.dart';
import 'screens/catalog.dart';
import 'screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => CatalogModel()),
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
            create: (context) => CartModel(),
            update: (context, catalog, cart) {
              cart.catalog = catalog;
              return cart;
            })
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => MyLogin(),
          '/catalog': (context) => MyCatalog(),
          '/cart': (context) => MyCart()
        },
      ),
    );
  }
}
