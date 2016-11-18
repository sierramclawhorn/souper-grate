require 'rails_helper'

RSpec.describe User, type: :model do
  
  let(:user) { User.new(username: 'tomithy', 
                        first_name: 'Tim', 
                        last_name: 'Tao', 
                        email: 't@t.com', 
                        password: 't') }

  describe '#user_attributes' do

    context '.username' do 
      it 'returns string of username' do
        expect(user.username).to eq('tomithy')
      end
    end

    context '.first_name' do 
      it 'returns string of first name' do
        expect(user.first_name).to eq('Tim')
      end
    end

    context '.last_name' do 
      it 'returns string of last name' do
        expect(user.last_name).to eq('Tao')
      end
    end

    context '.email' do 
      it 'returns string of email' do
        expect(user.email).to eq('t@t.com')
      end
    end

    context '.password does not equal .password_digest' do 
      it 'compares password to password_digest' do
        expect(user.password).not_to eq(user.password_digest)
      end
    end

  end
end
