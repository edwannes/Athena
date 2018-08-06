class TareasController < ApplicationController
	def index
		@tareas=Tarea.all
	end
	
	def show
		@tarea=Tarea.find(params[:id])
	end
	def new
		@tarea=Tarea.new
	end
	def create
		@tarea= Tarea.new(tarea_params)
		if @tarea.save
			redirect_to @tarea
		else
			render :new
		end
	end
	def destroy
		@tarea=Tarea.find(params[:id])
		@tarea.destroy
		redirect_to tareas_path
	end
	def edit
		@tarea=Tarea.find(params[:id])
	end
	def update
		@tarea=Tarea.find(params[:id])
		if @tarea.update(tarea_params)
			render:edit
		end
	end
	
	private
		def tarea_params
			params.require(:tarea).permit(:titulo,:descripcion)
		end
end