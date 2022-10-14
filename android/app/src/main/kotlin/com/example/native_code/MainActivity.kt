package com.example.native_code
import android.app.Dialog
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity(){

    private val CHANNEL = "DIALOG"
//    private lateinit var myActivity: Activity

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val messenger = flutterEngine.dartExecutor.binaryMessenger
        MethodChannel(messenger, CHANNEL).setMethodCallHandler { call, result ->

            if(call.method == "showDialog"){
                var arguments = call.arguments
                val dialog = Dialog(activity)
                dialog.setTitle(arguments.toString())
                dialog.show()
            }
        }
    }

//    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
//        this.myActivity = binding.activity
//    }
//
//    override fun onDetachedFromActivityForConfigChanges() {
//        TODO("Not yet implemented")
//    }
//
//    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
//        this.myActivity = binding.activity
//    }
//
//    override fun onDetachedFromActivity() {
//        TODO("Not yet implemented")
//    }

}
