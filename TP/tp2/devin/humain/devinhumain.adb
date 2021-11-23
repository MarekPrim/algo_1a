with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure devinHumain is
-- Fait deviner à la machine par dichotomie un nombre entre 1 et 999 choisi
-- "aléatoirement" par l'utilisateur, en affichant le nombre de tentatives
-- en fin de partie

    nb:Integer := 0 ; --Aléatoire humain
    trouve: boolean := false ; --Nombre trouvé ?
    choix : Integer; -- Choix machine
    nbTent : Integer :=0; --Nombre tentatives avant bonne hypothèse
    decision: Character;
    high : Integer :=999;
    low : Integer :=1;
begin
-- R0 Faire jouer le jeu du devin à la machine

-- R1 Comment faire jouer la machine
--  R1.1 Demander à l'utilisateur un nombre entre 1 et 999              --nb: entier out
--  R1.2 Faire rechercher le nombre par la machine via dichotomie       --nb: entier in, trouve: boolean out, low; entier in out, high : entier in out

-- R2 Comment faire rechercher à la machine
--  trouve<-faux
--  haut<-999
--  low<-1
--  Tant que NON(trouve) faire
--      R2.1 Proposer K à l'utilisateur                                 --decision: caractere out, K: entier in
--      R2.2 Traiter K en fonction de la réponse utilisateur            --K: entier in, nbTent: entier in out;low; entier in out, high : entier in out
--  Fin TQ

-- R3 Comment proposer K
--  K<-(low+high)/2
--  nbTent<-nbTent+1
--  Ecrire(K, "?")
--  Récuperer réponse utilisateur                                       --decision: caractere out

-- R4 Commenr récuperer réponse utilisateur
--  Répéter                                                             --decision: caractere in,trouve :boolean in out
--      Ecrire("(>) plus grand ?, (<) plus petit ?, (=) trouvé ?");
--      Lire(decision)

-- R3 Comment traiter K en fonction de la réponse utilisateur
--  Selon decision                                                      --low; entier in out, high : entier in out, trouve :boolean in out
--      '>'=>
--          high<-K
--      '<'=>
--          low<-k+1
--      '='=>
--          trouve<-vrai
--      autres=>
--          Ecrire("option invalide")
--  fin selon
        

loop
    Put_Line("Votre nombre");
    Get(nb);
    exit when (nb<=999 and nb>=1);
    end loop;
loop
    choix:=(low+high)/2;
    Put_Line("Votre chiffre est-il :");
    Put(choix);
    nbTent:=nbTent+1;
    Put_Line(">) plus grand ?, (<) plus petit ?, (=) trouvé ?");
    Get(decision);
    case decision is
        when '=' =>
            trouve:=true;
        when '>' =>
            low:=choix+1;
        when '<' =>
            high:=choix;
        when others =>
            Put_Line("Option invalide");
    end case;
exit when trouve;
end loop;
Put_Line("J'ai trouvé votre chiffre, c'est le");
Put(choix);
Put_Line("Et je l'ai trouvé en");
Put(nbTent);
Put_Line(" tentatives");

end devinHumain;