import 'package:flutter/material.dart';
import 'package:notes_app/custom_widget/bigger_text.dart';
import 'package:notes_app/custom_widget/custom_fab.dart';
import 'package:notes_app/custom_widget/heading.dart';
import 'package:notes_app/custom_widget/item_action_home.dart';
import 'package:notes_app/custom_widget/say_hi_txt.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen', textAlign: TextAlign.center),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.red,
              ))
        ],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.red,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SayHiTxt(text: 'Hi Guys'),
            const BiggerText(
              text: 'You have pushed the button this many times:',
            ),
            const Heading(
              text: 'Hello Welcome to Notes Apps',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const ItemActionHome(
              share: Icon(Icons.share),
              thumbUp: Icon(Icons.thumb_up),
              thumbDown: Icon(Icons.thumb_down),
              padding: EdgeInsets.only(top: 16),
            )
          ],
        ),
      ),
      floatingActionButton: CustomFab(
        onPressed: _incrementCounter,
        toolTip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
