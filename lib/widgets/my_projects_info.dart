import 'package:flutter/material.dart';

class MyProjectsInfo extends StatelessWidget {
  const MyProjectsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50, left: 200.0, right: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Projects',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          SizedBox(height: 10),
          Text('DropCheck'),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Placeholder(),
              ),
              SizedBox(width: 40),
              Text(
                'dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ],
          ),
          SizedBox(height: 50),
          Text('DropCheck'),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Placeholder(),
              ),
              SizedBox(width: 40),
              Text(
                'dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ],
          ),
          SizedBox(height: 50),
          Text('DropCheck'),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child: Placeholder(),
              ),
              SizedBox(width: 40),
              Text(
                'dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ],
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
