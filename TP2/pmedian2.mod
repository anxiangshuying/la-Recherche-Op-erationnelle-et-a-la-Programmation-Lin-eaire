/*********************************************
 * OPL 12.6.1.0 Model
 * Author: Administrateur
 * Creation Date: 24 oct. 2018 at 15:22:42
 *********************************************/

 int P = ...;
{string} Customers = ...;
{string} Warehouses = ...;
int Demand[Customers] = ...;
float Distance[Customers][Warehouses] = ...;
int Stocklimite[Warehouses] = ...;
//Variables
dvar boolean OpenWarehouse[Warehouses];
dvar boolean ShipToCustomer[Customers][Warehouses];

//Objective
minimize 
  sum( c in Customers , w in Warehouses ) 
    Demand[c]*Distance[c][w]*ShipToCustomer[c][w];

//Constraints
subject to {
  forall( c in Customers )
    ctShip:
      sum( w in Warehouses ) 
        ShipToCustomer[c][w] == 1;

  ctOpen:
    sum( w in Warehouses ) 
      OpenWarehouse[w] == P;

  forall( c in Customers , w in Warehouses )
    ctShipOpen:
      ShipToCustomer[c][w] <= OpenWarehouse[w];
      
      
  forall( w in Warehouses )
    ctstock:
      sum( c in Customers ) 
        ShipToCustomer[c][w] * Demand[c] <= Stocklimite[w];  
}