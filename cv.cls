\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}
\LoadClass[8pt]{article}

\RequirePackage[colorlinks=true,urlcolor=blue]{hyperref}
\RequirePackage[margin=0.4in]{geometry}
\RequirePackage{enumitem}
\RequirePackage{fontawesome}
\RequirePackage{titlesec}
\RequirePackage{url}
\RequirePackage{xcolor}
\RequirePackage[yyyymmdd]{datetime}
\RequirePackage[subtle]{savetrees}
\RequirePackage{fancyhdr}

% \setitemize{itemsep=1pt}
% \setlist{nosep}
\setlist[itemize]{itemsep=0.5pt}
% \renewcommand{\headrulewidth}{0pt}

\pagestyle{fancy}
\pagenumbering{gobble}
\fancyhf{}

\newcommand{\updateinfo}[1]{
	\vfill
	\hfill\scriptsize{\scriptsize{Updated on \today\ for #1}}
}

\titleformat{\section}
	{\Large\scshape\raggedright}
	{}{0em}
	{}
	[\titlerule]

\titleformat{\subsection}
	{\large\raggedright}
	{}{0em}
	{}
\titlespacing*{\subsection}{0cm}{*2}{*0.5}


\newcommand{\entry}[3]{
	\subsection[#1]{\textbf{#1} \textperiodcentered\ {#2} \hfill \small{#3}}
	\vspace{2pt}
}

\newcommand{\name}[1]{
	\centerline{\huge\scshape{#1}}
	\vspace{1em}
}

\newcommand{\email}[1]{
	\faEnvelope\
	\href{mailto:#1}{#1}
}

\newcommand{\phone}[1]{
	\faPhone\
	\href{tel:#1}{#1}
}

\newcommand{\linkedin}[2][]{
	\faLinkedin\
	{\href{#2}{#1}}
}

\newcommand{\github}[2][]{
	\faGithub\
	{\href{#2}{#1}}
}

\newcommand{\scholar}[2][]{
	\faGraduationCap\
	{\href{#2}{#1}}
}

\newcommand{\homepage}[2][]{
	\faLink\
	{\href{#2}{#1}}
}
\newcommand{\basicInfo}[1]{
	\centerline{\sffamily\large{#1}}
	% \vspace{1em}
}

\newcommand{\subcaption}[1]{
	{\par \quad \small{#1} \par}
}

\newcommand{\category}[1]{
	{\par \textit{#1} \par}
}
