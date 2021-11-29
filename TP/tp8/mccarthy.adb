with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure test is

procedure mccarthyIt is
	begin
		for m in 0..110 loop
			if m > 100 then
				Put(m-10);
                 New_Line(1);
			else
				Put(91);
                 New_Line(1);
			end if;
		end loop;
	end mccarthyIt;


function mccarthyRec(n:in Integer) return Integer is
begin
    if (n > 100) then
        return n - 10;
     else 
        return mccarthyRec(mccarthyRec(n + 11));
    end if;
end mccarthyRec;

    procedure mccarthy is
    begin
    for M in 0..110 loop
        Put(mccarthyRec(M));
        New_Line(1);
    end loop;
    end mccarthy;


begin

mccarthyIt;
mccarthy;

end test;