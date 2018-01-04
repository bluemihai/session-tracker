class Session
  include Mongoid::Document
  belongs_to :facilitator, class_name: 'User'
  field :starting, type: Time
  field :kind, type: String
end
