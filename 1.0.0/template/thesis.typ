#import "@local/isec-master-thesis-template:1.0.0": *

// ----------------------------------------------------------------------------
// Thesis Configuration, Keywords, Abstract, Acknowledgements & Acronyms
// ----------------------------------------------------------------------------
#show: thesis.with(
  title: [
		Title and       #linebreak()
		Subtitle        #linebreak()
		of the Thesis   #linebreak()
		(up to 4 Lines) #linebreak()
	],
  author: ([Firstname Lastname], [BSc]),
  curriculum: [Computer Science],
  supervisors: (
    ([Firstname Lastname], [Academic Degrees]),
    ([Firstname Lastname], [Academic Degrees])
  ),
  date: [Month Year],
  acknowledgements: [
		Thanks everyone who made this thesis possible
  ],
  abstract: [
		English abstract of your thesis (at most one page)

    The abstract usually consists of two main parts: a motivational background
    and your contribution. Start with a few sentences of general introduction
    and background information to motivate your main research
    question/challenge. Then, summarize what your paper contributes and
    describe its (potential) impact. This includes a very short summary of all
    your important results and core performance numbers that characterize your
    approach/attack/countermeasure/implementation. Finally, summarize any key
    conclusions and calls to action that you have, e.g., apply the idea more
    broadly, get rid of some technology, find a countermeasure, or similar.

		English abstract of your thesis (at most one page)
  ],
  keywords: ([Broad keyword], [Keyword], [Specific Keyword],
             [Another specific keyword]),
	notations: ((
		"xor": ([#sym.xor.big], "exclusive-or (Xor)"),
	)),
	acronyms: ((
		"ISEC": "Institute of Information Security",
	)),
	list_of_figures:  true,
	list_of_tables:   true,
	list_of_listings: true,
)

// -------------------------------[[ CUT HERE ]]--------------------------------
//
// Welcome to the starting point of your final Master Thesis :) Congrats!
//
// Nice that you've chosen Typst as your typesetting system, you'll enjoy:
//
// - Milisecond incremental builds
// - Subsecond full builds
// - Multithreaded builds per pagebreak
// - Easy rustc-like comiler error messages (and no intermediates!)
// - Transparent multiple compiler passes (no more mklatex/makefiles)
// - Simple & powerful scripting and syntax
// - WebAssembly plugin support (python/js interpreters in your thesis? Yes)
//
// Typst quickstart:
//
// - $ typst watch thesis.typ  (Incremental build, recommended)
// - $ typst build thesis.typ  (Plain build)
//
// Typst documentation, guides & help:
//
// - https://typst.app/docs/
// - https://sitandr.github.io/typst-examples-book/book/about.html
// - https://discord.gg/2uDybryKPe
// - https://forum.typst.app/
//
// Typst LSP: https://github.com/Myriad-Dreamin/tinymist
//
// - Much faster preview with :TypstPreview
// - https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist
//
// Better code syntax highlighting (Treesitter):
//
// - Typst supports WebAssembly plugins
// - There's a plugin to use treesitter as code highlighter backend (slower)
// - https://github.com/RubixDev/syntastica-typst
// - Optional. Use if you have a nice usecase. Toggle it in final PDF build
//
// Typst plugins:
//
// - https://typst.app/universe/
// - https://github.com/qjcg/awesome-typst
//
// Recommendations:
//
// - Keep code/text formatted at 80 cols as in this example
// - Use tinymist :TypstPreview (or vscode extension) for previewing changes
// - Check that you're using latest Typst & latest template version
// - Force #pagebreak() if your document is long. This triggers multithr. builds 
//
// Bugs, limitations, differences:
//
// - You'll find TODOs. Feel free to work on them and submit patches
// - For bugs, report them on the template upstream:
// - https://github.com/ecomaikgolf/typst-isec-masterthesis-template
//
// -------------------------------[[ CUT HERE ]]--------------------------------


// ----------------------------------------------------------------------------
// Introduction
// ----------------------------------------------------------------------------

= Introduction <sec:intro>


// ----------------------------------------------------------------------------
// Background
// ----------------------------------------------------------------------------

= Background <sec:background>


// ----------------------------------------------------------------------------
// Attack
// ----------------------------------------------------------------------------

= Attack <sec:attack>


// ----------------------------------------------------------------------------
// Evaluation
// ----------------------------------------------------------------------------

= Evaluation <sec:evaluation>


// ----------------------------------------------------------------------------
// Discussion
// ----------------------------------------------------------------------------

= Discussion <sec:discussion>

What a nice template @typst_ernesto_isec_template


// ----------------------------------------------------------------------------
// Notation
// ----------------------------------------------------------------------------

// - Set notations: none in thesis.with to disable this page
// - TLDR: #ntt("xor") from thesis.with notations
// - Modified "acrostiche" for notations

#notations_page(notat)

// ----------------------------------------------------------------------------
// Acronyms
// ----------------------------------------------------------------------------

// - Set acronyms: none in thesis.with to disable this page
// - See https://typst.app/universe/package/acrostiche/ for documentations
// - TLDR: #acr("AES") from the thesis.with acronyms
// - Currently using downstream package version with extra functionalities

#acronyms_page(acros)

// ----------------------------------------------------------------------------
// Bibliography
// ----------------------------------------------------------------------------

// - Use bibtex (LaTeX) or hayagriva YAML (Typst) bibliography files
// - See https://typst.app/docs/reference/model/cite/
// - See https://typst.app/docs/reference/model/bibliography/
// - TLDR: @biblabel OR #cite(form: ..., biblabel)

#bibliography("bibliography.bib")<sec:bibliography>

// ----------------------------------------------------------------------------
// Appendix (Optional)
// ----------------------------------------------------------------------------
#show: appendix

= Code Listings<sec:codelistings>


// vim:tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab colorcolumn=81
