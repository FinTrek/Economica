Package["Economica`"]

TimeSeriesPureF[f_, ts_] := 
 TimeSeries[Transpose@{ts["Dates"], f /@ ts["Values"]}]

 PackageExport["TimeSeriesPureF"]