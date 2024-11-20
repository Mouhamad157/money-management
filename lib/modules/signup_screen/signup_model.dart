class SignupModel {
 final String token ;

 SignupModel({required this.token});
 factory SignupModel.fromJson({required Map<String ,dynamic> json}){
  return SignupModel(token: json['token']);
 }
}