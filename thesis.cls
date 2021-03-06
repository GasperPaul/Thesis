% ***************** ���� ��� ��������� ������� *****************
% ************************ ��������� �.�. **********************
% **************** �� ����� ����� ������� �.�. ****************
% ************************* 25.05.14 ***************************
% ************************* 27.05.14 ***************************
% ************************* 29.05.14 ***************************
% *********** ����������� ������� �.�. �� 02.06.14 ************
% *********** ����������� ������� �.�. �� 02.06.14 ************
% ************************* 05.06.14 ***************************
% ************************* 08.06.14 ***************************
% ************************* 09.06.14 ***************************
% *********** ����������� ������� �.�. �� 10.06.14 ************
% *********** ����������� ������� �.�. �� 11.06.14 ************
% *********** ����������� ������� �.�. �� 12.06.14 ************
% *********** ����������� �������� �.�. �� 12.06.14 ***********

% �������� �������:
% \maketitlepage{ϲ�}{�����}{�������}{���������}{����}
% \assigment{���������}, �� ��������� �� �������� ������ ���� ������� ��������={��������}:
%	StudentName -- ��'� �������� � �������� ������
%	ThesisName -- ���� �������
%	AdvisorName -- ������ �� ��'� ��������
%	Order -- ���� �� ����� ������
%	ApplicationDate -- ���� ������� �������
%	InputData -- ������ ���� �������
%	Contents -- ���� �������
%	Graphics -- ������ ��������� ��������
%	AssigmentDate -- ���� ��������� ��������
%	Calendar -- �������� ������� ������� � ����������� ������
%	StudentPIB -- ������� �.�. �������� 
%	AdvisorPIB -- ������� �.�. ��������
% \annotation{���������}
% \total{��������}, �� �������� -- �� ���� � ��������� �������:
%	page -- ������� �������
%	pages-- ������� ������� ��� �������
%	equations -- ������� ������
%	figures -- ������� �������
%	tables -- ������� �������
%	bibitemcount -- ������� �������� ������ ��������
%	appendnum --  ������� �������
% \tableofcontents
% \shortings
% \intro
% \conclusion
% \begin{thebibliography} .. \end{thebibliography}
% \append{�����}

% 1. ������������ ����
\ProvidesClass{thesis}[2014/06/12 v2.4 ���� ��� ��������� �������]
\NeedsTeXFormat{LaTeX2e} % �������� ������

% 2. ����������� "����������� ����"
\LoadClass[a4paper,14pt,ukrainian,oneside]{extreport}


% 3. ����������� ������
% ����� ������
\RequirePackage{cmap}% ��� ��������� ������ � pdf
\RequirePackage[T2A]{fontenc} % ����� ��� �������� ��������� ������
\RequirePackage[cp1251]{inputenc} % ����� ��� �������� Windows'�������� ��������� cp1251
\RequirePackage[russian,ukrainian]{babel} % ����� ��� �������� ��������� �� �������� ���
\RequirePackage{pscyr} % ����� �� ������� ���������� ��������
\RequirePackage{mathtext} % ������� ������� � ����� ������������ ������
\RequirePackage{amssymb,amsfonts,amsmath,amsthm} % ������� ������� � ����� ������������ ������
\RequirePackage{textcomp} % ������� ������� � ����� ������������ ������
\RequirePackage{upgreek} % ����� ��� ������ �������� ����

% �������� ������
\RequirePackage{graphicx} % �������� ����� ��� ������� �������
\RequirePackage{subfig} % ����� ��� ������� ���������
\RequirePackage{flafter} % ����� �������, �� ������� �� ������� ������ �� �'�������� ������ ��������� �� ���� ����
\RequirePackage{caption} % ����� ��� ������������� ��������� ������� �� �������
\RequirePackage{xtab} % ����� ��� ������ �������
\RequirePackage{longtable} % ����� ��� ������ �������
\RequirePackage{multirow} % ����� ��� ��'������� ����� �������

% ������ ��� ������������ ������� �� ����
\RequirePackage[includeheadfoot, headsep=0pt, top=2cm, bottom=2cm, left=3cm, right=2cm]{geometry} % ������ ���� �������
\RequirePackage{indentfirst} % ������ ��� ������� ����� ������
\RequirePackage{hanging} % ������ ��� ��� ����� ����� ������
\RequirePackage{enumitem}	% ����� ��� ������������ ������
\RequirePackage{setspace}	% ����� ��� ����, ��� ����� ���� ������ ���������� ��������
\RequirePackage{fancyhdr} % ����� �������� ��� ����������� ������� ������ �������
\RequirePackage{etoolbox} % ����� ��� ���������� �������� ������� � ����������

