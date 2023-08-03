class Main < Grape::API
  mount V1::Base
  mount Auth
end
