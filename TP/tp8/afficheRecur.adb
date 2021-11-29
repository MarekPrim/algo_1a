with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure afficheRecur is

N_MAX : constant Integer := 6;
type tableau is array(1..N_MAX) of Integer;

type matrix is array(1..N_MAX) of tableau;

procedure affiche(m:in Integer;n:in Integer) is
begin

for a in 1..m loop
    for b in 1..n loop
        put(10*a+b);
    end loop;
    New_Line(1);
end loop;

end affiche;

procedure afficherRecur(m:in Integer;n: in Integer) is
begin
    if m>0 then
        if n>0 then
            afficherRecur(m,n-1);
            Put(m*10 + n);
        else
            afficherRecur(m-1,n);
            Put(m*10+n);
            New_Line(1);
        end if;
    else
        if n>0 then
            afficherRecur(m,n-1);
            Put(m*10+n);
        end if;
    end if;
end afficherRecur;






begin
affiche(2,3);
Put_Line("==================");
afficherRecur(2,3);

end afficheRecur;