// Script assets have changed for v2.3.0 see
function scr_textos(){
	switch npc_nome{
		case "lua":
			ds_grid_add_text("Olá! vou te ajudar a sair dessa com lógica de programação", sRetratoSensei01, 0, "Mestre");
			ds_grid_add_text("Tudo bem... Me diga o que fazer", sPlayer, 1, "Coelhinho");
			ds_grid_add_text("Na programação também existem conceitos como os de verdadeiro ou falso", sRetratoSensei01, 0, "Mestre");
			ds_grid_add_text("Olhe esta frase ao seu lado...", sRetratoSensei01, 0, "Mestre");
			ds_grid_add_text("Ela esta dizendo que a parede te para", sRetratoSensei01, 0, "Mestre");
			ds_grid_add_text("E o que eu posso fazer ?", sPlayer, 1, "Coelhinho");
			ds_grid_add_text("Desmonta-la, tornando essa afirmação como falsa", sRetratoSensei01, 0, "Mestre");
			ds_grid_add_text("Ok, farei isso!", sPlayer, 1, "Coelhinho");
			ds_grid_add_text("Muito obrigado!", sPlayer, 1, "Coelhinho");
		break;
	}
}