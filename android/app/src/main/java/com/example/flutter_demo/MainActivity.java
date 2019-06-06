package com.example.flutter_demo;

import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;


import java.util.HashMap;
import java.util.Map;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.flutter.plugin.common.EventChannel;
// import io.flutter.plugin.common.MethodChannel;

public class MainActivity extends FlutterActivity {

  MethodChannel methodChannel;

  private EventChannel.EventSink mEventSink;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);

    // Method
    new MethodChannel(getFlutterView(), "samples.flutter.io/toast").setMethodCallHandler(new MethodChannel.MethodCallHandler() {
      @Override
      public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if ("toast".equals(methodCall.method)) {
          if (methodCall.hasArgument("content")) {
            Toast.makeText(getBaseContext(), methodCall.argument("content"), Toast.LENGTH_SHORT).show();
            result.success("success");
          } else {
            result.error("-1", "toast fail", "content is null");
          }
        } else {
          result.notImplemented();
        }
      }
    });

    methodChannel = new MethodChannel(getFlutterView(),"samples.flutter.io/message");

    // Event
    new EventChannel(getFlutterView(),"samples.flutter.io/event").setStreamHandler(new EventChannel.StreamHandler() {
      @Override
      public void onListen(Object o, EventChannel.EventSink eventSink) {
        mEventSink = eventSink;
      }

      @Override
      public void onCancel(Object o) {
        mEventSink = null;
      }
    });
  }

  @Override
  protected void onResume() {
    super.onResume();
    Map map = new HashMap();
    map.put("content", "Android Message");
    methodChannel.invokeMethod("showText", map, new MethodChannel.Result() {
      @Override
      public void success(Object o) {
        Log.d("MainActivity", (String) o);
      }

      @Override
      public void error(String errorCode, String errorMsg, Object errorDetail) {
        Log.d("MainActivity",
            "errorCode:" + errorCode + " errorMsg:" + errorMsg + " errorDetail:" + (String) errorDetail);
      }

      @Override
      public void notImplemented() {
        Log.d("MainActivity", "notImplemented");
      }
    });

    if(mEventSink != null){
      mEventSink.success("Android Message");
    }
  }
}
