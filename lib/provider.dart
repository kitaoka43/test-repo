import 'package:flutter_riverpod/flutter_riverpod.dart';

final titleProvider = Provider<String>((ref) => 'Riverpod CountUp');
final messageProvider = Provider<String>((ref) => 'カウントします');
final countProvider = StateProvider<int>((ref) => 0);