desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  puts "Creating sample data..."

  if Rails.env.development?
    puts "Deleting the previous data..."
    Item.destroy_all
  end

  puts "Creating first item..."
  item_1 = Item.new
  item_1.link_url = "https://paulgraham.com/startupideas.html"
  item_1.link_description = "How to Get Startup Ideas"
  item_1.thumbnail_url = "https://fastly.picsum.photos/id/554/200/200.jpg?hmac=wvBDWVN6iXLUYv4DYpQ9fWSg_2y3dCYyzy4N_6H26pY"
  item_1.save

  puts "Creating second item..."
  item_2 = Item.new
  item_2.link_url = "https://www.makeuseof.com/tag/macos-beginners-guide/"
  item_2.link_description = "A Complete Guide to macOS"
  item_2.thumbnail_url = "https://fastly.picsum.photos/id/650/200/200.jpg?hmac=gu3C13pBxCSHokbnumczMYlmWRLt3CFGx1sDaPpfRnk"
  item_2.save

  puts "Creating third item..."
  item_3 = Item.new
  item_3.link_url = "https://www.highspeedinternet.com/resources/the-consumers-guide-to-internet-speed"
  item_3.link_description = "Ultimate Guide to Internet Speed"
  item_3.thumbnail_url = "https://fastly.picsum.photos/id/337/200/200.jpg?hmac=9bd24xSAcmLdObO71hB9dXskhXQmQ2b0YB3QTAzhUtY"
  item_3.save

  puts "Creating forth item..."
  item_4 = Item.new
  item_4.link_url = "https://support.apple.com/en-us/102323"
  item_4.link_description = "Mac tips for Windows switchers"
  item_4.thumbnail_url = "https://fastly.picsum.photos/id/940/200/200.jpg?hmac=bIX4juxj93bHJKYbdztQYmQByF-1mM6YI2ec9UrnrTo"
  item_4.save

  puts "Creating fifth item..."
  item_5 = Item.new
  item_5.link_url = "https://www.providesupport.com/blog/customer-service-etiquette-tips-infographic/"
  item_5.link_description = "Customer Service Etiquette Tips"
  item_5.thumbnail_url = "https://fastly.picsum.photos/id/609/200/200.jpg?hmac=Fe1MOOyr8RJSloodBDzO2oMGF2NvnJVhuoGNDTC5clU"
  item_5.save

  puts "Done!"
end
