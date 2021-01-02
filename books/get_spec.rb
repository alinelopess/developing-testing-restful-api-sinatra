require "httparty"

describe "GET /books" do

    before do
        @resp = HTTParty.get("http://localhost:4567/books")
    end

    it "deve retornar 200" do
        expect(@resp.code).to eql 200
    end

    it "deve retornar uma lista" do
        puts @resp.parsed_response
        puts @resp.parsed_response.class
    end
end