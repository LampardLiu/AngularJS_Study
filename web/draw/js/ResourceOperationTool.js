/*
Data:2014-5-26
Author：Lampard
Target：处理基础操作
*/

if (typeof operationTool === 'undefined') {
    var operationTool = {
        getString: function () { alert("Hello"); },
        getName: function () { alert("Lampard"); }
    }
}

window.$$ = $$ = operationTool;