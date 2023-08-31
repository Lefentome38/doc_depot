<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SI"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" arrondiAuto="vrai" epaisseurPoint="2" totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#b" algoitem="b EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#a#5#pasliste" algoitem="a PREND_LA_VALEUR 5"/>
        <item code="5#b#1#pasliste" algoitem="b PREND_LA_VALEUR 1"/>
        <item code="6#a>3.14" algoitem="SI (a>3.14) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="3#a#0#pasliste" algoitem="AFFICHER a"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#b>3.14" algoitem="SI (b>3.14) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="3#b#0#pasliste" algoitem="AFFICHER b"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
