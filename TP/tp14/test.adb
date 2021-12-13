with liste_db_chainee; use liste_db_chainee;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure test is

    l1 : liste;
    --sr : liste;

begin

l1 := createEmptyList;

ajouter(l1,2);
ajouter(l1,5);
ajouter(l1,1);

if(l1.all.prev = null) then
    Put_Line("NOK");
else
    Put_Line("OK");
end if;

afficher(l1);


end test;