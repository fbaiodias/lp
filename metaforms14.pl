%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%       GRUPO NUM: 
%       ALUNOS: 
%
%               ATENCAO: NAO USAR ACENTOS OU CEDILHAS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% ESCREVER AQUI O CODIGO DO PROJECTO DE LP 2013/2014

trioLeft(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloVertical(Peca, Linha, Coluna, Tabuleiro)). 

trioRight(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloVertical(Peca, Linha, Coluna, Tabuleiro)).

cobra(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloVertical(Peca, Linha, Coluna, Tabuleiro)).

tSimples(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloHorizontal(Peca, Linha, Coluna, Tabuleiro)).

tLeft(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloVertical(Peca, Linha, Coluna, Tabuleiro)).

tRight(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloVertical(Peca, Linha, Coluna, Tabuleiro)).

tInvertido(Peca, Linha, Coluna, Tabuleiro) :-
  (rectanguloHorizontal(Peca, Linha, Coluna, Tabuleiro)).

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



check(Tabuleiro, TabuleiroTotal) :- 
  ().