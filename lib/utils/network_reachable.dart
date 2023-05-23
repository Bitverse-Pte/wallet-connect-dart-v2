import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;

const _reachabilityHosts = [
  'google.com'];



class Reachability {
  factory Reachability() => _singleton ??= Reachability._();

  Reachability._();

  static Reachability? _singleton;

  int _hostIndex = 0;

  Future<bool> startPing() async {
    _hostIndex = _hostIndex % _reachabilityHosts.length;
    final host = _reachabilityHosts[_hostIndex];
    _hostIndex++;
    final success = await _checkInternetConnection(host);
    if (success) {
    return true;
    }
    return false;
  }

  Future<bool> _checkInternetConnection(String host) async {
    try {
      final response = await http.head(Uri.https(host)).timeout(
            Duration(milliseconds: 3000),
            onTimeout: () =>
                throw TimeoutException('Can\'t connect in 10 seconds.'),
          );
      return response.statusCode == HttpStatus.ok;
    } catch (e) {
      return false;
    }
  }

}
