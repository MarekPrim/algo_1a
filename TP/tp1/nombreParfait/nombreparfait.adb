with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure nombreparfait is
-- R0: Afficher au fur et à mesure les nombres parfait de 2 à N, N entier lu au clavier

-- R1: Commencer afficher au fur et à mesure les nombres parfait de 2 à N, N entier lu au clavier
--  R1.1 Saisir un nombre N         --N : out Entier
--  R1.2 Afficher les nombres parfaits de 2 à N

-- R2 : Comment afficher les nombres parfait de 2 à N
-- R2.1 :
--  pour i de 2 à N faire
        --R2.1 Déterminer si i est parfait          --N: in Entier, i:in Entier, parfait: out booleen

        --R2.2
            --Si parfait alors 
                --afficher i
            --sinon
            --  rien
            -- fin si
-- fin pôur

--  R3 : Comment déterminer i parafait$
--      R3.1 : Somme diviseur de i      -i; in Entier, som : out Entier
--      r3.2 :  décider si est parfait    --som:in Entier, pafait: out boolean


--R4 comment décider i parfait
    -- parfait<-(som=i)

--R4 comment somme div
    -- som<-0
    -- pour j de i à i/2 faire
    -- si (i/j)*j = i alors
    --  som<-som+j
    --sino 
    --  rien
    -- fin si
    --fin pour


       N:Integer; -- Entier limitant l'affichage
   som:Integer := 0;  --Somme des diviseurs de i
   parfait:boolean ; --i est-il parfait ?

begin
Put_Line("Rentrez N");
Get(N);

for i in Integer range 2..N loop
    som:=0;
    for j in Integer range 1..i/2 loop
        if(i/j)*j = i then
            som:=som+j;
        else
            null;
        end if;
    end loop;
    parfait:=som=i;

    if parfait then
        Put(i);
    else
        null;
    end if;
end loop;

end nombreparfait;