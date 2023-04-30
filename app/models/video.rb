class Video < ApplicationRecord
  has_many :notes
  def self.notes
    joins("left join notes on notes.video_id = videos.id").group("videos.id").select('videos.*, avg(notes.note) nbstars').order("avg(notes.note) desc")
  end
end
