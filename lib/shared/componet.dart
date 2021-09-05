import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildFormField({
  TextEditingController? controller,
  required TextInputType type,
  required Icon prfix,
  required InputBorder border,
  required String placeHolder,
}) {
  return TextFormField(
    controller: controller,
    keyboardType: type,
    decoration: InputDecoration(
      hintText: placeHolder,
      prefixIcon: prfix,
      border: border,
    ),
  );
}

Widget buildElavtedButton({
  required Widget wid,
  required Color color,
  required OutlinedBorder border,
  EdgeInsetsGeometry? padd,
}) {
  return ElevatedButton(
    onPressed: () {},
    child: wid,
    style: ElevatedButton.styleFrom(
      shape: border,
      primary: color,
      padding: padd,
    ),
  );
}

Widget buildListOfThings({
  required String image,
  String? textrn,
  required String textbi,
  required String textdat,
  required String textnum,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      //Image
      Container(
        width: 170,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(width: 10),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            //THE TWO TEXT
            children: [
              textrn != null
                  ? Container(
                      width: 90,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          textrn,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : Container(),
              textrn != null ? SizedBox(width: 15) : SizedBox(),
              Container(
                width: 90,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Traning',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: 200,
            child: Text(
              textbi,
              maxLines: 2,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            textdat,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Colors.grey[400],
              fontSize: 15,
            ),
          ),
          SizedBox(height: 5),
          //The Two Icon
          Row(
            children: [
              Transform.rotate(
                angle: 45,
                child: Icon(
                  Icons.push_pin_outlined,
                  color: Colors.grey,
                  size: 17,
                ),
              ),
              SizedBox(width: 6),
              Text(
                'logan',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(width: 25),
              Icon(
                Icons.chat_bubble_outline,
                color: Colors.grey,
                size: 17,
              ),
              SizedBox(width: 6),
              Text(
                textnum,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: Colors.grey[600],
                ),
              ),
            ],
          )
        ],
      )
    ],
  );
}
