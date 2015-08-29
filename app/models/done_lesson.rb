class DoneLesson < ActiveRecord::Base
  belongs_to :Lesson
  belongs_to :Character
end
