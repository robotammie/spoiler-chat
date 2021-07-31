require 'rails_helper'

describe Chat do
  let(:creator) { User.create }

  before do
    subject.users = [creator]
    subject.save!
  end

  context 'validations' do
    it 'requires a non-zero number of users' do
      expect(subject).to be_valid
      subject.users = []
      expect(subject).to_not be_valid
    end
  end
end