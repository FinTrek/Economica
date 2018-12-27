(* ::Package:: *)

(* Mathematica Package *)

BeginPackage["Economica`"]
(* Exported symbols added here with SymbolName::usage *)  



(*VTBBlue::usage="zeros[x1,x2,...] ";
VTPurple::usage="";*)

VTBViolet = RGBColor[0.86328125`, 0.6484375`, 0.796875`];
VTBBlue = RGBColor[0.15625`, 0.43359375`, 0.69140625`];
VTBLightBlue = RGBColor[0.39453125`, 0.66015625`, 0.99609375`];
Options[VTBTextStyle]={FontSize -> 22/1.5}
VTBTextStyle[x_,OptionsPattern[]] := Style[x, FontFamily -> "Arial", FontSize -> OptionValue[FontSize], Black, LineSpacing -> {0.1, 10}]; 
VTBTextStyleNoColor[x_] := Style[x, FontFamily -> "Arial", FontSize -> 22/1.5,  LineSpacing -> {0.1, 10}];



Unprotect[ColorData]; 
(* Old palet *)
(*(RGBColor/@({{55,126,184},{247,129,191},{228,26,28},{153,153,153},{74, 117, 43},{152,78,163},{255,127,0},{255,255,51},{166,86,40},}/255.))*)

(*{{9, 37, 140}, {219, 100, 74}, {112, 168, 141}, {0, 159, 239}, {225, 
  191, 80}, {105, 111, 170}, {184, 82, 61}}*)


 (*http://colorbrewer2.org  http://colorbrewer2.org/?type=sequential&scheme=RdPu&n=6 *) 
ColorData["Rainbow"] =  
   Function[x,  
    Blend[Transpose[{Range@8, 	 
 		(RGBColor/@({{0, 170, 255}, {120, 180, 151}, {234, 107, 80}, {168, 46, 20}, {0, 102, 153}, {64, 116, 91}, {224, 62, 27},{0, 170, 255}}/255.))}], Mod[x,8,1]]];  	  
Protect[ColorData] 






cm = 72/2.54;


 SetOptions[ParametricPlot, ImageSize -> {24, 18}/1.5 cm, AspectRatio -> 3/4,  
   TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black], PlotStyle ->(ColorData["Rainbow"]/@Range[8])]; 



SetOptions[BarChart, ImageSize -> {24, 18}/1.5 cm, 
	ChartBaseStyle->EdgeForm[Directive[GrayLevel[0.356],Opacity[1]]],
	AspectRatio -> 3/4,
	ChartStyle ->(Directive[EdgeForm[],
	ColorData["Rainbow"]@#]&/@Range[8]), 
	ChartLayout->"Stacked",
	TicksStyle -> Directive[22/1.5, 
	FontName -> "Arial" , Black, Opacity[0.3], FontOpacity -> 1]];
	
SetOptions[Histogram, ImageSize -> {24, 18}/1.5 cm, 
	ChartBaseStyle->EdgeForm[Directive[GrayLevel[0.356],Opacity[1]]],AspectRatio -> 3/4,
	ChartStyle ->(ColorData["Rainbow"]/@Range[8]), 
	ChartLayout->"Stacked",
	TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black, Opacity[0.3], FontOpacity -> 1]];
  
SetOptions[DateListPlot, ImageSize -> {24, 18}/1.5 cm, AspectRatio -> 3/4, 
   Axes -> True, Frame -> False,   
   TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black], 
   FrameTicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black],
   PlotStyle->(ColorData["Rainbow"]/@Range[8])   
   ]; 


 SetOptions[ListPlot3D, ImageSize -> {24, 18}/1.5 cm, AspectRatio -> 3/4,  
   TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black], PlotStyle ->(ColorData["Rainbow"]/@Range[8])]; 


 SetOptions[ListPlot, ImageSize -> {24, 18}/1.5 cm, AspectRatio -> 3/4,  
   TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black], PlotStyle ->(ColorData["Rainbow"]/@Range[8])]; 
 
 SetOptions[Plot, ImageSize -> {24, 18}/1.5 cm, AspectRatio -> 3/4, 
   Axes -> True, Frame -> False,   
   TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black], 
   FrameTicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black],
   PlotStyle->(ColorData["Rainbow"]/@Range[8])   
   ]; 


  SetOptions[TimelinePlot, ImageSize -> {24, 18}/1.5 cm, AspectRatio -> 3/4,  
   TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black], PlotStyle -> (ColorData["Rainbow"]/@Range[8]), 
   FrameTicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black]]; 
 
 SetOptions[PieChart,
 	ChartBaseStyle->EdgeForm[Directive[GrayLevel[0.356],Opacity[1]]],
 	ImageSize -> {24, 18}/1.5 cm, AspectRatio -> 3/4, 
   	ChartStyle ->(ColorData["Rainbow"]/@Range[8]), ChartLayout->"Stacked", 
   	TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black]]; 
   
 SetOptions[BoxWhiskerChart, ImageSize -> {24, 18}/1.5 cm, AspectRatio -> 3/4, 
   ChartStyle ->(ColorData["Rainbow"]/@Range[8]),  
   TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black, Opacity[0.3], FontOpacity -> 1], 
    FrameTicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black]]; 
    
 SetOptions[BubbleChart, ImageSize -> {24, 18}/1.5 cm, AspectRatio -> 3/4, 
   ChartStyle ->(ColorData["Rainbow"]/@Range[8]),  
   TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black, Opacity[0.3], FontOpacity -> 1], 
    FrameTicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black]]; 
    
 SetOptions[PairedHistogram, ImageSize -> {24, 18}/1.5 cm, 
 AspectRatio -> 3/4, 
   ChartStyle ->(ColorData["Rainbow"]/@Range[8]),  
   TicksStyle -> Directive[22/1.5, FontName -> "Arial", Black, Opacity[0.3], FontOpacity -> 1], 
   AxesStyle -> Directive[FontFamily -> "Arial", FontSize -> 22/1.5] 
   ]; 
   
 SetOptions[MatrixPlot, ImageSize -> {24, 18}/1.5 cm, AspectRatio -> 3/4,  
   TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black], 
   FrameTicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black]]; 


SetOptions[RadarChart`RadarChart, ImageSize -> {24, 18}/1.5 cm, AspectRatio -> 3/4, 
   PlotStyle ->(ColorData["Rainbow"]/@Range[8]), AxesType -> "Star", 
   TicksStyle -> Directive[22/1.5, FontName -> "Arial" , Black, Opacity[0.3], FontOpacity -> 1]]; 

SetOptions[Callout, Background -> Directive[Opacity[0.0]],Appearance -> "SlantedLabel",
	LabelStyle->{14.6667,Black,FontFamily -> "Arial", Background -> Opacity[0.0]}	];

   
   
   


Begin["`Private`"] (* Begin Private Context *) 





End[] (* End Private Context *)

EndPackage[]
