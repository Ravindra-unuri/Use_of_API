import 'package:api_model/Custom/newslist.dart';
import 'package:api_model/full_desc.dart';
import 'package:api_model/service/apiService.dart';
import 'package:flutter/material.dart';

import 'model/article.dart';

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
        primarySwatch: Colors.teal
      ),
      home: const MyHomePage()

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News App')),
      backgroundColor: Colors.orangeAccent,
      body: FutureBuilder(
        future: ApiService().getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot){
          if(snapshot.hasData){
           return NewsListView(articles: snapshot.data!);
      }
      return Center(child: CircularProgressIndicator());
      },
      ),
    );
  }
}
