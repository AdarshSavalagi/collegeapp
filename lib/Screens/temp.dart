import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newuisit/supportings/supporting.dart';

class ImageLayout extends StatelessWidget {
  const ImageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: APPBAR(title: 'title'),
      body: ListView(
        children: [
          BlockEven(),
          BlockEven(),
        ],
      ),
    );
  }
}

class BlockEven extends StatelessWidget {
  const BlockEven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          showModal( context: context,
                              builder: (BuildContext context) { return Center(
                                child:  Container(
                                  decoration:BoxDecoration(
                                      border: Border.all(), borderRadius: BorderRadius.circular(5)),
                                  child: Image(image: CachedNetworkImageProvider(
                                    "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                                    errorListener: () => const Icon(Icons.error),
                                  ),
                                    width: double.infinity,
                                    fit: BoxFit.cover,),
                                )
                                , );
                              });
                        },
                        child: Container(
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image(image: CachedNetworkImageProvider(
                              "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                              errorListener: () => const Icon(Icons.error),
                            ),
                              width: MediaQuery.of(context).size.width/3-20,
                              height: MediaQuery.of(context).size.width/3-20,
                              fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:GestureDetector(
                        onTap: (){
                          showModal( context: context,
                              builder: (BuildContext context) { return Center(
                                child:  Container(
                                  decoration:BoxDecoration(
                                      border: Border.all(), borderRadius: BorderRadius.circular(5)),
                                  child: Image(image: CachedNetworkImageProvider(
                                    "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                                    errorListener: () => const Icon(Icons.error),
                                  ),
                                    width: double.infinity,
                                    fit: BoxFit.cover,),
                                )
                                , );
                              });
                        },
                        child:  Container(
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(image: CachedNetworkImageProvider(
                            "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                            errorListener: () => const Icon(Icons.error),
                          ),
                            width: MediaQuery.of(context).size.width/3-20,
                            height: MediaQuery.of(context).size.width/3-20,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    ),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:GestureDetector(
                        onTap: (){
                          showModal( context: context,
                              builder: (BuildContext context) { return Center(
                                child:  Container(
                                  decoration:BoxDecoration(
                                      border: Border.all(), borderRadius: BorderRadius.circular(5)),
                                  child: Image(image: CachedNetworkImageProvider(
                                    "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                                    errorListener: () => const Icon(Icons.error),
                                  ),
                                    width: double.infinity,
                                    fit: BoxFit.cover,),
                                )
                                , );
                              });
                        },
                        child:  Container(
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(15),

                        child:Image(image: CachedNetworkImageProvider(
                          "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                          errorListener: () => const Icon(Icons.error),
                        ),
                          width: MediaQuery.of(context).size.width/2+40,
                          height: MediaQuery.of(context).size.width/2+40,
                          fit: BoxFit.cover,),
                      ),  ),
                    ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      showModal( context: context,
                          builder: (BuildContext context) { return Center(
                            child:  Container(
                              decoration:BoxDecoration(
                                  border: Border.all(), borderRadius: BorderRadius.circular(5)),
                              child: Image(image: CachedNetworkImageProvider(
                                "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                                errorListener: () => const Icon(Icons.error),
                              ),
                                width: double.infinity,
                                fit: BoxFit.cover,),
                            )
                            , );
                          });
                    },
                    child: Container(
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(15),

                      child:Image(image: CachedNetworkImageProvider(
                        "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                        errorListener: () => const Icon(Icons.error),
                      ),
                        width: MediaQuery.of(context).size.width/3-20,
                        height: MediaQuery.of(context).size.width/3-20,
                        fit: BoxFit.cover,),
                    ),
                    ),
                    ),
                ),
 Padding(
   padding: const EdgeInsets.all(8.0),
   child: GestureDetector(
     onTap: (){
       showModal( context: context,
           builder: (BuildContext context) { return Center(
             child:  Container(
               decoration:BoxDecoration(
                   border: Border.all(), borderRadius: BorderRadius.circular(5)),
               child: Image(image: CachedNetworkImageProvider(
                 "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                 errorListener: () => const Icon(Icons.error),
               ),
                 width: double.infinity,
                 fit: BoxFit.cover,),
             )
             , );
           });
     },
     child: Container(
     child:ClipRRect(
       borderRadius: BorderRadius.circular(15),
                      child:Image(image: CachedNetworkImageProvider(
                        "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                        errorListener: () => const Icon(Icons.error),
                      ),
                        width: MediaQuery.of(context).size.width/3-20,
                        height: MediaQuery.of(context).size.width/3-20,
                        fit: BoxFit.cover,),
                    ),
                    ),
                    ),
 ),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: GestureDetector(
                       onTap: (){
                         showModal( context: context,
                             builder: (BuildContext context) { return Center(
                               child:  Container(
                                 decoration:BoxDecoration(
                                     border: Border.all(), borderRadius: BorderRadius.circular(5)),
                                 child: Image(image: CachedNetworkImageProvider(
                                   "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                                   errorListener: () => const Icon(Icons.error),
                                 ),
                                   width: double.infinity,
                                   fit: BoxFit.cover,),
                               )
                               , );
                             });
                       },
                       child: Container(
                       child:ClipRRect(
                         borderRadius: BorderRadius.circular(15),

                      child:Image(image: CachedNetworkImageProvider(
                        "https://srinivasuniverstrg.blob.core.windows.net/sit-news-images/photoICRICS23.JPG",
                        errorListener: () => const Icon(Icons.error),
                      ),
                        width: MediaQuery.of(context).size.width/3-20,
                        height: MediaQuery.of(context).size.width/3-20,
                        fit: BoxFit.cover,),
                  ),
                  ),
                  ),
                   ),





              ],
            ),

        ],
      ),
    );
  }
}
