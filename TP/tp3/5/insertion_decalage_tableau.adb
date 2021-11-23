-- R0 : Insérer une valeur dans la première case du tableau en décalant les éléments déjà existants, si insertion possible

-- R1 : Comment insérer une valeur dans la première case du tableau en décalant les éléments déjà existants, si insertion possible                           

--  R1.1 Afficher le tableau original                                                    --tab in entier[]
--  R1.2 Demander à l'utilisateur de donner une valeur à insérer tant qu'il peut insérer --val out entier
--  R1.3 Insérer une valeur à la première case du tableau                                --val in entier, tab in out entiers[]
--  R1.4 Afficher le tableau modifié                                                     --tab in entier[]




-- R2: Comment insérer une valeur à la première case du tableau                           -- tab in out entier[], val in entier, nb_elem in entier
--   R2.1 : Décaler les valeurs existantes d'un pas de 1 vers la droite                   -- tab in out entier[], nb_elem in entier
--   R2.2 : Insérer la valeur sur la première case                                        -- val in, tab in out[]

-- R3: Comment décaler les valeurs existantes d'un pas de 1 vers la droite
--  pour i allant de 2 à nb_elem+1 faire
--      tab(i)<-tab(i-1)
--  fin pour

-- R3: Comment insérer la valeur sur la première case
--  tab(1)<-val

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure insertion_decalage_tableau is
-- Permet d'incrémeter par 1 chaque élément d'un tableau déjà intialisé

-- constantes

    --N_MAX : Entier <- 8   --Limite de la taille du tableau
    N_MAX : constant Integer := 8; --indice max du tableau


--paramètres
    -- Tab est tableau(1..N_MAX) d'Entiers
    TYPE Tab_Entiers is array(1.. N_MAX) of Integer; --Définition du type de tableau d'entiers
    tab : Tab_Entiers;-- Tableau d'entiers à modifier
    nb_elem : Integer; --nb elements dans le tableau
    val : integer;
-- préconditions

-- postconditions

    --Tableau modifié à la ieme valeur

-- test
begin
tab := (1,0,0,1,1,-1,-1,-1);
nb_elem := 5;
Put_Line("original");
for i in integer range 1..nb_elem loop
    Put(tab(i));
end loop;

New_Line(1);

while(nb_elem+1<=N_MAX) loop
    New_Line(1);
    Put_Line("Valeur ? :");
    Get(val);
    for i in integer range 2..N_MAX-1 loop
        tab(i):=tab(i-1);
    end loop;
    nb_elem:=nb_elem+1;
    tab(1):=val;

    for i in integer range 1..nb_elem loop
        Put(tab(i));
    end loop;

end loop;
New_Line(1);
Put_Line("Vous ne pouvez plus insérer de valeurs");


end insertion_decalage_tableau;
