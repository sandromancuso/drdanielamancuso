use Rack::Static, 
  :urls => ["/stylesheets", "/images", "/about.html",
            "/contact.html", "/endodontics.html", 
            "/gallery.html", "/lectures.html", 
            "/newtechnologies.html", "/patienttestimonial.html",
            "/prosthdontics.html", "/publications.html",
            "/pdf/cv.pdf"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}