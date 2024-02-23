import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ricky_and_morty/characters/data/service/character_service.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () {
            final service = CharacterServiceImpl(
              Dio(
                BaseOptions(
                  baseUrl: 'https://rickandmortyapi.com/api/',
                ),
              ),
            );

            service.getCharacters(1);
          },
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}