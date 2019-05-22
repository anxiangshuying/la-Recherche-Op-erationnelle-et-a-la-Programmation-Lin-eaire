/*********************************************
 * OPL 12.8.0.0 Model
 * Author: lihua
 * Creation Date: 2018年11月27日 at 下午9:53:35
 *********************************************/

 //Data
int NbElements = ...;
range Elements = 1..NbElements;
int Poids[Elements] = ...;

//Variables
dvar boolean SousEnsembleUn[Elements];
dvar boolean  SousEnsembleDeux[Elements];

//Objective

//Constraints
subject to {
  pSous:
  forall( e in Elements )
      (SousEnsembleUn[e]+ SousEnsembleDeux[e]) == 1;

    pPoids:
      sum( e in Elements ) 
        (SousEnsembleUn[e]*Poids[e] -  SousEnsembleDeux[e]*Poids[e]) == 0;
}