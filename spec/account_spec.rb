require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:statement_entry) { double :statement_entry }
  let(:statement_entry_class) { double :statement_entry_class }
  let(:statement_printer_class) { double :statement_printer_class }

  it 'opens with balance of 0' do
    expect(account.balance).to eq(0)
  end

  describe '#deposit' do
    it 'adds deposited amount to balance' do
      allow(statement_entry_class).to receive(:new).and_return(statement_entry)
      expect{account.deposit(500, statement_entry_class)}.to change{account.balance}.from(0).to(500)
    end

    it 'inputs a statement entry into statement' do
      allow(statement_entry_class).to receive(:new).and_return(statement_entry)
      account.deposit(500, statement_entry_class)
      expect(account.statement).to include(statement_entry)
    end
  end

  describe '#withdraw' do
    it 'subracts withdrawn amount from balance' do
      allow(statement_entry_class).to receive(:new).and_return(statement_entry)
      account.deposit(1000, statement_entry_class)
      expect{account.withdraw(500, statement_entry_class)}.to change{account.balance}.from(1000).to(500)
    end
    it 'inputs a statement entry into statement' do
      allow(statement_entry_class).to receive(:new).and_return(statement_entry)
      account.withdraw(500, statement_entry_class)
      expect(account.statement).to include(statement_entry)   
     end
  end

  describe '#view_statement' do
    it 'prints a new statement' do
      expect(statement_printer_class).to receive(:print).with(account.statement)
      account.view_statement(statement_printer_class)
    end
  end


end

