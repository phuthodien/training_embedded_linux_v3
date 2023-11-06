<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1546568809328" ID="ID_590599161" MODIFIED="1546569050471" TEXT="shared memory">
<node CREATED="1546569177270" ID="ID_1847817135" MODIFIED="1546569179766" POSITION="right" TEXT="agenda"/>
<node CREATED="1546569761825" ID="ID_547029171" MODIFIED="1546569775621" POSITION="right" TEXT="memory page structure"/>
<node CREATED="1546569817049" ID="ID_757036750" MODIFIED="1546569958375" POSITION="right" TEXT="Library support">
<node CREATED="1546570013850" ID="ID_190483395" MODIFIED="1546570223342" TEXT="shm API">
<node CREATED="1565063328013" ID="ID_1956508256" MODIFIED="1565063328713" TEXT="Old API, support for all Unix like system "/>
</node>
<node CREATED="1546570223937" ID="ID_967811084" MODIFIED="1546570225661" TEXT="mmap">
<node CREATED="1565063336340" ID="ID_739377706" MODIFIED="1565063336944" TEXT="New API, some Unix like system doesn&#x2019;t support. "/>
<node CREATED="1565063342292" ID="ID_302034716" MODIFIED="1565063342937" TEXT="Can use to write in file. "/>
</node>
</node>
<node CREATED="1546570418170" ID="ID_1915306662" MODIFIED="1546570423807" POSITION="right" TEXT="shm API"/>
<node CREATED="1546571028384" ID="ID_216014115" MODIFIED="1546571069401" POSITION="right" TEXT="Sequence diagram to share memory via shm API">
<node CREATED="1565064008364" ID="ID_1872315678" MODIFIED="1565064008880" TEXT="Generate a unique key "/>
<node CREATED="1565064012845" ID="ID_777804339" MODIFIED="1565064013169" TEXT="Alloc physical memory "/>
<node CREATED="1565064016884" ID="ID_361564013" MODIFIED="1565064017280" TEXT="Map shared memory "/>
<node CREATED="1565064021379" ID="ID_1211233018" MODIFIED="1565064021600" TEXT="Unmap shared memory "/>
<node CREATED="1565064040236" ID="ID_1773457533" MODIFIED="1565064040543" TEXT="Destroy shared memory "/>
</node>
<node CREATED="1546571082213" ID="ID_1284850011" MODIFIED="1546571387694" POSITION="right" TEXT="generate a unique key from string">
<node CREATED="1546570832204" ID="ID_1277247113" MODIFIED="1546570833746" TEXT="#include &lt;sys/types.h&gt;"/>
<node CREATED="1546570840709" ID="ID_294337961" MODIFIED="1546570841369" TEXT="#include &lt;sys/ipc.h&gt;"/>
<node CREATED="1546570847254" ID="ID_463582529" MODIFIED="1546570848075" TEXT="key_t ftok(const char *pathname, int proj_id);">
<node CREATED="1546570863479" ID="ID_1446510473" MODIFIED="1546570866525" TEXT="convert a pathname and a project identifier to a key"/>
</node>
</node>
<node CREATED="1546571338154" ID="ID_1557394980" MODIFIED="1565065210129" POSITION="right" TEXT="Alloc physical memory from key">
<node CREATED="1546571414505" ID="ID_1071391690" MODIFIED="1546571415502" TEXT="int shmget(key_t key, size_t size, int shmflg);">
<node CREATED="1546571461297" ID="ID_1794308488" MODIFIED="1565065316777" TEXT="C&#x1ea5;p ph&#xe1;t 1 physical segment cho v&#xf9;ng nh&#x1edb; d&#xf9;ng &#x111;&#x1ec3; chia s&#x1ebb;. N&#x1ebf;u th&#xe0;nh c&#xf4;ng s&#x1ebd; return id c&#x1ee7;a v&#xf9;ng nh&#x1edb; &#x111;&#xf3;."/>
</node>
<node CREATED="1546571516647" ID="ID_1354685507" MODIFIED="1546571517302" TEXT="IPC_CREAT"/>
<node CREATED="1546572618289" ID="ID_1932785813" MODIFIED="1546572618886" TEXT="PROT_READ | PROT_WRITE"/>
<node CREATED="1546571691882" ID="ID_92657878" MODIFIED="1546571701901" TEXT="Permission like a file"/>
</node>
<node CREATED="1546571725200" ID="ID_1354074859" MODIFIED="1546571745765" POSITION="right" TEXT="Map shared memory to process address space">
<node CREATED="1546571779329" ID="ID_505038124" MODIFIED="1546571780038" TEXT="void *shmat(int shmid, const void *shmaddr, int shmflg);"/>
<node CREATED="1546571919455" ID="ID_557473702" MODIFIED="1565065516552" TEXT="shmaddr s&#x1ebd; ch&#x1ec9; &#x111;&#x1ecb;nh start virutal address &#x111;&#x1ec3; t&#xec;m ki&#x1ebf;m v&#xf9;ng mapping">
<node CREATED="1565065458852" ID="ID_1322104049" MODIFIED="1565065459384" TEXT="shmaddr should be NULL"/>
</node>
<node CREATED="1565065781036" ID="ID_1052819342" MODIFIED="1565065782256" TEXT="shmflg">
<node CREATED="1565065785612" ID="ID_1443937510" MODIFIED="1565065806832" TEXT="Ch&#x1ec9; &#x111;&#x1ecb;nh quy&#x1ec1;n c&#x1ee7;a process khi mapping v&#xe0;o shared memory"/>
<node CREATED="1546571954210" ID="ID_1278383028" MODIFIED="1546571954749" TEXT="SHM_RDONLY"/>
</node>
</node>
<node CREATED="1546571996801" ID="ID_260967970" MODIFIED="1546572031526" POSITION="right" TEXT="Unmap shared memory in process address space">
<node CREATED="1546572062073" ID="ID_1805025624" MODIFIED="1546572062965" TEXT="int shmdt(const void *shmaddr);">
<node CREATED="1565074153372" ID="ID_656361426" MODIFIED="1565074179193" TEXT="Unmap virtual address c&#x1ee7;a shared memory ra kh&#x1ecf;i address space c&#x1ee7;a process"/>
</node>
</node>
<node CREATED="1546572270177" ID="ID_559969713" MODIFIED="1546572277685" POSITION="right" TEXT="Destroy shared memory">
<node CREATED="1546572296961" ID="ID_1893250722" MODIFIED="1546572297525" TEXT="int shmctl(int shmid, int cmd, struct shmid_ds *buf);">
<node CREATED="1565074264581" ID="ID_626845159" MODIFIED="1565074283848" TEXT="Th&#x1ef1;c hi&#x1ec7;n thao t&#xe1;c trong tham s&#x1ed1; cmd l&#xea;n v&#xf9;ng nh&#x1edb; shmid"/>
</node>
<node CREATED="1546572328223" ID="ID_1656168425" MODIFIED="1546572336413" TEXT="IPC_RMID">
<node CREATED="1565074288260" ID="ID_1083321804" MODIFIED="1565074334273" TEXT="N&#x1ebf;u cmd truy&#x1ec1;n v&#xe0;o l&#xe0; IPC_RMID th&#xec; v&#xf9;ng shared memory s&#x1ebd; &#x111;&#x1b0;&#x1ee3;c &#x111;&#xe1;nh gi&#x1ea5;u c&#x1ea7;n ph&#x1ea3;i destroy. Sau khi process cu&#x1ed1;i c&#xf9;ng detach kh&#x1ecf;i v&#xf9;ng nh&#x1edb; th&#xec; os s&#x1ebd; free n&#xf3; &#x111;i."/>
</node>
</node>
<node CREATED="1546572081925" ID="ID_1401313608" MODIFIED="1546572086181" POSITION="right" TEXT="Example code"/>
<node CREATED="1546573972417" ID="ID_1566975183" MODIFIED="1546573992901" POSITION="right" TEXT="Practice with shm API">
<node CREATED="1565074369220" ID="ID_1425347796" MODIFIED="1565074373417" TEXT="Vi&#x1ebf;t l&#x1ea1;i &#x1ee9;ng d&#x1ee5;ng chat client server ch&#x1ea1;y tr&#xea;n c&#xf9;ng 1 m&#xe1;y t&#xed;nh. S&#x1eed; d&#x1ee5;ng shared memory &#x111;&#x1ec3; giao ti&#x1ebf;p v&#x1edb;i nhau."/>
</node>
<node CREATED="1546572233601" ID="ID_1301620612" MODIFIED="1546572238990" POSITION="right" TEXT="mmap API"/>
<node CREATED="1546572385289" ID="ID_1384228015" MODIFIED="1546572392389" POSITION="right" TEXT="Sequence diagram to share memory via mmap API">
<node CREATED="1565079771098" ID="ID_773808844" MODIFIED="1565079796145" TEXT="Create file fd"/>
<node CREATED="1565079777698" ID="ID_88768167" MODIFIED="1565079791736" TEXT="Set memory size"/>
<node CREATED="1565079782555" ID="ID_1140020581" MODIFIED="1565079785944" TEXT="Map shared mem to process"/>
<node CREATED="1565079803827" ID="ID_1302849246" MODIFIED="1565079805016" TEXT="Unmap shared mem"/>
<node CREATED="1565079848308" ID="ID_1686165125" MODIFIED="1565079849200" TEXT="remove the shared memory"/>
</node>
<node CREATED="1565078038020" ID="ID_305723848" MODIFIED="1565078050879" POSITION="right" TEXT="Create file fd">
<node CREATED="1565078068964" ID="ID_653492501" MODIFIED="1565078069633" TEXT="#include &lt;sys/shm.h&gt;"/>
<node CREATED="1565078069926" ID="ID_598722345" MODIFIED="1565079977857" TEXT="int shm_fd = shm_open(const char *name, O_CREAT | O_RDRW, 0666)">
<node CREATED="1565078100147" ID="ID_1330750697" MODIFIED="1565078627361" TEXT="Create file fd &#x111;&#x1ec3; &#x111;&#x1ecb;nh danh cho v&#xf9;ng shared memory. File fd c&#xf3; th&#x1ec3; t&#x1ea1;o ra b&#x1eb1;ng c&#xe1;ch open file b&#xec;nh th&#x1b0;&#x1edd;ng, khi &#x111;&#xf3; &#x111;&#x1ecd;c ghi v&#xe0;o fd s&#x1ebd; ghi v&#xe0;o file."/>
<node CREATED="1565078633028" ID="ID_1122592953" MODIFIED="1565078701481" TEXT="N&#x1ebf;u d&#xf9;ng fd &#x111;&#x1ec3; open(/dev/mem) th&#xec; file fd s&#x1ebd; &#x111;&#x1ea1;i di&#x1ec7;n cho v&#xf9;ng nh&#x1edb; v&#x1ead;t l&#xfd;. K&#x1ef9; thu&#x1ead;t n&#xe0;y &#x111;&#x1b0;&#x1ee3;c d&#xf9;ng &#x111;&#x1ec3; t&#x1b0;&#x1a1;ng t&#xe1;c v&#x1edb;i thanh ghi"/>
</node>
</node>
<node CREATED="1565079195148" ID="ID_1409344350" MODIFIED="1565079201609" POSITION="right" TEXT="Set memory size">
<node CREATED="1565079226348" ID="ID_14915259" MODIFIED="1565079226752" TEXT="int ftruncate(int fd, off_t length)">
<node CREATED="1565079231211" ID="ID_1766235463" MODIFIED="1565079269544" TEXT="N&#x1ebf;u file kh&#xf4;ng t&#x1ed3;n t&#x1ea1;i th&#xec; s&#x1ebd; set memory size cho v&#xf9;ng nh&#x1edb; &#x111;&#x1b0;&#x1ee3;c &#x111;&#x1ecb;nh danh b&#x1edf;i file fd"/>
<node CREATED="1565079270028" ID="ID_393808251" MODIFIED="1565079286785" TEXT="N&#x1ebf;u file t&#x1ed3;n t&#x1ea1;i th&#xec; s&#x1ebd; set k&#xed;ch th&#x1b0;&#x1edb;c m&#x1edb;i cho file"/>
<node CREATED="1565079287035" ID="ID_762935468" MODIFIED="1565079311575" TEXT="N&#x1ebf;u fd tr&#x1ecf; v&#xe0;o /dev/mem th&#xec; kh&#xf4;ng c&#x1ea7;n set memory size"/>
</node>
</node>
<node CREATED="1565079328835" ID="ID_1561874135" MODIFIED="1565079332159" POSITION="right" TEXT="Map shared mem to process">
<node CREATED="1565079358900" ID="ID_187913086" MODIFIED="1565079593881" TEXT="void *mmap(void *addr, size_t length, int prot, int flags, int fd, off_t offset)">
<node CREATED="1565079421444" ID="ID_614462850" MODIFIED="1565079448913" TEXT="addr l&#xe0; &#x111;&#x1ecb;a ch&#x1ec9; start virtual &#x111;&#x1ec3; t&#xec;m ki&#x1ebf;m v&#xf9;ng mapping"/>
<node CREATED="1565079598729" ID="ID_568295873" MODIFIED="1565079618273" TEXT="prot s&#x1ebd; ch&#x1ec9; &#x111;&#x1ecb;nh permission c&#x1ee7;a shared memory"/>
<node CREATED="1565079619164" ID="ID_159686336" MODIFIED="1565079629080" TEXT="flag s&#x1ebd; ch&#x1ec9; &#x111;&#x1ecb;nh thu&#x1ed9;c t&#xed;nh c&#x1ee7;a shared memory"/>
</node>
</node>
<node CREATED="1565079648884" ID="ID_1139348376" MODIFIED="1565079653072" POSITION="right" TEXT="Unmap shared mem to process">
<node CREATED="1565079665835" ID="ID_1981542693" MODIFIED="1565079666456" TEXT="int munmap(void *addr, size_t length)">
<node CREATED="1565079675155" ID="ID_1384972226" MODIFIED="1565079701769" TEXT="Ch&#x1ec9; unmap &#x111;&#x1ecb;a ch&#x1ec9; virtual c&#x1ee7;a v&#xf9;ng nh&#x1edb; kh&#x1ecf;i address space c&#x1ee7;a process, v&#xf9;ng nh&#x1edb; physical kh&#xf4;ng b&#x1ecb; free"/>
</node>
</node>
<node CREATED="1565079704940" ID="ID_1543529379" MODIFIED="1565079862576" POSITION="right" TEXT="remove the shared memory ">
<node CREATED="1565079942476" ID="ID_1252096530" MODIFIED="1565079943344" TEXT="int shm_unlink(const char *name)">
<node CREATED="1565079946260" ID="ID_405737740" MODIFIED="1565079961217" TEXT="Remove object created by shm_open"/>
</node>
</node>
<node CREATED="1546573884161" ID="ID_525084506" MODIFIED="1546573896117" POSITION="right" TEXT="Example code"/>
<node CREATED="1546573922049" ID="ID_637434641" MODIFIED="1546573950574" POSITION="right" TEXT="Compare shm and mmap API"/>
<node CREATED="1546573996304" ID="ID_1611302952" MODIFIED="1546574008637" POSITION="right" TEXT="Practice with mmap API">
<node CREATED="1565087844556" ID="ID_1939913894" MODIFIED="1565087845184" TEXT="Vi&#x1ebf;t &#x1ee9;ng d&#x1ee5;ng chat client &#x2013; server tr&#xea;n c&#xf9;ng m&#x1ed9;t m&#xe1;y t&#xed;nh. S&#x1eed; d&#x1ee5;ng mmap &#x111;&#x1ec3; giao ti&#x1ebf;p. C&#xe1;c &#x111;o&#x1ea1;n chat sau khi tho&#xe1;t &#x1ee9;ng d&#x1ee5;ng s&#x1ebd; &#x111;&#x1b0;&#x1ee3;c l&#x1b0;u l&#x1ea1;i tr&#xea;n file">
<node CREATED="1565087850844" ID="ID_904414435" MODIFIED="1565087851304" TEXT="G&#x1ee3;i &#xfd;: N&#xea;n define c&#x1ed1; &#x111;&#x1ecb;nh &#x111;&#x1ed9; d&#xe0;i m&#x1ed7;i l&#x1ea7;n ghi v&#xe0;o shared memory. "/>
</node>
</node>
<node CREATED="1546574022617" ID="ID_70173825" MODIFIED="1546574034685" POSITION="right" TEXT="Home work"/>
</node>
</map>
