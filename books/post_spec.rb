require "httparty"

describe "POST /books" do
    before do
        payload = {
            title: "O Livro dos Bugs",
            author: "João Junior",
            isbn: "jj01"
        }

        HTTPARTY.post(
            "http://localhost:4567/books",
            body: payload.to_json
        )
    end

    it "deve retornar 201" do
        expect(@resp.code).to eql 201
    end
end