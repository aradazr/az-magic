import 'package:azmagic/Model/NumbersList.dart';
import 'package:azmagic/Model/static_items.dart';
import 'package:azmagic/Pages/page_4.dart';
import 'package:azmagic/gen/assets.gen.dart';
import 'package:azmagic/Model/my_colora.dart';
import 'package:azmagic/providers/globalkey_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:provider/provider.dart';

Numbers numbers = Numbers();

// ignore: must_be_immutable
class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
     var deviceLanguage=Locales.currentLocale(context).toString();
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    //* providers
    final keyProvider = Provider.of<GlobalKeyProvider>(context);
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          key: keyProvider.page3Key,
        
          drawerEnableOpenDragGesture: true,
          appBar: MyAppBar(globalKey: keyProvider.page3Key),
        
          drawer: DraWer(),
        
          //شکل ستاره ها
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(children: [
              Positioned(
                right: 0,
                bottom: 0,
                top: -50,
                left: 60,
                child: Container(
                  child:
                      Assets.images.goldenstar.image(height: 1000, width: 1000),
                ),
              ),
              Positioned(
                  top: 60,
                  left: 0,
                  child: Container(
                    child: Assets.images.magicstar.image(),
                  )),
              Positioned(
                  bottom: 60,
                  left: 0,
                  child: Container(
                    child: Assets.images.starwood.image(),
                  )),
        
              //متن و بقیه دکمه ها
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),

                    deviceLanguage=='en'?
                    LocaleText('page3title',
                        style: textTheme.displayLarge):
                        
                        LocaleText('page3title',
                        style: textTheme.labelLarge),
        
                    //عدد ها
                    PageNumbers(num: num, textTheme: textTheme)
                    // Text(
                    //   '''13  26  31  44  57\n9  14  27  40  45  58\n10  15  28  41  46  59\n11  24  29  42  47  60\n12  25  30  43  56    ''',
                    //   style: textTheme.displayMedium,
                    //   textAlign: TextAlign.center,
                    // )
        
                    ,
        
                    SizedBox(
                      height: size.height / 50,
                    )
                    //دکمه بنفش رنگ
                    ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //دکمه یس
                        TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: SolidColors.buttn,
                                fixedSize:
                                    Size(size.width / 3.8, size.height / 15)),
                            onPressed: () {
                              if (num == 0) {
                                setState(() {
                                  numbers.plus.add(numbers.numbers1.first);
                                  num++;
                                });
                              } else if (num == 1) {
                                setState(() {
                                  numbers.plus.add(numbers.numbers2.first);
                                  num++;
                                });
                              } else if (num == 2) {
                                setState(() {
                                  numbers.plus.add(numbers.numbers3.first);
                                  num++;
                                });
                              } else if (num == 3) {
                                setState(() {
                                  numbers.plus.add(numbers.numbers4.first);
                                  num++;
                                });
                              } else if (num == 4) {
                                setState(() {
                                  numbers.plus.add(numbers.numbers5.first);
                                  num++;
                                });
                              } else if (num == 5) {
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Page4()),
                                  );
                                });
                              }
                            },
                            child: 
                            deviceLanguage=='en'?
                            LocaleText(
                              'yesbttn',
                              style: textTheme.displaySmall,
                            ):FittedBox(
                              child: LocaleText(
                                'yesbttn',
                                style: textTheme.labelMedium,
                              ),
                            )
                            
                            ),
                        SizedBox(width: size.width / 32),
                        //دکمه نو
                        TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: SolidColors.buttn,
                                fixedSize:
                                    Size(size.width / 3.8, size.height / 15)),
                            onPressed: () {
                              if (num == 0) {
                                setState(() {
                                  
                                  num++;
                                  
                                });
                              } else if (num == 1) {
                                setState(() {
                                  num++;
                                });
                              } else if (num == 2) {
                                setState(() {
                                  num++;
                                });
                              } else if (num == 3) {
                                setState(() {
                                  num++;
                                });
                              } else if (num == 4) {
                                setState(() {
                                  num++;
                                });
                              } else if (num == 5) {
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Page4()),
                                  );
                                });
                              }
                            },
                            child:  deviceLanguage=='en'?
                            LocaleText(
                              'nobttn',
                              style: textTheme.displaySmall,
                            ):FittedBox(
                              child: LocaleText(
                                'nobttn',
                                style: textTheme.labelMedium,
                              ),
                            )),
                      ],
                    ),
                    const Spacer(),
        
                    //دکمه زرد رنگ
                    backBttn(size)
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

