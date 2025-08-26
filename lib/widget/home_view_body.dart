import 'package:flutter/material.dart';
import 'package:omar_bloc/core/utils/colors.dart';
import 'package:omar_bloc/widget/Doctor_kind_grid_view.dart';
import 'package:omar_bloc/widget/cusotm_item_visit.dart';
import 'package:omar_bloc/widget/custom_app_bar.dart';
import 'package:omar_bloc/widget/cutom_home_container.dart';
import 'package:omar_bloc/widget/doctor_kind_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 20,
                ),
                CutomHomeContainer(),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      'Whats Are you Symptoms?',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DoctorKindListView(),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Popular Doctor',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DoctorKindGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
