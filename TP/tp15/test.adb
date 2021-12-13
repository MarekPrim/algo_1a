with Pile; 
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure test is
 package pile_entiers is new Pile(T=>Integer,Image => Integer'Image);
 use pile_entiers;
 p : pile_entiers.T_Pile;
begin
    p := creerPile;
    empiler(p,2);
    empiler(p,3);
    empiler(p,4);

    afficher(p);

    depiler(p);
    afficher(p);
    Put(taille(p));

    EXCEPTION
    when Pile_Vide => Put_Line("Tentative d'accès/modification sur une pile vide");
    when others => Put_Line("Erreur inconnue");

end test;