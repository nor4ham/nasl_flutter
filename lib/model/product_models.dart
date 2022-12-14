
import 'package:flutter/material.dart';

class Camel {

  String name;
  String description;
  Owner owner;
  String score;
  ImageProvider image;

  Camel(this.name, this.description, this.owner, this.score, this.image);

}

List<Camel> getCamelList(){
  return <Camel>[
    Camel(
      "An Anonymous Girl",
      "The newest suspense novel from the authors behind The Wife Between Us introduces us to Jessica Ferris. Jess just wants to make a little extra cash when she decides to participate in a study on ethics with the mysterious Dr. Lydia Shields. The premise seems simple: Answer a few questions, then collect. But soon the doctor’s questions turn from simple survey queries to something much more sinister—leaving Jess unsure of whom she can trust. An early contender for thriller of the year.",
      Owner(
        "Greer Hendricks",
        90,
        AssetImage("assets/logo.png"),
      ),
      "4.14",
     AssetImage("assets/logo.png"),
    ),
    Camel(
      "An Anonymous Girl",
      "The newest suspense novel from the authors behind The Wife Between Us introduces us to Jessica Ferris. Jess just wants to make a little extra cash when she decides to participate in a study on ethics with the mysterious Dr. Lydia Shields. The premise seems simple: Answer a few questions, then collect. But soon the doctor’s questions turn from simple survey queries to something much more sinister—leaving Jess unsure of whom she can trust. An early contender for thriller of the year.",
      Owner(
        "Greer Hendricks",
        90,
        AssetImage("assets/logo.png"),
      ),
      "4.14",
     AssetImage("assets/logo.png"),
    ),
    Camel(
      "An Anonymous Girl",
      "The newest suspense novel from the authors behind The Wife Between Us introduces us to Jessica Ferris. Jess just wants to make a little extra cash when she decides to participate in a study on ethics with the mysterious Dr. Lydia Shields. The premise seems simple: Answer a few questions, then collect. But soon the doctor’s questions turn from simple survey queries to something much more sinister—leaving Jess unsure of whom she can trust. An early contender for thriller of the year.",
      Owner(
        "Greer Hendricks",
        90,
        AssetImage("assets/logo.png"),
      ),
      "4.14",
     AssetImage("assets/logo.png"),
    ),
  ];
}

class Owner {

  String fullname;
  int camels;
  ImageProvider image;


  Owner(this.fullname, this.camels, this.image);

}


List<Owner> getOwnerList(){
  return <Owner>[
    Owner(
      "Stepanie Land",
      134,
      AssetImage("assets/logo.png"),
    ),
   Owner(
      "Stepanie Land",
      134,
      AssetImage("assets/logo.png"),
    ),
  ];
}
