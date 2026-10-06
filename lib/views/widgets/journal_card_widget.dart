import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:journalapp/models/journal_app_models.dart';
import 'package:journalapp/views/pages/journal_entry_page.dart';

class JournalCardWidget extends StatelessWidget {
  final Journal entry;
  const JournalCardWidget({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:12.0),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(10),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JournalEntryPage(entry: entry,)),
            );
          },
          child: Ink(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(166, 233, 233, 233),
              // borderRadius: BorderRadius.circular(10.0),
              border: BoxBorder.fromLTRB(
                bottom: BorderSide(width: 0),
                right: BorderSide(width: 0),
                top: BorderSide(width: 0),
                left: BorderSide(
                  width: 4,
                  color: const Color.fromARGB(255, 255, 162, 128),
                  style: BorderStyle.solid,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${entry.title} ',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.sourceSerif4(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                     
                      Text(
                        DateFormat("MMM d").format(entry.createdAt),
                        style: GoogleFonts.karla(color: Colors.black54),
                      ),
                    ],
                  ),
                  Divider(height: 40),
                  Text(maxLines: 2,
      
                    '${entry.body} ',overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.karla(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color.fromARGB(255, 123, 122, 122),
                      
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: entry.tags.map((tag) => Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 224, 224, 224),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Text(
                          '#$tag'.toLowerCase(),
                          style: GoogleFonts.karla(fontWeight: FontWeight.w500),
                        ),
                      )).toList()
                     
                  ),
                ],
              ),
            ),
          ),
        ),
        
      ),
    );
  }
}
