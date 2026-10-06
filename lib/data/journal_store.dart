import 'package:flutter/material.dart';
import 'package:journalapp/models/journal_app_models.dart';

class JournalStore extends ChangeNotifier {
  final List<Journal> _entries = [];

  List<Journal> get entries => _entries;

  void addEntry(Journal entry) {
    _entries.add(entry);
    notifyListeners();
  }

  void removeEntry(Journal entry) {
    _entries.remove(entry);
    notifyListeners();
  }

  void pinEntry(int id) {
    final entry = _entries.firstWhere((e) => e.id == id);

    entry.isPinned = !(entry.isPinned);
  }
}

final journalStore = JournalStore();
