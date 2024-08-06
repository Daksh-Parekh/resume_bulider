import 'package:flutter/material.dart';
import 'package:resume_bulider/utils/extension.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  int index = 0;

  void setIndex(int i) {
    index = i;
    setState(() {});
  }

  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conatct Information"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setIndex(0);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: index == 0 ? 5 : 0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Text(
                        "Contact",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // color: Colors.grey.shade200,
                    ),
                  ),
                ),
                4.w,
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setIndex(1);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: index == 1 ? 5 : 0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Text(
                        "Photo",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //TextField
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: IndexedStack(
                index: index,
                children: [
                  //Contact
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.shade200,
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 5,
                          offset: Offset(3, 3),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                            ),
                            hintText: "Enter Name",
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                            ),
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        10.h,
                        TextField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "E-mail",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                            ),
                            hintText: "Enter E-mail",
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                            ),
                            prefixIcon: Icon(Icons.email_rounded),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        10.h,
                        TextField(
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Contact",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                            ),
                            hintText: "Enter Contact Number",
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                            ),
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        10.h,
                        TextField(
                          textInputAction: TextInputAction.done,
                          obscureText: hide,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                            ),
                            hintText: "Enter Password",
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                            ),
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: IconButton(
                              onPressed: () {
                                hide = !hide;
                                setState(() {});
                              },
                              icon: Icon(hide
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Photo
                  Container(
                    child: Text("Photo"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
