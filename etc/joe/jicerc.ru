
                         Инициализационный файл JOE
                                Joe для iceB

 JOE ищет этот файл в:
	1 - $HOME/.jicerc
	2 - /etc/joe/joerc

 Этот файл может включать другие файлы путем размещения с первой колонки
 команды вида:

 :include filename

 ПЕРВАЯ СЕКЦИЯ: Умолчания глобальных опций (эти опции также могут быть указаны
 в командной строке. Кроме того, опции NOXON, LINES, COLUMNS, DOPADDING и BAUD
 могут задаваться с помощью переменных среды):

 Перекрытие цветов лексических классов, определенных в синтаксических файлах:
 Поместите желаемый перекрывающий цвет в первую колонку.

 Допустимые цвета
   bold (яркость) inverse (инверсия) blink (мерцание) 
   dim (полуяркость) underline (подчеркивание)
   white (белый) cyan (бирюзовый) magenta (фиолетовый) blue (синий) 
   yellow (желтый) green (зеленый) red (красный) black (черный)
 для фона
   bg_white bg_cyan bg_magenta bg_blue bg_yellow bg_green bg_red bg_black

 Другие возможные цвета: см. syntax/c.jsf

 Установить цвет для всех случаев класса Idle:
   =Idle red

 Установить цвет Idle только для синтаксического файла языка С:
   =c.Idle red

 Следующий пример взят из c.jsf.  Примеры других классов - см. в остальных синтаксических файлах.

 =Idle
 =Bad        bold red
 =Preproc    blue
 =Define     bold blue
 =IncLocal   cyan
 =IncSystem  bold cyan
 =Constant   cyan
 =Escape     bold cyan
 =Type       bold
 =Keyword    bold
 =CppKeyword bold
 =Brace      magenta
 =Control

 Разместите опцию, которую хотите установить, начиная с первой колонки:

 -option	Установка опции
 --option	Сброс опции

 -help_is_utf8	Установить, если текст подсказки - в кодировке UTF-8.  Иначе будет считаться, что она -
		в обычной 8-битной кодировке.

 -mid		При скроллинге выполнять центрирование курсора

 -marking	Подсвечивать текст между началом блока и курсором 
                (используйте вместе с -lightoff)

