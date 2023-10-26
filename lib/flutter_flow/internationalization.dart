import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ko', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? koText = '',
    String? enText = '',
  }) =>
      [koText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Entry
  {
    'dyw4ji15': {
      'ko': '케이홈즈',
      'en': 'K Homes',
    },
    'x6yy66dd': {
      'ko': '이메일과 비밀번호로 로그인을 해 주세요.',
      'en': 'Please log in with your email and password.',
    },
    '10cw80bs': {
      'ko': '이메일',
      'en': 'email',
    },
    's2smxcc3': {
      'ko': '비밀번호',
      'en': 'password',
    },
    '2gvwk9n7': {
      'ko': '회원 가입',
      'en': 'Register',
    },
    'ejjhccnr': {
      'ko': '로그인',
      'en': 'log in',
    },
    'cs1j6n0l': {
      'ko': '구글 로그인',
      'en': 'google login',
    },
    'tmg0jdgw': {
      'ko': 'Sign in with Google',
      'en': 'Sign in with Google',
    },
    '1xm5lfjc': {
      'ko': '게스트 로그인',
      'en': 'Guest login',
    },
    'kuwbgc16': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // Home
  {
    'edgqryxv': {
      'ko': '여행지 검색',
      'en': 'Travel destination search',
    },
    'p6node6i': {
      'ko': '가시고 싶은 곳을 검색해 보세요.',
      'en': 'Search for the place you want to go.',
    },
    'qv2s57g2': {
      'ko': '홈즈',
      'en': 'Homes',
    },
  },
  // Profile
  {
    'wsqmdb9t': {
      'ko': '이름',
      'en': '',
    },
    'ijmhu89s': {
      'ko': '',
      'en': '',
    },
    'ye1p2xec': {
      'ko': '이름 입력하세요.',
      'en': '',
    },
    '96ro2f88': {
      'ko': '저장',
      'en': '',
    },
    'mrlmfwk7': {
      'ko': '회원 정보',
      'en': 'Profile',
    },
    '3t2535tq': {
      'ko': '프로필',
      'en': 'profile',
    },
  },
  // Wishlist
  {
    'ggc6mssx': {
      'ko': '위시리스트',
      'en': 'wishlist',
    },
    'eqlev1jh': {
      'ko': '위시리스트',
      'en': 'wishlist',
    },
  },
  // Miscellaneous
  {
    'lyc4jh7h': {
      'ko': 'Label here...',
      'en': '',
    },
    'unyiz9nr': {
      'ko': '',
      'en': '',
    },
    'z2ciqegr': {
      'ko': '',
      'en': '',
    },
    'tibcsloc': {
      'ko': '',
      'en': '',
    },
    'e4jmviyv': {
      'ko': '',
      'en': '',
    },
    '188mvg2x': {
      'ko': '',
      'en': '',
    },
    'zp0ubk93': {
      'ko': '',
      'en': '',
    },
    'c9oqwk2s': {
      'ko': '',
      'en': '',
    },
    'h5wleio4': {
      'ko': '',
      'en': '',
    },
    'tes4828v': {
      'ko': '',
      'en': '',
    },
    'amoig9ag': {
      'ko': '',
      'en': '',
    },
    'bciegk3t': {
      'ko': '',
      'en': '',
    },
    'x5euqa5b': {
      'ko': '',
      'en': '',
    },
    '0hdloqnz': {
      'ko': '',
      'en': '',
    },
    'u59ythvq': {
      'ko': '',
      'en': '',
    },
    '6ztxigj1': {
      'ko': '',
      'en': '',
    },
    'reevg3ac': {
      'ko': '',
      'en': '',
    },
    'a2jz9m36': {
      'ko': '',
      'en': '',
    },
    '27gpfmy2': {
      'ko': '',
      'en': '',
    },
    '8qbuiwd1': {
      'ko': '',
      'en': '',
    },
    'lp9yrms9': {
      'ko': '',
      'en': '',
    },
    '1s2p03qj': {
      'ko': '',
      'en': '',
    },
    'n98h2bsl': {
      'ko': '',
      'en': '',
    },
    '1c0rpbi8': {
      'ko': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
