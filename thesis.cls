% ***************** Клас для написання диплому *****************
% ************************ БОРИСЕНКО П.Б. **********************
% **************** на основі класу ТАВРОВА Д.Ю. ****************
% ************************* 25.05.14 ***************************
% ************************* 27.05.14 ***************************
% ************************* 29.05.14 ***************************
% *********** Виправлення Таврова Д.Ю. від 02.06.14 ************
% ************************* 05.06.14 ***************************

% Доступні команди:
% \maketitlepage{ПІБ}{група}{керівник}{рецензент}{тема}
% \assigment{параметри}, де параметри це розділені комами пари вигляду параметр={значення}:
%	StudentName -- ім'я студента в родовому відмінку
%	ThesisName -- тема диплому
%	AdvisorName -- посада та ім'я керівника
%	Order -- дата та номер наказу
%	ApplicationDate -- дата подання диплому
%	InputData -- вхідні дані диплому
%	Contents -- зміст записки
%	Graphics -- перелік графічних матеріалів
%	AssigmentDate -- дата отримання завдання
%	Calendar -- внутрішня частина таблиці з календарним планом
%	StudentPIB -- Прізвище І.Б. студента 
%	AdvisorPIB -- Прізвище І.Б. керівника
% \annotation{заголовок}
% \tableofcontents
% \shortings
% \intro
% \conclusion
% \begin{thebibliography} .. \end{thebibliography}
% \append{номер}{назва}

% 1. Ідентифікуємо клас
\ProvidesClass{thesis}[2014/05/29 v1.5 Клас для написання диплому]
\NeedsTeXFormat{LaTeX2e} % потрібний формат

% 2. Завантажуємо "батьківський клас"
\LoadClass[a4paper,14pt,ukrainian,oneside]{extreport}


% 3. Завантажуємо пакети
% мовні пакети
\RequirePackage{cmap}% для кодування шрифтів у pdf
\RequirePackage[T2A]{fontenc} % пакет для підтримки кирилічних шрифтів
\RequirePackage[cp1251]{inputenc} % пакет для підтримкм Windows'івського кодування cp1251
\RequirePackage[russian,ukrainian]{babel} % пакет для підтримки української та російської мов
\RequirePackage{pscyr} % пакет із гарними кирилічними шрифтами
\RequirePackage{mathtext} % потрібні символи в режимі математичних формул
\RequirePackage{amssymb,amsfonts,amsmath,amsthm} % потрібні символи в режимі математичних формул
\RequirePackage{textcomp} % потрібні символи в режимі математичних формул
\RequirePackage{upgreek} % пакет для прямих грецьких літер

% графічні пакети
\RequirePackage{graphicx} % основний пакет для вставки графіки
\RequirePackage{subfig} % пакет для вставки підрисунків
\RequirePackage{flafter} % пакет гарантує, що рисунок чи таблица ніколи не з'являться раніше посилання на саму себе
\RequirePackage{caption} % пакет для персоналізації заголовків рисунків та таблиць
\RequirePackage{xtab} % пакет для довгих таблиць
\RequirePackage{longtable} % пакет для довгих таблиць
\RequirePackage{multirow} % пакет для об'єднання рядків таблиці

% пакети для форматування відступів та полів
\RequirePackage[top=2cm, bottom=2cm, left=3cm, right=2cm]{geometry} % задаємо поля сторінки
\RequirePackage{indentfirst} % відступ для першого рядка абзацу
\RequirePackage{hanging} % відступ для всіх інших рядків абзацу
\RequirePackage{enumitem}	% пакет для форматування списків
\RequirePackage{setspace}	% пакет для того, щоб можна було задати міжрядковий інтервал
\RequirePackage{fancyhdr} % пакет потрібний для виставлення позиції номеру сторінки
\RequirePackage{etoolbox} % пакет для прибирання висячого відступу в бібліографії

