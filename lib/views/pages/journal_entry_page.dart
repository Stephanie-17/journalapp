import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journalapp/models/journal_app_models.dart';
import 'package:intl/intl.dart';

class JournalEntryPage extends StatelessWidget {
  final Journal entry;
  const JournalEntryPage({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmark, color: Colors.grey),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    border: BoxBorder.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(
                            DateFormat("MMMM d y").format(entry.createdAt),
                            style: GoogleFonts.karla(fontSize: 12),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.spa, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "${entry.title} ",
                        style: GoogleFonts.merriweather(fontSize: 24),
                      ),
                      SizedBox(height: 15),
                      Wrap(
                        spacing: 5,
                        children: entry.tags
                            .map(
                              (tag) => Chip(
                                label: Text("#$tag".toLowerCase()),
                                shape: RoundedSuperellipseBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.all(0),
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "${entry.body} ",
                        style: GoogleFonts.karla(fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
