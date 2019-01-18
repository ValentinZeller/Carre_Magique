{ALGORITHME CarreMagique
//BUT: Construit un carré magique de dimension impaire
//ENTREE: Rien
//SORTIE: Carré magique

CONST TAILLE <- 5 : ENTIER
VAR carre : Tableau[1..TAILLE,1..TAILLE] de ENTIER
	i,j,k:ENTIER

DEBUT
	POUR i DE 1 A TAILLE FAIRE
		POUR j DE 1 A TAILLE FAIRE
			carre[i,j] <- 0
		FINPOUR
	FINPOUR
	i <- (TAILLE DIV 2)
	j <- (TAILLE DIV 2)+1
	carre[i,j] <- 1
	POUR K DE 1 A (TAILLE*TAILLE)-1 FAIRE
		i <- i-1
		j <- j+1
		SI (j = TAILLE+1) ALORS
			j <- 1
		FINSI
		SI (i = 0 ) ALORS
			i <- TAILLE
		FINSI
		SI (carre[i,j] <> 0) ALORS
			carre[i,j] <- k+1
		SINON
			TANTQUE (carre[i,j] <> 0) FAIRE
				i<-i-1
				j<-j-1
				SI (j = 0) ALORS
					j <- TAILLE
				FINSI
			FINTANTQUE
			carre[i,j] <- k+1
		FINSI
	FINPOUR
	POUR i DE 1 A TAILLE FAIRE
		POUR j DE 1 A TAILLE FAIRE
			ECRIRE carre[i,j]
		FINPOUR
		ECRIRE //Saut de ligne
	FINPOUR
FIN}
program CarreMagique;
//BUT: Construit un carré magique de dimension impaire
//ENTREE: Rien
//SORTIE: Carré magique
uses crt;

CONST TAILLE= 5;
VAR carre : array[1..TAILLE,1..TAILLE] of integer;
	i,j,k:integer;

Begin
  clrscr;
	for i:=1 to TAILLE do
		for j:=1 to TAILLE do
			carre[i,j]:= 0;
	i:= (TAILLE DIV 2);
	j:= (TAILLE DIV 2)+1;
	carre[i,j]:= 1;
	for K:=1 to ((TAILLE*TAILLE)-1) do
    begin
      i:= i-1;
			j:= j+1;
			if (j = TAILLE+1) then
				j:= 1;
			if (i = 0) then
				i:= TAILLE;
		if (carre[i,j] = 0) then
			carre[i,j]:= k+1
		else
      begin
        while (carre[i,j] <> 0) do
          begin
              i:= i-1;
							j:= j-1;
							if (j = 0) then
								j:= TAILLE;
							if (i = 0) then
								i:= TAILLE;
          end;
        carre[i,j]:= k+1;
      end;
	   end;
		 for i:= 1 to TAILLE do
			 begin
				 for j:= 1 to TAILLE do
					 begin
						 if (carre[i,j] < 10) then
					 	 	 write(carre[i,j],'  ')
						 else
							 write(carre[i,j],' ');
					 end;
				 writeln();
			 end;
			 readln;
END.
