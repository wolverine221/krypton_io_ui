part of 'theme_bloc.dart';

@immutable
class ThemeState extends Equatable {
  final ThemeData themeData;
  final ThemeMode themeMode;
  final bool isLoaded;

  const ThemeState({
    required this.themeData,
    required this.themeMode,
    this.isLoaded = false, // NEW
  });

  ThemeState copyWith({
    ThemeData? themeData,
    ThemeMode? themeMode,
    bool? isLoaded,
  }) {
    return ThemeState(
      themeData: themeData ?? this.themeData,
      themeMode: themeMode ?? this.themeMode,
      isLoaded: isLoaded ?? this.isLoaded,
    );
  }

  @override
  List<Object?> get props => [themeData, themeMode, isLoaded];
}