% стилі заголовків та змісту
\RequirePackage[rm,small,raggedright]{titlesec} % пакет для ручного керування стилем заголовків
\RequirePackage[titles,subfigure]{tocloft} % пакет для ручного керування стилем змісту

% пакет для коректного представлення інтернет-посилань у "Джерелах"
\RequirePackage{url}

% пакет для нормальних пробілів після ком у десяткових дробах
\RequirePackage{icomma}

% пакет для відображення форматування вихідних кодів
% \RequirePackage{listings}

% пакет для параметричних команд
\RequirePackage{xkeyval}

% 4. Основна частина
\linespread{1.5} % інтервал "1,5"
\renewcommand{\rmdefault}{ftm} % задаємо шрифт за промовчанням --- "Times New Roman" із пакету pscyr

\newcommand{\setfontsize}[1]{\fontsize{#1pt}{#1pt}\selectfont} % команда для задавання розміру шрифта
\newcommand{\invcommas}[1]{\guillemotleft #1\guillemotright} % команда для французьких кутових лапок

% текст гіперпосилань буде того ж шрифту, що й основний текст
\urlstyle{same}

% стиль сторінки для позиції номеру сторінки
\fancypagestyle{plain}{
    \fancyhf{}
    \rhead{\thepage}
		\renewcommand{\headrulewidth}{0pt}
		\renewcommand{\footrulewidth}{0pt}
}

% команди для заборони розриву формул у небажаному місці
\binoppenalty=10000
\relpenalty=10000

% команда для створення ненумерованого розділу, який тим не менше показується в змісті
\newcommand{\uchapter}[1]{\chapter*{#1}\addcontentsline{toc}{chapter}{#1}} 

% для створення вступу використаємо команду \uchapter
\newcommand{\intro}{\uchapter{Вступ}}

% для створення висновків використаємо команду \uchapter
\newcommand{\conclusion}{\uchapter{Висновки}}

% для створення перелік умовних позначень використаємо команду \shortings
\newcommand{\shortings}{\uchapter{Перелік умовних позначень, скорочень і термінів}}

% хитра команда для створення додатків
\newcommand{\append}[2]{
\titleformat{\chapter}{\centering\normalsize}{\hspace{1cm}\thechapter}{0.5em}{}
\titlespacing{\chapter}{0pt}{0pt}{0pt}
\chapter*{Додаток #1}
\begin{center}
#2
\end{center}
\addcontentsline{toc}{chapter}{Додаток #1 #2}
\titlespacing{\chapter}{0pt}{0pt}{49pt}
\titleformat{\chapter}{\centering\normalsize\MakeUppercase}{\hspace{1cm}\thechapter}{0.5em}{}
}

% будемо змінювати стилі заголовків
% спочатку --- для розділу
\titleformat{\chapter} % указуємо, що модифікуємо саме розділ
			{\centering\normalsize\MakeUppercase} % указуємо формат назви (жирний, "усі великі")
			{\hspace{1cm}\thechapter} % указуємо формат власне номера: це буде просто число, без крапки
			{0.5em} % відстань між номером і назвою
			{} % текст, що передує назві
	
% тепер --- для підрозділу
\titleformat{\section} % указуємо, що модифікуємо саме підрозділ
			{\normalsize} % указуємо формат назви (жирний)
			{\thesection} % указуємо формат власне номера: це буде просто число, без крапки
			{0.5em} % відстань між номером і назвою
			{} % текст, що передує назві

% тепер --- для підрозділу ще нижчого рівня
\titleformat{\subsection} % указуємо, що модифікуємо саме підрозділ нижнього рівня
			{\normalsize} % указуємо формат назви (жирний)
			{\thesubsection} % указуємо формат власне номера: це буде просто число, без крапки
			{0.5em} % відстань між номером і назвою
			{} % текст, що передує назві
			
% тепер задамо відступи для заголовку розділу
\titlespacing{\chapter} % указуємо, що модифікуємо саме розділ
			{0pt} % відступ зліва
			{0pt} % відступ зверху (немає)
			{49pt} % відступ знизу (2 рядки)

% тепер задамо відступи для заголовку підрозділу			
\titlespacing{\section} % указуємо, що модифікуємо саме підрозділ
			{\parindent} % відступ зліва
			{49pt} % відступ зверху (2 рядки)
			{49pt} % відступ знизу (2 рядки)
			
% тепер задамо відступи для заголовку підрозділу ще нижчого рівня
\titlespacing{\subsection} % указуємо, що модифікуємо саме підрозділ нижнього рівня
			{\parindent} % відступ зліва
			{49pt} % відступ зверху (2 рядки)
			{49pt} % відступ знизу (2 рядки)
			
% видозмінюємо зміст
\makeatletter
\renewcommand{\tableofcontents}{
	\clearpage
	\thispagestyle{empty}

	\begin{center}
	  Зміст
	\end{center}
	
	\@starttoc{toc}
}
\makeatother

% підганяємо висоту рядка в таблиці
\renewcommand{\arraystretch}{1.2}

% змінюємо формат нумерації формул
\renewcommand{\theequation}{(\arabic{chapter}.\arabic{equation})}

% нові демаркатори для списків
\renewcommand{\theenumi}{\arabic{enumi})}
\renewcommand{\theenumii}{\arabic{enumii})}
\renewcommand\labelenumi{\theenumi}
\renewcommand\labelenumii{\theenumii}

% задамо оновлені списки, з правильними відступами
% нумерований першого рівня
\newcounter{No}
\renewenvironment{enumerate}[1][\asbuk{No})]
 	{\begin{list}{#1}{
 		  \setlength\partopsep{0pt}
		  \setlength\parskip{0pt}
		  \setlength\parsep{0pt}
		  \setlength\topsep{0pt}
		  \setlength\itemsep{0pt}
		  \setlength{\itemindent}{1.9cm}
		  \setlength{\leftmargin}{0pt}
		  \usecounter{No}
		}
	}
	{\end{list}}

% ненумерований першого рівня
\renewenvironment{itemize}[1][{-}]
	{\begin{list}{#1}{
		\setlength\partopsep{0pt}
	  \setlength\parskip{0pt}
	  \setlength\parsep{0pt}
	  \setlength\topsep{0pt}
	  \setlength\itemsep{0pt}
	  \setlength{\itemindent}{1.7cm}
	  \setlength{\leftmargin}{0pt}
		}
  }
  {\end{list}}
  
% нумерований другого рівня
\newcounter{NoEnum2}
\newenvironment{enumerate2}[1][\arabic{NoEnum2})]
 	{\begin{list}{#1}{
 		  \setlength\partopsep{0pt}
		  \setlength\parskip{0pt}
		  \setlength\parsep{0pt}
		  \setlength\topsep{0pt}
		  \setlength\itemsep{0pt}
		  \setlength{\itemindent}{2.6cm}
		  \setlength{\leftmargin}{0pt}
		  \usecounter{NoEnum2}
		}
	}
	{\end{list}}
	
% мерований другого рівня
\newcounter{NoItem2}
\newenvironment{itemize2}[1][\arabic{NoItem2})]
 	{\begin{list}{#1}{
 		  \setlength\partopsep{0pt}
		  \setlength\parskip{0pt}
		  \setlength\parsep{0pt}
		  \setlength\topsep{0pt}
		  \setlength\itemsep{0pt}
		  \setlength{\itemindent}{2.35cm}
		  \setlength{\leftmargin}{0pt}
		  \usecounter{NoItem2}
		}
	}
	{\end{list}}

% тепер займемося змістом
% задаємо відстань між точками
\renewcommand{\cftchapdotsep}{1}
\renewcommand{\cftsecdotsep}{1}
\renewcommand{\cftsubsecdotsep}{1}

% задаємо розмір поля, що виділяється під номер сторінки
\cftsetpnumwidth{1em}

% задамо відстані між рядками в змісті
\setlength\cftbeforechapskip{0pt}

% займемося розділами
\renewcommand{\cftchapaftersnum}{} % що буде писатися після номеру розділу (нічого)
\renewcommand{\cftchapindent}{0cm} % відступ номера розділу від лівого краю
\renewcommand{\cftchapnumwidth}{1em} % розмір поля, що виділяється під номер розділу
\renewcommand{\cftchappagefont}{\mdseries} % стиль номеру сторінки (звичайний, 14pt)
\renewcommand{\cftchapfont}{\mdseries} % стиль заголовку (звичайний)
\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}} % чим заповнювати проміжок від заголовку до номеру сторінки (точками)

