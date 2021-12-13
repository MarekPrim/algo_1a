with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with Pile; 

	
package Calculatrice_Pile is
	package pile_entiers is new Pile(T=>Integer, Image =>Integer'Image); 		-- pile d'éléments
	use pile_entiers;
    type T_Calculatrice is private;
	
    Pas_assez_d_elements : Exception; -- pas assez d'éléments pour effectuer l'opération
	
    --   Réinitialise la calculatrice
    -- Paramètres: rien
    -- Préconditions: rien
    -- Postconditions: Pile renvoyé est vide
    -- Exceptions: rien
    procedure initCalculatrice (calc: in out T_Calculatrice);
		
    --   Remet à zéro la calculatrice
    -- Paramètres: rien
    -- Préconditions: rien
    -- Postconditions: Stack renvoyé est vide
    -- Exceptions: rien
    procedure resetCalculatrice (calc: in out T_Calculatrice);
		
    --   Empile un élément dans la calculatrice
    -- Paramètres: 	calc : in out T_Calculatrice -- la pile dans lequel on insère l’élément
    --         		val : in Integer --element à empiler
    -- Préconditions: rien
    -- Postconditions: Sommet(calc) = val
    -- Exceptions: Pile_Pleine
    procedure empiler_calculatrice (calc : in out T_Calculatrice; val : in Integer);
    
    --   Effectue la somme des deux éléments du haut de la pile
    -- Paramètres: 	calc: in out T_Calculatrice 
    -- Préconditions: null
    -- Postconditions: null
    -- Exceptions: Pile_Vide, Pas_assez_d_elements
	procedure somme (calc : in out T_Calculatrice);
	
    --   Effectue la soustraction des deux éléments du haut de la pile
-- Paramètres: 	calc: in out T_Calculatrice 
    -- Préconditions: null
    -- Postconditions: null
    -- Exceptions: Pile_Vide, Pas_assez_d_elements
	procedure soustraction (calc : in out T_Calculatrice);
	
    --   Effectue la multiplication des deux éléments du haut de la pile
-- Paramètres: 	calc: in out T_Calculatrice 
    -- Préconditions: null
    -- Postconditions: null
    -- Exceptions: Pile_Vide, Pas_assez_d_elements
	procedure multiplication (calc : in out T_Calculatrice);
	
    --   Effectue la division des deux éléments du haut de la pile
-- Paramètres: 	calc: in out T_Calculatrice 
    -- Préconditions: null
    -- Postconditions: null
    -- Exceptions: Pile_Vide, Pas_assez_d_elements
	procedure division (calc : in out T_Calculatrice);

    procedure afficher_calculatrice(calc : in T_Calculatrice);

    private
    type T_Calculatrice is record
			taille : Integer;
			Pile : pile_entiers.T_Pile;
		end record;
		
end Calculatrice_Pile;