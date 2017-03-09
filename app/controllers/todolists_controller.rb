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

	def edit
		@todolist = Todolist.find(params[:id])
	end

	def update
		@todolist = Todolist.find(params[:id])
		@todolist.update(params[:id])

		redirect_to todolist_path(@todolist)
	end

end
