class MovieSummarySerializer < ActiveModel::Serializer
  attributes :summary, :title

  def summary
    "#{self.object.title} - #{self.object.description[0..39]}..."
  end
end
