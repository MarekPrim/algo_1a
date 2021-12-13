with liste_db_chainee;use liste_db_chainee;

procedure main is
    lste:liste;
begin
    lste := createEmptyList;
    ajouter(12,lste);
    afficher(lste);
    ajouter(999,lste);
    afficher(lste);
    ajouter(1000,lste);
    afficher(lste);
    enlever(999,lste);
    afficher(lste);
    ajouter(88,lste);
    ajouter(11,lste);
    afficher(lste);
end main;