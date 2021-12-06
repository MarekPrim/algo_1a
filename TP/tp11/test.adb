with liste;
with Ada.Text_IO; use Ada.Text_IO;

procedure test is

package liste_entiers is new liste(Element=>Integer);
use liste_entiers;
package liste_string is new liste(Element=>Character);
use liste_string;

ti : liste_entiers.liste;
tti : liste_entiers.liste;
ts : liste_string.liste;

begin

ti := createEmptyList;
ts := createEmptyList;

if(isEmpty(ti)) then
    Put_Line("LI vide OK");
else
    Put_Line("LI non vide NOK");
end if;

if(isEmpty(ts))then
    Put_Line("LS vide OK");
else
    Put_Line("LS non vide NOK");
end if;

inserer_en_tete(ti,1);
tti:=rechercher(ti,1);
if(tti = null) then
    Put_Line("NOK");
else
    Put_Line("OK");
end if;

enlever(ti,1);
tti:=rechercher(ti,1);
if(tti = null) then
    Put_Line("OK");
else
    Put_Line("NOK");
end if;

end test;