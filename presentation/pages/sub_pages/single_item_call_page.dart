import 'package:flutter/material.dart';

class SingleItemCallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10,right: 10,left: 10,),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 55,
                    width: 55,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      child: Image.asset('asset/profile_default.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('User Name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      SizedBox(height: 5,),
                      Row(
                        children:<Widget> [
                          Icon(
                            Icons.call_received,
                            color: Colors.red,
                            size: 18,
                          ),
                          Text(
                            'Yesterday',
                            maxLines:1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Icon(Icons.call,color: Colors.green ,)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 10),
            child: Divider(thickness: 1.50,),
          ),
        ],
      ),
    );  }
}
