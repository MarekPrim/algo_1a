with enregistrement;use enregistrement;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure test is

    e : ensemble;

begin

    e:=creer;

    ajouter(1,e);
    ajouter(2,e);
    ajouter(3,e);

    afficher(e);
    New_Line(1);

    Put(e.cardinal);
    New_Line(1);

    if(appartient(3,e)) then
        Put("OK");
    else
        Put("NOK");
    end if;

    New_Line(1);
    if(appartient(9,e)) then
        Put("NOK");
    else
        Put("OK");
    end if;
    
    supprimer(3,e);

    New_Line(1);
    if(appartient(3,e)) then
        Put("NOK");
    else
        Put("OK");
    end if;
    New_Line(1);
    afficher(e);
    New_Line(1);
    ajouter(3,e);
    supprimer(2,e);
    afficher(e);

end test;