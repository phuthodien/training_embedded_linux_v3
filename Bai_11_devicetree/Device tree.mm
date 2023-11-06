<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1565236614062" ID="ID_1523886527" MODIFIED="1565689069811" TEXT="Device tree">
<node CREATED="1565689885474" ID="ID_1761489170" MODIFIED="1565689900269" POSITION="right" TEXT="Introduction">
<node CREATED="1565689936592" ID="ID_1578412021" MODIFIED="1565689982221" TEXT="S&#x1eed; d&#x1ee5;ng ng&#xf4;n ng&#x1eef; XML &#x111;&#x1ec3; m&#xf4; t&#x1ea3; ph&#x1ea7;n c&#x1ee9;ng"/>
<node CREATED="1565689982977" ID="ID_660273542" MODIFIED="1565689995141" TEXT="C&#xe1;c &#x111;&#x1eb7;c t&#x1ea3; ph&#x1ea7;n c&#x1ee9;ng t&#x1ead;p trung 1 n&#x1a1;i">
<node CREATED="1565689995703" ID="ID_814108269" MODIFIED="1565690000564" TEXT="D&#x1ec5; thay &#x111;&#x1ed5;i khi c&#x1ea7;n"/>
</node>
</node>
<node CREATED="1565690109314" ID="ID_528294875" MODIFIED="1565756710351" POSITION="right" TEXT="Device tree advantage">
<node CREATED="1565690123841" ID="ID_292165615" MODIFIED="1565762983075" TEXT="Simple to change the configuration"/>
<node CREATED="1565690131352" ID="ID_930182385" MODIFIED="1565762989657" TEXT="Easily add support for new hardware"/>
<node CREATED="1565690138622" ID="ID_722248455" MODIFIED="1565690138956" TEXT="Can reuse and over ride existing .dots files "/>
<node CREATED="1565690139992" ID="ID_337539364" MODIFIED="1565690147868" TEXT="Easy to read and understand descriptions of hardware"/>
</node>
<node CREATED="1565707055521" ID="ID_613316078" MODIFIED="1565707063968" POSITION="right" TEXT="Device tree building">
<node CREATED="1565707068022" ID="ID_463647315" MODIFIED="1565707091445" TEXT="C&#xe1;c file dtsi">
<node CREATED="1565707094065" ID="ID_535144676" MODIFIED="1565707184452" TEXT="Ch&#x1ee9;a c&#xe1;c th&#xf4;ng tin chung c&#x1ee7;a SoC"/>
</node>
<node CREATED="1565707186315" ID="ID_610855107" MODIFIED="1565763264215" TEXT="C&#xe1;c file dts">
<node CREATED="1565707197469" ID="ID_1959065885" MODIFIED="1565707217865" TEXT="Ch&#x1ee9;a th&#xf4;ng tin private c&#x1ee7;a board"/>
</node>
<node CREATED="1565707219499" ID="ID_1700072194" MODIFIED="1565707223759" TEXT="C&#xe1;c file dtb">
<node CREATED="1565707225913" ID="ID_318576981" MODIFIED="1565707238961" TEXT="&#x110;&#x1b0;&#x1ee3;c compile t&#x1eeb; file dts v&#xe0; dtsi">
<node CREATED="1565707253016" ID="ID_1561256729" MODIFIED="1565763300041" TEXT="make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make dtbs"/>
</node>
<node CREATED="1565707257103" ID="ID_975522246" MODIFIED="1565707268809" TEXT="C&#xf3; th&#x1ec3; d&#x1ecb;ch ng&#x1b0;&#x1ee3;c file dtsi t&#x1eeb; file dtb">
<node CREATED="1565707286044" ID="ID_53673529" MODIFIED="1565707289433" TEXT="dtc -I dtb -O dtsarch/arm/boot/dts imx6dl-sabrelite.dtb &gt;path/to/my_devicetree.dts"/>
</node>
</node>
</node>
<node CREATED="1565690161207" ID="ID_1068217332" MODIFIED="1565763382611" POSITION="right" TEXT="Booting flow">
<node CREATED="1565690167257" ID="ID_1800856621" MODIFIED="1565690169523" TEXT="Boot loader load kernel image and dtb file"/>
<node CREATED="1565690176728" ID="ID_1472539155" MODIFIED="1565690177885" TEXT="Initialize hardware data base"/>
<node CREATED="1565690183920" ID="ID_100148066" MODIFIED="1565763397085" TEXT="Call probe function of all drives"/>
</node>
<node CREATED="1565690406504" ID="ID_604898218" MODIFIED="1565690407646" POSITION="right" TEXT="Device Tree Basic syntax">
<node CREATED="1565690426032" ID="ID_907013806" MODIFIED="1565690440516" TEXT="Device node">
<node CREATED="1565691968808" ID="ID_89895725" MODIFIED="1565691985916" TEXT="&#x110;&#x1b0;&#x1ee3;c &#x111;&#x1ecb;nh ngh&#x129;a cho m&#x1ed9;t device trong system"/>
</node>
<node CREATED="1565691960048" ID="ID_1411996967" MODIFIED="1565691962404" TEXT="Label"/>
<node CREATED="1565690928480" ID="ID_991344890" MODIFIED="1565690948188" TEXT="Quy &#x1b0;&#x1edb;c &#x111;&#x1eb7;t t&#xea;n"/>
<node CREATED="1565690974208" ID="ID_1673869332" MODIFIED="1565690987540" TEXT="Quy &#x1b0;&#x1edb;c &#x111;&#x1eb7;t gi&#xe1; tr&#x1ecb;">
<node CREATED="1565691089520" ID="ID_102970954" MODIFIED="1565691090157" TEXT="string-property = &quot;a string&quot;;"/>
<node CREATED="1565691090616" ID="ID_1921388552" MODIFIED="1565691101100" TEXT="const char *my_string = NULL; of_property_read_string(pdev-&gt;dev.of_node, &quot;string-property&quot;, &amp;my_string);"/>
</node>
<node CREATED="1565691528664" ID="ID_756294807" MODIFIED="1565691529508" TEXT="S&#x1ed1; nguy&#xea;n 32 bit v&#xe0; m&#x1ea3;ng">
<node CREATED="1565691549408" ID="ID_211703969" MODIFIED="1565691549820" TEXT="one-int-property = &lt;197&gt;;"/>
<node CREATED="1565691576072" ID="ID_718581904" MODIFIED="1565691624565" TEXT="int of_property_read_u32(const struct device_node *np, &quot;one-int-property&quot;, u32 index, u32 *out_value)"/>
<node CREATED="1565691593936" ID="ID_1428328105" MODIFIED="1565691594276" TEXT="int-list-property = &lt;1350000 0x54dae47 1250000 1200000&gt;;"/>
<node CREATED="1565691600678" ID="ID_701966691" MODIFIED="1565691644404" TEXT="int of_property_read_u32_array(const struct device_node *np, &quot;int-list-property&quot;, u32 *out_values, size_tsz);"/>
</node>
</node>
<node CREATED="1565707738958" ID="ID_622758420" MODIFIED="1565707940610" POSITION="right" TEXT="&#x110;&#x103;ng k&#xfd; v&#xe0; s&#x1eed; d&#x1ee5;ng device node">
<node CREATED="1565708015217" ID="ID_966074183" MODIFIED="1565708026479" TEXT="&#x110;a s&#x1ed1; s&#x1eed; d&#x1ee5;ng ki&#x1ec3;u of match table">
<node CREATED="1565708046935" ID="ID_193782207" MODIFIED="1565708070954" TEXT="Driver &#x111;&#x103;ng k&#xfd; b&#x1ea3;ng of match table c&#xf3; ch&#x1ee9;a c&#xe1;c chu&#x1ed7;i competible"/>
<node CREATED="1565708071518" ID="ID_292852105" MODIFIED="1565708085737" TEXT="Device node c&#xf3; tr&#x1b0;&#x1edd;ng competible"/>
<node CREATED="1565708086249" ID="ID_510501394" MODIFIED="1565708117831" TEXT="N&#x1ebf;u 2 chu&#x1ed7;i compatible tr&#xf9;ng nhau th&#xec; h&#xe0;m probe c&#x1ee7;a driver &#x111;&#x1b0;&#x1ee3;c g&#x1ecd;i v&#xe0; truy&#x1ec1;n v&#xe0;o con tr&#x1ecf; ch&#x1ee9;a device node"/>
</node>
</node>
<node CREATED="1565707391489" ID="ID_1786471526" MODIFIED="1565707420210" POSITION="right" TEXT="C&#xe1;c template information c&#x1ee7;a device tree">
<node CREATED="1565707425741" ID="ID_595551073" MODIFIED="1565707448611" TEXT="c&#xe1;c c&#xfa; ph&#xe1;p chu&#x1ea9;n">
<node CREATED="1565707450179" ID="ID_1321289950" MODIFIED="1565707473656" TEXT="&#x110;&#x1b0;&#x1ee3;c get ra b&#x1edf;i c&#xe1;c h&#xe0;m trong th&#x1b0; vi&#x1ec7;n of.h"/>
</node>
<node CREATED="1565707475357" ID="ID_1030630061" MODIFIED="1565707484495" TEXT="C&#xe1;c c&#xfa; ph&#xe1;p t&#x1ef1; &#x111;&#x1ecb;nh ngh&#x129;a"/>
<node CREATED="1565708214996" ID="ID_1615622600" MODIFIED="1565708224453" TEXT="C&#xe1;c c&#xfa; ph&#xe1;p h&#x1ed7; tr&#x1ee3; b&#x1edf;i driver code"/>
</node>
<node CREATED="1565708439243" ID="ID_944058456" MODIFIED="1565708440520" POSITION="right" TEXT="c&#xe1;c c&#xfa; ph&#xe1;p chu&#x1ea9;n">
<node CREATED="1565749323897" ID="ID_1205981816" MODIFIED="1565749349539" TEXT="&#x110;&#x1ecb;nh &#x111;&#x1ecb;a ch&#x1ec9; bus">
<node CREATED="1565749351078" ID="ID_867924300" MODIFIED="1565749458785" TEXT="#address-cells = &lt;2&gt;;"/>
<node CREATED="1565749469222" ID="ID_249477584" MODIFIED="1565749469898" TEXT="#size-cells = &lt;2&gt;;"/>
<node CREATED="1565749539510" ID="ID_166625315" MODIFIED="1565749539962" TEXT="reg = &lt;0x0 0x40055000 0x0 0x1000&gt;;"/>
</node>
<node CREATED="1565749711324" ID="ID_260018278" MODIFIED="1565749719850" TEXT="&#x110;&#x1ecb;nh ngh&#x129;a ng&#x1eaf;t">
<node CREATED="1565749722253" ID="ID_1546031706" MODIFIED="1565749724066" TEXT="interrupt-controller"/>
<node CREATED="1565749810790" ID="ID_405629923" MODIFIED="1565749811434" TEXT="consumer">
<node CREATED="1565749924030" ID="ID_1359420508" MODIFIED="1565749937035" TEXT=" interrupts = &lt;0 42 4&gt;;"/>
</node>
</node>
<node CREATED="1565750324572" ID="ID_1785616813" MODIFIED="1565750325231" TEXT="https://events.static.linuxfound.org/sites/events/files/slides/petazzoni-device-tree-dummies.pdf"/>
<node CREATED="1565750935074" ID="ID_1961117896" MODIFIED="1565750955122" TEXT="/include/linux/of.h"/>
</node>
<node CREATED="1565708448035" ID="ID_733166875" MODIFIED="1565708448754" POSITION="right" TEXT="C&#xe1;c c&#xfa; ph&#xe1;p t&#x1ef1; &#x111;&#x1ecb;nh ngh&#x129;a">
<node CREATED="1565707491712" ID="ID_1890913850" MODIFIED="1565707575598" TEXT="&#x110;&#x1b0;&#x1ee3;c get ra b&#x1edf;i c&#xe1;c h&#xe0;m parser array, value">
<node CREATED="1565707691882" ID="ID_520319672" MODIFIED="1565751121877" TEXT="one-int-property = &lt;197&gt;; int-list-property = &lt;1350000 0x54dae47 1250000 1200000&gt;;"/>
<node CREATED="1565751133583" ID="ID_1070068071" MODIFIED="1565751134012" TEXT="int of_property_read_u32_array(const struct device_node *np, const char *propname, u32 *out_values, size_tsz);"/>
</node>
<node CREATED="1565707576302" ID="ID_1403765455" MODIFIED="1565707594162" TEXT="Driver ph&#x1ea3;i t&#x1ef1; x&#x1eed; l&#xfd; th&#xf4;ng tin t&#x1eeb; d&#x1eef; li&#x1ec7;u th&#xf4;"/>
</node>
<node CREATED="1565708456320" ID="ID_617492557" MODIFIED="1565708456936" POSITION="right" TEXT="C&#xe1;c c&#xfa; ph&#xe1;p h&#x1ed7; tr&#x1ee3; b&#x1edf;i driver code">
<node CREATED="1565751305040" ID="ID_34134261" MODIFIED="1565751320046" TEXT="C&#xe1;c h&#xe0;m parser data n&#x1eb1;m ph&#xe2;n t&#xe1;n &#x1edf; driver core"/>
<node CREATED="1565708413433" ID="ID_1683127603" MODIFIED="1565751359381" TEXT="T&#xec;m hi&#x1ec3;u qua /Documentation/devicetree/bindings"/>
<node CREATED="1565751360940" ID="ID_1321504054" MODIFIED="1565764062651" TEXT="Example">
<node CREATED="1565751402596" ID="ID_647836105" MODIFIED="1565751412018" TEXT="clocks = &lt;&amp;clks S32V234_CLK_CAN0&gt;, &lt;&amp;clks S32V234_CLK_CAN&gt;;"/>
<node CREATED="1565751412756" ID="ID_1820048653" MODIFIED="1565751421771" TEXT="clock-names = &quot;ipg&quot;, &quot;per&quot;;"/>
<node CREATED="1565751422612" ID="ID_103020676" MODIFIED="1565751463145" TEXT="clk_ipg = devm_clk_get(&amp;pdev-&gt;dev, &quot;ipg&quot;);"/>
</node>
</node>
<node CREATED="1565756051836" ID="ID_1279483915" MODIFIED="1565756106576" POSITION="right" TEXT="K&#x1ebf;t h&#x1ee3;p gi&#x1eef;a device tree v&#xe0; code C &#x111;&#x1ec3; define ph&#x1ea7;n c&#x1ee9;ng"/>
</node>
</map>
