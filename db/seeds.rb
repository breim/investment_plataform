# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



categories = [
		["Propaganda e Marketing"],["Automotiva"],["Tecnologia Verde/Limpa"],["Nuvem"],
		["Prestadores de serviço para web"],["Cupons e Promoções"],["Análise de dados"],
		["Midia Digital"],["eCommerce"],["Educação"],["Recursos Humanos"],["Negócios na web"],
		["Eventos"],["Moda / Vestuário"],["Area Financeira"],["Games"],["Area da saúde"],
		["Crianças e Familia"],["Legal / Jurídico"],["Restaurantes / Comidas"],["Mobile"],
		["Música"],["Notícias e Entretenimento"],["Outros"],["Pagamentos"],
		["Produtividade"],["Imobiliária"],["Varejo"],["Vendas"],
		["Segurança"],["Midia Social"],["Software"],["Tecnologia"],["Transportes"],["Viagem / Lazer"] ]

categories.each do |category,aw|
	Category.create( name: category )
end

puts '====> its ok'