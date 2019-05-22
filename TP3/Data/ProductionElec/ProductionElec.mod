/*********************************************
 * OPL 12.6.1.0 Model
 * Author: Administrateur
 * Creation Date: 14 nov. 2018 at 17:42:51
 *********************************************/

 // Data
 int nbPlages=...;
 range Plages =1..nbPlages;
 int Periodes[Plages] =...; //en heures
 int Demande[Plages]=...; //en MW
 
 int typeCentrales=...;
 range Centrales =1..typeCentrales;
 int NbCentrales[Centrales]=...; 
 int PuissMin[Centrales]=...; //en MW
 int PuissMax[Centrales]=...; //en MW
 int CoutBases[Centrales]=...; //en €/h
 int CoutSupp[Centrales]=...; //en €/MWh
 int CoutDem[Centrales]=...; //en €/h
	
 // Variables
 dvar boolean fonctionne[Plages][Centrales];
 
 // Objective
 minimize
 sum( p in Plages, c in Centrales)
   fonctionne[p][c]*CoutDem[c]+
 
 // Constraints
 
