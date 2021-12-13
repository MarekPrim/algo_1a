generic
    type Element is private;
    with function image(Item : in Element) return String; 
    
package liste is

    
    type cellule is private;
    type liste is access cellule;
    
    -- initalise une liste
    -- preconditions =>
    -- postconditions => liste crée vide
    -- exception => 
    function createEmptyList return liste with Post => isEmpty(createEmptyList'Result) = True;

    --vérifie si une liste donnée est vide
    -- preconditions =>
    -- postconditions => 
    -- exception =>
    function isEmpty(lste : in liste) return Boolean;

    -- insère en tête un élément
    -- preconditions =>
    -- postconditions => valeur présente dans la liste
    -- exception => rien
    procedure inserer_en_tete(lste : in out liste;val : in Element) with Post => rechercher(lste,val) /= null;

    -- affiche une liste
    -- preconditions =>
    -- postconditions => 
    -- exception => rien
    procedure afficher_liste(lste : in liste);

    -- renvoie la localisation d'un élément ou null si pas trouvé
    -- preconditions =>
    -- postconditions => 
    -- exception => rien
    function rechercher(lste : in liste; e : in Element) return liste;

    -- insère un élément après data
    -- preconditions => liste non vide
    -- postconditions => valeur présente dans la liste
    -- exception => Data_absente;Liste_vide
    procedure inserer_apres(lste : in out liste; e : in Element; data : in Element) with Post => rechercher(lste,e) /= null;

    -- insère un élément avant data
    -- preconditions => liste non vide
    -- postconditions => valeur présente dans la liste
    -- exception => Data_absente;Liste_vide
    procedure inserer_avant(lste: in out liste; e : in Element; data: in Element) with Post => rechercher(lste,e) /= null;

    -- enleve un élement e de la liste
    -- preconditions =>
    -- postconditions => valeur présente dans la liste
    -- exception => Liste_vide
    procedure enlever(lste : in out liste; e : in Element) with Post => rechercher(lste,e) = null;

    private
        
        type cellule is record
            val : Element;
            next : liste;
        end record;

end liste;
    
    