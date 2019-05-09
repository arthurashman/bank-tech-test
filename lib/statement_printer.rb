class StatementPrinter

  def print(statement)
    formatted_statement = ["date || credit || debit || balance"]
    statement.reverse.each do | entry |
       formatted_statement << "#{entry.date} || #{entry.credit} || #{entry.debit} || #{'%.2f' % entry.balance}"
    end 
    formatted_statement.join("\n")
  end
end      
