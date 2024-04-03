import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hive/mycontroller.dart';

class Getx_builder extends StatelessWidget {
  const Getx_builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Builder'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<MyController>(
            init: MyController(),
            builder: (myController1) => Text('${myController1.count}',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 100),),
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                var myController  = Get.find<MyController>();
                myController.incrementcounter();
              },
              child: Text('Count',style: TextStyle(color: Colors.red),),
            ),
          ),
        ],
      ),
    );
  }
}