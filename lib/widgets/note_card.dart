import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_app/style/app_style.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc)
{

  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppStyle.cardsColor[doc['color_id']],
        borderRadius: BorderRadius.circular(8.0)
      ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  doc["note_title"],
                  style: AppStyle.mainTitle,
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                     // Call the onDelete function and pass the document to delete
                  },
                ),

              ],
            ),


            SizedBox(height: 8.0,),
            Text(
              doc["creation_date"],
              style: AppStyle.dateTitle,
            ),
            Text(
              doc["note_content"],
              style: AppStyle.mainContent,
              overflow: TextOverflow.ellipsis,
            ),




          ],
        ),


    ),
  );
}