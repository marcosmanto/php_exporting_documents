<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <office:document-content xmlns:anim="urn:oasis:names:tc:opendocument:xmlns:animation:1.0" xmlns:chart="urn:oasis:names:tc:opendocument:xmlns:chart:1.0" xmlns:config="urn:oasis:names:tc:opendocument:xmlns:config:1.0" xmlns:db="urn:oasis:names:tc:opendocument:xmlns:database:1.0" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dr3d="urn:oasis:names:tc:opendocument:xmlns:dr3d:1.0" xmlns:draw="urn:oasis:names:tc:opendocument:xmlns:drawing:1.0" xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0" xmlns:form="urn:oasis:names:tc:opendocument:xmlns:form:1.0" xmlns:grddl="http://www.w3.org/2003/g/data-view#" xmlns:math="http://www.w3.org/1998/Math/MathML" xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0" xmlns:number="urn:oasis:names:tc:opendocument:xmlns:datastyle:1.0" xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" xmlns:presentation="urn:oasis:names:tc:opendocument:xmlns:presentation:1.0" xmlns:script="urn:oasis:names:tc:opendocument:xmlns:script:1.0" xmlns:smil="urn:oasis:names:tc:opendocument:xmlns:smil-compatible:1.0" xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" xmlns:svg="urn:oasis:names:tc:opendocument:xmlns:svg-compatible:1.0" xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0" xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" xmlns:xforms="http://www.w3.org/2002/xforms" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:xlink="http://www.w3.org/1999/xlink" office:version="1.2">
            <office:font-face-decls>
                <style:font-face style:name="Times New Roman" svg:font-family="Times New Roman" style:font-family-generic="roman" style:font-pitch="variable" svg:panose-1="2 2 6 3 5 4 5 2 3 4"/>
                <style:font-face style:name="SimSun" svg:font-family="SimSun" style:font-family-generic="system" style:font-pitch="variable" svg:panose-1="2 1 6 0 3 1 1 1 1 1"/>
                <style:font-face style:name="Mangal" svg:font-family="Mangal" style:font-family-generic="roman" style:font-pitch="variable" svg:panose-1="2 4 5 3 5 2 3 3 2 2"/>
                <style:font-face style:name="Arial" svg:font-family="Arial" style:font-family-generic="swiss" style:font-pitch="variable" svg:panose-1="2 11 6 4 2 2 2 2 2 4"/>
                <style:font-face style:name="Microsoft YaHei" svg:font-family="Microsoft YaHei" style:font-family-generic="swiss" style:font-pitch="variable" svg:panose-1="2 11 5 3 2 2 4 2 2 4"/>
                <style:font-face style:name="Segoe UI" svg:font-family="Segoe UI" style:font-family-generic="swiss" style:font-pitch="variable" svg:panose-1="2 11 5 2 4 2 4 2 2 3"/>
                <style:font-face style:name="Calibri Light" svg:font-family="Calibri Light" style:font-family-generic="swiss" style:font-pitch="variable" svg:panose-1="2 15 3 2 2 2 4 3 2 4"/>
                <style:font-face style:name="Calibri" svg:font-family="Calibri" style:font-family-generic="swiss" style:font-pitch="variable" svg:panose-1="2 15 5 2 2 2 4 3 2 4"/>
            </office:font-face-decls>
            <office:automatic-styles>
                <style:style style:name="P1" style:parent-style-name="Título1" style:master-page-name="MP0" style:family="paragraph">
                    <style:paragraph-properties fo:break-before="page"/>
                    <style:text-properties fo:color="#006600"/>
                </style:style>
                <style:style style:name="T4" style:parent-style-name="Fonteparág.padrão" style:family="text">
                    <style:text-properties fo:font-weight="bold" style:font-weight-asian="bold" style:font-weight-complex="bold" fo:font-size="14pt" style:font-size-asian="14pt" style:font-size-complex="14pt" fo:language="pt" fo:country="BR" style:language-asian="pt" style:country-asian="BR" style:language-complex="ar" style:country-complex="SA"/>
                </style:style>
                <style:style style:name="T5" style:parent-style-name="Fonteparág.padrão" style:family="text">
                    <style:text-properties fo:font-weight="bold" style:font-weight-asian="bold" style:font-weight-complex="bold" fo:font-size="14pt" style:font-size-asian="14pt" style:font-size-complex="14pt"/>
                </style:style>
                <style:style style:name="P6" style:parent-style-name="Textbody" style:family="paragraph">
                    <style:paragraph-properties fo:border-top="none" fo:border-left="none" fo:border-bottom="0.0208in solid #000000" fo:border-right="none" fo:padding-top="0in" fo:padding-left="0in" fo:padding-bottom="0.0138in" fo:padding-right="0in" style:shadow="none"/>
                </style:style>
                <style:style style:family="graphic" style:name="a0" style:parent-style-name="Graphics">
                    <style:graphic-properties fo:border="none" fo:background-color="transparent" style:wrap="right" style:wrap-contour="false" fo:clip="rect(0in, 0in, 0in, 0in)" style:horizontal-rel="paragraph" style:vertical-rel="paragraph" style:horizontal-pos="from-left" style:vertical-pos="from-top" draw:luminance="0%" draw:contrast="0%" draw:image-opacity="100%"/>
                </style:style>
            </office:automatic-styles>
            <office:body>
                <office:text text:use-soft-page-breaks="true">
                    <text:h text:style-name="P1" text:outline-level="1">Flower Arrangements</text:h>
                    <xsl:for-each select="root/row">
                        <text:h text:style-name="Título2" text:outline-level="2">
                            <xsl:value-of select="title"/>
                        </text:h>
                        <text:p text:style-name="Textbody">
                            <text:span text:style-name="T4">
                                <draw:frame draw:z-index="251658240" draw:style-name="a0" draw:name="graphics1" text:anchor-type="paragraph" svg:x="0.02362in" svg:y="0in" svg:width="1.42165in" svg:height="1.42165in" style:rel-width="scale" style:rel-height="scale">
                                    <draw:image xlink:href="media/image1.jpg" xlink:type="simple" xlink:show="embed" xlink:actuate="onLoad"/>
                                    <svg:title/>
                                    <svg:desc/>
                                </draw:frame>
                            </text:span>
                            <text:span text:style-name="T5">$<xsl:value-of select="price"/></text:span>
                        </text:p>
                        <xsl:for-each select="description/p">
                            <text:p text:style-name="Textbody">
                                <xsl:value-of select="."/>
                            </text:p>
                        </xsl:for-each>
                        <text:p text:style-name="P6"/>
                        <text:p text:style-name="Textbody"/>
                        <text:p text:style-name="Textbody"/>
                        <text:p text:style-name="Textbody"/>
                        <text:p text:style-name="Textbody"/>
                    </xsl:for-each>
                </office:text>
            </office:body>
        </office:document-content>
    </xsl:template>
</xsl:stylesheet>