import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mataam_app/features/home/data/repos/home_repo_impl.dart';
import 'package:mataam_app/features/home/presentation/view_models/booking_restaurants_cubit/booking_restaurants_cubit.dart';

import 'booking_retaurant_list.dart';

class BookingRestaurantSection extends StatelessWidget {
  const BookingRestaurantSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16,left: 24,),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore Restaurant',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Check your city Near by Restaurant',
                    style: TextStyle(
                      color: Color(0xff89909E),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                'See All >',
                style: TextStyle(
                  color: Color(0xff6B7280),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: BlocProvider(
            create: (context) => BookingRestaurantsCubit(HomeRepoImpl()),
          child: BookingRestaurantList()),
        ),
      ],
    );
  }
}


