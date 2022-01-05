import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLaunch extends StatefulWidget {
  const UrlLaunch({Key? key}) : super(key: key);

  @override
  _UrlLaunchState createState() => _UrlLaunchState();
}

class _UrlLaunchState extends State<UrlLaunch> {
  bool _hasCallSupport = false;
  Future? _launched;
  String _phone = '';

  @override
  void initState() {
    super.initState();
    // Check for phone call support.
    canLaunch('tel:123').then((result) {
      setState(() {
        _hasCallSupport = result;
      });
    });
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewOrVC(String url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return Text('');
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    // Use `Uri` to ensure that `phoneNumber` is properly URL-encoded.
    // Just using 'tel:$phoneNumber' would create invalid URLs in some cases,
    // such as spaces in the input, which would cause `launch` to fail on some
    // platforms.
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
  }

  String toLaunch = 'https://www.cylog.org/headers/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Launcher"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Link")),
            ElevatedButton(onPressed: () {}, child: Text("Phone")),
            ElevatedButton(onPressed: () {}, child: Text("SMS")),
            ElevatedButton(
              onPressed: _hasCallSupport
                  ? () {
                      setState(() {
                        _launched = _makePhoneCall(_phone);
                      });
                    }
                  : null,
              child: _hasCallSupport
                  ? Text('Make phone call')
                  : Text('Calling not supported'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _launched = _launchInBrowser(toLaunch);
                });
              },
              child: Text('Launch in browser'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _launched = _launchInWebViewOrVC(toLaunch);
                });
              },
              child: Text('Launch in app'),
            ),
            Link(
              uri: Uri.parse(
                  'https://pub.dev/documentation/url_launcher/latest/link/link-library.html'),
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return TextButton.icon(
                  onPressed: openLink,
                  label: Text('Link Widget documentation'),
                  icon: Icon(Icons.read_more),
                );
              },
            ),
            FutureBuilder<void>(future: _launched, builder: _launchStatus),
          ],
        ),
      ),
    );
  }
}
