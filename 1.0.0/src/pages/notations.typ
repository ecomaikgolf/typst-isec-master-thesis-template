#let notations_page(notat) = context [
	#let notation = notat.get()
	#if notation != none [

		= Notation<sec:notation>

		#v(0.2cm)
		#context [
			#show grid: set block(above: 0cm, below: 0.5cm)

			#let pad = notation.keys().map(a => {
										(measure(a).width).cm()
								  }).sorted().last() * 1cm

			#for a in notation [
				#let acr = a.at(0)
				#let cmp = a.at(1).at(0)
				#let loc = notation.at(acr).at(3).get()
				#grid(gutter: 0pt, columns: (1.4cm, pad, 0.4cm, 8.6cm, 0.65cm, auto),
					block[
						// Spacing
					],
					block(height: 0.5cm, width: 100%)[
						#align(center + horizon)[
							#cmp.at(0)
						]
					],
					block[
						// Spacing
					],
					block(height: 0.5cm)[
						#align(left + horizon)[
							#cmp.at(1)
						]
					],
					block[

					],
					block(height: 0.5cm)[
						#align(left + horizon)[
							#if loc != none [
								#loc.join(", ")
							]
						]
					],
				)
				#v(-0.3cm)
			]
		]
	]
]