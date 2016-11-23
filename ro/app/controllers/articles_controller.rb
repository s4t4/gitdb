class ArticlesController < ApplicationController
	#Get /articles
	def index
		@articles = Article.all    #@dfsdf -->variable de clase para pasar a la vista. Article.all -->Consulta todos los datos a la base de datos
								# varialbles sin @ se quedan en el controlador y nos son accesibles para la vista
		end	
	#Get /articles/:id
	def show
		@article = Article.find(params[:id])
	end

end