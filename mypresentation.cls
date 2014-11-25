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
  footskip=8mm,
  includefoot
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
\usepackage{bookmark}
\usepackage{sidecap}
\usepackage{graphicx}
\usepackage{wrapfig}
\usepackage{lastpage}
\usepackage{nameref}


% ----------------------------------------------------------------
% Commands
% --------

\newcommand{\Color}[1]{\colorlet{ColorVariable}{#1}}
\newcommand{\Title}[1]{\newcommand{\pdftitle}{#1}}
\AtBeginDocument{
  \hypersetup{%
    pdfauthor=Bastien Mary,
    pdftitle={\pdftitle}
  }%
}


\newcommand{\changefont}[3]{
  \fontfamily{#1} 
  \fontseries{#2} 
  \fontshape{#3} 
  \selectfont
}

% The firstpage command has 1 param:
%   - the title of the page
\newcommand{\firstpage}[2]{%
  \thispagestyle{firststyle}%
  \clearpage
  \pagecolor{ColorVariable}
  
  \begin{wrapfigure}{L}{\textwidth}
    \begin{center}
      \includegraphics[width=0.4\textwidth]{cover}
    \end{center}
    \begin{center} %
      \fontsize{15pt}{15pt}\selectfont 
      \textcolor{white}{#1 - #2}
    \end{center}
  \end{wrapfigure}
  
  \clearpage
  \newpage%
  \pagecolor{white}
}

\newcommand{\lastpage}[1]{%
  \clearpage
  \fancyhf{}
  \renewcommand{\footrulewidth}{0pt} % remove footer line
  \pagecolor{ColorVariable}
    \vspace*{\fill}
      \begin{center} %
        \fontsize{40pt}{30pt}\selectfont 
        \textcolor{white}{#1}
      \end{center}%
    \vspace*{\fill}
  \clearpage
  \newpage%
  \pagecolor{white}
}

\renewcommand{\section}[1]{ 
  \hypertarget{#1}{}
  \bookmark[level=section, dest=#1]{#1}
  \Huge{\textcolor{ColorVariable}{#1}} \normalsize
  \newline \newline
}
\renewcommand{\normalsize}{
	\fontsize{10}{12}\selectfont
}
\renewcommand{\footrulewidth}{0.4pt}


% ----------------------------------------------------------------
% Style
% -----

% Style for normal pages
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt} % remove header
\renewcommand{\footrulewidth}{0pt} % remove footer line
\cfoot{
  \begin{flushright}
    \colorbox{ColorVariable}{
      \textcolor{white}{
        \thepage/\pageref{LastPage}
      }
    }
  \end{flushright}
}
\addtolength{\topmargin}{2mm}
\footskip=0pt

% Style for the first page
\fancypagestyle{firststyle}
{
  % clear header and footer
  \fancyhf{}
  \renewcommand{\footrulewidth}{0pt} % remove footer line
  
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
