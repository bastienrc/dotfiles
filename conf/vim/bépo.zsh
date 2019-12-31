" le replis pour les flemards !
noremap <Tab> zA 
noremap <S-Tab> zc
 
" Tab fait un Esc, Maj+Tab fait un Tab
inoremap <Tab> <Esc>
inoremap <S-Tab> <Tab>
vnoremap <Tab> <Esc>
vnoremap <S-Tab> <Esc>
 
 
" ————————————————
"
" {cr} = « gauche / droite »
noremap c h
noremap r l
" {ts} = « haut / bas »
noremap t gj
noremap s gk
" {CR} = « haut / bas de l'écran »
noremap C H
noremap R L
" {TS} = « Ligne haut / bas »
noremap T j
noremap S k
 
"" {HJKL} <- [CTSR]
"" ————————————————
"" {J} = « Jusqu'à »            (j = suivant, J = précédant)
noremap j t
noremap J T
"" {L} = « Change »             (h = bloc, H = jusqu'à la fin de ligne)
noremap l c
noremap L C
"" {H} = « Remplace »           (l = caractère, L = texte)
noremap h r
noremap H R
"" {K} = « Supprime et insère » (k = caractère, K = ligne)
noremap k s
noremap K S
"" Effet domino : J et K manquent à l'appel
noremap ç J 
noremap gç gJ 
noremap Ç K
"
"" pour la correction orthographique
noremap ]k ]s
noremap [k [s
"
"" {W} -> [É]
"" ——————————
"" Le placement de {W} est catastrophique, mais ça se soigne ;-)
noremap é w
noremap É W
"" efface un mot quand on n’est pas au début (désactivé car ralentit vim)
"noremap aé aw
"noremap aÉ aW
"
"" Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
""noremap w <C-w>
""noremap W <C-w><C-w>
"
"" Désambiguation de {g}
"" —————————————————————
"" ligne précédante/suivante (à l'intérieur d'une phrase)
""noremap gs gk
""noremap gt gj
"
"Une tentative… On met P et Y côtes à côtes. E à côté de B et É (logique !) et X juste sous l’index, pour effacer !
" P est à côté de Y
noremap x p 
noremap X P
" X est sous l’index pour effacer dans la joie…
noremap e x
noremap E X
" E est à côté de B et É pour les déplacement mot à mot
noremap p e
noremap P E
 
"" onglet précédant/suivant
noremap gb gT
noremap gé gt
"
"" premier/dernier onglet
noremap gB :exe "silent! tabfirst"<CR>
noremap gÉ :exe "silent! tablast"<CR>
"
"" amène au début de la ligne écran
"noremap g" g0
"
"" va au prochain / précédent replis
noremap zt zj
noremap zs zk
"
""pour que mon apostrophe courbe soit reconnue comme droite
"noremap ’ '
"
"
"" Chiffres en accès direct
"" ————————————————————————
noremap " 0
noremap < 1
noremap > 2
noremap ( 3
noremap ) 4
noremap [ 5
noremap ] 6
noremap / 7
noremap * 8
noremap = 9
noremap 0 "
noremap 1 <
noremap 2 >
noremap 3 (
noremap 4 )
noremap 5 [
noremap 6 ]
noremap 7 /
noremap 8 * 
noremap 9 =
 
"
" 
" PgUp / Pg Down. Vim utilises Ctrl+[B] et Ctrl+[F]
" noremap <BS> <PageUp>
" noremap <Space> <PageDown>
" On n’applique un raccourcis que pour avancer de demi-pages en demi-pages
noremap <BS> <C-U>
noremap <Space> <C-D> 
" [Enter] recentre la page sur le curseur"
noremap <Return> zz " ligne courante au milieu de la fenêtre
"
 
" Sélectionner tout
map <C-a> ggVG
" Copier (le gv c'est pour remettre le sélection)
"map <C-c> "+ygtv
" Couper
"map <C-x> "+x
" Coller
"map <C-p> "+gP
 
"" Pour l’utilisation en mode :Ex Cf le fichier ~/.vim/after/ftplugin/netrw.vim