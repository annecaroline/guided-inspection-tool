A ferramenta USE apresenta uma limitação, pois o diagrama de sequência gerado visualmente na ferramenta USE é apenas uma imagem, que não é exportada para XMI.

Com isso, é necessário criar uma cópia deste diagrama de sequência (caso de teste) na ferramenta MagicDraw e então gerar um XMI para ser utilizado na ferramenta GITool. 

Um exemplo de caso de teste criado no magic draw pode ser observado na pasta ../test_case/uml.

Lembrar de colocar em cada arquivo diagrama de sequência do .mdzip um Stereotype com o nome Design e TestCase, conforme Passo 4 do tutorial.

Estes modelos foram gerados assim:
File>Export to>EMF UML2 (v1.x) XMI File

Selecione uma pasta e dentro da pasta haverá um arquivo '.uml2'. Apenas este modelo será utilizado pela inspeção guiada, seja como caso de teste ou como diagrama a ser inspecionado. Copie estes arquivos nas pastas indicadas pelo tutorial.

Abra o arquivo (.uml2) dentro do projeto do eclipse, note que será gerado um outro arquivo com extensão '.uml'. Então este arquivo será utilizado na configuração da GITool.

