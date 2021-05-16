class Home {
  String address = "";
  String owner = "";
  String phoneNumber = "";
  String photoPath = "";
  double monthly = 0;

  Home(
      this.address, this.owner, this.phoneNumber, this.photoPath, this.monthly);

  Home.fromMap(Map<String, dynamic> json) {
    this.address = json['address'];
    this.owner = json['owner'];
    this.phoneNumber = json['phoneNumber'];
    this.photoPath = json['photoPath'];
    this.monthly = json['monthly'];
  }
}
