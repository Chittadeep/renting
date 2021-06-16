class Home {
  String address = "";
  String owner = "";
  String phoneNumber = "";
  String photoPath = "";
  double monthly = 0;

  Home(
      this.address, this.owner, this.phoneNumber, this.photoPath, this.monthly);

  factory Home.fromMap(dynamic json) {
    return Home(
        json['address'] as String,
        json['owner'] as String,
        json['phoneNumber'] as String,
        json['photoPath'] as String,
        json['monthly'] as double);
        }

    Map<String, dynamic> toJson() => {
          'address': this.address,
          'owner': this.owner,
          'phoneNumber': this.phoneNumber,
          'photoPath': this.photoPath,
          'monthly': this.monthly
        };
  }
