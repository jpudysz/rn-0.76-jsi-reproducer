module.exports = {
  presets: ['module:@react-native/babel-preset'],
  plugins: [
    [
      'react-native-unistyles/plugin',
      {
        debug: true // will help to debug
      }
    ]
  ]
};
