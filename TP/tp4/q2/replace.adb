with Ada.Text_IO; use Ada.Text_IO;
with TEXT_IO; use TEXT_IO; 
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

--R0 Remplace tous les caractères 'A' d'une chaine préalablement initialisé avec sa longueur, par le caractère 'B'

--R1 Comment remplacer tous les caractères 'A' par 'B' dans une chaine préalablement initialisé
--  R1.1 Initialiser la chaine de caractères        --chaine out Chaine, longueur_chaine out Entier;
--  R1.2 Parcourir la chaine de caractère                               --chaine in Chaine, longueur_chaine in Entier, current out Caractère
--  R1.3 Remplacer le caractère courant par 'B' si il est égal à 'A'    --current in Caractère, chaine in out Chaine 
--  R1.4 Afficher la chaine de caractères

--R2 Comment parcourir la chaine
--  Pour i allant de 1 à longueur_chaine faire  --i in Entier
--      R1.3
--  Fin Pour

--R2 Comment remplacer le caractère courant par 'B' si il est égal à 'A' --chaine in out Chaine, i in Entier 
--  Si chaine(i) = 'A' alors
--      chaine(i)<- 'B'
--  Sinon
--      Rien
--  Fin Si




procedure replace is

L_MAX : constant Integer := 50;

procedure afficherChaine
 (N:in Integer;
 chaine : in String)is
begin
    Put_Line("Chaine : ");
    for j in integer range 1..N loop
        Put(chaine(j));
    end loop;
    New_Line(1);
end afficherChaine;

    

    chaine : String(1..L_MAX);
    longueur_chaine : Integer;
    test : Integer;

begin

    -- Récupération fiable et conviviale de chaine et longueur_chaine auprès de l'utilisateur via le périphérique clavier
    loop
    get_line(chaine,longueur_chaine);
    exit when longueur_chaine>=1;
    end loop;
    --{longueur_chaine>=1}

    for i in 1..longueur_chaine loop
        if(chaine(i)='A')then
            chaine(i):='B';
        else
            null;
        end if;
    end loop;


    --afficherChaine(longueur_chaine,chaine);

    test := Character'POS('A');
    put(test);


end replace;
