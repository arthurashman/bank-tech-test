require 'account'

describe Account do
  subject(:account) { described_class.new }
  it 'opens with balance of 0' do
    expect(account.balance).to eq(0)
  end

  describe '#deposit' do
    it 'adds value to balance' do
      expect{account.deposit(500)}.to change{account.balance}.from(0).to(500)
    end
  end

  describe '#withdraw' do
    it 'subracts value from balance' do
      account.deposit(1000)
      expect{account.withdraw(500)}.to change{account.balance}.from(1000).to(500)
    end
  end
end
