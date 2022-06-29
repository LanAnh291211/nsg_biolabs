import 'package:flutter/material.dart';

import '../../../data/model/infor.dart';

class BookingItem extends StatelessWidget {
  final Infor infor;

  const BookingItem({Key? key, required this.infor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            color: infor.color,
            height: 100,
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                infor.title!,
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                infor.subTitle!,
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(0),
                      margin: EdgeInsets.zero,
                      child: Text(
                        infor.releaseDay!,
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    Text(
                      infor.rate!,
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
