import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:journalapp/models/journal_app_models.dart';

class PinnedJournalCardWidget extends StatelessWidget {
  final Journal entry;
  const PinnedJournalCardWidget({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 249, 238, 226),
        borderRadius: BorderRadius.circular(10),
        border: BoxBorder.all(color: const Color.fromARGB(255, 221, 218, 218)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 100, 99, 99),
            offset: Offset(1, 1),
            blurRadius: 3,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(DateFormat("MMMM d y").format(entry.createdAt), style: GoogleFonts.karla()),
                Icon(Icons.bookmark, color: Color.fromARGB(255, 169, 76, 0)),
              ],
            ),
            SizedBox(height: 10),
            Text(
              overflow: TextOverflow.ellipsis,
              "${entry.title} ",
              style: GoogleFonts.merriweather(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 7),
            Text(
              overflow: TextOverflow.ellipsis,
              "${entry.title} ",
              style: GoogleFonts.karla(fontSize: 14),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 5,
              runSpacing: 3,
              children: entry.tags.map((tag) => Chip(
                  label: Text("#$tag".toLowerCase()),
                  backgroundColor: Color.fromARGB(255, 242, 221, 199),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(30),
                  ),
                  padding: EdgeInsets.all(0),
                ), ).toList()
            ),
          ],
        ),
      ),
    );
  }
}
