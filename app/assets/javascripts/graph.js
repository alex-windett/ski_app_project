$(document).ready(function() {

    run_id = $("#run_id").html()

    d3.json('/markers.json?run_id=' + run_id, function(error, data){
        elevation = []
        data.forEach(function(d){
            // console.log(d.elevation)
            elevation.push(d.elevation)
            })
        console.log(elevation)
  
    // data = [2375.4, 2373.71, 2374.05, 2369.62, 2367.82, 2365.27, 2362.22, 2358.47, 2355.35, 2348.2, 2339.85, 2335.44, 2331.27, 2328.23, 2325.5, 2318.91, 2310.35, 2305.43, 2300.69, 2293.45, 2284.69, 2275.66, 2271.49, 2271.48, 2267.57, 2257.5, 2249.54, 2238.2, 2217.71, 2211.44, 2208.16, 2205.59, 2161.49, 2156.07, 2139.55, 2150.8, 2122.88, 2121.24, 2118.91, 2117.28, 2117.5, 2118.86, 2119.74, 2121.07, 2108.49, 2102.24, 2099.39, 2100.49, 2098.87, 2099.12, 2100.85, 2101.58, 2100.65, 2098.83, 2098.65, 2094.98, 2093.44, 2093.52]
    data = elevation
    console.log(data)
    w = 400,
    h = 200,
    margin = 20,
    extramargin = 30,
    y = d3.scale.linear().domain([d3.min(data) - margin, d3.max(data)]).range([0 + margin, h - margin]),
    x = d3.scale.linear().domain([0, data.length-1]).range([0 + margin + extramargin, w - margin])

    var vis = d3.select(".graph")
        .append("svg:svg")
        .attr("width", w)
        .attr("height", h)

    var g = vis.append("svg:g")
        .attr("transform", "translate(0, 200)");
    
    var line = d3.svg.line()
        .x(function(d,i) { return x(i); })
        .y(function(d) { return -1 * y(d); })
    
    g.append("svg:path").attr("d", line(data));
    
    g.append("svg:line")
        .attr("x1", x(0))
        .attr("y1", y )
        .attr("x2", 10 + x(d3.max(data)))
        .attr("y2", y )

    g.append("svg:line")
        .attr("x1", x(0))
        .attr("y1", -1 * y(0))
        .attr("x2", x(0))
        .attr("y2", -1 * y(d3.max(data)))
    
    // g.selectAll(".xLabel")
    //     .data(x.ticks(5))
    //     .enter().append("svg:text")
    //     .attr("class", "xLabel")
    //     .text(String)
    //     .attr("x", function(d) { return x(d) + 10 })
    //     .attr("y", -1)
    //     .attr("text-anchor", "middle")

    g.selectAll(".yLabel")
        .data(y.ticks(4))
        .enter().append("svg:text")
        .attr("class", "yLabel")
        .text(String)
        .attr("x", 0)
        .attr("y", function(d) { return -1 * y(d) })
        .attr("text-anchor", "right")
        .attr("dy", 0)
    
    g.selectAll(".xTicks")
        .data(x.ticks(5))
        .enter().append("svg:line")
        .attr("class", "xTicks")
        .attr("x1", function(d) { return x(d); })
        .attr("y1", -1 * y(0))
        .attr("x2", function(d) { return x(d); })
        .attr("y2", -1 * y(-0.3))

    g.selectAll(".yTicks")
        .data(y.ticks(4))
        .enter().append("svg:line")
        .attr("class", "yTicks")
        .attr("y1", function(d) { return -1 * y(d); })
        .attr("x1", x(-1))
        .attr("y2", function(d) { return -1 * y(d); })
        .attr("x2", x(0))
  });

});