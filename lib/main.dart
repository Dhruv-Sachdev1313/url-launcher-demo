import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'https://www.google.co.in';

void main() => runApp(
      const MaterialApp(
        home: Material(
          child: Center(
            child: ElevatedButton(
              onPressed: _launchURL,
              child: Text('Launch URL'),
            ),
          ),
        ),
      ),
    );

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}