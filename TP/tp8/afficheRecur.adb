with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure afficheRecur is

N_MAX : constant Integer := 6;
type tableau is array(1..N_MAX) of Integer;

type matrix is array(1..N_MAX) of tableau;

procedure affiche(m:in Integer;n:in Integer) is
begin

for a in 0..m loop
    for b in 0..n loop
        put(10*a+b);
    end loop;
    New_Line(1);
end loop;

end affiche;

procedure afficheRecurBis(m:in Integer;n: in Integer) is
begin
    if n>0 then
        afficheRecurBis(m,n-1);
    end if;
    Put(10*m+n);
end afficheRecurBis;

procedure afficherRecur(m:in Integer;n: in Integer) is
begin
    if m>0 then
       afficherRecur(m-1,n);
    end if;
    afficheRecurBis(m,n);
    New_Line(1);
end afficherRecur;







begin
affiche(2,3);
Put_Line("==================");
afficherRecur(2,3);

end afficheRecur;