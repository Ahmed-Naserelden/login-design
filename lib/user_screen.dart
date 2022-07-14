// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: Padding(
        padding: EdgeInsets.all(
          15.0,
        ),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return buildConcate(index);
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10.0,
              );
            },
            itemCount: 10),
      ),
    );
  }

  // build item
  // build list
  // add items to list
  Widget buildConcate(int index) {
    return Row(
      children: [
        CircleAvatar(
          child: Text(
            '${(index + 1)}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
              color: Colors.white,
            ),
          ),
          radius: 35.0,
          backgroundColor: Colors.blue,
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ahmed Amer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '+20 1099401398',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
