import 'package:flutter/material.dart';

class TopBuckets extends StatefulWidget {
  bool addMore;

  TopBuckets({this.addMore});

  @override
  _TopBucketsState createState() => _TopBucketsState();
}

class _TopBucketsState extends State<TopBuckets> {
  double size = 120;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black26, offset: Offset(0, 2), blurRadius: 6),
        ],
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: size,
                height: size * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: IconButton(
                  icon: Icon(Icons.more_vert),
                  color: Colors.amberAccent,
                  onPressed: () {},
                ),
              ),
              Container(
                width: size,
                height: size * 0.3,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
