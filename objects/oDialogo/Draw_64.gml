/// @description Insert description here
// You can write your code in this editor
if inicializar == true {
	var _guil = display_get_gui_width();
	var _guia = display_get_gui_height();

	var _xx = 0;//espaço horizontal que será dado ao texto
	var _yy = _guia - 70;//espaço vertical que será dado ao texto verticalmente controlando a altura
	var _c = c_black;
	var _sprite = texto_grid[# Infos.Retrato, pagina];
	

	//lado esquerdo
	if texto_grid[# Infos.Lado, pagina] == 0{
		draw_rectangle_color(_xx + 60, _yy, _guil, _guia, _c, _c, _c, _c, false);
		var _stgw = string_width(texto_grid[# Infos.Nome, pagina]);
		draw_set_font(fnt_dica1);
		draw_text(_guil - 600 - _stgw, _yy - 10, texto_grid[# Infos.Nome, pagina]);
		draw_set_font(fnt_dialogo);
		draw_text_ext(_xx + 65, _yy + 10 , texto_grid[# Infos.Texto, pagina], 10, _guil - 50);
		draw_sprite_ext(_sprite, 0, 20, _guia + 10, 3, 3, 0, c_white, 1);
	//lado direito
	}else{
		draw_rectangle_color(_xx, _yy, _guil - 80, _guia, _c, _c, _c, _c, false);
		var _stgw = string_width(texto_grid[# Infos.Nome, pagina]);
		draw_set_font(fnt_dica1);
		draw_text(_guil - 1 - _stgw, _yy - 5, texto_grid[# Infos.Nome, pagina]);
		draw_set_font(fnt_dialogo);
		draw_text_ext(_xx, _yy + 10, texto_grid[# Infos.Texto, pagina], 20, _guil - 60);
		draw_sprite_ext(_sprite, 0, _guil + 5, _guia - 70, -3, 3, 0, c_white, 1);
	}

	draw_set_font(-1);

	}