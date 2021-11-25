with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with BINAIRY;use BINAIRY;

procedure Binaire_main is

    binaryOne : BINAIRE;
    binaryTwo : BINAIRE;
    binaryDec : BINAIRE;
    decBin : Integer;
begin

for i in 1..8 loop
    binaryOne(i):=i mod 2;
    binaryTwo(i):= 1;
end loop;

--afficherNombreBinaire(binaryTwo);

binaryDec := conversionBinaire(2);
binaryOne := conversionBinaire(2);
binaryTwo := binarySum(binaryDec,binaryOne);
afficherNombreBinaire(binaryTwo);
--Put(conversionDecimal(binaryTwo));
--decBin := conversionDecimal(binaryDec);

--if(decBin = 23) then
 --   Put("OK");
--else
 --   Put("NOK");
--end if;

--binaryDec := binarySum(binaryOne,binaryTwo);

--afficherNombreBinaire(binaryDec);


end Binaire_main;