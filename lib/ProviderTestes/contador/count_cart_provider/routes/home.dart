import 'package:flutter/material.dart';
import 'package:myapp/ProviderTestes/contador/count_cart_provider/routes/routeGenerator.dart';
import 'package:myapp/ProviderTestes/contador/count_cart_provider/state/count.dart';


import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Multi Provider App (${context.watch<Count>().count})'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Counter(),
            ElevatedButton(
              onPressed: (){Navigator.of(context).pushNamed(RouteGenerator.second);}, 
              child: Text('nova tela'))
          ],
        ),
      ), 
      floatingActionButton: FloatingActionButton(
        key: Key('increment_floatingActionButton'),
        onPressed:() => context.read<Count>().increment(), 
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      )
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Count>().count}',
      style: Theme.of(context).textTheme.headlineMedium,
      key: Key('counterState'),
    );
  }
}