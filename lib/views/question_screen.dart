import 'package:flutter/material.dart';
import 'package:kkls_assessment/configs/screen_config.dart';
import 'package:kkls_assessment/utils/colors.dart';
import 'package:kkls_assessment/widgets/home_widgets.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int selectedIndex = -1;

  final question = "Which of the following is a renewable source of energy?";
  final answers = ["Coal", "Natural Gas", "Solar Power", "Petroleum"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screen2BgColor,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Practice",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: (24.sp),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Stack(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(
                              "https://i.pravatar.cc/150",
                            ),
                          ),
                          SizedBox(width: (30.w)),
                        ],
                      ),
                      Positioned(right: 0, child: AppDrawerIconWidget()),
                    ],
                  ),
                ],
              ),
              SizedBox(height: (18.h)),
              Text(
                "Challenge your \nKnowledge",
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1.1,
                ),
              ),
              SizedBox(height: (14.h)),

              Row(
                children: [
                  Text(
                    "type of question",
                    style: TextStyle(
                      fontSize: 38.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade600,
                      height: .7,
                    ),
                  ),
                  Icon(Icons.arrow_downward, color: Colors.grey.shade600),
                ],
              ),
              SizedBox(height: (28.h)),

              Column(
                spacing: 5,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Expanded(
                        child: Container(
                          height: 150.h,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.homeBgColor,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 20.h,
                              children: [
                                Icon(Icons.school),
                                Text(
                                  "Random",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 150.h,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF242424),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 20.h,
                              children: [
                                Icon(
                                  Icons.school,
                                  color: AppColors.homeBgColor,
                                ),
                                Text(
                                  "Exam Number",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Expanded(
                        child: Container(
                          height: 150.h,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF242424),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 20.h,
                              children: [
                                Icon(
                                  Icons.school,
                                  color: AppColors.homeBgColor,
                                ),
                                Text(
                                  "Topic",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 150.h,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF242424),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 20.h,
                              children: [
                                Icon(
                                  Icons.school,
                                  color: AppColors.homeBgColor,
                                ),
                                Text(
                                  "In a row",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),

              Container(
                height: 100.h,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF54EBFF),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text(
                      "Mistakes practice",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Practice more the very exam exercises which you're doing worse. You're gonna deal with it!",
                      style: TextStyle(
                        color: Colors.black.withValues(alpha: .7),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
