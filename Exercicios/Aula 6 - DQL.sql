#DQL - Select
# Usado para busca de dados
#---Busca de dados simples - Envolve uma unica tabela e condicionais simplificados
/*
SELECT Dnome, Dnumero # Campo(s) que desejamos busacar
FROM departamento # tabela(s) que desejamos buscar
WHERE DNumero>3 # Usado para filtrar os dados desejados / condicional 
*/

#---Select envolvendo mais de uma tabela
# Um JOIN (OU JUNÇÃO)
#O que e um JOIN ou JUNÇÃO? - R:Um select envolvendo mais de uma tabela seguido de um condicional (FK de uma tabela = PK de outra tabela)
/*
SELECT DNome,PNome
FROM Departamento,Empregado
WHERE DNumero_departamento = DNumero;
*/
#INNER JOIN
/*
SELECT DNome,PNome
FROM Departamento INNER JOIN Empregado
WHERE DNumero_departamento = DNumero
*/

#JOIN com 3 Tabelas
SELECT E.PNome, P.PNome
FROM empregado AS E, projeto AS P, trabalha_em AS TE
WHERE TE.SSN_Empregado = E.SSN AND TE.PNumero_Projeto = P.PNumero