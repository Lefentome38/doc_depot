<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="LIRE tailleMonTableau"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#monTableau" algoitem="monTableau EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#tailleMonTableau" algoitem="tailleMonTableau EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#iValeur" algoitem="iValeur EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#produit" algoitem="produit EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#moyenne" algoitem="moyenne EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#produit#1#pasliste" algoitem="produit PREND_LA_VALEUR 1"/>
        <item code="4#Combien d'entiers dans le tableau#1" algoitem="AFFICHER &quot;Combien d'entiers dans le tableau&quot;"/>
        <item code="2#tailleMonTableau#pasliste" algoitem="LIRE tailleMonTableau"/>
        <item code="12#i#1#tailleMonTableau" algoitem="POUR i ALLANT_DE 1 A tailleMonTableau">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#valeur ?#0" algoitem="AFFICHER &quot;valeur ?&quot;"/>
            <item code="2#iValeur#pasliste" algoitem="LIRE iValeur"/>
            <item code="5#monTableau#iValeur#i" algoitem="monTableau[i] PREND_LA_VALEUR iValeur"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#i#1#tailleMonTableau" algoitem="POUR i ALLANT_DE 1 A tailleMonTableau">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#monTableau#0#i" algoitem="AFFICHER monTableau[i]"/>
            <item code="4#   #0" algoitem="AFFICHER &quot;   &quot;"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="19#Somme" algoitem="//Somme"/>
        <item code="12#i#1#tailleMonTableau" algoitem="POUR i ALLANT_DE 1 A tailleMonTableau">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#somme#somme+monTableau[i]#pasliste" algoitem="somme PREND_LA_VALEUR somme+monTableau[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#la somme des entiers du tableau est : #1" algoitem="AFFICHER &quot;la somme des entiers du tableau est : &quot;"/>
        <item code="3#somme#1#pasliste" algoitem="AFFICHER somme"/>
        <item code="19#Produit" algoitem="//Produit"/>
        <item code="12#i#1#tailleMonTableau" algoitem="POUR i ALLANT_DE 1 A tailleMonTableau">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#produit#produit*monTableau[i]#pasliste" algoitem="produit PREND_LA_VALEUR produit*monTableau[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le produit est #1" algoitem="AFFICHER &quot;Le produit est &quot;"/>
        <item code="3#produit#1#pasliste" algoitem="AFFICHER produit"/>
        <item code="19#Moyenne" algoitem="//Moyenne"/>
        <item code="4#La moyenne #1" algoitem="AFFICHER &quot;La moyenne &quot;"/>
        <item code="5#moyenne#somme/tailleMonTableau#pasliste" algoitem="moyenne PREND_LA_VALEUR somme/tailleMonTableau"/>
        <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
