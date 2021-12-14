with AB; 
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure test is

package BST_int is new AB(T=>Integer,image=>Integer'Image,"=" => Standard."=", ">" => Standard.">", "<" => Standard."<");
use BST_int;

arb : Arbre;
space : Integer := 1;
begin
    createEmptyBinaryTree(arb);

    insertInBinaryTree(arb, 1);
    insertInBinaryTree(arb, 99);
    insertInBinaryTree(arb, 21);
    insertInBinaryTree(arb, 44);
    insertInBinaryTree(arb, 2);
    
    Put_Line("Taille souhaité de l'arbre attendue : 5");
    Put_Line("Taille réelle de l'arbre : ");
    Put(sizeBinaryTree(arb));
    New_Line(1);


    afficheArbre(arb, space);
    New_Line(1);
    --    Je vérifie que l'arbre contient bien les valeurs attendues
    if(searchInBinaryTree(arb, 1)) then 
        Put_Line("OK");
    else
        Put_Line("KO");
    end if;

    --  Je vérifie que l'arbre ne contient pas de valeurs non attendues
    if(searchInBinaryTree(arb, 999)) then
        Put_Line("KO");
    else
        Put_Line("OK");
    end if;


    -- Avant de supprimer 21, je vérifie que l'arbre contient bien 21
    if(searchInBinaryTree(arb, 21)) then
        Put_Line("OK");
    else
        Put_Line("KO");
    end if;
    deleteInBinaryTree(arb, 21);
    -- Après avoir supprimé 21, je vérifie que l'arbre ne contient plus 21
    if(searchInBinaryTree(arb, 21)) then
        Put_Line("KO");
    else
        Put_Line("OK");
    end if;

    afficheArbre(arb, space);

    Put_Line("Taille souhaité de l'arbre attendue : 4");
    Put_Line("Taille réelle de l'arbre : ");
    Put(sizeBinaryTree(arb));
    New_Line(1);

    modifyInBinaryTree(arb, 2, 999);
    if(searchInBinaryTree(arb, 999)) then
        Put_Line("OK");
    else
        Put_Line("KO");
    end if;

    if(searchInBinaryTree(arb, 2)) then
        Put_Line("KO");
    else
        Put_Line("OK");
    end if;

    afficheArbre(arb, space);

    Put_Line("Taille souhaité de l'arbre attendue : 4");
    Put_Line("Taille réelle de l'arbre : ");
    Put(sizeBinaryTree(arb));
    New_Line(1);
    
end test;
    