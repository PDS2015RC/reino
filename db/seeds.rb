Item.create(name: 'Adaga Dourada', price: 50, part: "weapon", img: "adaga")
Item.create(name: 'Escudo Dourado', price: 50, part: "shield", img: "escudo")
Item.create(name: 'Elmo Dourado', price: 50, part: "helmet", img: "upg_helmet")
Item.create(name: 'Armadura Dourada', price: 50, part: "armor", img: "armadura")

Question.create(lesson: 'loops', statement: 'qual é a cor do carro azul?', a: 'azul', b: 'verde', c: 'preto', d: 'branco')
Question.create(lesson: 'loops', statement: 'quanto é 2+2?', a: '4', b: '10', c: '2', d: '0')
Question.create(lesson: 'loops', statement: 'terceiro, quarto, quinto...', a: 'sexto', b: 'primeiro', c: 'sétimo', d: 'oitavo')
Question.create(lesson: 'loops', statement: 'qual era a cor do cavalo branco de Napoleão?', a: 'branco', b: 'marrom', c: 'preto', d: 'cinza')
Question.create(lesson: 'loops', statement: 'while em portugues significa:', a: 'enquanto', b: 'se', c: 'negação', d: 'fim')
Question.create(lesson: 'loops', statement: 'qual dos nomes a seguir não representa um laço', a: 'if', b: 'while', c: 'for', d: 'foreach')
Question.create(lesson: 'loops', statement: 'x = 3+2. se x>5 escreva java senao escreva rails', a: 'rails', b: 'java', c: 'phyton', d: 'javascript')
Question.create(lesson: 'loops', statement: 'encontre x', a: 'x', b: 'y', c: 'w', d: 'z')
#OPERADORES LÓGICOS
Question.create(lesson: 'operadores_aritimétricos', 
                statement: 'qual a função do símbolo "=" ?', 
                a: 'atribuição', 
                b: 'comparação', 
                c: 'semelhança', 
                d: 'diferença')
Question.create(lesson: 'operadores_aritimétricos', 
                statement: 'qual o símbolo utilizado para multiplicação?', 
                a: '*', 
                b: 'x', 
                c: '.', 
                d: '^')
Question.create(lesson: 'operadores_aritimétricos', 
                statement: 'qual o resultado de 5/3 ?', 
                a: '1', 
                b: '1.6', 
                c: '2', 
                d: '3')
Question.create(lesson: 'operadores_aritimétricos', 
                statement: 'qual o simbolo usado para exponenciação?', 
                a: '**', 
                b: '^', 
                c: '++', 
                d: '//')
Question.create(lesson: 'operadores_aritimétricos', 
                statement: 'qual o resultado da expressão: (3 + 4) * 2?', 
                a: '14', 
                b: '11', 
                c: '21', 
                d: '32')
#OPERADORES 
Question.create(lesson: 'operadores_lógicos', 
                statement: 'qual alternativa abaixo é o exemplo de três operadoes lógicos?', 
                a: 'and, or, e not', 
                b: 'greater, equals, lower', 
                c: 'and, true, false', 
                d: 'else, if, not')
Question.create(lesson: 'operadores_lógicos', 
                statement: 'qual a função do "==" ?', 
                a: 'comparação', 
                b: 'atribuição', 
                c: 'diferença', 
                d: 'semelhança')
Question.create(lesson: 'operadores_lógicos', 
                statement: 'qual a saída do código: if(1 > 3 or 3 < 10): printf("batata") else: ("tomate")?', 
                a: 'batata', 
                b: 'tomate', 
                c: 'batata e tomate', 
                d: 'tomate e batata')
Question.create(lesson: 'operadores_lógicos', 
                statement: 'qual símbolo é usado para representar a comparação de diferença?', 
                a: '!=', 
                b: '<>', 
                c: '==', 
                d: '=>')
Question.create(lesson: 'operadores_lógicos', 
                statement: 'qual a saída do código: if(1 > 3 and 3 < 10): printf("batata") else: ("tomate")?', 
                a: 'tomate', 
                b: 'batata', 
                c: 'tomate e batata', 
                d: 'batata e tomate')

#METODOS DE STRINGS
Question.create(lesson: 'métodos_de_strings', 
                statement: 'qual o retorno da expressão: len("batata")?', 
                a: '6', 
                b: '7', 
                c: '8', 
                d: '9')
Question.create(lesson: 'métodos_de_strings', 
                statement: 'qual o retorno da expressão: "batata".lower()?', 
                a: 'batata', 
                b: 'bAtAtA', 
                c: 'BATATA', 
                d: 'bATAta')
