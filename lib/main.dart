import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/application/bloc_blinding/bloc_blinding.dart';
import 'package:untitled/application/theme/theme_bloc.dart';
import 'package:untitled/core/app_theme/themedata/themedata.dart';
import 'package:untitled/presentation/screens/homepage/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final themeModeString = prefs.getString('themeMode') ?? 'system';

  ThemeMode themeMode;
  switch (themeModeString) {
    case 'light':
      themeMode = ThemeMode.light;
      break;
    case 'dark':
      themeMode = ThemeMode.dark;
      break;
    default:
      themeMode = ThemeMode.system;
  }

  // await requestLocationPermission(); // Call the function

  ThemeData themeData;
  if (themeMode == ThemeMode.light) {
    themeData = AppTheme.themes[0];
  } else if (themeMode == ThemeMode.dark) {
    themeData = AppTheme.themes[1];
  } else {
    themeData = AppTheme.themes[0]; // Or adapt based on system brightness if you want.
  }

  runApp(const MyApp());
}

// Future<void> requestLocationPermission() async {
//   PermissionStatus status = await Permission.location.request();
//
//   if (status.isGranted) {
//     print("Location permission granted");
//   } else if (status.isDenied) {
//     print("Location permission denied");
//   } else if (status.isPermanentlyDenied) {
//     // Open app settings
//     openAppSettings();
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocBindings.initializer,
      child: BlocSelector<ThemeBloc, ThemeState, ThemeState>(
        selector: (state) => state,
        builder: (context, state) {
          return GetMaterialApp(
            title: 'Akco',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.themes[0],
            darkTheme: AppTheme.themes[1],
            themeMode: state.themeMode,
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
