import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'data_t.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    double pad=MediaQuery.of(context).size.width*0.1;
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage('assest/bg.png'),
                fit: BoxFit.cover,
              ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(pad, 6, 6, 8),
                    child: Icon(FontAwesomeIcons.heart,
                    size: 36,
                    color: Colors.white,),
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      'Top Picks',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(

                  ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                print('dialoue 1');
                              },
                              child: Container(

                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: MediaQuery.of(context).size.width*0.65,
                                height: MediaQuery.of(context).size.height*0.25,
                                margin: EdgeInsets.only(left: pad),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Image(
                                    image: AssetImage('assest/img1.jpeg',
                                    ),
                                      fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: MediaQuery.of(context).size.width*0.65,
                              height: MediaQuery.of(context).size.height*0.25,
                              margin: EdgeInsets.only(left: pad),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image(
                                  image: AssetImage('assest/img6.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                              ),


                            ),
                            GestureDetector(
                              onTap: (){
                                print('Dialogue 2');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: MediaQuery.of(context).size.width*0.65,
                                height: MediaQuery.of(context).size.height*0.25,
                                margin: EdgeInsets.only(left: pad),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Image(
                                    image: AssetImage('assest/img7.jpeg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey,
                              ),
                              width: MediaQuery.of(context).size.width*0.65,
                              height: MediaQuery.of(context).size.height*0.25,
                              margin: EdgeInsets.only(left: pad),
                              child:  Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image(
                                  image: AssetImage('assest/img10.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),

                          ],
                        ),

                      ),
                ),
                flex: 4,

              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 9,
                child: Container(

                  child: ListView.builder(
                      itemCount:data.length,
                      itemBuilder: (context,index)
                    {
                      return Padding(padding:EdgeInsets.all(10),
                        child: Container(
                          // margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                          // width: MediaQuery.of(context).size.width*0.3,
                          // height: MediaQuery.of(context).size.height *0.15,
                          // blur: 0,
                          // borderRadius: 20,
                          // border: 15,
                          // borderGradient: LinearGradient(
                          //   begin: Alignment.topLeft,
                          //   end: Alignment.bottomRight,
                          //   colors: [
                          //     const Color(0xFF000000).withOpacity(0),
                          //     const Color(0xFF000000).withOpacity(0),
                          //   ],
                          // ),
                          // linearGradient: LinearGradient(
                          //     begin: Alignment.bottomCenter,
                          //     end: Alignment.topCenter,
                          //     colors: [
                          //       const Color(0xFFffffff).withOpacity(0.4),
                          //       const Color(0xFFffffff).withOpacity(0.2),
                          //     ],
                          //     stops: const [
                          //       0.1,
                          //       1,
                          //     ]),

                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end:Alignment.topCenter,
                              stops: [0.1,0.4,0.5,0.9],
                              colors: [
                                Colors.white12,
                                Colors.white38,
                                Colors.white54,
                                Colors.white60,

                              ]
                            ),
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(bottom: 30),
                                        child: Text(data[index].name,textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 24,color:Colors.black.withOpacity(1),fontWeight: FontWeight.bold),),
                                    ),
                                  ),
                                   Center(
                                      child: Container(
                                         height: 120.0,
                                         width: 120.0,
                                         decoration: BoxDecoration(
                                           image: DecorationImage(
                                             image: AssetImage(
                                                 'assest/img$index.jpeg'),
                                             fit: BoxFit.fill,
                                           ),
                                           // shape: BoxShape.circle,
                                           borderRadius: BorderRadius.circular(20),
                                           border: Border.all(
                                             width: 3,
                                             color: Colors.black,
                                           )
                                         ),
                                      ),
                                  )
                                ],
                              ),
                            ),

                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
