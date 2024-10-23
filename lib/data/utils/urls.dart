class Urls{
  static const String _baseUrl='http://152.42.163.176:2006/api/v1';
  static const String registration='$_baseUrl/registration';
  static const String login='$_baseUrl/login';
  static const String addNewTask='$_baseUrl/createTask';
  // static const String emailVerify='$_baseUrl/RecoverVerifyEmail';
  static String emailVerification(String email) => "$_baseUrl/RecoverVerifyEmail/$email";
  static String otpVerification(String email,String otp)=>"$_baseUrl/RecoverVerifyOtp/$email/$otp";
static String resSetPassword = "$_baseUrl/RecoverResetPassword";

}
