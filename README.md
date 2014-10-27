![screenshot](images/screenshot.png)

A Sing-Along of CodeSchool's Angular course.

My javascript files are first coded in coffeescript to keep familiarizing myself with it.

To run you need to start a server, for example WEBrick. If not, it will give you problems because cross-origin requests cannot be supported. More explanations in this post at [StackOverflow](http://stackoverflow.com/questions/10752055/cross-origin-requests-are-only-supported-for-http-error-but-im-loading-a-co)

I recommend a nifty trick included in my .bash_profile that allows me to run static files from any directory by just invoquing the comand "serve".

```bash
function serve {
  port="${1:-4000}"
  ruby -r webrick -e "s = WEBrick::HTTPServer.new(:Port => $port, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.    start"
}
```
