package P_Bitmap is

    CMAX : constant Integer := 200;
    type Tab_Float is array(1..CMAX) of Float;
    type Tab_Boolean is array(1..CMAX) of BOOLEAN;

-- Ajouter valeur
-- rôle : ajouter une valeur dans le tableau
-- Précondition : le tableau est initialisé
-- Postcondition : le tableau contient la valeur
    procedure ajouter (val : Float ; tabf: in out Tab_Float ;bitmap: in out Tab_Boolean ; imin : in out Integer ; imax : in out Integer ; length : in out Integer);

-- Rechercher valeur
-- rôle : rechercher une valeur
-- Précondition : le tableau est initialisé
-- Postcondition : renvoie la position de la valeur dans le tableau
    function rechercher (val : Float; tabf: in Tab_Float ; bitmap: in Tab_Boolean ;imin : in Integer ; imax : in Integer) return Integer;

-- Supprimer index
-- rôle : supprimer une valeur à un index
-- Précondition : le tableau est initialisé
-- Postcondition : le tableau ne contient plus la valeur
    procedure suppression (ind : Integer ; bitmap: in out Tab_Boolean ;imin : in out Integer ; imax : in out Integer ; length : in out Integer);

-- Afficher tableau
-- rôle : afficher les tableaux entre les indices min et max puis uniquement les valeurs utiles
-- Précondition : le tableau est initialisé
-- Postcondition : affiche les valeurs entre les indices min et max
    procedure afficher (tabf: in Tab_Float ; bitmap: in Tab_Boolean ;imin : in Integer ;imax : in Integer ; length : in Integer);

-- Compacter tableau
-- rôle : 'boucher les trous' entre indice imin et imax
-- Précondition : le tableau est initialisé
-- Postcondition : le tableau est compacté
    procedure compacter (tabf: in out Tab_Float ; bitmap: in out Tab_Boolean ;imin : in Integer ;imax : in out Integer);

end P_Bitmap;
