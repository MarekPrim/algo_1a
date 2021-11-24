with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
--Types statiques

procedure Tri_Insertion is



   --Calcule et affiche les premiers nombres premiers compris entre 2 et N, N lu au clavier, en utilisant le crible d'Erathostene
    --Constantes
    N_MAX : constant Integer := 10; --indice max du tableau
    TYPE Tab_Entiers is array(1.. N_MAX) of Integer;
procedure afficherTableau
 (N:in Integer;
 tab : in Tab_Entiers) is
begin
    Put_Line("Tableau : ");
    for j in integer range 1..N loop
        Put(tab(j));
    end loop;
    New_Line(1);
end afficherTableau;

   -- Variables
   
   tab : Tab_Entiers;
   memoire : Integer;
   index : Integer;
   N : Integer; --Variable lu au clavier
begin

--R0 Trier un tableau de taille N<=N_MAX par insertion

--R1    Comment trier un tableau de taille N<=N_MAX par insertion
--R1.1  Demander à l'utilisateur N                  --N out Integer;
--R1.2  Initialiser le tableau avec des valeurs quelconques entières (via le clavier)   --N in Entier,tab in out Tableau
--R1.3  Trier le tableau par insertion      --N in Entier, tab in out Tableau

--R2 Comment trier un tableau par insertion
--R2.1  Parcourir le tableau            --tab in [], current out Entier, index out Entier
--R2.2  Décaler l'élément jusqu'à ce qu'il soit trié        --tab in out [], current in int,index in out int

--R3 Comment décaler l'élément jusqu'à ce qu'il soit trié
-- memoire<-tab(index)      
-- Tant que index > 1 et alors tab(index-1)>valeur_memorisé faire   --index in entier, tab in
--      elem[index]:=elem[index-1] --tab in out []
--      index--;                    --index in out;
-- Fin TQ
-- elem[index]<-memoire //Nous sommes arrivé à l'index où la valeur mémorisé doit être insérée



-- Récupération fiable et conviviale de N auprès de l'utilisateur via le périphérique clavier
loop
    Put_Line("N ? :");
    Get(N);
exit when N>=1 and N<N_MAX;
end loop;
--{1<=N<N_MAX}

-- Initialisation du tableau par l'utilisateur via le clavier
for i in integer range 1..N loop
    Put("Valeur ");
    Put(i);
    Put(" : ");
    Get(tab(i));
    New_Line(1);
end loop;
--{∀e∈N,e∈[1;N],tab(e)≠?}

for i in integer range 2..N loop
    memoire := tab(i);
    index := i;
    while index>1 and then memoire<tab(index-1) loop
        tab(index) := tab(index-1);
        index:=index-1;
    end loop;
    --Je sais que mon tableau jusqu'à index est trié et que [index]==[index+1]
    tab(index):=memoire;
    afficherTableau(i,tab);
end loop;
--{∀i ∈ N, i∈[2,N], tab(i-1)<tab(i)} --La relation d'ordre sur N est respecté dans le tableau => tab sous-ensemble ordonné de N

afficherTableau(N,tab);




end Tri_Insertion;