class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    avg = 0
    arr = subject_item_notes.select { |a| a.subject_item == subject_item }.map { |b| b.value }
    if (!arr.empty?)
      avg = arr.inject { |sum, el| sum + el }.to_f / arr.size
    end
    "#{'%.2f' % avg}"
  end

  def birthday_decorator
    if !birthday.nil?
      "#{birthday.year}-#{format('%02d', birthday.month)}_#{format('%02d', birthday.day)}"
    end
  end
end

