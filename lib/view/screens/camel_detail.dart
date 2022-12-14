import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasl/model/product_models.dart';

import '../../utils/theme.dart';

class CamelDetail extends StatelessWidget {

  final Camel camel;

  CamelDetail({required this.camel});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Hero(
              tag: "tagImage",
              child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.fitWidth
            ),
              
            ),
    
            Padding(
              padding: const EdgeInsets.only(top: 48, left: 32,),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
    
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * 0.5,
                padding: EdgeInsets.only(top: 64),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
    
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 32, left: 32, bottom: 16,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
    
                            Text(
                              camel.name,
                              style: GoogleFonts.catamaran(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                height: 1,
                              ),
                            ),
    
                            Text(
                              camel.owner.fullname,
                              style: GoogleFonts.catamaran(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
    
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
    
                                  Row(
                                    children: const <Widget>[
    
                                      Icon(Icons.star, size: 20, color: kStarsColor,),
                                      Icon(Icons.star, size: 20, color: kStarsColor,),
                                      Icon(Icons.star, size: 20, color: kStarsColor,),
                                      Icon(Icons.star, size: 20, color: kStarsColor,),
                                      Icon(Icons.star_half, size: 20, color: kStarsColor,),
    
                                    ],
                                  ),
    
                                  const SizedBox(
                                    width: 12,
                                  ),
    
                                  Text(
                                    camel.score,
                                    style: GoogleFonts.catamaran(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
    
                                ],
                              ),
                            ),
    
                            Expanded(
                              child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Text(
                                  camel.description,
                                  style: GoogleFonts.catamaran(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
    
                          ],
                        ),
                      ),
                    ),
    
                    Container(
                      height: 100,
                      width: size.width,
                      padding: const EdgeInsets.only(top: 16, left: 32, right: 32, bottom: 32,),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
    
                          Container(
                            width: size.width / 2 - 44,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: kPrimaryColor.withOpacity(0.4),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Want to read",
                                    style: GoogleFonts.catamaran(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
    
                          Container(
                            width: size.width / 2 - 44,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 0),
                                ),
                              ],
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Get a copy",
                                    style: GoogleFonts.catamaran(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Icon(
                                    Icons.content_copy,
                                    color: kPrimaryColor,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
    
                        ],
                      ),
                    ),
    
                  ],
                ),
              ),
            ),
    
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 32, bottom: (size.height * 0.5) - (75 / 2)),
                child: Card(
                  elevation: 4,
                  margin: const EdgeInsets.all(0),
                  clipBehavior: Clip.antiAlias,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Container(
                    width: 75,
                    height: 75,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/logo.png"), 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
    
          ],
        ),
      ),
    );
  }
}