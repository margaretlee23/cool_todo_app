class TasksController < ApplicationController


  def index
      @tasks = Task.all
      render :index
  end

  def new
      @task = Task.create
      render :new
  end

  def create
            new_task = params.require(:task).permit(:content, :complete)
            task = Task.create(new_task)
            redirect_to "/tasks/#{task.id}"
        end

    def show
            id = params[:id]
            @task = Task.find(id)
            render :show
        end

     def edit
            id = params[:id]
            @task = Task.find(id)
            render :edit
        end


       def update
        task_id = params[:id]
        task = Task.find(task_id)

        # get updated data
        updated_attributes = params.require(:task).permit(:content, :complete)
        # update the creature
        task.update_attributes(updated_attributes)

        #redirect to show
        redirect_to "/tasks/#{task_id}"
    end

     def destroy
        id = params[:id]
        task = Task.find(id)
        task.destroy
        redirect_to "/tasks"
    end


end




