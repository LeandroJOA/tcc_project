/// @description Insert description here
// You can write your code in this editor
if inicializar == true {
var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _xx = 0;//espaço horizontal que será dado ao texto
var _yy = _guia - 70;//espaço vertical que será dado ao texto verticalmente controlando a altura
var _c = c_black;
var _sprite = texto_grid[# Infos.Retrato, pagina];
draw_set_font(fnt_dialogo);

switch texto_grid[# Infos.Lado, pagina]{
	case 0:
		draw_rectangle_color(_xx + 40, _yy, _guil, _guia, _c, _c, _c, _c, false);
		draw_text_ext(_xx + 50, _yy + 10, texto_grid[# Infos.Texto, pagina], 20, _guil - 50);
		draw_text_ext(_xx + 0, _yy + 0, texto_grid[# Infos.Nome, pagina], 10, _guil - 50);
		draw_sprite_ext(_sprite, 0, 20, _guia, 3, 3, 0, c_white, 1);
	break;
	
	case 1:
		draw_rectangle_color(_xx, _yy, _guil - 40, _guia, _c, _c, _c, _c, false);
		draw_text_ext(_xx, _yy + 10, texto_grid[# Infos.Texto, pagina], 20, _guil - 50);
		draw_sprite_ext(_sprite, 0, _guil - 10, _guia, -3, 3, 0, c_white, 1);
	break;
}

draw_set_font(-1);

}