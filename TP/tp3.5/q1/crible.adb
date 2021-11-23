
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Crible is
   --Calcule et affiche les premiers nombres premiers compris entre 2 et N, N lu au clavier, en utilisant le crible d'Erathostene
    --Constantes
    N_MAX : constant Integer := 100; --indice max du tableau


   -- Variables
   TYPE Tab_Entiers is array(1.. N_MAX) of Integer;
   tab : Tab_Entiers;
   nb_elem : Integer :=1;
   estPremier:Boolean;
   N : Integer; --Variable lu au clavier
begin

--R0 Réaliser le crible d'Erathostene

--R1 Comment réaliser le crible d'Eratosthene
--R1.1  Demander N à l'utilisateur
--R1.2  Réaliser le crible
--R1.3  Afficher les chiffres ayant validé le crible d'Eratosthene

--R2 Comment réaliser le crible
--R2.1 Parcourir les entiers de 2 à N
--R2.2 Déterminer via le crible d'Eratosthene si le nombre courant est premier


--R3 Comment déterminner si un nombre K est premier via le crible
--R3.1 Parcourir tous les entiers de 2 à K^0.5
-- estPremier<-true
--Pour i allant de 2 à K^0.5
--  R3.1.1 Comment savoir si un entier est divisible par i
--  Si K%i != 0 alors
--      //K n'est pas premier
--      estPremier<-false
--  Sinon
--      Rien
--  FinSi 
-- Fin R3.1.1
--Fin Pour


Put_Line("N ? :");
Get(N);

for k in integer range 2..N loop
    estPremier:=true;
    for i in integer range 2..k-1 loop
        if (k mod i = 0) then
            estPremier:=false;
        end if;
    end loop;
    
    if(estPremier)then
        tab(nb_elem) := k;
        nb_elem:=nb_elem+1;
    end if;
end loop;

for j in integer range 1..nb_elem-1 loop
    Put(tab(j));
    null;
end loop;

end Crible;