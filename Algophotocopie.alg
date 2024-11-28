<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="facture PREND_LA_VALEUR ( 10*0.10 ) + ( 20*0.09 ) +( (quantite - 30)*0.08 )" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2" totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="quantite EST_DU_TYPE NOMBRE" code="1#NOMBRE#quantite"/>
        <item algoitem="facture EST_DU_TYPE NOMBRE" code="1#NOMBRE#facture"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;nombre de copie&quot;" code="4#nombre de copie#0"/>
        <item algoitem="LIRE quantite" code="2#quantite#pasliste"/>
        <item algoitem="SI (quantite &lt;= 10) ALORS" code="6#quantite &lt;= 10">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="facture PREND_LA_VALEUR 0.10*quantite" code="5#facture#0.10*quantite#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (quantite &lt;=30) ALORS" code="6#quantite &lt;=30">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="facture PREND_LA_VALEUR ( 10*0.10 ) + ( ( quantite - 10 ) * 0.09 )" code="5#facture#( 10*0.10 ) + ( ( quantite - 10 ) * 0.09 )#pasliste"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="facture PREND_LA_VALEUR ( 10*0.10 ) + ( 20*0.09 ) +( (quantite - 30)*0.08 )" code="5#facture#( 10*0.10 ) + ( 20*0.09 ) +( (quantite - 30)*0.08 )#pasliste"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="AFFICHER &quot;prix ttc:&quot;" code="4#prix ttc:#0"/>
        <item algoitem="AFFICHER facture" code="3#facture#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
