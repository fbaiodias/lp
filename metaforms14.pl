%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%       GRUPO NUM: 69
%       ALUNOS: FRANCISCO DIAS E FREDERICO MOURA 
%
%               ATENCAO: NAO USAR ACENTOS OU CEDILHAS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ESCREVER AQUI O CODIGO DO PROJECTO DE LP 2013/2014

% Definicao das pecas para depois implementar no bagof
% Todas as pecas possiveis de encontrar

peca(triangulo, azul).
peca(triangulo, amarelo).
peca(triangulo, vermelho). 
peca(circulo, azul). 
peca(circulo, amarelo).
peca(circulo, vermelho).
peca(quadrado, azul).
peca(quadrado, amarelo). 
peca(quadrado, vermelho).

% Pistas intermedias implementadas recorrendo aos predicados do metaforms12
% Por exemplo, no caso seguinte, do trioLeft sabemos que e incluido no
% rectanguloVertical.

trioLeft(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloVertical(Peca, Linha, Coluna, Tabuleiro)). 

trioRight(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloVertical(Peca, Linha, Coluna, Tabuleiro)).

tSimples(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloHorizontal(Peca, Linha, Coluna, Tabuleiro)).

tInvertido(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloHorizontal(Peca, Linha, Coluna, Tabuleiro)).

tLeft(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloVertical(Peca, Linha, Coluna, Tabuleiro)).

tRight(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloVertical(Peca, Linha, Coluna, Tabuleiro)).

cobra(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloVertical(Peca, Linha, Coluna, Tabuleiro)).

cantoTopLeft(Peca, Linha, Coluna, Tabuleiro) :-
  (quadrado(Peca, Linha, Coluna, Tabuleiro)).

cantoTopRight(Peca, Linha, Coluna, Tabuleiro) :-
  (quadrado(Peca, Linha, Coluna, Tabuleiro)).

cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro) :-
  (quadrado(Peca, Linha, Coluna, Tabuleiro)).

cantoBottomRight(Peca, Linha, Coluna, Tabuleiro) :-
  (quadrado(Peca, Linha, Coluna, Tabuleiro)).

diagonalGrave(Peca, Linha, Coluna, Tabuleiro) :-
  (quadrado(Peca, Linha, Coluna, Tabuleiro)).

diagonalAguda(Peca, Linha, Coluna, Tabuleiro) :-
  (quadrado(Peca, Linha, Coluna, Tabuleiro)).

% Aqui usamos o bagof para encontrar todas as pecas sendo X o tipo de peca 
% (triangulo, circulo ou quadrado) e Y a cor (azul, amarelo, vermelho) que
%  as poe dentro da lista TodasPecas.

encontraTodasPecas(TodasPecas) :- 
  bagof(peca(X,Y), peca(X,Y), TodasPecas).

% No check, primeiro pomos todas as pecas dentro da lista TodasPecas e depois,
% vendo as permutacoes possiveis para a lista Todas pecas (9 factorial), compara
% com o tabuleiro e devolve uma solucao possivel (que encaixe no Tabuleiro)

check(Tabuleiro, TabuleiroTotal) :- 
  encontraTodasPecas(TodasPecas), 
  permutation(Tabuleiro, TodasPecas),
  TabuleiroTotal=Tabuleiro.
