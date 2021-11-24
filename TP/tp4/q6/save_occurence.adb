with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

--R0 Sauvegarde dans un tableau le nombre d'occurences des lettre a à z dans une chaine préalablement initialisée

--R1 Comment sauvegarder dans un tableau le nombre d'occurences des lettre a à z dans une chaine préalablement initialisée
--  R1.1    Initialiser la chaine
--  R1.2    Parcourir la chaine
--  R1.3    Si la lettre est [a-z], incrémenter son nombre d'occurences
--  R1.4    Afficher le tableau de nombres d'occurences

--R2    Comment savoir si la lettre est [a-z]
--  Si chaine(i) pas dans ['a','z'] alors
--      Incrémenter son nombre d'occurences
--  Sinon
--      Rien
--  Fin si

--R3    Comment incrémenter son nombre d'occurences
--  tab_occurences(code_ascii(current) - 65) := tab_occurences(code_ascii(current) - 65) +1;


procedure Save_Occurence is

   N_MAX : constant Integer := 20;
   ALEPH : constant Integer := 27;
    TYPE Tab_Entiers is array(1..ALEPH) of Integer;
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

   -- Variables
   
   chaine : String(1..N_MAX);
   tab_occurences : Tab_Entiers;
   longueur_chaine : Integer; --Variable lu au clavier

begin

for j in 1..ALEPH loop
    tab_occurences(j):=0;
end loop;

loop
    get_line(chaine,longueur_chaine);
    exit when longueur_chaine>=1;
    end loop;

for i in 1..longueur_chaine loop
    if(chaine(i) in 'a'..'z') then
    --Put(Character'POS(chaine(i))-96);
        tab_occurences(Character'POS(chaine(i))-96) := tab_occurences(Character'POS(chaine(i))-96)+1;
    end if;
end loop;

for i in 1..ALEPH loop
    Put(Character'VAL(i+96));
    Put(" : ");
    Put(tab_occurences(i));
    New_Line(1);
end loop;
end Save_Occurence;