class LoanResource < JSONAPI::Resource
  attributes :notes, :returned, :created_at
  has_one :friend
  has_one :article
end
