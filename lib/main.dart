import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/provider.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('myhomepage re');
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
            builder: (context, ref, child) => Text(ref.watch(titleProvider))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer(
              builder: (context, ref, chid) => Text(
                ref.watch(messageProvider),
              ),
            ),
            Consumer(builder: (context, ref, child) {
              print('count re');
              return Text(
                ref.watch(countProvider.state).state.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Consumer(builder: (context, ref, child) {
        print('buttun re');
        return FloatingActionButton(
          onPressed: () => ref.read(countProvider.state).state++,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        );
      }),
    );
  }
}
