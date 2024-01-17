import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sample_slicing/ui/widget/template.dart';
class MaterialContainer extends StatelessWidget {
  final String title;
  final String sub_title;
  final String image;
  final String payment;
  final String total;
  final TextStyle style;
  const MaterialContainer({Key? key,
    this.title = "Makan",
    this.sub_title = "Gacoan",
    this.image = "assets/img/home/mie.png" ,
    this.payment = "Tunai",
    this.total = "-Rp12.000",
    this.style = TextStyleTemplate.CategoryLoss,
  }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(image),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,style: TextStyleTemplate.ContentBold,),
                        Text(sub_title,style: TextStyleTemplate.ContentBase,textDirection: TextDirection.ltr,)
                      ],
                    ),
                  ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(total,style: TextStyleTemplate.CategoryLoss,),
                Text(payment,style: TextStyleTemplate.ContentBase,textDirection: TextDirection.ltr,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
