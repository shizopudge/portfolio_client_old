import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/styles/colors.dart';

class Greeting extends StatefulWidget {
  final double height;
  final double width;
  const Greeting({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  State<Greeting> createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {
  late final ValueNotifier<String> _greetingNotifier =
      ValueNotifier<String>(_getDayPeriod());

  String _getDayPeriod() {
    final int currentHour = TimeOfDay.now().hour;
    if (currentHour >= 22 || currentHour <= 5) {
      return 'Доброй ночи';
    } else if (currentHour > 5 && currentHour <= 11) {
      return 'Доброе утро';
    } else if (currentHour > 11 && currentHour < 18) {
      return 'Добрый день';
    } else {
      return 'Хорошего вечера';
    }
  }

  @override
  void initState() {
    Timer.periodic(const Duration(milliseconds: 1000),
        (timer) => _greetingNotifier.value = _getDayPeriod());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: FittedBox(
        child: ValueListenableBuilder(
          valueListenable: _greetingNotifier,
          builder: (context, greeting, _) => Text(
            greeting,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Pallete.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
