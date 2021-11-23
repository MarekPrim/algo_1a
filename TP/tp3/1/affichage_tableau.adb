-- R0 : Afficher un tableau préalablement initialisé

-- R1 : Comment afficher un tableau préalablement initialisé        -- in tab tab[Entoer]

--  R1.1 Parcourir le tableau et afficher ses valeurs               -- in tab tab[Entoer]         

-- R2 : Comment parcourir le tableau                                
--    pour i allant de 1 à N_MAX faire                              -- in tab tab[Entoer]
--        afficher la valeurs courantes du tableau                  -- in i, in tab tab[Entoer]
--    fin pour

-- R3 : Comment afficher la valeur courante
--  Ecrire(Tab(i))


with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure afficher_tableau is
-- Permet d'afficher un tableau d'entiers déjà initialisé 

-- constantes

    --N_MAX : Entier <- 5   --Limite de la taille du tableau
    N_MAX : constant Integer := 5; --indice max du tableau


--paramètres
    -- Tab est tableau(1..N_MAX) d'Entiers
    TYPE Tab_Entiers is array(1.. N_MAX) of Integer;
    tab : Tab_Entiers;
    nb_elem : Integer;
-- préconditions

-- postconditions

    --Tableau affiché

-- test
begin
tab := (1,0,0,1,1);
nb_elem :=5;
for i in integer range 1..nb_elem loop
    Put(tab(i));
end loop;

end afficher_tableau;

