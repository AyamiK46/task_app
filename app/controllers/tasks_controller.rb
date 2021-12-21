class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params.require(:task).permit(:title,:start,:end,:all_day,:memo))
      if @task.save
        redirect_to tasks_url
        flash[:notice] = "スケジュールを新規登録しました。"
      else
        render "new"
      end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(params.require(:task).permit(:title,:start,:end,:all_day,:memo))
      redirect_to tasks_url
      flash[:notice] = "スケジュールの情報を変更しました。"
    else
      render "edit"
    end

  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "スケジュールを削除しました。"
    redirect_to tasks_url
  end

end
