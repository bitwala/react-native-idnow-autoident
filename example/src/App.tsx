import * as React from 'react';

import { StyleSheet, View, TextInput, Button } from 'react-native';
import { startIdent } from 'react-native-idnow-core';

export default function App() {
  const [loading, setLoading] = React.useState(false);
  const [token, setToken] = React.useState('MWT-GEBFZ');

  return (
    <View style={styles.container}>
      <TextInput
        value={token}
        onChange={(e) => {
          setToken(e.nativeEvent.text);
        }}
        underlineColorAndroid="black"
      />
      <Button
        title={loading ? 'Starting...' : 'Start'}
        onPress={async () => {
          setLoading(true);
          try {
            const res = await startIdent(token);
            setLoading(false);
          } catch (e) {
            setLoading(false);
          }
        }}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
