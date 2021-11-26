package enregistrement is
N_MAX : constant Integer := 20;
type elements is array(1..N_MAX) of Integer;

type ensemble is record 
    contenu : elements;
    cardinal : Integer;
end record;
-- Créer un ensemble vide
-- Paramètres : ∅
-- Préconditions : ∅
-- Postconditions : 

function creer return ensemble;


-- Verifie la présence d'un élément
-- Paramètres : x : in Entier, e : in Ensemble
-- Préconditions : e != ∅
-- Postconditions : résultat -> (x E e) 

function appartient(x: in Integer;e: in ensemble) return Boolean with Pre => e.cardinal >= 0;


-- Ajoute un élément à l'ensemble
-- Paramètres : x: in Entier, e: in out Ensemble
-- Préconditions : ∅
-- Postconditions : e'.cardinal = e.cardinal+1

procedure ajouter(x: in Integer;e: in out ensemble) with Pre => not appartient(x,e), Post=> e.cardinal = e'Old.cardinal + 1;


-- Supprime un élément à l'ensmbemble
-- Paramètres : x:in Entier; e: in out Ensemble
-- Préconditions : appartient(x,e)->True
-- Postconditions : e'.cardinal = e.cardinal -1

procedure supprimer(x: in Integer;e: in out ensemble) with Pre => appartient(x,e), Post=> e.cardinal = e'Old.cardinal -1 ;


-- Affiche le contenu de l'ensemble
-- Paramètres : e: in Ensemble
-- Préconditions : ∅
-- Postconditions : ∅

procedure afficher(e:in ensemble);

end enregistrement;