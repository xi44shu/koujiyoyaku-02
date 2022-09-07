class Size < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '小口径' },
    { id: 3, name: '中口径' },
    { id: 4, name: '大口径' },
    { id: 5, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :schedules

end