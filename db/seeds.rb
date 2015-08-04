# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.create(lesson: 'loops', statement: 'qual é a cor do carro azul?', a: 'azul', b: 'verde', c: 'preto', d: 'branco')
Question.create(lesson: 'loops', statement: 'quanto é 2+2?', a: '4', b: '10', c: '2', d: '0')
Question.create(lesson: 'loops', statement: 'terceiro, quarto, quinto...', a: 'sexto', b: 'primeiro', c: 'sétimo', d: 'oitavo')
Question.create(lesson: 'loops', statement: 'qual era a cor do cavalo branco de Napoleão?', a: 'branco', b: 'marrom', c: 'preto', d: 'cinza')
Question.create(lesson: 'loops', statement: 'while em portugues significa:', a: 'enquanto', b: 'se', c: 'negação', d: 'fim')
Question.create(lesson: 'loops', statement: 'qual dos nomes a seguir não representa um laço', a: 'if', b: 'while', c: 'for', d: 'foreach')
Question.create(lesson: 'loops', statement: 'x = 3+2. se x>5 escreva java senao escreva rails', a: 'rails', b: 'java', c: 'phyton', d: 'javascript')
Question.create(lesson: 'loops', statement: 'encontre x', a: 'x', b: 'y', c: 'w', d: 'z')
Question.create(lesson: 'condicional_if', statement: 'considere x=10, if(x+2 < 15): print "lol", else: print "dota"', a: 'lol', b: '10', c: 'dota', d: '12')
Lesson.create(url: 'DWkyl-1rkW4', subject: 'loops')
Lesson.create(url: '45HA6h_FTBg', subject: 'condicional_if')
