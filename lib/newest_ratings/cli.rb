class  CLI

    def call
      Scraper.start
        puts " "
        puts "Welcome to RTINGS."
        puts " "
        main_menu
        goodbye
    end

    def main_menu

      puts <<-DOC
            Enter "t" for Televisions
            Enter "m" for Monitors
            Enter "h" for Headphones
            Or type exit
      DOC
      selection
    end

    def selection
      input = nil
      while input != "exit".strip.downcase
        input = gets.strip.downcase

          case input
          when "t"
           Review.list_reviews_by_product("Televisions")
            
          when "2"
            a = Product.new("Monitors")
            a.choice
          when "3"
            a = Product.new("Headphones")
            a.choice
          when "menu"
            main_menu
          # else
          #   puts "Please make a valid selection"
          end
      end
    end

    def goodbye
      puts "Thanks for visiting. See you next time."
    end
end