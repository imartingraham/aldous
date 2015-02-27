module SignIns
  class NewView < Aldous::Respondable::Renderable
    def template
      {
        template: 'sign_ins/new',
        locals: {
          header_template: header_template,
          user: User.new,
        }
      }
    end

    private

    def header_template
      Modules::HeaderView.new(result, view_context).template
    end
  end
end
