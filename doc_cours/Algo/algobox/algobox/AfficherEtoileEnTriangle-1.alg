<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_POUR" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" totalBoucles="5000000" maxBoucle="500000" nbDecimales="8" arrondiAuto="vrai" epaisseurPoint="2" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbLignes EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbLignes"/>
        <item algoitem="iCompteur EST_DU_TYPE NOMBRE" code="1#NOMBRE#iCompteur"/>
        <item algoitem="jComteur EST_DU_TYPE NOMBRE" code="1#NOMBRE#jComteur"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Combien de lignes dans le Triangle ?&quot;" code="4#Combien de lignes dans le Triangle ?#1"/>
        <item algoitem="LIRE nbLignes" code="2#nbLignes#pasliste"/>
        <item algoitem="POUR iCompteur ALLANT_DE 1 A nbLignes" code="12#iCompteur#1#nbLignes">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="POUR jComteur ALLANT_DE 1 A iCompteur" code="12#jComteur#1#iCompteur">
                <item algoitem="DEBUT_POUR" code="13#debutpour"/>
                <item algoitem="AFFICHER &quot;*&quot;" code="4#*#0"/>
                <item algoitem="FIN_POUR" code="14#finpour"/>
            </item>
            <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
