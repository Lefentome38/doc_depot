<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER Som"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" totalAffichages="1000" epaisseurPoint="2" totalBoucles="5000000" epaisseurLigne="2" nbDecimales="8" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Som" algoitem="Som EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Donnez une valeur entre 1 et 10#0" algoitem="AFFICHER &quot;Donnez une valeur entre 1 et 10&quot;"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="5#Som#0#pasliste" algoitem="Som PREND_LA_VALEUR 0"/>
        <item code="12#i#1#n" algoitem="POUR i ALLANT_DE 1 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#Som#Som + i#pasliste" algoitem="Som PREND_LA_VALEUR Som + i"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Somme de 1 à #0" algoitem="AFFICHER &quot;Somme de 1 à &quot;"/>
        <item code="3#n#0#pasliste" algoitem="AFFICHER n"/>
        <item code="4# =#0" algoitem="AFFICHER &quot; =&quot;"/>
        <item code="3#Som#1#pasliste" algoitem="AFFICHER Som"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
