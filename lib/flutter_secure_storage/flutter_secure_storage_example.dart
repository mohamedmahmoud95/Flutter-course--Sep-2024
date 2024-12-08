import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'flutter_secure_storage_services.dart';

class FlutterSecureStorageExample extends StatefulWidget {
  const FlutterSecureStorageExample({super.key});

  @override
  State<FlutterSecureStorageExample> createState() =>
      _FlutterSecureStorageExampleState();
}

class _FlutterSecureStorageExampleState
    extends State<FlutterSecureStorageExample> {
  final SecureStorageService _secureStorage = SecureStorageService();

  final TextEditingController _keyController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  String? _retrievedValue;
  Map<String, String>? _allData;

  Future<void> _saveData() async {
    await _secureStorage.writeSecureData(
        _keyController.text, _valueController.text);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Data saved successfully!')),
    );
  }

  Future<void> _readData() async {
    final value = await _secureStorage.readSecureData(_keyController.text);
    setState(() {
      _retrievedValue = value ?? 'No data found for this key';
    });
  }

  Future<void> _deleteData() async {
    await _secureStorage.deleteSecureData(_keyController.text);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Data deleted successfully!')),
    );
    setState(() {});
  }

  Future<void> _deleteAllData() async {
    await _secureStorage.deleteAllData();
    setState(() {});
  }

  Future<void> _readAllData() async {
    final allData = await _secureStorage.readAllData();
    setState(() {
      _allData = allData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Secure Storage Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _keyController,
              decoration: const InputDecoration(labelText: 'Key'),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: _valueController,
              decoration: const InputDecoration(labelText: 'Value'),
            ),
            const SizedBox(height: 40),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: _saveData, child: const Text('Save')),
                ElevatedButton(onPressed: _readData, child: const Text('Read')),
                ElevatedButton(
                    onPressed: _deleteData, child: const Text('Delete')),
                ElevatedButton(
                    onPressed: _deleteAllData, child: const Text('Delete All')),
                ElevatedButton(
                    onPressed: _readAllData,
                    child: const Text('Read All Data')),
              ],
            ),
            const SizedBox(height: 40),
            // if (_retrievedValue != null)
            //   Text(
            //     'Retrieved Value: $_retrievedValue',
            //     style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            //   ),

            if (_allData != null && _allData!.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _allData!.entries
                    .map(
                      (entry) => Text(
                        '${entry.key}: ${entry.value}',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    )
                    .toList(),
              ),
            if (_allData != null && _allData!.isEmpty)
              const Text(
                'No data stored.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
