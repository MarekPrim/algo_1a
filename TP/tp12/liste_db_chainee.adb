with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

package body liste_db_chainee is

function isEmpty(lste : in liste) return Boolean is
begin
    if lste = null  then
        return True;
    else
        return False;
    end if;
end isEmpty;

function createEmptyList return liste is
lste : liste;
begin
    lste := null;
    return lste;
end createEmptyList;

procedure ajouter(lste:in out liste;val : in Integer) is
    temp : liste;
begin
    if isEmpty(lste) then
        temp := new cellule;
        temp.all.val := val;
        temp.all.next := lste;
        lste := temp;
    else
        while lste.all.prev /= null loop
            lste := lste.all.prev;
        end loop;

        while lste.all.next /= null and then lste.all.val > val loop
            lste := lste.all.next;
        end loop;

        temp := new cellule;
        temp.all.val := val;
        temp.all.prev := lste;
        temp.all.next := lste.all.next;
        lste := temp;

    end if;
end ajouter;

procedure afficher(lste: in liste) is
copy : liste;
begin
    New_Line(1);
    copy := lste;
    if(isEmpty(copy)) then
        Put_Line("∅");
    else
        while copy.all.prev /= null loop
            copy := copy.all.prev;
        end loop;
        Put(copy.all.val);
        while copy.all.next /= null loop
            copy := copy.all.next;
            Put(copy.all.val);
            New_Line(1);
        
        end loop;
    end if;
end afficher;

procedure rechercher(lste : in out liste; val:in Integer ) is
copy : liste;
begin
    copy := lste;
    while copy.all.prev /= null loop
        copy := copy.all.prev;
    end loop;

    while copy /= null and then copy.all.val /= val loop
        copy := copy.all.next;
    end loop;

    lste := copy;
end rechercher;

procedure enlever(lste : in out liste; val: in Integer) is
loc : liste;
Liste_vide, Element_absent : EXCEPTION;
begin
    if(isEmpty(lste)) then
        raise Liste_vide;
    end if;
    loc := lste;
    rechercher(loc,val);
    if(loc = null) then
        raise Element_absent;
    end if;
    if loc.all.prev = null  then
        if loc.all.next = null then
            lste := null;
        else
            lste := loc.all.next;
        end if;
    end if;

    EXCEPTION
    when Liste_vide => Put_Line("Liste vide");
    when Element_absent => Put_Line("Element absent");
end enlever;

        

end liste_db_chainee;
