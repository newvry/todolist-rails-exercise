class TodolistsController < ApplicationController

	def index
		@todolists = Todolist.all
	end

	def new
		@todolist = Todolist.new
	end

	def create
		@todolist = Todolist.new(todolist_params)
		if @todolist.save
		   redirect_to todolists_path
		else
		   render :action =>  :new
		end
	end

	# def show
	# 	@todolist = Todolist.find(params[:id])
	# end

	def edit
		@todolist = Todolist.find(params[:id])
	end

	def update
		@todolist = Todolist.find(params[:id])
		if @todolist.update(todolist_params)
		   redirect_to todolists_path
		else
			render :action => :edit
		end
	end

	def destroy
		@todolist = Todolist.find(params[:id])
		@todolist.destroy

		redirect_to todolists_path
	end

	private 

	def todolist_params
		params.require(:todolist).permit(:title,:duedate,:description)
	end

end
