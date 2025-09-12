package com.dagconnect.env

import com.dagconnect.BuildConfig
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod
import java.util.Locale

class EnvironmentModule(reactContext: ReactApplicationContext): ReactContextBaseJavaModule(reactContext) {
    override fun getName(): String {
        return "EnvironmentModule"
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    fun getEnv(): String {
        return (BuildConfig.BUILD_TYPE).lowercase(Locale.getDefault())
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    fun getVersionNumber(): String {
        return BuildConfig.VERSION_NAME
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    fun getBuildNumber(): String {
        return BuildConfig.VERSION_CODE.toString()
    }

}