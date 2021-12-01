with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure pointeurint is
type PINT is access Integer;

p : PINT;

begin
p := new Integer;
p.all := 99;
Put(p.all);

Put_Line("Rentrez un nombre");
Get(p.all);

Put(P.all);

end pointeurint;