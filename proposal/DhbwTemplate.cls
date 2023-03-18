% ===============================
% Klasseninitialisierung
% ===============================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{DhbwTemplate}[2023/03/04 DHBW-Standard Template]
\PassOptionsToClass{%
	12pt, % Schriftgröße [10pt, 11pt, 12pt]
	a4paper, % Papierformat [a4paper, a5paper, b5paper, letterpaper, legalpaper]
	onecolumn, % Ein- oder zweispaltig [onecolumn, twocolumn]
	final, % Entwurf oder finale Version [draft, final]
	ngerman, % neue deutsche Rechtschreibung
	reqno, % Nummer bei Formeln links statt rechts [leqno, reqno]
	fleqn, % Formeln linksbündig [fleqn]
	twoside, % ein- oder zweiseitig [oneside, twoside]
	openright, % wo Kapitel beginnen [openright, openany]
	parskip=2ex   % half*,
	headings=big
}{scrbook}
\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{scrbook}
}
\ProcessOptions\relax
\LoadClassWithOptions{scrbook}

% ===============================
% Bibtex - https://de.wikibooks.org/wiki/LaTeX-Kompendium:_Zitieren_mit_BibTeX
% ===============================
\RequirePackage[backend=biber,style=authoryear]{biblatex}
\bibliography{References}

% ===============================
% ToCbiBind - ttps://www.ctan.org/pkg/tocbibind
% ===============================
\RequirePackage[chapter]{tocbibind}

% ===============================
% Listings - https://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings
% ===============================
\RequirePackage{listings}

% ===============================
% graphicx
% ===============================
\RequirePackage{graphicx}
\RequirePackage{xcolor,colortbl}
\RequirePackage{subcaption}

% ===============================
% Geometry
% ===============================
\RequirePackage[a4paper,width=150mm,top=25mm,bottom=25mm]{geometry}
\RequirePackage{float}

% ===============================
% setspace - Zeilenabstand
% ===============================
\RequirePackage[onehalfspacing]{setspace}
\onehalfspacing 

% ===============================
% FancyHdr - https://tex.stackexchange.com/questions/218766/page-numbers-in-left-and-right-bottom-corners-of-book
% ===============================
\RequirePackage{fancyhdr}
\fancyhf{} 
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[R]{\thepage} 
\pagestyle{fancy}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt}
  \fancyhf[rf]{\thepage}%
}

% ===============================
% Table
% ===============================
\RequirePackage{multirow}
\RequirePackage{tabularx}


% ===============================
% Titelseite
% ===============================
\renewcommand\maketitle{
    \begin{titlepage}
	\begin{center}
        \includegraphics[width=0.6\linewidth]{assets/DhbwLogo.PNG}
    	\bigskip
        \bigskip
        \bigskip
        \bigskip
        \bigskip
        \bigskip
 
         %--------- Titel
		\paragraph{}
        \LARGE 
        \textbf{\@title}
        \bigskip
		
         %--------- Dokumenttyp
        \paragraph{}
        \Large
        \textbf{Research Proposal} 
        \bigskip
          
        \paragraph{}
        submitted by
        
        \paragraph{}
        \begin{tabular}{rl}
        Andi & Ströhle \\
        Dome & Springer \\
        Nils & Brockmann \\
        Tobias & Reyinger \\
        Tobias & Schumacher \\
		Patrick & Wolter \\
        \end{tabular}
            
        \paragraph{}
        from the
        \par
        Baden-Wuerttemberg Cooperative State University \\
        Facility Business Information Systems
        
    \end{center}
    \end{titlepage}
}
