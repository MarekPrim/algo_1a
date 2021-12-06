with liste;
with Ada.Text_IO; use Ada.Text_IO;

procedure test is

package liste_entiers is new liste(Element=>Integer,image => Integer'Image);
use liste_entiers;
package liste_string is new liste(Element=>Character, image => Character'Image);
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
inserer_en_tete(ti,33);

inserer_en_tete(ts,'f');
inserer_en_tete(ts,'t');

Put_Line("_____");

afficher_liste(ti);

Put_Line("_____");

afficher_liste(ts);

end test;