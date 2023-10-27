<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER res"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" arrondiAuto="vrai" epaisseurPoint="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbNotes" algoitem="nbNotes EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#note" algoitem="note EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#res" algoitem="res EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#nbNotes#pasliste" algoitem="LIRE nbNotes"/>
        <item code="4#Combien de notes: #0" algoitem="AFFICHER &quot;Combien de notes: &quot;"/>
        <item code="3#nbNotes#1#pasliste" algoitem="AFFICHER nbNotes"/>
        <item code="5#res#0#pasliste" algoitem="res PREND_LA_VALEUR 0"/>
        <item code="12#i#1#nbNotes" algoitem="POUR i ALLANT_DE 1 A nbNotes">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#note#pasliste" algoitem="LIRE note"/>
            <item code="4#Note #0" algoitem="AFFICHER &quot;Note &quot;"/>
            <item code="3#i#0#pasliste" algoitem="AFFICHER i"/>
            <item code="4# : #0" algoitem="AFFICHER &quot; : &quot;"/>
            <item code="3#note#1#pasliste" algoitem="AFFICHER note"/>
            <item code="5#res#res + note#pasliste" algoitem="res PREND_LA_VALEUR res + note"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="5#res#res / nbNotes#pasliste" algoitem="res PREND_LA_VALEUR res / nbNotes"/>
        <item code="4#Moyenne de ces #0" algoitem="AFFICHER &quot;Moyenne de ces &quot;"/>
        <item code="3#nbNotes#0#pasliste" algoitem="AFFICHER nbNotes"/>
        <item code="4# notes: #0" algoitem="AFFICHER &quot; notes: &quot;"/>
        <item code="3#res#0#pasliste" algoitem="AFFICHER res"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
