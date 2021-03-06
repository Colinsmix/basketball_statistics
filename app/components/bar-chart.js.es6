export default Ember.Component.extend({
  tagName: 'svg',
    attributeBindings: 'width height'.w(),
    margin: {top: 20, right: 20, bottom: 30, left: 40},

    w: function(){
      return this.get('width') - this.get('margin.left') - this.get('margin.right');
    }.property('width'),

    h: function(){
      return this.get('height') - this.get('margin.top') - this.get('margin.bottom');
    }.property('height'),

    transformG: function(){
      return "translate(" + this.get('margin.left') + "," + this.get('margin.top') + ")";
    }.property(),

    transformX: function(){
      return "translate(0,"+ this.get('h') +")";
    }.property('h'),

    draw: function(type){
      var type = this.get('type');
      var formatPercent = d3.format(".0%");
      var width = this.get('w');
      var height = this.get('h');
      var data = this.get('data');
      var svg = d3.select('#'+this.get('elementId'));
      var x = d3.scale.ordinal().rangeRoundBands([0, width], 0.1);
      var y = d3.scale.linear().range([height, 0]);
      var xAxis = d3.svg.axis().scale(x).orient("bottom");
      var yAxis = d3.svg.axis().scale(y).orient("left").ticks(5);

      x.domain(data.map(function(d) { return d.game.id; }));
      y.domain([0, d3.max(data, function(d) {
                                              switch (type)
                                              {
                                              case "points":
                                                return d.points;
                                                break;
                                              case "rebounds":
                                                return d.rebounds;
                                                break;
                                              case "assists":
                                                return d.assists;
                                                break;
                                              case "steals":
                                                return d.steals;
                                                break;
                                              case "fouls":
                                                return d.fouls;
                                                break;
                                              case "turnovers":
                                                return d.turnovers;
                                                break;
                                              }
                                            }
      )]);

      svg.select(".axis.x").call(xAxis);
      svg.select(".axis.y").call(yAxis);

      svg.select(".rects").selectAll("rect")
        .data(data)
      .enter().append("rect")
        .attr("class", "bar")
        .attr("x", function(d) { return x(d.game.id); })
        .attr("width", x.rangeBand())
        .attr("y", function(d){
                                switch (type)
                                  {
                                    case "points":
                                      return y(d.points);
                                      break;
                                    case "rebounds":
                                      return y(d.rebounds);
                                      break;
                                    case "assists":
                                      return y(d.assists);
                                      break;
                                    case "steals":
                                      return y(d.steals);
                                      break;
                                    case "fouls":
                                      return y(d.fouls);
                                      break;
                                    case "turnovers":
                                      return y(d.turnovers);
                                      break;
                                  }
                                return y(d.points);
                              })
        .attr("height", function(d) {
                                      switch (type)
                                      {
                                        case "points":
                                          return height - y(d.points);
                                          break;
                                        case "rebounds":
                                          return height - y(d.rebounds);
                                          break;
                                        case "assists":
                                          return height - y(d.assists);
                                          break;
                                        case "steals":
                                          return height - y(d.steals);
                                          break;
                                        case "fouls":
                                          return height - y(d.fouls);
                                          break;
                                        case "turnovers":
                                          return height - y(d.turnovers);
                                          break;
                                      }
                                    });
    },

    didInsertElement: function(){
      this.draw();
    }
});
