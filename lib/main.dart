import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Feed',
      home: NewsFeed(),
    );
  }
}

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _buildPortraitLayout();
          } else {
            return _buildLandscapeLayout();
          }
        },
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return ListView(
      children: [
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
      ],
    );
  }

  Widget _buildLandscapeLayout() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
      ),
      children: [
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
        _buildNewsArticle('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD2AyVcqDfMfx_ep8C_bVDEbxquXNynAFph5t4cN1J5Y1tYQ8Y2zVYEAizAXyiENHV0Lw&usqp=CAU'),
      ],
    );
  }
  Widget _buildNewsArticle(String imageUrl) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: Image.network(imageUrl),
          ),
        ],
      ),
    );
  }
}