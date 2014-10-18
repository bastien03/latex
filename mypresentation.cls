\LoadClass{report}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mypresentation}[2014/10/12 Presentation template]

% ----------------------------------------------------------------
% Packages
% --------

\usepackage[
  paperwidth=100mm, 
  paperheight=100mm, 
  vmargin=2mm, 
  hmargin=5mm,
  headheight=8mm,
  footskip=6mm,
  includeheadfoot
]{geometry} % needed for defining the format of the pdf
\usepackage{fancyhdr}% needed for the headers and footers
\usepackage[
	usenames,
	dvipsnames
]{color}
\usepackage{datetime}


% ----------------------------------------------------------------
% Commands
% --------

% The firstpage command has 1 param:
%   - the title of the page
\newcommand{\firstpage}[1]{%
  \thispagestyle{empty}%
  \clearpage
	\vspace*{\fill}
	  \begin{center} %
	  		\Huge{#1} %
	  \end{center}% 
	\vfill % equivalent to \vspace{\fill}
	\begin{center}
      \small{\today}
	\end{center}
  \clearpage
  \newpage%
}

\renewcommand{\section}[1]{
	#1
}
\renewcommand{\normalsize}{
	\fontsize{10}{12}\selectfont
}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}


% ----------------------------------------------------------------
% Style
% -----

\pagestyle{fancy}
\lhead{\color{Gray} left header}
\rhead{right header}
\cfoot{left footer}



