part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent extends Equatable {}

// class ChangeTheme extends ThemeEvent {
//   final int index;
//
//   ChangeTheme(this.index);
//
//   @override
//   List<Object?> get props => [index];
// }

class ToggleThemeMode extends ThemeEvent {
  final ThemeMode themeMode;
  ToggleThemeMode(this.themeMode);

  @override
  List<Object?> get props => [themeMode];
}


class LoadTheme extends ThemeEvent {
  @override
  List<Object?> get props => [];
}
