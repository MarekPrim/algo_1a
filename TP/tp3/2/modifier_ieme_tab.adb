-- R0 : Modifier un tableau préalablement initialisé au ièeme indice (donné par l'utilisateur) avec
-- une valeur fournie par l'utilisateur

-- R1 : Comment modifier un tableau préalablement initialisé au ièeme indice (donné par l'utilisateur) avec
-- une valeur fournie par l'utilisateur                                  

--  R1.1 Afficher le tableau original                                                    --tab in entier[]
--  R1.2 Demander à l'utilisateur de rentrer l'indice qu'il souhaite modifier          -- i out entier           
--  R1.3 Demander à l'utilisateur de rentrer la valeur qu'il souhaite insérer          -- val out entier
--  R1.4 Modifier le tableau à l'indice i                                               -- i in entier, val in entier, tab in entier[]
--  R1.5 Afficher le tableau modifié                                                    --tab in entier[]




-- R2 : Comment modifier le tableau                                 
--      tab[i]<-val


with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure modifier_ieme_tab is
-- Permet de modifier un tableau d'entiers déjà initialisé 

-- constantes

    --N_MAX : Entier <- 5   --Limite de la taille du tableau
    N_MAX : constant Integer := 5; --indice max du tableau


--paramètres
    -- Tab est tableau(1..N_MAX) d'Entiers
    TYPE Tab_Entiers is array(1.. N_MAX) of Integer; --Définition du type de tableau d'entiers
    tab : Tab_Entiers;-- Tableau d'entiers à modifier
    nb_elem : Integer; --nb elements dans le tableau
    ieme : integer; --indice rentr" par l'utilisateur
    val : integer; --valeur rentrée par l'utilisateur
-- préconditions

-- postconditions

    --Tableau modifié à la ieme valeur

-- test
begin
tab := (1,0,0,1,1);
nb_elem := 5;
Put_Line("original");
for i in integer range 1..nb_elem loop
    Put(tab(i));
end loop;

Put_Line("Indice ? :");
Get(ieme);

Put_Line("Valeur ? :");
Get(val);

tab(ieme):=val;

Put_Line("modifié");
for i in integer range 1..nb_elem loop
    Put(tab(i));
end loop;

end modifier_ieme_tab;
