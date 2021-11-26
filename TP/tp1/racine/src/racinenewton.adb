with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
-- Calcule la racine d'un nombre x avec la m�thode de Newton
-- ak+1 = 0.5*(ak + x/ak); avec a0 = 1.0
-- avec arr�t quand |ak+1 - ak--|< E;
-- E et x lus au clavier de mani�re fiable et
procedure racinenewton is
   --Variables
   x : Float ; --Valeur dont la racine doit �tre d�termin�e
   E : Float ; --Pr�cision du calcul souhait�e
   a : Float ; --Valeur de ak+1
   aP : Float; --Valeur de ak

   --Constantes
   a0 : constant Float := 1.0;
begin
   --R0 : Calculer racine de X avec m�thode de Newton avec E lu au clavier
   --A0 : Lire X fiable/conviviale //Deja effectue
   Put_Line("Veuillez rentrer x");
   Get(x);
   --A1 : Lire E fiable/conviviale //Deja effectue
   Put_Line("Pr�cision souhait�e");
Get(E);
   --R1 : It�rer la suite a tant que NON(|ak+1-ak|<E)
   --  A21 : R�p�ter calculer terme suivant
   --  R2 : Calculer le terme suivant
   --   A211  : ak+1<-0.5(ak + x/ak)
   -- Jusqu'a  |ak+1-ak| < E

   aP := a0;
   a := a0;
   loop
      aP := a;
      a := 0.5 * (aP + x/aP);
      exit when abs(a-aP)<E;
   end loop;
      --R3 : Afficher Rac(x) //Deja effectue
   -- A31 : Ecrire racine x
   Put_Line("Racine de x:");
   Put(a);
   null;

   end racinenewton;
