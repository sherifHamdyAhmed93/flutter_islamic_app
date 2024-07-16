import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_islamic_app/app_colors.dart';
import 'package:flutter_islamic_app/quarn/sura_name_item.dart';

class QuranScreen extends StatelessWidget {
  QuranScreen({super.key});

  final List<String> suras =["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1,child: Image.asset('assets/images/quran_icon.png')),
        Divider(color: AppColors.primaryColor,thickness: 3,),
        Text(
          '${AppLocalizations.of(context)!.surah_name}',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Divider(color: AppColors.primaryColor,thickness: 3,),
        Expanded(
          flex: 3,
          child: ListView.separated(
            itemBuilder: (context,index){
              return SuraNameWidget(
                title: suras[index],
                index: index,
              );
            },
            separatorBuilder: (context,_){
              return  Divider(color: AppColors.primaryColor,thickness: 2,);
            },
            itemCount: suras.length,),
        )
      ],
    );
  }
}

/*
* Expanded(
          child: ListView.builder(
            itemBuilder: (context,index){
              return Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Text('البقرة',textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodySmall,)),
                        Container(color: AppColors.primaryColor,width: 3,height: 50,),
                        Expanded(child: Text('286',textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodySmall,)),
                      ],
                    ),
                  )
                ],
              );
            },
            itemCount: 10,),
        )
* */

/*
*  // Row(
        //   children: [
        //     Expanded(
        //       child: Row(
        //         children: [
        //           Expanded(child: Text('اسم السورة',textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,)),
        //           Container(color: AppColors.primaryColor,width: 3,height: 50,),
        //           Expanded(child: Text('عدد الآيات',textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,)),
        //         ],
        //       ),
        //     )
        //   ],
        // ),
* */