Question.create(lesson: 'métodos_de_strings', 
                statement: 'qual o retorno da expressão: "patinho".upper()?', 
                a: 'PATINHO', 
                b: 'patiNhO', 
                c: 'patinho', 
                d: 'PATinhO')
Question.create(lesson: 'métodos_de_strings', 
                statement: 'O que faz a função "str()"?', 
                a: 'converte o valor passado como parametro para o tipo string', 
                b: 'retorna a quantidade de caracteres de uma string', 
                c: 'transforma uma string em inteiro', 
                d: 'retorna "True" se a entrada for uma string')
Question.create(lesson: 'métodos_de_strings', 
                statement: 'qual a saída da expressão: type(1)?', 
                a: 'int', 
                b: 'str', 
                c: 'float', 
                d: 'bool')
#GIT
Question.create(lesson: 'git', 
                statement: 'qual comando que é usado para inciar repositório no git?', 
                a: 'git init', 
                b: 'git status', 
                c: 'git add', 
                d: 'git fetch')
Question.create(lesson: 'git', 
                statement: 'o que o comando "git add ." faz?', 
                a: 'adiciona todos os arquivos do diretório local para o versionamento do git', 
                b: 'mostra o status do diretório versionado', 
                c: 'troca de diretório', 
                d: 'apaga todo repositório local')
Question.create(lesson: 'git', 
                statement: 'qual o nome do arquivo que contem os nomes da lista de arquivos que são ignorados no versionamento do git?', 
                a: '.gitignore', 
                b: 'gitignore', 
                c: 'gitignore.git', 
                d: '.ignoregit')
Question.create(lesson: 'git', 
                statement: 'para verificar a situação do meu diretório que está sendo versionado, qual comando devo usar?', 
                a: 'git status', 
                b: 'git branch', 
                c: 'git checkout', 
                d: 'git show')
Question.create(lesson: 'git', 
                statement: 'o que o comando "git commit -a" faz?', 
                a: 'adiciona previamente todos os arquivos que faltam adicionar(git add .) e já faz o commit direto', 
                b: 'faz somente com que os arquivos adicionado sejam commitados', 
                c: 'commita as alterações e mostra os status do git.', 
                d: 'commita sem adicionar')
#CONDICIONAL IF
Question.create(lesson: 'condicional_if', 
                statement: 'qual palavra-chave é usada para o "senão"?', 
                a: 'else', 
                b: 'if', 
                c: 'elsif', 
                d: 'elif')
Question.create(lesson: 'condicional_if', 
                statement: 'como seria a expressão para saber se alguém pode dirigir de acordo com a idade?', 
                a: 'if(idade >= 18): print("pode dirigir!")', 
                b: 'if(idade > 18): print("pode dirigir!")', 
                c: 'if(idade < 18): print("pode dirigir!")', 
                d: 'if(idade == 18): print("pode dirigir!")')
Question.create(lesson: 'condicional_if', 
                statement: 'qual a expressão que melhor traduz a rotina de um estudante que só vai a aula na semana?', 
                a: 'if(dia == "sabado" or dia == "domingo"): print("não ir a aula") else: print("ir a aula")', 
                b: 'if(dia >= "sabado" and (not dia > "domingo")): print("ir a aula") else: print("não ir a aula")', 
                c: 'if(dia == "domingo"): print("ir a aula") else: print("não ir a aula")', 
                d: 'if(dia != "sabado"): print("ir a aula") else: print("não ir a aula")')
Question.create(lesson: 'condicional_if', 
                statement: 'qual palava-chave é usada para a expressão "senão se" ?', 
                a: 'elif', 
                b: 'else', 
                c: 'if', 
                d: 'end')
Question.create(lesson: 'condicional_if', 
                statement: 'qual o resultado da expressão: pokemon = "squire" if(pokemon == "bulbasaur"): print("folhas navalha!") elif(pokemon == "charizard"): print("brasas!") else: print("bolhas!")', 
                a: 'bolhas!', 
                b: 'folhas navalha!', 
                c: 'brasas!', 
                d: 'batata!')

Lesson.create(url: 'DWkyl-1rkW4', subject: 'loops')
Lesson.create(url: '45HA6h_FTBg', subject: 'condicional_if')
Lesson.create(url: 'DWkyl-1rkW4', subject: 'loops')
Lesson.create(url: '88DuNsoq8Xs', subject: 'operadores_aritimétricos')
Lesson.create(url: '5o3j4Y1WFc8', subject: 'operadores_lógicos')
Lesson.create(url: 'GmwD4I1gobQ', subject: 'métodos_de_strings')
Lesson.create(url: '-GhA2JPImgU', subject: 'git')