with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure fibonnacitoM is
-- R0 : Afficher le premier terme de la suite de Fibonnaci tel que ce terme est supérieur ou égal à M, entier positif lu au clavier tel que M>1

-- R1 : Comment afficher le premier terme de la suite de Fibonnaci tel que ce terme est supérieur à M, entier positif lu au clavier tel que M>1
--   R1.1 : Récupérer M>1         -- M : out Entier
--      {M>1}
--   R1.2 : Calculer fib jusqu'à T>=M  --M:in Entier, T:out Entier
--      {T>=M}
--   R1.3 : Afficher T                  --T: in Entier

-- R2 : Comment calculer T jusqu'à T>=M
--  R2.1 :
--      T<-0
--      fib1<-1
--      fib2<-1
--      Tant que T<M Faire            --M:in Entier, T: in Entier, fib1,fib2 : in Entier 
--          T<-fib2+fib1
--          fib2<-fib1
--          fib1<-T
--      Fin TQ

    M : Integer; -- Entier rentrée par l'utilisateur
    T : Integer; -- N-ieme terme de fibonnaci
    fib1 : Integer; --Terme n-1 de la suite
    fib2 : Integer; --Terme n-2 de la suite

begin
loop
    Put_Line("Veuillez rentrer M");
    Get(M);
    exit when(M>1);
end loop;
T:=0;
fib1:=1;
fib2:=1;
while T<M loop
    T:=fib2+fib1;
    fib2:=fib1;
    fib1:=T;
end loop;
Put_Line("Terme supérieur à M");
Put(T);
end fibonnacitoM;