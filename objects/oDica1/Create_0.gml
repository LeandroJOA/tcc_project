/// @description Insert description here
// You can write your code in this editor

//Criando meu  menu

menu = ["Iniciarkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk", "João", "Sair", "gato", "Rato"];

//Seleção do menu
sel = 2;

#region MÉTODOS

//Define align
desenha_menu = function(){
	//Definindo a fonte
	draw_set_font(fnt_dica1); 

	//alinhando meu texto
	define_align(0, 0);

	//Desenhando meu menu
	//Pegando o tamanho do meu menu
	var _qtd = array_length(menu);

	//Pegando altura da tela
	var _alt = display_get_gui_height()

	//definindo o espaço entre linhas
	var _espaco_y = string_height("I") + 16;

	//pegando altura do menu
	var _alt_menu = _espaco_y * _qtd;

	//Desenhando as opções 
	for (var i = 0; i < _qtd; i++){
		//definindo cor do meu texto
		var _cor = c_white, _marg_x = 0;

		//Desenhando o item do menu
		var _texto = menu[i];
	
		//Checando se a seleção esta no texto atual
		if(sel == i){
			_cor = c_green;
			_marg_x = 32;
		}
		draw_text_color(20, (_alt / 2) - _alt_menu / 2 + (i * _espaco_y), _texto, _cor, _cor, _cor, _cor, 1);//definindo a centralização geral do texto
	}

	//resetando os meus draw set (pois são variaveis globais)
	draw_set_font(-1);
	define_align(-1, -1);
}

//Controlando o menu
controla_menu = function(){
	//Alterando a seleção 

	//pegando as teclas
	var _up, _down, _avanca, _recua;

	_up     = keyboard_check_pressed(vk_up);
	_down   = keyboard_check_pressed(vk_down);
	_avanca = keyboard_check_pressed(vk_enter);
	_recua  = keyboard_check_pressed(vk_escape);

	if(_up or _down){
		//Mudando o valor do sel 
		sel += _down - _up;
	
		//Limitando o sel dentro do vetor
		var _tam = array_length(menu) - 1;
		sel = clamp(sel, 2, _tam);
	}	
}
#endregion

