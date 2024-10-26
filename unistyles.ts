import 'react-native-unistyles';

const lightTheme = {
  colors: {
    background: '#ffffff',
  },
};

type AppThemes = {
  light: typeof lightTheme
}

declare module 'react-native-unistyles' {
  export interface UnistylesThemes extends AppThemes {}
}
