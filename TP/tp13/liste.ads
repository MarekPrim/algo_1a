generic
    type Element is private;
    with function image(Item : in Element) return String; 
    
package liste is

    
    type cellule is private;
    type liste is access cellule;
    

    function createEmptyList return liste with Post => isEmpty(createEmptyList'Result) = True;

    function isEmpty(lste : in liste) return Boolean;

    procedure inserer_en_tete(lste : in out liste;val : in Element) with Post => rechercher(lste,val) /= null;

    procedure afficher_liste(lste : in liste);

    function rechercher(lste : in liste; e : in Element) return liste;

    procedure inserer_apres(lste : in out liste; e : in Element; data : in Element) with Post => rechercher(lste,e) /= null;

    procedure inserer_avant(lste: in out liste; e : in Element; data: in Element) with Post => rechercher(lste,e) /= null;

    procedure enlever(lste : in out liste; e : in Element) with Post => rechercher(lste,e) = null;

    private
        
        type cellule is record
            val : Element;
            next : liste;
        end record;

end liste;
    
    