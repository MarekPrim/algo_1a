package pile is

type C_Pile;
TYPE T_Pile is access C_Pile;
        TYPE C_Pile is record
            val : Integer;
            next : T_Pile;
        END RECORD;
    Pile_Vide : EXCEPTION;

    --Créer une pile vide
    --Paramètres : aucun
    --Préconditions : ∅
    --Postconditions : ∅
    --Exceptions : ∅
    function creerPile return T_Pile with Post => isEmpty(creerPile'Result);

    --Indique si la pile est vide
    --Paramètres : pile
    --Préconditions : rien
    --Postconditions : rien
    --Exceptions : rien
    function isEmpty(pile : in T_Pile) return Boolean;

    --Ajoute un élément en tête de pile
    --Paramètres : pile, valeur
    --Préconditions : rien
    --Postconditions : Sommet(pile) = valeur
    --Exceptions : Constraint_Error
    procedure empiler(pile : in out T_Pile;val : in Integer) with Post => sommet(pile) = val;

    --Retire un élément en tête de pile
    procedure depiler(pile : in out T_Pile);

    --Retourne la valeur du sommet de pile
    function sommet(pile : in T_Pile) return Integer;

    --Retourne la taille de la pile
    function taille(pile : in T_Pile) return Integer;

    --Affiche la pile
    procedure afficher(pile : in T_Pile);

end Pile;