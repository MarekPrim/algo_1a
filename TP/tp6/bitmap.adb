with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;   use Ada.Float_Text_IO;

procedure bitmap is
    N_MAX : constant Integer := 10;
    type TAB_BIT is array (1 .. N_MAX) of Boolean;
    type TAB_INT is array (1 .. N_MAX) of Float;

    --Ajoute une valeur au tableau
    --valeur: in Float, tab: in out [int], bit: in out [bool], imin: in out int, imax:in out int,nb_el:in out Integer
    --Préconditions: imax<N_MAX
    --Postconditions: nbelem' <- nbelem+1
    procedure ajouterValeur
       (valeur : in     Float; imin : in out Integer; imax : in out Integer;
        tab : in out TAB_INT; bitmap : in out TAB_BIT; nb_el : in out Integer;
        index  : in out Integer)
    is
        shouldAdd : Boolean := False;
    begin
        --R0 Ajouter une valeur dans un tableau associé à une bitmap

        --R1 Comment ajouter une valeur dans un tableau associé à un bitmap
        --R1.1  Parcourir le tableau de imin à imax
        --          Si libre, insérer
        --              tab(i)<-valeur
        --              index<-i
        --          Sinon, essayer d'insérer avant imin
        --          Sinon, essayer d'insérer après imax
        --R1.2  Incrémenter le nombre d'éléments dans le tableau
        --R1.3  Modifier la bitmap
        --R1.4  Modifier imin et imax si besoin

        --R2    Comment essayer d'insérer avant imin
        --          ajouterValeur(valeur,imin-1,imax,tab,bitmap,nbel);
        --          index<-imin-1

        --R2    Comment essayer d'insérer après imax
        --          ajouterValeur(valeur,imin,imax+1,tab,bitmap,nbel);
        --          index<-imax+1

        --R3    Comment modifier la bitmap
        --          bitmap(index)<-True

        --R2    Comment modifier imin et imax si besoin
        --          imin<-min(imin,index)
        --          imax<-max(index,imax);

        for i in imin .. imax loop
            if not shouldAdd and then not bitmap (i) then
                tab (i)    := valeur;
                bitmap (i) := True;
                shouldAdd  := True;
            end if;
        end loop;

        if not shouldAdd then
            for i in reverse 1 .. (imin - 1) loop
                if not shouldAdd and then not bitmap (i) then
                    for j in i .. (imin - 1) loop
                        tab (j)    := tab (j + 1);
                        bitmap (j) := bitmap (j + 1);
                    end loop;
                    tab (imin - 1)    := valeur;
                    bitmap (imin - 1) := True;
                    shouldAdd         := True;
                    imin              := imin - 1;
                end if;
            end loop;
        end if;

        if not shouldAdd then
            for i in imax .. N_MAX loop
                if not shouldAdd and then not bitmap(i) then
                    for j in reverse (imax + 1) .. N_MAX loop
                        tab (j)    := tab (j - 1);
                        bitmap (j) := bitmap (j - 1);
                    end loop;
                    tab (imax + 1)    := valeur;
                    bitmap (imax + 1) := True;
                    shouldAdd         := True;
                    imax              := imax + 1;
                end if;
            end loop;
        end if;

        if shouldAdd then
            nb_el := nb_el + 1;
        end if;

    end ajouterValeur;

    --Retourne l'index de la première occurence significative de val, sinon 0
    --valeur: val:in Float
    --Préconditions:
    --Postconditions: index in 0..N_MAX
    function rechercherFOccu
       (val  : in Float; tab : in TAB_INT; bitmap : in TAB_BIT;
        imin : in Integer; imax : in Integer) return Integer
    is
    begin

    --R0 Retourne l'index de la première occurence significative de val, sinon 0

    --R1    Comment retrouver la première occurence  significative dans un tableau
        -- R1.1 Parcourir le tableau
        -- R1.2 Vérifier la valeur courante significative par rapport à la valeur recherchée
        -- R1.3 Retourner l'index trouvé

        -- R2 Comment vérifier la valeur significative par rapport à la valeur recherchée
        --  R2.1 Si bitmap(i) ET current = valeur
        --          index<-i
        --       Fin si

        for i in imin .. imax loop
            if (bitmap (i) and val = tab (i)) then
                return i;
            else
                null;
            end if;
        end loop;
        return 0;
    end rechercherFOccu;

    --Suppresion d'une valeur à l'indice index
    --index: in Entier, bit: in out [bool],nb_el:in out Integer
    --Préconditions: index in [1;N_MAX]; nbelem>=1
    --Postconditions: nbelem' <- nbelem-1
    procedure suppression
       (index : in Integer; bitmap : in out TAB_BIT; nb_el : in out Integer;
        imin  : in out Integer; imax : in out Integer)
    is
    begin

        --R0 Supprimer une valeur à l'index index

        --R1 Comment supprimer une valeur à l'index index
        -- R1.1 bitmap(index)<-false
        -- R1.2 Si besoin, mettre à jour imin/imax

        --R2    Comment mettre à jour imin/imax
        --R2.1      Si index=imin alors
        --              imin<-index
        --          Sinon si index=imax alors
        --              imax<-index
        --          Sinon
        --              Z
        --          Fin Si
        if ((index not in 1 .. N_MAX) or (nb_el < 1)) then
            raise Constraint_Error;
        end if;
        bitmap (index) := False;
        nb_el          := nb_el - 1;
        if (index = imax) then
            imax := index;
        elsif (index = imin) then
            imin := index;
        else
            null;
        end if;

    end suppression;

    --Affiche le tableau
    --tab:in TAB_INT;bit:in TAB_BIT;nbelem:in Integer;imin: in out int, imax:in out int
    --Préconditions:
    --Postconditions:
    procedure afficherTableau
       (tab  : in TAB_INT; bit : in TAB_BIT; imin : in Integer;
        imax : in Integer)
    is
    begin
        New_Line (1);
        Put_Line ("Indice min");
        Put (imin);
        Put_Line ("Indice max");
        Put (imax);
        Put_Line ("==================");
        Put_Line ("Indice    [Bool]  [Int]");
        Put_Line ("==================");

        for i in imin .. imax loop
            Put (i);
            Put ("   ");
            if (bit (i) = True) then
                Put ("true   ");
            else
                Put ("false  ");
            end if;
            Put (tab (i), 2);
        end loop;
        Put_Line ("==================");

    end afficherTableau;

    --Affiche le tableau
    --tab:in TAB_INT;bit:in TAB_BIT;nbelem:in Integer;imin: in out int, imax:in out int
    --Préconditions:
    --Postconditions:
    procedure afficherTableauSiginificatif
       (tab : in TAB_INT; bit : in TAB_BIT; nbelem : in Integer)
    is
    begin
        New_Line (1);
        Put ("Nb effectifs d'elements : ");
        Put (nbelem);
        Put_Line ("==================");
        for i in 1 .. N_MAX loop
            if (bit (i)) then
                Put (tab (i), 2);
            else
                null;
            end if;
        end loop;
    end afficherTableauSiginificatif;

    --Compacte le tableau
    --tab:in TAB_BIT;bit:in TAB_BIT,imin: in out int, imax:in out int
    --Préconditions:
    --Postconditions:
    procedure compacter
       (tab  : in out TAB_INT; bit : in out TAB_BIT; imin : in out Integer;
        imax : in out Integer)
    is
    begin

        --R0 Compacter un tableau

        --R1 Comment compacter un tableau
        --R1.1   Parcourir le tableau de imin à imax
        --R1.2   Si la valeur courante n'est pas significative, alors décaler les valeurs suivantes d'un pas de 1 vers la gauche

        --R2    Comment savoir si la valeur n'est pas significative et décaler
        --R2.1      Si bitmap(i)= false alors
        --              Décaler
        --          Sinon
        --              Z
        --          Fin si

        --R3    Comment décaler
        --R3.1      Parcourir le tableau de index_non_significative à imax
        --              bitmap(i)<-bitmap(i+1)
        --              tab(i)<-tab(i+1)

        for i in imin .. imax loop
            if (bit (i) = False) then
                for k in i .. imax loop
                    imin    := imin - 1;
                    imax    := imax - 1;
                    bit (k) := bit (k + 1);
                    tab (k) := tab (k + 1);
                end loop;
            else
                null;
            end if;
        end loop;

    end compacter;

    bitmap  : TAB_BIT;
    tableau : TAB_INT;
    nbelem  : Integer := 0;
    imax    : Integer := 1;
    imin    : Integer := 1;
    index   : Integer := 0;

