/*********************************************
 * OPL 12.6.1.0 Model
 * Author: Administrateur
 * Creation Date: 14 nov. 2018 at 17:42:51
 *********************************************/

 // Data
 int nbPlages=...;
 range Plages =1..nbPlages;
 int Periodes[Plages] =...;
 int Demande[Plages]=...;
 
 int typeCentrales=...;
 range Centrales =1..typeCentrales;
 int NbCentrales[Centrales]=...;
 int PuissMin[Centrales]=...;
 int PuissMax[Centrales]=...;
 int CoutBases[Centrales]=...;
 int CoutSupp[Centrales]=...;
 int CoutDem[Centrales]=...;
	
 // Variables
 dvar boolean fonctionne[Plages][Centrales];
 
 // Objective
 minimize
 	fonctionne[Plages][Centrales]
 
 // Constraints
 
