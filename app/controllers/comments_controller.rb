class CommentsController < ApplicationController
  before_action :set_task

    def create
      comment = @task.comments.create! comments_params

      redirect_to @task
    end

    private
      def set_task
        @task = Task.find(params[:task_id])
      end

      def comments_params
        params.required(:comment).permit(:body)
      end
end
