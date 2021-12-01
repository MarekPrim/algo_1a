with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure enregistrementpointeur is
type PFLOAT is access Float;

type matiere is record
    code : String(1..5);
    ptr : PFLOAT;
end record;

procedure initialisationMatiere(mat:in out matiere,name: in String) is
begin
    mat.code := name;
    mat.ptr := new Float;
    mat.ptr := null;
end initialisationMatiere;

m1 : matiere;

begin

initialisationMatiere(m1,"truc");

Put(m1.code);
New_Line(1);




end enregistrementpointeur;