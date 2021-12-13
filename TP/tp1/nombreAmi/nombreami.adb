--R0 Affiche les couples (N,M) de nombres entiers ; avec 1 <= N <= M <= MAX (max lu au clavier)

with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;

procedure nombreAmis is
    MAX : Integer;
    sommeN : Integer;
    sommeM : Integer;
begin
    --R1.1 Saisie du nombre max     --out Max
    loop
        Put("Entrez la valeur entière max : ");
        Get(MAX);
        --R2.1 Test sur M pour N >=2 --in Max
        if (MAX < 2) then
            Put("Valeur incorrecte, recommencez");
        else
            null;
        end if;
    exit when MAX >1;
    end loop;

    --R1.2 Affiche les couples d'amis entre 1 et MAX    -- in max
    for N in 1..MAX loop
        sommeN := 0;
        sommeM := 0;
        for j in 1..N/2 loop
            if N mod j = 0 then
                sommeN := sommeN + j;
            end if;
            --else null;
        end loop;

        for M in 1..sommeN/2 loop
            if sommeN mod M = 0 then
                sommeM := sommeM + M;
            end if;
            --else null;
        end loop;
        
        if sommeM = N then
         Put(sommeM);
         Put("et");
            Put(sommeN);
            Put("sont amis");
            else null;
        end if;
    end loop;
end nombreAmis;
