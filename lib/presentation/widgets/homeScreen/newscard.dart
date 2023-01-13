import 'package:auto_size_text/auto_size_text.dart';
import 'package:maze/theme/coreimport.dart';



class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 13.h,
      margin: const EdgeInsets.symmetric(vertical: Dimens.margin10),
      padding: const EdgeInsets.symmetric(horizontal: Dimens.margin15, vertical: Dimens.margin12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.margin10),
        color: AppColors.colorGrey2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 10.h,
            height: 10.h,
            decoration: BoxDecoration(
              color: AppColors.colorWhite,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: AppColors.colorWhite)
            ),
          ),
          SizedBox(width: Dimens.margin15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AutoSizeText(
                  "Top Level Exit: Zomato Co-founder"
                      " CTO Gunjan Patidar resign",
                  style: AppFont.regularColorWhite_13,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 20.w,
                        child: Row(
                          children: [
                            Icon(Icons.history, color: AppColors.colorGrey6,size: Dimens.textSize15,),
                            SizedBox(width: Dimens.margin5),
                            Text("4 hours ago",style: AppFont.regularColorGrey6_10,),
                          ],
                        )
                    ),
                    Container(
                        width: 20.w,
                        child: Row(
                          children: [
                            Icon(Icons.visibility, color: AppColors.colorGrey6,size: Dimens.textSize15,),
                            SizedBox(width: Dimens.margin5),
                            Text("500",style: AppFont.regularColorGrey6_10,),
                          ],
                        )
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
