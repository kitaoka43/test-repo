import 'package:flutter_riverpod/flutter_riverpod.dart';

final titleProvider = Provider<String>((ref) => 'Riverpod CountUp');
final messageProvider = Provider<String>((ref) => 'You have pushed the button this many times:222');
final countProvider = StateProvider<int>((ref) => 0);