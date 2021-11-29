with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure rectab is

N_MAX : constant Integer := 6;
type tableau is array(1..N_MAX) of Integer;

-- Affiche de manière récursive un tableau de droite à gauche

procedure afficherRTL(tab:in tableau;index:in Integer) is
    i : Integer;
begin
   if(index>0) then
        i:=index-1;
        Put(tab(index));
        afficherRTL(tab,i);
    end if;
end afficherRTL;

--Affiche un tableau de gauche à droite de manière récursive
procedure afficherLTR(tab:in tableau;index:in Integer) is
    i : Integer;
begin
    if(index <= N_MAX) then
        i:=index+1;
        Put(tab(index));
        afficherLTR(tab,i);
    end if;
end afficherLTR;

-- Calcule de manière récursive l'indice d'une valeur dans un tableau de n éléments, retourne 0 si pas trouvée
function indexOfRec(tab:in tableau;index:in Integer;valeur:in Integer) return Integer is
    i : Integer;
begin
    if(index <= N_MAX) then
        if(tab(index)=valeur) then
            return index;
        else 
            i:=index+1;
            return indexOfRec(tab,i,valeur);
        end if;
    else
        return 0;
    end if;
end indexOfRec;


tab : tableau;
nbelem : Integer;

stub : Integer := 1;

begin

tab := (1,2,3,4,5,6);
nbelem := 6;

afficherRTL(tab,nbelem);
New_Line(1);
--afficherLTR(tab,stub);
New_Line(1);
Put(indexOfRec(tab,stub,5));


end rectab;
