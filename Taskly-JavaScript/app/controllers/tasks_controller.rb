class TasksController < ApplicationController

  def new
    # @task.task_list_id = @task_list.id
    # @users = User.all

    @task_list = TaskList.find(params[:task_list_id])
    @task = Task.new
  end

  def create
    puts"="*50
    puts params
    puts params[:task][:date]
    puts"="*50


    # due_date = Date.new(
    #   params[:task]["date(1i)"].to_i,
    #   params[:task]["date(2i)"].to_i,
    #   params[:task]["date(3i)"].to_i
    # )


    # @task_list = TaskList.find(params[:task_list_id])
    # @users = User.all
    # @task.task_list_id = params[:task_list_id]
    @task = Task.new(
      description: params[:task][:description],
      date: params[:task][:date],
      task_list_id: params[:task_list_id])

    if @task.save
      redirect_to root_path

      # flash[:notice]= "Task was created successfully!"

    else
      @task_list = TaskList.find(params[:task_list_id])
      # @users = User.all
      @task.errors[:base] << "Your task could not be created"
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path, notice: "Task was deleted successfully!"
  end



end