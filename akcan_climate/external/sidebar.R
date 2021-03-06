column(4,
	wellPanel(
		checkboxInput("showDataPanel1",h5("Data Selection Panel"),TRUE),
		conditionalPanel(condition="input.showDataPanel1",
			div(class="row-fluid",
				div(class="span6", selectInput("dat.name", "Data:", choices=c("","CMIP3 Historical","CMIP3 Projected"), selected="", width="100%")),
				div(class="span6", selectInput(inputId = "locationSelect", label = "Select a community:", choices = c("",communities), selected="", width="100%"))
			),
			div(class="row-fluid", div(class="span6", uiOutput("vars")), div(class="span6", uiOutput("units"))),
			div(class="row-fluid", div(class="span6", uiOutput("models")), div(class="span6", uiOutput("scens"))),
			div(class="row-fluid", div(class="span6", uiOutput("mos")), div(class="span6", uiOutput("decs"))),
			uiOutput("GoButton")
		)
	),
	wellPanel(
		checkboxInput("showDisplayPanel1",h5("Plot Options Panel"),TRUE),
		conditionalPanel(condition="input.showDisplayPanel1",
			div(class="row-fluid", div(class="span4", uiOutput("xtime")), div(class="span4", uiOutput("group")), div(class="span4", uiOutput("facet"))),
			div(class="row-fluid", div(class="span4", uiOutput("jitterXY")), div(class="span4", uiOutput("altplot")), div(class="span4", uiOutput("vert.facet"))),
			div(class="row-fluid", div(class="span6", h5(uiOutput("summarizeByXtitle"))), div(class="span6", p(uiOutput("pooled.var")))),
			div(class="row-fluid", div(class="span4", uiOutput("yrange")), div(class="span4", uiOutput("clbootbar")), div(class="span4", uiOutput("clbootsmooth"))),
			p(style="text-align:justify",em("Additional specific display options are available below the plot.")),
			uiOutput("PlotButton")
		)
	),
	conditionalPanel(condition="input.tsp==='about'", h5(textOutput("pageviews")))
)
