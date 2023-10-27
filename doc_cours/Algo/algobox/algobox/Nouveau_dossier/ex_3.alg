<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="TANT_QUE (p&lt;pow(10,99)) FAIRE"/>
    <fonction fctcode="" fctetat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="k EST_DU_TYPE NOMBRE" code="1#NOMBRE#k"/>
        <item algoitem="p EST_DU_TYPE NOMBRE" code="1#NOMBRE#p"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="p PREND_LA_VALEUR 1" code="5#p#1#pasliste"/>
        <item algoitem="k PREND_LA_VALEUR 1" code="5#k#1#pasliste"/>
        <item algoitem="TANT_QUE (p&lt;pow(10,99)) FAIRE" code="15#p&lt;pow(10,99)">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="p PREND_LA_VALEUR pow(2,k)" code="5#p#pow(2,k)#pasliste"/>
            <item algoitem="k PREND_LA_VALEUR k+1" code="5#k#k+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="k PREND_LA_VALEUR k-1" code="5#k#k-1#pasliste"/>
        <item algoitem="AFFICHER k" code="3#k#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
