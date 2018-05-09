package com.yourcompany.fluterdemo;

import android.content.Context;
import android.widget.Toast;

public class ToastModule {

    /** Channel名称  **/
    public static final String channelName = "com.jpeng.demo/toast";



    public static void showToast(String msg,int howlong,Context context){
        Toast.makeText(context,msg,howlong).show();;
    }
}
