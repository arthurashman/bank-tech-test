describe 'Feature tests' do
  it 'prints correct statement after deposits and withdrawal' do
    allow(Time).to receive(:now).and_return Time.new(2019, 1, 1)

    account = Account.new
    account.deposit(1000)
    account.deposit(2000)
    account.withdraw(500)
    expect(account.view_statement).to eq('date || credit || debit || balance\n01/01/19 ||  || 500.00 || 2500.00\n01/01/19 || 2000.00 ||  || 3000.00\n01/01/19 || 1000.00 ||  || 1000.00')
  end

  it 'prints statement with only headers when no interactions have occured' do
    account = Account.new
    expect(account.view_statement).to eq('date || credit || debit || balance')
  end

  it 'prints correct statement after a deposit' do
    allow(Time).to receive(:now).and_return Time.new(2019, 1, 1)
    account = Account.new
    account.deposit(500)
    expect(account.view_statement).to eq('date || credit || debit || balance\n01/01/19 || 500.00 ||  || 500.00')
  end
  it 'prints correct statement after a withdrawal' do
    allow(Time).to receive(:now).and_return Time.new(2019, 1, 1)
    account = Account.new
    account.withdraw(500)
    expect(account.view_statement).to eq('date || credit || debit || balance\n01/01/19 ||  || 500.00 || -500.00')
  end
end
