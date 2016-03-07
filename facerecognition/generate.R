#Generate 1
if "underLipTop" in data:
 underLipTop_y = str(jsondata[0]['faceLandmarks']['underLipTop']['y'])
else:
 underLipTop_y = "unknown"
 
keywords = c('underLipTop','noseTip','upperLipBottom','noseLeftAlarTop','eyebrowLeftOuter','eyeLeftBottom','pupilLeft','upperLipTop','eyeLeftInner','eyeRightInner','eyeLeftTop','mouthLeft','noseRightAlarTop','eyebrowRightInner','noseLeftAlarOutTip','noseRightAlarOutTip','noseRootRight','eyeLeftOuter','underLipBottom','eyeRightTop','eyeRightOuter','noseRootLeft','eyebrowRightOuter','eyeRightBottom','eyebrowLeftInner','mouthRight','pupilRight')
for(i in 1:length(keywords))
{
	cat(paste0("if ","\"",keywords[i],"\""," in data:","\n"))
	cat(paste0(" ",keywords[i],"_y ="," str(jsondata[0]['faceLandmarks']['",keywords[i],"']['y'])"),"\n")
	cat(paste("else:","\n"))
	cat(paste0(" ",keywords[i],"_y ="," \"unknown\""))
	cat(paste("\n\n"))
	
	cat(paste0("if ","\"",keywords[i],"\""," in data:","\n"))
	cat(paste0(" ",keywords[i],"_x ="," str(jsondata[0]['faceLandmarks']['",keywords[i],"']['x'])"),"\n")
	cat(paste("else:","\n"))
	cat(paste0(" ",keywords[i],"_x ="," \"unknown\""))
	cat(paste("\n\n"))
}

#Generate 2
underLipTop_x_list.append(underLipTop_x)
keywords = c('underLipTop','noseTip','upperLipBottom','noseLeftAlarTop','eyebrowLeftOuter','eyeLeftBottom','pupilLeft','upperLipTop','eyeLeftInner','eyeRightInner','eyeLeftTop','mouthLeft','noseRightAlarTop','eyebrowRightInner','noseLeftAlarOutTip','noseRightAlarOutTip','noseRootRight','eyeLeftOuter','underLipBottom','eyeRightTop','eyeRightOuter','noseRootLeft','eyebrowRightOuter','eyeRightBottom','eyebrowLeftInner','mouthRight','pupilRight')
for(i in 1:length(keywords))
{
	cat(paste0(keywords[i],"_y_list.append(",keywords[i],"_y)"),"\n")
	cat(paste0(keywords[i],"_x_list.append(",keywords[i],"_x)"),"\n")
	#cat(paste("\n"))
}

#Generate 3
rows = zip(userid_list,age_list,gender_list,sideburns_list,moustache_list,underLipTop_y_list,underLipTop_x_list,noseTip_y_list,noseTip_x_list,upperLipBottom_y_list,upperLipBottom_x_list,noseLeftAlarTop_y_list,noseLeftAlarTop_x_list,eyebrowLeftOuter_y_list,eyebrowLeftOuter_x_list,eyeLeftBottom_y_list,eyeLeftBottom_x_list,pupilLeft_y_list,pupilLeft_x_list,upperLipTop_y_list,upperLipTop_x_list,eyeLeftInner_y_list,eyeLeftInner_x_list,eyeRightInner_y_list,eyeRightInner_x_list,eyeLeftTop_y_list,eyeLeftTop_x_list,mouthLeft_y_list,mouthLeft_x_list,noseRightAlarTop_y_list,noseRightAlarTop_x_list,eyebrowRightInner_y_list,eyebrowRightInner_x_list,noseLeftAlarOutTip_y_list,noseLeftAlarOutTip_x_list,noseRightAlarOutTip_y_list,noseRightAlarOutTip_x_list,noseRootRight_y_list,noseRootRight_x_list,eyeLeftOuter_y_list,eyeLeftOuter_x_list,underLipBottom_y_list,underLipBottom_x_list,eyeRightTop_y_list,eyeRightTop_x_list,eyeRightOuter_y_list,eyeRightOuter_x_list,noseRootLeft_y_list,noseRootLeft_x_list,eyebrowRightOuter_y_list,eyebrowRightOuter_x_list,eyeRightBottom_y_list,eyeRightBottom_x_list,eyebrowLeftInner_y_list,eyebrowLeftInner_x_list,mouthRight_y_list,mouthRight_x_list,pupilRight_y_list,pupilRight_x_list)
keywords = c('underLipTop','noseTip','upperLipBottom','noseLeftAlarTop','eyebrowLeftOuter','eyeLeftBottom','pupilLeft','upperLipTop','eyeLeftInner','eyeRightInner','eyeLeftTop','mouthLeft','noseRightAlarTop','eyebrowRightInner','noseLeftAlarOutTip','noseRightAlarOutTip','noseRootRight','eyeLeftOuter','underLipBottom','eyeRightTop','eyeRightOuter','noseRootLeft','eyebrowRightOuter','eyeRightBottom','eyebrowLeftInner','mouthRight','pupilRight')
for(i in 1:length(keywords))
{
 cat(paste0(keywords[i],"_y_list,",keywords[i],"_x_list,"))
}