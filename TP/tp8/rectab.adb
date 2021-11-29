with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure rectab is

N_MAX : constant Integer := 6;
type tableau is array(1..N_MAX) of Integer;

-- Lire de manière récursive un tableau de droite à gauche

procedure afficherRTL(tab:in tableau;index:in Integer) is
    i : Integer;
begin
   if(index>0) then
        i:=index-1;
        Put(tab(index));
        afficherRTL(tab,i);
    end if;
end afficherRTL;

tab : tableau;
nbelem : Integer;


begin

tab := (1,2,3,4,5,6);
nbelem := 6;

afficherRTL(tab,nbelem);

end rectab;
