// src/configureEnvironment.ts
import { NativeModules } from 'react-native';
const { EnvironmentModule } = NativeModules;
//The EnvironmentModule is a native module that includes methods like getEnv and getVersionNumber,
//which will return data from the native side.
export const configureEnvironment = EnvironmentModule;
export const configureVersionNumber = EnvironmentModule;
