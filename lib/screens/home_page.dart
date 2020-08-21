import 'package:bucket_list/widgets/action_icons.dart';
import 'package:bucket_list/widgets/search_bar.dart';
import 'package:bucket_list/widgets/top_buckets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _topBucketsBuilder() {
    int i;
    Widget abc = Wrap(
      children: [
        TopBuckets(),
        TopBuckets(),
        TopBuckets(),
        TopBuckets(),
        TopBuckets(),
        TopBuckets()
      ],
    );

    return abc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
            splashColor: Theme.of(context).accentColor,
            onPressed: () {},
          ),
          title: Text(
            "Bucket List",
            style: TextStyle(
                fontSize: 25,
                letterSpacing: 1,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          actions: [ActionIcons()],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: SearchBar(),
            ),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              child: _topBucketsBuilder(),
            )),
            SizedBox(
              height: 200,
            )
          ],
        ));
  }
}
