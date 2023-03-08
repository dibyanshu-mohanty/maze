import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/controller/providers/virtualSimulator/portfoliodataprovider.dart';
import 'package:maze/controller/providers/virtualSimulator/userAllTournmentsProvider.dart';
import 'package:maze/model/virtualSimulatorModels/service/tournaments.dart';
import 'package:maze/view/screens/virtualSimulator/vsAppScreenBackground.dart';
import 'package:maze/view/utils/baseappbar.dart';
import 'package:maze/view/utils/uithemes/snackbarmessages.dart';
import 'package:maze/view/widgets/virtualSimulator/prizedistributionlist.dart';
import 'package:provider/provider.dart';

import '../../../theme/coreimport.dart';
import '../../utils/uithemes/gradientdivider.dart';
import '../../widgets/virtualSimulator/prizepoolholder.dart';

class TournamentDetailScreen extends StatelessWidget {
  TournamentDetailScreen({Key? key}) : super(key: key);

  ValueNotifier<bool> isLoading = ValueNotifier(false);


  @override
  Widget build(BuildContext context) {
    final tournamentId = ModalRoute.of(context)!.settings.arguments as String ?? "";
    return Scaffold(
          body: Stack(
            children: [
              const VsAppScreenBackground(),
              FutureBuilder(
                future: Provider.of<TournamentProvider>(context,listen:false).getTournamentDetails(context, tournamentId),
                builder: (context,snapshot) {
                  return snapshot.connectionState == ConnectionState.waiting
                      ? const Center(child: SpinKitFadingCircle(color: AppColors.colorWhite,),)
                      : Consumer<TournamentProvider>(
                    builder: (context,tourneyData,child) => Column(
                      children: [
                        BaseAppBar(title: tourneyData.tournamentData.name, appBar: AppBar(), mLeftAction: (){Navigator.pop(context);}),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: Dimens.margin10),
                          child: ListTile(
                            leading: Text(tourneyData.tournamentData.status == "RUNNING" ? "Tournament end on: " : "Tournament starts on: ",style: AppFont.mediumBoldColorWhite_15,),
                            trailing: Text(tourneyData.tournamentData.status == "RUNNING" ? tourneyData.tournamentData.end_date : tourneyData.tournamentData.start_date,style: AppFont.mediumBoldColorWhite_15,),
                          ),
                        ),
                        PrizePoolHolder(
                          totalPrizePool: tourneyData.tournamentData.first_prize + tourneyData.tournamentData.second_prize + tourneyData.tournamentData.third_prize,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: Dimens.margin20,vertical: Dimens.margin25),
                          alignment: Alignment.centerLeft,
                          child: Text("Prize Distribution",style: AppFont.mediumBoldColorWhite_15,),
                        ),
                        PrizeDistributionList(
                          firstPrize: tourneyData.tournamentData.first_prize,
                          secondPrize: tourneyData.tournamentData.second_prize,
                          thirdPrize: tourneyData.tournamentData.third_prize,
                        ),
                        const Expanded(child: SizedBox()),
                        GestureDetector(
                          onTap: () async{
                            final response = await Tournament().enrollUser(context, tournamentId);
                            if (response != null) {
                              if(response["message"] == "User enrolled successfully."){
                                Navigator.pushReplacementNamed(context, virtualSimulatorScreen,arguments: tourneyData.tournamentData.id);
                              } else {
                                messageSnackBar(context, "Something went Wrong");
                              }
                            } else {
                              messageSnackBar(context, "Please try again.");
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: Dimens.margin20),
                            margin: const EdgeInsets.symmetric(horizontal:Dimens.margin20,vertical: Dimens.margin25),
                            decoration: BoxDecoration(
                              color: AppColors.colorDarkGreen,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: isLoading.value
                                ? SpinKitThreeBounce(color: AppColors.colorBlack,size: 2.w,)
                                : Text("Register Now",style: AppFont.semiBoldColorBlack_15,),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              )
            ],
          )
        );
  }
}
