import 'package:basic_flutter/models/category.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 1.0),
                  blurRadius: 4,
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Try \"Lapaz\"",
                alignLabelWithHint: true,
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0,
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: ListView(
              children: <Widget>[
                BuildFilterWidget(),
                BuildCategoryWidget(),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Experiencia de los usuarios",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Aqui vas a leer todos los comentarios que han tenido nuestros huespedes",
                        style: TextStyle(fontSize: 16, letterSpacing: 1.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 16,
                    left: 20,
                    right: 16,
                    bottom: 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container BuildCategoryWidget() {
    return Container(
      height: 300,
      padding: EdgeInsets.only(top: 32, bottom: 32, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Bienvenido al Folladero",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              height: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  Category category = categories[index];
                  return Container(
                    width: 140,
                    margin: index == 0
                        ? EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 4,
                            bottom: 4,
                          )
                        : EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image(
                                image: NetworkImage(category.imgeUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          child: Text(
                            category.categoryName,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container BuildFilterWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
                style: BorderStyle.solid,
              ),
            ),
            child: Text("Cita", style: TextStyle(color: Colors.grey)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
                style: BorderStyle.solid,
              ),
            ),
            child: Text("Invitado", style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
