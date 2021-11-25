with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
package body BINAIRY is

    sum: Integer;
    tab: BINAIRE;
    carry: Integer :=0;

procedure afficherNombreBinaire(bin:in BINAIRE) is
begin
New_Line(1);
    for i in 0..7 loop
        if(tab(8-i) in 0..1) then
             
            Put(bin(8-i)); --Lecture en reverse du binaire
        else
            raise Constraint_Error;
        end if;
    end loop;
    New_Line(1);
end afficherNombreBinaire;

function conversionDecimal(bin:in BINAIRE) return Integer is
begin
    sum:=0;
    for i in 0..7 loop
        sum:=sum+(2**i) * bin(i+1);
    end loop;
    if sum not in 0..255 then
        Put(sum);
        raise Constraint_Error;
    end if;
    return sum;
end conversionDecimal;


function conversionBinaire(value: in Integer) return BINAIRE is
begin
    if(value not in 0..255) then
        raise Constraint_Error;
    end if;

    sum:=value;
    for i in 1..8 loop
        if(sum - 2**(8-i) >=0) then
            sum:=sum - 2**(8-i);
            Put(sum);
            Put(":");
            Put(8-i);
            New_Line(1);
            tab(9-i):=1;
        else
            tab(9-i):=0;
        end if;
    end loop;
    return tab;
end conversionBinaire;


function binarySum(bin1:in BINAIRE;bin2: in BINAIRE) return BINAIRE is
begin
    for i in 0..7 loop
        tab(8-i):= (bin1(8-i)+bin2(8-i)+carry) mod 2;
        if(bin1(8-i)+bin2(8-i)+carry >= 2) then
            carry:=1;
        else
            carry:=0;
        end if;
    end loop;
    return tab;
end binarySum;

end BINAIRY;