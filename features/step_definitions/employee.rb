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

  Dado('que o usuario queira cadastrar um novo funcionario') do
    @post_url = 'url da api'
  end

    Quando ('ele inserir seus dados') do
      @create_employee = HTTParty.post(@post_url, :headers => {'Content-Type': 'application/json'}, body: {
        "employee_name": "nome do funcionario",
        "employee_salary": 000000,
        "employee_age": 00,
        "profile_image": ""
      }.to_json)
    end

    Entao('o funcionario estara cadastrado') do
      expect(@create_employee.code).to eql (200)
      expect(@create_employee.msg).to eql 'OK'
      expect(@create_employee["status"]).to eql 'success'
      expect(@create_employee["message"]).to eql 'Successfully! Record has been added.'
      expect(@create_employee['data']["employee_name"]).to eql 'nome do funcionario'
      expect(@create_employee['data']["employee_salary"]).to eql (000000)
      expect(@create_employee['data']["employee_age"]).to eql (00)