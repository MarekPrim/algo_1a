package BINAIRY is

TYPE BINAIRE is array(1..8) of Integer;

--Permet d'afficher à l'écran un binaire au format 0000 0000
--Paramètres:   bin, in BINAIRE
--Préconditions: 
--Post-conditions: 
procedure afficherNombreBinaire(bin:in BINAIRE);

--Permet de convertir un binaire en base 10
--Paramètres:   bin, in BINAIRE; return Integer
--Préconditions: 
--Post-conditions: resultat E [0;256[
function conversionDecimal(bin:in BINAIRE) return Integer;

--Permet de convertir un nombre décimal en nombre binaire
--Paramètres:   value, in Integer; return BINAIRE
--Préconditions: 0=<value<=255
--Post-conditions: 
function conversionBinaire(value: in Integer) return BINAIRE;

--Permet d'afficher à l'écran un binaire au format 0000 0000
--Paramètres:   bin1, in BINAIRE;bin2, in BINAIRE; return BINAIRE
--Préconditions: dec(bin1+bin2)<=255
--Post-conditions: resultat E [0;256[
function binarySum(bin1:in BINAIRE;bin2: in BINAIRE) return BINAIRE;

end BINAIRY;