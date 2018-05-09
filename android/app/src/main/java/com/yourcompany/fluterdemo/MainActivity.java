package com.yourcompany.fluterdemo;

import android.os.Bundle;

import android.widget.Toast;
import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
    new MethodChannel(getFlutterView(),ToastModule.channelName)
            .setMethodCallHandler(new MethodChannel.MethodCallHandler() {
              @Override
              public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if(methodCall.method.equals("showToast")) {
                  ToastModule.showToast(methodCall.argument("msg").toString(), Integer.parseInt(methodCall.argument("time").toString()), MainActivity.this);
                  result.success(null);
                }
              }
            });
  }


}