% тепер займемося підрозділами
\renewcommand{\cftsecaftersnum}{} % що буде писатися після номеру підрозділу (нічого)
\renewcommand{\cftsecindent}{1em} % відступ номера підрозділу від лівого краю
\renewcommand{\cftsecnumwidth}{2em} % розмір поля, що виділяється під номер підрозділу
\renewcommand{\cftsecpagefont}{\mdseries} % стиль номеру сторінки (звичайний, 14pt)
\renewcommand{\cftsecfont}{\mdseries} % стиль заголовку (звичайний)
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}} % чим заповнювати проміжок від заголовку до номеру сторінки (точками)

% тепер займемося підрозділами ще нижчого рівня
\renewcommand{\cftsubsecaftersnum}{} % що буде писатися після номеру підрозділу нижнього рівня (нічого)
\renewcommand{\cftsubsecindent}{3em} % відступ номера підрозділу нижнього рівня від лівого краю
\renewcommand{\cftsubsecnumwidth}{2.5em} % розмір поля, що виділяється під номер підрозділу нижнього рівня
\renewcommand{\cftsubsecpagefont}{\mdseries} % стиль номеру сторінки (звичайний, 14pt)
\renewcommand{\cftsubsecfont}{\mdseries} % стиль заголовку (звичайний)
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftsubsecdotsep}} % чим заповнювати проміжок від заголовку до номеру сторінки (точками)

