
import 'package:flutter/material.dart';
class result extends StatelessWidget {
   int totalResult;
   Function reset;
  result(this.totalResult, this.reset);



  @override
  Widget build(BuildContext context) {


    return Container(
      child: Column(
        children: [
          Center(child: Text(totalResult.toString())),
          ElevatedButton(
            onPressed: () => reset(),
            child: Text( "reset"),
          )],

      ),

    );
  }
}


