import 'package:azmagic/Model/my_colora.dart';
import 'package:flutter/material.dart';



ThemeData fontsDark= ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 0, 149, 255)),
  textTheme: const TextTheme(
           
           
            displayLarge: TextStyle(
                fontFamily: 'pacifico',
                fontSize: 24,
                height: 1.8,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(0, 5),
                      blurRadius: 15,
                      color: Color.fromARGB(100, 0, 0, 0))
                ]),
            
            
            
            displayMedium: TextStyle(
                fontFamily: 'pacifico',
                fontSize: 25,
                height: 1.8,
              
                color: Colors.white,
                fontWeight: FontWeight.w400,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 20,
                      color: Color.fromARGB(200, 0, 0, 0))
                ]),
            
            
            displaySmall: TextStyle(
                fontFamily: 'pacifico',
                fontSize: 22,
                height: 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w500),
            
            
            bodyMedium: TextStyle(
                fontFamily: 'pacifico',
                fontSize: 32,
                height: 1.8,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 2,
                      color: Color.fromARGB(200, 0, 0, 0))
                ]),
           
           
            bodyLarge: TextStyle(
                fontFamily: 'pacifico',
                fontSize: 48,
                height: 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w600
                ,
               ),
               
               //استایل کلمات دراوور
               headlineMedium: TextStyle(
                fontFamily: 'bangers',
                fontSize: 28,
                height: 1.7,
                color: Colors.white,
                fontWeight: FontWeight.w200
                ,
               ),
               
               headlineLarge: TextStyle(
                fontFamily: 'bangers',
                fontSize: 38,
                height: 1.7,
                color: Colors.black,
                fontWeight: FontWeight.w200
                ,
               ),
                //فونت های فارسی
               
                //فونت های فارسی
               labelSmall: TextStyle(
                fontFamily: 'dana',
                fontSize: 38,
                height: 1.7,
                
                color: Colors.white,
                fontWeight: FontWeight.w500,
                 shadows: <Shadow>[
                  Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 20,
                      color:SolidColors.buttn)
                ]
                
               ),
                //فونت های یس
               labelMedium: TextStyle(
                fontFamily: 'dana',
                fontSize: 62,
                height: 1.7,
                
                color: Colors.black,
                fontWeight: FontWeight.w500,
                 
                
               ),
            labelLarge: TextStyle(
                fontFamily: 'dana',
                fontSize: 29,
                height: 1.7,
                
                color: Colors.white,
                fontWeight: FontWeight.w500,
                 
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 10,
                      color: Color.fromARGB(200, 0, 0, 0))
                ]
               ),
               
          ),
        colorScheme:const ColorScheme.dark(background: Color.fromARGB(255, 0, 33, 78)),
        
        
);

ThemeData fontsLight= ThemeData(
  
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(color:SolidColors.tab),
  colorScheme: const ColorScheme.light(background: Colors.white) ,
  textTheme: const TextTheme(
           
           
            displayLarge: TextStyle(
                fontFamily: 'pacifico',
                fontSize: 24,
                height: 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(0, 5),
                      blurRadius: 15,
                      color: Color.fromARGB(100, 0, 0, 0))
                ]),
            
            
            
            displayMedium: TextStyle(
                fontFamily: 'pacifico',
                fontSize: 25,
                height: 1.8,
              
                color: Colors.black,
                fontWeight: FontWeight.w400,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 20,
                      color: Color.fromARGB(200, 0, 0, 0))
                ]),
            
            
            displaySmall: TextStyle(
                fontFamily: 'pacifico',
                fontSize: 22,
                height: 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w500),
            
            
            bodyMedium: TextStyle(
                fontFamily: 'pacifico',
                fontSize: 32,
                height: 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 2,
                      color: Color.fromARGB(200, 0, 0, 0))
                ]),
           
           
            bodyLarge: TextStyle(
                fontFamily: 'pacifico',
                fontSize: 48,
                height: 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w600
                ,
               ),
               
               //استایل کلمات دراوور
               headlineMedium: TextStyle(
                fontFamily: 'bangers',
                fontSize: 28,
                height: 1.7,
                color: Colors.black,
                fontWeight: FontWeight.w200
                ,
               ),

               //برای بخش انتخاب زبان ها
               headlineLarge: TextStyle(
                fontFamily: 'bangers',
                fontSize: 38,
                height: 1.7,
                
                color: Colors.black,
                fontWeight: FontWeight.w500
                ,
               ),
               //فونت های فارسی
               labelSmall: TextStyle(
                fontFamily: 'dana',
                fontSize: 38,
                height: 1.7,
                
                color: Colors.black,
                fontWeight: FontWeight.w500,
                 shadows: <Shadow>[
                  Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 20,
                      color:SolidColors.buttn)
                ]
                
               ),
                //فونت های یس
               labelMedium: TextStyle(
                fontFamily: 'dana',
                fontSize: 62,
                height: 1.7,
                
                color: Colors.black,
                fontWeight: FontWeight.w500,
                 
                
               ),
            labelLarge: TextStyle(
                fontFamily: 'dana',
                fontSize: 29,
                height: 1.7,
                
                color: Colors.black,
                fontWeight: FontWeight.w500,
                 
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 10,
                      color: Color.fromARGB(200, 0, 0, 0))
                ]
               ),


               
          ),
        
);