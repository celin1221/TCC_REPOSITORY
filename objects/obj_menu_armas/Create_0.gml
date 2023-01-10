global.main_menu = true;

menu_inicial = ["Espada", "Arco", "Arco com 3 Flechas", "Arco Perfurante", "Arco Explosivo", "Cajado", "Cajado de Gelo"];
esc[array_length(menu_inicial) - 1] = 0;

for(var i = 0; i < array_length(esc); i++){
	esc[i] = 1;
}

global.arma = 1