with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure liste is

type cellule;
type liste is access cellule;
type cellule is record
    val : Integer;
    next : liste;
end record;
function createEmptyList return liste is
    l : liste;
begin
    l:=null;
    return l;
end createEmptyList;

function isEmpty(lste : in liste) return Boolean is

begin
    return(lste = null);
end isEmpty;

procedure inserer_en_tete(lste : in out liste;val : in Integer) is
    temp : liste;
begin
    temp := New cellule;
		temp.all.val := val;
		temp.all.next := lste;
		lste := temp;
end inserer_en_tete;

procedure afficher_liste(lste : in liste) is
copy : liste;
begin
    copy := lste;
    if(copy /= null) then
        Put(copy.all.val);
        New_Line(1);
        afficher_liste(copy.all.next);
    else
        null;
    end if;
end afficher_liste;

function rechercher(lste : in liste; e : in Integer) return liste is
copy : liste;
begin
    copy:=lste;
    while copy.all.next /= null and then copy.all.val /= e loop
        copy := copy.all.next;
    end loop;

    if(copy.all.val = e) then
        return copy;
    else
        return null;
    end if;
end rechercher;

procedure inserer_apres(lste : in out liste; e : in Integer; data : in Integer) is
loc : liste;

Liste_vide, Data_absente : EXCEPTION;

begin
loc := rechercher(lste,data);
if loc = null then
    raise Data_absente;
end if;
if isEmpty(lste) then
    raise Liste_vide;
end if;

 loc.all.next := new cellule'(e, loc.all.next);


EXCEPTION
    when Data_absente => Put("data absente de la liste");
    when Liste_vide => Put("liste vide !");
end inserer_apres;


procedure inserer_avant(lste: in out liste; e : in Integer; data: in Integer) is
copy,parc,loc : liste;
Liste_vide, Data_absente : EXCEPTION;

begin
    copy := lste;
    if isEmpty(lste) then
        raise Liste_vide;
    else
        loc := rechercher(lste,data);
        if(loc = null) then
            raise Data_absente;
        else
            while copy.all.next /= loc loop
				copy := copy.all.next;
			end loop;
			parc := New cellule'(e, loc);
			copy.all.next := parc;
        end if;
    end if;

    EXCEPTION
    when Data_absente => Put("data absente de la liste");
    when Liste_vide => Put("liste vide !");
end inserer_avant;

procedure enlever(lste : in out liste; e : in Integer) is
copy : liste;
begin
    copy:=lste;
    if(rechercher(lste,e) = null or isEmpty(lste)) then
        null;
    else
        if lste.all.val = e then
            lste := lste.all.next;
        else
            while copy.all.next.all.val /= e loop
                copy := copy.all.next;
            end loop;
            copy.all.next := copy.all.next.all.next;
        end if;
    end if;
end enlever;

l1 : liste;
l2 : liste;
begin
l1 := createEmptyList;

if(isEmpty(l1) )then
    Put_Line("Liste vide OK");
else
    Put_Line("Liste non vide NOK");
end if;

inserer_en_tete(l1,10);

if(isEmpty(l1) )then
    Put_Line("Liste vide NOK");
else
    Put_Line("Liste non vide OK");
end if;

inserer_apres(l1,22,10);


--afficher_liste(l1);

inserer_avant(l1,55,22);

--afficher_liste(l1);

--l2 := rechercher(l1,22);
--Put(l2.all.val);
afficher_liste(l1);
Put_Line("--------");

enlever(l1,22);

afficher_liste(l1);


end liste;