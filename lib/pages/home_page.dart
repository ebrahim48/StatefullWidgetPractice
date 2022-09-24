import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String msg;
  const HomePage({Key? key,required this.msg}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.msg),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('You have pushed the button this many times'),
          Text('$_count',style: Theme.of(context).textTheme.headline5,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
         onPressed: _incrementCount,
        child: const Icon(Icons.add),
      ),

    );
  }
  _incrementCount() {
    setState(() {
      _count++;
    });
  }
}
