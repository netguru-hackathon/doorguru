module V1
  class Doors < Grape::API

    params do
      optional :key, type: String, desc: 'api key'
    end
    post '/open', serializer: DoorSerializer do
      authorize_session!(params[:key])
      door = ::Door.last
      door.open!
      door
    end
  end
end
