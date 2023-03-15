<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:output encoding="UTF-8" method="xml"/>

    <!-- Identity template: just copy any node -->

    <xsl:template match="node()">
        <xsl:copy>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/">
        <text>
            <xsl:apply-templates/>
        </text>
    </xsl:template>

    <xsl:template match="entry">
        <xsl:apply-templates/>
    </xsl:template>

    <!-- TEI Like elements -->

    <xsl:template match="div | figure | del | add | lb">
        <xsl:element name="{local-name()}">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="div[@continues ='yes'] | div[contains(@id, '_1')]">
            <pb facs="#f010"/>
            <div>
                <xsl:apply-templates/>
            </div>
    </xsl:template>

    <xsl:template match="
            al |
            bp |
            
            cn |
            
            df |
            
            env |
            
            fr |
            
            gk |
            
            it |
            
            la |
            
            m |
            
            md |
            
            ms |
            
            mu |
            
            oc |
            
            pa |
            
            pl |
            
            pn |
            
            po |
            
            pro |
            
            sn |
            
            tl |
            
            tmp">
        <xsl:element name="rs">
            <xsl:attribute name="ref">
                <xsl:text>#rs-</xsl:text>
                <xsl:value-of select="local-name()"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="exp">
        <xsl:element name="expan">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    
    <xsl:template match="mark">
        <xsl:element name="metamark">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="ab">
        <p>
            <xsl:apply-templates select="@*"/>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="ab/@margin">
        <xsl:attribute name="rend">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="ab/@render">
        <xsl:attribute name="style">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>


    <!-- Exceptions: don't copy the matched nodes -->

    <xsl:template match="page | image | id | margin | cont | link | render"/>

    <!-- Exceptions: for nodes with attribute like elements, -->
    <!-- apply-templates in "make_attr" node for those elements  -->
    <!-- apply-templates in default node for all others.     -->
    <!-- 
    <xsl:template match="root | div | ab | figure | man">
        <xsl:element name="{local-name()}">
            <xsl:apply-templates select="page | image | id | margin | cont | link | render" mode="make_attr"/>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
-->


    <!-- make_attr mode: create attributes from matched elements -->

    <xsl:template match="page | image | id | margin | link | render" mode="make_attr">
        <xsl:attribute name="{local-name()}">
            <xsl:value-of select="normalize-space(.)"/>
        </xsl:attribute>
    </xsl:template>

    <!-- make_attr mode: create 'continued="yes"' when <cont/> is last element in div -->

    <xsl:template match="cont[not(following-sibling::*)]" mode="make_attr">
        <xsl:attribute name="continued">
            <xsl:text>yes</xsl:text>
        </xsl:attribute>
    </xsl:template>

    <!-- make_attr mode: create 'continues="yes"' when <cont/> is first element in div -->

    <xsl:template match="cont[not(preceding-sibling::*)]" mode="make_attr">
        <xsl:attribute name="continues">
            <xsl:text>yes</xsl:text>
        </xsl:attribute>
    </xsl:template>

    <xsl:template match="comment">
        <note n="{@rid}"/>
    </xsl:template>

</xsl:stylesheet>
