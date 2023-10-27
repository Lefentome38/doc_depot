<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_ALGORITHME"/>
    <fonction fctcode="" fctetat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="D EST_DU_TYPE NOMBRE" code="1#NOMBRE#D"/>
        <item algoitem="S EST_DU_TYPE NOMBRE" code="1#NOMBRE#S"/>
        <item algoitem="I EST_DU_TYPE NOMBRE" code="1#NOMBRE#I"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="S PREND_LA_VALEUR 0" code="5#S#0#pasliste"/>
        <item algoitem="I PREND_LA_VALEUR 0" code="5#I#0#pasliste"/>
        <item algoitem="TANT_QUE (S &lt; 13) FAIRE" code="15#S &lt; 13">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="I PREND_LA_VALEUR I+1" code="5#I#I+1#pasliste"/>
            <item algoitem="D PREND_LA_VALEUR floor(6*random())+1" code="5#D#floor(6*random())+1#pasliste"/>
            <item algoitem="S PREND_LA_VALEUR S+D" code="5#S#S+D#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER I" code="3#I#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
