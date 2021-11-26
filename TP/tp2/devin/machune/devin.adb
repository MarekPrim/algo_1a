with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Alea; use Alea;
procedure devin is
-- Joueur au jeu du devin où la machine détermine un nombre aléatoire entre 1 et 100 et l'utilisateur doit le retrouver
-- en proposant un entier au clavier, auquel la machine répondre "g" (trop grand), "p" (trop petit), "t" (trouvé)
-- La partie se termine quand l'utilisateur trouve K, en affichant le nombre de tentatives

    nb:Integer := 0 ; --Aléatoire machine
    trouve: boolean := false ; --Nombre trouvé ?
    choix : Integer; -- Choix utilisateur
    nbTent : Integer :=0;--Nombre tentatives avant bonne hypothèse
begin

-- R0 Jouer au jeu du devin

-- R1 Comment joueur au jeu du devin
--  R1.1  Faire choisir à la machine un nombre aléatoire        -- nb: entier out
--  R1.2  Faire deviner à l'utilisateur                         -- nb: entier in, trouve : boolean out, nbTent : entier out

-- R2 Comment choisir un nombre aléatoire
--  nb<-alea

-- R2 Comment faire deviner à l'utilisateur
--  trouve<-faux
--  nbTent<-0
--  repeter
--      R2.1 demander à l'utilisateur son nombre                -- choix : entier out
--      R2.2 confronter choix à nb                              -- choix : entier in, nb : entier in, trouve : boolean out
--  jusqu'à trouve

--  R3 Comment demander à l'utilisateur son nombre
--      Ecrire("Votre hypothèse ?")
--      Lire(choix)                                             --choix : entier out, nbtent : entier in out
--      nbTent<-nbTent+1

-- R3 Comment confronter choix à nb
--  Si nb=choix alors                                           --choix : entier out, nb : entier in, trouve : boolean in out
--      trouve<-vrai
--  Sinon Si nb>choix
--      Ecrire("p")
--  Sinon
--      Ecrire("g")
--  FinSi

nb:= Alea_1_100;
loop 
    loop
        Put_Line("Votre hypothèse ?");
        Get(choix);
        exit when choix<=999 and choix>=1;
    end loop;
    nbTent:=nbTent+1;
    if nb=choix then
        trouve:=true;
    elsif nb>choix then
        Put_Line("p");
    else
        Put_Line("g");
    end if;
    exit when trouve;
end loop;

Put_Line("Le nombre à trouver était");
Put(nb);
Put_Line(" Et vous l'avez trouvé en");
Put(nbTent);
Put_Line(" tentatives");

end devin;