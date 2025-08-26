import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/asset_image.dart';
import 'package:omar_bloc/core/utils/colors.dart';
import 'package:omar_bloc/widget/custom_active_container.dart';
import 'package:omar_bloc/widget/custom_schulde_container.dart';

class DoctorSchulde extends StatelessWidget {
  const DoctorSchulde({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Doctor',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Card(
            elevation: 8,
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Dr:DoctorName',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Therapths',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            DoctorImage.doctor2,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    endIndent: 15.5,
                    indent: 15.5,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.table_chart_sharp,
                        ),
                        Text(
                          '1/8/2004',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.schedule,
                        ),
                        Text(
                          '1/8/2004',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomActiveContainer(),
                        Text(
                          '1/8/2004',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomSchuldeContainer(
                        colorContainer: Color(0xffF4F6FA),
                        colorText: ColorsAseets.primaryColor,
                        text: 'Cancel',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomSchuldeContainer(
                        colorContainer: ColorsAseets.primaryColor,
                        colorText: Colors.white,
                        text: 'Schulde',
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
