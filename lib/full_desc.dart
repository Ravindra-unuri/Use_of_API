import 'package:api_model/model/article.dart';
import 'package:flutter/material.dart';

class fullNews extends StatelessWidget {
  Article snapshot;
  fullNews({Key? key,required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Full News')),
        backgroundColor: Colors.greenAccent,
    body:SingleChildScrollView(
      child: Container(
        margin: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
        child: Expanded(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      child: Image.network('${snapshot.urlToImage}',)
                  )
              ),
              SizedBox(height: 30),
              Text(snapshot.title,style: TextStyle(
                fontSize: 30,
              )),
              SizedBox(height: 30),
              Row(
                children: [
                  Text('Publish Date  ',style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration. underline,
                  )),
                  Text(snapshot.publishedAt,style: TextStyle(
                    backgroundColor: Colors.black,
                    fontSize: 20,
                    color: Colors.white,
                  )),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('Aauther  ',style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration. underline,
                  )),
                  Text('${snapshot.author}',style: TextStyle(

                    backgroundColor: Colors.black,
                    fontSize: 20,
                    color: Colors.white,
                  )),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Description',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.fill
                    // ..strokeWidth = 100
                    ..color = Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text('${snapshot.description}',style: TextStyle(
                // backgroundColor: Colors.black54,
                fontSize: 18,
                color: Colors.white,
                backgroundColor: Colors.black
              )),
            ],
          ),
        ),
      ),
    ),
    );
    }
}
