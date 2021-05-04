Quando('solicito um GET com params de nome igual a naik') do
  @ambiente_params = YAML.load_file("#{PATH_MASSA}/params.yml")
  @params = @ambiente_params['users']
  @response = users.get_name(@params)
  log(@response.code)
  log(@response.body)
end

Então('o body do endpoint deve retornar a informacao do nome solicitado') do
  raise 'Api is not working' if @response.code != 200

  log(@response.body)
  expect(@response['meta']).to_not eql nil
  expect(@response['data'][0]['name']).equal? 'Naik'

end

Dado('que eu tenha obtido a informação do id do usuario') do
  step 'solicito um GET com params de nome igual a naik'
  step 'o body do endpoint deve retornar a informacao do nome solicitado'
  $id_user = @response['data'][0]['id']
end

Quando('solicito um GET com id do usuario') do
  @response = users.get_id
  log(@response.code)
  log(@response.body)
end

Então('o retorno do endpoint deve ser conforme solicitado') do
  raise 'Api is not working' if @response.code != 200

  log(@response.body)
  expect(@response['meta']).to_not eql nil

end
