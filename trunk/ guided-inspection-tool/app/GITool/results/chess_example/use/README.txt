A ferramenta USE apresenta uma limita��o, pois o diagrama de sequ�ncia gerado visualmente na ferramenta USE � apenas uma imagem, que n�o � exportada para XMI.

Com isso, � necess�rio criar uma c�pia deste diagrama de sequ�ncia (caso de teste) na ferramenta MagicDraw e ent�o gerar um XMI para ser utilizado na ferramenta GITool. 

Um exemplo de caso de teste criado no magic draw pode ser observado na pasta ../test_case/uml.

Lembrar de colocar em cada arquivo diagrama de sequ�ncia do .mdzip um Stereotype com o nome Design e TestCase, conforme Passo 4 do tutorial.

Estes modelos foram gerados assim:
File>Export to>EMF UML2 (v1.x) XMI File

Selecione uma pasta e dentro da pasta haver� um arquivo '.uml2'. Apenas este modelo ser� utilizado pela inspe��o guiada, seja como caso de teste ou como diagrama a ser inspecionado. Copie estes arquivos nas pastas indicadas pelo tutorial.

Abra o arquivo (.uml2) dentro do projeto do eclipse, note que ser� gerado um outro arquivo com extens�o '.uml'. Ent�o este arquivo ser� utilizado na configura��o da GITool.

