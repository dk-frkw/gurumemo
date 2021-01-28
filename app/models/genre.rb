class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '居酒屋' },
    { id: 3, name: 'ダイニングバー・バル' },
    { id: 4, name: '焼肉' },
    { id: 5, name: '寿司' },
    { id: 6, name: '中華' },
    { id: 7, name: 'イタリアン・フレンチ' },
    { id: 8, name: '韓国料理' },
    { id: 9, name: 'ラーメン' },
    { id: 10, name: 'カフェ・スイーツ' }
  ]

  include ActiveHash::Associations
  has_many :records
end
