:- use_module(library(pce)).
:- use_module(library(pce_style_item)).
main:-
	new(Menu, dialog('Sistema experto', size(500,500))),
	new(L, label(nombre, 'Bienvenido al sistema de League of Legends')),
	new(@texto, label(nombre, 'Segun la respuestas dadas te dire cual campeon elijas')),
	new(@respl, label(nombre, '')),
	new(Salir, button('Salir', and(message(Menu,destroy), message(Menu, free)))),
	new(@boton, button('Comenzar', message(@prolog, botones))),
	send(Menu, append(L)), new(@btncarrera, button('¿otra?')),
	send(Menu,display,L,point(100,20)),
	send(Menu,display,@boton,point(130,150)),
	send(Menu,display,@texto,point(50,100)),
	send(Menu,display,Salir,point(20,400)),
	send(Menu,display,@respl,point(20,130)),
	send(Menu,open_centered).

campeon(garen):- garen,!.
campeon(tryndamere):- tryndamere,!.
campeon(vi):- vi,!.
campeon(khazix):- khazix,!.
campeon(kayn):- kayn,!.
campeon(katarina):- katarina,!.
campeon(karthus):- karthus,!.
campeon(twisted):- twisted,!.
campeon(lux):- lux,!.
campeon(swain):- swain,!.
campeon(ekko):- ekko,!.
campeon(kaisa):- kaisa,!.
campeon(miss):- miss,!.
campeon(ashe):- ashe,!.
campeon(caitlyn):- caitlyn,!.
campeon(shen):- shen,!.
campeon(warwick):- warwick,!.
campeon(taric):- taric,!.
campeon(leona):- leona,!.
campeon(thresh):- thresh,!.
campeon('No tengo a ningun campeon con esa descripción').


garen :-
	es_luchador,
	pregunta('¿Tiene una gran espada?'),
	pregunta('¿Grita por demacia?'),
	pregunta('¿Se encuentra en demacia?'),
	pregunta('¿Utiliza un amadura anti-magia?'),
	pregunta('¿Tiene cabello corto?'),
	pregunta('¿Es un gran guerrero?').
tryndamere :-
	es_luchador,
	pregunta('¿Tiene una gran espada?'),
	pregunta('¿Su brazo derecho es mas fuerte que el izquierdo?'),
	pregunta('¿Se encuentra en feljord?'),
	pregunta('¿Tiene el cabello negro y largo?'),
	pregunta('¿Es un rey?').
vi :-
	es_luchador,
	es_mujer,
	pregunta('¿Tiene guantes mejorados?'),
	pregunta('¿Su frace es vi de victoria?'),
	pregunta('¿Tiene el cabello color rosa?'),
	pregunta('¿Es una increible policia?'),
khazix :-
  es_asesino,
  pregunta('¿Especializado en matar?'),
  pregunta('¿Proviene del Vacio?'),
  pregunta('¿Es una especie de bicho?'),
  pregunta('¿Tiene Garras?'),
  pregunta('¿Es un cazador implacable?').
kayn :-
  es_asesino,
  pregunta('¿Especializado en matar?'),
  pregunta('¿Utiliza una gudaña?'),
  pregunta('¿Esta en una pelea con un demonio?'),
  pregunta('¿Tiene un gran trensa?'),
  pregunta('¿Su cuerpo esta siendo poseido?').
katarina :-
  es_asesino,
	es_mujer,
  pregunta('¿Especializado en matar?'),
  pregunta('¿Utiliza una dagas?'),
  pregunta('¿Tiene una cicatriz en su ojo izquierdo?'),
  pregunta('¿Es una mujer hermosa y peligrosa?'),
  pregunta('¿Tiene el cabello rojo?').
karthus :-
  es_mago,
  pregunta('¿Es una especie de espectro?'),
  pregunta('¿Parece a la muerte?'),
  pregunta('¿Es un ser inmortal?'),
  pregunta('¿Utiliza una tunica roja?'),
twisted :-
  es_mago,
  pregunta('¿Utiliza cartas?'),
  pregunta('¿Su cabello es negro y largo?'),
  pregunta('¿Tiene una gabardina negra?'),
  pregunta('¿Cree en la fortuna?').
lux :-
  es_mago,
  es_mujer,
  pregunta('¿Es de Demacia?'),
  pregunta('¿Pertenece a la familia guardiana?'),
  pregunta('¿Es familiar de Garen?'),
  pregunta('¿Libera un gran arcorisis como ataque?').
swain :-
  es_mago,
  pregunta('¿Es un gran general?'),
  pregunta('¿Perdio su brazo?'),
  pregunta('¿Pose un cuervo por mascota?'),
  pregunta('¿Tiene un demonio en su interior?').
ekko :-
  es_mago,
  pregunta('¿Puede viajar en el tiempo?'),
  pregunta('¿Es de Test morena?'),
  pregunta('¿Tiene un peinado punk?'),
  pregunta('¿Es muy inteligente?'),
  pregunta('¿Vive en Zaun?').
