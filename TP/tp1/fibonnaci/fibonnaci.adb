with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure fibonnaci is
--R0 : Afficher le n-ième terme de la suite de Fibonnaci, N entier positif lu au clavier
-- fib(2) = 1
-- fib(3) = 2
--R1 : Comment "R0"
--  R1.1 Récuperer de manière fiable et conviviale N            --N : Entier out
--  R1.2 Calculer la suite de fibonnaci jusqu'au N-ieme terme   --N : Entier in, T : Entier out
--  R1.3 Afficher le terme --T : Entier in

-- R2 : Comment calculer la suite de fibonnaci jusqu'au N-ieme terme:
--  R2.1 Déterminer si dans cas particuliers où N = 1 ou N = 0
--  R2.2 Calculer fib jusqu'à N

-- R3 : Comment déterminer si dans cas particuliers où N = 1 ou N = 0
--  R3.1
--      Si N=0 alors                                            --N: Entier in, T: Entier out
--        T<-0
--      Sinon Si N=1
--        T<-1
--      Sinon
--        Faire le calcul de fib jusqu'à N                      --N:Entier in, T: Entier out [R2.2]
--      Fin Si

-- R3 : Comment calculer fib jusqu'à N
--  
--  R3.1                                                        -- fib1 : Entier in, fib2 : Entier in, T: Entier out
--      fib2<-1
--      fib1<-1
--      temp<-0
--      Pour i de 2 jusqu'à N 
--          temp<-fib2+fib1
--          fib2<-fib1
--          fib1<-temp          
--      Fin Pour
--      T<-fib2

    N : Integer; -- Entier rentrée par l'utilisateur
    T : Integer; -- N-ieme terme de fibonnaci
    fib1 : Integer; --Terme n-1 de la suite
    fib2 : Integer; --Terme n-2 de la suite
    temp : Integer; --Somme de fibn-1 et fibn-2
begin

Put_Line("Rentrez N");
Get(N);
if(N=0) then
T:=0;
elsif(N=1)then T:=1;
else 
fib2:=0; 
fib1:=1;
temp:=0;
for i in Integer range 2..n loop
    temp:= fib2+fib1;
    fib2:=fib1;
    fib1:=temp;
end loop;
T:=temp;
end if;
Put_Line("Fib(n)=");
Put(T);

end fibonnaci;