% ���� ��������� �� �����
\RequirePackage[rm,small,raggedright]{titlesec} % ����� ��� ������� ��������� ������ ���������
\RequirePackage[titles,subfigure]{tocloft} % ����� ��� ������� ��������� ������ �����

% ����� ��� ���������� ������������� ��������-�������� � "��������"
\RequirePackage{url}

% ����� ��� ���������� ������ ���� ��� � ���������� ������
\RequirePackage{icomma}

% ����� ��� ����������� ������������ �������� ����
%\RequirePackage{listings}

% ����� ��� ������������� ������
\RequirePackage{xkeyval}

% ����� ��� ���������
%\RequirePackage{totcount}

% ����� ��� ��������� ����� ����� ��� ����������� ������� � ��������
%\RequirePackage{array}

% 4. ������� �������
\linespread{1.5} % �������� "1,5"
\renewcommand{\rmdefault}{ftm} % ������ ����� �� ������������ --- "Times New Roman" �� ������ pscyr

\newcommand{\setfontsize}[1]{\fontsize{#1pt}{#1pt}\selectfont} % ������� ��� ��������� ������ ������
\newcommand{\invcommas}[1]{\guillemotleft #1\guillemotright} % ������� ��� ����������� ������� �����

% ����� ������������ ���� ���� � ������, �� � �������� �����
\urlstyle{same}

% ����� ������� ��� ������� ������ �������
\fancypagestyle{plain}{
    \fancyhf{}
    \rhead{\thepage}
		\renewcommand{\headrulewidth}{0pt}
		\renewcommand{\footrulewidth}{0pt}
}

% ������� ��� �������� ������� ������ � ���������� ����
\binoppenalty=10000
\relpenalty=10000

% ������������� ���������
\@ifpackageloaded{totcount}{
	%\newtotcounter{part}
	%\newtotcounter{chapter}
	%\newtotcounter{section}
	%\newtotcounter{subsection}
	%\newtotcounter{subsubsection}
	%\newtotcounter{paragraph}
	%\newtotcounter{subparagraph}
	%\newtotcounter{footnote}
	%\newtotcounter{mpfootnote}
	\regtotcounter{page}
	\newtotcounter{equation}
	\newtotcounter{figure}
	\newtotcounter{table}
	\newtotcounter{bibitemcount}
}{}

% ������� ��� ��������� �������������� ������, ���� ��� �� ����� ���������� � ����
\newcommand{\uchapter}[1]{\chapter*{#1}\addcontentsline{toc}{chapter}{#1}} 

% ��� ��������� ������ ����������� ������� \uchapter
\newcommand{\intro}{\uchapter{�����}}

% ��� ��������� �������� ����������� ������� \uchapter
\newcommand{\conclusion}{\uchapter{��������}}

% ��� ��������� ������ ������� ��������� ����������� ������� \shortings
\newcommand{\shortings}{\uchapter{������ ������� ���������, ��������� � �������}}

% ����� ������� ��� ��������� �������
\newcounter{pages}\ifpackageloaded{totcount}{\regtotcount{pages}}{}
\newcounter{appendnum}\@ifpackageloaded{totcount}{\regtotcount{appendnum}}{}
\newcommand{\append}[1]{
\titleformat{\chapter}{\centering\normalsize}{\hspace{1cm}\thechapter}{0.5em}{}
\titlespacing{\chapter}{0pt}{0pt}{0pt}
\ifnum \value{appendnum}=1 \setcounter{pages}{\value{page}} \fi
%\ifnum \arabic{appendnum}=1 \ucahpter{�������} \else \clearpage \fi
\chapter*{������� \Asbuk{appendnum}}
\begin{center}
#1
\end{center}
\titlespacing{\chapter}{0pt}{0pt}{49pt}
\titleformat{\chapter}{\centering\normalsize\MakeUppercase}{\hspace{1cm}\thechapter}{0.5em}{}
\addcontentsline{toc}{chapter}{������� \Asbuk{appendnum}\ #1}
\setcounter{figure}{0}
\setcounter{table}{0}
\renewcommand{\thefigure}{\Asbuk{appendnum}.\arabic{figure}}
\renewcommand{\thetable}{\Asbuk{appendnum}.\arabic{table}}
}
% ��������� ���������� ����� � ���������� �������
\pretocmd\append{
	\stepcounter{appendnum}
	\ifnum\Asbuk{appendnum}=� \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=� \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=� \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=� \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=� \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=� \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=� \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=� \stepcounter{appendnum}\fi
	\ifnum\Asbuk{appendnum}=� \stepcounter{appendnum}\fi
}{}{}

% ������ �������� ���� ���������
% �������� --- ��� ������
\titleformat{\chapter} % �������, �� ���������� ���� �����
			{\centering\normalsize\MakeUppercase} % ������� ������ ����� (������, "�� �����")
			{\hspace{1cm}\thechapter} % ������� ������ ������ ������: �� ���� ������ �����, ��� ������
			{0.5em} % ������� �� ������� � ������
			{} % �����, �� ������ ����
	
% ����� --- ��� ��������
\titleformat{\section}[block] % �������, �� ���������� ���� �������
			{\normalsize} % ������� ������ ����� (������)
			{\hspace{1.25cm}\thesection} % ������� ������ ������ ������: �� ���� ������ �����, ��� ������
			{0.5em} % ������� �� ������� � ������
			{} % �����, �� ������ ����

% ����� --- ��� �������� �� ������� ����
\titleformat{\subsection}[block] % �������, �� ���������� ���� ������� �������� ����
			{\normalsize} % ������� ������ ����� (������)
			{\hspace{1.25cm}\thesubsection} % ������� ������ ������ ������: �� ���� ������ �����, ��� ������
			{0.5em} % ������� �� ������� � ������
			{} % �����, �� ������ ����
			
% ����� ������ ������� ��� ��������� ������
\titlespacing{\chapter} % �������, �� ���������� ���� �����
			{0pt} % ������ ����
			{0pt} % ������ ������ (����)
			{42pt} % ������ ����� (2 �����)

% ����� ������ ������� ��� ��������� ��������			
\titlespacing{\section} % �������, �� ���������� ���� �������
			{0pt} % ������ ����
			{42pt} % ������ ������ (2 �����)
			{42pt} % ������ ����� (2 �����)
			
% ����� ������ ������� ��� ��������� �������� �� ������� ����
\titlespacing{\subsection} % �������, �� ���������� ���� ������� �������� ����
			{0pt} % ������ ����
			{42pt} % ������ ������ (2 �����)
			{42pt} % ������ ����� (2 �����)

% ����� ������� ���, ��� �� ����� ����������� ���� �������� �������
\preto\section{%
	\ifnum\value{section}=0\addvspace{-42pt}\fi%
}

\preto\subsection{%
	\ifnum\value{subsection}=0\addvspace{-42pt}\fi%
}
			
% ����������� ����
\makeatletter
\renewcommand{\tableofcontents}{
	\clearpage
	\thispagestyle{plain}

	\begin{center}
	  ����
	\end{center}
	
	\@starttoc{toc}
}
\makeatother

% ��������� ������ ����� � �������
\renewcommand{\arraystretch}{1.5}

% ������� ������ ��������� ������
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}

% ������ �������� ������, � ����������� ���������
% ����������� ������� ����
\AddEnumerateCounter{\asbuk}{\@asbuk}{\cyrm}
\setlist[itemize,1]{label=-, partopsep=0pt, parsep=0pt, topsep=0pt, itemsep=0pt, itemindent=1.7cm, leftmargin=0pt}
\setlist[enumerate,1]{label=\asbuk*), partopsep=0pt, parsep=0pt, topsep=0pt, itemsep=0pt, itemindent=1.9cm, leftmargin=0pt}
\setlist[itemize,2]{label=-, partopsep=0pt, parsep=0pt, topsep=0pt, itemsep=0pt, itemindent=2.6cm, leftmargin=0pt}
\setlist[enumerate,2]{label=\arabic*), partopsep=0pt, parsep=0pt, topsep=0pt, itemsep=0pt, itemindent=2.6cm, leftmargin=0pt}

% ����� ��������� ������
% ������ ������� �� �������
\renewcommand{\cftchapdotsep}{1}
\renewcommand{\cftsecdotsep}{1}
\renewcommand{\cftsubsecdotsep}{1}

% ������ ����� ����, �� ���������� �� ����� �������
\cftsetpnumwidth{1em}

% ������ ������� �� ������� � ����
\setlength\cftbeforechapskip{0pt}

% ��������� ��������
\renewcommand{\cftchapaftersnum}{} % �� ���� �������� ���� ������ ������ (������)
\renewcommand{\cftchapindent}{0cm} % ������ ������ ������ �� ����� ����
\renewcommand{\cftchapnumwidth}{1em} % ����� ����, �� ���������� �� ����� ������
\renewcommand{\cftchappagefont}{\mdseries} % ����� ������ ������� (���������, 14pt)
\renewcommand{\cftchapfont}{\mdseries} % ����� ��������� (���������)
\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}} % ��� ����������� ������� �� ��������� �� ������ ������� (�������)

% ����� ��������� ����������
\renewcommand{\cftsecaftersnum}{} % �� ���� �������� ���� ������ �������� (������)
\renewcommand{\cftsecindent}{1em} % ������ ������ �������� �� ����� ����
\renewcommand{\cftsecnumwidth}{2em} % ����� ����, �� ���������� �� ����� ��������
\renewcommand{\cftsecpagefont}{\mdseries} % ����� ������ ������� (���������, 14pt)
\renewcommand{\cftsecfont}{\mdseries} % ����� ��������� (���������)
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}} % ��� ����������� ������� �� ��������� �� ������ ������� (�������)