% заголовки таблиць і рисунків
\DeclareCaptionLabelFormat{tablecap}{Таблиця #2} % формат за промовчанням "Табл." не влаштовує
\DeclareCaptionLabelFormat{figurecap}{Рисунок #2} % формат за промовчанням "Рис." не влаштовує
\DeclareCaptionLabelSeparator{dash}{~--~} % рисунки й таблиці треба відділяти тире, а не крапкою

\captionsetup[table]{singlelinecheck=false, justification=raggedright, labelsep=dash, labelformat=tablecap, font = {stretch = 1.5}} % формат для таблиць
\captionsetup[figure]{justification=centering, labelsep=dash, labelformat=figurecap, font = {stretch = 1.5}} % формат для рисунків

% команда, що змінює латинські літери на кирилічні в підрисунках
\renewcommand{\thesubfigure}{\asbuk{subfigure}}

% нове оточення для довгих таблиць
\renewenvironment{table}[4]{
	\begin{center}
	\begin{longtable}{#1}
	\kill
	\caption{#2}\label{#3}\\
	#4
	\endfirsthead
	\kill
	\caption*{Продовження таблиці \thetable}\\
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

% наведемо порядок із відступами в бібліографії
\patchcmd{\thebibliography}
  {\advance\leftmargin\labelsep}
  {\leftmargin=0pt\itemindent=1.9cm\advance\itemindent\labelsep}
  {}{}

% змінюємо формат номеру для списку джерел (число + крапка)
\makeatletter
\renewcommand{\@biblabel}[1]{#1.}
\makeatother

% оновимо стандартне оточення, оскільки потрібно додати список джерел у зміст
\let\tempbib\thebibliography
\let\tempbibend\endthebibliography
\renewenvironment{thebibliography}{
	\renewcommand{\bibname}{ПЕРЕЛІК ПОСИЛАНЬ}% змінюємо заголовок
	\tempbib{99.}% максимально можливий номер джерела --- 99
	% далі наведемо порядок із відступами
	\setlength\partopsep{0pt}
	\setlength\parskip{0pt}
	\setlength\parsep{0pt}
	\setlength\topsep{0pt}
	\setlength\itemsep{0pt}
	\addcontentsline{toc}{chapter}{Перелік посилань}% додаємо в зміст
	}
	{
	\tempbibend
}

% нова команда для титульного аркушу
% згідно прикладу з сайту факультету з незначними виправленнями
\newcommand{\maketitlepage}[5]{
	  \thispagestyle{empty}
	  \setlength{\parindent}{0cm}
		\begin{center} % центрування
			\textbf{\MakeUppercase{Національний технічний університет України}}
			
			\textbf{\MakeUppercase{\invcommas{Київський політехнічний інститут}}}

			\textbf{Факультет прикладної математики}
			
			\textbf{Кафедра прикладної математики}
			
			\addvspace{6pt} % невеликий відступ
		
			\begin{flushright}
				\renewcommand{\arraystretch}{0.8}
				\begin{tabular}{l}
				
					\invcommas{До захисту допущено} \\
					Завідувач кафедри ПМА\\
					\_\_\_\_\_\_\_\_\_\_\_\_\_~О.~А.~Молчанов \\
					\invcommas{\_\_\_\_}~\_\_\_\_\_\_\_\_\_\_\_\_\_~\the\year~р. \\
				
				\end{tabular}
			\end{flushright}

			\vfill 
			
			\setfontsize{20}
			\textbf{{Дипломна робота}}%\MakeUppercase
			\setfontsize{14}

			\textbf{освітньо-кваліфікаційного рівня \invcommas{Бакалавр}}
			
		\end{center}

		з напрямку підготовки 6.040301 \invcommas{Прикладна математика}

		на тему: {#5}

		\addvspace{6pt} % невеликий відступ

		{\renewcommand{\arraystretch}{0.8}
		\begin{tabular}{lll}
			\multicolumn{3}{l}{Виконав: студент IV курсу, групи {#2}} \\[3pt]
			\multicolumn{2}{c}{{#1}} & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[6pt]
			Керівник & {#3} & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[6pt]
			Консультанти: & & \\[3pt]
			%-- з матем. забезпечення & асистент Терещенко~І.~О. & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[3pt]
			-- з охорони праці & ст. викладач Луц~Т.~Є. & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[3pt]
			-- з нормоконтролю & ст. викладач Мальчиков~В.~В. & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[6pt]
			Рецензент & {#4} & \_\_\_\_\_\_\_\_\_\_\_\_\_\\
		\end{tabular}}
		
		\vfill % автоматично заповнюємо проміжок
		
		\begin{flushright}
			\renewcommand{\arraystretch}{0.8}
			\begin{tabular}{l}
				Засвідчую, що у цій дипломній роботі\\
				немає запозичень з праць інших авторів\\
				без відповідних посилань.\\
				Студент~\_\_\_\_\_\_\_\_\_\_\_\_\_
			\end{tabular}
		\end{flushright}
		
		\vfill

		\begin{center}
			Київ --- \the\year
		\end{center}
		
		\clearpage % починаємо з нової сторінки

		\setcounter{page}{2} % номер сторінки буде 2
		
		\setlength{\parindent}{1.25cm} % задаємо відступ першого рядка абзацу (5 знаків, або 1,25 см)
		
		% пропуск рядка до та після формули
		\setlength{\belowdisplayskip}{14pt}
		\setlength{\abovedisplayskip}{14pt}
		\setlength{\belowdisplayshortskip}{14pt}
		\setlength{\abovedisplayshortskip}{14pt}
}

% нова команда для анотації
\newcommand{\annotation}[1]{\chapter*{#1}\thispagestyle{empty}\renewcommand{\baselinestretch}{1.5}\setfontsize{14pt}}

% нова команда для побудови завдання
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
		\begin{center} % центрування
			\MakeUppercase{Національний технічний університет України}
			
			\MakeUppercase{\invcommas{Київський політехнічний інститут}}

			Факультет прикладної математики
			
			Кафедра прикладної математики

			Напрям підготовки: 6.040301 \invcommas{Прикладна математика}
			
			\addvspace{12pt} % невеликий відступ
			
			\begin{flushright}
				\renewcommand{\arraystretch}{0.8}
				\begin{tabular}{l}
					
					\MakeUppercase{Затверджую} \\
					Завідувач кафедри ПМА\\
					\_\_\_\_\_\_\_\_\_\_\_\_\_~О.~А.~Молчанов \\
					\invcommas{\_\_\_\_}~\_\_\_\_\_\_\_\_\_\_\_\_\_~\the\year~р. \\
					
				\end{tabular}
			\end{flushright}

			\vfill 
			
			\MakeUppercase{Завдання}

			на дипломну роботу студенту 

			\cmdThesis@Assigment@StudentName

		\end{center}

		1. Тема роботи \cmdThesis@Assigment@ThesisName 

		керівник роботи \cmdThesis@Assigment@AdvisorName,

		затверджені наказом по університету від \cmdThesis@Assigment@Order

		2. Строк подання студентом роботи: \cmdThesis@Assigment@ApplicationDate

		3. Вихідні дані до роботи: 

		\cmdThesis@Assigment@InputData

		4. Зміст розрахунково-пояснювальної записки (перелік завдань, які потрібно розробити):

		\cmdThesis@Assigment@Contents

		5. Перелік графічного матеріалу (з точним зазначенням обов'язкових креслень):

		\cmdThesis@Assigment@Graphics

		6. Консультанти розділів роботи:

		\addvspace{12pt}
		%\renewcommand{\arraystretch}{0.8}
		\begin{tabular}{|c|c|c|c|}
			\hline
			Розділ & Прізвище, ініціали та посада & \multicolumn{2}{c|}{Підпис, дата} \\ \cline{3-4}
			& консультанта & \parbox[t]{4em}{\centering{}завдання\\видав} & \parbox[t]{4em}{\centering{}завдання\\прийняв} \\
			%\hline
			%Матем. забезпечення & Терещенко І.О., асистент & & \\
			\hline
			Охорона праці & Луц~Т.~Є., ст. викладач & & \\
			\hline
			Нормоконтроль & Мальчиков~В.~В., ст. викладач & & \\
			\hline
		\end{tabular}

		\addvspace{12pt}

		7. Дата видачі завдання: \cmdThesis@Assigment@AssigmentDate
		
		\begin{center}
			Календарний план

			\addvspace{12pt}

			\begin{tabular}{|c|c|c|c|}
			\hline
			\No з/п & \parbox[t]{12em}{\centering{}Назва етапів виконання\\дипломної роботи} & \parbox[t]{10em}{\centering{}Строк виконання\\етапів роботи} & Примітка \\
			\hline
			\cmdThesis@Assigment@Calendar
			\hline
			\end{tabular}
			
		\end{center}
		
		\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}lrl}
		Студент &  \_\_\_\_\_\_\_\_\_\_\_\_\_ & \cmdThesis@Assigment@StudentPIB \\

		Керівник роботи & \_\_\_\_\_\_\_\_\_\_\_\_\_ & \cmdThesis@Assigment@AdvisorPIB \\
		\end{tabular*}

		\clearpage

		\pagestyle{plain}

		\setlength{\parindent}{1.25cm}
}
\makeatother