CurrentDir = Directory[];
DataDir = "/home/hjk/wolframcode/wcode/data";
(*SetDirectory[DataDir];*)
FilesList = FileNames["*.csv", DataDir];

File1 = First[FilesList];
File2 = Last[FilesList];

DataSet1 = Import[File1, "Table"];
ColumnNames1 = Join[Rest[First[DataSet1]], {"Date", "Time"}];
DataSet1 = Drop[DataSet1, 2];
RowNames1 = ToString[First[#]]&/@DataSet1;
DataSet1 = Rest[#]&/@DataSet1;
DataSet1 = AssociationThread[ColumnNames1->#]&/@DataSet1;
DataSet1 = AssociationThread[RowNames1->DataSet1];


DataSet2 = Import[File2, "Table"];
ColumnNames2 = Join[Rest[First[DataSet2]], {"Date", "Time"}];
DataSet2 = Drop[DataSet2, 2];
RowNames2 = ToString[First[#]]&/@DataSet2;
DataSet2 = Rest[#]&/@DataSet2;
DataSet2 = AssociationThread[ColumnNames2->#]&/@DataSet2;
DataSet2 = AssociationThread[RowNames2->DataSet2];

DataSet1 = Dataset[DataSet1];
DataSet2 = Dataset[DataSet2];



SetDirecotory[CurrentDir];
