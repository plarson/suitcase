Suitcase
========

Suitcase is a Ruby gem for interacting with the EAN (Expedia.com) Hotel API.

Usage
-----

```ruby
result = Suitcase::Hotel.find(location: "Boston", arrival: "03/14/2014", departure: "03/21/2014", rooms: [{ adults: 2, children: [4, 7]}, { adults: 1 }])
hotel = result.parsed.last
hotel.reserve!(info)
```

Development
-----------

Suitcase version 2 is currently being written from the ground up. Better session management, inline documentation and overall cleaner code are the main goals of the new version.

### Contributions

Pull requests and issues on GitHub are always welcome.

