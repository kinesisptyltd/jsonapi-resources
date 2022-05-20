module JSONAPI
  class ResourceControllerMetal < ActionController::Metal
    include AbstractController::Rendering
    include ActionController::Rendering
    include ActionController::Renderers::All
    include ActionController::StrongParameters
    include ActionController::Instrumentation
    include JSONAPI::ActsAsResourceController
  end
end
