<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="POUR x ALLANT_DE 0 A 10"/>
    <fonction fctcode="" fctetat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="x EST_DU_TYPE NOMBRE" code="1#NOMBRE#x"/>
        <item algoitem="y EST_DU_TYPE NOMBRE" code="1#NOMBRE#y"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="POUR x ALLANT_DE 0 A 10" code="12#x#0#10">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="y PREND_LA_VALEUR 2*pow(0.1*x,2)-0.3*x+1" code="5#y#2*pow(0.1*x,2)-0.3*x+1#pasliste"/>
            <item algoitem="AFFICHER y" code="3#y#1#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
