import 'package:flutter/material.dart';
import 'package:flutterchalnge/shared/componet.dart';

class ListOfThingsScreen extends StatelessWidget {
  const ListOfThingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'Latest News',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Roboto',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.search_outlined),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            //TheTopOfTheApp
            Container(
              color: Colors.grey[200],
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.bar_chart,
                    color: Colors.blue,
                    size: 30,
                  ),
                  SizedBox(width: 6),
                  Text(
                    'sort',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(width: 25),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Icon(
                      Icons.tune_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Refine',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Checkbox(
                    value: false,
                    onChanged: null,
                    fillColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.black54,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Icon(
                    Icons.format_list_bulleted_sharp,
                    color: Colors.blue,
                    size: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            //ListOfThings
            buildListOfThings(
              image: 'assets/images/WorkOut/1.jpg',
              textrn: 'Running',
              textbi: 'Your Full Marthon Traning',
              textdat: 'May 20,2021',
              textnum: '19',
            ),
            Divider(
              height: 40,
              color: Colors.grey[800],
            ),
            buildListOfThings(
              image: 'assets/images/WorkOut/2.jpg',
              textrn: 'Running',
              textbi: ' Marthon Traning Guide For (Total) Beginners ',
              textdat: 'May 20,2021',
              textnum: '5',
            ),
            Divider(
              height: 40,
              color: Colors.grey[800],
            ),
            buildListOfThings(
              image: 'assets/images/WorkOut/3.jpg',
              textbi: 'Bicep Exercies Traning For Man  ',
              textdat: 'May 20,2021',
              textnum: '0',
            ),
            Divider(
              height: 40,
              color: Colors.grey[800],
            ),
            buildListOfThings(
              image: 'assets/images/WorkOut/4.jpg',
              textrn: 'Cardio',
              textbi: 'How to Get Back int Weight Traning',
              textdat: 'May 20,2021',
              textnum: '17',
            ),
          ],
        ),
      ),
    );
  }
}
