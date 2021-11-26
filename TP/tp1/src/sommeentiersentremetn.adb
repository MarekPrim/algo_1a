-- Calcule la somme des entiers naturels
-- compris entre deux entiers naturels
-- m et n
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
procedure sommeentiersentremetn is
   -- Variables
   -- N : in Entier
   -- M : in Entier
   -- Somme : out Entier
   m : integer;
   n : integer;
   somme : Integer := 0;

begin
   --R0: Calculer la somme des entiers compris entre m et n
	-- m et n sont lus au clavier de mani\u00e8re fiable et conviviale
	-- avec m<=n
		--R1 :Lire les entiers m et n de mani\u00e8re fiable et conviviale
		--A11:LectureFiable(m) out M
 --Ecrire("Veuillez rentrer m")
 Put_Line("Veuiller rentrez m");
 Get(m);
			--Lire(m)
		--R2:LectureFiable(n) jusqu'\u00e0 n>=m out N
			--A21: Répéter
				--Ecrire("Veuillez rentrez n, n plus grand ou \u00e9gal \u00e0 m")
				--Lire(n)
     --Jusqu'à n>= m

   loop
      Put_Line("Veuillez rentrer n, n plus grand ou égal que m");
      Get(n);
      exit when n>=m;
   end loop;



			--{m<=n}
		--R2:Calculer la somme des entiers compris entre m et n  in M,N
			--R21:CalculSommeEntreMetN
			--R211:It"rer de m \u00e0 n pour calculer la somme --out Somme
				--A2111:Pour i de M \u00e0 N
				--Attribuer \u00e0 Somme Somme+i
					--Somme<-Somme+i
				--Fin Pour
   for i in Integer range m..n loop
      somme := somme + i;
   end loop;

		--R3:RAfficher la somme des entiers compris entre m et n -- in Somme
			--A3:AffichageSomme
			--A3:Afficher la somme obtenue apr\u00e8s calcul
				--Ecrire(Somme)
  Put_Line("La somme des entiers compris entre m et n est");
  Put(somme);
   null;
end sommeentiersentremetn;
