class Member {
  String memName = '';
  String memEmail = '';
  String memPhone = '';

  String get mName {
    return memName;
  }

  set mName(String newName) {
    memName = newName;
  }

  String get mEmail {
    return memEmail;
  }

  set mEmail(String newEmail) {
    memEmail = newEmail;
  }

  String get mPhone {
    return memPhone;
  }

  set mPhone(String newPhone) {
    memPhone = newPhone;
  }
}
