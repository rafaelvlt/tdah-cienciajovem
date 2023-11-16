extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("caixadetexto/Moldura Texto").visible = false
	get_node("caixadetexto/Explicacao").visible = false
func _on_amor_pressed():
	get_node("caixadetexto/Moldura Texto").visible = true
	get_node("caixadetexto/Explicacao").visible = true
	get_node("caixadetexto/Explicacao").text = "Cantiga de amor refere-se a um género
de poesia lírica medieval galego-portuguesa
que se centrava em temas de amor cortês. 
Essas canções eram tipicamente escritas
por trovadores e muitas vezes 
expressavam as emoções e desejos do
poeta em relação a uma pessoa amada."

func _on_amigo_pressed():
	get_node("caixadetexto/Moldura Texto").visible = true
	get_node("caixadetexto/Explicacao").visible = true
	get_node("caixadetexto/Explicacao").text = "Cantiga de amigo é outro género de poesia
lírica medieval galego-portuguesa. Essas 
canções foram escritas na perspectiva de
uma locutora que expressa suas emoções e
experiências, muitas vezes envolvendo um
diálogo com sua amiga, mãe ou confidente."

func _on_maldizer_pressed():
	get_node("caixadetexto/Moldura Texto").visible = true
	get_node("caixadetexto/Explicacao").visible = true
	get_node("caixadetexto/Explicacao").text = "As cantigas de maldizer são canções cuja
estrutura comporta críticas mais diretas 
e grosseiras. Nelas, são usadas termos de
baixo calão, como palavrões, pois o intuito
é mesmo agredir alguém verbalmente."

func _on_escarnio_pressed():
	get_node("caixadetexto/Moldura Texto").visible = true
	get_node("caixadetexto/Explicacao").visible = true
	get_node("caixadetexto/Explicacao").text = "Cantigas de escárnio caracterizavam-se pela 
sátira e pela zombaria. Esses poemas
frequentemente empregavam humor sarcasmo
ou até mesmo linguagem explícita para
criticar indivíduos ou normas sociais. O tom
de Cantigas de escárnio era mais crítico e
satírico se comparado aos tons românticos e
emocionais dos demais gêneros poéticos."

func _on_contexto_pressed():
	get_node("caixadetexto/Moldura Texto").visible = true
	get_node("caixadetexto/Explicacao").visible = true
	get_node("caixadetexto/Explicacao").text = "O Trovadorismo refere-se a um movimento
literário e musical medieval que surgiu na
Península Ibérica durante os séculos XII a
XIV. Abrange vários géneros poéticos escritos
em galego-português, com temas que vão do
amor cortês à sátira. Os trovadores, ou
trovadores, compunham poesia em formas
como Cantigas de amor, Cantigas de amigo
 e Cantigas de escárnio."
