\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cover-letter}[2025/08/12 Custom Cover Letter Class]
\LoadClass[11pt,letterpaper]{article}

% Required packages
\RequirePackage{geometry}
\RequirePackage{hyperref}
\RequirePackage{fontawesome}
\RequirePackage{datetime}
\RequirePackage{xcolor}

% Page geometry
\geometry{
    top=1in,
    bottom=1in,
    left=1.25in,
    right=1.25in
}

% Colors
\definecolor{primary}{RGB}{0,112,192}

% Custom commands for contact info
\newcommand{\email}[1]{\href{mailto:#1}{\faEnvelope\space#1}}
\newcommand{\phone}[1]{\faPhone\space#1}
\newcommand{\linkedin}[2]{\href{#2}{\faLinkedin\space#1}}

% Header command
\newcommand{\letterheader}[3]{
    {\Large\textbf{#1}}\\[4pt]
    #2\\
    #3\\[12pt]
}

% Recipient command
\newcommand{\recipient}[4]{
    \today\\[12pt]
    
    #1\\
    #2\\
    #3\\
    #4\\[12pt]
}

% Opening command
\newcommand{\letteropening}[1]{
    Dear #1,\\[12pt]
}

% Closing command
\newcommand{\letterclosing}[1]{
    \vspace{12pt}
    
    Sincerely,\\[24pt]
    #1
}