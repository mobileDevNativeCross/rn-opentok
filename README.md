
# rn-opentok

## Getting started

`$ npm install rn-opentok --save`

### Mostly automatic installation

`$ react-native link rn-opentok`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `rn-opentok` and add `RNOpentok.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNOpentok.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.opengeekslab.RNOpentokPackage;` to the imports at the top of the file
  - Add `new RNOpentokPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':rn-opentok'
  	project(':rn-opentok').projectDir = new File(rootProject.projectDir, 	'../node_modules/rn-opentok/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':rn-opentok')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNOpentok.sln` in `node_modules/rn-opentok/windows/RNOpentok.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Com.Reactlibrary.RNOpentok;` to the usings at the top of the file
  - Add `new RNOpentokPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNOpentok from 'rn-opentok';

// TODO: What to do with the module?
RNOpentok;
```
  