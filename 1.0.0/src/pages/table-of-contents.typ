// Sections that shouldn't show the section number
#let whtl  = ([Bibliography], [Acronyms], [Notation],)
#let ruler = box(width: 1fr, repeat(h(3pt) + "." + h(3pt)))

#let toc_page(
	list_of_figures:  true,
	list_of_tables:   true,
	list_of_listings: true,
) = [

	// Disable spacing between grid & content
	#show grid: set block(above: 0cm, below: 0cm)

	// ---------------------------------------------------------------------------
	// Sections

	// Style of Level 1 Sections
	#show outline.entry.where(level: 1): it => [

		#show grid: set block(above: 0.38cm, below: 0cm)

		#let loc  = it.element.location()
		#let sec  = it.body.children.slice(0).at(0)
		#let name = it.body.children.slice(0).at(2)
		#let page = it.page

		//#let a = query(selector(outline.entry).before(loc)).last().location().page() 
		//#let b = loc.page()
		//#let prev = a == b

		// 1. Section Name                                                        12
		#link(loc,
			strong[
				#grid(columns: (if whtl.contains(name) {-0.3cm} else {0.3cm},
					0.28cm, 1fr, auto), gutter: 0pt, rows: 1,
					box[
						#if not whtl.contains(name) [ #sec ]
					],
					box[
						// Spacing
					],
					box[
						#name
					],
					box[
						#page
					],
				)
			]
		)
	]

	// Style of Level 2 Sections
	#show outline.entry.where(level: 2): it => [

		#show grid: set block(above: -0.06cm, below: 0cm)

		#let loc  = it.element.location()
		#let sec  = it.body.children.slice(0).at(0)
		#let name = it.body.children.slice(0).at(2)
		#let page = it.page

		//     1.1. Subsection Name  . . . . . . . . . . . . . . . . . . . . . . 12
		#link(loc,
			grid(columns: (0.65cm, auto, 0.3cm, auto, 0.3cm, 1fr, 0.45cm, auto),
				gutter: 0pt, rows: 1,
				box[
					// Spacing
				],
				box[
					#sec
				],
				box[
					// Spacing
				],
				box[
					#name
				],
				box[
					// Spacing
				],
				box[
					#ruler
				],
				box[
					// Spacing
				],
				box[
					#page
				]
			)
		)
	]

	// Style of Level 3 Sections
	#show outline.entry.where(level: 3): it => [

		#show grid: set block(above: -0.06cm, below: 0cm)

		#let loc  = it.element.location()
		#let sec  = it.body.children.slice(0).at(0)
		#let name = it.body.children.slice(0).at(2)
		#let page = it.page

		#link(loc,
			grid(columns: (1.6cm, auto, 0.3cm, auto, 0.3cm, 1fr, 0.45cm, auto),
				gutter: 0pt, rows: 1,
				box[
					// Spacing
				],
				box[
					#sec
				],
				box[
					// Spacing
				],
				box[
					#name
				],
				box[
					// Spacing
				],
				box[
					#ruler
				],
				box[
					// Spacing
				],
				box[
					#page
				]
			)
		)
	]

	// Show it in the document
	#outline(
		title: "Contents",
		depth: 3
	)

	// -----------------------------------------------------------------------------
	// Figures

	// Style of Level 1 Sections
	#show outline.entry.where(level: 1): it => [
		#let loc  = it.element.location()
		#let sec  = it.body.children.slice(0).at(2)
		#let cap  = it.body.children.slice(0).at(4)
		#let page = it.page

		#link(loc,
			box[
				#h(0.6cm)
				#sec.
				#h(0.15cm)
				#cap
				#ruler
				#h(0.3cm)
				#page
			]
		)
	]

	// Style of Level 1 Figures
	#show outline.entry.where(level: 1): it => [
		#let loc  = it.element.location()
		#let sec  = it.body.children.slice(0).at(2)
		#let cap  = it.body.children.slice(0).at(4)
		#let page = it.page

		// If its not the first entry, add previous padding
		#if sec != [1.] [
		#v(0.38cm)
	]

		// 1.1. Figure Caption . . . . . . . . . . . . . . . . . . . . . . . . . 12
		#link(loc,
			grid(columns: (0.6cm, auto, 0.2cm, auto, 0.15cm, 1fr, 0.2cm, auto),
				gutter: 0pt, rows: 1,
				box[
					// Spacing
				],
				box[
					#sec.
				],
				box[
					// Spacing
				],
				box[
					#cap
				],
				box[
					// Spacing
				],
				box[
					#ruler
				],
				box[
					// Spacing
				],
				box[
					#page
				],
			)
		)
	]

	#if list_of_figures [
		// Outline (of Figures)
		#outline(
			title: "List of Figures",
			target: figure.where(kind: image)
		)
	]

	#if list_of_tables [
		// Outline (of Tables)
		#outline(
			title: "List of Tables",
			target: figure.where(kind: table),
		)
	]

	#if list_of_listings [
		// Outline (of Tables)
		#outline(
			title: "List of Listings",
			target: figure.where(kind: raw), // Code has to be wrapped in a figure
		)
	]
]

// vim:tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab colorcolumn=81
