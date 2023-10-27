<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_TANT_QUE" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalAffichages="1000" arrondiAuto="vrai" nbDecimales="8" epaisseurPoint="2" epaisseurLigne="2" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="lancer EST_DU_TYPE CHAINE" code="1#CHAINE#lancer"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;voulez vous lancer un calcule?  Tapez oui ou non&quot;" code="4#voulez vous lancer un calcule?  Tapez oui ou non#0"/>
        <item algoitem="TANT_QUE (lancer!=&quot;oui&quot; ET lancer!=&quot;non&quot;) FAIRE" code="15#lancer!=&quot;oui&quot; ET lancer!=&quot;non&quot;">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="LIRE lancer" code="2#lancer#pasliste"/>
            <item algoitem="SI (lancer==&quot;oui&quot; OU lancer==&quot;non&quot;) ALORS" code="6#lancer==&quot;oui&quot; OU lancer==&quot;non&quot;">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;ok , merci pour votre réponse&quot;" code="4#ok , merci pour votre réponse#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="AFFICHER &quot;je n'ai pas comprie&quot;" code="4#je n'ai pas comprie#0"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
