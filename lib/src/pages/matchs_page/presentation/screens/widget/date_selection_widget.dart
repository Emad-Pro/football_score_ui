import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_score_clean_architecture/core/app_styles.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/controllers/cubit/matchs_cubit.dart';

class DateSelectionWidget extends StatelessWidget {
  const DateSelectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: BlocBuilder<MatchsCubit, MatchsState>(
      builder: (context, state) => Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: IconButton(
                onPressed: () {
                  BlocProvider.of<MatchsCubit>(context).subtractDay();
                },
                icon: const Icon(Icons.arrow_back_ios)),
          ),
          Expanded(
            child: EasyInfiniteDateTimeLine(
              headerBuilder: (context, date) {
                return const SizedBox();
              },
              dayProps: const EasyDayProps(
                height: 50.0,
              ),
              controller:
                  BlocProvider.of<MatchsCubit>(context).dateTimelineController,
              focusDate: BlocProvider.of<MatchsCubit>(context).focusDate,
              firstDate: DateTime(2022),
              lastDate: DateTime(2029),
              onDateChange: (selectedDate) {
                BlocProvider.of<MatchsCubit>(context)
                    .changeFocusDateTime(selectedDate);
              },
              itemBuilder: (BuildContext context, String dayNumber, dayName,
                  monthName, fullDate, isSelected) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: isSelected
                              ? const BorderSide(color: Color(0xffF63D68))
                              : BorderSide.none)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        DateTime.now().day == int.parse(dayNumber)
                            ? "Today"
                            : dayName,
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 15),
                          color: isSelected
                              ? Colors.white
                              : const Color(0xff6D5D6E),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "$dayNumber $monthName",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xff393646),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            child: IconButton(
                onPressed: () {
                  BlocProvider.of<MatchsCubit>(context).addDay();
                },
                icon: const Icon(Icons.arrow_forward_ios)),
          ),
        ],
      ),
    ));
  }
}
