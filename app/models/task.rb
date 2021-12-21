class Task < ApplicationRecord
   validates :title, presence: true, uniqueness: true, length:{ maximum:30 }
   validates :start, presence: true
   validates :end, presence: true
   validates :memo, length:{ maximum:200 }
end
