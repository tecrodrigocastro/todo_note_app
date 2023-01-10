class Constants {
  static String get baseApiUrl =>
      kReleaseMode ? kLiveBaseApiUrl : kTestBaseApiUrl;
}

const kReleaseMode = false;
const kLiveBaseApiUrl = "http://192.168.100.151:8000";
const kTestBaseApiUrl = "http://192.168.100.151:8000";

const kIconButtonSplashRadius = 25.0;
