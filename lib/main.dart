import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/ui/main/widgets/main_app.dart';

void main() {
  final _ = WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MainApp()));
}
