# react-native-idnow-core

A ReactNative wrapper over IDnowCoreSDK

## Installation

```sh
npm install react-native-idnow-core
```

### iOS
1. Follow this guide: https://github.com/idnow/de.idnow.ios.sdk#cocoapods
2. Add [IdnowCore.swift](https://github.com/bitwala/react-native-idnow-autoident/-/blob/master/example/ios/IdnowCore.swift) and [IdnowCore.m](https://github.com/bitwala/react-native-idnow-autoident/-/blob/master/example/ios/IdnowCore.m) files to your project, make sure you have a bridging-header file set up (see [IdnowCoreExample-Bridging-Header.h](https://github.com/bitwala/react-native-idnow-autoident/-/blob/master/example/ios/IdnowCoreExample-Bridging-Header.h))

### Android
TODO

## Usage

```js
import { startIdent, Language } from 'react-native-idnow-core';

// ...

const result = await startIdent(token, Language.en);
```

## License

MIT
