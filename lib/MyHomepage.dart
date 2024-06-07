import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testapp/provider_class/provider_demo.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('screen builded');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Providercounter>(
              builder: (context, value, child) {
                return Text(
                  '${Provider.of<Providercounter>(context).count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Providercounter>(context, listen: false).inc();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
