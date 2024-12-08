import 'package:flutter/material.dart';
import 'package:local_database/share_preferences/shared_preferences_services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SharedPreferencesExample(),
    );
  }
}

class SharedPreferencesExample extends StatefulWidget {
  @override
  _SharedPreferencesExampleState createState() => _SharedPreferencesExampleState();
}

class _SharedPreferencesExampleState extends State<SharedPreferencesExample> {
  final SharedPreferencesService _prefsService = SharedPreferencesService();

  TextEditingController _textController = TextEditingController();
  String? _storedValue;
  bool _isSaved = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  // Load data from SharedPreferences
  _loadData() async {
    String? value = await _prefsService.getString('storedData');
    setState(() {
      _storedValue = value;
    });
  }

  // Save data to SharedPreferences
  _saveData() async {
    String value = _textController.text;
    await _prefsService.saveString('storedData', value);
    setState(() {
      _storedValue = value;
      _isSaved = true;
    });
  }

  // Clear the saved data
  _clearData() async {
    await _prefsService.remove('storedData');
    setState(() {
      _storedValue = null;
      _isSaved = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Enter something',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveData,
              child: const Text('Save to SharedPreferences'),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _clearData,
              child: const Text('Clear Data'),
            ),
            const SizedBox(height: 40),
            _isSaved
                ? Text('Saved Value: $_storedValue')
                : const Text('No saved value'),
          ],
        ),
      ),
    );
  }
}