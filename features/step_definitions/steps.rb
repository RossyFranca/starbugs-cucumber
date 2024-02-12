Quando('acesso a página principal da Starbugs') do
    visit 'https://starbucks-coffee.vercel.app/'
end
  
Então('eu devo ver uma lista de cafés disponíveis') do
    products = all('.sc-gikAfH.kzfjAs')
    expect(products.size).to be > 0
end


Dado('que estou na página principal da Starbucks') do
    visit 'https://starbucks-coffee.vercel.app/'
end

Quando('seleciono para comprar o café:') do |table|

    # # table is a Cucumber::MultilineArgument::DataTable
    # @product_name = table.hashes[0][:product]
    # @product_price = table.hashes[0][:price]
    # @product_delivery = table.hashes[0][:delivery]

    @product = table.rows_hash
    product = find(".sc-gikAfH.kzfjAs", text:@product[:name])
    product.find("div.sc-jIRcFI.eNbAxS > button").click
   

end

Quando('clico no carrinho para finalizar a compra') do
    find("button.sc-dkrFOg.bQxVDQ").click
end

Então('devo visualizar a página de checkout com os detalhes do produtos') do
   puts "product"
end

Então('o valor total da compra deve ser de R$ {float}') do |float|
    expect(find("p.sc-jSUZER.kcflqU:nth-of-type(2)").text).to eql "R$ 13,40"
end