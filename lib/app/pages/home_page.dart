import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rando_restaurant_app/app/models/list_restaurant.dart';
import '../widgets/answer_text.dart';
import '../widgets/question_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  RestaurantList list = RestaurantList();

  int? randomI;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const QuestionText(),
          if (randomI != null)
            AnswerText(
              restaurant: list.restaurant[randomI!],
            ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 25.0,
            ),
            child: Center(
              child: ElevatedButton(
                onPressed: () => randomIndex(),
                child: const Text(
                  'Outro local!',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void randomIndex() {
    final random = Random();
    final index = random.nextInt(list.restaurant.length);

    setState(() {
      randomI = index;
    });
  }
}