kaisa :-
  es_tirador,
  es_mujer,
  pregunta('¿Tiene un traje simbiotico?'),
  pregunta('¿Proviene del vacio?'),
  pregunta('¿Tiene el cabello largo y oscuro?'),
  pregunta('¿es una gran guerrera?').
miss :-
  es_tirador,
  es_mujer,
  pregunta('¿Vaiaja en un barco?'),
  pregunta('¿Es una especie de pirtata?'),
  pregunta('¿Tiene el cabello largo y rojiso?'),
  pregunta('¿Utiliza dos pistolas con las que mataron a sus padres?').
ashe :-
  es_tirador,
  es_mujer,
  pregunta('¿Utiliza un arco?'),
  pregunta('¿Es reyna de feljord?'),
  pregunta('¿Tiene el cabello largo y blanco?'),
  pregunta('¿es una gran cazadora?').
caitlyn :-
  es_tirador,
  es_mujer,
  pregunta('¿Tiene un arma de francotirador?'),
  pregunta('¿Su nemesis es la bandida Jinx?'),
  pregunta('¿Tiene el cabello largo y oscuro?'),
  pregunta('¿Es la cheriff de Piltover?').
shen :-
  es_tanque,
  pregunta('¿Es un ninja?'),
  pregunta('¿Tiene un traje negro?'),
  pregunta('¿Utiliza una espeda espirtual?'),
  pregunta('¿Su peor enemigo es Zed?'),
  pregunta('¿Es capaz de ayudar a sus comapañeros?').
warwick :-
  es_tanque,
  pregunta('¿Puede oler la sangre?'),
  pregunta('¿Es una especie de hombre lobo?'),
  pregunta('¿Posee una garra para descuartizar?'),
  pregunta('¿Antes era humano?'),
  pregunta('¿Fue modificado?').
taric :-
  es_soporte,
  pregunta('¿Es del Monte Targon?'),
  pregunta('¿Es musculoso?'),
  pregunta('¿Se considera hermoso?'),
  pregunta('¿Posee un traje azul?'),
  pregunta('¿Su cabello es largo?').
leona :-
  es_soporte,
	es_mujer,
  pregunta('¿Es del Monte Targon?'),
  pregunta('¿Utiliza una espada y escudo?'),
  pregunta('¿Su simbolo es el sol?'),
  pregunta('¿Suu cabello es largo y castaño?').
thresh :-
  es_soporte,
  pregunta('¿Es de la islas de la sombra?'),
  pregunta('¿Es una especie de muerte?'),
  pregunta('¿Utiliza una oz y una lampara?'),
  pregunta('¿Es de color verde?'),
  pregunta('¿Es el encargado de recolectar almas?').

%desconocido :- se_desconoce_campeon.

es_luchador:- pregunta("¿Pelea cuerpo a cuerpo?"),!.
es_mujer:- pregunta("¿Es un mujer?")
es_asesino:- pregunta("¿Es especializado en ocultarse y matar?"),!.
es_mago:- pregunta("¿Utiliza magia?"),!.
es_tirador:- pregunta("¿Se especializa en ataques a distancia?"),!.
es_tanque:- pregunta("¿Resiste los golpes?"),!.
es_soporte:- pregunta("¿Ayuda sus compañeros?"),!.


:-dynamic si/1,no/1.


preguntar(Problema):-new(Di, dialog('Campeon de Lol')),
	new(L2, label(texto,'Responde las siguientes preguntas')),
	new(La, label(prob,Problema)),

	new(B1,button(si,and(message(Di,return,si)))),
	new(B2,button(no,and(message(Di,return,no)))),

	send(Di,append(L2)),
	send(Di,append(La)),
	send(Di,append(B1)),
	send(Di,append(B2)),

	send(Di,default_button,si),
	send(Di,open_centered),
	get(Di,confirm,Answer),
	write(Answer),send(Di,destroy),


	((Answer==si)->assert(si(Problema)); assert(no(Problema)),fail).

pregunta(S):- (si(S)->true; (no(S)->fail;preguntar(S))).
limpiar:- retract(si(_)),fail.
limpiar:- retract(no(_)),fail.
limpiar.


botones :-lim,
	send(@boton,free),
	send(@btncarrera,free),
	campeon(Enter),
	send(@texto, selection('tu campeon es:')),
	send(@respl, selection(Enter)),
	new(@boton, button('Iniciar con el test', message(@prolog, botones))),
	send(Menu,display,@boton,point(40,50)),
	send(Menu,display,@btncarrera,point(20,50)),
	limpiar.

lim:- send(@respl, selection('')).

limpiar2:-
	send(@texto,free),
	send(@respl,free),
	%send(@btncarrera,free),
	send(@boton,free).
