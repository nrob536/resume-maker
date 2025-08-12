\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ats-friendly}[2025/08/12 ATS-Friendly Resume Class]
\LoadClass[11pt,letterpaper]{article}

% Required packages
\RequirePackage[margin=1in]{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{enumitem}
\RequirePackage{titlesec}

% Simple section formatting without colors or fancy styling
\titleformat{\section}
    {\large\bfseries}
    {}{0em}
    {}
\titlespacing{\section}{0pt}{12pt}{6pt}

% Subsection formatting
\titleformat{\subsection}
    {\bfseries}
    {}{0em}
    {}
\titlespacing{\subsection}{0pt}{6pt}{3pt}

% Custom commands for contact info - avoiding headers/footers
\newcommand{\name}[1]{
    \begin{center}
        {\Large\bfseries#1}
    \end{center}
}

\newcommand{\contactinfo}[3]{
    \begin{center}
        #1 \textbullet{} #2 \textbullet{} #3
    \end{center}
}

% Experience entry command with clear separation of title and dates
\newcommand{\workexperience}[4]{
    \subsection{#1}
    \textbf{#2}, #3\\
    #4
}

% Education entry command
\newcommand{\educationentry}[4]{
    \subsection{#1}
    \textbf{#2}, #3\\
    #4
}

% Skill category command
\newcommand{\skillcategory}[2]{
    \textbf{#1:} #2\\[6pt]
}