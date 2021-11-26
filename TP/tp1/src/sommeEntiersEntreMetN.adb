-- Calcule la somme des entiers naturels
-- compris entre deux entiers naturels
-- m et n
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
procedure sommeEntiersEntreMetN is
   -- Variables
   -- N : in Entier
   -- M : in Entier
   -- Somme : out Entier
   m : integer;
   n : integer;
   somme : Integer := 0;

begin
   --Calculer la somme des entiers compris entre m et n
	-- m et n sont lus au clavier de mani\u00e8re fiable et conviviale
	-- avec m<=n
		--Lire les entiers m et n de mani\u00e8re fiable et conviviale
		--LectureFiable(m) out M
 --Ecrire("Veuillez rentrer m")
 Put_Line("Veuiller rentrez m");
 Get(m);
			--Lire(m)
		--LectureFiable(n) jusqu'\u00e0 n>=m out N
			--Répéter
				--Ecrire("Veuillez rentrez n, n plus grand ou \u00e9gal \u00e0 m")
				--Lire(n)
     --Jusqu'à n>= m

   loop
      Put_Line("Veuillez rentrer n, n plus grand ou égal que m");
      Get(n);
      exit when n>=m;
   end loop;



			--{m<=n}
		--Calculer la somme des entiers compris entre m et n  in M,N
			--CalculSommeEntreMetN
			--It"rer de m \u00e0 n pour calculer la somme --out Somme
				--Pour i de M \u00e0 N
				--Attribuer \u00e0 Somme Somme+i
					--Somme<-Somme+i
				--Fin Pour
   for i in Integer range m..n loop
      somme := somme + i;
   end loop;

		--Afficher la somme des entiers compris entre m et n -- in Somme
			--AffichageSomme
			--Afficher la somme obtenue apr\u00e8s calcul
				--Ecrire(Somme)
  Put_Line("La somme des entiers compris entre m et n est");
  Put(somme);
   null;
end sommeEntiersEntreMetN;