begin

    bitmap (1) := True;

    ajouterValeur (1.0, imin, imax, tableau, bitmap, nbelem, index);
    ajouterValeur (2.0, imin, imax, tableau, bitmap, nbelem, index);
    ajouterValeur (3.0, imin, imax, tableau, bitmap, nbelem, index);
    ajouterValeur (4.0, imin, imax, tableau, bitmap, nbelem, index);
    ajouterValeur (5.0, imin, imax, tableau, bitmap, nbelem, index);

    suppression (1, bitmap, nbelem, imin, imax);
    suppression (3, bitmap, nbelem, imin, imax);
    suppression (5, bitmap, nbelem, imin, imax);

    ajouterValeur (2.5, imin, imax, tableau, bitmap, nbelem, index);
    ajouterValeur (1.5, imin, imax, tableau, bitmap, nbelem, index);
    ajouterValeur (4.0, imin, imax, tableau, bitmap, nbelem, index);

    compacter (tableau, bitmap, imin, imax);
    Put (rechercherFOccu (4.0, tableau, bitmap, imin, imax));
    Put (rechercherFOccu (1.0, tableau, bitmap, imin, imax));

    suppression (3, bitmap, nbelem, imin, imax);
    suppression (4, bitmap, nbelem, imin, imax);

    Put (rechercherFOccu (4.0, tableau, bitmap, imin, imax));

    compacter (tableau, bitmap, imin, imax);
    afficherTableau (tableau, bitmap, imin, imax);
    afficherTableauSiginificatif (tableau, bitmap, nbelem);
end bitmap;
