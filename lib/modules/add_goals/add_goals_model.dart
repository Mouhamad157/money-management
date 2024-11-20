class AddGoalModel {
  final String token ;

  AddGoalModel({required this.token});

  factory AddGoalModel.fromJson({required Map<String , dynamic> json}){
    return AddGoalModel(token: json['token']);
  }
}