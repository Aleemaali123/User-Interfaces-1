// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Value used for the switch tile
  bool _needWhatsAppSupport = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Addional information'),

          centerTitle: true,

          leading: const Icon(Icons.arrow_back)),
      
      body: Column(
          children:[
            ListTile(
                leading:const  Icon(Icons.share),
                title: const Text('Share Dukan App'),
                trailing: IconButton(
                    icon:const  Icon(Icons.arrow_forward_ios),
                    onPressed:(){

                    }
                )
            ),

            ListTile(
                leading:const  Icon(Icons.language),
                title:const Text('Change Language'),
                trailing: IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed:(){

                    }
                )
            ),
            SwitchListTile(
              title: const Text('WhatsApp Chat Support'),
              value: _needWhatsAppSupport,
              onChanged: (bool value) {
                setState(() {
                  _needWhatsAppSupport = value;
                });
              },
              secondary: const Icon(Icons.sms),
            ),

            
            const ListTile(
                leading: Icon(Icons.lock_outline),
                title: Text('Privacy Policy'),
              
          
                ),

                  const ListTile(
                leading: Icon(Icons.star_border_purple500),
                title: Text('Rate Us'),
              
          
                ),
                  const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sign out'),
              
          
                ),


                   Expanded(
                child: Align(
                    alignment:Alignment.bottomCenter,
                    child: Column(
                        mainAxisSize:MainAxisSize.min,
                        children: [
                            const Text('Version\n  2.4.2',),const Padding(padding: EdgeInsets.all(5)),
                         
                        ]
                    )
                )
            
            ),
          ],



         
            ),
    );
  

           
          
          
      

    
  }
}

