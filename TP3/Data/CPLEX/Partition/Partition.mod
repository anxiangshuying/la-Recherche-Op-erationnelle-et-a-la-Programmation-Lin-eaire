/*********************************************
 * OPL 12.6.1.0 Model
 * Author: Administrateur
 * Creation Date: 14 nov. 2018 at 16:30:15
 *********************************************/
 
 // Data
 int nbElements = ...;
 range Elements = 1..nbElements;
 int Poids[Elements] = ...;
 
 // Variables
 dvar boolean ensemble1[Elements];
 dvar boolean ensemble2[Elements];
 
 // Objective
 
 // Constraints
 subject to {
 	ctR:
 	forall(e in Elements)
 		(ensemble1[e] + ensemble2[e]) == 1;
 
  	ctW:
 	sum(e in Elements)
 		(ensemble1[e]*Poids[e] - ensemble2[e]*Poids[e]) == 0;
 }