-- R0 : Incrémente par 1 toutes les valeurs d'un tableau préalablement initialisé

-- R1 : Comment incrémente par 1 toutes les valeurs d'un tableau préalablement initialisé                                  

--  R1.1 Afficher le tableau original                                                    --tab in entier[]
--  R1.2 Incrémente chaque élement du tableau                                            --tab in out entier[]
--  R1.3 Afficher le tableau modifié                                                    --tab in entier[]




-- R2: Comment incrémenter chaque élément du tableau                                    -- tab in out entier[]
--      pour i allant de 1 à N_MAX
--          tab(i)<-tab(i)+1
--      fin pour

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure incremente_one_on_tab is
-- Permet d'incrémeter par 1 chaque élément d'un tableau déjà intialisé

-- constantes

    --N_MAX : Entier <- 5   --Limite de la taille du tableau
    N_MAX : constant Integer := 5; --indice max du tableau


--paramètres
    -- Tab est tableau(1..N_MAX) d'Entiers
    TYPE Tab_Entiers is array(1.. N_MAX) of Integer; --Définition du type de tableau d'entiers
    tab : Tab_Entiers;-- Tableau d'entiers à modifier
    nb_elem : Integer; --nb elements dans le tableau
-- préconditions

-- postconditions

    --Tableau incrémenté de 1 sur chacune de ses valeurs

-- test
begin
tab := (1,0,0,1,1);
nb_elem:=5;
Put_Line("original");
for i in integer range 1..nb_elem loop
    Put(tab(i));
end loop;

for i in integer range 1..nb_elem loop
    tab(i):=tab(i)+1;
end loop;
Put_Line("");
Put_Line("incrementé");
for i in integer range 1..nb_elem loop
    Put(tab(i));
end loop;

end incremente_one_on_tab;
