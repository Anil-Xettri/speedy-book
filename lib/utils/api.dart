class Api{

  static const baseUrl = "http://192.168.1.71:8000/api";

  static const loginUrl = "$baseUrl/auth/customer-login";
  static const signupUrl = "$baseUrl/auth/customer-signUp";
  static const forgotPasswordUrl = "$baseUrl/auth/forget-password";
  static const resetPasswordUrl = "$baseUrl/auth/reset-password";
  
  
  static const updateProfileUrl = "$baseUrl/auth/customer/update-profile";
  static const changePasswordUrl = "$baseUrl/auth/customer/change-password";

  static const cinemaHallUrl = "$baseUrl/cinema-halls";

}