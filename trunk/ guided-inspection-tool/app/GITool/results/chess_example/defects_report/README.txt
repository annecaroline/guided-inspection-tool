Para conseguir visualizar o relat�rio de defeitos em HTML, � necess�rio fazer algumas altera��es no arquivo de relat�rio de defeitos gerado (ChessDefectsReport_TC_01.xml).

Estas altera��es foi feita no arquivo 'ChessDefectsReport_TC_Exemplo.xml'.

Abaixo temos a sequ�ncia de passos para modificar o arquivo:

1. Abrir o arquivo 'ChessDefectsReport_TC_01.xml' em um editor de texto.

2. Acrescentar abaixo de '<?xml version="1.0" encoding="ISO-8859-1"?>' o texto:
<?xml-stylesheet type="text/xsl" href="defectsreport.xsl"?>

3. Alterar a linha que tem:
 <Report xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="DefectsReport" testCase="TestCase_01 - ChessGame">

para apenas:
 <Report testCase="TestCase_01 - ChessGame">

4. Fazer a opera��o REPLACE ALL para alterar tudo que tiver 'xsi:type' para 'type'.

5. Salve o arquivo e abra-o usando o Firefox.



