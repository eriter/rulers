class QuotesController < Rulers::Controller
  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def exception
    raise "It's a bad one!"
  end

  def a_quote
    render :a_quote, :noun => :blinking
  end

  def quote_1
    quote_1 = Rulers::Model::FileModel.find(1)
    render :quote, :obj => quote_1
  end

  def new_quote
    attrs = {
    "submitter" => "web user",
    "quote" => "A sufficiently intricate pictogram IS a thousand words",
    "attribution" => "Me"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end
end
