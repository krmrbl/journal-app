class TasksController < ApplicationController
  
  def index
    @category_id = params[:category_id]
    @tasks = Category.find(params[:category_id]).tasks
    # @tasks = @category.tasks
  end

  def new
    @task = @category.tasks.build
  end

  def create
    @task = @category.tasks.build(task_params) # papasahan na ng params

    if @task.save
      redirect_to category_tasks_path # galing sa rails/info which is yung indextasks
    else
      render :new
    end
  end

  def task_params
    params.require(:task).permit(:name, :body, :deadline, :status, :category_id) # need pa rin isama si :category_id kasi hahanapin ata ni rails itong parameter
  end
end
