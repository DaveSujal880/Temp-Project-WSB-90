import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'newsmodel.dart';

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  Future<NewsModel>fetchNews()async{
    final url="https://newsapi.org/v2/everything?q=tesla&from=2024-01-05&sortBy=publishedAt&apiKey=cf1a67204baa41b293e7ad23b41a50dd";
    var response=await http.get(Uri.parse(url));
    if(response.statusCode==200){
      final result=jsonDecode(response.body);
      return NewsModel.fromJson(result);
    }
    else{
      return NewsModel();
    }
  }
  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
        centerTitle: true,
      ),
      body: FutureBuilder(future: fetchNews(), builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.active){
          return Center(child: CircularProgressIndicator(),);
        }
        else if(snapshot.hasError){
          return Center(child: Text(snapshot.hasError.toString()),);
        }
        else if(snapshot.hasData){
          return ListView.builder(itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("${snapshot.data!.articles![index].urlToImage}"),
              ),
              title: Text("${snapshot.data!.articles![index].title}"),
              subtitle: Text("${snapshot.data!.articles![index].description}"),
            );
          },itemCount: snapshot.data!.articles!.length,);
        }
        else{
          return Center(child: Text("Data Not Found!!"),);
        }
      }),
    );
  }
}
