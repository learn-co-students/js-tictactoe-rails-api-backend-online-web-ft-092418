class GameSerializer < ActiveModel::Serializer
  attributes %i[id state]
end
