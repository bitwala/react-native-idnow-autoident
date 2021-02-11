# react-native-idnow-core

A ReactNative wrapper over IDnowCoreSDK

## Installation

```sh
npm install react-native-idnow-core
```

### iOS
1. Follow this guide: https://github.com/idnow/de.idnow.ios.sdk#cocoapods
2. Add [IdnowCore.swift](https://gitlab.com/nazaryablonskiy/react-native-idnow-core/-/blob/master/example/ios/IdnowCore.swift) and [IdnowCore.m](https://gitlab.com/nazaryablonskiy/react-native-idnow-core/-/blob/master/example/ios/IdnowCore.m) files to your project, make sure you have a bridging-header file set up (see [IdnowCoreExample-Bridging-Header.h](https://gitlab.com/nazaryablonskiy/react-native-idnow-core/-/blob/master/example/ios/IdnowCoreExample-Bridging-Header.h))

### Android
See [this commit](https://gitlab.com/nazaryablonskiy/react-native-idnow-core/-/commit/226f497bae1002fee1a53886e6e6b90b0836bed9)

## Usage

```js
import { startIdent, Language } from 'react-native-idnow-core';

// ...

const result = await startIdent(token, Language.en);
```

## License

MIT
