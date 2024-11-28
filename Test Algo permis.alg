<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="SI ((permis == &quot;o&quot;) et (nbranexp >= 2)) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" nbDecimales="8" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" totalBoucles="5000000" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#permis" algoitem="permis EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#nbranexp" algoitem="nbranexp EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#avez-vous un permis valide o/n#0" algoitem="AFFICHER &quot;avez-vous un permis valide o/n&quot;"/>
        <item code="2#permis#pasliste" algoitem="LIRE permis"/>
        <item code="4#Combien d'année d'experience à ce poste#0" algoitem="AFFICHER &quot;Combien d'année d'experience à ce poste&quot;"/>
        <item code="2#nbranexp#pasliste" algoitem="LIRE nbranexp"/>
        <item code="6#(permis == &quot;o&quot;) et (nbranexp >= 2)" algoitem="SI ((permis == &quot;o&quot;) et (nbranexp >= 2)) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#embauche possible#0" algoitem="AFFICHER &quot;embauche possible&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#embauche impossible#0" algoitem="AFFICHER &quot;embauche impossible&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
