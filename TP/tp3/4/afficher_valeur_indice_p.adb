-- R0 : Afficher la pieme valeur d'un tableau préalablement initialisé, p donné au clavier par l'utilisateur, si elle existe. 

-- R1 : Afficher la pieme valeur d'un tableau préalablement initialisé, p donné au clavier par l'utilisateur, si elle existe.                         

--  R1.1 Demander à l'utilisateur de donner p                                  --p out entier
--  R1.2 Demander à l'utilisateur de donner val                                --val out entier
--  R1.2 Dénombrer les occurences de val dans tab                              -- val in entier, tab in entier[], indice out integer, existence out bool
--  R1.3 Vérifier si la pieme valeur existe                                    -- tab in entier[], p in entier, existe in bool
--      Si existe alors
--          ecrire("Pième valeur présente à :"+tab(p))
--      sinon
--          ecrire("valeur inexistante")


-- R2 : Comment dénombrer les occurences de val dans tab                       -- val in entier, tab in entier[], indice out integer
--      indice<-1
--      p_copy<-p
--      pour i allant de 1 à N_MAX faire
--          si tab(i)=val && p_copy>0 alors
--              p_copy<-p_copy-1
--              indice<-i
--          sinon
--              rien
--          fin si
--      existence<-(indice!=-1)&&(p_copy>0)

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure afficher_valeur_indice_p is
-- Permet d'afficher l'indice de la p-ième valeur v dans le tableau

-- constantes

    --N_MAX : Entier <- 5   --Limite de la taille du tableau
    N_MAX : constant Integer := 15; --indice max du tableau


--paramètres
    -- Tab est tableau(1..N_MAX) d'Entiers
    TYPE Tab_Entiers is array(1.. N_MAX) of Integer; --Définition du type de tableau d'entiers
    tab : Tab_Entiers;-- Tableau d'entiers à modifier
    nb_elem : Integer; --nb elements dans le tableau
    p : Integer;    -- Id occurence souhaitée
    val : Integer; -- value to look up
    existence : boolean; --exist
    indice : integer;
    p_copy : integer;
-- préconditions

-- postconditions

    --Tableau modifié à la ieme valeur

-- test
begin
tab := (1,0,0,1,1,5,7,8,4,5,5,3,4,8,7);
nb_elem:=15;
Put_Line("original");
for i in integer range 1..nb_elem loop
    Put(tab(i));
end loop;

Put_Line("P ? :");
Get(p);

Put_Line("val ? :");
Get(val);

indice:=-1;
p_copy:=p;
for i in integer range 1..nb_elem loop
    if(tab(i)=val) then
        indice:=i;
        p_copy:=p_copy-1;
    else
        null;
    end if;
end loop;
existence:=(indice/=-1);

if existence then
    Put_Line("Valeur à l'indice:");
    Put(indice,2);
else
    Put_Line("valeur inexistante");
end if;

end afficher_valeur_indice_p;
