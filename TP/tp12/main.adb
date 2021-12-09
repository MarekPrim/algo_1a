with liste_db_chainee;use liste_db_chainee;

procedure main is
    lste:liste;
begin
    lste := createEmptyList;
    ajouter(12,lste);
    afficher(lste);
    afficher(lste);
    ajouter(13,lste);
    afficher(lste);
    afficher(lste);
    ajouter(14,lste);
    afficher(lste);
    afficher(lste);
    ajouter(25,lste);
    afficher(lste);
    afficher(lste);
    ajouter(8,lste);
    afficher(lste);
    afficher(lste);
    ajouter(10,lste);
    afficher(lste);
    afficher(lste);
    rechercher(14,lste);
    afficher(lste);
    afficher(lste);
    remove(25,lste);
    afficher(lste);
    afficher(lste);
end main;