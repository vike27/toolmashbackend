class ToolsController < ApplicationController

	def index
	  @tools = Tool.all
	end 

	def new
	  @tool = Tool.new
	end

	def show
	  @tool = Tool.find(params[:id])
	end

	def create
	  @tool = Tool.new(tool_params)
	  if @tool.save 
	  	redirect_to @tool, :notice => 'Tool created successfully'
	  end
	end

	def destroy
	end

	def edit
	end

	def update
	end

	def tool_params
	  params.require(:tool).permit(:name, :description)
	end


end
