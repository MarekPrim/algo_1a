with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body enregistrement is



function creer return ensemble is
x:ensemble;
begin
    x.cardinal := 0;
    --x.contenu := new elements;
    return x;
end creer;

function appartient(x: in Integer;e: in ensemble) return Boolean is
begin
    for i in 1..e.cardinal loop
        if(e.contenu(i)=x) then
            return True;
        end if;
    end loop;
    return False;
end appartient;

procedure ajouter(x: in Integer;e: in out ensemble) is
begin
    e.cardinal := e.cardinal+1;
    e.contenu(e.cardinal):=x;
end ajouter;

procedure supprimer(x: in Integer;e: in out ensemble) is
begin
    for i in 1..e.cardinal loop
        if(e.contenu(i)=x) then
            for j in i..e.cardinal-1 loop
                e.contenu(j):=e.contenu(j+1);
            end loop;
            e.cardinal := e.cardinal-1;
        else
            null;
        end if;
    end loop;
end supprimer;

procedure afficher(e:in ensemble) is
begin
    for i in 1..e.cardinal loop
        Put(e.contenu(i));
    end loop;
end afficher;
    
end enregistrement;