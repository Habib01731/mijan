// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mizan_munshaib/data/mijan_topic-data.dart';
import 'package:mizan_munshaib/kullbahas.dart';
import 'package:mizan_munshaib/widget/MainTopicButton.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('প্রথম পৃষ্টা'))),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(child: Image.asset('assets/mijan.jfif')),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainTopicButton(
                    title: 'Mijan',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopicListPage(
                              topicList: MijanList,
                            ),
                          ));
                    },
                  ),
                  MainTopicButton(
                    title: 'Munshaib',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TopicListPage(
                              topicList: MunshaibList,
                            ),
                          ));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
