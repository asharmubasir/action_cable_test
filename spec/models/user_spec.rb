require 'rails_helper'

RSpec.describe User, type: :model do

    it_behaves_like "a crud model", factory: :user,
      creates: {email: :string},
      updates: {email: "ashar@gmail.com"}
    
end
