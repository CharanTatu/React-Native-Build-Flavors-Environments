# react-native-build-flavors-environments

A React Native package to manage build flavors and environments for your React Native projects.
In React Native development, "build flavors" and "environments" refer to mechanisms for creating different versions of an application from a single codebase, often tailored for specific purposes like development, testing, or production. This is typically achieved by leveraging native build configurations for Android (Product Flavors) and iOS (Build Configurations/Schemes).

## Installation

Install the package using npm or yarn:

```bash
npm install react-native-build-flavors-environments

or

yarn add react-native-build-flavors-environments


1. Import the Package
#######
import { configureEnvironment } from 'react-native-build-flavors-environments';


2. Configure Your Environment
Use the configureEnvironment function to set up your build flavors and environments:

Types of Enviroment
export enum Environment {
  Debug="debug",
  UATDebug = 'uatdebug',
  UATRelease = 'uatrelease',
  ProdDebug = 'proddebug',
  ProdRelease = 'prodrelease',
  Release = 'release',
  DevDebug = 'devdebug',
  DevRelease = 'devrelease',
  QaDebug = 'qadebug',
  QaRelease = 'qarelease'
}

import { configureEnvironment } from 'react-native-build-flavors-environments';
const currentEnvironment =  configureEnvironment?.getEnv();
console.log(currentEnvironment); // Outputs the API URL for the current flavor

3. Access Environment Variables
Access the configured environment variables anywhere in your app:

4.Access Build version
import { configureVersionNumber } from 'react-native-build-flavors-environments';
const buildVersion =  configureVersionNumber();
console.log(buildVersion); // Outputs the API URL for the current build version

3. Access Environment Variables
Access the configured environment variables anywhere in your app:




Requirements
React Native >=0.79.1
React >=19.0.0


Contributing
Contributions are welcome! Please open an issue or submit a pull request.
