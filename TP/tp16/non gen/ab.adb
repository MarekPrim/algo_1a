with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body AB is 

procedure createEmptyBinaryTree(abr : out Arbre) is
begin
    abr := null;
end createEmptyBinaryTree;

function isEmptyBinaryTree(abr : in Arbre) return Boolean is
begin
    return (abr = null);
end isEmptyBinaryTree;

function sizeBinaryTree(abr : in Arbre) return Integer is
taille_g : Integer := 0;
taille_d : Integer := 0;
begin
    if isEmptyBinaryTree(abr) then
        return 0;
    else
        taille_g := sizeBinaryTree(abr.all.left);
        taille_d := sizeBinaryTree(abr.all.right);
        return (taille_g + taille_d + 1);
    end if;
end sizeBinaryTree;


procedure insertInBinaryTree(abr : in out Arbre; valeur : in Integer) is
begin
    if isEmptyBinaryTree(abr) then
        abr := new noeud'(valeur, null, null);
    else
        if valeur < abr.all.valeur then
            insertInBinaryTree(abr.all.left, valeur);
        else
            insertInBinaryTree(abr.all.right, valeur);
        end if;
    end if;
end insertInBinaryTree;

function searchInBinaryTree(abr : in Arbre; valeur : in Integer) return Boolean is
begin
    if isEmptyBinaryTree(abr) then
        return false;
    else
        if valeur = abr.all.valeur then
            return true;
        else
            if valeur < abr.all.valeur then
                return searchInBinaryTree(abr.all.left, valeur);
            else
                return searchInBinaryTree(abr.all.right, valeur);
            end if;
        end if;
    end if;
end searchInBinaryTree;

procedure modifyInBinaryTree(abr : in out Arbre; src : in Integer; tar : in Integer) is
begin
    deleteInBinaryTree(abr, src);
    insertInBinaryTree(abr, tar);
end modifyInBinaryTree;

procedure deleteInBinaryTree(abr : in out Arbre; valeur : in Integer) is
 -- Permet de trouver la plus petite valeur dans l'arbre
 function minimumBinaryTree(abr : in Arbre) return Integer is
 begin
    if isEmptyBinaryTree(abr.all.left) then
        return abr.all.valeur;
    else
        return minimumBinaryTree(abr.all.left);
    end if;
end minimumBinaryTree;

begin
    if isEmptyBinaryTree(abr) then --Cas d'un arbre vide
        raise Arbre_vide;
    elsif searchInBinaryTree(abr, valeur) = False then --Cas de l'élément non présent
        raise Element_non_present;
    else
        if valeur < abr.all.valeur then -- Si la valeur à supprimer est plus petite que la valeur courante, on supprime dans le sous-arbre gauche
            deleteInBinaryTree(abr.all.left, valeur);
        elsif valeur > abr.all.valeur then -- Si la valeur à supprimer est plus grande que la valeur courante, on supprime dans le sous-arbre droit
            deleteInBinaryTree(abr.all.right, valeur);
        else    -- Si le sous-arbre gauche est vide, on le remplace par le sous-arbre droit
            if abr.all.left = null then
                abr := abr.all.right;
            elsif abr.all.right = null then -- Si le sous-arbre droit est vide, on le remplace par le sous-arbre gauche
                abr := abr.all.left;
            else -- Si les deux sous-arbres sont non vides, on remplace la valeur courante par la plus petite valeur du sous-arbre droit
                abr.all.valeur := minimumBinaryTree(abr.all.right);
                deleteInBinaryTree(abr.all.right, abr.all.valeur);
            end if;
        end if;
    end if;
end deleteInBinaryTree;

procedure afficheArbre(abr : in Arbre; space : in out Integer) is

begin
    if isEmptyBinaryTree(abr) then
        Put_Line("Arbre vide");
    else -- Parcours prefixe VGD
        space := space + 4;
        afficheArbre(abr.all.right,space);
        for i in 0 .. space-1 loop
            Put(" ");
        end loop;
        Put(abr.all.valeur);
        Put_Line("");
        afficheArbre(abr.all.left,space);
        
    end if;
end afficheArbre;

end AB;