import 'package:rent24/core/app_export.dart';import 'package:rent24/presentation/splash_light_screen/models/splash_light_model.dart';class SplashLightController extends GetxController {Rx<SplashLightModel> splashLightModelObj = SplashLightModel().obs;

@override void onReady() { super.onReady();Future.delayed(const Duration(milliseconds: 3000), (){
Get.offNamed(AppRoutes.onboardScreen,);}); } 
@override void onClose() { super.onClose(); } 
 }
