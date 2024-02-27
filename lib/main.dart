import 'package:flutter/material.dart';
import 'package:spyier/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //
        //
        //
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Counter counter;

  @override
  void initState() {
    super.initState();
    counter = Counter();
  }

  void _incrementCounter() {
    setState(() {
      counter.incrementCount();
    });
  }

  void _decrementCounter() {
    setState(() {
      counter.decrementCount();
    });
  }

  void _resetCounter() {
    setState(() {
      counter.resetCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counter.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
                onPressed: () => _incrementCounter(),
                icon: const Icon(Icons.add)),
            IconButton(
                onPressed: () => _decrementCounter(),
                icon: const Icon(Icons.remove)),
            IconButton(
                onPressed: () => _resetCounter(),
                icon: const Icon(Icons.restart_alt))
          ],
        ),
      ),
    );
  }
}
