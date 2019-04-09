# classe pai para todos os controllers
class ApplicationController < ActionController::API
  # renderiza resposta em json com o status
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
