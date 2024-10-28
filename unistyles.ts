import { StyleSheet } from 'react-native-unistyles';

const lightTheme = {
  colors: {
    accent: '#007AFF',
    background: '#ffffff',
  },
};

const darkTheme = {
  colors: {
    accent: '#aa00ff',
    background: '#000000',
  },
};

type AppThemes = {
  light: typeof lightTheme,
  dark: typeof darkTheme
}

declare module 'react-native-unistyles' {
  export interface UnistylesThemes extends AppThemes {}
}

StyleSheet.configure({
  themes: {
    light: lightTheme,
    dark: darkTheme,
  },
  settings: {
    adaptiveThemes: true
  }
})
