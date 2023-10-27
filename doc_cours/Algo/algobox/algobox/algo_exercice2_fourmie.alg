<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (Main_1+Main_2!=0) ALORS" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurPoint="2" maxBoucle="500000" nbDecimales="8" totalBoucles="5000000" epaisseurLigne="2" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Main_1" algoitem="Main_1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Main_2" algoitem="Main_2 EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#joueur A donner un chiffre entre 1 et 5#1" algoitem="AFFICHER &quot;joueur A donner un chiffre entre 1 et 5&quot;"/>
        <item code="2#Main_1#pasliste" algoitem="LIRE Main_1"/>
        <item code="4#joueur B donner un chiffre entre 1 et 5#1" algoitem="AFFICHER &quot;joueur B donner un chiffre entre 1 et 5&quot;"/>
        <item code="2#Main_2#pasliste" algoitem="LIRE Main_2"/>
        <item code="6#Main_1+Main_2!=0" algoitem="SI (Main_1+Main_2!=0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#le joueur A gagne#1" algoitem="AFFICHER &quot;le joueur A gagne&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#le joueur B gagne#1" algoitem="AFFICHER &quot;le joueur B gagne&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
        <item code="103#commentaire" algoitem=""/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
