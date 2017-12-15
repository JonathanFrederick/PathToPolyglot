## Gimme an 'L'

I can't say whether it was the best decision or not, but I decided to go ahead and handle all the parts of the stack for publishing this website.  In addition to wanting to learn everything, the decision also stems from recent playing around with remote server hosting.  As I applied to and prepared to interview with [Linode](www.linode.com), I signed up for some of their basic server service.  Spoiler alert: I didn't get the gig.

Though they did not hire me, I have exactly zero hard feelings about it.  In addition to resume and interview practice, I also learned I rather like their platform.  Admittedly, I have little to no experience with their competitors, but with Linode it was easy to sign up and setup.  Also, since they don't make you pick your Operating System right away, it is easier to experiment.

Furthermore, Linode's [documentation](https://www.linode.com/docs) has thus far been incredibly intuitive and easy to follow.  Getting set up felt more like simply following instructions than learning how to do a thing, which I concede is how it should be.  After following instructions for [getting started](https://www.linode.com/docs/getting-started), [securing your server](https://www.linode.com/docs/security/securing-your-server), and [firewalls with UFW](https://www.linode.com/docs/security/firewalls/configure-firewall-with-ufw) I had my own set of notes for how to setup and access a server with my chosen configuration and my own slice of cyberspace in Newark.

![Server Screenshot](/posts/Mendelssohn.png)

Once a music major, always a music major.

While I'm confident the steps I've taken to secure my server are good steps to take, I grew nervous as I learned.  Naturally, the more you learn about a subject, the more you learn that there are things you don't know. I also learned there are so many parts of the system that could offer a vulnerability.  For now, my server won't have anything that won't also be on GitHub, so if someone does get in, there shouldn't be much to gain.  I've set the firewall to be as descriptive as possible in the logs so I can see what sort of access attempts are made.  Hopefully, I'll learn from this over the years and some day be comfortable enough to use my own servers for more sensitive data.

## Gimme an 'A'

Setting up Apache Web Server was even easier, at least for my purposes.  I started with Apache's own documentation before wondering if there was a simpler way.  Googling `apache apt-get` led me to [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-the-apache-web-server-on-ubuntu-16-04) from Digital Ocean, though I later discovered that I could have just as easily stuck with [Linode's docs](https://linode.com/docs/web-servers/apache/apache-web-server-on-ubuntu-14-04).

Once again, I now have my own set of notes on the process as well as the simplest of web pages to share with a couple technically inclined friends:

![Hello Lamp](/posts/HelloLamp.png)

Though I have some experience with relational databases and Python, never fear.  I've no delusions that I'm a full-stack developer now.  This is still decidedly the rats-in-sewers portion of my heroic quest.  Next stop: automating the process of publishing a git repository to my new server.
