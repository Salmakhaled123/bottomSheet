import 'package:flutter/material.dart';

void main()
{
  runApp(Test());
}
class Test extends StatelessWidget
{
 var scaffoldKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(debugShowCheckedModeBanner: false,theme:ThemeData(bottomSheetTheme:
    BottomSheetThemeData(backgroundColor: Colors.transparent))
    ,
      home:Scaffold(
          backgroundColor: Colors.yellow,
        key: scaffoldKey,
        appBar: AppBar(title: Text('car assistance',
          style: TextStyle(color: Colors.black),),backgroundColor: Colors.white),
          body:
      Column(children:
      [
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(width: 250,height: 50,
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[300]),
                  onPressed: ()
                  {
                    scaffoldKey.currentState!.showBottomSheet((context) =>
                        Container(
                            width: double.infinity,height: 400,
                            decoration: BoxDecoration(color: Colors.white,

                                borderRadius: BorderRadius.only(topRight:Radius.circular(35),
                                    topLeft: Radius.circular(35.0)), ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(children:
                              [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('حدد نوع المساعده',
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: GridView(shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing:3,
                                        mainAxisSpacing:3,

                                      ),children:
                                    [
                                      Container(
                                        child: Card(
                                          color: Colors.grey.shade200,
                                          child: Center(child:
                                          Text("tire charge",
                                            style: TextStyle(color: Colors.black,
                                                fontSize: 16),)),),

                                      ),
                                      Container(
                                        child: Card(
                                          color: Colors.grey.shade200,
                                          child: Center(child: Text("tow truck", style: TextStyle(color: Colors.black,fontSize: 16),)),),

                                      ),
                                      Container(

                                        child: Card(color: Colors.grey.shade200,
                                          child: Center(child: Text("fuel delivery", style: TextStyle(color: Colors.black,fontSize: 16),)),),

                                      ),
                                      Container(
                                        child: Card(color: Colors.grey.shade200,
                                          child: Center(child: Text("jump start",
                                            style: TextStyle(color: Colors.black,fontSize: 16),)),),

                                      ),

                                    ],),
                                  ),
                                )
                              ],),
                            )
                        ));
                  }, child: Row(children:
                  [
                    IconButton(onPressed: (){},
                        icon: Icon(Icons.keyboard_arrow_up_rounded)),
                    Text('حدد نوع المساعده',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),



                  ],)),
            ),
          ),
        ),
      ],)
        ) ,);
  }
}
