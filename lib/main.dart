import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather Forecast',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.redAccent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.redAccent,
          titleTextStyle: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            color: Colors.white,
            fontFamily: 'Righteous',
            fontSize: 20.0,
          ),
          titleLarge: TextStyle(
            color: Colors.white,
            fontFamily: 'Outfit',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: TextStyle(
            color: Colors.white,
            fontFamily: 'Outfit',
            fontSize: 15.0,
            fontWeight: FontWeight.w200,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: 'Outfit'
          )
        ),
        
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Forecast'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child:  ListView(
          children: [Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter City Name',
                  hintStyle: TextStyle(
                    color: Colors.white
                  ),
                  prefixIcon: Icon(Icons.search,color: Colors.white,),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                    borderSide: BorderSide(color: Colors.white, width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0),),
                      borderSide: BorderSide(color: Colors.white, width: 2)
                  )
                ),
              ),
              const SizedBox(height: 10.0,),
              const Column(
                children: [
                  Text('Tashkent city,UZ',style: TextStyle(
                    color: Colors.white,fontSize: 35.0,fontFamily: 'Outfit',fontWeight: FontWeight.w400
                  )),
                  Text('Monday, Apr 10, 2023',style: TextStyle(
                    color: Colors.white,fontSize: 15.0,fontFamily: 'Outfit',
                  ),),
                ],
              ),
              const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.sunny,color: Colors.white,size: 70.0,),
                  SizedBox( width: 10.0,),
                  Column(
                    children: [
                      Text('14 °C',style: TextStyle(
                          color: Colors.white,fontSize: 45.0,fontFamily: 'Outfit',fontWeight: FontWeight.w400
                      )),
                      Text('LIGHT SNOW',style: TextStyle(
                          color: Colors.white,fontSize: 15.0,fontFamily: 'Outfit',fontWeight: FontWeight.w400
                      ),),
                    ],
                  )
                ],
              ),
              const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.snowing, color: Colors.white,size: 40,),
                      Text('5',),
                      Text('km/h', style: TextStyle(fontSize: 10.0),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.snowing, color: Colors.white,size: 40,),
                      Text('3',),
                      Text('%', style: TextStyle(fontSize: 10.0),)
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.snowing, color: Colors.white,size: 40,),
                      Text('20',),
                      Text('%', style: TextStyle(fontSize: 10.0),)
                    ],
                  )
                ],
              ),
              const Divider(height: 20.0,),
              const Text('7-DAY WEATHER FORECAST',style: TextStyle(fontSize: 15.0),),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:  [
                    Container(
                      padding:const EdgeInsets.all(5.0),
                      color: Colors.white.withOpacity(0.2),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Friday'),
                          Row(
                            children: [
                              Text('6 °C', style: TextStyle(fontSize: 25.0),),
                              SizedBox(width: 5.0,),
                              Icon(Icons.sunny,size: 40.0,color: Colors.white,)
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 15.0,),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      color: Colors.white.withOpacity(0.2),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Friday'),
                          Row(
                            children: [
                              Text('9 °C', style: TextStyle(fontSize: 25.0),),
                              SizedBox(width: 5.0,),
                              Icon(Icons.sunny,size: 40.0,color: Colors.white,)
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 15.0,),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      color: Colors.white.withOpacity(0.2),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Friday'),
                          Row(
                            children: [
                              Text('13 °C', style: TextStyle(fontSize: 25.0),),
                              SizedBox(width: 5.0,),
                              Icon(Icons.sunny,size: 40.0,color: Colors.white,)
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 15.0,),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      color: Colors.white.withOpacity(0.2),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Friday'),
                          Row(
                            children: [
                              Text('19 °C', style: TextStyle(fontSize: 25.0),),
                              SizedBox(width: 5.0,),
                              Icon(Icons.sunny,size: 40.0,color: Colors.white,)
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 15.0,),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      color: Colors.white.withOpacity(0.2),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Friday'),
                          Row(
                            children: [
                              Text('22 °C', style: TextStyle(fontSize: 25.0),),
                              SizedBox(width: 5.0,),
                              Icon(Icons.sunny,size: 40.0,color: Colors.white,)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )

            ],
          ),]
        ),
      ),
    );
  }
}

