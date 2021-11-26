
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure drone is
-- Permettre à l'utilisateur de commander un drone via un menu, drone ne pouvant passer à une altitude de plus de 4 et qui ne va à une
-- altitude négative
-- Le drone ne peut monter et descendre que si il a préalablement été démarré via le menu

    altitude:Integer := 0 ; --Altitude du drone
    demarre: boolean := false ; --Drone démarré ?
    choix : Character; -- Choix utilisateur

begin
--R0 Commander un drone (préalabelemnt démarré) sur son axe vertical via un menu commandé par l'utilisateur
-- via des saisies clavier

-- R1 : Comment commander un drone (préalabelemnt démarré) sur son axe vertical via un menu commandé par l'utilisateur
-- via des saisies clavier
-- Répéter
--  R1.1 Afficher le menu 
--  R1.2 Récuperer la saisie utilisateur                        --choix: caractere out
--  R1.3 Effectuer l'action sur le drone en conséquence         --choix: caractere in
--Tant que choix non valide ou choix /= "q" ou altitude <=4     --choix : carac in, valide: boolean out

-- R2 : Comment afficher le menu
--  Ecrire("Menu : (d)émarrer (m)onter de(s)cendre (q)uitter")
--  Lire(choix)                                                 --choix: caractere out

-- R3 : Comment decider choix non valide
--  Si choix différent de "m","s" ou "d" alors                  --xhoix : caractere in
--     Ecrire("Option inconnue")
--  Sinon
--      Rien
--  Fin Si

-- R2 : Comment effectuer l'action choisie par l'utilisateur sur le drone
                                      --choix: carac in, demaree: boolean in, altitude : entier in out
--          Selon choix
--              "q" => rien
--              "m" => 
--                  Si demarre
--                      altitude<-altitude+1
--                      Ecrire(altitude)
--                  Sinon
--                      Ecrire("Démarrer le drone");
--                  Fin Si
--              "s" =>
--                  Si altitude-1>0
--                      Ecrire("Le drone ne peut pas aller plus bas")
--                  Sinon Si demarre
--                      altitude<-altitude-1
--                      Ecrire(altitude)
--                  Sinon
--                      Ecrire("Démarrer le drone");
--                  Fin Si
--              Autres=> Ecrire("L'option selectionnée n'est pas valide")

loop
    Put_Line("Menu : (d)émarrer (m)onter de(s)cendre (q)uitter");
    Get(choix);

    case choix is
        when 'q' =>
            null;
        when 'd' =>
            demarre := true;
            Put_Line("Drone démarré");
        when 'm' =>
            if demarre then
                altitude:=altitude+1;
                Put_Line("Altitude:");
                Put(altitude);
            else
                Put_Line("Démarrer le drone avant de commencer");
            end if;
        when 's' =>
            if(altitude-1=0) then
                Put_Line("Le drone ne peut pas aller plus bas");
            elsif demarre then
                altitude:=altitude-1;
                Put_Line("Altitude:");
                Put(altitude);
            else
                Put_Line("Démarrer le drone avant de commencer");
            end if;
        when others =>
            Put_Line("Paramètre incorrect");
    end case;
    exit when choix='q' or altitude>=5;
end loop;
Put_Line("Programme fermé");
end drone;