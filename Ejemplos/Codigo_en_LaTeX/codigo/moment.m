% Funcion que plotea los momentos

function h = moment( x_coord , y_coord , M , offset)

R = offset*1.5 ;

x_iqz = x_coord-offset*1.5 ;
x_der = x_coord+offset*1.5 ;

% Punto de aplicacion del momento
h = plot(x_coord, y_coord,'x', 'linewidth',1.6,'color',[0.7,0.07,0.07]);

y_coord = y_coord - offset*.5 ;
theta = 0:pi/50:pi;

xunit = R * cos(theta) + x_coord;
yunit = R * sin(theta) + y_coord;
h = plot(xunit, yunit, 'linewidth',1.6,'color',[0.7,0.07,0.07]);


% Coordenadas de puntas del vector
x_1_ini = x_coord-sign(M)*offset*1.5-offset*.2+sign(M)*offset*.1 ;
x_2_ini = x_coord-sign(M)*offset*1.5+offset*.2+sign(M)*offset*.1 ;
x_fin = x_coord-sign(M)*offset*1.5 ;

% Ploteo puntas del vector
p = plot([x_1_ini,x_fin],[y_coord+offset*.5,y_coord], 'linewidth',1.6,'color',[0.7,0.07,0.07]);
p = plot([x_2_ini,x_fin],[y_coord+offset*.5,y_coord], 'linewidth',1.6,'color',[0.7,0.07,0.07]);

