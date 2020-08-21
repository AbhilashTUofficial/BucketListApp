import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        margin: EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 2), blurRadius: 6)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration.collapsed(hintText: "Search"),
            )),
            GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                height: 45,
                width: 60,
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}
