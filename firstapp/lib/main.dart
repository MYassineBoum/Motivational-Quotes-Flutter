import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motivational Quotes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 214, 217, 15)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Motivational Quotes'),
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
  List<Quote> quotes = [  
    Quote(author: 'Mahatma Gandhi', text: 'Learn as if you will live forever, live like you will die tomorrow.'),
    Quote(author: 'Albert Einstein', text: 'We cannot solve problems with the kind of thinking we employed when we came up with them.'),
    Quote(author: 'Norman Vincent Peale', text: 'When you change your thoughts, remember to also change your world'),
    Quote(author: 'Diane McLaren', text: 'Nature has given us all the pieces required to achieve exceptional wellness and health, but has left it to us to put these pieces together.')
  ];

  Widget quoteShow(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: const Color.fromARGB(255, 48, 48, 48),
              )
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: const Color.fromARGB(255, 48, 48, 48),
              )
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 177, 177, 177),
      appBar: AppBar(
        title: Text('Motivational Quotes'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: quotes.map((quote) => quoteShow(quote)).toList(),
      )
    );
  }
}
