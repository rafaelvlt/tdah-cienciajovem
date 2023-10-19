extends CharacterBody2D


const lines : Array[String] = [
	"Cavaleiro: Ó nobre dama, lhe trouxe uma cantiga para lhe agraciar os ouvidos!",
	"A dona que eu amo e tenho por Senhor
amostra-me-a Deus, se vos en prazer for,
se non dade-me-a morte.",

"A que tenh'eu por lume d'estes olhos meus
e porque choran sempr(e) amostrade-me-a Deus,
se non dade-me-a morte.",

"Essa que Vós fezestes melhor parecer
de quantas sei, a Deus, fazede-me-a veer,
se non dade-me-a morte.",

"A Deus, que me-a fizestes mais amar,
mostrade-me-a algo possa con ela falar,
se non dade-me-a morte."
]

func _unhandled_input(event):
	if event.is_action_pressed("interact"):
			DialogManager.start_dialog(Vector2(300, 300), lines)
			
