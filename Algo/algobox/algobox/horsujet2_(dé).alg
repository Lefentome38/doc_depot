<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#D" algoitem="D EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#reponse" algoitem="reponse EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#vous devez avoir un 6 pour gagner#1" algoitem="AFFICHER &quot;vous devez avoir un 6 pour gagner&quot;"/>
        <item code="4#voulez vous lancer le dé#1" algoitem="AFFICHER &quot;voulez vous lancer le dé&quot;"/>
        <item code="2#reponse#pasliste" algoitem="LIRE reponse"/>
        <item code="6#reponse==&quot;oui&quot;" algoitem="SI (reponse==&quot;oui&quot;) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="3#D#1#pasliste" algoitem="AFFICHER D"/>
            <item code="5#D#floor(6*random())+1#pasliste" algoitem="D PREND_LA_VALEUR floor(6*random())+1"/>
            <item code="15#D&lt;6" algoitem="TANT_QUE (D&lt;6) FAIRE">
                <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                <item code="4#voulez vous relancer le dé#0" algoitem="AFFICHER &quot;voulez vous relancer le dé&quot;"/>
                <item code="2#reponse#pasliste" algoitem="LIRE reponse"/>
                <item code="5#D#floor(6*random())+1#pasliste" algoitem="D PREND_LA_VALEUR floor(6*random())+1"/>
                <item code="3#D#1#pasliste" algoitem="AFFICHER D"/>
                <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
            </item>
            <item code="4#gagné#0" algoitem="AFFICHER &quot;gagné&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="15#reponse!=&quot;oui&quot;" algoitem="TANT_QUE (reponse!=&quot;oui&quot;) FAIRE">
                    <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                    <item code="4#je n'ai pas comprit#0" algoitem="AFFICHER &quot;je n'ai pas comprit&quot;"/>
                    <item code="2#reponse#pasliste" algoitem="LIRE reponse"/>
                    <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
