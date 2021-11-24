with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
--Types statiques

procedure Tri_Insertion_Chaine is



   --Tri une chaine de caractères par le tri par insertion
    --Constantes
    N_MAX : constant Integer := 20;
    
procedure afficherChaine
 (N:in Integer;
 chaine : in String)is
begin
    Put_Line("Chaine : ");
    for j in integer range 1..N loop
        Put(chaine(j));
    end loop;
    New_Line(1);
end afficherChaine;

   -- Variables
   
   chaine : String(1..N_MAX);
   memoire : Character;
   index : Integer;
   longueur_chaine : Integer; --Variable lu au clavier
begin

--R0 Trier une chaine de caractères préalablement initialisée

--R1    Comment trier une chaine de caractères préalablement initialisée
--R1.1  Demander à l'utilisateur la chaine                  --longueur_chaine out Integer, chaine out String
--R1.2  Trier la chaine par insertion      --longueur_chaine in Entier, chaine in out Tableau
--R1.3  Afficher la chaine

--R2 Comment trier une chaine par insertion
--R2.1  Parcourir la chaine            --chaine in String, current out Caracter, index out Entier
--R2.2  Décaler l'élément jusqu'à ce qu'il soit trié        --chaine in out String, current in caractere ,index in out int

--R3 Comment décaler l'élément jusqu'à ce qu'il soit trié
-- memoire<-chaine(index)      
-- Tant que index > 1 et alors code_ascii(tab(index-1))>code_ascii(valeur_memorisé) faire   --index in entier, tab in
--      elem[index]:=elem[index-1] --tab in out []
--      index--;                    --index in out;
-- Fin TQ
-- elem[index]<-memoire //Nous sommes arrivé à l'index où la valeur mémorisé doit être insérée



-- Récupération fiable et conviviale de la chaine via le clavier
loop
    get_line(chaine,longueur_chaine);
    exit when longueur_chaine>=1;
    end loop;



for i in integer range 2..longueur_chaine loop
    memoire := chaine(i);
    index := i;
    while index>1 and then Character'POS(memoire)<Character'POS(chaine(index-1)) loop
        chaine(index) := chaine(index-1);
        index:=index-1;
    end loop;
    --Je sais que mon tableau jusqu'à index est trié et que [index]==[index+1]
    chaine(index):=memoire;

end loop;
--{∀i ∈ N, i∈[2,N], tab(i-1)<tab(i)} --La relation d'ordre sur N est respecté dans le tableau => tab sous-ensemble ordonné de N

afficherChaine(longueur_chaine,chaine);

end Tri_Insertion_Chaine;