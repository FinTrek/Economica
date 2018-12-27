Package["Economica`"]

LogMean::usage="LogMean[] is a logarithmic mean";

(*http://www.jstor.org/stable/2317088?seq=1#page_scan_tab_contents*)


LogMean[x_?NumericQ, x_?NumericQ] /; x > 0 := x;
LogMean[x_?NumericQ, y_?NumericQ] /; Or[x == 0., y == 0.] := 0;
LogMean[x_?NumericQ, y_?NumericQ] /; And[x > 0, y > 0] := (y - x)/(Log[y] - Log[x]);



PackageExport["CookedLinearModelFit"]