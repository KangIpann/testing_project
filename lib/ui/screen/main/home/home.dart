import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_slicing/ui/widget/material_container.dart';
import 'package:sample_slicing/ui/widget/template.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: primaryColorBackground,
          child: Container(
            child: Column(
              children: [
                //Header
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(24),
                  child: Row(
                    children: [
                      Image.asset("assets/img/home/calendar_event.png",width: 20,fit: BoxFit.fill,),
                      Container(
                        height: 40,
                        width: 100,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white
                        ),
                       child: Row(
                         children: [
                           Container(
                               child: Image.asset("assets/img/home/journal_bookmark_fill.png",),
                             margin: EdgeInsets.fromLTRB(12, 6, 8, 6),
                           ),
                           Text("Detail", style: TextStyleTemplate.ContentBold,)
                         ],
                       ),
                      ),
                         Expanded(
                          child: Align(
                            alignment: Alignment.topRight,
                              child: Image.asset("assets/img/home/settings.png",fit: BoxFit.fill,width: 25,)
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    width: double.infinity,
                    child: Image.asset("assets/img/home/home_bg.png",fit: BoxFit.fill,),
                  ),
                    Container(
                      padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Uang",style: TextStyleTemplate.TotalUang,),
                          Text("Rp1.416.000,00",style: TextStyleTemplate.Rupiah,)
                        ],
                      ),
                    ),
                  ]
                ),
                SingleChildScrollView(
                  child: Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(19, 22, 19, 0),
                        height: 269.9846,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, 10),
                              blurRadius: 50,
                            )
                          ],
                          color: scrollablePageColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(45),
                            topLeft: Radius.circular(45)
                          )
                        ),
                        child: Column(
                          children: [
                            Image.asset('assets/img/home/line.png',width: 60,fit: BoxFit.fill,),
                            Container(
                              margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Hari Ini",style: TextStyleTemplate.ContentBold,),
                                  Text("-Rp34.000",style: TextStyleTemplate.DayLoss,)
                                ],
                              ),
                            ),
                            MaterialContainer(),
                            MaterialContainer(
                              image: "assets/img/home/coklat.png",
                              title: "Jajan",
                              sub_title: "Coklat",
                              total: "-Rp.22.000",
                            )
                          ],
                        ),
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(CupertinoIcons.plus,color: primaryColor,size: 35),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        height: 95,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Container(
              margin: EdgeInsets.only(top: 20),
                child: Image.asset("assets/img/home/wallet2.png",fit: BoxFit.fill,height: 30,)), label: ''),
            BottomNavigationBarItem(icon: Image.asset("assets/img/home/home.png",fit: BoxFit.fill,height: 50,), label: ''),
            BottomNavigationBarItem(icon: Container(
                margin: EdgeInsets.only(top: 25),
                child: Image.asset("assets/img/home/chart_bar.png",fit: BoxFit.fill,height: 40,)), label: ''),
          ],
          onTap: (Index){},
        ),
      ),
    );
  }
}
