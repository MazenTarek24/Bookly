
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> getUrlLauncher( String url) async{
  Uri uri = Uri.parse(url);
  if(await canLaunchUrl(uri)){
    launchUrl(uri);
  }else {
    const ScaffoldMessenger(
        child: Text("link is not available")
    );
  }
}