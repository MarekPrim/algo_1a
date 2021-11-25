with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure bitmap is
    N_MAX : constant Integer := 10;
    TAB_BIT is array(1..N_MAX) of Boolean;
    TAB_INT is array(1..N_MAX) of Float;

    

    --Ajoute une valeur au tableau
    --valeur: in Float, tab: in out [int], bit: in out [bool], imin: in out int, imax:in out int,nb_el:in out Integer
    --Préconditions: imin>=1 && imax=<N_MAX
    --Postconditions: nbelem' <- nbelem+1
    procedure ajouterValeur(valeur : in Float;imin:in out Integer;imax:in out Integer;tab : in out TAB_INT;bitmap: in out TAB_BIT;nb_el:in out Integer) is
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


    end ajouterValeur;

    --Retourne l'index de la première occurence de val, sinon 0
    --valeur: val:in Float
    --Préconditions:
    --Postconditions: index in 0..N_MAX
    function rechercherFOccu(val : in Float) return Integer is
    begin

    end rechercherFOccu;

    --Suppresion d'une valeur à l'indice index
    --index: in Entier, bit: in out [bool],nb_el:in out Integer
    --Préconditions: index in [1;N_MAX]; nbelem>=1
    --Postconditions: nbelem' <- nbelem-1
    procedure suppression(index: in Integer;bitmap: in out TAB_BIT;nb_el:in out Integer) is
    begin

    end suppression;

    --Affiche le tableau
    --tab:in TAB_INT;bit:in TAB_BIT;nbelem:in Integer;imin: in out int, imax:in out int
    --Préconditions:  
    --Postconditions:  
    procedure afficherTableau(tab:in TAB_INT;bit:in TAB_BIT;nbelem:in Integer;;imin:in out Integer;imax:in out Integer) is
    begin
    
    end afficherTableau;

    --Compacte le tableau
    --tab:in TAB_BIT;bit:in TAB_BIT,imin: in out int, imax:in out int
    --Préconditions:  
    --Postconditions:  
    procedure compacter(tab:in TAB_BIT;bit:in TAB_BIT;imin:in out Integer;imax:in out Integer) is
    begin

    end compacter;

    bitmap : TAB_BIT;
    tableau : TAB_INT;
    nbelem : Integer :=0;
    imax : Integer:=1;
    imin: Integer:=1;

begin

    ajouterValeur(1.0,imin,imax,tableau,bitmap,nbelem);
    ajouterValeur(2.0,imin,imax,tableau,bitmap,nbelem);
    ajouterValeur(3.0,imin,imax,tableau,bitmap,nbelem);
    ajouterValeur(4.0,imin,imax,tableau,bitmap,nbelem);
    ajouterValeur(5.0,imin,imax,tableau,bitmap,nbelem);

    suppression(1,bitmap,imin,imax);
    suppression(3,bitmap,imin,imax);
    suppression(5,bitmap,imin,imax);

    ajouterValeur(2.5,imin,imax,tableau,bitmap,nbelem);
    ajouterValeur(1.5,imin,imax,tableau,bitmap,nbelem);
    ajouterValeur(4.0,imin,imax,tableau,bitmap,nbelem);

    compacter(tableau,bitmap;imin;imax);
    rechercherFOccu(4.0);
    rechercherFOccu(1.0);

    suppression(3,bitmap,imin,imax);
    suppression(4,bitmap,imin,imax);

    rechercherFOccu(4.0);
    
    compacter(tableau,bitmap,imin,imax);
end bitmap;