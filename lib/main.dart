import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: IdCard(),
));
class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int rateme=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('My ID Card'),
        centerTitle:true,
        backgroundColor:Colors.black,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            rateme +=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
                ),



      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/photo.JPG'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.red,
            ),
            Text(
              'Name',
              style:TextStyle(
                color:Colors.white,
                letterSpacing: 2.0,
              )
            ),
            SizedBox(height:10.0),
            Text(
              'Ujwal Pandey',
              style: TextStyle(
                color:Colors.grey,
                fontSize:30.0,
                fontWeight:FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0),
            Text(
              'Address',
              style:TextStyle(
                color:Colors.white,
                letterSpacing: 2.0,
              )
            ),
            SizedBox(height:10.0),
            Text(
              'Kathmandu,Nepal',
              style: TextStyle(
                color:Colors.grey,
                fontSize:30.0,
                fontWeight:FontWeight.bold,
              ),
            ),

             SizedBox(height:30.0),

             Row(
               children: <Widget>[
                 Icon(
                   Icons.email,
                   color: Colors.white70,
                   
                 ),
                 SizedBox(width:10.0),
                 Text(
                   'ujwalpandey@gmail.com',
                   style: TextStyle(
                   color:Colors.grey,
                   fontSize:20.0,
                   letterSpacing: 2.0,
                   )
                   ),
            
             
               ],
             ),
             SizedBox(height:40.0),

             Row(
               children: <Widget>[
             Icon(
               Icons.phone,
               color: Colors.green,
             ),
              SizedBox(width:20.0),
             Text(
               '9843123456',
               style: TextStyle(
                 fontSize:20.0,
               ),
             ),
               ],
             ),
             SizedBox(height:20.0),
             Text(
              'Rate Me',
              style:TextStyle(
                color:Colors.white,
                letterSpacing: 2.0,
              )
            ),
            SizedBox(height:10.0),
            Text(
              '$rateme',
              style: TextStyle(
                color:Colors.red,
                fontSize:30.0,
                fontWeight:FontWeight.bold,
              ),
            ),

           

          ],
        ),

      ),
      );
    
  }
}

