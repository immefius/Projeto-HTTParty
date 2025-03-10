Dado('que o usuario consulte informacoes do funcionario') do
    @get_url = 'url da api'
  end
  
  Quando('ele realizar a busca') do
    @list_employee = HTTParty.get(@get_url)
  end
  
  Entao('uma lista de funcionarios deve retornar') do
    expect(@list_employee.code).to eql 200
    expect(@list_employee.message).to eql 'OK'
  end