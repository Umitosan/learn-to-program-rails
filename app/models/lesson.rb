class Lesson < ActiveRecord::Base
  belongs_to :section

  validates :name, :presence => true
  validates :content, :presence => true
  validates :order, :presence => true
  validates :section_id, presence: true


  def next
    tmpOrder = self.order + 1
    tmpSection = self.section_id
    foundLesson = Lesson.find_by(order: tmpOrder, section_id: tmpSection)
    if (foundLesson != nil)
      return foundLesson.id
    else
      return self.id
    end
  end

  def prev
    tmpOrder = self.order - 1
    tmpSection = self.section_id
    foundLesson = Lesson.find_by(order: tmpOrder, section_id: tmpSection)
    if (foundLesson != nil)
      return foundLesson.id
    else
      return self.id
    end
  end

end
