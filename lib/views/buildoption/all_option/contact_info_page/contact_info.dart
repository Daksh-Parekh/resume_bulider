import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_bulider/utils/extension.dart';
import 'package:resume_bulider/utils/globals.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  int index = 0;
  bool hide = true;
  String? name, email, password, contact, address;

  // TextEditingController nameController =
  //     TextEditingController(text: Globals.name);
  // TextEditingController emailContrller =
  //     TextEditingController(text: Globals.email);
  // TextEditingController contactContrller =
  //     TextEditingController(text: Globals.contact);
  // TextEditingController addressContrller =
  //     TextEditingController(text: Globals.address);
  // TextEditingController passwordController =
  //     TextEditingController(text: Globals.password);

  //FormKey
  GlobalKey<FormState> FormKey = GlobalKey<FormState>();

  void setIndex(int i) {
    index = i;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Conatct Information"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
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
                        child: const Text(
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
                        child: const Text(
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
                            offset: const Offset(3, 3),
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        child: Form(
                          key: FormKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                initialValue: Globals.name,
                                // controller: nameController,
                                textInputAction: TextInputAction.next,
                                onSaved: (val) {
                                  Globals.name = val;
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Name";
                                  } else {
                                    return null;
                                  }
                                },
                                // onChanged: (value) {
                                //   name = value;
                                //   setState(() {});
                                // },
                                decoration: InputDecoration(
                                  labelText: "Name",
                                  labelStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  hintText: "Enter Name",
                                  hintStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w200,
                                  ),
                                  prefixIcon: const Icon(Icons.person),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ),
                              10.h,
                              TextFormField(
                                initialValue: Globals.email,
                                // controller: emailContrller,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (val) {
                                  Globals.email = val;
                                },
                                // onChanged: (value) {
                                //   email = value;
                                //   setState(() {});
                                // },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter E-mail";
                                  } else if (RegExp(
                                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                      .hasMatch(value)) {
                                    return null;
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "E-mail",
                                  labelStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  hintText: "Enter E-mail",
                                  hintStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  prefixIcon: const Icon(Icons.email_rounded),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ),
                              10.h,
                              TextFormField(
                                initialValue: Globals.contact,
                                // controller: contactContrller,
                                maxLength: 10,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.number,
                                onSaved: (val) {
                                  Globals.contact = val;
                                },
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                // onChanged: (value) {
                                //   contact = value;
                                //   setState(() {});
                                // },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Contact";
                                  } else if (value.length < 10) {
                                    return "Contact Number must be of 10 digits";
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "Contact",
                                  labelStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  hintText: "Enter Contact Number",
                                  hintStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  prefixIcon: const Icon(Icons.phone),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ),
                              10.h,
                              TextFormField(
                                initialValue: Globals.address,
                                // controller: addressContrller,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                onSaved: (val) {
                                  Globals.address = val;
                                },
                                // onChanged: (value) {
                                //   address = value;
                                //   setState(() {});
                                // },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Address";
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "Address",
                                  labelStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  hintText: "Enter Address",
                                  hintStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  prefixIcon: const Icon(
                                      Icons.add_location_alt_rounded),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ),
                              10.h,
                              TextFormField(
                                // controller: passwordController,
                                textInputAction: TextInputAction.done,
                                obscureText: hide,
                                initialValue: Globals.password,
                                onSaved: (val) {
                                  Globals.password = val;
                                },
                                // onChanged: (value) {
                                //   password = value;
                                //   setState(() {});
                                // },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter Password";
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  hintText: "Enter Password",
                                  hintStyle: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  prefixIcon: const Icon(Icons.password),
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
                              // Text("Name: ${nameController.text}"),
                              // Text("Email: ${emailContrller.text}"),
                              // Text("Contact: ${contactContrller.text}"),
                              // Text("Address: ${addressContrller.text}"),
                              // Text(
                              //     "Password: ${hide ? '****' : passwordController.text}"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      // nameController.clear();
                                      // emailContrller.clear();
                                      // contactContrller.clear();
                                      // addressContrller.clear();
                                      // passwordController.clear();
                                      FormKey.currentState!.reset();
                                      //Chained Assign Expression
                                      Globals.name = Globals.email =
                                          Globals.contact = Globals.address =
                                              Globals.password = null;

                                      setState(() {
                                        // log("RESET");
                                      });
                                    },
                                    child: Text("Reset"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      bool validated =
                                          FormKey.currentState!.validate();
                                      if (validated) {
                                        FormKey.currentState!.save();
                                        SnackBar mySnakeBar = SnackBar(
                                          content:
                                              Text("Form Saved Susscessfully"),
                                          backgroundColor: Colors.green,
                                          behavior: SnackBarBehavior.floating,
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(mySnakeBar);
                                      } else {
                                        SnackBar mySnakeBar = SnackBar(
                                          content: Text("Form Not Submited"),
                                          backgroundColor: Colors.red,
                                          behavior: SnackBarBehavior.floating,
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(mySnakeBar);
                                      }
                                    },
                                    child: Text("Save"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Photo
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(3, 3),
                          ),
                        ],
                      ),
                      height: size.height * 0.3,
                      // width: double.infinity,
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 80,
                            foregroundImage: Globals.image != null
                                ? FileImage(Globals.image!)
                                : null,
                          ),
                          FloatingActionButton.small(
                            onPressed: () {
                              ImagePicker picker = ImagePicker();

                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Select Options"),
                                          IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: Icon(Icons.close_rounded),
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            MaterialButton(
                                              onPressed: () async {
                                                XFile? gallerys =
                                                    await picker.pickImage(
                                                        source: ImageSource
                                                            .gallery);
                                                if (gallerys != null) {
                                                  log("Image Received");
                                                  Globals.image =
                                                      File(gallerys.path);
                                                  setState(() {});
                                                } else {
                                                  log("Image Not Found");
                                                }
                                                Navigator.pop(context);
                                              },
                                              child: Row(
                                                children: [
                                                  Icon(Icons.photo),
                                                  Text("Gallery"),
                                                ],
                                              ),
                                            ),
                                            MaterialButton(
                                              onPressed: () async {
                                                XFile? file =
                                                    await picker.pickImage(
                                                        source:
                                                            ImageSource.camera);
                                                if (file != null) {
                                                  log("Image Received");
                                                  Globals.image =
                                                      File(file.path);
                                                  setState(() {});
                                                } else {
                                                  log("Image Not Found");
                                                }
                                                Navigator.pop(context);
                                              },
                                              child: Row(
                                                children: [
                                                  Icon(
                                                      Icons.camera_alt_rounded),
                                                  Text("Camera"),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    );
                                  });
                            },
                            backgroundColor: Colors.blue.shade200,
                            focusColor: Colors.blue,
                            child: Icon(Icons.add_a_photo_rounded),
                          ),
                        ],
                      ),
                    ),
                    // Column(
                    //   children: [
                    // Text("Name : ${Globals.name}"),
                    // Text("Email : ${Globals.email}"),
                    // Text("Contact : ${Globals.contact}"),
                    // Text("Address : ${Globals.address}"),
                    // Text("Password : ${Globals.password}"),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
