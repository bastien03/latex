\LoadClass{report}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mypresentation}[2014/10/12 Presentation template]

% ----------------------------------------------------------------
% Packages
% --------

\usepackage[
  paperwidth=128mm, 
  paperheight=96mm, 
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
\usepackage[dvipsnames]{xcolor}
\usepackage{mdframed}
\usepackage{bookman}


% ----------------------------------------------------------------
% Commands
% --------

\newcommand{\changefont}[3]{
  \fontfamily{#1} 
  \fontseries{#2} 
  \fontshape{#3} 
  \selectfont
}

% The firstpage command has 1 param:
%   - the title of the page
\newcommand{\firstpage}[1]{%
  \thispagestyle{firststyle}%
  \clearpage
  \pagecolor{MidnightBlue!90}
	  \begin{center} %
        \fontsize{40pt}{30pt}\selectfont 
        \textcolor{white}{#1}
	  \end{center}% 
  \clearpage
  \newpage%
  \pagecolor{white}
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

% Style for normal pages
\pagestyle{fancy}
\lhead{\color{Gray} left header}
\rhead{right header}
\cfoot{left footer}

% Style for the first page
\fancypagestyle{firststyle}
{
  % clear header and footer
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt} % remove lines as well
  \renewcommand{\footrulewidth}{0pt}
  
  % define footer with white background
  \fancyfoot[C]{
    \begin{mdframed}[backgroundcolor=white, linecolor=white, leftmargin=-17, rightmargin=-12]
      \begin{center}
        \small{\today}
      \end{center}
    \end{mdframed}
  }

  \footskip=3pt
}
