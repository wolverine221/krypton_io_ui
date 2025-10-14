import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/application/theme/theme_bloc.dart';

class BlocBindings {
  static List<BlocProvider> initializer = [
    BlocProvider<ThemeBloc>(create: (context) => ThemeBloc()..add(LoadTheme())),
  ];
}
