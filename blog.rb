class Blog

  @@all_blog_posts = []
  @@num_blog_posts = 0

  def self.all
    @@all_blog_posts
  end

  def self.add(thing)
    @@all_blog_posts << thing
    @@num_blog_posts += 1
  end

  def self.publish
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Author:\n #{post.author}"
      puts "Publish Date:\n #{post.publish_date}"
    end
  end

end

class BlogPost < Blog

  def self.create
    post = new
    puts "Post title:"
    post.title = gets.chomp
    puts "Post content:"
    post.content = gets.chomp
    puts "Post author:"
    post.author = gets.chomp
    post.publish_date = Time.now
    post.save
    puts "Do you want to create another post? [Y/N]"
    create if gets.chomp.downcase == 'y'
  end

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def content
    @content
  end

  def content=(content)
    @content = content
  end

  def publish_date
    @publish_date
  end

  def publish_date=(publish_date)
    @publish_date = publish_date
  end

  def author
    @author
  end

  def author=(author)
    @author = author
  end

  def save
    BlogPost.add(self)
  end

end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