//دکمه برگشت
  Padding backBttn(Size size) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height / 12,
        width: size.width / 6,
        decoration: BoxDecoration(
            color: SolidColors.backBttn,
            borderRadius: BorderRadius.circular(17)),
        child: IconButton(
          onPressed: () {
            if (num == 0) {
              setState(() {

                numbers.plus.clear();
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              });
            }
            if (num == 1 && numbers.plus.isNotEmpty) {
              setState(() {
               num--;
                numbers.plus.removeLast()!;
                
              });
            }else{setState(() {
              num--;
            });}
            if (num == 2 && numbers.plus.isNotEmpty) {
              setState(() {
               num--;
                numbers.plus.removeLast()!;
                
              });
            }
            if (num == 3 && numbers.plus.isNotEmpty) {
              setState(() {
                numbers.plus.removeLast()!;
                num--;
              });
            }
            if (num == 4 && numbers.plus.isNotEmpty) {
              setState(() {
                numbers.plus.removeLast()!;
                num--;
              });
            }
            if (num == 5 && numbers.plus.isNotEmpty) {
              setState(() {
                numbers.plus.removeLast();
                num--;
              });
            }
          },
          icon: const Icon(Icons.turn_left_rounded, shadows: [
            Shadow(
              blurRadius: 15,
              offset: Offset(0, 3),
              color: Colors.black,
            )
          ]),
          color: Colors.black,
        ),
      ),
    );
  }
}

//عدد های توی صفخه که هی عوض میشن
class PageNumbers extends StatelessWidget {
  const PageNumbers({
    super.key,
    required this.num,
    required this.textTheme,
  });

  final int num;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
      child: Wrap(
          alignment: WrapAlignment.center,
          spacing: -3,
          children: num == 0
              ? numbers.numbers1
                  .map((e) => SizedBox(
                        width: 43,
                        height: 42,
                        child: Text(
                          '$e',
                          style: textTheme.displayMedium,
                          textAlign: TextAlign.center,
                        ),
                      ))
                  .toList()
              : num == 1
                  ? numbers.numbers2
                      .map((e) => SizedBox(
                            width: 43,
                            height: 42,
                            child: Text(
                              '$e',
                              style: textTheme.displayMedium,
                              textAlign: TextAlign.center,
                            ),
                          ))
                      .toList()
                  : num == 2
                      ? numbers.numbers3
                          .map((e) => SizedBox(
                                width: 43,
                                height: 42,
                                child: Text(
                                  '$e',
                                  style: textTheme.displayMedium,
                                  textAlign: TextAlign.center,
                                ),
                              ))
                          .toList()
                      : num == 3
                          ? numbers.numbers4
                              .map((e) => SizedBox(
                                    width: 43,
                                    height: 42,
                                    child: Text(
                                      '$e',
                                      style: textTheme.displayMedium,
                                      textAlign: TextAlign.center,
                                    ),
                                  ))
                              .toList()
                          : num == 4
                              ? numbers.numbers5
                                  .map((e) => SizedBox(
                                        width: 43,
                                        height: 42,
                                        child: Text(
                                          '$e',
                                          style: textTheme.displayMedium,
                                          textAlign: TextAlign.center,
                                        ),
                                      ))
                                  .toList()
                              : num == 5
                                  ? numbers.numbers6
                                      .map((e) => SizedBox(
                                            width: 43,
                                            height: 42,
                                            child: Text(
                                              '$e',
                                              style: textTheme.displayMedium,
                                              textAlign: TextAlign.center,
                                            ),
                                          ))
                                      .toList()
                                  : numbers.plus
                                      .map((e) => SizedBox(
                                            width: 43,
                                            height: 42,
                                            child: Text(
                                              '$e',
                                              style: textTheme.displayMedium,
                                              textAlign: TextAlign.center,
                                            ),
                                          ))
                                      .toList()),
    );
  }
}
