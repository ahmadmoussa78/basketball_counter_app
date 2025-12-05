import 'package:basketball_points_counter/cubit/counter_cubit.dart';
import 'package:basketball_points_counter/cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text(
              "Points Counter",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Team A", style: TextStyle(fontSize: 32)),

                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style: TextStyle(fontSize: 150),
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamIncrement(team: 'A', buttonNumber: 1);
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamIncrement(team: 'A', buttonNumber: 2);
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamIncrement(team: 'A', buttonNumber: 3);
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 450,
                    child: VerticalDivider(color: Colors.grey, thickness: 1),
                  ),

                  Column(
                    children: [
                      Text("Team B", style: TextStyle(fontSize: 32)),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamIncrement(team: 'B', buttonNumber: 1);
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamIncrement(team: 'B', buttonNumber: 2);
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 60),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(
                            context,
                          ).teamIncrement(team: 'B', buttonNumber: 3);
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 35),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 60),
                ),
                onPressed: () {},
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
