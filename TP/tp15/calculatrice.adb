with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Pile;
with Calculatrice_Pile; use Calculatrice_Pile;

-- Teste le TAD LinkedList
procedure calculatrice is
	
    package pileentiers is new Pile(T=>Integer,Image=>Integer'Image);
    use pileentiers;

	-- nom: Executer_Calcul
    -- sémantique: Empile un élément dans la pile générique
    -- paramètres: 	command : in String; 	-- la command à effectuer
    --				longeur : in Integer;	-- longeur de la command
    --         		calc : in out calculatrice; 	-- la pile dans lequel on insère l’élément
    -- précondition: rien
    -- postcondition: rien
    -- exceptions: Pile_Vide
	procedure Executer_Calcul(cmd : in String; lg : Integer; calc : in out T_Calculatrice) is
	begin
		if lg /= 1 or (cmd(cmd'First) /= '+' and cmd(cmd'First) /= '-'
				and cmd(cmd'First) /= '/' and cmd(cmd'First) /= '*') then
			Put_Line("!!commande invalide!!");
		else
			begin
				case cmd(cmd'First) is
					when '+' =>
						somme(calc);
					when '-' =>
						soustraction(calc);
					when '*' =>
						multiplication(calc);
					when '/' =>
						division(calc);
					when others => Put_Line("Undefined Behavior");
				end case;
			exception
				when Pas_assez_d_elements => Put_Line("Pas assez d'éléments dans la pile");
			end;
		end if;
	end Executer_Calcul;
	
	calc : T_Calculatrice;	-- Pile d'entiers
	command : STRING(1..10);		-- nombre, opération
	longeur : Integer;				-- nombre entier de caractères de la command
	valeur : Integer;					-- l'entier saisi dans la command
	arret : Boolean;		-- boolean indiquant la fin de la boucle
	
begin
	Put_Line("Programme implémentant une calculatrice grâce à une pile.");
	
	-- R1: Créer une pile vide
	 initCalculatrice(calc);
	
	-- R1: Utiliser la calculatrice
	arret := false;
	while not arret loop
		Put_Line("Entrez une command (+, -, * ou /) ou un entier (0, 1, ...)");
		Put_Line("Tapez 'RST' pour réinitialiser à 0 ou 'END' pour quitter le programme");
        Put_Line("Etat de la pile : ");
        afficher_calculatrice(calc);
		Get_Line(command, longeur);
		
		if longeur = 3 and command(command'First..3) = "END" then
			arret := TRUE;
		else
			if longeur = 3 and command(command'First..3) = "RST" then
				resetCalculatrice(calc);
			else
				begin
					valeur := Integer'Value(command(1..longeur));
					empiler_calculatrice(calc, valeur);
					Put("La valeur ");
					Put(valeur, longeur);
					Put_Line(" a été empilé.");
				exception
					when Constraint_Error => Executer_Calcul(command, longeur, calc);
					when Pile_Pleine => Put_Line("La pile est pleine.");
					when Pile_Vide => Put_Line("Pas assez d'éléments pour effectuer le calcul.");
					when others => Put_Line("Erreur inconnue.");
				end;
			end if;
		end if;
		New_Line;
	end loop;
end calculatrice;