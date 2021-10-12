# frozen_string_literal: true

require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def show
    task = Task.find_by(slug: params[:slug])
    if task
      render status: :ok, json: { task: task }
    else
      render status: :not_found, json: { error: "Task not found" }
    end
  end
end
