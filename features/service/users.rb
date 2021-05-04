module Users
  class Rest
    include HTTParty

    base_uri URL[AMBIENTE]['base_hmg'] + ENDPOINT['users']
    def get_name(params)
      response = self.class.get("?name=#{params['name']}",
                                headers: {
                                    'Content-Type' => 'application/json',
                                })
      response
    end

    def get_id
      response = self.class.get("/#{$id_user}/posts",
                                headers: {
                                    'Content-Type' => 'application/json',
                                })
      response
    end
  end
end