% ����� ��������� ���������� �� ������� ����
\renewcommand{\cftsubsecaftersnum}{} % �� ���� �������� ���� ������ �������� �������� ���� (������)
\renewcommand{\cftsubsecindent}{3em} % ������ ������ �������� �������� ���� �� ����� ����
\renewcommand{\cftsubsecnumwidth}{2.5em} % ����� ����, �� ���������� �� ����� �������� �������� ����
\renewcommand{\cftsubsecpagefont}{\mdseries} % ����� ������ ������� (���������, 14pt)
\renewcommand{\cftsubsecfont}{\mdseries} % ����� ��������� (���������)
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftsubsecdotsep}} % ��� ����������� ������� �� ��������� �� ������ ������� (�������)

% ��������� �������, ������� � �������
\DeclareCaptionLabelFormat{tablecap}{������� #2} % ������ �� ������������ "����." �� ��������
\DeclareCaptionLabelFormat{figurecap}{������� #2} % ������ �� ������������ "���." �� ��������

\captionsetup[table]{margin=0pt,singlelinecheck=false, justification=justified, labelsep=endash, labelformat=tablecap, font = {stretch = 1.5}} % ������ ��� �������
\captionsetup[figure]{justification=centering, labelsep=endash, labelformat=figurecap, font = {stretch = 1.5}} % ������ ��� �������

\makeatletter
% ������������ �������� ����
\@ifpackageloaded{listings}{
	\DeclareCaptionFormat{listing}{˳����� ����� #3} % ������ �� ������������ "Listing" �� ��������
	\captionsetup[lstlisting]{margin=0pt, format=listing, singlelinecheck=false, font = {stretch = 1.5}} % ������ ��� �������
}{}

% �������� ���� ��� ����������� ������� � ��������
\@ifpackageloaded{array}{
	\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash}p{#1}}
	\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash}p{#1}}
	\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash}p{#1}}
}{}
\makeatother

% �������, �� ����� �������� ����� �� �������� � ����������
\renewcommand{\thesubfigure}{\asbuk{subfigure}}

% ���� �������� ��� ������ �������
\renewenvironment{table}[4]{
	\begin{center}
	\begin{longtable}{#1}
	\kill
	\caption{#2}\label{#3}\\
	#4
	\endfirsthead
	\kill
	\caption*{����������� ������� \thetable}\\
	#4
	\endhead
	\hline
	\endfoot
}
	{%
	\end{longtable}
	\end{center}	
}
\setlength{\LTpre}{-14pt}
\setlength{\LTpost}{-14pt}
\setlength{\LTcapwidth}{0pt}

% �������� ������� �� ��������� � ����������
\patchcmd{\thebibliography}
  {\advance\leftmargin\labelsep}
  {\leftmargin=0pt\itemindent=1.9cm\advance\itemindent\labelsep}
  {}{}

% ������� ������ ������ ��� ������ ������ (����� + ������)
\makeatletter
\renewcommand{\@biblabel}[1]{#1.}
\makeatother

% ������� ���������� ��������, ������� ������� ������ ������ ������ � ����
\let\tempbib\thebibliography
\let\tempbibend\endthebibliography
\renewenvironment{thebibliography}{
	\renewcommand{\bibname}{����˲� ��������}% ������� ���������
	\tempbib{99.}% ����������� �������� ����� ������� --- 99
	% ��� �������� ������� �� ���������
	\setlength\partopsep{0pt}
	\setlength\parskip{0pt}
	\setlength\parsep{0pt}
	\setlength\topsep{0pt}
	\setlength\itemsep{0pt}
	\addcontentsline{toc}{chapter}{������ ��������}% ������ � ����
	}
	{
	\tempbibend
}

% ���� ������� ��� ���������� ������
% ����� �������� � ����� ���������� � ���������� �������������
\newcommand{\maketitlepage}[5]{
	  \thispagestyle{empty}
	  \setlength{\parindent}{0cm}
		\begin{center} % �����������
			\textbf{\MakeUppercase{������������ ��������� ����������� ������}}
			
			\textbf{\MakeUppercase{\invcommas{�������� ������������ ��������}}}

			\textbf{��������� ��������� ����������}
			
			\textbf{������� ��������� ����������}
			
			\addvspace{6pt} % ��������� ������
		
			\begin{flushright}
				\renewcommand{\arraystretch}{0.8}
				\begin{tabular}{l}
				
					\invcommas{�� ������� ��������} \\
					�������� ������� ���\\
					\_\_\_\_\_\_\_\_\_\_\_\_\_~�.~�.~�������� \\
					\invcommas{\_\_\_\_}~\_\_\_\_\_\_\_\_\_\_\_\_\_~\the\year~�. \\
				
				\end{tabular}
			\end{flushright}

			\vfill 
			
			\setfontsize{20}
			\textbf{{�������� ������}}%\MakeUppercase
			\setfontsize{14}

			\textbf{�������-��������������� ���� \invcommas{��������}}
			
		\end{center}

		� �������� ��������� 6.040301 \invcommas{��������� ����������}

		�� ����: \invcommas{#5}

		\vfill % ��������� ������

		�������: ������� IV �����, ����� {#2} 
		
		{\renewcommand{\arraystretch}{0.8}
		\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}lll}
			& {#1} & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[6pt]
			������� & {#3} & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[6pt]
			����������� � ������� ����� & ��. ����. ���~�.~�. & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[3pt]
			����������� � ������������� & ��. ����. ���������~�.~�. & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[6pt]
			��������� & {#4} & \_\_\_\_\_\_\_\_\_\_\_\_\_\\
		\end{tabular*}}
		
		\vfill % ����������� ���������� �������
		
		\begin{flushright}
			\renewcommand{\arraystretch}{0.8}
			\begin{tabular}{l}
				��������, �� � ��� ��������� �����\\
				���� ���������� �� ����� ����� ������\\
				��� ��������� ��������.\\
				�������~\_\_\_\_\_\_\_\_\_\_\_\_\_
			\end{tabular}
		\end{flushright}
		
		\vfill

		\begin{center}
			��� --- \the\year\ ����
		\end{center}
		
		\clearpage % �������� � ���� �������

		\setcounter{page}{2} % ����� ������� ���� 2
		
		\setlength{\parindent}{1.25cm} % ������ ������ ������� ����� ������ (5 �����, ��� 1,25 ��)
		
		% ������� ����� �� �� ���� �������
		\setlength{\belowdisplayskip}{14pt}
		\setlength{\abovedisplayskip}{14pt}
		\setlength{\belowdisplayshortskip}{14pt}
		\setlength{\abovedisplayshortskip}{14pt}
}

% ���� ������� ��� ��������
\newcommand{\annotation}[1]{\chapter*{#1}\thispagestyle{empty}\renewcommand{\baselinestretch}{1.5}\setfontsize{14pt}}

% ���� ������� ��� �������� ��������
\makeatletter
\define@cmdkey[Thesis]{Assigment}{StudentName}{}
\define@cmdkey[Thesis]{Assigment}{ThesisName}{}
\define@cmdkey[Thesis]{Assigment}{AdvisorName}{}
\define@cmdkey[Thesis]{Assigment}{Order}{}
\define@cmdkey[Thesis]{Assigment}{ApplicationDate}{}
\define@cmdkey[Thesis]{Assigment}{InputData}{}
\define@cmdkey[Thesis]{Assigment}{Contents}{}
\define@cmdkey[Thesis]{Assigment}{Graphics}{}
\define@cmdkey[Thesis]{Assigment}{AssigmentDate}{}
\define@cmdkey[Thesis]{Assigment}{Calendar}{}
\define@cmdkey[Thesis]{Assigment}{StudentPIB}{}
\define@cmdkey[Thesis]{Assigment}{AdvisorPIB}{}
\newcommand{\assigment}[1]{
	  \setkeys[Thesis]{Assigment}{#1}
	  \pagestyle{empty}
	  \setlength{\parindent}{0cm}
		\begin{center} % �����������
			\textbf{������������ ��������� ����������� ������}
			
			\textbf{\invcommas{�������� ������������ ��������}}
		\end{center}

			��������� ��������� ����������
			
			������� ��������� ����������
			
			�������-�������������� ����� \invcommas{��������}

			������ ���������: 6.040301 \invcommas{��������� ����������}
			
			\addvspace{12pt} % ��������� ������
			
			\begin{flushright}
				\renewcommand{\arraystretch}{0.8}
				\begin{tabular}{l}
					
					\MakeUppercase{����������} \\
					�������� ������� ���\\
					\_\_\_\_\_\_\_\_\_\_\_\_\_~�.~�.~�������� \\
					\invcommas{\_\_\_\_}~\_\_\_\_\_\_\_\_\_\_\_\_\_~\the\year~�. \\
					
				\end{tabular}
			\end{flushright}

		\begin{center}
			\textbf{\MakeUppercase{��������}}

			\textbf{�� �������� ������ ��������}

			%\addvspace{14pt}

			\cmdThesis@Assigment@StudentName

		\end{center}

		1. ���� ������: \cmdThesis@Assigment@ThesisName

		������� ������ \cmdThesis@Assigment@AdvisorName,

		����������� ������� �� ������������ �� 	\cmdThesis@Assigment@Order.

		2. ����� ������� ��������� ������:			\cmdThesis@Assigment@ApplicationDate

		3. ������� ���� �� ������: 					\cmdThesis@Assigment@InputData

		4. ������ �������, �� ������� ���������: \cmdThesis@Assigment@Contents

		5. ������ ���������� ��������: 			\cmdThesis@Assigment@Graphics

		6. ������������ ������ ������:

		\addvspace{12pt}
		\begin{center}
		%\renewcommand{\arraystretch}{0.8}
		\begin{tabular}{|c|c|c|c|}
			\hline
			����� & �������, �������� �� ������ & \multicolumn{2}{c|}{ϳ����, ����} \\ \cline{3-4}
			& ������������ & \parbox[t]{4em}{\centering{}��������\\�����} & \parbox[t]{4em}{\centering{}��������\\�������} \\
			\hline
			������� ����� & ���~�.~�., ��. ����. & & \\
			\hline
		\end{tabular}
		\end{center}

		\addvspace{12pt}

		7. ���� ������ ��������: \cmdThesis@Assigment@AssigmentDate
		
		\begin{center}
			����������� ����

			\addvspace{24pt}

			\renewcommand{\arraystretch}{0.8}
			\begin{longtable}{|c|p{12.5em}|p{8.5em}|c|}
			%\multicolumn{4}{c}{����������� ����}\\
			\hline
			\No\ �/� & \parbox[t]{12.5em}{\centering{}����� ����� ���������\\�������� ������} & \parbox[t]{8.5em}{\centering{}����� ���������\\����� ������} & ������� \\
			\hline
			\kill\endfirsthead\endhead
			\hline\endfoot
				\cmdThesis@Assigment@Calendar
			\end{longtable}
			
		\end{center}
		
		\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}lrl}
		������� &  \_\_\_\_\_\_\_\_\_\_\_\_\_ & \cmdThesis@Assigment@StudentPIB \\

		������� ������ & \_\_\_\_\_\_\_\_\_\_\_\_\_ & \cmdThesis@Assigment@AdvisorPIB \\
		\end{tabular*}

		\clearpage

		\pagestyle{plain}

		\setlength{\parindent}{1.25cm}
}
\makeatother

%����������� ������� � ����������� � ��������
\makeatletter
\def\latex@@rquote{^\bgroup\prim@s} 
\let\hang@@h@ngrquote\h@ngrquote
\renewcommand{\h@ngrquote}{
	\relax\ifmmode
		\expandafter\latex@@rquote
	\else
		\expandafter\hang@@h@ngrquote
	\fi}
\makeatother