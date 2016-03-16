# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


## BOOK

#  id         :integer          not null, primary key
#  name       :string
#  about      :text
#  publisher  :string
#  year       :integer
#  isbn       :integer
#  price      :float
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

books_info = [
    {
        name: "Supercraft",
        about: "52 creative craft and sewing projects easy enough to complete in just one weekend, designed to keep crafters busy all year long. Supercraft is packed with DIY craft and sewing projects that use everyday materials and innovative techniques so you can upcycle your way to creating something new and stylish. Embroider a notebook, print fabric with starfruit, make a hanging garden for your bathroom, and much, much more. Each of the 52 projects in this book include everything you need to know, with step-by-step photographs and detailed instructions, and are simple enough to finish in a weekend. Craft your way through spring, summer, winter, and fall with Supercraft.",
        image: 'http://ecx.images-amazon.com/images/I/61L53oUO44L._SX416_BO1,204,203,200_.jpg'
    },
    {
        name: 'Furniture Makes the Room: Create Special Pieces to Style a Home You Love',
        about: "Knack Studio founder Barb Blair is famous for her 'knack' with furniture: spotting classic pieces and transforming them into modern showstoppers. In this inspiring book, Blair goes beyond the nuts and bolts of furniture refinishing to show how to style rooms with each customized piece. For instance, she transforms a well-worn coffee table with a painted ombré design, and then reveals how to incorporate it into a bright and sunny den, a cozy reading nook, and a cheerful bedroom. With instructions for 15 before-and-after furniture projects—dressers, tables, beds, armoire, and more—in Blair's signature bold style, a 'toolbox' section detailing her favorite techniques and materials, and photos of dozens of inspiring interiors, Furniture Makes the Room unlocks the secrets to decorating livable rooms around statement pieces.",
        image: 'http://ecx.images-amazon.com/images/I/51HHtpdmzYL._SX340_BO1,204,203,200_.jpg'
    },
    {
        name: "It's a Waverly Life",
        about: "Readers first met the irrepressible Waverly Bryson in Perfect on Paper, and now the woman dubbed by fans as “the American Bridget Jones” is back in a sequel packed with friendship, heartache, and romance. In It’s a Waverly Life, the formerly heartbroken singleton is now happily enmeshed in a new relationship, a new job, and a new decade. Her career as an advice columnist is taking off, and the future of her fledgling greeting-card line is bright. Of course, where Waverly goes, drama is sure to follow, and this time is no exception. Her broken engagement to former fiancé Aaron Vaughn has left her gun-shy when it comes to love, putting strain on her long-distance relationship with handsome Jake McIntyre. And when her best friends McKenna and Andie both make life-changing announcements, Waverly fears she is being left behind by the ones she loves most. In true Waverly fashion, things must get comically worse before they can get better. But in the end, she discovers that though life (before and after thirty) may be messy and unpredictable, friendship and love make it all worthwhile.",
        image: 'http://ecx.images-amazon.com/images/I/51urVnW7EGL._SX332_BO1,204,203,200_.jpg'
    },
    {
        name: "Harry Potter and the Cursed Child",
        about: "Based on an original new story by J.K. Rowling, Jack Thorne and John Tiffany, a new play by Jack Thorne, Harry Potter and the Cursed Child is the eighth story in the Harry Potter series and the first official Harry Potter story to be presented on stage. The play will receive its world premiere in London’s West End on July 30, 2016.

It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children.

While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places..",
        image: 'http://ecx.images-amazon.com/images/I/61ujIIMyW7L._SX323_BO1,204,203,200_.jpg'
    },
    {
        name:  "Cravings: Recipes for All the Food You Want to Eat",
        about: "Maybe she’s on a photo shoot in Zanzibar. Maybe she’s making people laugh on TV. But all Chrissy Teigen really wants to do is talk about dinner. Or breakfast. Lunch gets some love, too.
For years, she’s been collecting, cooking, and Instagramming her favorite recipes, and here they are: from breakfast all day to John’s famous fried chicken with spicy honey butter to her mom’s Thai classics.
Salty, spicy, saucy, and fun as sin (that’s the food, but that’s Chrissy, too), these dishes are for family, for date night at home, for party time, and for a few life-sucks moments (salads). You’ll learn the importance of chili peppers, the secret to cheesy-cheeseless eggs, and life tips like how to use bacon as a home fragrance, the single best way to wake up in the morning, and how not to overthink men or Brussels sprouts. Because for Chrissy Teigen, cooking, eating, life, and love are one and the same.",
        image: 'http://ecx.images-amazon.com/images/I/51HGuoYiOZL._SX379_BO1,204,203,200_.jpg'
    }
]

books_info.each do |book|
  Book.create(name: book[:name], about: book[:about], image: book[:image])
end

categories = ["craft", "furniture", "life"]

categories.each do |c|
  Category.create(name: c)
end

Book.all.each do |b|
  offset = rand(Category.count)
  random_category = Category.offset(offset).first
  b.categories << random_category
end

