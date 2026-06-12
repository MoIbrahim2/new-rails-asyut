class StudentsController < ApplicationController
  def index
     @students = [
      { name: "Mohamed", email: "mohamed@example.com" },
      { name: "Ahmed", email: "ahmed@example.com" }
    ]
  end
end
