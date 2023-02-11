% Funcion que calcula los grados de libertad de un elemento 
% en funcion de las conectividades

function gdl = conec2gdlframe (conectiv , elem )

nnod = size(conectiv,2); 
gdl = zeros(1,3*nnod);
for i=1:nnod
	gdl(3*i-2) = 3*conectiv(elem,i)-2;
	gdl(3*i-1) = 3*conectiv(elem,i)-1;
	gdl(3*i) = 3*conectiv(elem,i);
end
