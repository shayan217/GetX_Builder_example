import 'package:get/get.dart';

class MyController extends GetxController{
  var count = 0;

  incrementcounter(){
    count++;
    update();
}
}