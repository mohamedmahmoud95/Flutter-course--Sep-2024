bool validateEmail(String email) {
  if (email.isEmpty) {
    return false;
  }
  if (!email.contains('@')) {
    return false;
  }
  if (!email.contains('.')) {
    return false;
  }
  if (email.length < 6) {
    return false;
  }


  //or:
  //use a regular expression to validate it all at once
 // return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
 //     .hasMatch(email);
  return true;
}

bool validatePassword(String password){
  
  if(password.isEmpty){
    return false;
  }
  if(password.length < 6){
    return false;
  }
  if(password.length > 20){
    return false;
  }
  
  //contains a numeric digit
  if(!password.contains(RegExp(r'[0-9]'))){
    return false;
  }
  
  //contains a lowercase letter
  if(!password.contains(RegExp(r'[a-z]'))) {
    return false;
  }
  
  //contains an upper letter
  if(!password.contains(RegExp(r'[A-Z]'))){
    return false;
  }
  
  return true;
  
}


bool validateEmailAndPassword(String email, String password){
  return validateEmail(email) && validatePassword(password);
}