-asis		Символы с кодами 128 - 255 показывать без преобразований

 -force		Принудительно устанавливать перевод строки в конце файла

 -nolocks	Если не желаете использовать блокировку файлов

 -nomodcheck	Запретить периодическую проверку - не стал ли файл на диске новее, чем в буфере.
		(при сохранении этот контроль все равно производится - даже несмотря на наличие
		данной опции).

 -nocurdir	Не вставлять текущую директорию в запрос файла

 -nobackups	Если не желаете, чтобы создавались резервные файлы

 -break_hardlinks
		Удалять файл перед записью, для разрыва жестких ссылок
		(but don't break symbolic links).

 -break_links
		Delete file before writing, to break hard links
		and symbolic links.

 -lightoff	Выключать подсветку после копирования или перемещения блока

 -exask		Запрашивать подтвеждение имени файла при выходе

-beep		Звякать в случае ошибки и при выходе курсора за границы

 -nosta		Запретить строку состояния

 -keepup	Часто изменять значение esc-последовательностей %k и %c
 		в строке состояния

 -pg nnn	Количество строк, оставляемых при PgUp/PgDn

 -undo_keep nnn	Количество последних изменений, запоминаемых для возможного "отката".
		0 - если запоминать без ограничений.

 -csmode	^KF после предыдущего поиска действует как ^L

 -backpath path
		Директория для сохранения резервных файлов (один пробел между 'backpath' и
		'path', без завергающих пробелов или комментариев после path).

 -floatmouse	Клик за концом строки переносит курсор за конец строки
 
 -rtbutton	Для выполнения действия использовать правую кнопку мыши вместо левой

-nonotice	Не выводить copyright

 -noxon		Выключить обработку ^S/^Q

 -orphan	Положить дополнительные файлы, указанные в ком.строке,
		в скрытые буфера, а не в окна

 -dopadding	Использовать символы заполнения при выводе
                (если не применяется никакой протокол управления потоком)

 -lines nnn	Установить кол-во строк на экране

-baud 19200	Установить скоросто обмена для оптимизации терминального вывода

 -columns nnn	Установить кол-во колонок на экране

 -help		Включать экран подсказки при запуске

 -skiptop nnn	Не использовать верхние nnn строк экрана

-notite         Не посылать строки инициализации и терминации терминала:
		предотвращает восстановление экрана при выходе.

 -usetabs       Использовать табуляторы для оптимизации экранного вывода

-assume_color	Предполагать, что терминал поддерживает цвет в стандарте ANSI,
		даже если это не указано в описании termcap/terminfo.

-assume_256color
		Предполагать, что терминал поддерживает 256 цветов в стиле xterm 
		(ESC [ 38 ; 5 ; NNN m и ESC [ 48 ; 5 ; NNN m).

-guess_non_utf8	Allow guess of non-UTF-8 file encoding in a UTF-8 locale.

 -guess_utf8	Allow guess of UTF-8 file encoding in non-UTF-8 locale.

-guess_crlf     Автоопределять файлы MS-DOS и соотв. устанавливать -crlf

-guess_indent	Угадывать символы для отступа (табулятор или пробел).

-menu_explorer  Оставаться в меню при выборе директории (в противном случае 
                директория дописывается к пути и меню закрывается).

-menu_above	Если разрешено - меню/списки будут располагаться над строкой запроса.
		Иначе - под ней.

-transpose	Перемещать строки с колонками во всех меню.

 -menu_jump	Перемещаться по меню выбора файла по нажатию клавиши Tab (иначе 
		меню появляется, но курсор остается на запросе имени файла).

 -icase         Поиск регистронезависим по умолчанию.

 -wrap          Циклический поиск.

 -autoswap	При необходимости менять местами метки начала и конца блока

-joe_state     Использовать файл сохранения состояния ~/.joe_state

-mouse		Включить поддержку мыши в xterm. При этом нажатие левой кнопки мыши
		будет перемещать курсор, ее нажатие-оттягивание - отмечать блок.
		Для выполнения стандартного в xterm запоминания в буфер и
		извлечения из него - прижмите клавишу Shift.

 -joexterm	Если вы используете Xterm, модифицированный для Joe - это 
		делает режим -mouse более удобным (запоминание/извлечение
		будет выполняться прозрачно).

 -square	Режим прямоугольных блоков

 -text_color color
		Установить цвет для текста.
 -status_color color
		Установить цвет для строки состояния.
 -help_color color
		Установить цвет для подсказки.
 -menu_color color
		Установить цвет для меню.
 -prompt_color color
		Установить цвет для запросов.
 -msg_color color
		Установить цвет для сообщений.

		Например: -text_color bg_blue+white
		Устанавливает голубой фон и белый цвет переднего плана.

-restore	Восстанавливать предыдущую позицию курсора при открытии файлов.

-search_prompting
		Запрашивать образец для последующих поисков.

 Строка определения строки состояния. -lmsg определяет часть, выровненную 
 влево, а -rmsg - вправо. Первый символ строки -rmsg - символ для заполнения 
 фона. В строках могут использоваться следующие управляющие последовательности:

  %t  время в 12-часовом формате
  %u  время в 24-часовом формате
  %T  O при режиме замещения, I при режиме вставки
  %W  W если разрешен перенос слов
  %I  A если разрешен автоотступ
  %X  Индикатор режима прямоугольных блоков
  %n  Имя файла
  %m  '(Изменено)' если файл был изменен
  %*  '*' если файл был изменен
  %R  Индикатор режима "только чтение"
  %r  Номер строки
  %c  Номер колонки
  %o  Байтовое смещение в файле
  %O  Байтовое смещение в файле в шестнадцатиричном виде
  %a  Код символа над курсором
  %A  Код символа над курсором в шестнадцатиричном виде
  %p  Процент файла в позиции курсора
  %l  Кол-во строк в файле
  %k  Введенный символ-префикс
  %S  '*SHELL*' если в окне выполняется шелл
  %M  Сообщение о записи макро
  %y  Синтаксис
  %x  Context (first non-indented line going backwards)

 Также можно использовать следующие коды:
 
  \i  Инверсия
  \u  Подчеркивание
  \b  Повышенная яркость
  \d  Пониженная яркость
  \f  Мерцание

-lmsg \i%k%T%W%I%X %n %m%y%R %M %x
-rmsg  %S Стр %r Поз %c %t  Подсказка - по F1

 ВТОРАЯ СЕКЦИЯ: Установка локальных опций в зависимости от имени файла:

 Каждая строка с символом '*' в первой колонке предваряет список режимов,
 которые должны устанавливаться для файлов, имена которых соответствуют 
 данному регулярному выражению. Если имя файла соответствует более чем одному 
 регулярному выражению - выбирается последнее из подходящих.

 Регулярное выражение содержимого файла также может указываться в отдельной
 строке, начинающейся с '+regex'. Если используется такое регулярное 
 выражение, то для того, чтобы указанные опции применялись к файлу -
 он должен соответствовать обоим регулярным выражениям: и имени файла, 
 и содержимого.

 Вы можете установить следующие опции:

	-cpara >#!;*/%
				Characters which can indent paragraphs.

	-encoding name
				Установить кодировку файла (например: utf-8, iso-8859-15)

	-syntax name
				Определить синтаксис (будет загружен файл
				синтаксиса 'name.jsf')

	-hex			Режим 16ричного редактирования

	-highlight		Разрешить подсветку

	-smarthome		Клавиша Home сначала перемещает курсор в
				начало строки, а при повторном нажатии -
				на первый непробельный символ

	-indentfirst		При включенном режиме smarthome клавиша Home 
				сначала перемещает курсор на первый 
				непробельный символ строки, а не в ее начало

	-smartbacks		Клавиша Backspace удаляет 'istep' символов
				заполнения отступа 'indentc', если курсор 
				находится на первом непробельном символе.

	-tab nnn		Ширина табуляции

	-indentc nnn		Символ заполнения отступа (32 - пробел, 
				9 - tab)

	-istep nnn		Количество колонок отступа

	-spaces			TAB вставляет пробелы, а не табуляторы.

	-purify			Исправлять отступы если необходимо 
				(например, если в отступе имеются и пробелы, 
				и табуляторы, а indentc - пробел, то отступ 
				будет преобразован в пробелы).

	-crlf			В качестве конца строки используется  CR-LF

	-wordwrap		Перенос слов 

	-autoindent		Автоотступ

	-overwrite		Режим замещения

        -picture                Режим картины (стрелка вправо может уходить
        			за конец строки)

	-lmargin nnn		Левая граница

	-rmargin nnn		Правая граница

	-flowed			Put one space after intermediate paragraph lines
				for support of flowed text.


	-french			Один пробел после '.', '?' and '!' при 
				переносе слов и форматировании абзацев вместо 
				двух. Joe не изменяет вашего стиля расстановки
				пробелов, но иногда должен вставлять пробелы
				сам. Этим ключом выбирается - сколько пробелов
				ему следует вставлять.

	-linums			Включить нумерацию строк

	-rdonly			Файл можно только читать

	-keymap name
				Раскладка клавиатуры, если не 'main'

	-lmsg			Определение строки состояния - более подробно
	-rmsg			см. предыдущую секцию.

	-mfirst macro
				Макро, выполняемое при первой модификации файла
	-mnew macro
				Макро, выполняемое при загрузке нового файла
	-mold macro
				Макро, выполняемое при загрузке существующего файла
	-msnew macro
				Макро, выполняемое при сохранении нового файла
	-msold macro
				Макро, выполняемое при сохранении существующего файла

        Макросы, используемые в приведенных выше опциях, описываются
        так же, как и раскладки клавиатуры в последующем разделе, 
        но без строк имен клавиш.

	These define the language syntax for ^G (goto matching delimiter):

	-single_quoted		Текст внутри '  ' следует игнорировать (это не
				очень хорошо для обычного текста, т.к. ' в нем
				может использоваться в качестве апострофа)

	-c_comment		Текст внутри /* */ следует игнороировать

	-cpp_comment		Текст после // следует игнорировать

	-pound_comment		Текст после # следует игнорировать

	-vhdl_comment		Текст после -- следует игнорировать

	-semi_comment		Текст после ; следует игнорировать

	-text_delimiters begin=end:if=elif=else=endif

				Определяет слова-ограничители

 Локальные опции по умолчанию
-highlight
-istep 2


 Используйте это макро (поместите в первую колонку) чтобы заставить joe вызывать 
 команду "p4 edit" для измененного файла.

 -mfirst if,"rdonly && joe(sys,\"p4 edit \",name,rtn)",then,mode,"o",msg,"executed \"p4 edit ",name,"\"",rtn,endif

 Таблица типов файлов теперь находится в отдельном файле. Вы можете скопировать его в ~/.joe и настроить.

:include ftyperc

 SECOND and 1/2 SECTION: Option menu layout

	:defmenu name	Defines a menu.

	macro string comment
			A menu entry.  Macro is any JOE macro- see "Macros:"
			below. String is the label to be used for the macro
			in the menu.  It is in the same format as the -lmsg
			and -rmsg options above.

			Two whitespace characters in a row begins a comment.
			Use '% ' for a leading space in the string.

:defmenu root
mode,"overwrite",rtn	T Overtype %Zoverwrite%
mode,"hex",rtn	% % Hex edit mode
mode,"autoindent",rtn	I Autoindent %Zautoindent%
mode,"wordwrap",rtn	W Word wrap %Zwordwrap%
mode,"tab",rtn	D Tab width %Ztab%
mode,"lmargin",rtn	L Left margin %Zlmargin%
mode,"rmargin",rtn	R Right margin %Zrmargin%
mode,"square",rtn	X Rectangle mode %Zsquare%
mode,"indentc",rtn	% % Indent char %Zindentc%
mode,"istep",rtn	% % Indent step %Zistep%
mode,"highlight",rtn	H Highlighting %Zhighlight%
mode,"crlf",rtn	Z CR-LF (MS-DOS) %Zcrlf%
mode,"linums",rtn	N Line numbers %Zlinums%
mode,"beep",rtn	B Beep %Zbeep%
mode,"rdonly",rtn	O Read only %Zrdonly%
mode,"syntax",rtn	Y Syntax
mode,"encoding",rtn	E Encoding
mode,"asis",rtn	% % Meta chars as-is
mode,"language",rtn	V Language
mode,"picture",rtn	P picture %Zpicture%
menu,"more-options",rtn	  % % More options...

:defmenu more-options
menu,"^G",rtn	% % ^G options
menu,"search",rtn	% % search options
menu,"paragraph",rtn	% % paragraph options
menu,"file",rtn	% % file options
menu,"menu",rtn	% % menu options
menu,"global",rtn	% % global options
menu,"cursor",rtn	% % cursor options
menu,"marking",rtn	% % marking options
menu,"tab",rtn	% % tab/indent options

:defmenu menu
mode,"menu_explorer",rtn	% % Menu explorer %Zmenu_explorer%
mode,"menu_above",rtn	% % Menu position %Zmenu_above%
mode,"menu_jump",rtn	% % Jump into menu %Zmenu_jump%
mode,"transpose",rtn	% % Transpose menus %Ztranspose%

:defmenu ^G
mode,"single_quoted",rtn	% % ^G ignores '...' %Zsingle_quoted%
mode,"no_double_quoted",rtn	% % ^G no ignore "..." %Zno_double_quoted%
mode,"c_comment",rtn	% % ^G ignores /*...*/ %Zc_comment%
mode,"cpp_comment",rtn	% % ^G ignores //... %Zcpp_comment%
mode,"pound_comment",rtn	% % ^G ignores #... %Zpound_comment%
mode,"vhdl_comment",rtn	% % ^G ignores --... %Zvhdl_comment%
mode,"semi_comment",rtn	% % ^G ignores ;... %Zsemi_comment%
mode,"tex_comment",rtn % % ^G ignores %... %Ztex_comment%
mode,"text_delimiters",rtn % % Text delimiters %Ztext_delimiters%

:defmenu search
mode,"icase",rtn	% % Case insensitivity %Zicase%
mode,"wrap",rtn	% % Search wraps %Zwrap%
mode,"search_prompting",rtn	% % Search prompting %Zsearch_prompting%
mode,"csmode",rtn	% % Continued search %Zcsmode%

:defmenu paragraph
mode,"french",rtn	% % French spacing %Zfrench%
mode,"flowed",rtn	% % Flowed text %Zflowed%
mode,"cpara",rtn	% % Paragraph indent chars %Zcpara%

:defmenu file
mode,"restore",rtn	% % Restore cursor %Zrestore%
mode,"guess_crlf",rtn	% % Auto detect CR-LF %Zguess_crlf%
mode,"guess_indent",rtn	% % Guess indent %Zguess_indent%
mode,"guess_non_utf8",rtn	% % Guess non-UTF-8 %Zguess_non_utf8%
mode,"guess_utf8",rtn	% % Guess UTF-8 %Zguess_utf8%
mode,"force",rtn	% % Force last NL %Zforce%
mode,"nobackup",rtn	% % No backup %Znobackup%

:defmenu global
mode,"nolocks",rtn	% % Disable locks %Znolocks%
mode,"nobackups",rtn	% % Disable backups %Znobackups%
mode,"nomodcheck",rtn	% % Disable mtime check %Znomodcheck%
mode,"nocurdir",rtn	% % Disable current dir %Znocurdir%
mode,"exask",rtn	% % Exit ask %Zexask%
mode,"nosta",rtn	% % Disable status line %Znosta%
mode,"keepup",rtn	% % Fast status line %Zkeepup%
mode,"break_hardlinks",rtn	% % Break hard links %Zbreak_hardlinks%
mode,"break_links",rtn	% % Break links %Zbreak_links%
mode,"joe_state",rtn	% % Joe_state file %Zjoe_state%
mode,"undo_keep",rtn	% % No. undo records %Zundo_keep%
mode,"backpath",rtn	% % Path to backup files %Zbackpath%

:defmenu cursor
mode,"pg",rtn	% % No. PgUp/PgDn lines %Zpg%
mode,"mid",rtn	C Center on scroll %Zmid%
mode,"floatmouse",rtn	% % Click past end %Zfloatmouse%
mode,"rtbutton",rtn	% % Right button %Zrtbutton%

:defmenu marking
mode,"autoswap",rtn	% % Autoswap mode %Zautoswap%
mode,"marking",rtn	% % Marking %Zmarking%
mode,"lightoff",rtn	% % Auto unmask %Zlightoff%

:defmenu tab
mode,"smarthome",rtn	% % Smart home key %Zsmarthome%
mode,"smartbacks",rtn	% % Smart backspace %Zsmartbacks%
mode,"indentfirst",rtn	% % To indent first %Zindentfirst%
mode,"purify",rtn	% % Clean up indents %Zpurify%
mode,"spaces",rtn	% % No tabs %Zspaces%

 ТРЕТЬЯ СЕКЦИЯ: Экраны подсказки:

 Используйте \i для вкл/выкл инверсии
 Используйте \u для вкл/выкл подчеркивания
 Используйте \b для вкл/выкл повышенной яркости
 Используйте \d для вкл/выкл пониженной яркости
 Используйте \f для вкл/выкл мерцания
 Используйте \| для вставки пружинки: все пружинки в строке устанавливаются 
 на одинаковую ширину, чтобы строка растягивалась на всю ширину экрана (если
 кратность не получается и остается N пробелов, то каждая из N пружинок справа
 дополняется еще одним пробелом). Совет: если требуется вертикальное 
 выравнивание - в каждой строке должно быть одинаковое количество пружинок.

 Используйте глобальную опцию '-help_is_utf8' чтобы разрешить UTF-8 в тексте
 подсказки. Иначе предполагается локальная 8-битная кодировка.

{Basic
\i   Окно ПОДСКАЗКИ - \|выключить по F1    след.экран -  ^N                        \i
\i \i\|\uПЕРЕХОДЫ\u         \|\uПЕРЕХОДЫ\u         \|\uБЛОКИ\u      \|\uУДАЛЕНИЕ\u \|\uПРОЧЕЕ\u       \|\uВЫХОД\u     \|\i \i
\i \i\|^B left ^F right \|^U  prev. screen \|^KB begin  \|^D char. \|^KJ reformat \|^KX save  \|\i \i
\i \i\|\b^Z\b пред. слово  \|\bPgUp\b пред. экран \|\bF3\b  начало  \|\bDel\b симв.\|\b^KJ\b формат   \|\bF10\b сохр. \|\i \i
\i \i\|\b^X\b след. слово  \|\bPgDn\b след. экран \|\bS/F3\b конец  \|\b^Y\b стр.   \|\b^T\b режимы   \|\b^C\b  прерв.\|\i \i
\i \i\|                \|\bHome\b нач. строки \|\bF6\b  перенос \|\b^W\b >слово \|\b^R\b перерис. \|\b^KZ\b shell \|\i \i
\i \i\|                \|\bEnd\b  кон. строки \|\bF5\b  копир.  \|\b^O\b слово< \|\b^@\b вставка  \|\uФАЙЛ\u      \|\i \i
\i \i\|\uПОИСК\u           \|\bF2\b  начало файла \|\bS/F5\b в файл \|\b^J\b >стр.  \|\uSPELL\u     \|\b^KE\b   новый \|\i \i
\i \i\|\bS/F7\b по образцу \|\bS/F2\b конец файла \|\bS/F6\b удал.  \|\b^_\b отмен. \|\b^[N\b слова \|\b^KR\b   читать\|\i \i
\i \i\|\bF7\b   следующий  \|\b^L\b на строку No. \|\b^K/\b фильтр  \|\b^^\b не отм \|\b^[L\b файла \|\bS/F10\b писать\|\i \i
}

{Windows
\i   Окно ПОДСКАЗКИ - \|выключить по F1    пред.экран - ^P     след. экран ^N      \i
\i \i\b\|^KO\b Разрезать окно пополам             \|\b^KE\b Загрузить файл в окно             \|\i \i
\i \i\b\|^KG\b Увеличить текущее окно             \|\b^KT\b Уменьшить текущее окно            \|\i \i
\i \i\b\|^KN\b Перейти в нижнее окно              \|\b^KP\b Перейти в верхнее окно            \|\i \i
\i \i\b\|^C\b  Удалить текущее окно               \|\b^KI\b Показать все окна / одно окно     \|\i \i
}

{Advanced
\i   Окно ПОДСКАЗКИ - \|выключить по F1    пред.экран - ^P     след. экран ^N      \i
\i \i\|\uМАКРО\u          \|\uПРОЧЕЕ\u          \|\uПРОКРУТКА\u \|\uSHELL\u       \|\uGOTO\u       \|\uI-SEARCH\u     \|\i \i
\i \i\b\|^K[ 0-9\b Начало \|\b^K\b ПРБЛ статус  \|\b^[W\b Вверх \|\b^K'\b В окне  \|\b^[B\b To ^KB \|\b^[R\b Назад    \|\i \i
\i \i\b\|^K]\b     Конец  \|\b^K\\\b Повтор      \|\b^[Z\b Вниз  \|\b^[!\b Команда \|\b^[K\b To ^KK \|\b^[S\b Вперед   \|\i \i
\i \i\b\|^K 0-9\b  Выполн.\|\b^[M\b Калькулятор \|\b^K<\b Влево \|\uQUOTE\u       \|\uУДАЛЕНИЕ\u   \|\uМЕТКИ\u        \|\i \i
\i \i\b\|^K?\b     Query  \|\b^KA\b Центриров.  \|\b^K>\b Вправо\|\b`\b  Ctrl-    \|\b^[Y\b отмена \|\b^[ 0-9\b Goto  \|\i \i
\i \i\b\|^[D\b     Дамп   \|\b^[H\b Сообщение   \|          \|\b^\\\b Meta-    \|\b^[O\b стр.<  \|\b^[^[\b Установ.\i \|\i
}

{Programs
\i   Окно ПОДСКАЗКИ - \|выключить по F1    пред.экран - ^P     след. экран ^N      \i
\i \i\|\uПЕРЕХОДЫ\u             \|\uСДВИГ\u      \|\uCOMPILING\u                                    \|\i \i
\i \i\b\|^G\b  К соотв. ( [ {   \|\b^K,\b влево  \|\b^[C\b Compile and parse errors                 \|\i \i
\i \i\b\|^K-\b На прежнее место \|\b^K.\b вправо \|\b^[E\b Parse errors                             \|\i \i
\i \i\b\|^K=\b На след. место       \|       \|\b^[=\b To next error                            \|\i \i
\i \i\b\|^K;\b Поиск файла тагов    \|       \|\b^[-\b To prev. error                           \|\i \i
}

{Search
\i   Окно ПОДСКАЗКИ - \|выключить по F1    пред.экран - ^P     след. экран ^N      \i
\i \iСпециальные последовательности поиска:                                       \|\i \i
\i \i    \b\\^  \\$\b  начало/конец строки          \b\\?\b     любой одиночный символ       \|\i \i
\i \i    \b\\<  \\>\b  начало/конец слова           \b\\*\b     0 или более символов         \|\i \i
\i \i    \b\\c\b     сбалансированное выражение C  \b\\\\\b     символ \\                     \|\i \i
\i \i    \b\\[..]\b  один из элементов множества   \b\\n\b     перевод строки               \|\i \i
\i \i    \b\\+\b     0 или более символов, следующих за \\+                             \|\i \i
\i \iСпециальные последовательности замещения:                                    \|\i \i
\i \i    \b\\&\b     замещать текстом, соответствующим строке поиска                   \|\i \i
\i \i    \b\\0 - 9\b замещать текстом, соотв. n-ному  \b\\*\b, \b\\?\b, \b\\c\b, \b\\+\b, или \b\\[..]\b        \|\i \i
\i \i    \b\\\\\b     замещать символом \\           \b\\n\b     замещать переводом строки    \|\i \i
}

{SearchOptions
\i   Help Screen    \|turn off with ^KH    prev. screen ^[,    next screen ^[.     \i
\i \iSearch options:                                                              \|\i \i
\i \i   r Replace                                                                 \|\i \i
\i \i   k Restrict search to highlighted block, which can be rectangular          \|\i \i
\i \i   b Search backward instead of forward                                      \|\i \i
\i \i   i Ignore case                                                             \|\i \i
\i \i   a Search across all loaded files                                          \|\i \i
\i \i   e Search across all files in Grep or Compile error list                   \|\i \i
\i \i   w Wrap to beginning of file for this search                               \|\i \i
\i \i   n Do not wrap to beginning of file for this search                        \|\i \i
\i \i   nnn Perform exaclty nnn replacements                                      \|\i \i
}

{Math
\i   Help Screen    \|turn off with ^KH    prev. screen ^[,    next screen ^[.     \i
\i \i \uCOMMANDS\u (hit ESC m for math)  \uFUNCTIONS\u                                    \|\i \i
\i \i     hex hex display mode       sin cos tab asin acos atan                   \|\i \i
\i \i     dec decimal mode           sinh cosh tanh asinh acosh atanh             \|\i \i
\i \i     ins type result into file  sqrt cbrt exp ln log                         \|\i \i
\i \i    eval evaluate block         int floor ceil abs erg ergc                  \|\i \i
\i \i    0xff enter number in hex    joe(..macro..) - runs an editor macro        \|\i \i
\i \i    3e-4 floating point decimal \uBLOCK\u                                        \|\i \i
\i \i    a=10 assign a variable      sum cnt  Sum, count                          \|\i \i
\i \i 2+3:ins multiple commands      avg dev  Average, std. deviation             \|\i \i
\i \i    e pi constants              \uOPERATORS\u                                    \|\i \i
\i \i     ans previous result        ! ^  * / %  + -  < <= > >= == !=  &&  ||  ? :\|\i \i
}

{Names
\i   Окно ПОДСКАЗКИ - \|выключить по F1    пред.экран - ^P     след. экран ^N      \i
\i \i Нажмите TAB на запрос имени файла для генерации меню имен файлов            \|\i \i
\i \i Или используйте клавиши вверх/вниз для выбора из ранее вводившихся имен     \|\i \i
\i \i Специальные имена файлов:                                                   \|\i \i
\i \i      !command                 Канал в/из команды шелла                      \|\i \i
\i \i      >>filename               Добавлять к файлу                             \|\i \i
\i \i      -                        Читать/Писать в/из стандартного входа/выхода  \|\i \i
\i \i      filename,START,SIZE      Читать/Писать часть файла/устройства          \|\i \i
\i \i          Задайте START/SIZE в 10-ном (255), 8-ном (0377) или 16-ном (0xFF)  \|\i \i
}

{Joe
\i   Окно ПОДСКАЗКИ - \|выключить по F1    пред.экран - ^P     след. экран ^N      \i
\i \i Send bug reports to: http://sourceforge.net/projects/joe-editor             \|\i \i
\i \i \|\i \i
\i \i  default joerc file is here /etc/joe/joerc \|\i \i
\i \i  default syntax and i18n files are here /usr/share/joe \|\i \i
\i \i  additional documentation can be found here /usr/share/doc/packages/joe \|\i \i
}

{CharTable
\i   Help Screen    \|turn off with F1     prev. screen ^P                         \i
\i \i\| Dec  \u 0123 4567  8901 2345    0123 4567  8901 2345 \u  Dec \|\i \i
\i \i\|     |                                              |     \|\i \i
\i \i\|   0 | \u@ABC\u \uDEFG\u  \uHIJK\u \uLMNO\u    \i\u@ABC\u\i \i\uDEFG\u\i  \i\uHIJK\u\i \i\uLMNO\u\i | 128 \|\i \i
\i \i\|  16 | \uPQRS\u \uTUVW\u  \uXYZ[\u \u\\]^_\u    \i\uPQRS\u\i \i\uTUVW\u\i  \i\uXYZ[\u\i \i\u\\]^_\u\i | 144 \|\i \i
\i \i\|  32 |  !"# $%&'  ()*+ ,-./    ═║╒ё ╓╔╕╖  ╗╘╙╚ ╛╜╝╞ | 160 \|\i \i
\i \i\|  48 | 0123 4567  89:; <=>?    ╟╠╡Ё ╢╣╤╥  ╦╧╨╩ ╪╫╬© | 176 \|\i \i
\i \i\|  64 | @ABC DEFG  HIJK LMNO    юабц дефг  хийк лмно | 192 \|\i \i
\i \i\|  80 | PQRS TUVW  XYZ[ \\]^_    пярс тужв  ьызш эщчъ | 208 \|\i \i
\i \i\|  96 | `abc defg  hijk lmno    ЮАБЦ ДЕФГ  ХИЙК ЛМНО | 224 \|\i \i
\i \i\| 112 | pqrs tuvw  xyz{ |}~    ПЯРС ТУЖВ  ЬЫЗШ ЭЩЧЪ | 240 \|\i \i
}

 ЧЕТВЕРТАЯ СЕКЦИЯ: Раскладки клавиатуры:

 Вы должны описать секции со следующими именами:

	:main		Для окна редактирования
	:prompt		Для строк запросов
	:query		For single-character query lines
	:querya		Singe-character query for quote
	:querysr	Search & Replace single-character query

 Прочие секции также могут быть определены для организационных целей или
 для использования с ключом '-keymap'.

 Используйте:
 :inherit name		Для копирования секции name в текущую
 :delete key		Удалить клавишу из текущей секции

 Клавиши:

 Используйте ^@ - ^_, ^# и ^? для обозначения управляющих символов
 Используйте SP для обозначения пробела
 Используйте TO b для генерации диапазона символов
 Используйте MDOWN, MDRAG, MUP, M2DOWN, M2DRAG, M2UP, M3DOWN, M3DRAG, M3UP для мыши
 Используйте MWDOWN, MWUP для колеса мыши

 Вы также можете использовать имена описания termcap.  Например:

	.ku		Стрелка вверх
	.kd		Стрелка вниз
	.kl		Стрелка влево
	.kr		Стрелка вправо
	.kh		Home
	.kH		End
	.kI		Insert
	.kD		Delete
	.kP		PgUp
	.kN		PgDn
	.k1 - .k9	F1 - F9
	.k0		F0 или F10
	.k;		F10

 Макросы:

 Простой макрос может быть определен двумя или более именами команд,
 разделенными запятыми. Например:

 eof,bol	^T Z		Перейти в начало следующей строки

 Also quoted matter is typed in literally:

 bol,">",dnarw	.k1		Quote news article line

 Макрос может переноситься на следующую строку, если заканчивается запятой

 Команды или именованные макросы могут быть созданы с помощью :def.  
 Например, вы можете указать:

 :def foo eof,bol

 для определения команды foo, которая будет выполнять переход 
 к началу следующей строки.

:windows		Общие клавиши для всех окон
type		^@ TO Ъ		Напечатать символ
abort		^C		Аварийное прерывание
abort		^K Q
abort		^K ^Q
abort		^K q
arg		^K \		Повтор следующей команды 
explode		^K I		Показывать все окна или только одно
explode		^K ^I
explode		^K i
help		.k1
help		.k8
help		.k9
help		.F1
help		.F4
help		.F8
help		.F9
help		.FB
help		.FC
help		^K H		Подсказка
help		^K ^H
help		^K h
hnext		^N		Следующая страница подсказки
hprev		^P  		Предыдущая страница подсказки
math		^[ m		Калькулятор
math		^[ M		Калькулятор
math		^[ ^M		Калькулятор
msg		^[ h		Вывод сообщения
msg		^[ H		Вывод сообщения
msg		^[ ^H		Вывод сообщения
nextw		^K N		На следующее окно
nextw		^K ^N
nextw		^K n
nextw		^[ [ 1 ; 3 C	правый Alt в (новом) xterm
nextw		^[ [ 3 C	правый Alt в gnome-terminal
pgdn		.kN		На экран вниз
pgdn		^V
 pgdn      ^# S
pgup		.kP		На экран вверх
pgup		^U
 pgup      ^# T
play		^K 0 TO 9	Выполнить макро
prevw		^K P		На следующее окно
prevw		^K ^P
prevw		^K p
prevw		^[ [ 1 ; 3 D	Левый Alt в (новом) xterm
prevw		^[ [ 3 D	Левый Alt в gnome-terminal
query		^K ?		Macro query insert
record		^K [		Записать макро
retype		^R		Перерисовка экрана
rtn		^M		Перевод строки
shell		^K Z		Выход в шелл
shell		^K ^Z
shell		^K z
stop		^K ]		Конец записи макро
 Управление мышью
defmdown	MDOWN		Переместить курсор в позицию мыши
defmup		MUP
defmdrag	MDRAG		Отметить последовательность символов
defm2down	M2DOWN		Отметить слово в позиции мыши
defm2up		M2UP
defm2drag	M2DRAG		Отметить последовательность слов
defm3down	M3DOWN		Отметить строку в позиции мыши
defm3up		M3UP
defm3drag	M3DRAG		Отметить последовательность строк

xtmouse		^[ [ M		Начало обработки событий мыши в xterm

if,"char==65",then,"it's an A",else,"it's not an a",endif	^[ q

:main			Окно редактирования текста
:inherit windows

 Макросы проверки грамматических ошибок

 Ispell
:def ispellfile filt,"cat >ispell.tmp;ispell ispell.tmp </dev/tty >/dev/tty;cat ispell.tmp;/bin/rm ispell.tmp",rtn,retype
:def ispellword psh,nextword,markk,prevword,markb,filt,"cat >ispell.tmp;ispell ispell.tmp </dev/tty >/dev/tty;tr -d <ispell.tmp '\\012';/bin/rm ispell.tmp",rtn,retype,nextword

 Aspell
:def aspellfile filt,"SPLTMP=`mktemp -t joespell.XXXXXXXXXX`;cat >$SPLTMP;aspell -x -c $SPLTMP </dev/tty >/dev/tty;cat $SPLTMP;/bin/rm $SPLTMP",rtn,retype
:def aspellword psh,nextword,markk,prevword,markb,filt,"SPLTMP=`mktemp -t joespell.XXXXXXXXXX`;cat >$SPLTMP;aspell -x -c $SPLTMP </dev/tty >/dev/tty;tr -d <$SPLTMP '\\012';/bin/rm $SPLTMP",rtn,retype,nextword

ispellfile	^[ l
ispellword	^[ n

 Compile

:def compile querysave,query,scratch,"* Build Log *",rtn,bof,markb,eof," ",markk,blkdel,build

 Grep

:def grep_find scratch,"* Grep Log *",rtn,bof,markb,eof," ",markk,blkdel,grep

paste			^[ [ 2 0 2 ~		Bracketed paste
rtarw,ltarw,begin_marking,rtarw,toggle_marking	^[ [ 1 ; 5 C    Mark right Xterm
rtarw,ltarw,begin_marking,rtarw,toggle_marking	^[ [ 5 C        Mark right Gnome-terminal
 rtarw,ltarw,begin_marking,rtarw,toggle_marking	^[ O C		Mark right Putty Ctrl-rtarw
rtarw,ltarw,begin_marking,rtarw,toggle_marking	^[ O c		Mark right RxVT Ctrl-rtarw
ltarw,rtarw,begin_marking,ltarw,toggle_marking	^[ [ 1 ; 5 D    Mark left
ltarw,rtarw,begin_marking,ltarw,toggle_marking	^[ [ 5 D        Mark left
 ltarw,rtarw,begin_marking,ltarw,toggle_marking	^[ O D		Mark left Putty Ctrl-ltarw
ltarw,rtarw,begin_marking,ltarw,toggle_marking	^[ O d		Mark left RxVT Ctrl-ltarw

uparw,dnarw,begin_marking,uparw,toggle_marking	^[ [ 1 ; 5 A    Mark up
uparw,dnarw,begin_marking,uparw,toggle_marking	^[ [ 5 A        Mark up
 uparw,dnarw,begin_marking,uparw,toggle_marking	^[ O A		Mark up Putty Ctrl-uparw
uparw,dnarw,begin_marking,uparw,toggle_marking	^[ O a		Mark up RxVT Ctrl-uparw

dnarw,uparw,begin_marking,dnarw,toggle_marking	^[ [ 1 ; 5 B    Mark down
dnarw,uparw,begin_marking,dnarw,toggle_marking	^[ [ 5 B        Mark down
 dnarw,uparw,begin_marking,dnarw,toggle_marking	^[ O B		Mark down Putty Ctrl-dnarw
dnarw,uparw,begin_marking,dnarw,toggle_marking	^[ O b		Mark down RxVT Ctrl-dnarw

 Дополнительные функции, которые в действительности не являются 
 частью пользовательского интерфейса JOE:

delbol		^[ o		Удалить до начала строки
delbol		^[ ^O		
dnslide		^[ z		Скролл вниз на одну строку
dnslide		^[ Z		Scroll down one line
dnslide		^[ ^Z		Scroll down one line
dnslide,dnslide,dnslide,dnslide		MWDOWN
compile		^[ c		Compile
compile		^[ ^C		Compile
compile		^[ C
grep_find	^[ g		Grep
grep_find	^[ G		Grep
grep_find	^[ ^G		Grep
execmd		^[ x		Запросить команду для выполнения
execmd		^[ X		
execmd		^[ ^X		
jump		^[ SP
finish		^[ ^I		Complete word in document
finish		^[ ^M		Complete word: used to be math
isrch		^[ s		Инкрементальный поиск вперед
isrch		^[ S		
isrch		^[ ^S		
notmod		^[ ~		Not modified
nxterr		^[ =		К следующей ошибке
parserr		^[ e		Разобрать ошибки в текущем буфере
parserr		^[ E		
parserr		^[ ^E		
prverr		^[ -		К предыдущей ошибке
rsrch		^[ r		Инкрементальный поиск назад
rsrch		^[ R		
rsrch		^[ ^R		
run		^[ !		Выполнить программу в окне
tomarkb		^[ b		К началу блока
tomarkb		^[ ^B		
tomarkk		^[ k		В конец блока
tomarkk		^[ ^K		
tomarkk		^[ K		
txt		^[ i		Запросит текст и вставить его
txt		^[ I		
upslide		^[ w		Скролл вверх на одну строку
upslide		^[ ^W		
upslide		^[ W		
upslide,upslide,upslide,upslide		MWUP
yank		^[ y		Отменить удаление текста
yankpop		^[ ^Y		
yank		^[ Y		


 toggle_marking	^@		Ctrl-space block selection method
insc		^@		Ctrl-space used to insert a space

 bufed		^[ d		Меню буферов
 pbuf		^[ .		Следующий буфер
 nbuf		^[ ,		Предыдущий буфер
nbuf		^[ v		Следующий буфер
nbuf		^[ V		Следующий буфер
nbuf		^[ ^V		Следующий буфер
pbuf		^[ u		Предыдущий буфер
pbuf		^[ U		Предыдущий буфер
pbuf		^[ ^U		Предыдущий буфер
 query		^[ q		Quoted insert
 byte		^[ n		Перейти на байт
 col		^[ c		Перейти в позицию
 abortbuf	^[ k		Kill current buffer- don't mess with windows
 ask		^[ a		Запрос на сохранение текущего буфера
 bop		^[ p		На абзац назад
 bos		^[ x		В конец экрана
 copy		^[ ^W		Copy block into yank
 dupw		^[ \		Разрезать окно
 eop		^[ n		Вперед на абзац
 format		^[ j		Форматировать абзац, игнорируя блок
 markl		^[ l		Отметить строку
 nmark		^[ @		Выключить отметку
 pop		^[ >		Сдвинуть блок вперед
 psh		^[ <		Сдвинуть блок 
 swap		^[ x		Поменять местами начало отметки блока и курсор
 tomarkbk	^[ g		Переходить в начало и в конец блока
 tos		^[ e		В начало экрана
 tw0		^[ 0		Убить текущее окно (скрытый буфер)
 tw1		^[ 1		Убить все другие окна (скрытые буфера)
 uarg		^[ u		Универсальный аргумент
 yank		^[ ^Y		Undelete previous text
 yapp		^[ w		Append next delete to previous yank

 Стандартный пользовательский интерфейс JOE

quote8		^\		Ввести метасимвол
quote		`		Ввести управляющий символ

backs		^?		Backspace
backs		^H
backw		^O		Удалить слово назад
bknd		^K '		Окно шелла
blkcpy		.k5 		Копировать блок
blkcpy		^K C		
blkcpy		^K ^C
blkcpy		^K c
blkdel		.f6 		Удалить блок
blkdel		.F6 		
blkdel		^K Y		
blkdel		^K ^Y
blkdel		^K y
blkmove		^K M		Переместить блок
blkmove		.k6 		
blkmove		^K ^M
blkmove		^K m
blksave		.f5 		Сохранить блок
blksave		.F5 		
blksave		^K W		
blksave		^K ^W
blksave		^K w
bof		.k2		В начало файла
bof		^K ^U
bof		^K u
 bol		.kh		В начало строки
 bol		^A
home		.kh
home		^A
center		^K A		Центрировать строку
center		^K ^A
center		^K a
crawll		^K <		Pan left
crawlr		^K >		Pan right
delch		.kD		Удалить символ
delch		^D
deleol		^J		Удалить до конца строки
dellin		^Y		Удалить всю строку
delw		^W		Удалить до конца слова
dnarw		.kd		Вниз
dnarw		^[ O B
dnarw		^[ [ B
edit		^K E		Редактировать файл
edit		^K ^E
edit		^K e
eof		.f2 		В конец файла
eof		.F2 		
eof		^K V		
eof		^K ^V
eof		^K v
eol		.kH		В конец строки
eol		.@7		
eol		^E
exsave		.k0 		Сохранить файл и выйти
exsave		.k; 		
exsave		^K X		
exsave		^K ^X
exsave		^K x
ffirst		.f7 		Поиск первого
ffirst		.F7 		
ffirst		^K F		
ffirst		^K ^F
ffirst		^K f
filt		^K /		Фильтровать блок
 finish		^K ^M		Complete text under cursor
fnext		.k7     	Поиск дальше
fnext		^L		
fmtblk		^K J		Форматировать абзац в блоке
fmtblk		^K ^J
fmtblk		^K j
gomark		^[ 0 TO 9	Перейти к метке
groww		^K G		Увеличить окно
groww		^K ^G
groww		^K g
insc		.kI		Вставить пробел
 insc		^@
insf		^K R		Вставить файл                
insf		^K ^R
insf		^K r
lindent		^K ,		Сдвинуть блок влево
line		^L  		Перейти на указанную строку
line		^K L	
line		^K ^L
line		^K l
ltarw		.kl		Влево
ltarw		^[ O D
ltarw		^[ [ D
macros		^[ d		Раскрыть макрос
macros		^[ ^D
markb		.k3 		Отметка начала блока
markb		^K B		
markb		^K ^B
markb		^K b
markk		.f3 		Отметка конца блока
markk		.F3 		
markk		^K K		
markk		^K ^K
markk		^K k
 mode		^T		Меню опций
menu,"root",rtn	^T
nextpos		^K =		На следующую позицию в истории позиций
nextword	^X		На следующее слово
nextword	^[ [ 1 ; 5 C	ctrl right in (newer) xterm
nextword	^[ [ 5 C	ctrl right in gnome-terminal
open		^]		Разрезать строку
prevpos		^K -		На предыдущую позицию в истории
prevword	^Z		На предыдущее слово
prevword	^[ [ 1 ; 5 D	ctrl left in (newer) xterm
prevword	^[ [ 5 D	ctrl left in gnome-terminal
redo		^^		Отменить отмену изменений
rindent		^K .		Сдвинуть блок вправо 
rtarw		.kr		Вправо
rtarw		^[ O C
rtarw		^[ [ C
run		^K !		Run a shell command
save		.f0 		Сохранить файл
save		.FA 		
save		^K D		
save		^K S
save		^K ^D
save		^K ^S
save		^K d
save		^K s
setmark		^[ ^[		Установить метку
shrinkw		^K T		Уменьшить окно
shrinkw		^K ^T
shrinkw		^K t
splitw		^K O		Разрезать окно
splitw		^K ^O
splitw		^K o
stat		^K SP		Показать статус 
tag		^K ;		Поиск файла тагов
tomatch		^G		К парной скобке
undo		^_		Отменить изменение
uparw		.ku		Вверх
uparw		^[ O A
uparw		^[ [ A

:prompt			Окна запроса
:inherit main
if,"byte>size",then,complete,complete,else,delch,endif	^D
complete	^I
dnarw,eol	.kd		Go down
dnarw,eol	^N
dnarw,eol	^[ O B
dnarw,eol	^[ [ B
 dnarw,eol	^# B
uparw,eol	.ku		Go up
 uparw,eol	^# A
uparw,eol	^P
uparw,eol	^[ O A
uparw,eol	^[ [ A

:menu			Меню выбора
:inherit windows
abort		^[ ^[
backsmenu	^H
bofmenu		^K U
bofmenu		^K ^U
bofmenu		^K u
bolmenu		.kh
bolmenu		^A
dnarwmenu	.kd
dnarwmenu	^N
dnarwmenu	^[ [ B
dnarwmenu	^[ O B
dnarwmenu	MWDOWN
eofmenu		^K V
eofmenu		^K ^V
eofmenu		^K v
eolmenu		.kH
eolmenu		^E
ltarwmenu	.kl
ltarwmenu	^B
ltarwmenu	^[ [ D
ltarwmenu	^[ O D
pgdnmenu	.kN		На экран вниз
pgdnmenu	^V
pgdnmenu	^[ [ 6 ~
pgupmenu	.kP		На экран вверх
pgupmenu	^U
pgupmenu	^[ [ 5 ~
rtarwmenu	.kr
rtarwmenu	^F
rtarwmenu	^[ [ C
rtarwmenu	^[ O C
rtn		SP
rtn		^I
rtn		^K H
rtn		^K h
rtn		^K ^H
tabmenu		^I
uparwmenu	.ku
uparwmenu	^P
uparwmenu	^[ [ A
uparwmenu	^[ O A
uparwmenu	MWUP
defm2down	M2DOWN		Hits return key

:query			Single-key query window
:inherit windows

:querya			Single-key query window for quoting
type		^@ TO  

:querysr		Search & replace query window
type		^@ TO  
