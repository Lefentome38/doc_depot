<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Ecrire 2 programmes qui affichent la résistance" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2" totalAffichages="1000" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="resistance1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#resistance1"/>
        <item algoitem="resistance2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#resistance2"/>
        <item algoitem="resistance3 EST_DU_TYPE NOMBRE" code="1#NOMBRE#resistance3"/>
        <item algoitem="typebranchement EST_DU_TYPE CHAINE" code="1#CHAINE#typebranchement"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;saisissez la valeur de resistance1&quot;" code="4#saisissez la valeur de resistance1#1"/>
        <item algoitem="LIRE resistance1" code="2#resistance1#pasliste"/>
        <item algoitem="AFFICHER &quot;saisissez la valeur resistance2&quot;" code="4#saisissez la valeur resistance2#1"/>
        <item algoitem="LIRE resistance2" code="2#resistance2#pasliste"/>
        <item algoitem="AFFICHER &quot;saisissez la valeur resistance3&quot;" code="4#saisissez la valeur resistance3#1"/>
        <item algoitem="LIRE resistance3" code="2#resistance3#pasliste"/>
        <item algoitem="AFFICHER &quot;saisissez le type de branchement : s pour série ou p pour parallèle&quot;" code="4#saisissez le type de branchement : s pour série ou p pour parallèle#1"/>
        <item algoitem="LIRE typebranchement" code="2#typebranchement#pasliste"/>
        <item algoitem="SI (typebranchement==&quot;s&quot;) ALORS" code="6#typebranchement==&quot;s&quot;">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHERCALCUL resistance1+resistance2+resistance3" code="20#resistance1+resistance2+resistance3#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHERCALCUL (resistance1*resistance2*resistance3)/((resistance1*resistance2)+(resistance1*resistance3)+(resistance2*resistance3))" code="20#(resistance1*resistance2*resistance3)/((resistance1*resistance2)+(resistance1*resistance3)+(resistance2*resistance3))#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
