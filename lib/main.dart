import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/data/count_data.dart';
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
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        appBar: AppBar(
          title: Consumer(
              builder: (context, ref, child) => Text(ref.watch(titleProvider))),
        ),
        //test
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                ref.watch(messageProvider),
              ),
              Text(
                ref.watch(countDataProvider.state).state.count.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      CountData countData = ref.read(countDataProvider.state).state;
                      ref.read(countDataProvider.state).state =
                          countData.copyWith(
                            count: countData.count + 1,
                            countUp: countData.countUp + 1,
                          );
                    },
                    child: const Icon(CupertinoIcons.plus),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      CountData countData = ref.read(countDataProvider.state).state;
                      ref.read(countDataProvider.state).state =
                          countData.copyWith(
                              count: countData.count - 1,
                              countDown: countData.countDown - 1
                          );
                    },
                    child: const Icon(CupertinoIcons.minus),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                      ref.watch(countDataProvider.state.select((value) => value.state.countUp)).toString()
                  ), Text(
                      ref.watch(countDataProvider.state.select((value) => value.state.countDown)).toString()
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(countDataProvider.state).state = const CountData(count: 0, countUp: 0, countDown: 0);
          },
          tooltip: 'Increment',
          child: const Icon(Icons.refresh),
        ),
      );
    });
  }
}
