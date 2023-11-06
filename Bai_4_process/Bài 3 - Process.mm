<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1542339660418" ID="ID_200195442" MODIFIED="1558940614940" TEXT="B&#xe0;i 3 - Process">
<node CREATED="1542941059748" ID="ID_929393784" MODIFIED="1558881017697" POSITION="right" TEXT="Content">
<node CREATED="1558927440206" ID="ID_1483890990" MODIFIED="1558927443184" TEXT="Agenda">
<node CREATED="1558927444199" ID="ID_1427560635" MODIFIED="1558941584703" TEXT="C&#xe1;c tham s&#x1ed1; m&#xf4;i tr&#x1b0;&#x1edd;ng &#x1ea3;nh h&#x1b0;&#x1edf;ng &#x111;&#x1ebf;n process"/>
<node CREATED="1558927450511" ID="ID_1598312530" MODIFIED="1558949131748" TEXT="Process control"/>
</node>
<node CREATED="1558927469904" ID="ID_1053858624" MODIFIED="1558948127988" TEXT="C&#xe1;c tham s&#x1ed1; m&#xf4;i tr&#x1b0;&#x1edd;ng &#x1ea3;nh h&#x1b0;&#x1edf;ng &#x111;&#x1ebf;n process">
<node CREATED="1542941568579" ID="ID_213806183" MODIFIED="1558881256432" TEXT="Start ch&#x1b0;&#x1a1;ng tr&#xec;nh">
<node CREATED="1542941572211" ID="ID_526533346" MODIFIED="1558881270197" TEXT="H&#xe0;m main l&#xe0; &#x111;i&#x1ec3;m &#x111;&#x1ea7;u ti&#xea;n &#x111;i v&#xe0;o ch&#x1b0;&#x1a1;ng tr&#xec;nh"/>
<node CREATED="1542941589499" ID="ID_470168209" MODIFIED="1558941723175" TEXT="Prototype: int main(int argc, char *argv[])"/>
<node CREATED="1542941648699" ID="ID_1256770690" MODIFIED="1558881179681" TEXT="Tr&#x1b0;&#x1edb;c khi v&#xe0;o h&#xe0;m main, kernel s&#x1ebd; ch&#x1ea1;y m&#x1ed9;t s&#x1ed1; &#x111;o&#x1ea1;n code start routine d&#xf9;ng &#x111;&#x1ec3; kh&#x1edf;i t&#x1ea1;o b&#x1ed9; nh&#x1edb; cho process. Khi h&#xe0;m main start, n&#xf3; s&#x1ebd; nh&#x1ead;n &#x111;&#x1b0;&#x1ee3;c 2 tham s&#x1ed1; truy&#x1ec1;n v&#xe0;o t&#x1eeb; kernel."/>
</node>
<node CREATED="1542941804761" ID="ID_547662785" MODIFIED="1558927783365" TEXT="K&#x1ebf;t th&#xfa;c ch&#x1b0;&#x1a1;ng tr&#xec;nh">
<node CREATED="1542941839523" ID="ID_1077574693" MODIFIED="1542941851336" TEXT="C&#xf3; nhi&#x1ec1;u c&#xe1;ch &#x111;&#x1ec3; k&#x1ebf;t th&#xfa;c ch&#x1b0;&#x1a1;ng tr&#xec;nh">
<node CREATED="1542941852227" ID="ID_658325501" MODIFIED="1542941864351" TEXT="Ch&#x1ee7; &#x111;&#x1ed9;ng k&#x1ebf;t th&#xfa;c">
<node CREATED="1542941864707" ID="ID_332449017" MODIFIED="1542941873104" TEXT="Call return trong h&#xe0;m main"/>
<node CREATED="1542941873451" ID="ID_1315612743" MODIFIED="1542941893752" TEXT="Call exit() t&#x1eeb; b&#x1ea5;t c&#x1ee9; h&#xe0;m n&#xe0;o."/>
<node CREATED="1542941897043" ID="ID_839416245" MODIFIED="1542941908527" TEXT="Call pthread_exit t&#x1eeb; last thread"/>
</node>
<node CREATED="1542941911578" ID="ID_522703209" MODIFIED="1542941918439" TEXT="B&#x1ecb; &#x111;&#x1ed9;ng k&#x1ebf;t th&#xfa;c">
<node CREATED="1542941927251" ID="ID_1836100160" MODIFIED="1542941935303" TEXT="Ch&#x1b0;&#x1a1;ng tr&#xec;nh g&#x1eb7;p l&#x1ed7;i"/>
<node CREATED="1542941936835" ID="ID_20245739" MODIFIED="1542941947119" TEXT="Nh&#x1ead;n t&#xed;n hi&#x1ec7;u k&#x1ebf;t th&#xfa;c g&#x1eed;i t&#x1eeb; b&#xea;n ngo&#xe0;i"/>
</node>
</node>
<node CREATED="1542941812659" ID="ID_1485448923" MODIFIED="1542941831991" TEXT="L&#xe0; &#x111;i&#x1ec3;m cu&#x1ed1;i c&#xf9;ng tr&#x1b0;&#x1edb;c khi &#x111;i ra kh&#x1ecf;i ch&#x1b0;&#x1a1;ng tr&#xec;nh"/>
<node CREATED="1542941975700" ID="ID_293294653" MODIFIED="1542942031800" TEXT="Tr&#x1b0;&#x1edb;c khi ch&#x1b0;&#x1a1;ng tr&#xec;nh th&#x1ef1;c s&#x1ef1; k&#x1ebf;t th&#xfa;c, h&#x1ec7; &#x111;i&#x1ec1;u h&#xe0;nh s&#x1ebd; gi&#x1ea3;i ph&#xf3;ng c&#xe1;c t&#xe0;i nguy&#xea;n m&#xe0; ch&#x1b0;&#x1a1;ng tr&#xec;nh &#x111;ang gi&#x1eef;, bao g&#x1ed3;m memory, file open, ..."/>
<node CREATED="1542942153363" ID="ID_1573358064" MODIFIED="1558881358819" TEXT="Gi&#xe1; tr&#x1ecb; tr&#x1ea3; v&#x1ec1; c&#x1ee7;a ch&#x1b0;&#x1a1;ng tr&#xec;nh khi k&#x1ebf;t th&#xfa;c c&#xf3; th&#x1ec3; nh&#x1ead;n &#x111;&#x1b0;&#x1ee3;c t&#x1eeb; ch&#x1b0;&#x1a1;ng tr&#xec;nh cha.">
<node CREATED="1542942201897" ID="ID_1090842200" MODIFIED="1542942229487" TEXT="Th&#x1ef1;c h&#xe0;nh: Xem gi&#xe1; tr&#x1ecb; tr&#x1ea3; v&#x1ec1; c&#x1ee7;a 1 command line b&#x1ea5;t k&#x1ef3;"/>
</node>
</node>
<node CREATED="1542942252779" ID="ID_1719718911" MODIFIED="1542942273311" TEXT="Command line argument">
<node CREATED="1542942279083" ID="ID_1382956377" MODIFIED="1542942306680" TEXT="Ch&#xfa;ng l&#xe0; 2 bi&#x1ebf;n argc v&#xe0; argv[] c&#x1ee7;a h&#xe0;m main"/>
<node CREATED="1542942321539" ID="ID_1692296157" MODIFIED="1542942353391" TEXT="argc l&#xe0; s&#x1ed1; tham s&#x1ed1; truy&#x1ec1;n v&#xe0;o, argv l&#xe0; c&#xe1;c chu&#x1ed7;i k&#xfd; t&#x1ef1; truy&#x1ec1;n v&#xe0;o khi g&#x1ecd;i h&#xe0;m ch&#x1b0;&#x1a1;ng tr&#xec;nh">
<node CREATED="1542942358531" ID="ID_76033861" MODIFIED="1542942383239" TEXT="V&#xed; d&#x1ee5;:"/>
<node CREATED="1558882389762" ID="ID_1233751214" MODIFIED="1558882453727" TEXT="argv[0] lu&#xf4;n ch&#x1ee9;a &#x111;&#x1b0;&#x1edd;ng d&#x1eab;n m&#xe0; ng&#x1b0;&#x1edd;i d&#xf9;ng s&#x1eed; d&#x1ee5;ng &#x111;&#x1ec3; call ch&#x1b0;&#x1a1;ng tr&#xec;nh."/>
<node CREATED="1558882454081" ID="ID_129243031" MODIFIED="1558882515059" TEXT="c&#xe1;c tham s&#x1ed1; ti&#x1ebf;p theo l&#xe0; c&#xe1;c chu&#x1ed7;i string m&#xe0; ng&#x1b0;&#x1edd;i d&#xf9;ng truy&#x1ec1;n v&#xe0;o khi g&#x1ecd;i ch&#x1b0;&#x1a1;ng tr&#xec;nh. C&#xe1;c tham s&#x1ed1; &#x111;&#x1b0;&#x1ee3;c ph&#xe2;n bi&#x1ec7;t v&#x1edb;i nhau b&#x1eb1;ng d&#x1ea5;u c&#xe1;ch."/>
</node>
</node>
<node CREATED="1542945034393" ID="ID_1537259210" MODIFIED="1558927790661" TEXT="Environment list">
<node CREATED="1558882633030" ID="ID_135082017" MODIFIED="1558882684402" TEXT="M&#x1ed7;i khi ch&#x1b0;&#x1a1;ng tr&#xec;nh start, OS s&#x1ebd; truy&#x1ec1;n cho n&#xf3; 1 danh s&#xe1;ch c&#xe1;c bi&#x1ebf;n m&#xf4;i tr&#x1b0;&#x1edd;ng.">
<node CREATED="1558882688050" ID="ID_1240622565" MODIFIED="1558942958101" TEXT="C&#xe1;c bi&#x1ebf;n m&#xf4;i tr&#x1b0;&#x1edd;ng &#x111;&#x1b0;&#x1ee3;c l&#x1b0;u trong 1 m&#x1ea3;ng 2 chi&#x1ec1;u, m&#x1ed7;i ph&#x1ea7;n t&#x1eed; c&#x1ee7;a m&#x1ea3;ng l&#xe0; 1 chu&#x1ed7;i string &#x111;&#x1ea1;i di&#x1ec7;n cho gi&#xe1; tr&#x1ecb; c&#x1ee7;a 1 bi&#x1ebf;n m&#xf4;i tr&#x1b0;&#x1edd;ng. "/>
<node CREATED="1542945043337" ID="ID_400214339" MODIFIED="1542945067021" TEXT="Store in a global variable extern char **environ"/>
</node>
<node CREATED="1558882739959" ID="ID_1124909820" MODIFIED="1558882755775" TEXT="C&#xe1;c tham s&#x1ed1; m&#xf4;i tr&#x1b0;&#x1edd;ng c&#xf3; th&#x1ec3; &#x1ea3;nh h&#x1b0;&#x1edf;ng &#x111;&#x1ebf;n ho&#x1ea1;t &#x111;&#x1ed9;ng c&#x1ee7;a ch&#x1b0;&#x1a1;ng tr&#xec;nh">
<node CREATED="1558882758381" ID="ID_521213404" MODIFIED="1558882929932" TEXT="v&#xed; d&#x1ee5;: bi&#x1ebf;n m&#xf4;i tr&#x1b0;&#x1edd;ng PATH s&#x1ebd; &#x1ea3;nh h&#x1b0;&#x1edf;ng &#x111;&#x1ebf;n k&#x1ebf;t qu&#x1ea3; c&#x1ee7;a c&#xe2;u l&#x1ec7;nh fopen(&quot;myfoo.txt&quot;, &quot;a&quot;). Do ch&#xfa;ng ta kh&#xf4;ng s&#x1eed; d&#x1ee5;ng &#x111;&#x1b0;&#x1edd;ng d&#x1eab;n tuy&#x1ec7;t &#x111;&#x1ed1;i, do &#x111;&#xf3; c&#xe2;u l&#x1ec7;nh s&#x1ebd; m&#x1edf; file myfoo.txt t&#x1ea1;i th&#x1b0; m&#x1ee5;c hi&#x1ec7;n t&#x1ea1;i c&#x1ee7;a ch&#x1b0;&#x1a1;ng tr&#xec;nh. V&#x1ecb; tr&#xed; c&#x1ee7;a th&#x1b0; m&#x1ee5;c &#x111;&#x1b0;&#x1ee3;c ch&#x1ec9; &#x111;inh b&#x1edf;i bi&#x1ebf;n PATH."/>
</node>
<node CREATED="1542945085696" ID="ID_1528962365" MODIFIED="1542945113461" TEXT="C&#xf3; th&#x1ec3; truy xu&#x1ea5;t th&#xf4;ng qua h&#xe0;m char *getenv(const char *name)"/>
<node CREATED="1542945548785" ID="ID_1925232293" MODIFIED="1542945555605" TEXT="Th&#x1ef1;c h&#xe0;nh">
<node CREATED="1542945557560" ID="ID_872421247" MODIFIED="1542945570493" TEXT="Hi&#x1ec3;n th&#x1ecb; t&#xea;n v&#xe0; gi&#xe1; tr&#x1ecb; c&#x1ee7;a c&#xe1;c bi&#x1ebf;n m&#xf4;i tr&#x1b0;&#x1edd;ng b&#x1eb1;ng C"/>
</node>
</node>
<node CREATED="1542945188801" ID="ID_96523763" MODIFIED="1542945196613" TEXT="C&#x1ea5;u tr&#xfa;c b&#x1ed9; nh&#x1edb; c&#x1ee7;a process">
<node CREATED="1542945213217" ID="ID_1740997002" MODIFIED="1542945217101" TEXT="V&#xf9;ng text">
<node CREATED="1542945217793" ID="ID_41975710" MODIFIED="1542945225989" TEXT="N&#x1a1;i ch&#x1ee9;a m&#xe3; l&#x1ec7;nh v&#xe0; h&#x1eb1;ng s&#x1ed1;"/>
</node>
<node CREATED="1542945230345" ID="ID_1215708360" MODIFIED="1542945238621" TEXT="V&#xf9;ng d&#x1eef; li&#x1ec7;u &#x111;&#xe3; &#x111;&#x1b0;&#x1ee3;c kh&#x1edf;i t&#x1ea1;o"/>
<node CREATED="1542945322937" ID="ID_845509328" MODIFIED="1542945330501" TEXT="V&#xf9;ng d&#x1eef; li&#x1ec7;u ch&#x1b0;a &#x111;&#x1b0;&#x1ee3;c kh&#x1edf;i t&#x1ea1;o"/>
<node CREATED="1542945342673" ID="ID_307891181" MODIFIED="1542945345613" TEXT="V&#xf9;ng stack">
<node CREATED="1542945346336" ID="ID_1871480002" MODIFIED="1542945360317" TEXT="C&#x1ea5;p ph&#xe1;t b&#x1ed9; nh&#x1edb; cho c&#xe1;c bi&#x1ebf;n khi g&#x1ecd;i h&#xe0;m"/>
</node>
<node CREATED="1542945363440" ID="ID_156886533" MODIFIED="1542945366949" TEXT="V&#xf9;ng heap">
<node CREATED="1542945367808" ID="ID_1744159651" MODIFIED="1542945378413" TEXT="D&#xf9;ng &#x111;&#x1ec3; c&#x1ea5;p ph&#xe1;t b&#x1ed9; nh&#x1edb; &#x111;&#x1ed9;ng"/>
</node>
</node>
<node CREATED="1542945431576" ID="ID_1045429117" MODIFIED="1542945444038" TEXT="C&#x1ea5;p ph&#xe1;t b&#x1ed9; nh&#x1edb; &#x111;&#x1ed9;ng cho process">
<node CREATED="1542945459377" ID="ID_1573458282" MODIFIED="1542945461917" TEXT="void *malloc(size_t size);"/>
<node CREATED="1542945470400" ID="ID_518054375" MODIFIED="1558943769966" TEXT="void free(void *ptr);"/>
<node CREATED="1558883556175" ID="ID_445249838" MODIFIED="1558883584917" TEXT="Khi ch&#x1b0;&#x1a1;ng tr&#xec;nh k&#x1ebf;t th&#xfa;c, OS s&#x1ebd; t&#x1ef1; &#x111;&#x1ed9;ng free t&#x1ea5;t c&#x1ea3; memory c&#x1ee7;a ch&#x1b0;&#x1a1;ng tr&#xec;nh &#x111;&#xf3;.">
<node CREATED="1558883588019" ID="ID_780223633" MODIFIED="1558883617623" TEXT="Memory leak th&#x1b0;&#x1edd;ng g&#xe2;y lo ng&#x1ea1;i trong c&#xe1;c ch&#x1b0;&#x1a1;ng tr&#xec;nh c&#xf3; th&#x1edd;i gian ch&#x1ea1;y l&#xe2;u d&#xe0;i."/>
</node>
</node>
<node CREATED="1542945680705" ID="ID_1301859692" MODIFIED="1542945689142" TEXT="Shared library">
<node CREATED="1542945690179" ID="ID_1482201367" MODIFIED="1542945713857" TEXT="L&#xe0; c&#xe1;c file binary &#x111;&#x1b0;&#x1ee3;c build t&#x1eeb; code C"/>
<node CREATED="1542945714173" ID="ID_355712325" MODIFIED="1542945726930" TEXT="Ch&#xfa;ng ch&#x1ee9;a c&#xe1;c h&#xe0;m d&#xf9;ng &#x111;&#x1ec3; g&#x1ecd;i t&#x1eeb; ch&#x1b0;&#x1a1;ng tr&#xec;nh kh&#xe1;c"/>
<node CREATED="1542945753472" ID="ID_308037813" MODIFIED="1558883180378" TEXT="M&#x1ed7;i khi c&#x1ea7;n truy xu&#x1ea5;t h&#xe0;m t&#x1eeb; th&#x1b0; vi&#x1ec7;n &#x111;&#x1ed9;ng, h&#x1ec7; &#x111;i&#x1ec1;u h&#xe0;nh s&#x1ebd; load 1 ph&#x1ea7;n ho&#x1eb7;c to&#xe0;n b&#x1ed9; th&#x1b0; vi&#x1ec7;n &#x111;&#xf3; v&#xe0;o ram, sau &#x111;&#xf3; tr&#x1ea3; v&#x1ec1; &#x111;&#x1ecb;a ch&#x1ec9; h&#xe0;m cho process. Process s&#x1ebd; g&#x1ecd;i h&#xe0;m th&#xf4;ng qua &#x111;&#x1ecb;a ch&#x1ec9;. Trong tr&#x1b0;&#x1edd;ng h&#x1ee3;p th&#x1b0; vi&#x1ec7;n &#x111;&#xf3; &#x111;&#xe3; &#x111;&#x1b0;&#x1ee3;c load b&#x1edf;i 1 process tr&#x1b0;&#x1edb;c &#x111;&#xf3; th&#xec; OS s&#x1ebd; tr&#x1ea3; v&#x1ec1; &#x111;&#x1ecb;a ch&#x1ec9; lu&#xf4;n m&#xe0; ko load l&#x1ea1;i n&#x1eef;a, do &#x111;&#xf3; ti&#x1ebf;t ki&#x1ec7;m &#x111;&#x1b0;&#x1ee3;c b&#x1ed9; nh&#x1edb; h&#x1ec7; th&#x1ed1;ng."/>
<node CREATED="1558947898313" ID="ID_386050841" MODIFIED="1558947912622" TEXT="Demo c&#xe1;ch build source code th&#xe0;nh th&#x1b0; vi&#x1ec7;n .so"/>
</node>
<node CREATED="1542951548165" ID="ID_1821200390" MODIFIED="1558944147993" TEXT="B&#xe0;i t&#x1ead;p">
<node CREATED="1542951900165" ID="ID_393514123" MODIFIED="1558883206839" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C m&#x1edf; 1 file b&#x1ea5;t k&#x1ef3;, n&#x1ebf;u m&#x1edf; th&#xe0;nh c&#xf4;ng th&#xec; return 0 cho ch&#x1b0;&#x1a1;ng tr&#xec;nh cha, n&#x1ebf;u l&#x1ed7;i th&#xec; return -1 cho ch&#x1b0;&#x1a1;ng tr&#xec;nh cha. D&#xf9;ng terminal &#x111;&#x1ec3; ch&#x1ea1;y v&#xe0; echo v&#xe0;o bi&#x1ebf;n $ &#x111;&#x1ec3; &#x111;&#x1ecd;c k&#x1ebf;t qu&#x1ea3; tr&#x1ea3; v&#x1ec1;"/>
<node CREATED="1542951778221" ID="ID_1224297608" MODIFIED="1542951884688" TEXT="Vi&#x1ebf;t m&#x1ed9;t ch&#x1b0;&#x1a1;ng tr&#xec;nh x&#x1eed; l&#xfd; tham s&#x1ed1; &#x111;&#x1ea7;u v&#xe0;o gi&#x1ed1;ng v&#x1edb;i c&#xe2;u l&#x1ec7;nh ls. V&#xed; d&#x1ee5; n&#x1ebf;u call &quot;my_ls -l&quot; s&#x1ebd; in ra d&#xf2;ng ch&#x1eef; hi&#x1ec7;n th&#x1ecb; full property, n&#x1ebf;u truy&#x1ec1;n -a s&#x1ebd; in hi&#x1ec3;n th&#x1ecb; file &#x1ea9;n, n&#x1ebf;u truy&#x1ec1;n -la s&#x1ebd; in ra c&#x1ea3; 2 d&#xf2;ng tr&#xea;n."/>
<node CREATED="1542952045068" ID="ID_1866647398" MODIFIED="1542952079856" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C truy c&#x1ead;p v&#xe0;o environment variable v&#xe0; hi&#x1ec3;n th&#x1ecb; &#x111;&#x1b0;&#x1edd;ng d&#x1eab;n th&#x1b0; m&#x1ee5;c home, t&#xea;n user, &#x111;&#x1b0;&#x1edd;ng d&#x1eab;n hi&#x1ec7;n t&#x1ea1;i c&#x1ee7;a ch&#x1b0;&#x1a1;ng tr&#xec;nh."/>
<node CREATED="1542952701900" ID="ID_962910778" MODIFIED="1542952817857" TEXT="Vi&#x1ebf;t 1 th&#x1b0; vi&#x1ec7;n r&#x1ed3;i build th&#xe0;nh shared library, shared lib &#x111;&#x1b0;&#x1ee3;c copy v&#xe0;o th&#x1b0; m&#x1ee5;c /usr/lib. Sau &#x111;&#xf3; vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C s&#x1eed; d&#x1ee5;ng shared lib &#x111;&#xf3;."/>
</node>
</node>
<node CREATED="1558927510552" ID="ID_1380046249" MODIFIED="1558949125461" TEXT="Process control">
<node CREATED="1543550336854" ID="ID_1456519838" MODIFIED="1543550454570" TEXT="Process identifier">
<node CREATED="1543550464342" ID="ID_1599048883" MODIFIED="1543550480707" TEXT="A unique number"/>
<node CREATED="1543550481302" ID="ID_915416679" MODIFIED="1543550495066" TEXT="Used to identify process"/>
<node CREATED="1543550517502" ID="ID_319405625" MODIFIED="1543550584267" TEXT="Some numbers is reserved for special process"/>
<node CREATED="1558927863439" ID="ID_414378680" MODIFIED="1558928296795" TEXT="&#x110;&#x1ec3; qu&#x1ea3;n l&#xfd; c&#xe1;c process, OS s&#x1eed; d&#x1ee5;ng m&#x1ed9;t t&#x1ead;p c&#xe1;c s&#x1ed1; nguy&#xea;n d&#x1b0;&#x1a1;ng &#x111;&#x1ec3; &#x111;&#x1ecb;nh danh process, &#x111;&#x1b0;&#x1ee3;c g&#x1ecd;i l&#xe0; PID. M&#x1ed7;i process s&#x1ebd; &#x111;&#x1b0;&#x1ee3;c &#x111;&#x1ea1;i di&#x1ec7;n b&#x1edf;i 1 PID v&#xe0; kh&#xf4;ng h&#x1ec1; tr&#xf9;ng nhau. C&#xe1;c PID n&#x1eb1;m trong d&#x1ea3;i t&#x1eeb; 0 - 65536. M&#x1ed7;i khi sinh ra m&#x1ed9;t process, OS s&#x1ebd; t&#xec;m 1 s&#x1ed1; PID c&#xf2;n tr&#x1ed1;ng trong &#x111;&#xf3; v&#xe0; c&#x1ea5;p ph&#xe1;t cho n&#xf3;, sau khi process k&#x1ebf;t th&#xfa;c, s&#x1ed1; PID s&#x1ebd; &#x111;&#x1b0;&#x1ee3;c free v&#xe0; c&#xf3; th&#x1ec3; c&#x1ea5;p l&#x1ea1;i cho process m&#x1edb;i."/>
</node>
<node CREATED="1543551197766" ID="ID_932973997" MODIFIED="1558928319140" TEXT="C&#xe1;ch process sinh ra v&#xe0; k&#x1ebf;t th&#xfa;c"/>
<node CREATED="1543551272926" ID="ID_1472445254" MODIFIED="1543552250331" TEXT="fork function">
<node CREATED="1543551296918" ID="ID_940520127" MODIFIED="1543551297778" TEXT="pid_t fork(void);"/>
<node CREATED="1543551349982" ID="ID_1473726044" MODIFIED="1558928666235" TEXT="T&#x1ea1;o ra 1 b&#x1ea3;n sao c&#x1ee7;a process hi&#x1ec7;n t&#x1ea1;i"/>
<node CREATED="1543552429854" ID="ID_1639140934" MODIFIED="1543552455019" TEXT="Con c&#xf3; th&#x1ec3; ch&#x1ea1;y v&#xe0; ho&#xe0;n th&#xe0;nh c&#xf4;ng vi&#x1ec7;c tr&#x1b0;&#x1edb;c cha"/>
<node CREATED="1558929017431" ID="ID_244516655" MODIFIED="1558929045915" TEXT="Khi 1 trong 2 process k&#x1ebf;t th&#xfa;c th&#xec; process c&#xf2;n l&#x1ea1;i v&#x1eab;n ho&#x1ea1;t &#x111;&#x1ed9;ng b&#xec;nh th&#x1b0;&#x1edd;ng">
<node CREATED="1558929051701" ID="ID_178746706" MODIFIED="1558929159548" TEXT="H&#xe0;m fork() hay &#x111;&#x1b0;&#x1ee3;c s&#x1eed; d&#x1ee5;ng &#x111;&#x1ec3; th&#x1ef1;c thi nh&#x1eef;ng &#x111;o&#x1ea1;n code d&#x1ec5; b&#x1ecb; crash. V&#xed; d&#x1ee5; nh&#x1b0; g&#x1ecd;i h&#xe0;m system()."/>
</node>
<node CREATED="1558928613863" ID="ID_1613761505" MODIFIED="1558928940804" TEXT="Sau khi g&#x1ecd;i h&#xe0;m fork, OS s&#x1ebd; copy to&#xe0;n b&#x1ed9; kh&#xf4;ng gian b&#x1ed9; nh&#x1edb; c&#x1ee7;a process hi&#x1ec7;n t&#x1ea1;i t&#x1ea1;o th&#xe0;nh 2 phi&#xea;n b&#x1ea3;n gi&#x1ed1;ng nhau. 1 phi&#xea;n b&#x1ea3;n &#x111;&#x1b0;&#x1ee3;c g&#x1ecd;i l&#xe0; process cha, 1 l&#xe0; process con. &#x110;&#x1ed1;i v&#x1edb;i process con, h&#xe0;m fork() s&#x1ebd; tr&#x1ea3; v&#x1ec1; 0, &#x111;&#x1ed1;i v&#x1edb;i process ch&#x1ea3;, h&#xe0;m fork() s&#x1ebd; tr&#x1ea3; v&#x1ec1; PID c&#x1ee7;a con."/>
<node CREATED="1558931161079" ID="ID_1102879191" MODIFIED="1558931194203" TEXT="use case: S&#x1eed; d&#x1ee5;ng fork() &#x111;&#x1ec3; tr&#xe1;nh block giao di&#x1ec7;n c&#x1ee7;a ch&#x1b0;&#x1a1;ng tr&#xec;nh"/>
</node>
<node CREATED="1543552247932" ID="ID_1236191505" MODIFIED="1558929253412" TEXT="B&#xe0;i t&#x1ead;p">
<node CREATED="1543552027454" ID="ID_460747402" MODIFIED="1543552266755" TEXT="Th&#x1ef1;c h&#xe0;nh: Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C fork ra cha v&#xe0; con, trong process cha in ra pid v&#xe0; &quot;I am parent&quot;, trong process con l&#xe0;m t&#x1b0;&#x1a1;ng t&#x1ef1;. So s&#xe1;nh PID in ra v&#xe0; PID s&#x1eed; d&#x1ee5;ng l&#x1ec7;nh PS"/>
<node CREATED="1558929556280" ID="ID_908942624" MODIFIED="1558929615596" TEXT="D&#xf9;ng fork() &#x111;&#x1ec3; t&#x1ea1;o ra 2 process cha v&#xe0; con, s&#x1eed; d&#x1ee5;ng l&#x1ec7;nh kill &#x111;&#x1ec3; kill 1 trong 2 v&#xe0; check xem process c&#xf2;n l&#x1ea1;i c&#xf3; b&#x1ecb; kill kh&#xf4;ng."/>
<node CREATED="1543552199444" ID="ID_894068106" MODIFIED="1543552227169" TEXT="Th&#x1eed; m&#x1edf; 1 file tr&#x1b0;&#x1edb;c khi fork, sau &#x111;&#xf3; c&#x1ea3; cha v&#xe0; con c&#xf9;ng ghi v&#xe0;o file fd tr&#x1b0;&#x1edb;c &#x111;&#xf3; v&#xe0; check k&#x1ebf;t qu&#x1ea3;"/>
<node CREATED="1543552294070" ID="ID_872833618" MODIFIED="1558929642333" TEXT="Th&#x1eed; v&#x1edb;i 1 bi&#x1ebf;n global v&#xe0; xem k&#x1ebf;t qu&#x1ea3;"/>
</node>
<node CREATED="1543558368944" ID="ID_1757729096" MODIFIED="1543558382942" TEXT="exec function">
<node CREATED="1543558404930" ID="ID_1368498787" MODIFIED="1543558406951" TEXT="int execl(const char *pathname, const char *arg0, ... /* (char *)0 */ )"/>
<node CREATED="1543558523168" ID="ID_308553227" MODIFIED="1558930168444" TEXT="Kh&#x1edf;i t&#x1ea1;o process m&#x1edb;i t&#x1eeb; ch&#x1b0;&#x1a1;ng tr&#xec;nh n&#x1eb1;m t&#x1ea1;i pathname"/>
<node CREATED="1543558746494" ID="ID_1169832725" MODIFIED="1543558774453" TEXT="Sau khi g&#x1ecd;i h&#xe0;m exec, to&#xe0;n b&#x1ed9; source code ph&#xed;a sau c&#x1ee7;a ch&#x1b0;&#x1a1;ng tr&#xec;nh s&#x1ebd; kh&#xf4;ng &#x111;&#x1b0;&#x1ee3;c th&#x1ef1;c hi&#x1ec7;n n&#x1eef;a"/>
<node CREATED="1558930176527" ID="ID_374748882" MODIFIED="1558930254132" TEXT="Sau khi g&#x1ecd;i h&#xe0;m exec, OS s&#x1ebd; load ch&#x1b0;&#x1a1;ng tr&#xec;nh m&#x1edb;i n&#x1eb1;m t&#x1ea1;i pathname v&#xe0; thay th&#x1ebf; v&#xe0;o kh&#xf4;ng gian b&#x1ed9; nh&#x1edb; c&#x1ee7;a process hi&#x1ec7;n t&#x1ea1;i. C&#xe1;c c&#xe2;u l&#x1ec7;nh c&#xf2;n l&#x1ea1;i c&#x1ee7;a process hi&#x1ec7;n t&#x1ea1;i s&#x1ebd; kh&#xf4;ng &#x111;&#x1b0;&#x1ee3;c th&#x1ef1;c thi n&#x1eef;a. H&#xe0;m exec l&#xe0; h&#xe0;m c&#x1ee7;a h&#x1ec7; th&#x1ed1;ng &#x111;&#x1b0;&#x1ee3;c s&#x1eed; d&#x1ee5;ng &#x111;&#x1ec3; t&#x1ea1;o ra c&#xe1;c process."/>
</node>
<node CREATED="1543558324388" ID="ID_1763120952" MODIFIED="1543558337484" TEXT="exit function">
<node CREATED="1543559015026" ID="ID_1515559609" MODIFIED="1558930497620" TEXT="Khi process k&#x1ebf;t th&#xfa;c, tr&#x1ea1;ng th&#xe1;i k&#x1ebf;t th&#xfa;c c&#x1ee7;a n&#xf3; &#x111;&#x1b0;&#x1ee3;c tr&#x1ea3; v&#x1ec1; cho process cha.">
<node CREATED="1558930691663" ID="ID_1022401242" MODIFIED="1558930828483" TEXT="Khi process k&#x1ebf;t th&#xfa;c, gi&#xe1; tr&#x1ecb; tr&#x1ea3; v&#x1ec1; trong h&#xe0;m exit ho&#x1eb7;c c&#xe2;u l&#x1ec7;nh return c&#x1ee7;a n&#xf3; s&#x1ebd; &#x111;&#x1b0;&#x1ee3;c &#x111;&#xf3;ng g&#xf3;i k&#xe8;m theo c&#xe1;c th&#xf4;ng tin kh&#xe1;c v&#xe0;o 1 con tr&#x1ecf; ki&#x1ec3;u int. Con tr&#x1ecf; &#x111;&#xf3; sau &#x111;&#xf3; &#x111;&#x1b0;&#x1ee3;c OS g&#x1eed;i sang cho process cha, OS h&#x1ed7; tr&#x1ee3; c&#xe1;c macro &#x111;&#x1ec3; process cha c&#xf3; th&#x1ec3; &#x111;&#x1ecd;c th&#xf4;ng tin t&#x1eeb; con tr&#x1ecf; &#x111;&#xf3;."/>
</node>
<node CREATED="1543559112920" ID="ID_281611475" MODIFIED="1558930860588" TEXT="Ch&#x1ec9; khi process cha accept th&#xf4;ng tin process g&#x1eed;i v&#x1ec1;, khi &#x111;&#xf3; OS m&#x1edb;i th&#x1ef1;c s&#x1ef1; free process con."/>
<node CREATED="1543559320235" ID="ID_1505265456" MODIFIED="1543559342039" TEXT="N&#x1ebf;u cha k&#x1ebf;t th&#xfa;c tr&#x1b0;&#x1edb;c con th&#xec; init process s&#x1ebd; l&#xe0;m cha m&#x1edb;i."/>
<node CREATED="1558930587423" ID="ID_1942671502" MODIFIED="1558930592956" TEXT="Zombie process">
<node CREATED="1558930974423" ID="ID_688016606" MODIFIED="1558931142300" TEXT="Sau khi call h&#xe0;m exit ho&#x1eb7;c l&#x1ec7;nh return trong h&#xe0;m main, process s&#x1ebd; r&#x1a1;i v&#xe0;o 1 tr&#x1ea1;ng th&#xe1;i &#x111;&#x1eb7;c bi&#x1ec7;t g&#x1ecd;i l&#xe0; zombie. N&#x1ebf;u s&#x1eed; d&#x1ee5;ng c&#xe2;u l&#x1ec7;nh ps -aux &#x111;&#x1ec3; xem th&#xf4;ng tin th&#xec; tr&#x1ea1;ng th&#xe1;i c&#x1ee7;a process s&#x1ebd; &#x111;&#x1ea1;i di&#x1ec7;n b&#x1eb1;ng ch&#x1eef; Z. Trong tr&#x1ea1;ng th&#xe1;i n&#xe0;y, process kh&#xf4;ng s&#x1eed; d&#x1ee5;ng cpu v&#xe0; ph&#x1ea7;n l&#x1edb;n memory c&#x1ee7;a process c&#x169;ng b&#x1ecb; OS free. Tuy nhi&#xea;n process kh&#xf4;ng k&#x1ebf;t th&#xfa;c h&#x1eb3;n m&#xe0; v&#x1eab;n n&#x1eb1;m &#x111;&#xf3; v&#xe0; ch&#x1edd; &#x111;&#x1ee3;i process accept th&#xf4;ng tin k&#x1ebf;t th&#xfa;c c&#x1ee7;a m&#xec;nh. Ng&#x1b0;&#x1edd;i d&#xf9;ng kh&#xf4;ng c&#xf3; c&#xe1;ch n&#xe0;o kill &#x111;&#x1b0;&#x1ee3;c 1 process trong tr&#x1ea1;ng th&#xe1;i zombie."/>
</node>
</node>
<node CREATED="1543559441290" ID="ID_1536844320" MODIFIED="1543559451342" TEXT="wait function">
<node CREATED="1543559855219" ID="ID_457545560" MODIFIED="1543559856615" TEXT="pid_t wait(int *wstatus)"/>
<node CREATED="1543559967359" ID="ID_861406118" MODIFIED="1543559981130" TEXT="Block process cho &#x111;&#x1ebf;n khi 1 trong c&#xe1;c process con k&#x1ebf;t th&#xfa;c"/>
<node CREATED="1558938154817" ID="ID_1450996645" MODIFIED="1558938185573" TEXT="Th&#xf4;ng in tr&#x1ea3; v&#x1ec1; c&#x1ee7;a process con &#x111;&#x1b0;&#x1ee3;c l&#x1b0;u v&#xe0;o con tr&#x1ecf; wstatus"/>
<node CREATED="1558938301209" ID="ID_124777948" MODIFIED="1558938356029" TEXT="N&#x1ebf;u tr&#x1b0;&#x1edb;c khi g&#x1ecd;i wait() process cha s&#x1eed; d&#x1ee5;ng fork &#x111;&#x1ec3; t&#x1ea1;o ra nhi&#x1ec1;u process con th&#xec; h&#xe0;m wait s&#x1ebd; &#x111;&#x1ee3;i process con n&#xe0;o k&#x1ebf;t th&#xfa;c s&#x1edb;m nh&#x1ea5;t."/>
</node>
<node CREATED="1543560256835" ID="ID_713215921" MODIFIED="1558949806884" TEXT="Th&#x1ef1;c h&#xe0;nh">
<node CREATED="1558949808592" ID="ID_695036290" MODIFIED="1558949809908" TEXT="Vi&#x1ebf;t 2 ch&#x1b0;&#x1a1;ng tr&#xec;nh cha v&#xe0; con. Ch&#x1b0;&#x1a1;ng tr&#xec;nh cha g&#x1ecd;i con v&#x1edb;i tham s&#x1ed1; truy&#x1ec1;n v&#xe0;o l&#xe0; &#x111;&#x1b0;&#x1edd;ng d&#x1eab;n &#x111;&#x1ebf;n file. Ch&#x1b0;&#x1a1;ng tr&#xec;nh con ghi hello world v&#xe0;o file v&#xe0; tr&#x1ea3; v&#x1ec1; tr&#x1ea1;ng th&#xe1;i k&#x1ebf;t qu&#x1ea3; cho cha. Cha ph&#x1ea3;i bi&#x1ebf;t k&#x1ebf;t qu&#x1ea3; th&#x1ef1;c hi&#x1ec7;n c&#x1ee7;a ch&#x1b0;&#x1a1;ng tr&#xec;nh con."/>
</node>
<node CREATED="1543560408916" ID="ID_608771282" MODIFIED="1558927716196" TEXT="Thay &#x111;&#x1ed5;i user id v&#xe0; group id">
<node CREATED="1543560434228" ID="ID_1272550535" MODIFIED="1543560434968" TEXT="int setuid(uid_t uid)"/>
<node CREATED="1543560443500" ID="ID_658174180" MODIFIED="1543560444345" TEXT="int setgid(gid_t gid)"/>
<node CREATED="1543560560604" ID="ID_411146541" MODIFIED="1543560584472" TEXT="Khi user-id v&#xe0; group-id thay &#x111;&#x1ed5;i th&#xec; quy&#x1ec1;n c&#x1ee7;a process c&#x169;ng thay &#x111;&#x1ed5;i t&#x1b0;&#x1a1;ng &#x1ee9;ng"/>
<node CREATED="1543560629796" ID="ID_1534417456" MODIFIED="1543560658561" TEXT="S&#x1ebd; set theo xu h&#x1b0;&#x1edb;ng gi&#x1ea3;m quy&#x1ec1;n c&#x1ee7;a process"/>
<node CREATED="1558938582466" ID="ID_733212102" MODIFIED="1558938787765" TEXT="Trong Unix system, t&#x1ea5;t c&#x1ea3; t&#xe0;i nguy&#xea;n &#x111;&#x1ec1;u &#x111;&#x1b0;&#x1ee3;c &#x111;&#x1ecb;nh ngh&#x129;a b&#x1eb1;ng file. C&#xe1;c file &#x111;&#x1ec1;u &#x111;&#x1b0;&#x1ee3;c qu&#x1ea3;n l&#xfd; permission th&#xf4;ng qua user v&#xe0; group n&#xe0;o &#x111;&#x1b0;&#x1ee3;c ph&#xe9;p &#x111;&#x1ecd;c ghi v&#xe0;o file. Sau khi user login, t&#x1ea5;t c&#x1ea3; c&#xe1;c process &#x111;&#x1b0;&#x1ee3;c kh&#x1edf;i t&#x1ea1;o trong session &#x111;&#xf3; &#x111;&#x1ec1;u &#x111;&#x1b0;&#x1ee3;c g&#xe1;n user id v&#xe0; group id tr&#xf9;ng v&#x1edb;i session &#x111;&#xf3;. M&#x1ed7;i khi process th&#x1ef1;c hi&#x1ec7;n c&#xe2;u l&#x1ec7;nh &#x111;&#x1ecd;c ghi gile nh&#x1b0; fopen, fwrite th&#xec; OS &#x111;&#x1ec1;u check user-id hi&#x1ec7;n t&#x1ea1;i c&#x1ee7;a process c&#xf3; &#x111;&#x1b0;&#x1ee3;c quy&#x1ec1;n truy c&#x1ead;p v&#xe0;o file &#x111;&#xf3; hay kh&#xf4;ng. Do &#x111;&#xf3; vi&#x1ec7;c thay &#x111;&#x1ed5;i user-id v&#xe0; group id c&#x1ee7;a process s&#x1ebd; l&#xe0;m thay &#x111;&#x1ed5;i quy&#x1ec1;n c&#x1ee7;a t&#x1ea5;t c&#x1ea3; c&#xe1;c c&#xe2;u l&#x1ec7;nh trong process."/>
<node CREATED="1558938789169" ID="ID_1878220460" MODIFIED="1558950052093" TEXT="Th&#xf4;ng th&#x1b0;&#x1edd;ng trong c&#xe1;c h&#x1ec7; th&#x1ed1;ng embedded, ch&#xfa;ng ta s&#x1eed; d&#x1ee5;ng duy nh&#x1ea5;t root user &#x111;&#x1ec3; login v&#xe0;o h&#x1ec7; th&#x1ed1;ng."/>
</node>
<node CREATED="1558938831785" ID="ID_1370212665" MODIFIED="1558938834069" TEXT="Th&#x1ef1;c h&#xe0;nh">
<node CREATED="1558938845495" ID="ID_1612014993" MODIFIED="1558938851628" TEXT="D&#xf9;ng user A &#x111;&#x1ec3; call ch&#x1b0;&#x1a1;ng tr&#xec;nh C, trong ch&#x1b0;&#x1a1;ng tr&#xec;nh C chuy&#x1ec3;n sang user B, sau &#x111;&#xf3; ch&#x1b0;&#x1a1;ng tr&#xec;nh s&#x1ebd; t&#x1ea1;o file m&#x1edb;i v&#xe0; file &#x111;&#xf3; ph&#x1ea3;i thu&#x1ed9;c quy&#x1ec1;n s&#x1edf; h&#x1eef;u l&#xe0; user B"/>
</node>
<node CREATED="1543560996668" ID="ID_1418183827" MODIFIED="1558938906616" TEXT="Ng&#xf4;n ng&#x1eef; th&#xf4;ng d&#x1ecb;ch">
<node CREATED="1543561065452" ID="ID_516321923" MODIFIED="1558950114974" TEXT="Ng&#xf4;n ng&#x1eef; bi&#xea;n d&#x1ecb;ch">
<node CREATED="1558938994680" ID="ID_1345060295" MODIFIED="1558939035261" TEXT="L&#xe0; ng&#xf4;n ng&#x1eef; &#x111;&#x1b0;&#x1ee3;c d&#x1ecb;ch ra m&#xe3; assembly. CPU s&#x1ebd; n&#x1ea1;p c&#xe1;c &#x111;o&#x1ea1;n m&#xe3; assembly &#x111;&#xf3; v&#xe0;o &#x111;&#x1ec3; th&#x1ef1;c hi&#x1ec7;n."/>
</node>
<node CREATED="1543561011956" ID="ID_677297191" MODIFIED="1558950123109" TEXT="Ng&#xf4;n ng&#x1eef; th&#xf4;ng d&#x1ecb;ch">
<node CREATED="1558939038033" ID="ID_1813701723" MODIFIED="1558939162174" TEXT="Code kh&#xf4;ng &#x111;&#x1b0;&#x1ee3;c d&#x1ecb;ch ra m&#xe3; assembly. Thay v&#xe0;o &#x111;&#xf3;, t&#x1eeb;ng d&#xf2;ng code &#x111;&#x1b0;&#x1ee3;c m&#x1ed9;t ch&#x1b0;&#x1a1;ng tr&#xec;nh trung gian &#x111;&#x1ecd;c v&#xe0; th&#x1ef1;c hi&#x1ec7;n. C&#xe1;c ch&#x1b0;&#x1a1;ng tr&#xec;nh trung gian &#x111;&#xf3; &#x111;&#x1b0;&#x1ee3;c vi&#x1ebf;t b&#x1eb1;ng ng&#xf4;n ng&#x1eef; bi&#xea;n d&#x1ecb;ch."/>
</node>
<node CREATED="1543561071796" ID="ID_1221454640" MODIFIED="1558950280605" TEXT="Header c&#x1ee7;a file ch&#x1b0;&#x1a1;ng tr&#xec;nh">
<node CREATED="1543561099013" ID="ID_47631943" MODIFIED="1543561100120" TEXT="#! pathname [ optional-argument ]"/>
<node CREATED="1543561127212" ID="ID_1900976116" MODIFIED="1543561138664" TEXT="#! /bin/sh"/>
<node CREATED="1558939216000" ID="ID_579363764" MODIFIED="1558939382421" TEXT="T&#x1ea5;t c&#x1ea3; c&#xe1;c ch&#x1b0;&#x1a1;ng tr&#xec;nh trong Linux &#x111;&#x1ec1;u c&#x1ea7;n c&#xf3; header &#x1edf; &#x111;&#x1ea7;u &#x111;&#x1ec3; ch&#x1ec9; &#x111;&#x1ecb;nh cho OS c&#xe1;ch th&#x1ef1;c thi m&#xec;nh. C&#xe1;c ch&#x1b0;&#x1a1;ng tr&#xec;nh vi&#x1ebf;t b&#x1eb1;ng ng&#xf4;n ng&#x1eef; bi&#xea;n d&#x1ecb;ch nh&#x1b0; C s&#x1ebd; c&#xf3; header g&#x1ed3;m ch&#x1eef; ELF &#x1edf; &#x111;&#x1ea7;u. C&#xe1;c ch&#x1b0;&#x1a1;ng tr&#xec;nh vi&#x1ebf;t b&#x1eb1;ng ng&#xf4;n ng&#x1eef; th&#xf4;ng &#x111;&#x1ecb;ch c&#xf3; header l&#xe0; &#x111;&#x1b0;&#x1edd;ng d&#x1eab;n &#x111;&#x1ebf;n ch&#x1b0;&#x1a1;ng tr&#xec;nh s&#x1ebd; th&#xf4;ng d&#x1ecb;ch m&#xec;nh nh&#x1b0; sh,..."/>
</node>
<node CREATED="1543561265028" ID="ID_106201131" MODIFIED="1543561286088" TEXT="Set quy&#x1ec1;n execute cho file th&#xf4;ng d&#x1ecb;ch"/>
<node CREATED="1558950163473" ID="ID_1110624639" MODIFIED="1558950164037" TEXT="Ch&#x1b0;&#x1a1;ng tr&#xec;nh th&#xf4;ng d&#x1ecb;ch d&#x1ec5; l&#x1ed7;i h&#x1a1;n bi&#xea;n d&#x1ecb;ch Ch&#x1b0;&#x1a1;ng tr&#xec;nh th&#xf4;ng d&#x1ecb;ch c&#xf3; kh&#x1ea3; n&#x103;ng ch&#x1ecb;u l&#x1ed7;i t&#x1ed1;t h&#x1a1;n bi&#xea;n d&#x1ecb;ch. "/>
</node>
<node CREATED="1543561228228" ID="ID_919259397" MODIFIED="1543561918901" TEXT="C&#xe1;c file th&#xf4;ng d&#x1ecb;ch">
<node CREATED="1543561240227" ID="ID_1105092488" MODIFIED="1543561258160" TEXT="Copy script trong slide v&#xe0; ch&#x1ea1;y th&#x1eed;"/>
<node CREATED="1543561298971" ID="ID_408199325" MODIFIED="1558939417494" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C c&#xf3; t&#xea;n l&#xe0; HocLinux_sh v&#xe0; d&#xf9;ng n&#xf3; th&#xf4;ng d&#x1ecb;ch cho script tr&#xea;n"/>
<node CREATED="1558939533977" ID="ID_404792062" MODIFIED="1558939673798" TEXT="M&#x1ed7;i khi user ch&#x1ea1;y 1 file source code th&#xf4;ng d&#x1ecb;ch nh&#x1b0; shell script th&#xec; OS s&#x1ebd; truy&#x1ec1;n &#x111;&#x1b0;&#x1edd;ng d&#x1eab;n c&#x1ee7;a file source code &#x111;&#x1ebf;n cho ch&#x1b0;&#x1a1;ng tr&#xec;nh th&#xf4;ng d&#x1ecb;ch. Ngo&#xe0;i ra OS set bi&#x1ebf;n m&#xf4;i tr&#x1b0;&#x1edd;ng l&#xe0; working directory c&#xf9;ng folder v&#x1edb;i file source code, do &#x111;&#xf3; ch&#x1b0;&#x1a1;ng tr&#xec;nh th&#xf4;ng d&#x1ecb;ch c&#xf3; th&#x1ec3; bi&#x1ebf;t file source code m&#xe0; m&#xec;nh c&#x1ea7;n th&#xf4;ng d&#x1ecb;ch n&#x1eb1;m &#x1edf; &#x111;&#xe2;u."/>
</node>
<node CREATED="1543561922531" ID="ID_1973138093" MODIFIED="1543563279766" TEXT="Run command line trong C">
<node CREATED="1543561935275" ID="ID_1920573862" MODIFIED="1543561969296" TEXT="int system(const char *command)"/>
<node CREATED="1543561974810" ID="ID_1782325355" MODIFIED="1543561986344" TEXT="Cho ph&#xe9;p th&#x1ef1;c hi&#x1ec7;n 1 c&#xe2;u l&#x1ec7;nh trong C"/>
<node CREATED="1543562028230" ID="ID_405913598" MODIFIED="1558940170790" TEXT="Fork ch&#x1b0;&#x1a1;ng tr&#xec;nh hi&#x1ec7;n t&#x1ea1;i v&#xe0; d&#xf9;ng ch&#x1b0;&#x1a1;ng tr&#xec;nh con &#x111;&#x1ec3; exec command line."/>
</node>
<node CREATED="1543562756234" ID="ID_1805416282" MODIFIED="1543564771606" TEXT="B&#xe0;i t&#x1ead;p">
<node CREATED="1543562869411" ID="ID_1646788789" MODIFIED="1543562906622" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh C s&#x1eed; d&#x1ee5;ng system() &#x111;&#x1ec3; up/down v&#xe0; set ip cho port m&#x1ea1;ng"/>
<node CREATED="1543562909905" ID="ID_1155091804" MODIFIED="1543563114791" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh s&#x1eed; d&#x1ee5;ng h&#xe0;m fork &#x111;&#x1ec3; t&#x1ea1;o ra ch&#x1b0;&#x1a1;ng tr&#xec;nh con, trong ch&#x1b0;&#x1a1;ng tr&#xec;nh con run c&#xe2;u l&#x1ec7;nh ls v&#xe0; ghi out v&#xe0;o 1 file. Ch&#x1b0;&#x1a1;ng tr&#xec;nh cha check tr&#x1ea1;ng th&#xe1;i tr&#x1ea3; v&#x1ec1; n&#x1ebf;u l&#xe0; success th&#xec; &#x111;&#x1ecd;c t&#x1eeb; file v&#xe0; in ra m&#xe0;n h&#xec;nh k&#x1ebf;t qu&#x1ea3;."/>
</node>
</node>
</node>
<node CREATED="1542941408435" ID="ID_131515611" MODIFIED="1542941413469" POSITION="left" TEXT="Gi&#x1edb;i thi&#x1ec7;u">
<node CREATED="1542941424531" ID="ID_390681621" MODIFIED="1542941494736" TEXT="Trong b&#xe0;i n&#xe0;y ch&#xfa;ng ta s&#x1ebd; c&#xf9;ng t&#xec;m hi&#x1ec3;u v&#x1ec1; 1 kh&#xe1;i ni&#x1ec7;m c&#x1a1; b&#x1ea3;n trong h&#x1ec7; &#x111;i&#x1ec1;u h&#xe0;nh - process. Ch&#xfa;ng ta s&#x1ebd; c&#xf9;ng t&#xec;m hi&#x1ec3;u c&#xe1;ch process &#x111;&#x1b0;&#x1ee3;c sinh ra, ho&#x1ea1;t &#x111;&#x1ed9;ng v&#xe0; ch&#x1ebf;t &#x111;i nh&#x1b0; th&#x1ebf; n&#xe0;o. Ngo&#xe0;i ra ch&#xfa;ng ta s&#x1ebd; t&#xec;m hi&#x1ec3;u v&#x1ec1; m&#xf4;i tr&#x1b0;&#x1edd;ng xung quanh c&#x1ee7;a 1 process"/>
</node>
<node CREATED="1542941289268" ID="ID_331597873" MODIFIED="1542941291864" POSITION="left" TEXT="M&#xf4;i tr&#x1b0;&#x1edd;ng ho&#x1ea1;t &#x111;&#x1ed9;ng c&#x1ee7;a process">
<node CREATED="1542941293035" ID="ID_1559014252" MODIFIED="1542941353805" TEXT="M&#x1ed9;t process khi ch&#x1ea1;y lu&#xf4;n c&#xf3; c&#xe1;c y&#x1ebf;u t&#x1ed1; kh&#xe1;c &#x1ea3;nh h&#x1b0;&#x1edf;ng, nh&#x1eef;ng y&#x1ebf;u t&#x1ed1; &#x111;&#xf3; &#x111;&#x1ebf;n t&#x1eeb; b&#xea;n ngo&#xe0;i kh&#xf4;ng ph&#x1ea3;i &#x111;&#x1ebf;n t&#x1eeb; source code c&#x1ee7;a ch&#xfa;ng ta. V&#xed; d&#x1ee5; nh&#x1b0; quy&#x1ec1;n c&#x1ee7;a process, c&#xe1;c tham s&#x1ed1; m&#xf4;i tr&#x1b0;&#x1edd;ng, ..."/>
<node CREATED="1542941365937" ID="ID_1838408938" MODIFIED="1542941404677" TEXT="Trong nh&#x1eef;ng slide ti&#x1ebf;p theo ch&#xfa;ng ta s&#x1ebd; c&#xf9;ng t&#xec;m hi&#x1ec3;u v&#x1ec1; c&#xe1;c th&#xf4;ng s&#x1ed1; &#x111;&#xf3;"/>
</node>
<node CREATED="1542942043171" ID="ID_697111446" MODIFIED="1542942048309" POSITION="left" TEXT="K&#x1ebf;t th&#xfa;c ch&#x1b0;&#x1a1;ng tr&#xec;nh">
<node CREATED="1542942049066" ID="ID_1125752547" MODIFIED="1542942131255" TEXT="M&#x1ed7;i khi ch&#x1b0;&#x1a1;ng tr&#xec;nh xin c&#x1ea5;p ph&#xe1;t b&#x1ea5;t c&#x1ee9; t&#xe0;i nguy&#xea;n n&#xe0;o th&#xec; h&#x1ec7; &#x111;i&#x1ec1;u h&#xe0;nh &#x111;&#x1ec1;u l&#x1b0;u th&#xf4;ng tin l&#x1ea1;i, th&#xf4;ng tin &#x111;&#xf3; &#x111;&#x1b0;&#x1ee3;c ghi trong struct process descriptor c&#x1ee7;a t&#x1eeb;ng ch&#x1b0;&#x1a1;ng tr&#xec;nh. Do &#x111;&#xf3; khi ch&#x1b0;&#x1a1;ng tr&#xec;nh k&#x1ebf;t th&#xfa;c, h&#x1ec7; &#x111;i&#x1ec1;u h&#xe0;nh c&#xf3; c&#xe1;c th&#xf4;ng tin v&#x1ec1; t&#xe0;i nguy&#xea;n m&#xe0; ch&#x1b0;&#x1a1;ng tr&#xec;nh &#x111;&#xe3; c&#x1ea5;p ph&#xe1;t, t&#x1eeb; &#x111;&#xf3; c&#xf3; th&#x1ec3; gi&#x1ea3;i ph&#xf3;ng ch&#xfa;ng."/>
</node>
<node CREATED="1542945495952" ID="ID_1515851909" MODIFIED="1542945506900" POSITION="left" TEXT="Environment list"/>
<node CREATED="1542952924155" ID="ID_763511503" MODIFIED="1542952925209" POSITION="left" TEXT="Terminal login">
<node CREATED="1542952925900" ID="ID_849781402" MODIFIED="1542952942185" TEXT="V&#xed; d&#x1ee5; cho m&#x1ecd;i ng&#x1b0;&#x1edd;i nh&#xec;n terminal trong ch&#x1ebf; &#x111;&#x1ed9; graphic"/>
</node>
<node CREATED="1542953605491" ID="ID_1558894357" MODIFIED="1542953606344" POSITION="left" TEXT="Background and force ground process">
<node CREATED="1542953607259" ID="ID_1518428011" MODIFIED="1542953624584" TEXT="V&#xed; d&#x1ee5; cho m&#x1ecd;i ng&#x1b0;&#x1edd;i th&#x1ea5;y background v&#xe0; force group tr&#xea;n terminal"/>
</node>
</node>
</map>
