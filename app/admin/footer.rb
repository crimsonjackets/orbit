module ActiveAdmin
  module Views
    class Footer < Component

      def build
        super id: "footer"
        super style: "text-align: left;"

        div do 
          link_to "CrimsonJackets, #{Date.today.year}", 'http://crimsonjackets.ru'
        end
      end

    end
  end
end