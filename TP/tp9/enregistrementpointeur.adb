with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure enregistrementpointeur is

N_MAX : constant Integer := 5;

type PFLOAT is access Float;
type matiere is record
    code : String(1..5);
    ptr : PFLOAT;
end record;
type PMAT is access matiere;

type matarray is array(0..N_MAX) of PMAT;

procedure initialisationMatiere(mat:in out matiere;name: in String) is
begin
    mat.code := name;
    mat.ptr := null;
end initialisationMatiere;

procedure afficherMatiere(mat: in matiere) is
begin
    Put_Line("Matiere");
    Put(mat.code);
    New_Line(1);
    Put_Line("Note");
    Put(mat.ptr.all,1);
    New_Line(1);

    EXCEPTION
    when Constraint_Error =>
        Put_Line("Note non initialisé");
        New_Line(1);
end afficherMatiere;

procedure affecterNote(mat: in out matiere;note : in Float) is
begin
    mat.ptr := new Float;
    mat.ptr.all := note;
end affecterNote;

procedure afficherMenu is
begin
    Put_Line("1 - Initialiser une matiere");
    Put_Line("2 - Afficher une matiere");
    Put_Line("3 - Modifier une matiere");
    Put_Line("4 - Obtenir la moyenne");
end afficherMenu;

function moyenne(tab:in matarray) return Float is
med : Float :=0.0;
begin
    
        for i in 0..N_MAX loop
            med := med + tab(i).all.ptr.all;
        end loop;
        return med/Float(N_MAX);

end moyenne;


tabmat : matarray;
m1 : matiere;
pm1 : PMAT;
nbelem : Integer := 0;
choix : Integer;
index : Integer;
name : String(1..5);
note : Float;

begin

initialisationMatiere(m1,"TESTE");

for i in 0..N_MAX loop
    pm1 := new matiere;
    pm1.all := m1;
    tabmat(i):=pm1;
end loop;
    


loop
    Put_Line("Choisir parmi les matieres");
        for i in 0..N_MAX loop
            New_Line(1);
            afficherMatiere(tabmat(i).all);
        end loop;
    afficherMenu;
    Get(choix);
    
    case choix is
        when 1 =>
            Put_Line("choisir une matiere");
            Get(index);
            Put_Line("Choisir un nom");
            Get(name);
            initialisationMatiere(tabmat(index).all,name);
            nbelem:=nbelem+1;
        when 2 =>
            Put_Line("choisir une matiere");
            Get(index);
            New_Line(1);
            afficherMatiere(tabmat(index).all);
        when 3 =>
            Put_Line("choisir une matiere");
            Get(index);
            New_Line(1);
            Put_Line("Note ?");
            Get(note);
            affecterNote(tabmat(index).all,note);
        when 4 =>
            Put_Line("Moyenne :");
            Put(moyenne(tabmat));
            New_Line(1);
        when others =>
            null;
        end case;
end loop;



end enregistrementpointeur;