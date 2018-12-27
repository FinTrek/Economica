
Package["Economica`"]

ClearAll[TimeSeriesJoin];

TimeSeriesJoin[ts1_, ts2_] := 
 TimeSeries[
  Transpose[{
  	Join[ts1["Dates"], ts2["Dates"]], 
    Join[ts1["Values"], ts2["Values"]]
}]]

PackageExport["TimeSeriesJoin"]

(*	TimeSeriesJoin[ts1_, ts2_] := Module[
  {dv = {ts2["Dates"], ts2["Values"]}\[Transpose]},
  Fold[TimeSeriesInsert[#1, #2] &, ts1, dv]
  ]
  *)


