with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Puisssance is
   -- Calcule et affiche la puissance enti�re (relatif) d'un r�el
   -- en n'utilisant que les op�rateurs de somme et de multiplication

   -- Variables
   x:Float; --R�el : Nombre dont la puissance est � calculer
   n:Integer; --Entier : Puissance (relatif)
   p:Float ; --R�el : Variable de transition
begin

   --R0: Calculer la puissance enti�re N de X, X r�el, sans passer par
   -- l'op�rateur de puissance
   -- Exemples : 
   --    2^2 = 4.0
   --    2^-2 = 0.25


   --R1: Comment calculer la puissance enti�re N de X, X r�el, sans passer par
   -- l'op�rateur de puissance
   --  R1.1 : Saisir un r�el X et un entier N relatif                            --X: Réel out, N: Entier out

   --  R1.2 : Calculer et afficher X^N en n'utilisant que les op�rateurs + et *  --X: Réel in, N: Entier in, P:Réel out


   --R2 : Comment saisir un r�el X et un entier N relatif      
   -- Ecrire("Veuillez rentrer X")                                               --X: Réel out
   -- Lire(X)
   -- Ecrire("Veuillez rentrez N")                                                --N: Entier out
   -- Lire(N)

   --R2: Comment calculer et afficher X^N en n'utilisant que les op�rateurs + et *
   -- R2.1 D�terminer signe de N et calculer X^N en cons�quence                  --X: Réel in, N: Entier in, P:Réel out
   -- R2.2 Afficher X^N                                                          --P:Réel in


   --R3 : Comment d�terminer signe de N et calculer X^N en cons�quence     
   -- R3.1  P<-X
   --       Si N>0 --in N,X,P
   --        Pour i de 2 � N faire                                               --X: Réel in, N: Entier in, P:Réel in
   --            P<-P*X;  //Calcul classique de la puissance enti�re d'un nombre
   --        Fin Pour
   --       Sinon Si N<0
   --        Pour i de 2 à Valuer Absolue de N faire                                                --X: Réel in, N: Entier in, P:Réel in
   --            P<-P*X; //Calcul de la puissance d'un nombre
   --        Fin Pour
   --        P<-1/P // {X^-N = 1/X^N}
   --       Sinon                                                                 --P:Réel out
   --         P<-1.0
   --        Fin Si
   --    R3.2 Afficher P

   --R4 : Comment calculer valeur absolue de N
   --    N<-N*-1
   Put_Line("Rentrez X");
   Get(x);
   Put_Line("Rentrez N");
   Get(n);
   p := x;

   if(N>0) then
      for i in Integer range 2..n loop
         p:=p*x;
      end loop;
   elsif(N<0) then
      for i in Integer range 2..abs(n) loop
           p:=p*x;
      end loop;
      p:=1.0/p;
   else
      p:=1.0;
   end if;


   Put_Line("La puissance de X par N est:");
   Put(p);
   null;
end Puisssance;
