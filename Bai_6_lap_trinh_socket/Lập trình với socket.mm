<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1545363020903" ID="ID_623331877" MODIFIED="1545363035218" TEXT="L&#x1ead;p tr&#xec;nh v&#x1edb;i socket">
<node CREATED="1545363042591" ID="ID_846118886" MODIFIED="1545363044339" POSITION="right" TEXT="Agenda">
<node CREATED="1564478158111" ID="ID_164083122" MODIFIED="1564478159237" TEXT="Packet flow diagram"/>
<node CREATED="1564478165237" ID="ID_874406067" MODIFIED="1564478166144" TEXT="Socket overview"/>
<node CREATED="1564478166694" ID="ID_1671747918" MODIFIED="1564478174857" TEXT="Programming with socket"/>
<node CREATED="1564478482582" ID="ID_1731446301" MODIFIED="1564478483379" TEXT="Th&#x1ef1;c h&#xe0;nh"/>
</node>
<node CREATED="1545366574706" ID="ID_1000190474" MODIFIED="1564477995686" POSITION="right" TEXT="Packet flow diagram"/>
<node CREATED="1545366554480" ID="ID_566849575" MODIFIED="1545366565302" POSITION="right" TEXT="Socket overview">
<node CREATED="1564392503485" ID="ID_187631487" MODIFIED="1564394607460" TEXT="Socket l&#xe0; c&#xe1;c file &#x1edf; d&#x1ea1;ng endpoint, khi ghi data v&#xe0;o 1 &#x111;&#x1ea7;u th&#xec; data s&#x1ebd; &#x111;&#x1b0;&#x1ee3;c g&#x1eed;i sang 1 ho&#x1eb7;c nhi&#x1ec1;u &#x111;&#x1ea7;u kh&#xe1;c."/>
<node CREATED="1564394726016" ID="ID_1393337564" MODIFIED="1564394751076" TEXT="C&#xe1;c v&#x1edb;i c&#xe1;c file th&#xf4;ng th&#x1b0;&#x1edd;ng, socket cho ph&#xe9;p data &#x111;&#x1b0;&#x1ee3;c g&#x1eed;i ra kh&#x1ecf;i m&#xe1;y t&#xed;nh &#x111;&#x1ec3; &#x111;i v&#xe0;o m&#x1ea1;ng internet"/>
</node>
<node CREATED="1545366677959" ID="ID_1716639901" MODIFIED="1545366705809" POSITION="right" TEXT="Create a socket">
<node CREATED="1545370232425" ID="ID_770052981" MODIFIED="1545370233888" TEXT="#include &lt;sys/socket.h&gt;"/>
<node CREATED="1545370245571" ID="ID_173321234" MODIFIED="1545370246607" TEXT="int socket(int domain, int type, int protocol);">
<node CREATED="1564473982986" ID="ID_172756862" MODIFIED="1564474012145" TEXT="Gi&#xe1; tr&#x1ecb; tr&#x1ea3; v&#x1ec1; s&#x1ebd; l&#xe0; file descriptor gi&#x1ed1;ng v&#x1edb;i h&#xe0;m open"/>
<node CREATED="1564474314537" ID="ID_822465448" MODIFIED="1564474337153" TEXT="Tham s&#x1ed1; domain s&#x1ebd; define m&#x1ed9;t c&#xe1;ch chung nh&#x1ea5;t v&#x1ec1; ph&#x1b0;&#x1a1;ng th&#x1ee9;c giao ti&#x1ebf;p"/>
<node CREATED="1564474401672" ID="ID_815471774" MODIFIED="1564474417474" TEXT="Tham s&#x1ed1; type s&#x1ebd; &#x111;&#x1ecb;nh ngh&#x129;a c&#xe1;ch truy&#x1ec1;n d&#x1eef; li&#x1ec7;u"/>
<node CREATED="1564474483004" ID="ID_448023093" MODIFIED="1564474495038" TEXT="Tham s&#x1ed1; protocol &#x111;&#x1ecb;nh ngh&#x129;a chu&#x1ea9;n giao ti&#x1ebf;p"/>
</node>
</node>
<node CREATED="1564474612463" ID="ID_1807168390" MODIFIED="1564475482789" POSITION="right" TEXT="Address bytes ordering">
<node CREATED="1564474631021" ID="ID_635452047" MODIFIED="1564474677411" TEXT="C&#xe1;c m&#xe1;y t&#xed;nh trong m&#x1ea1;ng c&#xf3; th&#x1ec3; s&#x1eed; d&#x1ee5;ng ki&#x1ec3;u format d&#x1eef; li&#x1ec7;u theo little endian ho&#x1eb7;c big endian">
<node CREATED="1564474681295" ID="ID_1407788425" MODIFIED="1564474714292" TEXT="C&#x1ea7;n 1 chu&#x1ea9;n order d&#x1eef; li&#x1ec7;u chung trong network &#x111;&#x1ec3; t&#x1ea5;t c&#x1ea3; c&#xf3; th&#x1ec3; hi&#x1ec3;u &#x111;&#x1b0;&#x1ee3;c."/>
</node>
<node CREATED="1564474801927" ID="ID_1284577707" MODIFIED="1564474846528" TEXT="C&#xe1;c h&#xe0;m convert order c&#x1ee7;a data t&#x1eeb; m&#xe1;y t&#xed;nh sang network">
<node CREATED="1564474850884" ID="ID_1954341250" MODIFIED="1564474862638" TEXT="uint32_t htonl(uint32_t hostint32)"/>
<node CREATED="1564474875841" ID="ID_1561555052" MODIFIED="1564474876545" TEXT="uint16_t ntohs(uint16_t netint16)"/>
</node>
</node>
<node CREATED="1564475483269" ID="ID_250907135" MODIFIED="1564475487786" POSITION="right" TEXT="Address format"/>
<node CREATED="1564475553247" ID="ID_1484793526" MODIFIED="1564475565858" POSITION="right" TEXT="G&#xe1;n &#x111;&#x1ecb;a ch&#x1ec9; cho socket">
<node CREATED="1564475767142" ID="ID_915221139" MODIFIED="1564475879000" TEXT="Sau khi g&#xe1;n &#x111;&#x1ecb;a ch&#x1ec9; cho socket, m&#x1ed7;i khi ghi data xu&#x1ed1;ng socket file, data s&#x1ebd; &#x111;&#x1b0;&#x1ee3;c &#x111;&#xf3;ng g&#xf3;i k&#xe8;m &#x111;&#x1ecb;a ch&#x1ec9; v&#xe0; &#x111;&#x1b0;&#x1ee3;c ph&#xe2;n lu&#x1ed3;ng &#x111;&#x1ec3; g&#x1eed;i &#x111;&#x1ebf;n m&#xe1;y &#x111;&#xed;ch."/>
<node CREATED="1564475884017" ID="ID_1214856264" MODIFIED="1564475894468" TEXT="int bind(int sockfd, const struct sockaddr *addr, socklen_t len)"/>
<node CREATED="1564476055139" ID="ID_1506937133" MODIFIED="1564476111095" TEXT="Sau khi g&#xe1;n &#x111;&#x1ecb;a ch&#x1ec9;, socket s&#x1ebd; &#x111;&#x1b0;&#x1ee3;c bind v&#xe0;o network interface c&#x1ee7;a port, b&#x1ea3;n tin t&#x1eeb; socket &#x111;i ra ngo&#xe0;i s&#x1ebd; th&#xf4;ng qua interface &#x111;&#xf3;."/>
</node>
<node CREATED="1564476280931" ID="ID_1560660869" MODIFIED="1564476286120" POSITION="right" TEXT="Thi&#x1ebf;t l&#x1ead;p k&#x1ebf;t n&#x1ed1;i">
<node CREATED="1564476330354" ID="ID_705005272" MODIFIED="1564476412421" TEXT="&#x110;&#x1ed1;i v&#x1edb;i 1 s&#x1ed1; ph&#x1b0;&#x1a1;ng th&#x1ee9;c truy&#x1ec1;n nh&#x1ead;n nh&#x1b0; SOCK_STREAM ho&#x1eb7;c SOCK_SEQPACKET, tr&#x1b0;&#x1edb;c khi d&#x1eef; li&#x1ec7;u &#x111;&#x1b0;&#x1ee3;c g&#x1eed;i &#x111;i th&#xec; 2 socket c&#x1ea7;n thi&#x1ebf;t l&#x1ead;p 1 k&#x1ebf;t n&#x1ed1;i tr&#x1b0;&#x1edb;c."/>
<node CREATED="1564476413722" ID="ID_1106784529" MODIFIED="1564476445841" TEXT="Trong m&#xf4; h&#xec;nh client server th&#xec; client s&#x1ebd; l&#xe0; ng&#x1b0;&#x1edd;i ch&#x1ee7; &#x111;&#x1ed9;ng k&#x1ebf;t n&#x1ed1;i tr&#x1b0;&#x1edb;c.">
<node CREATED="1564476446201" ID="ID_532613030" MODIFIED="1564476447690" TEXT="int connect(int sockfd, const struct sockaddr *addr, socklen_t len)"/>
</node>
<node CREATED="1564476492271" ID="ID_1331959186" MODIFIED="1564476513088" TEXT="Server s&#x1ebd; l&#xe0; ng&#x1b0;&#x1edd;i ch&#x1ee7; &#x111;&#x1ed9;ng l&#x1eaf;ng nghe k&#x1ebf;t n&#x1ed1;i do client g&#x1eed;i &#x111;&#x1ebf;n">
<node CREATED="1564476535966" ID="ID_349919136" MODIFIED="1564479576420" STYLE="fork" TEXT="int listen(int sockfd, int backlog)"/>
</node>
<node CREATED="1564477585343" ID="ID_1130655259" MODIFIED="1564477642652" TEXT="M&#x1ed7;i khi c&#xf3; connection request g&#x1eed;i t&#x1eeb; client, server s&#x1ebd; quy&#x1ebf;t &#x111;&#x1ecb;nh c&#xf3; ch&#x1ea5;p nh&#x1ead;n k&#x1ebf;t n&#x1ed1;i hay kh&#xf4;ng">
<node CREATED="1564477662314" ID="ID_25044377" MODIFIED="1564477663799" TEXT="int accept(int sockfd, struct sockaddr *restrict addr, socklen_t *restrict len);"/>
</node>
</node>
<node CREATED="1564477694676" ID="ID_1394553497" MODIFIED="1564477702914" POSITION="right" TEXT="G&#x1eed;i nh&#x1ead;n d&#x1eef; li&#x1ec7;u">
<node CREATED="1564477705226" ID="ID_791019545" MODIFIED="1564477735819" TEXT="Sau khi k&#x1ebf;t n&#x1ed1;i &#x111;&#x1b0;&#x1ee3;c thi&#x1ebf;t l&#x1ead;p, d&#x1eef; li&#x1ec7;u c&#xf3; th&#x1ec3; &#x111;&#x1b0;&#x1ee3;c g&#x1eed;i nh&#x1ead;n th&#xf4;ng qua vi&#x1ec7;c &#x111;&#x1ecd;c ghi v&#xe0;o socket file gi&#x1ed1;ng nh&#x1b0; file b&#xec;nh th&#x1b0;&#x1edd;ng"/>
<node CREATED="1564477756797" ID="ID_1035086063" MODIFIED="1564477782487" TEXT="OS thi&#x1ebf;t k&#x1ebf; ri&#xea;ng 1 s&#x1ed1; h&#xe0;m chuy&#xea;n d&#xf9;ng g&#x1eed;i nh&#x1ead;n d&#x1eef; li&#x1ec7;u t&#x1eeb; socket">
<node CREATED="1564477790475" ID="ID_1833965547" MODIFIED="1564477791663" TEXT="ssize_t send(int sockfd, const void *buf, size_t nbytes, int flags)"/>
<node CREATED="1564477794291" ID="ID_172011200" MODIFIED="1564477811485" TEXT="ssize_t recv(int sockfd, void *buf, size_t nbytes, int flags)"/>
</node>
</node>
<node CREATED="1545371856250" ID="ID_1625488844" MODIFIED="1545371885599" POSITION="right" TEXT="S&#x1a1; &#x111;&#x1ed3; setup socket tr&#xea;n sever v&#xe0; client"/>
<node CREATED="1545371964660" ID="ID_675834976" MODIFIED="1545371973096" POSITION="right" TEXT="Th&#x1ef1;c h&#xe0;nh">
<node CREATED="1545371974028" ID="ID_921784306" MODIFIED="1545371992447" TEXT="Vi&#x1ebf;t 1 ch&#x1b0;&#x1a1;ng tr&#xec;nh chat theo m&#xf4; h&#xec;nh client server. C&#x1ea3; 2 ch&#x1ea1;y c&#xf9;ng tr&#xea;n 1 m&#xe1;y t&#xed;nh"/>
<node CREATED="1564478221396" ID="ID_515116161" MODIFIED="1564478246539" TEXT="Vi&#x1ebf;t ch&#x1b0;&#x1a1;ng tr&#xec;nh chat client server cho ph&#xe9;p chat trong m&#x1ea1;ng Lan"/>
<node CREATED="1564478247168" ID="ID_1679476885" MODIFIED="1564478262676" TEXT="Vi&#x1ebf;t ch&#x1b0;&#x1a1;ng tr&#xec;nh cho ph&#xe9;p g&#x1eed;i nh&#x1ead;n file t&#x1eeb; nh&#xe0; v&#xe0; c&#xf4;ng ty"/>
</node>
</node>
</map>
