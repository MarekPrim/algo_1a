with Ada.Text_IO; use Ada.Text_IO;
with TEXT_IO; use TEXT_IO; 
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
--Types statiques

procedure testString is

C_MAX : constant Integer := 40;

nom_charles : String(1..C_MAX);
lnom_charles : Integer;

nom_jean : String(1..C_MAX);
lnom_jean : Integer;

nom_christophe : String(1..C_MAX);
lnom_christophe : Integer;

nom_vanya : String(1..C_MAX);
lnom_vanya : Integer;

begin

for i in 1..C_MAX loop
    nom_charles(i):='b';
end loop;

for i in 1..C_MAX loop
    put(nom_charles(i));
end loop;

Put_Line(nom_charles(1..C_MAX));

put("Nom jean");
get_line(nom_jean,lnom_jean);
Put_Line(nom_jean(1..lnom_jean));

nom_vanya(1..5) := "vanya";
nom_christophe:=nom_vanya;

Put_Line(nom_christophe(1..C_MAX));

end testString;