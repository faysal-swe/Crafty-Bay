import 'package:get/get.dart';

class BottomNavViewModel extends GetxController{
  final RxInt _setIndex = 0.obs;
  get getIndex => _setIndex.value;
  set setIndex(int index) => _setIndex.value = index;

}