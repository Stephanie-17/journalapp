import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journalapp/data/notifiers.dart';
import 'package:journalapp/views/pages/journal_feed_page.dart';
import 'package:journalapp/views/pages/new_journal_entry_page.dart';
import 'package:journalapp/views/pages/pinned_entries_page.dart';

List<Widget> pages = [
  JournalFeedPage(),
  NewJournalEntryPage(),
  PinnedEntriesPage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 251, 245, 234),
        title: Text(
          'Terra Narratives', 
          style: GoogleFonts.merriweather(
            color:Color.fromARGB(255, 169, 76, 0) ,
            fontWeight: FontWeight.w600,
            
          ),
        ),
        actions: [
          ValueListenableBuilder(
            valueListenable: isDarkModeNotifier,
            builder: (context, value, child) {
              return IconButton(
                onPressed: () {
                  isDarkModeNotifier.value = !value;
                },
                icon: value ? Icon(Icons.dark_mode) : Icon(Icons.light_mode),
              );
            },
          ),
        ],
      ),

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ),

      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.book), label: 'Feed'),
              NavigationDestination(
                icon: Icon(Icons.add_circle_outline),
                label: 'New',
              ),
              NavigationDestination(
                icon: Icon(Icons.bookmark_outlined),
                label: 'Pinned',
              ),
            ],
            onDestinationSelected: (value) {
              selectedPageNotifier.value = value;
            },
            selectedIndex: value,
          );
        },
      ),
    );
  }
}
