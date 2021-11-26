with Ada.Text_IO; use Ada.Text_IO;
with TEXT_IO; use TEXT_IO; 
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

--R0 Supprimer d'une chaine de caractère préalablement initialisé par l'utilisateur les caractères ne vérifiant pas $[a-zA-Z] 

--R1 Comment supprimer d'une chaine de caractère préalablement initialisé par l'utilisateur les caractères ne vérifiant pas $[a-zA-Z] 
--  R1.1    Initialiser la chaine de caractères
--  R1.2    Parcourir la chaine
--  R1.3    Supprimer la caractère courant si le caractère courant n'est pas [a-zA-Z]
--  R1.4    Afficher la chaine de caractères

--R2 Comment supprimer la caractère courant si le caractère courant n'est pas [a-zA-Z]
--  R2.1    Décaler vers la gauche d'un pas tous les caractères à droite du caractère courant
--  R2.2    Décrémenter la longueur de la chaine

--R3 Comment décaler vers la gauche d'un pas tous les caractères à droite du caractère courant
--  Pour i allant de index à longueur_chaine-1 faire
--      chaine(i)<-chaine(i+1)
--  Fin Pour
--  longueur_chaine<-longueur_chaine-1

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
    
    l_chaine : Integer;

begin

-- Récupération fiable et conviviale de chaine et longueur_chaine auprès de l'utilisateur via le périphérique clavier
    loop
    get_line(chaine,l_chaine);
    exit when l_chaine>=1;
    end loop;
    --{l_chaine>=1}

    for i in 1..l_chaine loop
        if(chaine(i) not in 'a'..'z') then
            for j in i..l_chaine loop
                chaine(i):=chaine(i+1);
            end loop;
            afficherChaine(l_chaine,chaine);
            l_chaine:=l_chaine-1;
        end if;
    end loop;

    Put(l_chaine);
    afficherChaine(l_chaine,chaine);

end supprime_caractere_non_lettre;

