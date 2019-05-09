class Account
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(amount, entry = StatementEntry)
    @balance += amount
    @statement << entry.new(date: Time.now, credit: '%.2f' % amount, balance: @balance)
  end

  def withdraw(amount, entry = StatementEntry)
    @balance -= amount
    @statement << entry.new(date: Time.now, debit: '%.2f' % amount, balance: @balance)
  end

  def view_statement(printer = StatementPrinter.new)
    printer.print(@statement)
  end
end
