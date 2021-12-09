package liste_db_chainee is

type cellule;
type liste is access cellule;
type cellule is record
    prev : liste;
    val : Integer;
    next : liste;
end record;

function isEmpty(lste : in liste) return Boolean;

-- Créer une liste vide
-- Préconditions : 
-- Postconditions : Résultat eg. liste vide
-- Exceptions :
function createEmptyList return liste with Post => isEmpty(createEmptyList'Result) = True;

-- Ajouter un élément à la liste
-- Préconditions : 
-- Postconditions : Element appartenant à la liste
-- Exceptions :
procedure ajouter(lste : in out liste; val : in Integer); -- with Post => rechercher(lste,val) /= null; 

-- Affiche une liste du début à la fin
-- Préconditions : 
-- Postconditions : 
-- Exceptions :
procedure afficher(lste : in liste);

-- Recherche un élément dans une liste
-- Préconditions :
-- Postconditions : 
-- Exceptions :
procedure rechercher(lste : in out liste; val : in Integer);

-- Enlève un élément de la liste
-- Préconditions : 
-- Postconditions : 
-- Exceptions : Liste vide / Element non présent
procedure enlever(lste : in out liste; val : in Integer);
    

end liste_db_chainee;