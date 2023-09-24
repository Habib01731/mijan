// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:mizan_munshaib/data/mijan_topic-data.dart';
import 'package:mizan_munshaib/gordan.dart';

class TopicListPage extends StatefulWidget {
  final List<Topic> topicList;
  TopicListPage({super.key, required this.topicList});

  @override
  State<TopicListPage> createState() => _TopicListPageState();
}

class _TopicListPageState extends State<TopicListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView.builder(
        shrinkWrap: false,
        itemCount: widget.topicList.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailsPage(topic: widget.topicList[index]),
                ));
          },
          title: Center(child: Text(widget.topicList[index].title)),
        ),
      ),
    );
  }
}
