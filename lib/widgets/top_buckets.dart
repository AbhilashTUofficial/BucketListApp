import 'package:bucket_list/data/favorite_bucket.dart';
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
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(right: 2,top: 5),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.amberAccent,
                        ),
                      ),
                    ),
                    Text(
                      FavList[1].description,
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    )
                  ],
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
                child: Container(
                  margin: EdgeInsets.only(top: 5, left: 5),
                  child: Text(
                    FavList[1].name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
