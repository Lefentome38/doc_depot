<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SINON" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurLigne="2" nbDecimales="8" arrondiAuto="vrai" totalAffichages="1000" epaisseurPoint="2" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="Nombre_1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#Nombre_1"/>
        <item algoitem="Nombre_2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#Nombre_2"/>
        <item algoitem="opérateur EST_DU_TYPE CHAINE" code="1#CHAINE#opérateur"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;donner un nombre&quot;" code="4#donner un nombre#0"/>
        <item algoitem="LIRE Nombre_1" code="2#Nombre_1#pasliste"/>
        <item algoitem="AFFICHER &quot;donner un opérateur&quot;" code="4#donner un opérateur#0"/>
        <item algoitem="LIRE opérateur" code="2#opérateur#pasliste"/>
        <item algoitem="AFFICHER &quot;donner un nombre&quot;" code="4#donner un nombre#0"/>
        <item algoitem="LIRE Nombre_2" code="2#Nombre_2#pasliste"/>
        <item algoitem="SI (opérateur==&quot;+&quot;) ALORS" code="6#opérateur==&quot;+&quot;">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHERCALCUL Nombre_1+Nombre_2" code="20#Nombre_1+Nombre_2#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (opérateur==&quot;-&quot;) ALORS" code="6#opérateur==&quot;-&quot;">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHERCALCUL Nombre_1-Nombre_2" code="20#Nombre_1-Nombre_2#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="SI (opérateur==&quot;*&quot;) ALORS" code="6#opérateur==&quot;*&quot;">
                            <item algoitem="DEBUT_SI" code="7#debutsi"/>
                            <item algoitem="AFFICHERCALCUL Nombre_1*Nombre_2" code="20#Nombre_1*Nombre_2#0"/>
                            <item algoitem="FIN_SI" code="8#finsi"/>
                            <item algoitem="SINON" code="9#sinon">
                                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                                <item algoitem="SI (opérateur==&quot;/&quot;) ALORS" code="6#opérateur==&quot;/&quot;">
                                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                                    <item algoitem="AFFICHERCALCUL Nombre_1/Nombre_2" code="20#Nombre_1/Nombre_2#0"/>
                                    <item algoitem="FIN_SI" code="8#finsi"/>
                                </item>
                                <item algoitem="FIN_SINON" code="11#finsinon"/>
                            </item>
                        </item>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
