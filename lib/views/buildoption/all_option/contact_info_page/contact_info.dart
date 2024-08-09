import 'package:flutter/material.dart';
import 'package:resume_bulider/utils/extension.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  int index = 0;
  bool hide = true;
  String? name, email, password, contact, address;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailContrller = TextEditingController();
  TextEditingController contactContrller = TextEditingController();
  TextEditingController addressContrller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //FormKey
  GlobalKey<FormState> FormKey = GlobalKey<FormState>();

  void setIndex(int i) {
    index = i;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              controller: nameController,
                              textInputAction: TextInputAction.next,
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
                              controller: emailContrller,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              // onChanged: (value) {
                              //   email = value;
                              //   setState(() {});
                              // },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter E-mail";
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
                              controller: contactContrller,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.number,
                              // onChanged: (value) {
                              //   contact = value;
                              //   setState(() {});
                              // },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please Enter Contact";
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
                              controller: addressContrller,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.text,
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
                                prefixIcon:
                                    const Icon(Icons.add_location_alt_rounded),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            ),
                            10.h,
                            TextFormField(
                              controller: passwordController,
                              textInputAction: TextInputAction.done,
                              obscureText: hide,
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
                            Text("Name: ${nameController.text}"),
                            Text("Email: ${emailContrller.text}"),
                            Text("Contact: ${contactContrller.text}"),
                            Text("Address: ${addressContrller.text}"),
                            Text(
                                "Password: ${hide ? '****' : passwordController.text}"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    nameController.clear();
                                    emailContrller.clear();
                                    contactContrller.clear();
                                    addressContrller.clear();
                                    passwordController.clear();
                                    setState(() {});
                                  },
                                  child: Text("Reset"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    bool validated =
                                        FormKey.currentState!.validate();
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
                    child: const Text("Photo"),
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
