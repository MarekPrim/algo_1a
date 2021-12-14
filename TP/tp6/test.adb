
with Text_IO; use Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with P_Bitmap; use P_Bitmap;

procedure test is


    tabf : Tab_Float;
    bitmap : Tab_Boolean;
    imin : Integer;
    imax : Integer;
    length : Integer;

    ind : Integer;
begin
    bitmap(1) := False;
    imax := 1;
    imin := 1;
    length := 0;

    -- Ajout des éléments dans le tableau
    ajouter (1.0, tabf, bitmap, imin, imax, length);
    ajouter (2.0, tabf, bitmap, imin, imax, length);
    ajouter (3.0, tabf, bitmap, imin, imax, length);
    ajouter (4.0, tabf, bitmap, imin, imax, length);
    ajouter (5.0, tabf, bitmap, imin, imax, length);

    if(rechercher(1.0, tabf, bitmap, imin, imax) /= 0) then
        Put_Line("OK");
    else
        Put_Line("NOK");
    end if;

    if(rechercher(9.0, tabf, bitmap, imin, imax) = 0) then
        Put_Line("NOK");
    else
        Put_Line("OK");
    end if;

    afficher (tabf, bitmap, imin, imax, length);

    -- Suppression des éléments dans le tableau
    suppression (1, bitmap, imin, imax, length);
    suppression (3, bitmap, imin, imax, length);
    suppression (5, bitmap, imin, imax, length);

    if(rechercher(1.0, tabf, bitmap, imin, imax) /= 0) then
        Put_Line("NOK");
    else
        Put_Line("OK");
    end if;

    afficher (tabf, bitmap, imin, imax, length);

    -- Ajout des éléments dans le tableau après suppression
    ajouter (2.5, tabf, bitmap, imin, imax, length);
    ajouter (1.5, tabf, bitmap, imin, imax, length);
    ajouter (4.0, tabf, bitmap, imin, imax, length);

    afficher (tabf, bitmap, imin, imax, length);

    -- Compacter le tableau 
    compacter (tabf, bitmap, imin, imax);

    afficher (tabf, bitmap, imin, imax, length);

    -- Recherche de 4.0 dans le tableau et affichage de l'indice obtenu
    ind := rechercher(4.0, tabf, bitmap, imin, imax);
    Put(ind);
    New_Line(1);

    -- Recherche de 1.0 dans le tableau et affichage de l'indice obtenu
    ind := rechercher(1.0, tabf, bitmap, imin, imax);
    Put(ind);
    New_Line(1);

    suppression (3, bitmap, imin, imax, length);
    suppression (4, bitmap, imin, imax, length);

    afficher (tabf, bitmap, imin, imax, length);


    -- Recherche de 4.0 dans le tableau et affichage de l'indice obtenu
    ind := rechercher(4.0, tabf, bitmap, imin, imax);
    Put(ind);
    New_Line(1);


    compacter (tabf, bitmap, imin, imax);

    afficher (tabf, bitmap, imin, imax, length);
end test;