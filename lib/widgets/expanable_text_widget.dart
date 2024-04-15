import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_2024/utils/dimensions.dart';
import 'package:flutter_basic_2024/widgets/big_text.dart';
import 'package:flutter_basic_2024/widgets/small_text.dart';

class ExpanableTextWidget extends StatefulWidget {
  final String text;

  const ExpanableTextWidget({super.key, required this.text});

  @override
  State<ExpanableTextWidget> createState() => _ExpanableTextWidgetState();
}

class _ExpanableTextWidgetState extends State<ExpanableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText=true;

  double textHeight= Dimensions.screenHeight/5.63;
  // xin chao ca nha (max 4)
  // xin c
  // hao ca nha

  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf= widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      firstHalf=widget.text;
      secondHalf="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(size : Dimensions.font16,text: firstHalf):Column(
        children: [
          SmallText(height: 1.8,color: Colors.red,size : Dimensions.font16,text: hiddenText?(firstHalf+" ..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: "Show more",color: Colors.blue,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: Colors.blue,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
