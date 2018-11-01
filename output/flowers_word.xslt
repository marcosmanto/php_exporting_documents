<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <w:document xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:cx="http://schemas.microsoft.com/office/drawing/2014/chartex" xmlns:cx1="http://schemas.microsoft.com/office/drawing/2015/9/8/chartex" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:w16se="http://schemas.microsoft.com/office/word/2015/wordml/symex" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape" mc:Ignorable="w14 w15 w16se wp14">
            <w:body>
                <w:p w:rsidR="000F52B9" w:rsidRDefault="008E50E6" w:rsidP="008E50E6">
                    <w:pPr>
                        <w:pStyle w:val="Ttulo1"/>
                    </w:pPr>
                    <w:r>
                        <w:t>Flower Arrangements</w:t>
                    </w:r>
                    <w:bookmarkStart w:id="0" w:name="_GoBack"/>
                    <w:bookmarkEnd w:id="0"/>
                </w:p>
                <xsl:for-each select="root/row">
                    <w:p w:rsidR="008E50E6" w:rsidRDefault="008E50E6" w:rsidP="008E50E6">
                        <w:pPr>
                            <w:pStyle w:val="Ttulo2"/>
                        </w:pPr>
                        <w:r>
                            <w:t>
                                <xsl:value-of select="title"/>
                            </w:t>
                        </w:r>
                    </w:p>
                    <w:p w:rsidR="008E50E6" w:rsidRPr="008E50E6" w:rsidRDefault="008E50E6" w:rsidP="008E50E6">
                        <w:r w:rsidRPr="008E50E6">
                            <w:rPr>
                                <w:lang w:eastAsia="pt-BR"/>
                            </w:rPr>
                            <w:drawing>
                                <wp:anchor distT="0" distB="0" distL="114300" distR="114300" simplePos="0" relativeHeight="251658240" behindDoc="1" locked="0" layoutInCell="1" allowOverlap="1">
                                    <wp:simplePos x="0" y="0"/>
                                    <wp:positionH relativeFrom="column">
                                        <wp:posOffset>1905</wp:posOffset>
                                    </wp:positionH>
                                    <wp:positionV relativeFrom="paragraph">
                                        <wp:posOffset>2540</wp:posOffset>
                                    </wp:positionV>
                                    <wp:extent cx="1235710" cy="1235710"/>
                                    <wp:effectExtent l="0" t="0" r="2540" b="2540"/>
                                    <wp:wrapSquare wrapText="bothSides"/>
                                    <wp:docPr id="1" name="Imagem 1"/>
                                    <wp:cNvGraphicFramePr>
                                        <a:graphicFrameLocks xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main" noChangeAspect="1"/>
                                    </wp:cNvGraphicFramePr>
                                    <a:graphic xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main">
                                        <a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/picture">
                                            <pic:pic xmlns:pic="http://schemas.openxmlformats.org/drawingml/2006/picture">
                                                <pic:nvPicPr>
                                                    <pic:cNvPr id="1" name="200_arrangement_94972439.jpg"/>
                                                    <pic:cNvPicPr/>
                                                </pic:nvPicPr>
                                                <pic:blipFill>
                                                    <a:blip r:embed="rId6" cstate="print">
                                                        <a:extLst>
                                                            <a:ext uri="">
                                                                <a14:useLocalDpi xmlns:a14="http://schemas.microsoft.com/office/drawing/2010/main" val="0"/>
                                                            </a:ext>
                                                        </a:extLst>
                                                    </a:blip>
                                                    <a:stretch>
                                                        <a:fillRect/>
                                                    </a:stretch>
                                                </pic:blipFill>
                                                <pic:spPr>
                                                    <a:xfrm>
                                                        <a:off x="0" y="0"/>
                                                        <a:ext cx="1235710" cy="1235710"/>
                                                    </a:xfrm>
                                                    <a:prstGeom prst="rect">
                                                        <a:avLst/>
                                                    </a:prstGeom>
                                                </pic:spPr>
                                            </pic:pic>
                                        </a:graphicData>
                                    </a:graphic>
                                </wp:anchor>
                            </w:drawing>
                        </w:r>
                        <w:r w:rsidRPr="008E50E6">
                            <w:rPr>
                                <w:b/>
                                <w:sz w:val="28"/>
                                <w:szCs w:val="28"/>
                            </w:rPr>
                            <w:t>$<xsl:value-of select="price"/></w:t>
                        </w:r>
                    </w:p>
                    <xsl:for-each select="description/p">
                        <w:p w:rsidR="008E50E6" w:rsidRDefault="008E50E6" w:rsidP="008E50E6">
                            <w:r>
                                <w:t><xsl:value-of select="."/></w:t>
                            </w:r>
                        </w:p>
                    </xsl:for-each>
                    <w:p w:rsidR="008E50E6" w:rsidRDefault="008E50E6" w:rsidP="008E50E6">
                        <w:r>
                            <w:pict>
                                <v:rect id="_x0000_i1025" style="width:0;height:1.5pt" o:hralign="center" o:hrstd="t" o:hr="t" fillcolor="#a0a0a0" stroked="f"/>
                            </w:pict>
                        </w:r>
                    </w:p>
                </xsl:for-each>
                <w:p w:rsidR="008E50E6" w:rsidRPr="008E50E6" w:rsidRDefault="008E50E6" w:rsidP="008E50E6"/>
                <w:sectPr w:rsidR="008E50E6" w:rsidRPr="008E50E6">
                    <w:headerReference w:type="default" r:id="rId7"/>
                    <w:footerReference w:type="default" r:id="rId8"/>
                    <w:pgSz w:w="11906" w:h="16838"/>
                    <w:pgMar w:top="1417" w:right="1701" w:bottom="1417" w:left="1701" w:header="708" w:footer="708" w:gutter="0"/>
                    <w:cols w:space="708"/>
                    <w:docGrid w:linePitch="360"/>
                </w:sectPr>
            </w:body>
        </w:document>
    </xsl:template>
</xsl:stylesheet>