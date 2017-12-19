class FriendResource < JSONAPI::Resource
  attributes :first_name, :last_name, :email, :twitter, :created_at

  has_many :loans, act_as_set: true

  filters :id, :last_name, :email
  filters :first_name, apply: -> (records, value, options) {
    records.where('friends.first_name LIKE ?', "%#{value.first}%")
  }
  paginator :offset
end
