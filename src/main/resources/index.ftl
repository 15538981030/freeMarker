<html>
<head>

</head>
<body>
<#--${} ftl插值语法-->
    Hello:${name}<hr>
<#--对象类型取值-->
    ${user.id}-->${user.name}
    <hr>
<#--数值类型取值-->
    ${num}
    ${num?string}
    ${num?string.number}
    ${num?string.currency}
    <hr>
<#--日期类型取值-->
    ${data?date}
    ${data?datetime}
    ${data?time}
    ${data?string("yyyy年MM月dd日 HH:mm;ss")}
    <hr>
<#--boolean取值-->
    ${bool?c}
    ${bool?string("对","不对")}
    <hr>
<#--freemarker标签-->
    <#list array as key>
        ${key}<br>
    </#list>
    <hr>
<#--获取map集合的数据-->
    <#list map?keys as key>
        ${key}-->${map[key]}<br>
    </#list>
    <hr>
<#--判断标签-->
    <#if name == "zs">
        用户名是${name}
        <#else>
        不是zs而是${name}
    </#if>
    <hr>
<#--空值处理-->
<#--存在值 展示存在值 不存在 则展示默认值-->
    ${exists!"默认值"}<br>
<#if exists??>
值存在
<#else>
值不存在
</#if>
    <hr>
<#--
   jsp 包含
       动态包含 <jsp:include>   编译后结果包含
       静态包含 <%@ include %>  源代码包含
   freemarker 包含 类似于静态包含
-->
<#include "footer.ftl">
    <hr>
<#--
        自定义标签
        macro
    -->
<#macro test param1,param2,param3>
this is test tag,param1:${param1},param2:${param2},param3:${param3}
</#macro>

<#--使用自定义标签-->
<@test param1="aa" param2="bb" param3="cc"></@test>
</body>
</html>