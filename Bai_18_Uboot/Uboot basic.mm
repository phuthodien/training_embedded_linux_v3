<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1598691266775" ID="ID_1012717976" MODIFIED="1598691510340" TEXT="Uboot basic">
<node CREATED="1598691449576" ID="ID_1719988469" MODIFIED="1598691458439" POSITION="right" TEXT="Gi&#x1edb;i thi&#x1ec7;u">
<node CREATED="1598691469330" ID="ID_376931208" MODIFIED="1598691474382" TEXT="T&#xe1;c d&#x1ee5;ng c&#x1ee7;a uboot"/>
<node CREATED="1598691474747" ID="ID_1956460043" MODIFIED="1598691481631" TEXT="Flow boot khi c&#xf3; uboot"/>
</node>
<node CREATED="1598691500299" ID="ID_1100313408" MODIFIED="1598691506023" POSITION="right" TEXT="S&#x1eed; d&#x1ee5;ng uboot">
<node CREATED="1598691514076" ID="ID_147464071" MODIFIED="1598691518710" TEXT="Uboot command line"/>
<node CREATED="1598691519779" ID="ID_1374210756" MODIFIED="1598691527047" TEXT="Uboot environment"/>
</node>
<node CREATED="1598691543619" ID="ID_949996422" MODIFIED="1598691548951" POSITION="right" TEXT="Uboot source code flow"/>
<node CREATED="1598691557931" ID="ID_269980226" MODIFIED="1598691566415" POSITION="right" TEXT="Uboot porting for new board">
<node CREATED="1598691569859" ID="ID_388910582" MODIFIED="1598691580198" TEXT="config device tree"/>
<node CREATED="1598691585835" ID="ID_1179826418" MODIFIED="1598691592495" TEXT="uboot driver"/>
<node CREATED="1598691595051" ID="ID_1180709355" MODIFIED="1598691599367" TEXT="uboot command line"/>
<node CREATED="1598691614378" ID="ID_1875922333" MODIFIED="1598691621367" TEXT="Uboot load kernel image"/>
</node>
<node CREATED="1612713336270" ID="ID_854144692" MODIFIED="1612713338079" POSITION="right" TEXT="link">
<node CREATED="1612713339507" ID="ID_1004279725" MODIFIED="1612713340294" TEXT="https://stackoverflow.com/questions/31244862/what-is-the-use-of-spl-secondary-program-loader"/>
<node CREATED="1612713699292" ID="ID_854036444" MODIFIED="1612714319948" TEXT="https://stackoverflow.com/questions/34805383/why-is-mlo-needed-in-boot-step"/>
<node CREATED="1612714320490" ID="ID_439448584" MODIFIED="1612714321141" TEXT="https://lists.denx.de/pipermail/u-boot/2013-December/168481.html"/>
<node CREATED="1612801606220" ID="ID_360302004" MODIFIED="1612801606639" TEXT="https://www.programmersought.com/article/88736743149/"/>
<node CREATED="1612801612586" ID="ID_121966117" MODIFIED="1612801612856" TEXT="https://community.nxp.com/t5/Layerscape/u-boot-source-code-flow-for-LS2085A-QDS-Board/m-p/419612"/>
</node>
<node CREATED="1612803493200" ID="ID_531177015" MODIFIED="1612803494844" POSITION="left" TEXT="note">
<node CREATED="1612803500440" ID="ID_947831136" MODIFIED="1612803532141" TEXT="board_init_f c&#xf3; 2 h&#xe0;m. 1 build ra MLO, 1 build ra uboot.img"/>
<node CREATED="1612905701939" ID="ID_465795970" MODIFIED="1612905727116" TEXT="C&#xe1;c c&#xf4;ng vi&#x1ec7;c chung chung gi&#x1eef;a c&#xe1;c platform nh&#x1b0; malloc &#x111;&#x1b0;&#x1ee3;c uboot cung c&#x1ea5;p API &#x111;&#x1ec3; kh&#x1edf;i t&#x1ea1;o."/>
<node CREATED="1612905846951" ID="ID_630361405" MODIFIED="1612905941812" TEXT="board_fdt_blob_setup khoi tao device tree, device tree th&#xf4;ng th&#x1b0;&#x1edd;ng &#x111;&#x1b0;&#x1ee3;c &#x111;&#xed;nh k&#xe8;m v&#xe0;o cu&#x1ed1;i uboot.img th&#xf4;ng qua _image_binary_end"/>
<node CREATED="1612906515030" ID="ID_710295632" MODIFIED="1612906537379" TEXT="serial_init -&gt; default_serial_console kh&#x1edf;i t&#x1ea1;o serial">
<node CREATED="1612906754119" ID="ID_81087891" MODIFIED="1612906763626" TEXT="U_BOOT_DRIVER register serial driver with uboot"/>
<node CREATED="1612908624892" ID="ID_92818753" MODIFIED="1612908700754" TEXT="omap_serial-&gt;set to stdo device (stdout-path in device tree) -&gt; ns16550_serial_ops"/>
</node>
<node CREATED="1612909548700" ID="ID_1951078981" MODIFIED="1612909559160" TEXT="board_init_f kh&#x1edf;i t&#x1ea1;o r&#x1ea5;t nhi&#x1ec1;u function"/>
</node>
</node>
</map>
