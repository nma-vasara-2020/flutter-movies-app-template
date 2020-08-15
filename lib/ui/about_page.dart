import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About NMA"),
      ),
      body: Container(child: AboutPageBody()),
    );
  }
}

class AboutPageBody extends StatelessWidget {
  static const NMA_WEBSITE_URL = "https://www.nmakademija.lt/eng/";
  static const NMA_FACEBOOK_URL = "https://www.facebook.com/nmakademija/";

  @override
  Widget build(BuildContext context) {
    // TODO: Task 2
    return Center(
      child: Text("TODO: Task 2"),
    );
  }

  Future<bool> _launchWebsite() async {
    return await _launchURL(NMA_WEBSITE_URL);
  }

  Future<bool> _launchFacebook() async {
    return await _launchURL(NMA_FACEBOOK_URL);
  }

  // https://pub.dev/packages/url_launcher
  Future<bool> _launchURL(String url) async {
    if (await canLaunch(url)) {
      return await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
