import 'package:flutter/material.dart';
import 'package:myapp/ProviderTestes/contador/count_cart_provider/routes/routeGenerator.dart';

import 'package:myapp/ProviderTestes/contador/count_cart_provider/state/cart.dart';
import 'package:myapp/ProviderTestes/contador/count_cart_provider/state/count.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    /// usando mais de um provider para armazenar os dados entre telas!
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Cart()),
        ChangeNotifierProvider(create: (_) => Count()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Lembrar de routeGenerator para navegar entre telas!
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteGenerator.home,
      onGenerateRoute: RouteGenerator.generateRoute,
     );
  }
}