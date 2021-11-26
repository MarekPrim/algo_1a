with Ada.Text_IO; use Ada.Text_IO;
with TEXT_IO; use TEXT_IO; 
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

--R0 Remplir une chaine de caractères avec les caractères ne vérifiant pas $[a-zA-Z] d'une chaine de caractère préalablement initialisé par l'utilisateur

--R1 Comment remplir une chaine de caractères avec les caractères ne vérifiant pas $[a-zA-Z] d'une chaine de caractère préalablement initialisé par l'utilisateur
--  R1.1    Initialiser une chaine de caractères            --chaine out chaine, l_chaine out entier
--  R1.2    Parcourir la chaine de caractères               --chaine in chaine, l_chaine in entier, current out caractère
--  chaine_2<-chaine_vide;
--  l
--  R1.3    Ajouter le caractère courant à une autre chaine si ce caractère n'est pas [a-zA-Z]      --chaine_2 in out chaine, l_chaine_2 in out entier, current in caractère
--  R1.4    Afficher la chaine de caractères avec ![a-zA-Z]     --chaine_2 in chaine, l_chaine_2 in entier

--R2 Comment ajouter le caractère courant à une autre chaine si ce caractère n'est pas [a-zA-Z]
--  Si current n'est pas [a-zA-Z] faire
--      chaine_2(l_chaine_2+1)<-current
--      l_chaine_2<-l_chaine_2+1
--  Fin Si

--R3 Comment savoir que current n'est pas [a-zA-Z]
--  Si code_ascii(current) n'est pas dans [65,122] //Code caractère de A et z
--      current n'est pas dans [a-zA-Z]
--  fin si

procedure supprime_caractere_non_lettre is

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

    chaine:String(1..L_MAX);
    chaine_2:String(1..L_MAX);

    l_chaine : Integer;
    l_chaine_2 : Integer:=0;

begin

-- Récupération fiable et conviviale de chaine et longueur_chaine auprès de l'utilisateur via le périphérique clavier
    loop
    get_line(chaine,l_chaine);
    exit when l_chaine>=1;
    end loop;
    --{l_chaine>=1}

    for i in 1..l_chaine loop
        if(Character'POS(chaine(i)) not in 65..122) then
            chaine_2(l_chaine_2+1):=chaine(i);
            l_chaine_2:=l_chaine_2+1;
        end if;
    end loop;

    afficherChaine(l_chaine_2,chaine_2);

end supprime_caractere_non_lettre;

