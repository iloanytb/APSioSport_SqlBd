use bdSport;
 Select PS.nivExp AS 'Niveau', S.lib AS 'Sport pratiqué' From Pratiquer_Sport PS Inner Join Sport S ON PS.idSport = S.id Where PS.idSportif = 1;