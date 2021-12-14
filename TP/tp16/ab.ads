package AB is

    type Arbre is private;


    Element_non_present : Exception;
    Arbre_vide : Exception;
-- Créer un arbre vide
-- Paramètres : aucun
-- Retour : un arbre vide
-- Pré-conditions : aucune
-- Post-conditions : un arbre vide
-- Exception : aucune
procedure createEmptyBinaryTree(abr : out Arbre) with Post=> isEmptyBinaryTree(abr) = true;

-- Indique si un arbre est vide
-- Paramètres : un arbre
-- Retour : un booléen
-- Pré-conditions : rien
-- Post-conditions : rien
-- Exception : rien
function isEmptyBinaryTree(abr : in Arbre) return Boolean;

-- Retourne la taille d'un arbre
-- Paramètres : un arbre
-- Retour : un entier
-- Pré-conditions : rien
-- Post-conditions : rien
-- Exception : rien
function sizeBinaryTree(abr : in Arbre) return Integer;

-- Insère un élément dans un arbre
-- Paramètres : un arbre, un élément
-- Retour : rien
-- Pré-conditions : rien
-- Post-conditions : un arbre avec l'élément présent
-- Exception : aucune
procedure insertInBinaryTree(abr : in out Arbre; valeur : in Integer) with Post=> searchInBinaryTree(abr,valeur) = True;

-- Supprime un élément dans un arbre
-- Paramètres : un arbre, un élément
-- Retour : rien
-- Pré-conditions : rien
-- Post-conditions : un arbre sans l'élément présent
-- Exception : Element_non_present, Arbre_vide
procedure deleteInBinaryTree(abr : in out Arbre; valeur : in Integer) with Post=> searchInBinaryTree(abr,valeur) = False;

-- Modifie la donnée d'un élément dans un arbre
-- Paramètres : un arbre, un élément, une nouvelle donnée
-- Retour : rien
-- Pré-conditions : rien
-- Post-conditions : un arbre avec la nouvelle donnée
-- Exception : Element_non_present
procedure modifyInBinaryTree(abr : in out Arbre; src : in Integer; tar : in Integer) with Post=> searchInBinaryTree(abr,tar) ;

-- Cherche un élément dans un arbre
-- Paramètres : un arbre, un élément
-- Retour : un booléen
-- Pré-conditions : rien
-- Post-conditions : un arbre avec l'élément présent
-- Exception : aucune
function searchInBinaryTree(abr : in Arbre; valeur : in Integer) return Boolean;

-- Affiche un arbre
-- Paramètres : un arbre
-- Retour : rien
-- Pré-conditions : rien
-- Post-conditions : rien
-- Exception : aucune
procedure afficheArbre(abr : in Arbre; space : in out Integer);

private
    type noeud;
    type Arbre is access noeud;
    type noeud is record
        valeur : Integer;
        left : Arbre;
        right : Arbre;
    end record;
end AB;