import 'package:api_model/full_desc.dart';
import 'package:api_model/model/article.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  List<Article> articles;
  NewsListView({Key? key,required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: articles.length,
        itemBuilder: (BuildContext context, index){
          return Container(
            margin: EdgeInsetsDirectional.all(10),
            child: Card(
              child: Column(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => fullNews(snapshot: articles[index])),
                        );
                      },
                      child: Image.network('${articles[index].urlToImage}')),
                  Text('${articles[index].title}'),
                  Text('${articles[index].description}'),
                ],
              ),
            ),
          );
        });
  }
}
