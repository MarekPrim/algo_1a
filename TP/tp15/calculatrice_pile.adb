with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body Calculatrice_Pile is

procedure initCalculatrice(calc : in out T_Calculatrice) is
begin
    calc.pile := creerPile;
end initCalculatrice;

procedure resetCalculatrice(calc : in out T_Calculatrice) is
begin
    while not isEmpty(calc.Pile) loop
			depiler(calc.Pile);
	end loop;
end resetCalculatrice;

procedure empiler_calculatrice(calc : in out T_Calculatrice; val: in Integer) is
begin
    empiler(calc.Pile, val);
end empiler_calculatrice;

procedure somme(calc : in out T_Calculatrice) is
valeur_d : Integer; --Premier opérande
valeur_g : Integer; --Deuxième opérande
valeur_r : Integer; --Résultat
begin
    if(isEmpty(calc.Pile)) then
        raise Pile_Vide;
    end if;
    if(taille(calc.Pile) < 2) then
        raise Pas_assez_d_elements;
    else
        valeur_d := sommet(calc.Pile);
        depiler(calc.Pile);
        valeur_g := sommet(calc.Pile);
        depiler(calc.Pile);
        valeur_r := valeur_d + valeur_g;
        Put_Line("Le résultat de la somme est : ");
        Put(valeur_r);
        New_Line(1);
        empiler(calc.Pile, valeur_r);
    end if;
end somme;

procedure soustraction(calc : in out T_Calculatrice) is
valeur_d : Integer; --Premier opérande
valeur_g : Integer; --Deuxième opérande
valeur_r : Integer; --Résultat
begin
    if(isEmpty(calc.Pile)) then
        raise Pile_Vide;
    end if;
    if(taille(calc.Pile) < 2) then
        raise Pas_assez_d_elements;
    else
        valeur_d := sommet(calc.Pile);
        depiler(calc.Pile);
        valeur_g := sommet(calc.Pile);
        depiler(calc.Pile);
        valeur_r := valeur_d - valeur_g;
        Put_Line("Le résultat de la soustraction est : ");
        Put(valeur_r);
        New_Line(1);
        empiler(calc.Pile, valeur_r);
    end if;
end soustraction;

procedure multiplication(calc : in out T_Calculatrice) is
valeur_d : Integer; --Premier opérande
valeur_g : Integer; --Deuxième opérande
valeur_r : Integer; --Résultat
begin
    if(isEmpty(calc.Pile)) then
        raise Pile_Vide;
    end if;
    if(taille(calc.Pile) < 2) then
        raise Pas_assez_d_elements;
    else
        valeur_d := sommet(calc.Pile);
        depiler(calc.Pile);
        valeur_g := sommet(calc.Pile);
        depiler(calc.Pile);
        valeur_r := valeur_d * valeur_g;
        Put_Line("Le résultat de la multiplication est : ");
        Put(valeur_r);
        New_Line(1);
        empiler(calc.Pile, valeur_r);
    end if;
end multiplication;


procedure division(calc : in out T_Calculatrice) is
valeur_d : Integer; --Premier opérande
valeur_g : Integer; --Deuxième opérande
valeur_r : Integer; --Résultat
begin
    if(isEmpty(calc.Pile)) then
        raise Pile_Vide;
    end if;
    if(taille(calc.Pile) < 2) then
        raise Pas_assez_d_elements;
    else
        valeur_d := sommet(calc.Pile);
        depiler(calc.Pile);
        valeur_g := sommet(calc.Pile);
        depiler(calc.Pile);
        valeur_r := valeur_g / valeur_d;
        Put_Line("Le résultat de la division est : ");
        Put(valeur_r);
        New_Line(1);
        empiler(calc.Pile, valeur_r);
    end if;
end division;

procedure afficher_calculatrice(calc : in T_Calculatrice) is
begin
    afficher(calc.Pile);
end afficher_calculatrice;

end Calculatrice_Pile;