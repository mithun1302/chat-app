import 'package:flutter/material.dart';

import 'presentation/pages/sub_pages/single_item_call_page.dart';

class HloCalls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return SingleItemCallPage();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.red,
        child: Icon(Icons.add_call,color: Colors.white,),
      ),
    );
  }
}
