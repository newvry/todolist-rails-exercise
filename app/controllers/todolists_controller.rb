class TodolistsController < ApplicationController

	def index
		@todolists = Todolist.all
	end

	def new
		@todolist = Todolist.new
	end

	def create
		@todolist = Todolist.new
		@todolist.save

		redirect_to todolists_path
	end

	def show
		@todolist = Todolist.find(params[:id])
	end

end
