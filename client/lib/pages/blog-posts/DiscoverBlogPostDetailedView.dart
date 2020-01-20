import 'package:flutter/material.dart';
import '../../models/BlogPost.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DiscoverBlogPostDetailedView extends StatelessWidget {
  final BlogPost blogPost;

  const DiscoverBlogPostDetailedView({Key key, @required this.blogPost})
      : super(key: key);

  Widget _stats() {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Hero(
                  tag: blogPost.id,
                  child: Image.asset(
                    blogPost.imgPath,
                    fit: BoxFit.cover,
                  ),
                ))),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(blogPost.title, style: TextStyle(fontSize: 30))),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(blogPost.content, style: TextStyle(fontSize: 18)),
              )
            ],
          ),
        )
      ],
    ));
  }
}