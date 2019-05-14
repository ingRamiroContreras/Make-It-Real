# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

languages = Language.create(name: 'Ruby', imgurl: 'https://i.imgur.com/BjATM4S.jpg', description: 'Un lenguaje de programación dinámico y de código abierto enfocado en la simplicidad y productividad. Su elegante sintaxis se siente natural al leerla y fácil al escribirla. ')
languages = Language.create(name: 'JavaScript', imgurl: 'https://i.imgur.com/UtEaMII.png', description: 'JavaScript es un lenguaje de programación interpretado, dialecto del estándar ECMAScript. Se define como orientado a objetos, ​ basado en prototipos, imperativo, débilmente tipado y dinámico')
languages = Language.create(name: 'Phyton', imgurl: 'https://i.imgur.com/bax5oem.jpg', description: 'Python es un lenguaje de programación interpretado cuya filosofía hace hincapié en una sintaxis que favorezca un código legible. Se trata de un lenguaje de programación multiparadigma, ya que soporta orientación a objetos, programación imperativa y, en menor medida, programación funcional.')

languages = Language.create(name: 'C', imgurl: 'https://i.imgur.com/0M0Bl0c.jpg', description: 'C es un lenguaje de programación originalmente desarrollado por Dennis Ritchie entre 1969 y 1972 en los Laboratorios Bell, ​ como evolución del anterior lenguaje B, a su vez basado en BCPL. Al igual que B, es un lenguaje orientado a la implementación de Sistemas operativos, concretamente Unix.')

languages = Language.create(name: 'Java', imgurl: 'https://i.imgur.com/FvH0d2C.png', description: 'Java es un lenguaje de programación de propósito general, concurrente, orientado a objetos, que fue diseñado específicamente para tener tan pocas dependencias de implementación como fuera posible.')
languages = Language.create(name: 'php', imgurl: 'https://i.imgur.com/Y6yZtIF.png', description: 'PHP, acrónimo recursivo en inglés de PHP: Hypertext Preprocessor, es un lenguaje de programación de propósito general de código del lado del servidor originalmente diseñado para el desarrollo web de contenido dinámico')
