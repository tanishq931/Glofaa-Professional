import 'package:flutter/material.dart';
import 'package:glofaa/utils/resource/color_resource.dart';
import 'package:glofaa/utils/resource/dimensions_resource.dart';
import 'package:glofaa/utils/resource/style_resource.dart';


class CalculateEarningsScreen extends StatefulWidget {
  const CalculateEarningsScreen({super.key});

  @override
  State<CalculateEarningsScreen> createState() => _CalculateEarningsScreenState();
}

class _CalculateEarningsScreenState extends State<CalculateEarningsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset("assets/images/Ellipse74.png",fit: BoxFit.cover,),
                Positioned(
                  bottom:90,
                    left: 24,
                    right: 24,
                    child: Image.asset("assets/images/Rupee2.png",height:138,width: 171,)),
                Positioned(
                  bottom:92,
                    left:95,
                    child: Image.asset("assets/images/ChristmasStar2.png",)),
                Positioned(
                  top:88,
                    right: 24,
                    left:110,
                    child: Image.asset("assets/images/ChristmasStar2.png",)),

              ],
            ),
            Text("Please wait..",style:  StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),),
            SizedBox(height: 20,),
            Text("Calculating your earnings in selected area",textAlign: TextAlign.center,style:  StyleResource.instance.styleBold(DimensionResource.fontSizeOverLarge, ColorResource.black),),

          ],
        ),
      ),
    );
  }
}
