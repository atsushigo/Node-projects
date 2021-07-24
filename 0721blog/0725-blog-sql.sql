/*
 Navicat Premium Data Transfer

 Source Server         : 本機
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 25/07/2021 02:23:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '正文',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发表时间',
  `hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:非热门 1:热门',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `category_id` int(11) NOT NULL COMMENT '类目编号',
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '缩略图',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文章表';

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES (1, 'JavaScript', '<ul class=\\\"markdown-toc-list\\\"> <li><a class=\\\"toc-level-1\\\" href=\\\"#引入JavaScript\\\" level=\\\"1\\\">引入JavaScript</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#什麼是JavaScript\\\" level=\\\"2\\\">什麼是JavaScript</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#JavaScript的組成部分\\\" level=\\\"2\\\">JavaScript的組成部分</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#在HTML頁面中引入JavaScript\\\" level=\\\"2\\\">在HTML頁面中引入JavaScript</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#內部引入方式\\\" level=\\\"3\\\">內部引入方式</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#外部引入方式\\\" level=\\\"3\\\">外部引入方式</a></li> <li><a class=\\\"toc-level -3\\\" href=\\\"#嵌入引入方式\\\" level=\\\"3\\\">嵌入引入方式</a></li> </ul> </li> <li><a class=\\\" toc-level-2\\\" href=\\\"#向HTML頁面輸出內容\\\" level=\\\"2\\\">向HTML頁面輸出內容</a></li> <li><a class=\\\"toc -level-2\\\" href=\\\"#顯示警告提示框\\\" level=\\\"2\\\">顯示警告提示框</a></li> <li><a class=\\\"toc-level- 2\\\" href=\\\"#JavaScript的運行原理\\\" level=\\\"2\\\">JavaScript的運行原理</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#註釋\\\" level=\\\"2\\\">註釋</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#單行註釋\\\" level=\\\"3\\\">單行註釋</a> </li> <li><a class=\\\"toc-level-3\\\" href=\\\"#多行註釋\\\" level=\\\"3\\\">多行註釋</a></li> </ul> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#指令結束符\\\" level=\\\"2\\\">指令結束符</a> </li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#變量的聲明、賦值和使用\\\" level=\\\"1\\\">變量的聲明、賦值和使用</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#變量名的命名規範\\\" level=\\\"2\\\">變量名的命名規範</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#變量的數據類型\\\" level=\\\" 1\\\">變量的數據類型</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#查看某個變量或值的數據類型\\\" level=\\ \"2\\\">查看某個變量或值的數據類型</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#undefined與null的區別\\\" level=\\\"2\\\">undefined與null的區別</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#判斷變量是否為數值(number)類型\\\" level=\\\"2\\\">判斷變量是否為數值(number)類型</a></li> </ul> </li> <li><a class=\\\"toc-level-1 \\\" href=\\\"#數據類型轉換\\\" level=\\\"1\\\">數據類型轉換</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\" #變量的數據類型\\\" level=\\\"2\\\">變量的數據類型</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#隱式類型轉換\\\" level=\\\"2\\\">隱式類型轉換</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#強制類型轉換\\\" level=\\\"2\\\">強制類型轉換</a> <ul> <li><a cl ass=\\\"toc-level-3\\\" href=\\\"#任意類型轉number\\\" level=\\\"3\\\">任意類型轉number</a></li> <li><a class=\\ \"toc-level-3\\\" href=\\\"#任意類型轉string\\\" level=\\\"3\\\">任意類型轉string</a></li> </ul> </li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#表達式與運算符\\\" level=\\\"1\\\">表達式與運算符</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#什麼是表達式\\\" level=\\\"2\\\">什麼是表達式</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#運算符\\\" level=\\\"2\\\">運算符</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#算術運算的特殊結果NaN和Infinity\\\" level=\\\"2\\\">算術運算的特殊結果NaN和Infinity</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#==與===的區別\\\" level=\\\"2\\\">== 與=== 的區別</a> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#邏輯運算符口訣\\\" level=\\\"2\\\">邏輯運算符口訣</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#不同類型之間的加法運算\\\" level=\\\"2\\\">不同類型之間的加法運算</a> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#三元運算符\\\" level=\\\"2\\\">三元運算符</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#運算符優先級\\\" level=\\\"2\\\">運算符優先級</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#邏輯控制語句\\\" level=\\\"1\\\">邏輯控制語句</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#分支結構\\\" level=\\\"2\\\">分支結構</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#if\\\" level=\\\"3 \\\">if</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#switch\\\" level=\\\"3\\\">switch</a> </li> </ul> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#循環結構\\\" level=\\\"2\\\">循環結構</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#for\\\" level=\\\"3\\\">for</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#for-in\\\" level=\\\"3\\\">for-in</a></li> <li><a class=\\\"toc- level-3\\\" href=\\\"#while\\\" level=\\\"3\\\">while</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\" #do-while\\\" level=\\\"3\\\">do-while</a></li> </ul> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#控制語句\\\" level=\\\"2\\\">控制語句</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#break\\\" level=\\\"3\\\">break</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#continue\\\" level=\\\"3\\\">continue< /a> </li> </ul> </li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#數組\\\" level=\\ \"1\\\">數組</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#創建數組並給數組中的元素賦值\\\" level=\\\"2 \\\">創建數組並給數組中的元素賦值</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#方式1：聲明後賦值\\\" level=\\\"3\\\">方式1：聲明後賦值</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#方式2：聲明並賦值\\\" level=\\\"3\\\">方式2：聲明並賦值</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#方式3：簡寫形式\\\" level=\\\"3\\\">方式3：簡寫形式</a></li> </ul> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#訪問數組中的元素\\\" level=\\\" 2\\\">訪問數組中的元素</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#方式一：訪問單個元素\\\" level=\\\"3 \\\">方式一：訪問單個元素</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#方式二：通過for循環遍歷\\\" level=\\ \"3\\\">方式二：通過for循環遍歷</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#方式三：通過for-in循環遍歷\\\" level=\\\"3\\\">方式三：通過for-in循環遍歷</a></li> </ul> </li> <li><a class=\\\"toc-level-2\\ \" href=\\\" #修改數組中的元素\\\" level=\\\"2\\\">修改數組中的元素</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#數組的常用方法和屬性\\\" level=\\\"2\\\">數組的常用方法和屬性</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#length\\\" level=\\\"3\\\">length</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#join(分隔符)\\\" level=\\\"3\\\">join(分隔符)</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#sort()\\\" level=\\\"3\\\">sort()</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#push(x,…,x)\\\" level=\\\"3\\\">push(x,…,x)</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#pop()\\\" level=\\\"3\\\">pop()</a></li> </ul> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#數組的長度為動態長度\\\" level=\\\"2\\\">數組的長度為動態長度</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#自定義函數\\\" level=\\\"1\\\">自定義函數</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#創建函數\\\" level=\\\"2\\\">創建函數</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#無參無返回值\\\" level=\\\"3\\\">無參無返回值</a></li> <li><a class=\\ \"toc-level-3\\\" href=\\\"#有參無返回值\\\" level=\\\"3\\\">有參無返回值</a></li> <li><a class=\\\" toc-level-3\\\" href=\\\"#無參有返回值\\\" level=\\\"3\\\">無參有返回值</a></li> <li><a class=\\\"toc -level-3\\\" href=\\\"#有參有返回值\\\" level=\\\"3\\\">有參有返回值</a></li> </ul> </li> <li> <a class=\\\"toc-level-2\\\" href=\\\"#調用函數\\\" level=\\\"2\\\">調用函數</a> <ul> <li><a class=\\\"toc- level-3\\\" href=\\\"#在JS中調用\\\" level=\\\"3\\\">在JS中調用</a></li> <li><a class=\\\"toc-level-3 \\\" href=\\\"#在HTML標籤中調用\\\" level=\\\"3\\\">在HTML標籤中調用</a></li> </ul> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#函數調用注意事項\\\" level=\\\"2\\\">函數調用注意事項</a></li> <li><a class=\\\"toc -level-2\\\" href=\\\"#匿名函數創建與調用\\\" level=\\\"2\\\">匿名函數創建與調用</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#常用事件\\\" level=\\\"1\\\">常用事件</a> <ul> <li><a class=\\ \"toc-level-2\\\" href=\\\"#onload\\\" level=\\\"2\\\">onload</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#onclick\\\" level=\\\"2\\\">onclick</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#onmouseover，onmouseout，onmousedown \\\" level=\\\"2\\\">onmouseover，onmouseout，onmousedown</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#onkeydown\\\" level=\\ \"2\\\">onkeydown</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#onchange\\\" level=\\\"2\\\">onchange</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#動態給元素綁定事件\\\" level=\\\"2\\\">動態給元素綁定事件</ a> </li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#window對象\\\" level=\\\"1\\\">window對象< /a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#prompt(提示,默認值)\\\" level=\\\"2\\\">prompt(提示,默認值)</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#alert(信息)\\\" level=\\\"2\\\">alert(信息) </ a> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#confirm(信息)\\\" level=\\\"2\\\">confirm(信息)</a> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#close()\\\" level=\\\"2\\\">close()</a></li> <li> <a class=\\\"toc-level-2\\\" href=\\\"#open(URL,窗口名,窗口特徵，是否替換瀏覽歷史中的當前條目)\\\" level=\\\"2\\\"> open(URL,窗口名,窗口特徵，是否替換瀏覽歷史中的當前條目)</a> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#setTimeout(方法名,毫秒數,參數)\\\" level=\\\"2\\\">setTimeout(方法名,毫秒數,參數)</a></li> <li><a class=\\\"toc-level-2\\\" href=\\ \"#setInterval(方法名,毫秒數,參數),clearInterval()\\\" level=\\\"2\\\">setInterval(方法名,毫秒數,參數),clearInterval()</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#history對象\\\" level=\\\"1\\\">history對象</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#back()\\\" level=\\\"2\\\">back()</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#forward()\\\" level=\\\"2\\\">forward()</a></li> <li><a class=\\\"toc-level -2\\\" href=\\\"#go(n)\\\" level=\\\"2\\\">go(n)</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#location對象\\\" level=\\\"1\\\">location對象</a> <ul> <li><a class=\\\"toc-level-2\\ \" href=\\\" #host\\\" level=\\\"2\\\">host</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#hostname\\\" level=\\\"2\\\">hostname</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#href\\\" level=\\\"2\\\">href </a></li> <li><a class=\\\"toc-le vel-2\\\" href=\\\"#reload()\\\" level=\\\"2\\\">reload()</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#replace(URL地址)\\\" level=\\\"2\\\">replace(URL地址)</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#replace()和location.href的區別\\\" level=\\\"2\\\">replace()和location.href的區別</a> </li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#document對象\\\" level=\\\"1\\\">document對象</a> <ul> <li><a class=\\\"toc -level-2\\\" href=\\\"#referrer\\\" level=\\\"2\\\">referrer</a></li> <li><a class=\\\"toc-level-2\\\" href=\\ \"#URL\\\" level=\\\"2\\\">URL</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#document.URL與locathion.href的區別\\\" level=\\\"2\\\">document.URL與locathion.href的區別</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"# getElementById(id值)\\\" level=\\\"2\\\">getElementById(id值)</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#getElementsByName (name值)\\\" level=\\\"2\\\">getElementsByName(name值)</a> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#getElementsByTagName(標籤名)\\\" level=\\\"2\\\">getElementsByTagName(標籤名)</a> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#getElementsByClassName(class值)\\ \" level=\\\" 2\\\">getElementsByClassName(class值)</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\" #element對象\\\" level=\\\"1\\\">element對象</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#常用節點信息屬性\\\" level=\\\"2\\\">常用節點信息屬性</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#常用節點對象屬性\\\" level=\\\" 2\\\">常用節點對象屬性</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#解決獲取節點元素對象的兼容性問題\\\" level=\\\"2\\\">解決獲取節點元素對象的兼容性問題</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#操作節點的屬性\\\" level=\\\"2\\\">操作節點的屬性</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#創建、插入、刪除和替換節點\\ \" level=\\\" 2\\\">創建、插入、刪除和替換節點</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#className\\\" level=\\\"2\\\">className</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#獲取元素的樣式\\\" level=\\\"2\\\">獲取元素的樣式</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#元素位置屬性\\\" level=\\\"2\\\">元素位置屬性</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#style對象\\\" level=\\\"1\\\">style對象</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#獲取某個元素的style對象\\\" level=\\\"2\\\">獲取某個元素的style對象</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#操縱元素的style樣式\\\" level=\\\"2\\\">操縱元素的style樣式</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#backgroundColor\\\" level=\\\"3 \\\">backgroundColor</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#backgroundImage\\\" level=\\\"3\\\">backgroundImage</a> </li> <li><a class=\\\"toc-level-3\\\" href=\\\"#backgroundRepeat\\\" level=\\\"3\\\">backgroundRepeat</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#fontSize\\\" level=\\\"3\\\">fontSize</a></li> <li><a class=\\\"toc-level-3\\ \" href=\\\" #fontWeight\\\" level=\\\"3\\\">fontWeight</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#textAlign\\\" level=\\\"3\\\">textAlign</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#textDecoration\\\" level=\\\"3\\\">textDecoration </a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#font\\\" level=\\\"3\\\">font</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#color\\\" level=\\\"3\\\">color</a> </li> <li><a class=\\\"toc -level-3\\\" href=\\\"#padding\\\" level=\\\"3\\\">padding</a></li> <li><a class=\\\"toc-level-3\\\" href=\\ \"#paddingTop，paddingBottom，paddingLeft，paddingRight\\\" level=\\\"3\\\">paddingTop，paddingBottom，paddingLeft，paddingRight </a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#border\\\" level=\\\"3\\\">border</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#borderTop，borderBottom，borderLeft，borderRight\\\" level=\\\"3\\\">borderTop，borderBottom，borderLeft，borderRight</a></li> </ul> </li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#String對象\\\" level=\\\"1\\\">String對象</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#length\\\" level=\\\"2\\\">length</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#indexOf(str,index)\\\" level=\\\"2\\\">indexOf(str,index)</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#charAt(index)\\\" level=\\\"2\\\">charAt(index)</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#toLowerCase()\\\" level=\\\"2\\\">toLowerCase()</a> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#toUpperCase()\\\" level=\\\"2\\\">toUpperCase()</a></li> <li><a class=\\\"toc- level-2\\\" href=\\\"#substring(index1,index2)\\\" level=\\\"2\\\">substring(index1,index2)</a> </li> <li><a class=\\\"toc -level-2\\\" href=\\\"#split(str)\\\" level=\\\"2\\\">split(str)</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#Dat e對象\\\" level=\\\"1\\\">Date對象</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#創建Date對象\\\" level=\\ \"2\\\">創建Date對象</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#getDate()\\\" level=\\\"2\\\"> getDate()</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#getDay()\\\" level=\\\"2\\\">getDay()</ a> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#getHours()\\\" level=\\\"2\\\">getHours()</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#getMinutes()\\\" level=\\\"2\\\">getMinutes()</a></li> <li> <a class=\\\"toc-level-2\\\" href=\\\"#getSeconds()\\\" level=\\\"2\\\">getSeconds()</a> </li> <li><a class=\\\" toc-level-2\\\" href=\\\"#getMonth()\\\" level=\\\"2\\\">getMonth()</a></li> <li><a class=\\\"toc-level-2 \\\" href=\\\"#getFullYear()\\\" level=\\\"2\\\">getFullYear()</a></li> <li><a class=\\\"toc-level-2\\\" href=\\ \"#getTime()\\\" level=\\\"2\\\">getTime()</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#Math對象\\\" level=\\\"1\\\">Math對象</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#Math.ceil ()\\\" level=\\\"2\\\">Math.ceil()</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#Math.floor( )\\\" level=\\\"2\\\">Math.flo or()</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#Math.round()\\\" level=\\\"2\\\">Math.round ()</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#Math.random()\\\" level=\\\"2\\\">Math.random( )</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#自定義對象\\\" level=\\\"1\\\">自定義對象</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#創建對象\\\" level=\\\"2\\\">創建對象</a> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#instanceof\\\" level=\\\"2\\\">instanceof</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#constructor\\\" level=\\\"2\\\">constructor</a></li> <li><a class=\\\"toc-level-2 \\\" href=\\\"#對象的繼承\\\" level=\\\"2\\\">對象的繼承</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\" #通過原型鏈實現繼承\\\" level=\\\"3\\\">通過原型鏈實現繼承</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#通過調用父類的構造方法實現繼承\\\" level=\\\"3\\\">通過調用父類的構造方法實現繼承</a></li> <li><a class=\\\"toc-level-3 \\\" href=\\\"#通過原型鍊和調用父類構造方法的混合模式實現繼承\\\" level=\\\"3\\\">通過原型鍊和調用父類構造方法的混合模式實現繼承</a> </li> </ul> </li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#正則表達式\\\" level=\\\"1 \\\">正則表達式</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#創建正則表達式對象\\\" level=\\\"2\\\">創建正則表達式對象</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#附加參數\\\" level=\\\"3\\\">附加參數</a> </li> </ul> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#匹配數據\\\" level=\\\"2\\\">匹配數據</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#exec()\\\" level=\\\"3\\\">exec()</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#test()\\\" level=\\\"3\\\">test()</a></li> </ul> </li> <li><a class=\\\"toc-level-2\\\" href=\\\"#正則表達式符號\\\" level=\\\"2\\\">正則表達式符號</a></li> </ul> </li> <li><a class=\\\"toc-level-1\\\" href=\\\"#表單自定義錯誤信息\\\" level=\\\"1\\\">表單自定義錯誤信息</a> <ul> <li><a class=\\\"toc-level-2\\\" href=\\\"#獲取validityState對象\\\" level=\\\"2\\\">獲取validityState對象</a></li> <li><a class=\\\"toc-level-2\\\" href=\\\"#validityState常用屬性\\\" level=\\\"2\\\">validityState常用屬性</a> <ul> <li><a class=\\\"toc-level-3\\\" href=\\\"#valueMissing\\\" level=\\\"3\\\">valueMissing</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#typeMismatch\\\" level=\\\"3\\\">typeMismatch</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#patternMismatch\\\" level=\\\"3\\\">patternMismatch</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#tooLong\\\" level=\\\"3\\\">tooLong< /a> </li> <li><a class=\\\"toc-level-3\\\" href=\\\"#rangeUnderflow\\\" level=\\\"3\\\">rangeUnderflow</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#rangeOverflow\\\" level=\\\"3\\\">rangeOverflow</a></li> <li><a class=\\\"toc-level-3\\ \" href=\\\" #stepMismatch\\\" level=\\\"3\\\">stepMismatch</a></li> <li><a class=\\\"toc-level-3\\\" href=\\\"#customError\\\" level=\\\"3\\\">customError</a> <ul></ul> </li> </ul> </li> </ul> </li> </ul>', '2021-07-25 01:58:44', 0, 100, 1, NULL);
INSERT INTO `article` VALUES (2, 'CSS3', '<ul class=\"markdown-toc-list\"> <li><a class=\"toc-level-1\" href=\"#引入樣式的方式\" level=\"1\">引入樣式的方式</a> <li><a class=\"toc-level-1\" href=\"#常用選擇器\" level=\"1\">常用選擇器</a></li> <li><a class=\"toc -level-2\" href=\"#基礎選擇器\" level=\"2\">基礎選擇器</a></li> <li><a class=\"toc-level-2\" href=\"#複合選擇器\" level=\"2\">複合選擇器</a></li> <li><a class=\"toc-level-2\" href=\"#屬性選擇器\" level=\"2\">屬性選擇器</a></li> <li><a class=\"toc-level-2\" href=\"#偽類選擇器\" level=\"2\">偽類選擇器</a></li> </li> <li><a class=\"toc-level-1\" href=\"#常用內容樣式\" level=\"1\">常用內容樣式</a> <ul> <li><a class=\"toc-level-2\" href=\"#文本\" level=\"2\">文本</a></li> <li><a class=\"toc-level-2\" href=\"#盒子\" level=\"2\">盒子</a></li> <li><a class=\"toc-level-2\" href=\"#背景\" level=\"2\">背景</a></li> <li><a class=\"toc-level-2\" href=\"#列表\" level=\"2\">列表</a></li> <li><a class=\"toc-level-2\" href=\"#表格\" level=\"2\">表格</a></li> </ul> </li> <li><a class=\"toc-level-1\" href=\"#常用佈局樣式\" level=\"1\">常用佈局樣式</a> <ul> <li><a class=\"toc-level-2\" href=\"#邊距\" level=\"2\">邊距</a> </li> <li><a class=\"toc-level-2\" href=\"#浮動\" level=\"2\">浮動</a></li> <li><a class=\"toc-level-2\" href=\"#定位\" level=\"2\">定位</a></li> <li><a class=\"toc-level-2\" href=\"#動態盒子\" level=\"2\">動態盒子</a></li> </ul> </li> <li><a class=\"toc-level-1\" href=\"#常用動畫樣式\" level=\"1 \">常用動畫樣式</a> <ul> <li><a class=\"toc-level-2\" href=\"#變形\" level=\"2\">變形</a></li> <li> <a class=\"toc-level-2\" href=\"#過度\" level=\"2\">過度</a></li> <li><a class=\"toc-level-2\" href=\"#自定義動畫\" level=\"2\">自定義動畫</a></li> </ul> </li> <li><a class=\"toc-level-1\" href=\"#FAQ\" level=\"1\">FAQ</a> <ul> <li><a class=\"toc-level-2\" href=\"#如何解決樣式表中的中文亂碼\" level=\"2\">如何解決樣式表中的中文亂碼</a></li> <li><a class=\"toc-level-2\" href=\"#如何讓塊級元素網頁水平居中\" level=\"2\">如何讓塊級元素網頁水平居中</a></li> <li><a class=\"toc-level-2\" href=\"#如何讓文本垂直居中\" level=\"2\">如何讓文本垂直居中</a> </li> <li><a class=\"toc-level-2\" href=\"#取消圖片下方的空白行\" level=\"2\">取消圖片下方的空白行</a></li> <li><a class=\"toc-level-2\" href=\"#圖文混排時，圖文如何垂直居中\" level=\"2\">圖文混排時，圖文如何垂直居中</a> </li> <li><a class=\"toc-level-2\" href=\"#隔行變色\" level=\"2\">隔行變色</a></li> <li><a class=\"toc -level-2\" href=\"#元素塊在頁面居中（水平和垂直）\" level=\"2\">元素塊在頁面居中（水平和垂直）</a> <ul></ul> </li> </ul> </li>', '2021-07-24 03:25:55', 1, 123, 1, NULL);
INSERT INTO `article` VALUES (3, 'HTML5', '<ul class=\"markdown-toc-list\"> <li><a class=\"toc-level-1\" href=\"#編輯器VSCode\" level=\"1\">編輯器VSCode</a> <ul> <li><a class=\"toc-level-2\" href=\"#常用插件\" level=\"2\">常用插件</a></li> <li><a class=\"toc-level-2 \" href=\"#常用快捷鍵\" level=\"2\">常用快捷鍵</a></li> </ul> </li> <li><a class=\"toc-level-1\" href=\"#常用HTML 標籤\" level=\"1\">常用HTML 標籤</a> <ul> <li><a class=\"toc-level-2\" href=\"#基礎結構標籤\" level=\"2\">基礎結構標籤</a></li> <li><a class=\"toc-level-2\" href=\"#文檔標籤\" level=\"2\">文檔標籤</a> <ul> <li> <a class=\"toc-level-3\" href=\"#基礎內容標籤\" level=\"3\">基礎內容標籤</a></li> <li><a class=\"toc-level-3\" href=\"#風格樣式標籤\" level=\"3\">風格樣式標籤</a></li> <li><a class=\"toc-level-3\" href=\"#列表\" level=\"3\">列表</a></li> <li><a class=\"toc-level-3\" href=\"#表格\" level=\"3\">表格</a></li> <li><a class=\"toc-level-3\" href=\"#多媒體標籤\" level=\"3\">多媒體標籤</a></li> <li><a class=\"toc-level-3\" href=\"#超鏈接\" level=\"3\">超鏈接</a></li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#分區元素\" level=\"2\">分區元素</a> <ul> <li><a class=\"toc-level-3\" href=\"#內聯框架\" level=\"3\">內聯框架</a></li> <li><a class=\"toc-level-3\" href=\"#通用分區\" le vel=\"3\">通用分區</a></li> <li><a class=\"toc-level-3\" href=\"#頁面分區\" level=\"3\">頁面分區</a> </li> <li><a class=\"toc-level-3\" href=\"#內容分區\" level=\"3\">內容分區</a></li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#模板標籤\" level=\"2\">模板標籤</a></li> <li><a class=\"toc-level-2\" href=\"#表單標籤\" level=\"2\">表單標籤</a></li> </ul> </li> <li><a class=\"toc-level-1\" href=\"#常用實體\" level=\"1\">常用實體</a></li> <li><a class=\"toc-level-1\" href=\"#帶默認風格的標籤\" level=\"1\">帶默認風格的標籤</a></li> <li><a class=\"toc-level-1\" href=\"#FAQ\" level=\"1\">FAQ</a> <ul></ul> </li> </ul> ', '2021-07-24 03:35:15', 1, 234, 1, NULL);
INSERT INTO `article` VALUES (4, 'PHP', '<ul class = \"markdown-toc-list\" > <li> <a class = \"toc-level-1\"href = \"#PHP7 基礎語法\"level = \"1\" > PHP7 基礎語法 </a> <ul> <li><a class=\"toc-level-2\" href=\"#開發過程\" level=\"2\">開發過程</a > </li> <li><a class=\"toc-level-2\" href=\"#PHP文件\" level=\"2\">PHP文件</a > </li> <li><a class=\"toc-level-2\" href=\"#PHP標記\" level=\"2\">PHP標記</a > </li> <li><a class=\"toc-level-2\" href=\"#PHP指令分隔符\" level=\"2\">PHP指令分隔符</a > </li> <li><a class=\"toc-level-2\" href=\"#使用echo向網頁中輸出內容\" level=\"2\">使用echo向網頁中輸出內容</a > </li> <li><a class=\"toc-level-2\" href=\"#PHP註釋\" level=\"2\">PHP註釋</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 標量類型與NULL\" level=\"1\">PHP7 標量類型與NULL</a > <ul> <li> <a class =\"toc-level-2\"href = \"#boolean（布爾型）\"level = \"2\" > boolean（ 布爾型） </a></li> <li> <a class = \"toc-level-2\"href = \"#integer（整型）\"level = \"2\" > integer（ 整型） </a></li> <li> <a class = \"toc-level-2\"href = \"#float（浮點型)\"level = \"2\" > float（ 浮點型) </a></li> <li> <a class = \"toc-level-2\"href = \"#string（字符串）\"level = \"2\" > string（ 字符串） </a></li> <li> <a class = \"toc-level-2\"href = \"#NULL類型\"level = \"2\" > NULL類型 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 變量\"level = \"1\" > PHP7 變量 </a> <ul> <li><a class=\"toc-level-2\" href=\"#變量的命名規則\" level=\"2\">變量的命名規則</a > </li> <li><a class=\"toc-level-2\" href=\"#創建變量\" level=\"2\">創建變量</a > </li> <li><a class=\"toc-level-2\" href=\"#使用變量\" level=\"2\">使用變量</a > </li> <li><a class=\"toc-level-2\" href=\"#刪除變量\" level=\"2\">刪除變量</a > </li> <li><a class=\"toc-level-2\" href=\"#檢測變量是否存在\" level=\"2\">檢測變量是否存在</a > </li> <li><a class=\"toc-level-2\" href=\"#顯示變量的類型及值\" level=\"2\">顯示變量的類型及值</a > </li> <li><a class=\"toc-level-2\" href=\"#檢測變量類型\" level=\"2\">檢測變量類型</a > </li> <li><a class=\"toc-level-2\" href=\"#強制類型轉換\" level=\"2\">強制類型轉換</a > </li> <li><a class=\"toc-level-2\" href=\"#引用賦值和傳值賦值\" level=\"2\">引用賦值和傳值賦值</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 常量\" level=\"1\">PHP7 常量</a > <ul> <li> <a class = \"toc-level-2\"href = \"#常量的定義與使用\"level = \"2\" > 常量的定義與使用 </a></li> <li> <a class = \"toc-level-2\"href = \"#魔術常量\"level = \"2\" > 魔術常量 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 運算符\"level = \"1\" > PHP7 運算符 </a> <ul> <li><a class=\"toc-level-2\" href=\"#字符串運算符\" level=\"2\">字符串運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#算術運算符\" level=\"2\">算術運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#遞增／遞減運算符\" level=\"2\">遞增／遞減運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#賦值運算符\" level=\"2\">賦值運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#比較運算符\" level=\"2\">比較運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#三元運算符\" level=\"2\">三元運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#邏輯運算符\" level=\"2\">邏輯運算符</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 數組\" level=\"1\">PHP7 數組</a > <ul> <li> <a class = \"toc-level-2\"href = \"#數組簡介\"level = \"2\" > 數組簡介 </a></li> <li> <a class = \"toc-level-2\"href = \"#創建數組\"level = \"2\" > 創建數組 </a></li> <li> <a class = \"toc-level-2\"href = \"#訪問元素\"level = \"2\" > 訪問元素 </a></li> <li> <a class = \"toc-level-2\"href = \"#修改元素\"level = \"2\" > 修改元素 </a></li> <li> <a class = \"toc-level-2\"href = \"#追加元素\"level = \"2\" > 追加元素 </a></li> <li> <a class = \"toc-level-2\"href = \"#刪除元素\"level = \"2\" > 刪除元素 </a></li> <li> <a class = \"toc-level-2\"href = \"#刪除數組\"level = \"2\" > 刪除數組 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 分支流程控制語句\"level = \"1\" > PHP7 分支流程控制語句 </a> <ul> <li><a class=\"toc-level-2\" href=\"#if\" level=\"2\">if</a > </li> <li><a class=\"toc-level-2\" href=\"#if-else\" level=\"2\">if-else</a > </li> <li><a class=\"toc-level-2\" href=\"#if-elseif-else /if -else if -else \" level=\"2 \">if-elseif-else / if-else if-else</a></li> <li><a class=\"toc - level - 2 \" href=\"#switch \" level=\"2 \">switch</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 循環流程控制語句 \" level=\"1 \">PHP7 循環流程控制語句</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#while \" level=\"2 \">while</a></li> <li><a class=\"toc - level - 2 \" href=\"#do -while \" level=\"2 \">do-while</a></li> <li><a class=\"toc - level - 2 \" href=\"#for \" level=\"2 \">for</a></li> <li><a class=\"toc - level - 2 \" href=\"#foreach \" level=\"2 \">foreach</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 跳轉流程控制語句 \" level=\"1 \">PHP7 跳轉流程控制語句</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#break \" level=\"2 \">break</a></li> <li><a class=\"toc - level - 2 \" href=\"#continue \" level=\"2 \">continue</a></li> <li><a class=\"toc - level - 2 \" href=\"#goto \" level=\"2 \">goto</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 自定義函數 \" level=\"1 \">PHP7 自定義函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#無參無返回值的函數 \" level=\"2 \">無參無返回值的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#帶參無返回值的函數 \" level=\"2 \">帶參無返回值的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#無參有返回值的函數 \" level=\"2 \">無參有返回值的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#帶參有返回值的函數 \" level=\"2 \">帶參有返回值的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#參數帶默認值的函數 \" level=\"2 \">參數帶默認值的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#參數是嚴格類型的函數 \" level=\"2 \">參數是嚴格類型的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#嵌套在函數內部的函數 \" level=\"2 \">嵌套在函數內部的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#嵌套在條件結構內部的函數 \" level=\"2 \">嵌套在條件結構內部的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#遞歸函數 \" level=\"2 \">遞歸函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#可變函數 \" level=\"2 \">可變函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#匿名函數 \" level=\"2 \">匿名函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#強制結束函數 \" level=\"2 \">强制结束函数</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 生成器 \" level=\"1 \">PHP7 生成器<ul class=\"markdown - toc - list \"> <li><a class=\"toc - level - 1 \" href=\"#PHP7 基礎語法 \" level=\"1 \">PHP7 基礎語法</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#開發過程 \" level=\"2 \">開發過程</a></li> <li><a class=\"toc - level - 2 \" href=\"#PHP文件 \" level=\"2 \">PHP文件</a></li> <li><a class=\"toc - level - 2 \" href=\"#PHP標記 \" level=\"2 \">PHP標記</a></li> <li><a class=\"toc - level - 2 \" href=\"#PHP指令分隔符 \" level=\"2 \">PHP指令分隔符</a></ li> <li><a class=\"toc - level - 2 \" href=\"#使用echo向網頁中輸出內容 \" level=\"2 \">使用echo向網頁中輸出內容</a></li> <li><a class=\"toc - level - 2 \" href=\"#PHP註釋 \" level=\"2 \">PHP註釋</a> </li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 標量類型與NULL \" level=\"1 \">PHP7 標量類型與NULL</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#boolean（ 布爾型） \" level=\"2 \">boolean（布爾型）</a></li> <li><a class=\"toc - level - 2 \" href=\"#integer（ 整型） \" level=\"2 \">integer（整型）</a></li> <li><a class=\"toc - level - 2 \" href=\"#float（ 浮點型)\" level=\"2 \">float（浮點型)</a></li> <li><a class=\"toc - level - 2 \" href=\"#string（ 字符串） \" level=\"2 \">string（字符串）</a></li> <li><a class=\"toc - level - 2 \" href=\"#NULL類型 \" level=\"2 \">NULL類型</a></li> </ul> </li> <li><a cl ass=\"toc - level - 1 \" href=\"#PHP7 變量 \" level=\"1 \">PHP7 變量</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#變量的命名規則 \" level=\"2 \">變量的命名規則</a></li> <li><a class=\"toc - level - 2 \" href=\"#創建變量 \" level=\"2 \">創建變量</a></li> <li><a class=\"toc - level - 2 \" href=\"#使用變量 \" level=\"2 \">使用變量</a></li> <li> <a class=\"toc - level - 2 \" href=\"#刪除變量 \" level=\"2 \">刪除變量</a> </li> <li><a class=\"toc - level - 2 \" href=\"#檢測變量是否存在 \" level=\"2 \">檢測變量是否存在</a></li> <li><a class=\"toc - level - 2 \" href=\"#顯示變量的類型及值 \" level=\"2 \">顯示變量的類型及值</a></li> <li><a class=\"toc - level - 2 \" href=\"#檢測變量類型 \" level=\"2 \">檢測變量類型</a></li> <li><a class=\"toc - level - 2 \" href=\"#強制類型轉換 \" level=\"2 \">強制類型轉換</a></li> <li> <a class=\"toc - level - 2 \" href=\"#引用賦值和傳值賦值 \" level=\"2 \">引用賦值和傳值賦值</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常量 \" level=\"1 \">PHP7 常量</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#常量的定義與使用 \" level=\"2 \">常量的定義與使用</a></li> <li><a class=\"toc - level - 2 \" href=\"#魔術常量 \" level=\"2 \">魔術常量</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 運算符 \" level=\"1 \">PHP7 運算符</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#字符串運算符 \" level=\"2 \">字符串運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#算術運算符 \" level=\"2 \">算術運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#遞增／ 遞減運算符 \" level=\"2 \">遞增／遞減運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#賦值運算符 \" level=\"2 \">賦值運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#比較運算符 \" level=\"2 \">比較運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#三元運算符 \" level=\"2 \">三元運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#邏輯運算符 \" level=\"2 \">邏輯運算符</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 數組 \" level=\"1 \">PHP7 數組</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#數組簡介 \" level=\"2 \">數組簡介</a></li> <li><a class=\"toc - level - 2 \" href=\"#創建數組 \" level=\"2 \">創建數組</a></li> <li><a class=\"toc - level - 2 \" href=\"#訪問元素 \" level=\"2 \">訪問元素</a></li> <li><a class=\"toc - level - 2 \" href=\"#修改元素 \" level=\"2 \">修改元素</a></li> <li><a class=\"toc - level - 2 \" href=\"#追加元素 \" level=\"2 \">追加元素</a></li> <li><a class=\"toc - level - 2 \" href=\"#刪除元素 \" level=\"2 \">刪除元素</a></li> <li><a class=\"toc - level - 2 \" href=\"#刪除數組 \" level=\"2 \">刪除數組</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 分支流程控制語句 \" level=\"1 \">PHP7 分支流程控制語句</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#if \" level=\"2 \">if</a> </li> <li><a class=\"toc - level - 2 \" href=\"#if -else \" level=\"2 \">if-else</a></li> <li><a class=\"toc - level - 2 \" href=\"#if - elseif -else / if-else if-else\" level=\"2\">if-elseif-else /if -else if -else </a></li> <li> <a class = \"toc-level-2\"href = \"#switch\"level = \"2\" >switch </a> </li> </ul> </li> <li> <a class = \" toc-level-1\"href = \"#PHP7 循環流程控制語句\"level = \"1\" > PHP7 循環流程控制語句 </a> <ul> <li><a class=\"toc-level-2\" href=\"#while\" level=\"2\">while</a > </li> <li><a class=\"toc-level-2\" href=\"#do-while\" level=\"2\">do-while </a > </li> <li><a class=\"toc-level-2\" href=\"#for\" level=\"2\">for</a > </li> <li><a class=\"toc-level-2\" href=\"#foreach\" level=\"2\">foreach</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 跳轉流程控制語句\" level=\"1\">PHP7 跳轉流程控制語句</a > <ul> <li> <a class =\"toc-level-2\"href = \"#break\"level = \"2\" >break </a></li> <li> <a class = \"toc-level-2\"href = \"#continue\"level = \"2\" >continue </a></li> <li> <a class = \"toc-level-2\"href = \"#goto\"level = \"2\" > goto </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 自定義函數\"level = \"1\" > PHP7 自定義函數 </a> <ul> <li><a class=\"toc -level-2\" href=\"#無參無返回值的函數\" level=\"2\">無參無返回值的函數</a > </li> <li><a class=\"toc-level- 2\" href=\"#帶參無返回值的函數\" level=\"2\">帶參無返回值的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#無參有返回值的函數\" level=\"2\">無參有返回值的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#帶參有返回值的函數\" level=\"2\">帶參有返回值的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#參數帶默認值的函數\" level=\"2\">參數帶默認值的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#參數是嚴格類型的函數\" level=\"2\">參數是嚴格類型的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#嵌套在函數內部的函數\" level=\"2\">嵌套在函數內部的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#嵌套在條件結構內部的函數\" level=\"2\">嵌套在條件結構內部的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#遞歸函數\" level=\"2\">遞歸函數</a > </ li> <li><a class=\"toc-level-2\" href=\"#可變函數\" level=\"2\">可變函數</a > </li> <li><a class=\"toc -level-2\" href=\"#匿名函數\" level=\"2\">匿名函數</a > </li> <li><a class=\"toc-level-2\" href=\"#強制結束函數\" level=\"2\">強制結束函數</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 生成器\" level=\" 1\">PHP7 生成器</a > <ul> <li> <a class = \"toc-level-2\"href = \"#生成器的創建和使用\"level = \"2\" > 生成器的創建和使用 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 類與對象基礎\"level = \"1\" > PHP7 類與對象基礎 </a> <ul> <li><a class=\"toc-level-2\" href=\"#創建類\" level=\"2\">創建類</a > </li> <li><a class=\"toc-level -2\" href=\"#創建類對象\" level=\"2\">創建類對象</a > </li> <li><a class=\"toc-level-2\" href=\"#類成員\" level=\"2\">類成員</a > <ul> <li> <a class = \"toc-level-3\"href = \"#添加類成員\"level = \"3\" > 添加類成員 </a> </li> <li> <a class = \"toc-level-3\"href = \"#類外訪問類的屬性\"level = \"3\" > 類外訪問類的屬性 </a></li> <li> <a class = \"toc-level-3\"href = \"#類內訪問類成員\"level = \"3\" > 類內訪問類成員 </a></li> </ul> </li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 類的繼承、抽像類和final\"level = \"1\" > PHP7 類的繼承、 抽像類和final </a> <ul> <li><a class=\"toc-level-2\" href=\"#類的繼承\" level=\"2\">類的繼承</a > </li> <li> <a class=\"toc-level-2\" href=\"#抽像類\" level=\"2\">抽像類</a > </li> <li><a class=\"toc-level-2\" href=\" #final\" level=\"2\">final</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 接口\" level=\" 1\">PHP7 接口</a > <ul> <li> <a class = \"toc-level-2\"href = \"#創建接口\"level = \"2\" > 創建接口 </a></li> <li> <a class = \"toc-level-2\"href = \"#實現接口\"level = \"2\" > 實現接口 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 Trait\"level = \"1\" > PHP7 Trait </a> <ul> <li><a class=\"toc-level-2\" href=\"#創建Trait\" level=\"2\">創建Trait</a > </li> <li><a class=\"toc-level-2\" href=\"#使用Trait\" level=\"2\">使用Trait</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 文件加載與類的自動加載\" level=\"1\">PHP7 文件加載與類的自動加載</a > <ul> <li> <a class =\"toc-level-2\"href = \"#導入文件\"level = \"2\" > 導入文件 </a> <ul> <li> <a class=\"toc-level-3\" href=\"#include\" level=\"3\">include</a > </li> <li><a class=\"toc-level-3\" href=\"# include_once\" level=\"3\">include_once</a > </li> <li><a class=\"toc-level-3\" href=\"#require\" level=\"3\">require</a > </ li> <li><a class=\"toc-level-3\" href=\"#require_once\" level=\"3\">require_once</a > </li> </ul > </li> <li><a class=\"toc-level-2\" href=\"#類的自動加載\" level=\"2\">類的自動加載</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 類的魔術方法\" level=\"1\">PHP7 類的魔術方法</a > <ul> <li> <a class =\"toc-level-2\"href = \"#魔術方法與重載\"level = \"2\" > 魔術方法與重載 </a></li> <li> <a class = \"toc-level-2\"href = \"#屬性重載\"level = \"2\" > 屬性重載 </a></li> <li> <a class = \"toc-level-2\"href = \"#方法重載\"level = \" 2\" > 方法重載 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 命名空間\"level = \"1\" > PHP7 命名空間 </a> <ul> <li><a class=\"toc-level-2\" href=\"#定義命名空間\" level=\"2\">定義命名空間</a > </li> <li><a class=\"toc-level-2\" href=\"#定義子命名空間\" level=\"2\">定義子命名空間</a > </li> <li><a class=\"toc- level-2\" href=\"#在同一個文件中定義多個命名空間\" level=\"2\">在同一個文件中定義多個命名空間</a > </li> <li><a class=\"toc-level-2\" href=\"#在命名空間內部訪問全局類、函數和常量\" level=\"2\">在命名空間內部訪問全局類、函數和常量</a > </li> <li><a class=\"toc-level-2\" href=\"#使用use操作符導入/使用別名\" level=\"2 \">使用use操作符導入/使用別名</a></li> <li> <a class=\"toc - level - 2 \" href=\"#全局空間 \" level=\"2 \">全局空間</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常用時間日期函數 \" level=\"1 \">PHP7 常用時間日期函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#date \" level=\"2 \">date</a></li> <li><a class=\"toc - level - 2 \" href=\"#date_create \" level=\"2 \">date_create</a></li> <li><a class=\"toc - level - 2 \" href=\"#date_format \" level=\"2 \">date_format</ a> </li> <li><a class=\"toc - level - 2 \" href=\"#time \" level=\"2 \">time</a></li> <li><a class=\"toc - level - 2 \" href=\"#date_default_timezone_set \" level=\"2 \">date_default_timezone_set</a></li> <li><a class=\"toc - level - 2 \" href=\"#日期格式字串表 \" level=\"2 \">日期格式字串表</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常用文件系統函數 \" level=\"1 \">PHP7 常用文件系統函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#scandir \" level=\"2 \">scandir</a> </li> <li><a class=\"toc - level - 2 \" href=\"#basename \" level=\"2 \">basename</a></li> <li><a class=\"toc - level - 2 \" href=\"#copy \" level=\"2 \">copy</a></li> <li><a class=\"toc - level - 2 \" href=\"#unlink \" level=\"2 \"> unlink</a></li> <li><a class=\"toc - level - 2 \" href=\"#dirname \" level=\"2 \">dirname</a></li> <li><a class=\"toc - level - 2 \" href=\"#file_exists \" level=\"2 \">file_exists</a></li> <li><a class=\"toc - level - 2 \" href=\"#file_get_contents \" level=\"2 \">file_get_contents</a></li> <li><a class=\"toc - level - 2 \" href=\"#file_pu t_contents \" level=\"2 \">file_put_contents</a></li> <li><a class=\"toc - level - 2 \" href=\"#is_dir \" level=\"2 \">is_dir</a></ li> <li><a class=\"toc - level - 2 \" href=\"#is_file \" level=\"2 \">is_file</a></li> <li><a class=\"toc - level - 2 \" href=\"#mkdir \" level=\"2 \">mkdir</a></li> <li><a class=\"toc - level - 2 \" href=\"#rmdir \" level=\"2 \">rmdir</a> </li> <li><a class=\"toc - level - 2 \" href=\"#unlink \" level=\"2 \">unlink</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常用字符串函數 \" level=\"1 \">PHP7 常用字符串函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#explode \" level=\"2 \">explode</a></li> <li><a class=\"toc - level - 2 \" href=\"#implode \" level=\"2 \">implode</a></li> <li><a class=\"toc - level - 2 \" href=\"#md5_file \" level=\"2 \">md5_file</a></li> <li> <a class=\"toc - level - 2 \" href=\"#md5 \" level=\"2 \">md5</a></li> <li><a class=\"toc - level - 2 \" href=\"# number_format \" level=\"2 \">number_format</a></li> <li><a class=\"toc - level - 2 \" href=\"#str_replace\" level=\"2 \">str_replace</a></ li> <li><a class=\"toc - level - 2 \" href=\"#str_split \" level=\"2 \">str_split</a></li> <li><a class=\"toc - level - 2 \" href=\"#strip_tags \" level=\"2 \">strip_tags</a></li> <li><a class=\"toc - level - 2 \" href=\"#stripos \" level=\"2 \">stripos</ a> </li> <li><a class=\"toc - level - 2 \" href =\"#strlen \" level=\"2 \">strlen</a></li> <li><a class=\"toc - level - 2 \" href=\"#trim \" level=\"2 \">修剪</a ></li> <li><a class=\"toc - level - 2 \" href=\"#mb_convert_encoding \" level=\"2 \">mb_convert_encoding</a></li> <li><a class=\"toc - level - 2 \" href=\"#mb_substr \" level=\"2 \">mb_substr</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常用正則表達式函數 \" level=\"1 \">PHP7 常用正則表達式函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#preg_filter / preg_replace \" level =\"2 \">preg_filter/preg_replace</a></li> <li><a class=\"toc - level - 2 \" href=\"#preg_match_all \" level=\"2 \">preg_match_all</a></li> <li><a class=\"toc - level - 2 \" href=\"#preg_match \" level=\"2 \">preg_match</a> </li> <li><a class=\"toc - level - 2 \" href=\"#preg_s plit \" level=\"2 \">preg_split</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常用數組函數 \" level= \"1 \">PHP7常用數組函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#array_key_exists \" level=\"2 \">array_key_exis ts</a></li> <li><a class=\"toc - level - 2 \" href=\"#array_merge \" level=\"2 \">array_merge</a></li> <li><a class=\"toc - level - 2 \" href=\"#array_unique \" level=\"2 \">array_unique</a></li> <li><a class=\"toc - level - 2 \" href=\"#array_unshift \" level=\"2 \">array_unshift</li> a></li> <li><a class=\"toc - level - 2 \" href=\"#count \" level=\"2 \">計數</a></li> <li><a class=\"toc - level - 2 \" href=\"#extract \" level=\"2 \">提取</a> </li> <li><a class=\"toc - level - 2 \" href=\"#in_array \" level=\"2 \">in_array</a></li> <li><a class=\"toc - level - 2 \" href=\"#krsort \" level=\"2 \">krsort</a> </li> <li><a class=\"toc - level - 2 \" href=\"#ksort \" level=\"2 \">ksort</a></li> <li><a class=\"toc - level - 2 \" href=\"#list \" level=\"2 \">list</a></li> <li><a class=\"toc - level - 2 \" href=\"#shuffle \" level=\"2 \">隨機播放</a></li> <li><a class=\"toc - level - 2 \" href=\"#sort \" level=\"2 \">排序</a></li> </ul> </ li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 GD庫 \" level=\"1 \">PHP7 GD庫</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#創建一張圖片 \" level=\"2 \">創建一張一張圖片</a></li> <li><a class=\"toc - level - 2 \" href=\"#向圖片中輸出一行文字 \" level=\"2 \">向圖片中輸出一行文字</a></li> <li><a class=\"toc - level - 2 \" href=\"#向圖片中添加背景合影 \" level=\"2 \">向圖片中添加背景合影</a></a></li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 獲取請求數據 \" level=\"1 \">PHP7 獲取請求數據</a> <ul> <li> <a class=\"toc - level - 2 \" href=\"#獲取GET請求數據 \" level=\"2 \">獲取GET請求數據</a></li> <li><a class=\"toc - level - 2 \" href=\"#獲取POST請求數據 \" level=\"2 \">獲取POST請求數據數據</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 文件上傳 \" level=\"1 \">PHP7 文件上傳</ a> <ul> <li><a class=\"toc - level - 2 \" href=\"#單文件上傳 \" level=\"2 \">單文件上傳</a></li> <li><a class =\"toc - level - 2 \" href=\"#多文件上傳 \" level=\"2 \">多文件上傳</a> </li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 訪問Mysql數據庫 \" level=\"1 \">PHP7 訪問Mysql數據庫</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#執行INSERT語句 \" level=\"2 \">執行INSERT語句</a></li> <li><a class=\"toc - level - 2 \" href=\"#執行UPDATE語句 \" level=\"2 \" >執行UPDATE語句</a></li> <li><a class=\"toc - level - 2 \" href=\"#執行DELETE語句 \" level=\"2 \">執行DELETE語句</a></li> <li><a class=\"toc - level - 2 \" href=\"#執行SELECT語句 \" level=\"2 \">執行SELECT語句</a> </li> </ul> </li> <li ><a class=\"toc - level - 1 \" href=\"#PHP7 分頁實現 \" level=\"1 \">PHP7 分頁實現</a> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7在頁面上直接播放視頻 \" level=\"1 \">PHP7在頁面上直接播放視頻</a> <ul></ul> </li> </ul>', '2021-07-25 02:06:45', 0, 23, 2, NULL);
INSERT INTO `article` VALUES (5, 'jQuery', '<ul class=\"markdown-toc-list\"> <li><a class=\"toc-level-1\" href=\"#引入jQuery\" level=\"1\">引入jQuery</a> <ul> <li><a class=\"toc-level-2\" href=\"#什麼是jQuery\" level=\"2\">什麼是jQuery</a></li> <li><a class=\"toc-level-2 \" href=\"#下載jQuery\" level=\"2\">下載jQuery</a></li> <li><a class=\"toc-level-2\" href=\"#引入jQuery\" level=\"2\">引入jQuery</a></li> <li><a class=\"toc-level-2\" href=\"#第一個jQuery程序\" level=\"2\">第一個jQuery程序</a> </li> <li><a class=\"toc-level-2\" href=\"#工廠函數$()\" level=\"2\">工廠函數$()</a></li> <li> <a class=\"toc-level-2\" href=\"#DOM對象與jQuery對象互相轉換\" level=\"2\">DOM對象與jQuery對象互相轉換</a> <ul> <li><a class=\"toc-level-3\" href=\"#DOM對象轉為jQuery對象\" level=\"3\">DOM對象轉為jQuery對象</a></li> <li><a class=\"toc-level- 3\" href=\"#jQuery對象轉DOM對象\" level=\"3\">jQuery對象轉DOM對象</a></li> </ul> </li> </ul> </li> <li> <a class=\"toc-level-1\" href=\"#選擇器\" level=\"1\">選擇器</a> <ul> <li><a class=\"toc-level-2\" href=\" #基本選擇器\" level=\"2\">基本選擇器</a> <ul> <li><a class=\"toc-level-3\" href=\"#標籤選擇器\" level=\"3\">標籤選擇器</a></li> <li><a class=\"toc-level-3\" href=\"#類選擇器\" level=\"3\">類選擇器</a></li> <li><a cl ass=\"toc-level-3\" href=\"#ID選擇器\" level=\"3\">ID選擇器</a> </li> <li><a class=\"toc-level-3\" href=\"#並集選擇器\" level=\"3\">並集選擇器</a></li> <li><a class=\"toc-level-3\" href=\"#交集選擇器\" level=\" 3\">交集選擇器</a></li> <li><a class=\"toc-level-3\" href=\"#全局選擇器\" level=\"3\">全局選擇器</a> </li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#層次選擇器\" level=\"2\">層次選擇器</a> <ul> <li><a class=\"toc-level-3\" href=\"#後代選擇器\" level=\"3\">後代選擇器</a> </li> <li><a class=\"toc-level- 3\" href=\"#子選擇器\" level=\"3\">子選擇器</a></li> <li><a class=\"toc-level-3\" href=\"#相鄰元素選擇器\" level=\"3\">相鄰元素選擇器</a></li> <li><a class=\"toc-level-3\" href=\"#同輩元素選擇器\" level=\"3\">同輩元素選擇器</a></li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#屬性選擇器\" level=\"2\">屬性選擇器</a> <ul> <li><a class=\"toc-level-3\" href=\"#選擇包含某屬性的元素\" level=\"3\">選擇包含某屬性的元素</a></ li> <li><a class=\"toc-level-3\" href=\"#選擇屬性值為特定值的元素\" level=\"3\">選擇屬性值為特定值的元素</a></li> <li><a class=\"toc-level-3\" href=\"#選擇屬性值不為特定值的元素\" level=\"3\">選擇屬性值不為特定值的元素</a></ li> <li><a class=\"toc-level-3\" href=\"#選擇屬性值以特定值開始的元素\" level=\"3\">選擇屬性值以特定值開始的元素</a> </li> <li><a class=\"toc -level-3\" href=\"#選擇屬性值以特定值結尾的元素\" level=\"3\">選擇屬性值以特定值結尾的元素</a></li> <li><a class=\" toc-level-3\" href=\"#選擇屬性值包含特定值的元素\" level=\"3\">選擇屬性值包含特定值的元素</a></li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#過濾選擇器\" level=\"2\">過濾選擇器</a> <ul> <li><a class=\"toc-level-3 \" href=\"#:first\" level=\"3\">:first</a></li> <li><a class=\"toc-level-3\" href=\"#:last\" level=\"3\">:last</a></li> <li><a class=\"toc-level-3\" href=\"#:not(選擇器)\" level=\"3\">:not(選擇器) </a> </li> <li><a class=\"toc-level-3\" href=\"#:even\" level=\"3\">:even</a></li> <li><a class=\"toc-level-3\" href=\"#:odd\" level=\"3\">:odd</a></li> <li><a class=\"toc-level-3\" href=\"#:eq (index)\" level=\"3\">:eq(index)</a></li> <li><a class=\"toc-level-3\" href=\"#:gt(index)\" level=\" 3\">:gt(index)</a></li> <li><a class=\"toc-level-3\" href=\"#:lt(index)\" level=\"3\">:lt(index )</a></li> <li><a class=\"toc-level-3\" href=\"#:header\" level=\"3\">:header</a></li> <li> <a class=\"toc-level-3\" href=\"#:hidden\" level=\"3\">:hidden</a> </li> <li><a class=\"toc-level-3\" href=\" #:visible\" level=\"3\">:visible</a></li> </ul> </li> <l i><a class=\"toc-level-2\" href=\"#表單選擇器\" level=\"2\">表單選擇器</a> <ul> <li><a class=\"toc-level-3 \" href=\"#:input\" level=\"3\">:input</a></li> <li><a class=\"toc-level-3\" href=\"#:text\" level=\"3\">:text</a></li> <li><a class=\"toc-level-3\" href=\"#:password\" level=\"3\">:password</a></li> <li><a class=\"toc-level-3\" href=\"#:radio\" level=\"3\">:radio</a></li> <li><a class=\"toc-level-3\" href=\"#:checkbox\" level=\"3\">:checkbox</a></li> <li><a class=\"toc-level-3\" href=\"#:submit\" level=\"3\">: submit</a></li> <li><a class=\"toc-level-3\" href=\"#:image\" level=\"3\">:image</a></li> <li> <a class=\"toc-level-3\" href=\"#:reset\" level=\"3\">:reset</a> </li> <li><a class=\"toc-level-3\" href=\" #:button\" level=\"3\">:button</a></li> <li><a class=\"toc-level-3\" href=\"#:file\" level=\"3\">:file</a> </li> <li><a class=\"toc-level-3\" href=\"#:enabled\" level=\"3\">:enabled</a></li> <li><a class=\"toc-level-3\" href=\"#:disabled\" level=\"3\">:disabled</a></li> <li><a class=\"toc-level-3\" href=\"#: checked\" level=\"3\">:checked</a></li> <li><a class=\"toc-level-3\" href=\"#:checke d\" level=\"3\">:checked</a></li> </ul> </li> </ul> </li> <li><a class=\"toc-level-1\" href=\"#動畫函數\" level=\"1\">動畫函數</a> <ul> <li><a class=\"toc-level-2\" href=\"#show()，hide()\" level=\"2 \">show()，hide()</a></li> <li><a class=\"toc-level-2\" href=\"#toggle()\" level=\"2\">toggle()</a> </li> <li><a class=\"toc-level-2\" href=\"#fadeIn()，fadeOut()\" level=\"2\">fadeIn()，fadeOut()</a> </li> <li><a class=\"toc-level-2\" href=\"#slideUp()，slideDown()\" level=\"2\">slideUp()，slideDown()</a></li> <li><a class=\"toc-level-2\" href=\"#animate()\" level=\"2\">animate()</a></li> </ul> </li> <li> <a class=\"toc-level-1\" href=\"#常用事件函數\" level=\"1\">常用事件函數</a> <ul> <li><a class=\"toc-level-2\" href=\"#鼠標事件函數\" level=\"2\">鼠標事件函數</a> <ul> <li><a class=\"toc-level-3\" href=\"#click()\" level=\"3\">click()</a></li> <li><a class=\"toc-level-3\" href=\"#mouseover()，mouseout()\" level=\"3\">mouseover()，mouseout( )</a></li> <li><a class=\"toc-level-3\" href=\"#mouseenter()，mouseleave()\" level=\"3\">mouseenter()，mouseleave()</a> </li> <li><a class=\"toc-level-3\" href=\"#hover()\" level=\"3\">hover()</a></li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#鍵盤事件函數\" level=\"2\">鍵盤事件函數</a> <ul> <li><a class=\"toc-level-3\" href=\"#keydown()，keyup()，keypress()\" level=\"3\">keydown()，keyup()，keypress( )</a></li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#瀏覽器事件函數\" level=\"2\">瀏覽器事件函數</a> <ul> <li><a class=\"toc-level-3\" href=\"#resize()\" level=\"3\">resize()</a></li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#焦點事件\" level=\"2\">焦點事件</a> <ul> <li><a class=\"toc- level-3\" href=\"#blur()，focus()\" level=\"3\">blur()，focus()</a></li> <li><a class=\"toc-level-3 \" href=\"#select()\" level=\"3\">select()</a></li> </ul> </li> </ul> </li> <li><a class=\" toc-level-1\" href=\"#事件的綁定與移除\" level=\"1\">事件的綁定與移除</a> <ul> <li><a class=\"toc-level- 2\" href=\"#綁定事件：bind()\" level=\"2\">綁定事件：bind()</a> <ul> <li><a class=\"toc-level-3\" href=\"#綁定單個事件\" level=\"3\">綁定單個事件</a></li> <li><a class=\"toc-level-3\" href=\"#綁定多個事件\" level=\"3\">綁定多個事件</a></li> <li><a class=\"toc-level-3\" href=\"#event.data\" level=\"3\">event.data</a> </li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#解除綁定事件：unb ind()\" level=\"2\">解除綁定事件：unbind()</a> <ul> <li><a class=\"toc-level-3\" href=\"#解除綁定的所有事件\" level=\"3\">解除綁定的所有事件</a></li> <li><a class=\"toc-level-3\" href=\"#解除綁定的指定事件\" level=\"3\">解除綁定的指定事件</a></li> <li><a class=\"toc-level-3\" href=\"#解除綁定的指定事件的函數\" level=\"3\">解除綁定的指定事件的函數</a></li> </ul> </li> </ul> </li> <li><a class=\"toc-level-1\" href=\"#操作DOM元素的樣式\" level=\"1\">操作DOM元素的樣式</a> <ul> <li><a class=\"toc-level-2\" href=\"#css()\" level=\"2\"> css()</a></li> <li><a class=\"toc-level-2\" href=\"#addClass()，removeClass()\" level=\"2\">addClass()，removeClass() </a></li> <li><a class=\"toc-level-2\" href=\"#toggleClass()\" level=\"2\">toggleClass()</a></li> <li> <a class=\"toc-level-2\" href=\"#hasClass()\" level=\"2\">hasClass()</a></li> <li><a class=\"toc-level-2\" href=\"#height()，width()\" level=\"2\">height()，width()</a></li> <li><a class=\"toc-level-2\" href=\" #offset()\" level=\"2\">offset()</a></li> <li><a class=\"toc-level-2\" href=\"#offsetParent()\" level=\"2\"> offsetParent()</a></li> <li><a class=\"toc-level-2\" href=\"#position()\" level=\"2\">position()</a></li> <li><a class=\"toc-level-2\" href=\"#scrollLeft()，scrollTop()\" level=\"2\">scrollLeft()，scrollTop()</a> </li> </ul> </li> <li><a class=\"toc-level-1\" href=\"#操作DOM元素\" level=\"1\">操作DOM元素</a> <ul> <li><a class=\" toc-level-2\" href=\"#html()\" level=\"2\">html()</a></li> <li><a class=\"toc-level-2\" href=\"#text ()\" level=\"2\">text()</a></li> <li><a class=\"toc-level-2\" href=\"#val()\" level=\"2\">val( )</a></li> <li><a class=\"toc-level-2\" href=\"#創建節點\" level=\"2\">創建節點</a></li> <li> <a class=\"toc-level-2\" href=\"#append()，appendTo()\" level=\"2\">append()，appendTo()</a> </li> <li><a class=\"toc-level-2\" href=\"#prepend()，prependTo()\" level=\"2\">prepend()，prependTo()</a></li> <li><a class=\"toc- level-2\" href=\"#after()\" level=\"2\">after()</a></li> <li><a class=\"toc-level-2\" href=\"#before() \" level=\"2\">before()</a></li> <li><a class=\"toc-level-2\" href=\"#remove()\" level=\"2\">remove()</a> </li> <li><a class=\"toc-level-2\" href=\"#empty()\" level=\"2\">empty()</a></li> <li> <a class=\"toc-level-2\" href=\"#detach()\" level=\"2\">detach()</a> </li> <li><a class=\"toc -level-2\" href=\"#replaceWith()\" level=\"2\">replaceWith()</a></li> <li><a class=\"toc-level-2\" href=\"#replaceAll( )\" level=\"2\">replaceAll()</a></li> <li><a class=\"toc-level-2\" href=\"#clone()\" level=\"2\">clone() </a></li> </ul> </li> <li><a class=\"toc-level-1\" href=\"#操作DOM元素屬性\" level=\"1\">操作DOM元素屬性</a> <ul> <li><a class=\"toc-level-2\" href=\"#attr()\" level=\"2\">attr()</a></li> <li><a class=\"toc-level-2\" href=\"#removeAttr()\" level=\"2\">removeAttr()</a></li> </ul> </li> <li><a class=\" toc-level-1\" href=\"#遍歷DOM元素\" level=\"1\">遍歷DOM元素</a> <ul> <li><a class=\"toc-level-2\" href=\"#選擇子元素\" level=\"2\">選擇子元素</a> <ul> <li><a class=\"toc-level-3\" href=\"#children()\" level=\"3\">children()</a> </li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#選擇兄弟級元素\" level=\"2\">選擇兄弟級元素</a> <ul> <li><a class=\"toc-level-3\" href=\"#next()\" level=\"3\">next()</a></li> <li><a class=\"toc-level-3\" href=\"#prev()\" level=\"3\">prev()</a></li> <li><a class=\"toc-level-3\" href=\" #siblings()\" level=\"3\">siblings()</a></li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#選擇父元素\" level=\"2\">選擇父元素</a> <ul> <li><a class=\"toc-level-3\" href=\"#parent()\" level=\"3\">parent()</a> </li> <li><a class=\"toc-level-3\" href=\"#parents()\" level=\"3\">parents()</a></li> </ul> </li> <li><a class=\"toc-level-2\" href=\"#遍曆元素\" level=\"2\">遍曆元素</a> <ul> <li><a class=\"toc-level-3 \" href=\"#each()\" level=\"3\">each()</a></li> </ul> </li> </ul> </li> <li><a class=\" toc-level-1\" href=\"#JQuery的鍊式寫法\" level=\"1\">JQuery的鍊式寫法</a> <ul> <li><a class=\"toc-level-2\" href=\"#連續操作\" level=\"2\">連續操作</a></li> <li><a class=\"toc-level-2\" href=\"#end()\" level=\"2\">end ()</a> <ul></ul> </li> </ul> </li> </ul> ', '2021-07-24 03:43:19', 0, 234, 1, NULL);
INSERT INTO `article` VALUES (6, 'Bootstrap', '<ul class = \"markdown-toc-list\" > <li> <a class = \"toc-level-1\"href = \"#PHP7 基礎語法\"level = \"1\" > PHP7 基礎語法 </a> <ul> <li><a class=\"toc-level-2\" href=\"#開發過程\" level=\"2\">開發過程</a > </li> <li><a class=\"toc-level-2\" href=\"#PHP文件\" level=\"2\">PHP文件</a > </li> <li><a class=\"toc-level-2\" href=\"#PHP標記\" level=\"2\">PHP標記</a > </li> <li><a class=\"toc-level-2\" href=\"#PHP指令分隔符\" level=\"2\">PHP指令分隔符</a > </li> <li><a class=\"toc-level-2\" href=\"#使用echo向網頁中輸出內容\" level=\"2\">使用echo向網頁中輸出內容</a > </li> <li><a class=\"toc-level-2\" href=\"#PHP註釋\" level=\"2\">PHP註釋</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 標量類型與NULL\" level=\"1\">PHP7 標量類型與NULL</a > <ul> <li> <a class =\"toc-level-2\"href = \"#boolean（布爾型）\"level = \"2\" > boolean（ 布爾型） </a></li> <li> <a class = \"toc-level-2\"href = \"#integer（整型）\"level = \"2\" > integer（ 整型） </a></li> <li> <a class = \"toc-level-2\"href = \"#float（浮點型)\"level = \"2\" > float（ 浮點型) </a></li> <li> <a class = \"toc-level-2\"href = \"#string（字符串）\"level = \"2\" > string（ 字符串） </a></li> <li> <a class = \"toc-level-2\"href = \"#NULL類型\"level = \"2\" > NULL類型 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 變量\"level = \"1\" > PHP7 變量 </a> <ul> <li><a class=\"toc-level-2\" href=\"#變量的命名規則\" level=\"2\">變量的命名規則</a > </li> <li><a class=\"toc-level-2\" href=\"#創建變量\" level=\"2\">創建變量</a > </li> <li><a class=\"toc-level-2\" href=\"#使用變量\" level=\"2\">使用變量</a > </li> <li><a class=\"toc-level-2\" href=\"#刪除變量\" level=\"2\">刪除變量</a > </li> <li><a class=\"toc-level-2\" href=\"#檢測變量是否存在\" level=\"2\">檢測變量是否存在</a > </li> <li><a class=\"toc-level-2\" href=\"#顯示變量的類型及值\" level=\"2\">顯示變量的類型及值</a > </li> <li><a class=\"toc-level-2\" href=\"#檢測變量類型\" level=\"2\">檢測變量類型</a > </li> <li><a class=\"toc-level-2\" href=\"#強制類型轉換\" level=\"2\">強制類型轉換</a > </li> <li><a class=\"toc-level-2\" href=\"#引用賦值和傳值賦值\" level=\"2\">引用賦值和傳值賦值</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 常量\" level=\"1\">PHP7 常量</a > <ul> <li> <a class = \"toc-level-2\"href = \"#常量的定義與使用\"level = \"2\" > 常量的定義與使用 </a></li> <li> <a class = \"toc-level-2\"href = \"#魔術常量\"level = \"2\" > 魔術常量 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 運算符\"level = \"1\" > PHP7 運算符 </a> <ul> <li><a class=\"toc-level-2\" href=\"#字符串運算符\" level=\"2\">字符串運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#算術運算符\" level=\"2\">算術運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#遞增／遞減運算符\" level=\"2\">遞增／遞減運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#賦值運算符\" level=\"2\">賦值運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#比較運算符\" level=\"2\">比較運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#三元運算符\" level=\"2\">三元運算符</a > </li> <li><a class=\"toc-level-2\" href=\"#邏輯運算符\" level=\"2\">邏輯運算符</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 數組\" level=\"1\">PHP7 數組</a > <ul> <li> <a class = \"toc-level-2\"href = \"#數組簡介\"level = \"2\" > 數組簡介 </a></li> <li> <a class = \"toc-level-2\"href = \"#創建數組\"level = \"2\" > 創建數組 </a></li> <li> <a class = \"toc-level-2\"href = \"#訪問元素\"level = \"2\" > 訪問元素 </a></li> <li> <a class = \"toc-level-2\"href = \"#修改元素\"level = \"2\" > 修改元素 </a></li> <li> <a class = \"toc-level-2\"href = \"#追加元素\"level = \"2\" > 追加元素 </a></li> <li> <a class = \"toc-level-2\"href = \"#刪除元素\"level = \"2\" > 刪除元素 </a></li> <li> <a class = \"toc-level-2\"href = \"#刪除數組\"level = \"2\" > 刪除數組 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 分支流程控制語句\"level = \"1\" > PHP7 分支流程控制語句 </a> <ul> <li><a class=\"toc-level-2\" href=\"#if\" level=\"2\">if</a > </li> <li><a class=\"toc-level-2\" href=\"#if-else\" level=\"2\">if-else</a > </li> <li><a class=\"toc-level-2\" href=\"#if-elseif-else /if -else if -else \" level=\"2 \">if-elseif-else / if-else if-else</a></li> <li><a class=\"toc - level - 2 \" href=\"#switch \" level=\"2 \">switch</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 循環流程控制語句 \" level=\"1 \">PHP7 循環流程控制語句</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#while \" level=\"2 \">while</a></li> <li><a class=\"toc - level - 2 \" href=\"#do -while \" level=\"2 \">do-while</a></li> <li><a class=\"toc - level - 2 \" href=\"#for \" level=\"2 \">for</a></li> <li><a class=\"toc - level - 2 \" href=\"#foreach \" level=\"2 \">foreach</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 跳轉流程控制語句 \" level=\"1 \">PHP7 跳轉流程控制語句</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#break \" level=\"2 \">break</a></li> <li><a class=\"toc - level - 2 \" href=\"#continue \" level=\"2 \">continue</a></li> <li><a class=\"toc - level - 2 \" href=\"#goto \" level=\"2 \">goto</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 自定義函數 \" level=\"1 \">PHP7 自定義函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#無參無返回值的函數 \" level=\"2 \">無參無返回值的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#帶參無返回值的函數 \" level=\"2 \">帶參無返回值的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#無參有返回值的函數 \" level=\"2 \">無參有返回值的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#帶參有返回值的函數 \" level=\"2 \">帶參有返回值的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#參數帶默認值的函數 \" level=\"2 \">參數帶默認值的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#參數是嚴格類型的函數 \" level=\"2 \">參數是嚴格類型的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#嵌套在函數內部的函數 \" level=\"2 \">嵌套在函數內部的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#嵌套在條件結構內部的函數 \" level=\"2 \">嵌套在條件結構內部的函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#遞歸函數 \" level=\"2 \">遞歸函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#可變函數 \" level=\"2 \">可變函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#匿名函數 \" level=\"2 \">匿名函數</a></li> <li><a class=\"toc - level - 2 \" href=\"#強制結束函數 \" level=\"2 \">强制结束函数</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 生成器 \" level=\"1 \">PHP7 生成器<ul class=\"markdown - toc - list \"> <li><a class=\"toc - level - 1 \" href=\"#PHP7 基礎語法 \" level=\"1 \">PHP7 基礎語法</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#開發過程 \" level=\"2 \">開發過程</a></li> <li><a class=\"toc - level - 2 \" href=\"#PHP文件 \" level=\"2 \">PHP文件</a></li> <li><a class=\"toc - level - 2 \" href=\"#PHP標記 \" level=\"2 \">PHP標記</a></li> <li><a class=\"toc - level - 2 \" href=\"#PHP指令分隔符 \" level=\"2 \">PHP指令分隔符</a></ li> <li><a class=\"toc - level - 2 \" href=\"#使用echo向網頁中輸出內容 \" level=\"2 \">使用echo向網頁中輸出內容</a></li> <li><a class=\"toc - level - 2 \" href=\"#PHP註釋 \" level=\"2 \">PHP註釋</a> </li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 標量類型與NULL \" level=\"1 \">PHP7 標量類型與NULL</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#boolean（ 布爾型） \" level=\"2 \">boolean（布爾型）</a></li> <li><a class=\"toc - level - 2 \" href=\"#integer（ 整型） \" level=\"2 \">integer（整型）</a></li> <li><a class=\"toc - level - 2 \" href=\"#float（ 浮點型)\" level=\"2 \">float（浮點型)</a></li> <li><a class=\"toc - level - 2 \" href=\"#string（ 字符串） \" level=\"2 \">string（字符串）</a></li> <li><a class=\"toc - level - 2 \" href=\"#NULL類型 \" level=\"2 \">NULL類型</a></li> </ul> </li> <li><a cl ass=\"toc - level - 1 \" href=\"#PHP7 變量 \" level=\"1 \">PHP7 變量</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#變量的命名規則 \" level=\"2 \">變量的命名規則</a></li> <li><a class=\"toc - level - 2 \" href=\"#創建變量 \" level=\"2 \">創建變量</a></li> <li><a class=\"toc - level - 2 \" href=\"#使用變量 \" level=\"2 \">使用變量</a></li> <li> <a class=\"toc - level - 2 \" href=\"#刪除變量 \" level=\"2 \">刪除變量</a> </li> <li><a class=\"toc - level - 2 \" href=\"#檢測變量是否存在 \" level=\"2 \">檢測變量是否存在</a></li> <li><a class=\"toc - level - 2 \" href=\"#顯示變量的類型及值 \" level=\"2 \">顯示變量的類型及值</a></li> <li><a class=\"toc - level - 2 \" href=\"#檢測變量類型 \" level=\"2 \">檢測變量類型</a></li> <li><a class=\"toc - level - 2 \" href=\"#強制類型轉換 \" level=\"2 \">強制類型轉換</a></li> <li> <a class=\"toc - level - 2 \" href=\"#引用賦值和傳值賦值 \" level=\"2 \">引用賦值和傳值賦值</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常量 \" level=\"1 \">PHP7 常量</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#常量的定義與使用 \" level=\"2 \">常量的定義與使用</a></li> <li><a class=\"toc - level - 2 \" href=\"#魔術常量 \" level=\"2 \">魔術常量</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 運算符 \" level=\"1 \">PHP7 運算符</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#字符串運算符 \" level=\"2 \">字符串運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#算術運算符 \" level=\"2 \">算術運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#遞增／ 遞減運算符 \" level=\"2 \">遞增／遞減運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#賦值運算符 \" level=\"2 \">賦值運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#比較運算符 \" level=\"2 \">比較運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#三元運算符 \" level=\"2 \">三元運算符</a></li> <li><a class=\"toc - level - 2 \" href=\"#邏輯運算符 \" level=\"2 \">邏輯運算符</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 數組 \" level=\"1 \">PHP7 數組</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#數組簡介 \" level=\"2 \">數組簡介</a></li> <li><a class=\"toc - level - 2 \" href=\"#創建數組 \" level=\"2 \">創建數組</a></li> <li><a class=\"toc - level - 2 \" href=\"#訪問元素 \" level=\"2 \">訪問元素</a></li> <li><a class=\"toc - level - 2 \" href=\"#修改元素 \" level=\"2 \">修改元素</a></li> <li><a class=\"toc - level - 2 \" href=\"#追加元素 \" level=\"2 \">追加元素</a></li> <li><a class=\"toc - level - 2 \" href=\"#刪除元素 \" level=\"2 \">刪除元素</a></li> <li><a class=\"toc - level - 2 \" href=\"#刪除數組 \" level=\"2 \">刪除數組</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 分支流程控制語句 \" level=\"1 \">PHP7 分支流程控制語句</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#if \" level=\"2 \">if</a> </li> <li><a class=\"toc - level - 2 \" href=\"#if -else \" level=\"2 \">if-else</a></li> <li><a class=\"toc - level - 2 \" href=\"#if - elseif -else / if-else if-else\" level=\"2\">if-elseif-else /if -else if -else </a></li> <li> <a class = \"toc-level-2\"href = \"#switch\"level = \"2\" >switch </a> </li> </ul> </li> <li> <a class = \" toc-level-1\"href = \"#PHP7 循環流程控制語句\"level = \"1\" > PHP7 循環流程控制語句 </a> <ul> <li><a class=\"toc-level-2\" href=\"#while\" level=\"2\">while</a > </li> <li><a class=\"toc-level-2\" href=\"#do-while\" level=\"2\">do-while </a > </li> <li><a class=\"toc-level-2\" href=\"#for\" level=\"2\">for</a > </li> <li><a class=\"toc-level-2\" href=\"#foreach\" level=\"2\">foreach</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 跳轉流程控制語句\" level=\"1\">PHP7 跳轉流程控制語句</a > <ul> <li> <a class =\"toc-level-2\"href = \"#break\"level = \"2\" >break </a></li> <li> <a class = \"toc-level-2\"href = \"#continue\"level = \"2\" >continue </a></li> <li> <a class = \"toc-level-2\"href = \"#goto\"level = \"2\" > goto </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 自定義函數\"level = \"1\" > PHP7 自定義函數 </a> <ul> <li><a class=\"toc -level-2\" href=\"#無參無返回值的函數\" level=\"2\">無參無返回值的函數</a > </li> <li><a class=\"toc-level- 2\" href=\"#帶參無返回值的函數\" level=\"2\">帶參無返回值的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#無參有返回值的函數\" level=\"2\">無參有返回值的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#帶參有返回值的函數\" level=\"2\">帶參有返回值的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#參數帶默認值的函數\" level=\"2\">參數帶默認值的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#參數是嚴格類型的函數\" level=\"2\">參數是嚴格類型的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#嵌套在函數內部的函數\" level=\"2\">嵌套在函數內部的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#嵌套在條件結構內部的函數\" level=\"2\">嵌套在條件結構內部的函數</a > </li> <li><a class=\"toc-level-2\" href=\"#遞歸函數\" level=\"2\">遞歸函數</a > </ li> <li><a class=\"toc-level-2\" href=\"#可變函數\" level=\"2\">可變函數</a > </li> <li><a class=\"toc -level-2\" href=\"#匿名函數\" level=\"2\">匿名函數</a > </li> <li><a class=\"toc-level-2\" href=\"#強制結束函數\" level=\"2\">強制結束函數</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 生成器\" level=\" 1\">PHP7 生成器</a > <ul> <li> <a class = \"toc-level-2\"href = \"#生成器的創建和使用\"level = \"2\" > 生成器的創建和使用 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 類與對象基礎\"level = \"1\" > PHP7 類與對象基礎 </a> <ul> <li><a class=\"toc-level-2\" href=\"#創建類\" level=\"2\">創建類</a > </li> <li><a class=\"toc-level -2\" href=\"#創建類對象\" level=\"2\">創建類對象</a > </li> <li><a class=\"toc-level-2\" href=\"#類成員\" level=\"2\">類成員</a > <ul> <li> <a class = \"toc-level-3\"href = \"#添加類成員\"level = \"3\" > 添加類成員 </a> </li> <li> <a class = \"toc-level-3\"href = \"#類外訪問類的屬性\"level = \"3\" > 類外訪問類的屬性 </a></li> <li> <a class = \"toc-level-3\"href = \"#類內訪問類成員\"level = \"3\" > 類內訪問類成員 </a></li> </ul> </li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 類的繼承、抽像類和final\"level = \"1\" > PHP7 類的繼承、 抽像類和final </a> <ul> <li><a class=\"toc-level-2\" href=\"#類的繼承\" level=\"2\">類的繼承</a > </li> <li> <a class=\"toc-level-2\" href=\"#抽像類\" level=\"2\">抽像類</a > </li> <li><a class=\"toc-level-2\" href=\" #final\" level=\"2\">final</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 接口\" level=\" 1\">PHP7 接口</a > <ul> <li> <a class = \"toc-level-2\"href = \"#創建接口\"level = \"2\" > 創建接口 </a></li> <li> <a class = \"toc-level-2\"href = \"#實現接口\"level = \"2\" > 實現接口 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 Trait\"level = \"1\" > PHP7 Trait </a> <ul> <li><a class=\"toc-level-2\" href=\"#創建Trait\" level=\"2\">創建Trait</a > </li> <li><a class=\"toc-level-2\" href=\"#使用Trait\" level=\"2\">使用Trait</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 文件加載與類的自動加載\" level=\"1\">PHP7 文件加載與類的自動加載</a > <ul> <li> <a class =\"toc-level-2\"href = \"#導入文件\"level = \"2\" > 導入文件 </a> <ul> <li> <a class=\"toc-level-3\" href=\"#include\" level=\"3\">include</a > </li> <li><a class=\"toc-level-3\" href=\"# include_once\" level=\"3\">include_once</a > </li> <li><a class=\"toc-level-3\" href=\"#require\" level=\"3\">require</a > </ li> <li><a class=\"toc-level-3\" href=\"#require_once\" level=\"3\">require_once</a > </li> </ul > </li> <li><a class=\"toc-level-2\" href=\"#類的自動加載\" level=\"2\">類的自動加載</a > </li> </ul > </li> <li><a class=\"toc-level-1\" href=\"#PHP7 類的魔術方法\" level=\"1\">PHP7 類的魔術方法</a > <ul> <li> <a class =\"toc-level-2\"href = \"#魔術方法與重載\"level = \"2\" > 魔術方法與重載 </a></li> <li> <a class = \"toc-level-2\"href = \"#屬性重載\"level = \"2\" > 屬性重載 </a></li> <li> <a class = \"toc-level-2\"href = \"#方法重載\"level = \" 2\" > 方法重載 </a></li> </ul> </li> <li> <a class = \"toc-level-1\"href = \"#PHP7 命名空間\"level = \"1\" > PHP7 命名空間 </a> <ul> <li><a class=\"toc-level-2\" href=\"#定義命名空間\" level=\"2\">定義命名空間</a > </li> <li><a class=\"toc-level-2\" href=\"#定義子命名空間\" level=\"2\">定義子命名空間</a > </li> <li><a class=\"toc- level-2\" href=\"#在同一個文件中定義多個命名空間\" level=\"2\">在同一個文件中定義多個命名空間</a > </li> <li><a class=\"toc-level-2\" href=\"#在命名空間內部訪問全局類、函數和常量\" level=\"2\">在命名空間內部訪問全局類、函數和常量</a > </li> <li><a class=\"toc-level-2\" href=\"#使用use操作符導入/使用別名\" level=\"2 \">使用use操作符導入/使用別名</a></li> <li> <a class=\"toc - level - 2 \" href=\"#全局空間 \" level=\"2 \">全局空間</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常用時間日期函數 \" level=\"1 \">PHP7 常用時間日期函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#date \" level=\"2 \">date</a></li> <li><a class=\"toc - level - 2 \" href=\"#date_create \" level=\"2 \">date_create</a></li> <li><a class=\"toc - level - 2 \" href=\"#date_format \" level=\"2 \">date_format</ a> </li> <li><a class=\"toc - level - 2 \" href=\"#time \" level=\"2 \">time</a></li> <li><a class=\"toc - level - 2 \" href=\"#date_default_timezone_set \" level=\"2 \">date_default_timezone_set</a></li> <li><a class=\"toc - level - 2 \" href=\"#日期格式字串表 \" level=\"2 \">日期格式字串表</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常用文件系統函數 \" level=\"1 \">PHP7 常用文件系統函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#scandir \" level=\"2 \">scandir</a> </li> <li><a class=\"toc - level - 2 \" href=\"#basename \" level=\"2 \">basename</a></li> <li><a class=\"toc - level - 2 \" href=\"#copy \" level=\"2 \">copy</a></li> <li><a class=\"toc - level - 2 \" href=\"#unlink \" level=\"2 \"> unlink</a></li> <li><a class=\"toc - level - 2 \" href=\"#dirname \" level=\"2 \">dirname</a></li> <li><a class=\"toc - level - 2 \" href=\"#file_exists \" level=\"2 \">file_exists</a></li> <li><a class=\"toc - level - 2 \" href=\"#file_get_contents \" level=\"2 \">file_get_contents</a></li> <li><a class=\"toc - level - 2 \" href=\"#file_pu t_contents \" level=\"2 \">file_put_contents</a></li> <li><a class=\"toc - level - 2 \" href=\"#is_dir \" level=\"2 \">is_dir</a></ li> <li><a class=\"toc - level - 2 \" href=\"#is_file \" level=\"2 \">is_file</a></li> <li><a class=\"toc - level - 2 \" href=\"#mkdir \" level=\"2 \">mkdir</a></li> <li><a class=\"toc - level - 2 \" href=\"#rmdir \" level=\"2 \">rmdir</a> </li> <li><a class=\"toc - level - 2 \" href=\"#unlink \" level=\"2 \">unlink</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常用字符串函數 \" level=\"1 \">PHP7 常用字符串函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#explode \" level=\"2 \">explode</a></li> <li><a class=\"toc - level - 2 \" href=\"#implode \" level=\"2 \">implode</a></li> <li><a class=\"toc - level - 2 \" href=\"#md5_file \" level=\"2 \">md5_file</a></li> <li> <a class=\"toc - level - 2 \" href=\"#md5 \" level=\"2 \">md5</a></li> <li><a class=\"toc - level - 2 \" href=\"# number_format \" level=\"2 \">number_format</a></li> <li><aclass=\"toc - level - 2 \" href=\"#str_replace\" level=\"2 \">str_replace</a></ li> <li><a class=\"toc - level - 2 \" href=\"#str_split \" level=\"2 \">str_split</a></li> <li><a class=\"toc - level - 2 \" href=\"#strip_tags \" level=\"2 \">strip_tags</a></li> <li><a class=\"toc - level - 2 \" href=\"#stripos \" level=\"2 \">stripos</ a> </li> <li><a class=\"toc - level - 2 \" href =\"#strlen \" level=\"2 \">strlen</a></li> <li><a class=\"toc - level - 2 \" href=\"#trim \" level=\"2 \">修剪</a ></li> <li><a class=\"toc - level - 2 \" href=\"#mb_convert_encoding \" level=\"2 \">mb_convert_encoding</a></li> <li><a class=\"toc - level - 2 \" href=\"#mb_substr \" level=\"2 \">mb_substr</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常用正則表達式函數 \" level=\"1 \">PHP7 常用正則表達式函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#preg_filter / preg_replace \" level =\"2 \">preg_filter/preg_replace</a></li> <li><a class=\"toc - level - 2 \" href=\"#preg_match_all \" level=\"2 \">preg_match_all</a></li> <li><a class=\"toc - level - 2 \" href=\"#preg_match \" level=\"2 \">preg_match</a> </li> <li><a class=\"toc - level - 2 \" href=\"#preg_s plit \" level=\"2 \">preg_split</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 常用數組函數 \" level= \"1 \">PHP7常用數組函數</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#array_key_exists \" level=\"2 \">array_key_exis ts</a></li> <li><a class=\"toc - level - 2 \" href=\"#array_merge \" level=\"2 \">array_merge</a></li> <li><a class=\"toc - level - 2 \" href=\"#array_unique \" level=\"2 \">array_unique</a></li> <li><a class=\"toc - level - 2 \" href=\"#array_unshift \" level=\"2 \">array_unshift</li> a></li> <li><a class=\"toc - level - 2 \" href=\"#count \" level=\"2 \">計數</a></li> <li><a class=\"toc - level - 2 \" href=\"#extract \" level=\"2 \">提取</a> </li> <li><a class=\"toc - level - 2 \" href=\"#in_array \" level=\"2 \">in_array</a></li> <li><a class=\"toc - level - 2 \" href=\"#krsort \" level=\"2 \">krsort</a> </li> <li><a class=\"toc - level - 2 \" href=\"#ksort \" level=\"2 \">ksort</a></li> <li><a class=\"toc - level - 2 \" href=\"#list \" level=\"2 \">list</a></li> <li><a class=\"toc - level - 2 \" href=\"#shuffle \" level=\"2 \">隨機播放</a></li> <li><a class=\"toc - level - 2 \" href=\"#sort \" level=\"2 \">排序</a></li> </ul> </ li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 GD庫 \" level=\"1 \">PHP7 GD庫</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#創建一張圖片 \" level=\"2 \">創建一張一張圖片</a></li> <li><a class=\"toc - level - 2 \" href=\"#向圖片中輸出一行文字 \" level=\"2 \">向圖片中輸出一行文字</a></li> <li><a class=\"toc - level - 2 \" href=\"#向圖片中添加背景合影 \" level=\"2 \">向圖片中添加背景合影</a></a></li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 獲取請求數據 \" level=\"1 \">PHP7 獲取請求數據</a> <ul> <li> <a class=\"toc - level - 2 \" href=\"#獲取GET請求數據 \" level=\"2 \">獲取GET請求數據</a></li> <li><a class=\"toc - level - 2 \" href=\"#獲取POST請求數據 \" level=\"2 \">獲取POST請求數據數據</a></li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 文件上傳 \" level=\"1 \">PHP7 文件上傳</ a> <ul> <li><a class=\"toc - level - 2 \" href=\"#單文件上傳 \" level=\"2 \">單文件上傳</a></li> <li><a class =\"toc - level - 2 \" href=\"#多文件上傳 \" level=\"2 \">多文件上傳</a> </li> </ul> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7 訪問Mysql數據庫 \" level=\"1 \">PHP7 訪問Mysql數據庫</a> <ul> <li><a class=\"toc - level - 2 \" href=\"#執行INSERT語句 \" level=\"2 \">執行INSERT語句</a></li> <li><a class=\"toc - level - 2 \" href=\"#執行UPDATE語句 \" level=\"2 \" >執行UPDATE語句</a></li> <li><a class=\"toc - level - 2 \" href=\"#執行DELETE語句 \" level=\"2 \">執行DELETE語句</a></li> <li><a class=\"toc - level - 2 \" href=\"#執行SELECT語句 \" level=\"2 \">執行SELECT語句</a> </li> </ul> </li> <li ><a class=\"toc - level - 1 \" href=\"#PHP7 分頁實現 \" level=\"1 \">PHP7 分頁實現</a> </li> <li><a class=\"toc - level - 1 \" href=\"#PHP7在頁面上直接播放視頻 \" level=\"1 \">PHP7在頁面上直接播放視頻</a> <ul></ul> </li> </ul>', '2021-07-25 02:06:16', 0, 123, 1, NULL);
INSERT INTO `article` VALUES (7, 'Node.js', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#Node12 介紹\" level=\"1\">Node12 介紹</a></li><li><a class=\"toc-level-1\" href=\"#下載Node12\" level=\"1\">下載Node12</a></li><li><a class=\"toc-level-1\" href=\"#安裝和配置Node12\" level=\"1\">安裝和配置Node12</a><ul><li><a class=\"toc-level-2\" href=\"#安裝Node12\" level=\" 2\">安裝Node12</a></li><li><a class=\"toc-level-2\" href=\"#配置Node12\" level=\"2\">配置Node12</a></li> <li><a class=\"toc-level-2\" href=\"#驗證Node12\" level=\"2\">驗證Node12</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#在VSCode 上安裝插件\" level=\"1\">在VSCode 上安裝插件</a></li><li><a class=\"toc-level- 1\" href=\"#模塊\" level=\"1\">模塊</a><ul><li><a class=\"toc-level-2\" href=\"#什麼是模塊\" level=\"2\">什麼是模塊</a></li><li><a class=\"toc-level-2\" href=\"#創建模塊\" level=\"2\">創建模塊</a></li><li ><a class=\"toc-level-2\" href=\"#引入模塊\" level=\"2\">引入模塊</a></li><li><a class=\"toc-level-2\" href =\"#執行模塊\" level=\"2\">執行模塊</a></li><li><a class=\"toc-level-2\" href=\"#常見問題\" level=\"2\">常見問題</a><ul><li><a class=\"toc-level-3\" href=\"#問題一\" level=\"3\">問題一</a></li ><li><a class=\"toc-level-3\" href=\"#問題二\" level=\"3\">問題二</a></li><li><a class=\"toc-level- 3\" href=\"#問題三\" level=\"3\">問題三</a></li><li><a class=\"toc-level-3\" href=\"#問題四\" level=\"3 \">問題四</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#類\" level= \"1\">類</a><ul><li><a class=\"toc-level-2\" href=\"#類的定義和實例化\" level=\"2\">類的定義和實例化< /a></li><li><a class=\"toc-level-2\" href=\"#靜態成員\" level=\"2\">靜態成員</a></li><li><a class =\"toc-level-2\" href=\"#實例化成員\" level=\"2\">實例化成員</a></li><li><a class=\"toc-level-2\" href=\" #構造方法\" level=\"2\">構造方法</a></li><li><a class=\"toc-level-2\" href=\"#類的繼承\" level=\"2\">類的繼承</a></li><li><a class=\"toc-level-2\" href=\"#導出類模塊\" level=\"2\">導出類模塊</a></li></ ul></li><li><a class=\"toc-level-1\" href=\"#Node12 創建服務器\" level=\"1\">Node12 創建服務器</a><ul><li><a class =\"toc-level-2\" href=\"#啟動服務器\" level=\"2\">啟動服務器</a></li><li><a class=\"toc-level-2\" href=\"#訪問服務器\" level=\"2\">訪問服務器</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#響應信息\" level=\" 1\">響應信息</a><ul><li><a class=\"toc-level-2\" href=\"#設置響應頭\" level=\"2\">設置響應頭</a> </li><li><a class=\"toc-level-2\" href=\"#設置響應內容\" level=\"2\">設置響應內容</a></li><li><a class= \"toc-level-2\" href=\"#加載頁面\" level=\"2\">加載頁面</a></li><li><a class=\"toc-level-2\" href=\"#常用MIME類型表\" level=\"2\">常用MIME類型表</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#獲取請求信息\" level=\"1\">獲取請求信息</a><ul><li><a class=\"toc-level-2\" href=\"#獲取請求方式和URL\" level=\"2\">獲取請求方式和URL</a></li><li><a class=\"toc-level-2\" href=\"#獲取GET請求參數\" level=\"2\">獲取GET請求參數</a></li ><li><a class=\"toc-level-2\" href=\"#獲取POST請求參數\" level=\"2\">獲取POST請求參數</a></li></ul></li> <li><a class=\"toc-level-1\" href=\"#npm\" level=\"1\">npm</a><ul><li><a class=\"toc-level-2\" href= \"#npm簡介\" level=\"2\">npm簡介</a></li><li><a class=\"toc-level-2\" href=\"#查找依賴項目\" level=\"2\">查找依賴項目</a></li><li><a class=\"toc-level-2\" href=\"#查看npm版本及更新\" level=\"2\">查看npm版本及更新</a></li><li><a class=\"toc-level-2\" href=\"#淘寶鏡像\" level=\"2\">淘寶鏡像</a></li></ul></li><li ><a class=\"toc-level-1\" href=\"#自定義模塊\" level=\"1\">自定義模塊</a><ul><li><a class=\"toc-level-2\" href=\"#創建模塊\" level=\"2\">創建模塊</a></li><li><a class=\"to c-level-2\" href=\"#package.json 配置說明\" level=\"2\">package.json 配置說明</a></li><li><a class=\"toc-level-2\" href =\"#依賴項目管理\" level=\"2\">依賴項目管理</a></li><li><a class=\"toc-level-2\" href=\"#安裝package.json 中依賴的項目\" level=\"2\">安裝package.json 中依賴的項目</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#動態獲取MIME類型\" level=\"1\">動態獲取MIME類型</a><ul><li><a class=\"toc-level-2\" href=\"#安裝mime模塊\" level=\"2\">安裝mime模塊</a></li><li><a class=\"toc-level-2\" href=\"#獲取MIME類型\" level=\"2\">獲取MIME類型</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#EJS嵌入式模板\" level=\"1\">EJS嵌入式模板</a><ul><li> <a class=\"toc-level-2\" href=\"#安裝EJS模塊\" level=\"2\">安裝EJS模塊</a></li><li><a class=\"toc-level-2\" href=\"#模板渲染\" level=\"2\">模板渲染</a></li><li><a class=\"toc-level-2\" href=\"#模板語法\" level=\"2\">模板語法</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#操作MySQL數據庫\" level=\"1\">操作MySQL數據庫< /a><ul><li><a class=\"toc-level-2\" href=\"#安裝MySQL模塊\" level=\"2\">安裝MySQL模塊</a></li><li><a class=\"toc-level-2\" href=\"#連接數據庫\" level=\"2\">連接數據庫</a></li><li><a class=\"toc-level-2\" href=\"#查詢\" level=\"2\">查詢</a></li><li><a class=\"toc-level-2\" href=\"#插入\" level=\"2\">插入</a></li> <li><a class=\"toc-level-2\" href=\"#刪除\" level=\"2\">刪除</a></li><li><a class=\"toc-level-2\" href =\"#更新\" level=\"2\">更新</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Express\" level= \"1\">Express</a><ul><li><a class=\"toc-level-2\" href=\"#安裝Express模塊\" level=\"2\">安裝Express模塊</a></li ><li><a class=\"toc-level-2\" href=\"#創建應用\" level=\"2\">創建應用</a></li><li><a class=\"toc-level- 2\" href=\"#路由常用方法\" level=\"2\">路由常用方法</a></li><li><a class=\"toc-level-2\" href=\"#路由匹配路徑\" level =\"2\">路由匹配路徑</a></li><li><a class=\"toc-level-2\" href=\"#路由處理程序\" level=\"2\">路由處理程序</a ></li><li><a class=\"toc-level-2\" href=\"#響應數據\" level=\"2\">響應數據</a></li><li><a class=\" toc-level-2\" href=\"#獲取參數\" level=\"2\">獲取參數</a></li><li><a class=\"toc-level-2\" href=\"#靜態資源加載\" level=\"2\">靜態資源加載</a></li><li><a class=\"toc-level-2\" href=\"#EJS模板渲染\" level=\"2\">EJS模板渲染< /a></li><li><a class=\"toc-level-2\" href=\"#子應用\" level=\"2\">子應用</a></li><li><a class =\"toc-level-2\" href=\"#cookie\" level=\"2\">cookie</a></li><li><a class=\"toc-level-2\" href=\"#session\" level=\"2\">session</a></li><li><a class=\"toc -level-2\" href=\"#文件上傳\" level=\"2\">文件上傳</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#資源下載\" level=\"1\">資源下載</a></li><li><a class=\"toc-level-1\" href=\"#視頻教程\" level=\"1\">視頻教程</a><ul></ul></li></ul>', '2021-07-24 03:45:47', 0, 44, 3, NULL);
INSERT INTO `article` VALUES (8, 'Java', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#格式化日期\" level=\"1\">格式化日期</a></li ><li><a class=\"toc-level-1\" href=\"#網絡編程\" level=\"1\">網絡編程</a><ul><li><a class=\"toc-level-2 \" href=\"#UDP模式\" level=\"2\">UDP模式</a></li><li><a class=\"toc-level-2\" href=\"#TCP模式\" level=\"2\" >TCP模式</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#多線程\" level=\"1\">多線程</ a><ul><li><a class=\"toc-level-2\" href=\"#創建線程的步驟\" level=\"2\">創建線程的步驟</a></li><li><a class=\"toc-level-2\" href=\"#相關的類\" level=\"2\">相關的類</a></li><li><a class=\"toc-level-2\" href =\"#通過Thread類創建子線程\" level=\"2\">通過Thread類創建子線程</a></li><li><a class=\"toc-level-2\" href=\"#通過Runnable接口創建子線程\" level=\"2\">通過Runnable接口創建子線程</a></li><li><a class=\"toc-level-2\" href=\"#讓多個子線程共享數據一\" level=\"2\">讓多個子線程共享數據一</a></li><li><a class=\"toc-level-2\" href=\"#讓多個子線程共享數據二\" level= \"2\">讓多個子線程共享數據二</a></li><li><a class=\"toc-level-2\" href=\"#線程同步一\" level=\"2\">線程同步一</a></li><li><a class=\"toc-level-2\" href=\"#線程同步二\" level=\"2\">線程同步二</a></li><li> <a class=\"toc-level-2\" href=\"#線程插隊\" level=\"2\">線程插隊< /a></li></ul></li><li><a class=\"toc-level-1\" href=\"#JDBC\" level=\"1\">JDBC</a><ul><li><a class=\"toc-level-2\" href=\"#什麼是JDBC\" level=\"2\">什麼是JDBC</a></li><li><a class=\"toc-level- 2\" href=\"#JDBC API主要功能\" level=\"2\">JDBC API主要功能</a></li><li><a class=\"toc-level-2\" href=\"#JDBC編程步驟\" level=\"2\">JDBC編程步驟</a><ul><li><a class=\"toc-level-3\" href=\"#連接和關閉數據庫\" level=\"3\">連接和關閉數據庫</a></li><li><a class=\"toc-level-3\" href=\"#執行查詢語句\" level=\"3\">執行查詢語句</a></li><li> <a class=\"toc-level-3\" href=\"#執行增、刪、改語句\" level=\"3\">執行增、刪、改語句</a></li><li><a class =\"toc-level-3\" href=\"#用PreparedStatement執行SQL語句\" level=\"3\">用PreparedStatement執行SQL語句</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#亂碼問題\" level=\"2\">亂碼問題</a></li><li><a class=\"toc-level-2\" href=\"#事務處理\" level=\"2\">事務處理</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#properties配置文件\" level =\"1\">properties配置文件</a><ul><li><a class=\"toc-level-2\" href=\"#properties配置文件說明\" level=\"2\">properties配置文件說明</ a></li><li><a class=\"toc-level-2\" href=\"#讀取配置文件\" level=\"2\">讀取配置文件</a></li><li> <a class=\"toc-level-2\" href=\"#Properties類常用的方法\" level=\"2\">Properties類常用的方法</a></li></ul></li><li ><a class=\"toc-level-1\" href=\"#單元測試實現\" level=\"1\">單元測試實現</a></li><li><a class=\"toc-level-1 \" href=\"#文件上傳\" level=\"1\">文件上傳</a><ul><li><a class=\"toc-level-2\" href=\"#Commons-FileUpload組件的API\" level= \"2\">Commons-FileUpload組件的API</a></li><li><a class=\"toc-level-2\" href=\"#使用步驟\" level=\"2\">使用步驟</a ><ul></ul></li></ul></li></ul><ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#格式化日期\" level=\"1\">格式化日期</a></li ><li><a class=\"toc-level-1\" href=\"#網絡編程\" level=\"1\">網絡編程</a><ul><li><a class=\"toc-level-2 \" href=\"#UDP模式\" level=\"2\">UDP模式</a></li><li><a class=\"toc-level-2\" href=\"#TCP模式\" level=\"2\" >TCP模式</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#多線程\" level=\"1\">多線程</ a><ul><li><a class=\"toc-level-2\" href=\"#創建線程的步驟\" level=\"2\">創建線程的步驟</a></li><li><a class=\"toc-level-2\" href=\"#相關的類\" level=\"2\">相關的類</a></li><li><a class=\"toc-level-2\" href =\"#通過Thread類創建子線程\" level=\"2\">通過Thread類創建子線程</a></li><li><a class=\"toc-level-2\" href=\"#通過Runnable接口創建子線程\" level=\"2\">通過Runnable接口創建子線程</a></li><li><a class=\"toc-level-2\" href=\"#讓多個子線程共享數據一\" level=\"2\">讓多個子線程共享數據一</a></li><li><a class=\"toc-level-2\" href=\"#讓多個子線程共享數據二\" level= \"2\">讓多個子線程共享數據二</a></li><li><a class=\"toc-level-2\" href=\"#線程同步一\" level=\"2\">線程同步一</a></li><li><a class=\"toc-level-2\" href=\"#線程同步二\" level=\"2\">線程同步二</a></li><li> <a class=\"toc-level-2\" href=\"#線程插隊\" level=\"2\">線程插隊< /a></li></ul></li><li><a class=\"toc-level-1\" href=\"#JDBC\" level=\"1\">JDBC</a><ul><li><a class=\"toc-level-2\" href=\"#什麼是JDBC\" level=\"2\">什麼是JDBC</a></li><li><a class=\"toc-level- 2\" href=\"#JDBC API主要功能\" level=\"2\">JDBC API主要功能</a></li><li><a class=\"toc-level-2\" href=\"#JDBC編程步驟\" level=\"2\">JDBC編程步驟</a><ul><li><a class=\"toc-level-3\" href=\"#連接和關閉數據庫\" level=\"3\">連接和關閉數據庫</a></li><li><a class=\"toc-level-3\" href=\"#執行查詢語句\" level=\"3\">執行查詢語句</a></li><li> <a class=\"toc-level-3\" href=\"#執行增、刪、改語句\" level=\"3\">執行增、刪、改語句</a></li><li><a class =\"toc-level-3\" href=\"#用PreparedStatement執行SQL語句\" level=\"3\">用PreparedStatement執行SQL語句</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#亂碼問題\" level=\"2\">亂碼問題</a></li><li><a class=\"toc-level-2\" href=\"#事務處理\" level=\"2\">事務處理</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#properties配置文件\" level =\"1\">properties配置文件</a><ul><li><a class=\"toc-level-2\" href=\"#properties配置文件說明\" level=\"2\">properties配置文件說明</ a></li><li><a class=\"toc-level-2\" href=\"#讀取配置文件\" level=\"2\">讀取配置文件</a></li><li> <a class=\"toc-level-2\" href=\"#Properties類常用的方法\" level=\"2\">Properties類常用的方法</a></li></ul></li><li ><a class=\"toc-level-1\" href=\"#單元測試實現\" level=\"1\">單元測試實現</a></li><li><a class=\"toc-level-1 \" href=\"#文件上傳\" level=\"1\">文件上傳</a><ul><li><a class=\"toc-level-2\" href=\"#Commons-FileUpload組件的API\" level= \"2\">Commons-FileUpload組件的API</a></li><li><a class=\"toc-level-2\" href=\"#使用步驟\" level=\"2\">使用步驟</a ><ul></ul></li></ul></li></ul>', '2021-07-24 03:48:00', 0, 5, 4, NULL);
INSERT INTO `article` VALUES (9, 'MyBatis', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#MyBatis3 開發環境搭建\" level=\"1\">MyBatis3 開發環境搭建</a><ul><li><a class=\"toc-level-2\" href=\"#準備工作\" level=\"2\">準備工作</a></li><li><a class=\"toc-level -2\" href=\"#MyBatis3開發環境搭建\" level=\"2\">MyBatis3開發環境搭建</a></li><li><a class=\"toc-level-2\" href=\"#創建配置文件\" level=\"2\">創建配置文件</a></li><li><a class=\"toc-level-2\" href=\"#創建XML映射文件\" level=\"2\">創建XML映射文件</a></li><li><a class=\"toc-level-2\" href=\"#使用MyBatis3訪問數據庫\" level=\"2\">使用MyBatis3訪問數據庫</a></li ></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 工具封裝類\" level=\"1\">MyBatis3 工具封裝類</a></li> <li><a class=\"toc-level-1\" href=\"#MyBatis3 配置數據源\" level=\"1\">MyBatis3 配置數據源</a><ul><li><a class=\"toc- level-2\" href=\"#靜態配置\" level=\"2\">靜態配置</a></li><li><a class=\"toc-level-2\" href=\"#動態配置\" level= \"2\">動態配置</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 日誌實現\" level=\"1\"> MyBatis3 日誌實現</a><ul><li><a class=\"toc-level-2\" href=\"#準備工作\" level=\"2\">準備工作</a></li><li> <a class=\"toc-level-2\" href=\"#部署Log4j\" level=\"2\">部署Log4j< /a></li><li><a class=\"toc-level-2\" href=\"#配置Log4j\" level=\"2\">配置Log4j</a></li></ul></ li><li><a class=\"toc-level-1\" href=\"#MyBatis3 通過接口進行數據庫訪問\" level=\"1\">MyBatis3 通過接口進行數據庫訪問</a><ul><li><a class=\"toc-level-2\" href=\"#創建接口\" level=\"2\">創建接口</a></li><li><a class=\"toc-level-2\" href=\" #修改單元測試文件\" level=\"2\">修改單元測試文件</a></li></ul></li><li><a class=\"toc-level-1\" href=\"# MyBatis3 創建POJO類\" level=\"1\">MyBatis3 創建POJO類</a><ul><li><a class=\"toc-level-2\" href=\"#什麼是POJO類\" level=\"2\" >什麼是POJO類</a></li><li><a class=\"toc-level-2\" href=\"#創建POJO類\" level=\"2\">創建POJO類</a></ li><li><a class=\"toc-level-2\" href=\"#數據庫類型與java類型對照表\" level=\"2\">數據庫類型與java類型對照表</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 向SQL語句傳參\" level=\"1\">MyBatis3 向SQL語句傳參</a><ul ><li><a class=\"toc-level-2\" href=\"#傳入一個參數\" level=\"2\">傳入一個參數</a></li><li><a class=\" toc-level-2\" href=\"#傳入多個參數\" level=\"2\">傳入多個參數</a><ul><li><a class=\"toc-level-3\" href= \"#POJO對象實現\" level=\"3\">POJO對象實現</a></li><li><a class=\"toc-level-3\" href=\"#Map對象實現\" level=\"3\" >Map對象實現</ a></li><li><a class=\"toc-level-3\" href=\"#註解實現\" level=\"3\">註解實現</a></li></ul></li ></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 獲取查詢結果\" level=\"1\">MyBatis3 獲取查詢結果</a><ul>< li><a class=\"toc-level-2\" href=\"#單表查詢\" level=\"2\">單表查詢</a><ul><li><a class=\"toc-level-3 \" href=\"#查詢單個值\" level=\"3\">查詢單個值</a></li><li><a class=\"toc-level-3\" href=\"#查詢一行數據\" level= \"3\">查詢一行數據</a></li><li><a class=\"toc-level-3\" href=\"#查詢多行數據\" level=\"3\">查詢多行數據</ a></li><li><a class=\"toc-level-3\" href=\"#模糊查詢\" level=\"3\">模糊查詢</a></li><li><a class= \"toc-level-3\" href=\"#分頁查詢\" level=\"3\">分頁查詢</a></li></ul></li><li><a class=\"toc-level- 2\" href=\"#多表聯合查詢\" level=\"2\">多表聯合查詢</a><ul><li><a class=\"toc-level-3\" href=\"#主表引用附表字段\" level=\"3\">主表引用附表字段</a></li><li><a class=\"toc-level-3\" href=\"#主表引用附表POJO對象\" level =\"3\">主表引用附表POJO對象</a></li><li><a class=\"toc-level-3\" href=\"#主表引用附表POJO對象集合\" level=\" 3\">主表引用附表POJO對象集合</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href =\"#MyBatis3 結果集映射機制\" level=\"1\">MyBatis3 結果集映射機制</a><ul><li><a class=\"toc-level- 2\" href=\"#POJO類屬性名與數據表字段名不一致的情況\" level=\"2\">POJO類屬性名與數據表字段名不一致的情況</a></li><li><a class=\"toc-level-2\" href=\"#自動映射行為\" level=\"2\">自動映射行為</a><ul><li><a class=\"toc-level-3\" href=\" #取消自動映射\" level=\"3\">取消自動映射</a></li><li><a class=\"toc-level-3\" href=\"#完全自動映射\" level=\"3\">完全自動映射</a></li><li><a class=\"toc-level-3\" href=\"#部分自動映射\" level=\"3\">部分自動映射</a></li> </ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#MyBatis3 映射器的註冊\" level=\"1\">MyBatis3 映射器的註冊</a><ul><li><a class=\"toc-level-2\" href=\"#直接註冊映射器文件\" level=\"2\">直接註冊映射器文件</a></li ><li><a class=\"toc-level-2\" href=\"#通過包名自動註冊\" level=\"2\">通過包名自動註冊</a></li></ul></ li><li><a class=\"toc-level-1\" href=\"#MyBatis3 類型別名\" level=\"1\">MyBatis3 類型別名</a><ul><li><a class=\"toc- level-2\" href=\"#給具體的類取別名\" level=\"2\">給具體的類取別名</a></li><li><a class=\"toc-level-2\" href =\"#給指定包下的類取別名\" level=\"2\">給指定包下的類取別名</a></li></ul></li><li><a class=\" toc-level-1\" href=\"#MyBatis3 動態SQL映射\" level=\"1\">MyBatis3 動態SQL映射</a><ul><li><a class=\"toc-level-2\" href=\"# if\" level=\"2\">if</a></li><li><a class=\"toc-lev el-2\" href=\"#where-if / trim-if\" level=\"2\">where-if / trim-if</a></li><li><a class=\"toc-level-2 \" href=\"#foreach\" level=\"2\">foreach</a></li><li><a class=\"toc-level-2\" href=\"#choose-when-otherwise\" level=\"2 \">choose-when-otherwise</a></li><li><a class=\"toc-level-2\" href=\"#set-if / trim-if\" level=\"2\">set-if / trim-if</a><ul></ul></li></ul></li></ul>', '2021-07-24 03:50:11', 0, 1289, 4, NULL);
INSERT INTO `article` VALUES (10, 'Spring', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#Spring3 環境搭建\" level=\"1\">Spring3 環境搭建</a><ul> <li><a class=\"toc-level-2\" href=\"#下載相關JAR文件\" level=\"2\">下載相關JAR文件</a></li><li><a class=\"toc -level-2\" href=\"#搭建Spring3環境\" level=\"2\">搭建Spring3環境</a></li></ul></li><li><a class=\"toc-level- 1\" href=\"#Spring3 Ioc依賴注入\" level=\"1\">Spring3 Ioc依賴注入</a><ul><li><a class=\"toc-level-2\" href=\"#注入直接量\" level=\"2\">注入直接量</a></li><li><a class=\"toc-level-2\" href=\"#注入對象\" level=\"2\">注入對象</a> </li><li><a class=\"toc-level-2\" href=\"#構造注入\" level=\"2\">構造注入</a></li><li><a class=\"toc -level-2\" href=\"#注入特殊值\" level=\"2\">注入特殊值</a><ul><li><a class=\"toc-level-3\" href=\"#注入null值\" level=\"3\">注入null值</a></li><li><a class=\"toc-level-3\" href=\"#注入空字符串\" level=\"3\">注入空字符串</a></li><li><a class=\"toc-level-3\" href=\"#注入包含特殊字符的值\" level=\"3\">注入包含特殊字符的值</a> </li><li><a class=\"toc-level-3\" href=\"#注入List集合\" level=\"3\">注入List集合</a></li><li><a class= \"toc-level-3\" href=\"#注入Set集合\" level=\"3\">注入Set集合</a></li><li><a class=\"toc-level-3\" href=\"#注入Map集合\" level=\"3\">注入Map集合</a></li><li><a class=\"toc-level-3\" href=\"#注入Properties集合\" level=\"3\">注入Properties集合</ a></li></ul></li><li><a class=\"toc-level-2\" href=\"#使用註解實現Ioc\" level=\"2\">使用註解實現Ioc</a ><ul><li><a class=\"toc-level-3\" href=\"#定義Bean\" level=\"3\">定義Bean</a></li><li><a class=\"toc -level-3\" href=\"#Bean組件裝配\" level=\"3\">Bean組件裝配</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 AOP實現\" level=\"1\">Spring3 AOP實現</a><ul><li><a class=\"toc-level-2\" href= \"#相關JAR文件\" level=\"2\">相關JAR文件</a></li><li><a class=\"toc-level-2\" href=\"#AOP增強\" level=\"2\"> AOP增強</a></li><li><a class=\"toc-level-2\" href=\"#使用註解實現AOP增強\" level=\"2\">使用註解實現AOP增強</a>< /li><li><a class=\"toc-level-2\" href=\"#切入點表達式匹配規則舉例\" level=\"2\">切入點表達式匹配規則舉例</a></li> <li><a class=\"toc-level-2\" href=\"#JoinPoint 常用方法\" level=\"2\">JoinPoint 常用方法</a></li><li><a class=\"toc-level -2\" href=\"#ProceedingJoinPoint 常用方法\" level=\"2\">ProceedingJoinPoint 常用方法</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 整合MyBatis3\" level=\"1\">Spring3 整合MyBatis3</ a><ul><li><a class=\"toc-level-2\" href=\"#相關JAR文件\" level=\"2\">相關JAR文件</a></li><li><a class =\"toc-level-2\" href=\"#整合思路\" level=\"2\">整合思路</a></li><li><a class=\"toc-level-2\" href=\"#整合實現\" level=\"2\">整合實現</a></li><li><a class=\"toc-level-2\" href=\"#將MyBatis 中的配置轉移到Spring 配置文件中\" level= \"2\">將MyBatis 中的配置轉移到Spring 配置文件中</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3映射器接口實現\" level=\"1\">Spring3 映射器接口實現</a><ul><li><a class=\"toc-level-2\" href=\"#實現類實現映射器接口\" level= \"2\">實現類實現映射器接口</a><ul><li><a class=\"toc-level-3\" href=\"#普通實現\" level=\"3\">普通實現</a> </li><li><a class=\"toc-level-3\" href=\"#通過繼承SqlSessionDaoSupport類實現\" level=\"3\">通過繼承SqlSessionDaoSupport類實現</a></li></ul ></li><li><a class=\"toc-level-2\" href=\"#注入實現映射器接口\" level=\"2\">注入實現映射器接口</a><ul><li> <a class=\"toc-level-3\" href=\"#使用MapperFactoryBean 注入\" level=\"3\">使用MapperFactoryBean 注入</a></li><li><a class=\"toc-level-3\" href=\"#使用MapperScannerConfigurer 注入\" level=\"3\">使用MapperScannerConfigurer 注入</a></li></ul></li></ul></li><li><a class=\"toc -level-1\" href=\"#Spring3 聲明式事務\" level=\"1\">Spring3 聲明式事務</a><ul><li><a class=\"toc-level-2\" href=\"#使用Spring XML實現聲明式事務\" level=\"2\">使用Spring XML實現聲明式事務</a></li><li><a class=\"toc-level-2\" href=\"#使用註解實現聲明式事務處理\" level =\"2\">使用註解實現聲明式事務處理</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 數據源配置\" level=\"1\">Spring3 數據源配置</a><ul><li><a class=\"toc-level-2\" href=\"#使用BasicDataSource直接配置數據源\" level=\"2\">使用BasicDataSource直接配置數據源</a></li><li><a class=\"toc-level-2\" href=\"#使用屬性文件配置數據源\" level=\"2\">使用屬性文件配置數據源</a></li><li><a class=\"toc-level-2\" href=\"#使用JNDI數據源\" level=\"2\">使用JNDI數據源</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#Spring3 指定Bean的作用域\" level=\"1\">Spring3 指定Bean的作用域</a><ul ><li><a class=\"toc-level-2\" href=\"#Bean的作用域說明\" level=\"2\">Bean的作用域說明</a></li><li><a class =\"toc-level-2\" href=\"#設置Bean的作用\" level=\"2\">設置Bean的作用</a><ul><li><a class=\"toc-level-3\" href= \"#xml方式\" level=\"3\">xml方式</a></li><li><a class=\"toc-level-3\" href=\"#註解方式\" level=\"3\">註解方式</a></li></ul></li></ul></li><li><a class=\"toc-level-1\" href=\"#Sp ring3 自動裝配\" level=\"1\">Spring3 自動裝配</a><ul><li><a class=\"toc-level-2\" href=\"#局部設置\" level=\"2\">局部設置< /a><ul><li><a class=\"toc-level-3\" href=\"#不進行自動裝配\" level=\"3\">不進行自動裝配</a></li><li> <a class=\"toc-level-3\" href=\"#按屬性名稱進行自動裝配\" level=\"3\">按屬性名稱進行自動裝配</a></li><li><a class=\" toc-level-3\" href=\"#按屬性類型進行自動裝配\" level=\"3\">按屬性類型進行自動裝配</a></li><li><a class=\"toc-level-3 \" href=\"#按構造方法的參數類型進行自動裝配\" level=\"3\">按構造方法的參數類型進行自動裝配</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#全局設置\" level=\"2\">全局設置</a></li></ul></li><li><a class=\"toc -level-1\" href=\"#Spring3 拆分配置文件\" level=\"1\">Spring3 拆分配置文件</a><ul><li><a class=\"toc-level-2\" href=\" #拆分配置文件\" level=\"2\">拆分配置文件</a></li><li><a class=\"toc-level-2\" href=\"#整合配置文件\" level=\"2 \">整合配置文件</a><ul><li><a class=\"toc-level-3\" href=\"#配置文件導入\" level=\"3\">配置文件導入</a></li ><li><a class=\"toc-level-3\" href=\"#創建上下文對象時引入所有的配置文件\" level=\"3\">創建上下文對象時引入所有的配置文件</a><ul ></ul></li></ul></li></ul></li></ul>', '2021-07-24 03:51:33', 0, 1245, 4, NULL);
INSERT INTO `article` VALUES (11, 'SpringMVC', '<ul class=\"markdown-toc-list\"><li><a class=\"toc-level-1\" href=\"#SpringMVC3 環境搭建\" level=\"1\">SpringMVC3 環境搭建</a><ul> <li><a class=\"toc-level-2\" href=\"#下載相關JAR包\" level=\"2\">下載相關JAR包</a></li><li><a class=\"toc -level-2\" href=\"#搭建SpringMVC3環境\" level=\"2\">搭建SpringMVC3環境</a></li></ul></li><li><a class=\"toc-level- 1\" href=\"#SprintMVC3 使用註解實現控制器類\" level=\"1\">SprintMVC3 使用註解實現控制器類</a><ul><li><a class=\"toc-level-2\" href= \"#支持註解配置\" level=\"2\">支持註解配置</a></li><li><a class=\"toc-level-2\" href=\"#控制器保護\" level=\"2\" >控制器改造</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3請求映射\" level=\"1\">SpringMVC3請求映射</a><ul><li><a class=\"toc-level-2\" href=\"#單映射\" level=\"2\">單映射</a><ul><li><a class=\"toc-level-3\" href=\"#單級映射\" level=\"3\">單級映射</a></li><li><a class=\"toc-level-3\" href =\"#多級映射\" level=\"3\">多級映射</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#多映射\" level=\"2\">多映射</a></li><li><a class=\"toc-level-2\" href=\"#只允許GET請求\" level=\"2\">只允許GET請求</a></li><li><a class=\"toc-level-2\" href=\"#只允許POST請求\" level=\"2\">只允許POST請求</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3視圖向控制器傳遞參數\" level=\"1\">SpringMVC3視圖向控制器傳遞參數</a><ul><li><a class=\"toc-level-2\" href=\"#提交單個參數\" level=\"2\">提交單個參數</a></li ><li><a class=\"toc-level-2\" href=\"#提交多個參數\" level=\"2\">提交多個參數</a></li><li><a class=\" toc-level-2\" href=\"#非必填參數\" level=\"2\">非必填參數</a></li><li><a class=\"toc-level-2\" href=\" #給參數設置默認值\" level=\"2\">給參數設置默認值</a></li><li><a class=\"toc-level-2\" href=\"#將參數賦值給對象的屬性\"level=\"2\">將參數賦值給對象的屬性</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3控制器向視圖傳遞參數\" level=\"1\">SpringMVC3控制器向視圖傳遞參數</a><ul><li><a class=\"toc-level-2\" href=\"#使用ModelAndView類實現\" level=\"2\">使用ModelAndView類實現</a><ul><li><a class=\"toc-level-3\" href=\"#極普通類型參數\" level=\"3\">極普通普通類型參數</a></li><li><a class=\"toc-level-3\" href=\"#參數映射類型的參數\" level=\"3\">映射類型的</a ></li<li><a class=\"toc-level-3\" href=\"#澳大利亞對像類型的參數\" level=\"3\"> 澳大利亞對像類型的參數</a></li> </ul></li><li><a class=\"toc-level-2\" href=\"#使用Model類實現\" level=\"2\">使用Model類實現</a><ul><li ><a class=\"toc-level-3\" href=\" # 普通類型參數\" level=\"3\">普通類型參數</a></li><li><a class=\"toc-level-3\" href=\"#普通類型的參數\" level=\"3\">li 地圖類型的參數</a></li><li><a class=\"toc-level-3\" href=\"#向頁面動態對象參數\" level=\"3\" >向頁面傳遞對象參數</a></li><li><a class=\"toc-level-3\" href=\"#接受參數並返回到頁面\" level=\"3\">接受參數並返回到頁面</a></li></ul></li><li><a class=\"toc-level-2\" href=\"#使用Map類型實現\" level=\"2\">使用Map類型實現</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3整合Spring與MyBatis\" level=\"1\">SpringMVC3整合Spring與MyBatis</a><ul><li><a class=\"toc-level-2\" href=\"#創建項目\" level=\"2\">創建項目</a></li><li><a class=\"toc-level-2\" href=\"#配置SSM\" level=\"2\">配置SSM</a></li><li><a class=\"toc-level-2\" href=\"#寫POJO類\" level=\"2\">寫POJO類</a></li><li><a class=\"toc-level-2\" href=\"#寫寫數據庫操作\" level=\"2\">寫寫數據庫操作</a></li><li><a class=\"toc-level-2\" href=\"#寫業務層\" level=\"2\">寫業務層</a></li><li><a class=\"toc-level-2\" href=\"#寫視圖層\" level=\"2\">寫視圖層</a><li><a class=\"toc-level- 2\" href=\"#寫小說\" level=\"2\">寫小說</a></li></ul></li><li><a class=\"toc-level-1\" href =\"#SpringMVC3評論與創作\" level= \"1\">SpringMVC3評論與創作</a><ul><li><a class=\"toc-level-2\" href=\"#評論\" level=\"2\">評論</a></li ><li><a class=\"toc-level-2\" href=\"#產出\" level=\"2\">產出</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 Session與Reuqrest對象\" level=\"1\">SpringMVC3 Session與Reuqrest對象</a><ul><li><a class=\"toc-level- 2\" href=\"#使用 session 對象\" level=\"2\">使用 session 對象</a></li><li><a class=\"toc-level-2\" href=\"#使用 request 對象\" level =\"2\">使用請求對象</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3加載動態資源\" level=\" 1\">SpringMVC3加載異常資源</a></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3異常處理\" level=\"1\">SpringMVC3異常處理</a> <ul><li><a class=\"toc-level-2\" href=\"#局部異常處理\" level=\"2\">局部異常處理</a></li><li><a class=\" toc-level-2\" href=\"#異常處理\" level=\"2\">異常處理</a></li></ul></li><li><a class=\"toc-level -1\" href=\"#SpringMVC3 中文亂碼問題\" level=\"1\">SpringMVC3 中文亂碼問題</a></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 表單標籤\" level=\"1\">SpringMVC3表單標籤</a><ul><li><a class=\"toc-level-2\" href=\"#聲明taglib 聲明\" level=\"2\">聲明taglib指令</a></li><li><a class=\"toc-level-2\" href=\"#form標籤\" level=\"2\">表單標籤</a></li><li><a class=\"toc-level-2\" href=\"#常用表單標籤\" level=\"2\">常用表單標籤</a></li><li><a class=\"toc-level-2\" href =\"#常用屬性\" level=\"2\">常用屬性</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 JSR303框架\"level=\"1\">SpringMVC3 JSR303加密框架​​</a><ul><li><a class=\"toc-level-2\" href=\"#依賴的JAR文件\" level=\"2\" >依賴的JAR文件</a></li><li><a class=\"toc-level-2\" href=\"#JSR 303約束\" level=\"2\">JSR 303約束</a></ li><li><a class=\"toc-level-2\" href=\"#JSR 303 應用\" level=\"2\">JSR 303 應用</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 REST風格的URL\" level=\"1\">SpringMVC3 REST風格的URL</a></li><li><a class=\" toc-level-1\" href=\"#SpringMVC3 文件上傳\" level=\"1\">SpringMVC3 文件上傳</a><ul><li><a class=\"toc-level-2\" href=\"#依賴的JAR文件\" level=\"2\">依賴的JAR文件</a></li><li><a class=\"toc-level-2\" href=\"#單文件上傳\" level=\"2\">單文件上傳</a></li><li><a class=\"toc-level-2\" href=\"#多文件上傳\" level=\"2\">多文件上傳</a></li><li><a class=\"toc-level-2\" href=\"#前初步實現文件上傳\" level=\"2\">前初步實現文件上傳</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 響應JSON數據\" level=\"1\">SpringMVC3 響應JSON數據</a ><ul><li><a class=\"toc-level-2\" href=\"#依賴的JAR文件\" level=\"2\">依賴的JAR文件</a></li><li><a class=\"toc-level-2\" href=\"#返回JSON數據\" level=\"2\">返回JSON數據</a></li><li><a class=\"toc-level-2\" href= \"#中文亂碼解決\" level=\"2\">中文亂碼解決</a><ul><li><a class=\"toc-level-3\" href=\"#使用註解解決\" level=\"3\">使用註解解決</a></li><li><a class=\"toc-level-3\" href=\"#使用StringHttpMessageConverter類解決\" level=\"3\">使用StringHttpMessageConverter類解決</a></a></ li><li><a class=\"toc-level-3\" href=\"#使用FastJsonHttpMessageConverter類解決\" level=\"3\">使用FastJsonHttpMessageConverter類解決</a></li></ul></li ><li><a class=\"toc-level-2\" href=\"#JSON請求時406錯誤\" level=\"2\">JSON請求時406錯誤</a></li><li><a class =\"toc-level-2\" href=\"#日期格式問題\" level=\"2\">日期格式問題</a><ul><li><a class=\"toc-level-3\" href=\"#註解方式解決\" level=\"3\">註解方式解決</a></li><li><a class=\"toc-level-3\" href=\"#配置文件方式解決\" level=\"3\">配置文件方式解決</a></li><li><a class=\"toc-level-3\" href=\"#混合模式\" level=\"3\">混合模式</a></li></ul></li></ul></li><l i><a class=\"toc-level-1\" href=\"#SpringMVC3 多視圖解析器\" level=\"1\">SpringMVC3 多視圖解析器</a><ul><li><a class=\"toc -level-2\" href=\"#配置XML文件\" level=\"2\">配置XML文件</a></li><li><a class=\"toc-level-2\" href=\"#寫控制器\" level=\"2\">寫信</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3自定義轉換器\" level=\"\">SpringMVC3 自定義轉換器</a><ul><li><a class=\"toc-level-2\" href=\"#創建自定義轉換器\" level=\"2\">創建自定義轉換器自定義轉換器</a></li><li><a class=\"toc-level-2\" href=\"#配置自定義轉換器\" level=\"2\">配置自定義轉換器</a ></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3 自定義編輯器\" level=\"1\">SpringMVC3 自定義編輯器</ a><ul><li><a class=\"toc-level-2\" href=\"#創建自定義編輯器\" level=\"2\">創建自定義編輯器</a></li><li ><a class=\"toc-level-2\" href=\"#使用自定義編輯器\" level=\"2\">使用自定義編輯器</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC3自定義攔截器\" level=\"1\">SpringMVC3自定義攔截器</a><ul><li><a class=\"toc -level-2\" href=\"#創建自定義攔截器\" level=\"2\">創建自定義攔截器</a></li><li><a class=\"toc-level-2\" href= \"#配置自定義攔截器\" level=\"2\">配置自定義攔截器</a></li></ul></li><li><a class=\"toc-level-1\" href =\"#SpringMVC3 郵箱發送\" level=\"1\">SpringMVC3郵箱發送</a><ul><li><a class=\"toc-level-2\" href=\"#添加依賴\" level=\"2\">添加依賴</a></li><li><a class=\"toc-level-2\" href=\"#創建配置文件\" level=\"2\">創建配置文件</a></li><li><a class=\" toc-level-2\" href=\"#創建業務層代碼\" level=\"2\">創建業務層代碼</a></li><li><a class=\"toc-level-2\" href=\" #創建控制器層代碼\" level=\"2\">創建控制器層代碼</a></li><li><a class=\"toc-level-2\" href=\"#測試\" level=\"2 \">測試</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC4集成Swagger\" level=\"1\">SpringMVC4集成Swagger </a><ul><li><a class=\"toc-level-2\" href=\"#SwaggerIntroduction\" level=\"2\">Swagger簡介</a></li><li><a class =\"toc-level-2\" href=\"#環境準備\" level=\"2\">環境準備</a></li><li><a class=\"toc-level-2\" href=\"#集成配置步驟\" level=\"2\">集成配置步驟</a></li><li><a class=\"toc-level-2\" href=\"#Swagger幫助手冊\" level=\"2\">Swagger幫助手冊</a></li></ul></li><li><a class=\"toc-level-1\" href=\"#SpringMVC4 JSON日期格式化\" level=\"1\">SpringMVC4 JSON日期格式化</a><ul></ul></li></ul>', '2021-07-25 02:20:30', 0, 456, 4, NULL);
INSERT INTO `article` VALUES (12, '測試標題1', '<p>測試内容</p><figure class=\"image\"><img src=\"/upload/2ccff36728e6c4abe2b55f68deb44644.png\"></figure>', '2021-07-21 21:57:32', 1, 0, 1, '/upload/30d27b7f1422247c74d1024fb7f01d57.png');
COMMIT;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '类目名称',
  `index` int(11) NOT NULL DEFAULT '0' COMMENT '排序，值越大越靠前',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='文章類目表';

-- ----------------------------
-- Records of category
-- ----------------------------
BEGIN;
INSERT INTO `category` VALUES (1, 'WEB前端', 3);
INSERT INTO `category` VALUES (2, 'PHP', 2);
INSERT INTO `category` VALUES (3, 'NodeJS', 1);
INSERT INTO `category` VALUES (4, 'Java', 0);
INSERT INTO `category` VALUES (6, '測試類目', 5);
COMMIT;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `handle` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '操作内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '操作时间',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='日誌表';

-- ----------------------------
-- Records of log
-- ----------------------------
BEGIN;
INSERT INTO `log` VALUES (1, '登入', '2021-07-21 22:00:03', '114.235.246.154');
INSERT INTO `log` VALUES (2, '添加類目', '2021-07-21 22:00:37', '114.235.246.154');
INSERT INTO `log` VALUES (3, '添加部落格', '2021-07-21 22:00:28', '114.235.246.154');
INSERT INTO `log` VALUES (4, '添加部落格', '2021-07-21 22:00:26', '114.235.246.154');
INSERT INTO `log` VALUES (5, '登入', '2021-07-21 22:00:07', '49.81.173.95');
INSERT INTO `log` VALUES (6, '編輯部落格', '2021-07-21 22:00:48', '49.81.173.95');
INSERT INTO `log` VALUES (7, '添加類目', '2021-07-21 22:00:40', '49.81.173.95');
INSERT INTO `log` VALUES (8, '添加部落格', '2021-07-21 22:00:24', '49.81.173.95');
INSERT INTO `log` VALUES (9, '登入', '2021-07-21 22:00:10', '127.0.0.1');
INSERT INTO `log` VALUES (10, '登入', '2021-07-21 22:00:12', '127.0.0.1');
INSERT INTO `log` VALUES (11, '登入', '2021-07-21 22:00:15', '127.0.0.1');
COMMIT;

-- ----------------------------
-- Table structure for pv
-- ----------------------------
DROP TABLE IF EXISTS `pv`;
CREATE TABLE `pv` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `time` date NOT NULL COMMENT '日期',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=638 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='訪問紀錄表';

-- ----------------------------
-- Records of pv
-- ----------------------------
BEGIN;
INSERT INTO `pv` VALUES (1, '2018-06-01', 2);
INSERT INTO `pv` VALUES (2, '2018-06-02', 5);
INSERT INTO `pv` VALUES (3, '2018-06-03', 7);
INSERT INTO `pv` VALUES (4, '2018-06-04', 11);
INSERT INTO `pv` VALUES (5, '2018-06-05', 3);
INSERT INTO `pv` VALUES (6, '2018-06-06', 8);
INSERT INTO `pv` VALUES (7, '2018-06-07', 12);
INSERT INTO `pv` VALUES (8, '2018-06-08', 9);
INSERT INTO `pv` VALUES (9, '2018-06-09', 7);
INSERT INTO `pv` VALUES (10, '2018-06-10', 12);
INSERT INTO `pv` VALUES (11, '2018-06-11', 5);
INSERT INTO `pv` VALUES (12, '2018-06-12', 3);
INSERT INTO `pv` VALUES (13, '2018-06-13', 17);
INSERT INTO `pv` VALUES (14, '2018-06-14', 47);
INSERT INTO `pv` VALUES (15, '2018-06-15', 17);
INSERT INTO `pv` VALUES (16, '2018-06-16', 9);
INSERT INTO `pv` VALUES (17, '2018-06-17', 13);
INSERT INTO `pv` VALUES (18, '2018-06-18', 10);
INSERT INTO `pv` VALUES (19, '2018-06-19', 12);
INSERT INTO `pv` VALUES (20, '2018-06-20', 14);
INSERT INTO `pv` VALUES (21, '2018-06-21', 12);
INSERT INTO `pv` VALUES (22, '2018-06-22', 20);
INSERT INTO `pv` VALUES (23, '2018-06-23', 16);
INSERT INTO `pv` VALUES (24, '2018-06-24', 19);
INSERT INTO `pv` VALUES (25, '2018-06-25', 22);
INSERT INTO `pv` VALUES (26, '2018-06-26', 19);
INSERT INTO `pv` VALUES (27, '2018-06-27', 17);
INSERT INTO `pv` VALUES (28, '2018-06-28', 20);
INSERT INTO `pv` VALUES (29, '2018-06-29', 17);
INSERT INTO `pv` VALUES (30, '2018-06-30', 16);
INSERT INTO `pv` VALUES (31, '2018-07-01', 21);
INSERT INTO `pv` VALUES (32, '2018-07-02', 46);
INSERT INTO `pv` VALUES (33, '2018-07-03', 76);
INSERT INTO `pv` VALUES (34, '2018-07-04', 74);
INSERT INTO `pv` VALUES (35, '2018-07-05', 70);
INSERT INTO `pv` VALUES (36, '2018-07-06', 68);
INSERT INTO `pv` VALUES (37, '2018-07-07', 44);
INSERT INTO `pv` VALUES (38, '2018-07-08', 40);
INSERT INTO `pv` VALUES (39, '2018-07-09', 58);
INSERT INTO `pv` VALUES (40, '2018-07-10', 96);
INSERT INTO `pv` VALUES (41, '2018-07-11', 118);
INSERT INTO `pv` VALUES (42, '2018-07-12', 116);
INSERT INTO `pv` VALUES (43, '2018-07-13', 122);
INSERT INTO `pv` VALUES (44, '2018-07-14', 85);
INSERT INTO `pv` VALUES (45, '2018-07-15', 71);
INSERT INTO `pv` VALUES (46, '2018-07-16', 128);
INSERT INTO `pv` VALUES (47, '2018-07-17', 63);
INSERT INTO `pv` VALUES (48, '2018-07-18', 98);
INSERT INTO `pv` VALUES (49, '2018-07-19', 114);
INSERT INTO `pv` VALUES (50, '2018-07-20', 134);
INSERT INTO `pv` VALUES (51, '2018-07-21', 89);
INSERT INTO `pv` VALUES (52, '2018-07-22', 95);
INSERT INTO `pv` VALUES (53, '2018-07-23', 132);
INSERT INTO `pv` VALUES (54, '2018-07-24', 107);
INSERT INTO `pv` VALUES (55, '2018-07-25', 98);
INSERT INTO `pv` VALUES (56, '2018-07-26', 98);
INSERT INTO `pv` VALUES (57, '2018-07-27', 100);
INSERT INTO `pv` VALUES (58, '2018-07-28', 86);
INSERT INTO `pv` VALUES (59, '2018-07-29', 75);
INSERT INTO `pv` VALUES (60, '2018-07-30', 94);
INSERT INTO `pv` VALUES (61, '2018-07-31', 106);
INSERT INTO `pv` VALUES (62, '2018-08-01', 98);
INSERT INTO `pv` VALUES (63, '2018-08-02', 103);
INSERT INTO `pv` VALUES (64, '2018-08-03', 101);
INSERT INTO `pv` VALUES (65, '2018-08-04', 78);
INSERT INTO `pv` VALUES (66, '2018-08-05', 82);
INSERT INTO `pv` VALUES (67, '2018-08-06', 26);
INSERT INTO `pv` VALUES (68, '2018-08-07', 8);
INSERT INTO `pv` VALUES (69, '2018-08-08', 10);
INSERT INTO `pv` VALUES (70, '2018-08-09', 9);
INSERT INTO `pv` VALUES (71, '2018-08-10', 11);
INSERT INTO `pv` VALUES (72, '2018-08-11', 21);
INSERT INTO `pv` VALUES (73, '2018-08-12', 39);
INSERT INTO `pv` VALUES (74, '2018-08-13', 34);
INSERT INTO `pv` VALUES (75, '2018-08-14', 29);
INSERT INTO `pv` VALUES (76, '2018-08-15', 16);
INSERT INTO `pv` VALUES (77, '2018-08-16', 18);
INSERT INTO `pv` VALUES (78, '2018-08-17', 16);
INSERT INTO `pv` VALUES (79, '2018-08-18', 14);
INSERT INTO `pv` VALUES (80, '2018-08-19', 13);
INSERT INTO `pv` VALUES (81, '2018-08-20', 24);
INSERT INTO `pv` VALUES (82, '2018-08-21', 33);
INSERT INTO `pv` VALUES (83, '2018-08-22', 20);
INSERT INTO `pv` VALUES (84, '2018-08-23', 25);
INSERT INTO `pv` VALUES (85, '2018-08-24', 17);
INSERT INTO `pv` VALUES (86, '2018-08-25', 21);
INSERT INTO `pv` VALUES (87, '2018-08-26', 19);
INSERT INTO `pv` VALUES (88, '2018-08-27', 21);
INSERT INTO `pv` VALUES (89, '2018-08-28', 14);
INSERT INTO `pv` VALUES (90, '2018-08-29', 13);
INSERT INTO `pv` VALUES (91, '2018-08-30', 9);
INSERT INTO `pv` VALUES (92, '2018-08-31', 13);
INSERT INTO `pv` VALUES (93, '2018-09-01', 19);
INSERT INTO `pv` VALUES (94, '2018-09-02', 8);
INSERT INTO `pv` VALUES (95, '2018-09-03', 18);
INSERT INTO `pv` VALUES (96, '2018-09-04', 17);
INSERT INTO `pv` VALUES (97, '2018-09-05', 23);
INSERT INTO `pv` VALUES (98, '2018-09-06', 30);
INSERT INTO `pv` VALUES (99, '2018-09-07', 20);
INSERT INTO `pv` VALUES (100, '2018-09-08', 15);
INSERT INTO `pv` VALUES (101, '2018-09-09', 27);
INSERT INTO `pv` VALUES (102, '2018-09-10', 23);
INSERT INTO `pv` VALUES (103, '2018-09-11', 18);
INSERT INTO `pv` VALUES (104, '2018-09-12', 35);
INSERT INTO `pv` VALUES (105, '2018-09-13', 19);
INSERT INTO `pv` VALUES (106, '2018-09-14', 10);
INSERT INTO `pv` VALUES (107, '2018-09-15', 16);
INSERT INTO `pv` VALUES (108, '2018-09-16', 19);
INSERT INTO `pv` VALUES (109, '2018-09-17', 17);
INSERT INTO `pv` VALUES (110, '2018-09-18', 38);
INSERT INTO `pv` VALUES (111, '2018-09-19', 29);
INSERT INTO `pv` VALUES (112, '2018-09-20', 49);
INSERT INTO `pv` VALUES (113, '2018-09-21', 13);
INSERT INTO `pv` VALUES (114, '2018-09-22', 40);
INSERT INTO `pv` VALUES (115, '2018-09-23', 12);
INSERT INTO `pv` VALUES (116, '2018-09-24', 11);
INSERT INTO `pv` VALUES (117, '2018-09-25', 61);
INSERT INTO `pv` VALUES (118, '2018-09-26', 22);
INSERT INTO `pv` VALUES (119, '2018-09-27', 51);
INSERT INTO `pv` VALUES (120, '2018-09-28', 71);
INSERT INTO `pv` VALUES (121, '2018-09-29', 110);
INSERT INTO `pv` VALUES (122, '2018-09-30', 36);
INSERT INTO `pv` VALUES (123, '2018-10-01', 98);
INSERT INTO `pv` VALUES (124, '2018-10-02', 60);
INSERT INTO `pv` VALUES (125, '2018-10-03', 48);
INSERT INTO `pv` VALUES (126, '2018-10-04', 48);
INSERT INTO `pv` VALUES (127, '2018-10-05', 54);
INSERT INTO `pv` VALUES (128, '2018-10-06', 46);
INSERT INTO `pv` VALUES (129, '2018-10-07', 40);
INSERT INTO `pv` VALUES (130, '2018-10-08', 53);
INSERT INTO `pv` VALUES (131, '2018-10-09', 14);
INSERT INTO `pv` VALUES (132, '2018-10-10', 15);
INSERT INTO `pv` VALUES (133, '2018-10-11', 7);
INSERT INTO `pv` VALUES (134, '2018-10-12', 19);
INSERT INTO `pv` VALUES (135, '2018-10-13', 125);
INSERT INTO `pv` VALUES (136, '2018-10-14', 48);
INSERT INTO `pv` VALUES (137, '2018-10-15', 39);
INSERT INTO `pv` VALUES (138, '2018-10-16', 56);
INSERT INTO `pv` VALUES (139, '2018-10-17', 30);
INSERT INTO `pv` VALUES (140, '2018-10-18', 101);
INSERT INTO `pv` VALUES (141, '2018-10-19', 18);
INSERT INTO `pv` VALUES (142, '2018-10-20', 34);
INSERT INTO `pv` VALUES (143, '2018-10-21', 30);
INSERT INTO `pv` VALUES (144, '2018-10-22', 18);
INSERT INTO `pv` VALUES (145, '2018-10-23', 35);
INSERT INTO `pv` VALUES (146, '2018-10-24', 27);
INSERT INTO `pv` VALUES (147, '2018-10-25', 22);
INSERT INTO `pv` VALUES (148, '2018-10-26', 31);
INSERT INTO `pv` VALUES (149, '2018-10-27', 38);
INSERT INTO `pv` VALUES (150, '2018-10-28', 35);
INSERT INTO `pv` VALUES (151, '2018-10-29', 48);
INSERT INTO `pv` VALUES (152, '2018-10-30', 53);
INSERT INTO `pv` VALUES (153, '2018-10-31', 25);
INSERT INTO `pv` VALUES (154, '2018-11-01', 24);
INSERT INTO `pv` VALUES (155, '2018-11-02', 19);
INSERT INTO `pv` VALUES (156, '2018-11-03', 34);
INSERT INTO `pv` VALUES (157, '2018-11-04', 11);
INSERT INTO `pv` VALUES (158, '2018-11-05', 22);
INSERT INTO `pv` VALUES (159, '2018-11-06', 45);
INSERT INTO `pv` VALUES (160, '2018-11-07', 48);
INSERT INTO `pv` VALUES (161, '2018-11-08', 38);
INSERT INTO `pv` VALUES (162, '2018-11-09', 20);
INSERT INTO `pv` VALUES (163, '2018-11-10', 60);
INSERT INTO `pv` VALUES (164, '2018-11-11', 17);
INSERT INTO `pv` VALUES (165, '2018-11-12', 14);
INSERT INTO `pv` VALUES (166, '2018-11-13', 38);
INSERT INTO `pv` VALUES (167, '2018-11-14', 15);
INSERT INTO `pv` VALUES (168, '2018-11-15', 24);
INSERT INTO `pv` VALUES (169, '2018-11-16', 29);
INSERT INTO `pv` VALUES (170, '2018-11-17', 12);
INSERT INTO `pv` VALUES (171, '2018-11-18', 12);
INSERT INTO `pv` VALUES (172, '2018-11-19', 16);
INSERT INTO `pv` VALUES (173, '2018-11-20', 24);
INSERT INTO `pv` VALUES (174, '2018-11-21', 12);
INSERT INTO `pv` VALUES (175, '2018-11-22', 20);
INSERT INTO `pv` VALUES (176, '2018-11-23', 11);
INSERT INTO `pv` VALUES (177, '2018-11-24', 68);
INSERT INTO `pv` VALUES (178, '2018-11-25', 28);
INSERT INTO `pv` VALUES (179, '2018-11-26', 26);
INSERT INTO `pv` VALUES (180, '2018-11-27', 43);
INSERT INTO `pv` VALUES (181, '2018-11-28', 25);
INSERT INTO `pv` VALUES (182, '2018-11-29', 30);
INSERT INTO `pv` VALUES (183, '2018-11-30', 50);
INSERT INTO `pv` VALUES (184, '2018-12-01', 56);
INSERT INTO `pv` VALUES (185, '2018-12-02', 37);
INSERT INTO `pv` VALUES (186, '2018-12-03', 37);
INSERT INTO `pv` VALUES (187, '2018-12-04', 45);
INSERT INTO `pv` VALUES (188, '2018-12-05', 93);
INSERT INTO `pv` VALUES (189, '2018-12-06', 91);
INSERT INTO `pv` VALUES (190, '2018-12-07', 30);
INSERT INTO `pv` VALUES (191, '2018-12-08', 30);
INSERT INTO `pv` VALUES (192, '2018-12-09', 35);
INSERT INTO `pv` VALUES (193, '2018-12-10', 24);
INSERT INTO `pv` VALUES (194, '2018-12-11', 31);
INSERT INTO `pv` VALUES (195, '2018-12-12', 51);
INSERT INTO `pv` VALUES (196, '2018-12-13', 30);
INSERT INTO `pv` VALUES (197, '2018-12-14', 10);
INSERT INTO `pv` VALUES (198, '2018-12-15', 20);
INSERT INTO `pv` VALUES (199, '2018-12-16', 12);
INSERT INTO `pv` VALUES (200, '2018-12-17', 13);
INSERT INTO `pv` VALUES (201, '2018-12-18', 21);
INSERT INTO `pv` VALUES (202, '2018-12-19', 17);
INSERT INTO `pv` VALUES (203, '2018-12-20', 41);
INSERT INTO `pv` VALUES (204, '2018-12-21', 25);
INSERT INTO `pv` VALUES (205, '2018-12-22', 23);
INSERT INTO `pv` VALUES (206, '2018-12-23', 12);
INSERT INTO `pv` VALUES (207, '2018-12-24', 49);
INSERT INTO `pv` VALUES (208, '2018-12-25', 41);
INSERT INTO `pv` VALUES (209, '2018-12-26', 39);
INSERT INTO `pv` VALUES (210, '2018-12-27', 25);
INSERT INTO `pv` VALUES (211, '2018-12-28', 31);
INSERT INTO `pv` VALUES (212, '2018-12-29', 27);
INSERT INTO `pv` VALUES (213, '2018-12-30', 30);
INSERT INTO `pv` VALUES (214, '2018-12-31', 20);
INSERT INTO `pv` VALUES (215, '2019-01-01', 16);
INSERT INTO `pv` VALUES (216, '2019-01-02', 43);
INSERT INTO `pv` VALUES (217, '2019-01-03', 29);
INSERT INTO `pv` VALUES (218, '2019-01-04', 36);
INSERT INTO `pv` VALUES (219, '2019-01-05', 25);
INSERT INTO `pv` VALUES (220, '2019-01-06', 29);
INSERT INTO `pv` VALUES (221, '2019-01-07', 49);
INSERT INTO `pv` VALUES (222, '2019-01-08', 32);
INSERT INTO `pv` VALUES (223, '2019-01-09', 29);
INSERT INTO `pv` VALUES (224, '2019-01-10', 40);
INSERT INTO `pv` VALUES (225, '2019-01-11', 25);
INSERT INTO `pv` VALUES (226, '2019-01-12', 37);
INSERT INTO `pv` VALUES (227, '2019-01-13', 43);
INSERT INTO `pv` VALUES (228, '2019-01-14', 19);
INSERT INTO `pv` VALUES (229, '2019-01-15', 17);
INSERT INTO `pv` VALUES (230, '2019-01-16', 40);
INSERT INTO `pv` VALUES (231, '2019-01-17', 53);
INSERT INTO `pv` VALUES (232, '2019-01-18', 17);
INSERT INTO `pv` VALUES (233, '2019-01-19', 73);
INSERT INTO `pv` VALUES (234, '2019-01-20', 25);
INSERT INTO `pv` VALUES (235, '2019-01-21', 59);
INSERT INTO `pv` VALUES (236, '2019-01-22', 89);
INSERT INTO `pv` VALUES (237, '2019-01-23', 47);
INSERT INTO `pv` VALUES (238, '2019-01-24', 81);
INSERT INTO `pv` VALUES (239, '2019-01-25', 56);
INSERT INTO `pv` VALUES (240, '2019-01-26', 31);
INSERT INTO `pv` VALUES (241, '2019-01-27', 63);
INSERT INTO `pv` VALUES (242, '2019-01-28', 44);
INSERT INTO `pv` VALUES (243, '2019-01-29', 30);
INSERT INTO `pv` VALUES (244, '2019-01-30', 27);
INSERT INTO `pv` VALUES (245, '2019-01-31', 29);
INSERT INTO `pv` VALUES (246, '2019-02-01', 64);
INSERT INTO `pv` VALUES (247, '2019-02-02', 14);
INSERT INTO `pv` VALUES (248, '2019-02-03', 13);
INSERT INTO `pv` VALUES (249, '2019-02-04', 21);
INSERT INTO `pv` VALUES (250, '2019-02-05', 50);
INSERT INTO `pv` VALUES (251, '2019-02-06', 14);
INSERT INTO `pv` VALUES (252, '2019-02-07', 42);
INSERT INTO `pv` VALUES (253, '2019-02-08', 25);
INSERT INTO `pv` VALUES (254, '2019-02-09', 22);
INSERT INTO `pv` VALUES (255, '2019-02-10', 25);
INSERT INTO `pv` VALUES (256, '2019-02-11', 44);
INSERT INTO `pv` VALUES (257, '2019-02-12', 32);
INSERT INTO `pv` VALUES (258, '2019-02-13', 42);
INSERT INTO `pv` VALUES (259, '2019-02-14', 36);
INSERT INTO `pv` VALUES (260, '2019-02-15', 34);
INSERT INTO `pv` VALUES (261, '2019-02-16', 82);
INSERT INTO `pv` VALUES (262, '2019-02-17', 35);
INSERT INTO `pv` VALUES (263, '2019-02-18', 47);
INSERT INTO `pv` VALUES (264, '2019-02-19', 38);
INSERT INTO `pv` VALUES (265, '2019-02-20', 39);
INSERT INTO `pv` VALUES (266, '2019-02-21', 24);
INSERT INTO `pv` VALUES (267, '2019-02-22', 27);
INSERT INTO `pv` VALUES (268, '2019-02-23', 28);
INSERT INTO `pv` VALUES (269, '2019-02-24', 7);
INSERT INTO `pv` VALUES (270, '2019-02-25', 21);
INSERT INTO `pv` VALUES (271, '2019-02-26', 58);
INSERT INTO `pv` VALUES (272, '2019-02-27', 38);
INSERT INTO `pv` VALUES (273, '2019-02-28', 78);
INSERT INTO `pv` VALUES (274, '2019-03-01', 27);
INSERT INTO `pv` VALUES (275, '2019-03-02', 30);
INSERT INTO `pv` VALUES (276, '2019-03-03', 40);
INSERT INTO `pv` VALUES (277, '2019-03-04', 60);
INSERT INTO `pv` VALUES (278, '2019-03-05', 88);
INSERT INTO `pv` VALUES (279, '2019-03-06', 85);
INSERT INTO `pv` VALUES (280, '2019-03-07', 77);
INSERT INTO `pv` VALUES (281, '2019-03-08', 87);
INSERT INTO `pv` VALUES (282, '2019-03-09', 69);
INSERT INTO `pv` VALUES (283, '2019-03-10', 62);
INSERT INTO `pv` VALUES (284, '2019-03-11', 52);
INSERT INTO `pv` VALUES (285, '2019-03-12', 54);
INSERT INTO `pv` VALUES (286, '2019-03-13', 66);
INSERT INTO `pv` VALUES (287, '2019-03-14', 42);
INSERT INTO `pv` VALUES (288, '2019-03-15', 73);
INSERT INTO `pv` VALUES (289, '2019-03-16', 54);
INSERT INTO `pv` VALUES (290, '2019-03-17', 57);
INSERT INTO `pv` VALUES (291, '2019-03-18', 80);
INSERT INTO `pv` VALUES (292, '2019-03-19', 91);
INSERT INTO `pv` VALUES (293, '2019-03-20', 94);
INSERT INTO `pv` VALUES (294, '2019-03-21', 65);
INSERT INTO `pv` VALUES (295, '2019-03-22', 48);
INSERT INTO `pv` VALUES (296, '2019-03-23', 27);
INSERT INTO `pv` VALUES (297, '2019-03-24', 29);
INSERT INTO `pv` VALUES (298, '2019-03-25', 29);
INSERT INTO `pv` VALUES (299, '2019-03-26', 23);
INSERT INTO `pv` VALUES (300, '2019-03-27', 27);
INSERT INTO `pv` VALUES (301, '2019-03-28', 21);
INSERT INTO `pv` VALUES (302, '2019-03-29', 49);
INSERT INTO `pv` VALUES (303, '2019-03-30', 44);
INSERT INTO `pv` VALUES (304, '2019-03-31', 12);
INSERT INTO `pv` VALUES (305, '2019-04-01', 76);
INSERT INTO `pv` VALUES (306, '2019-04-02', 94);
INSERT INTO `pv` VALUES (307, '2019-04-03', 42);
INSERT INTO `pv` VALUES (308, '2019-04-04', 33);
INSERT INTO `pv` VALUES (309, '2019-04-05', 16);
INSERT INTO `pv` VALUES (310, '2019-04-06', 27);
INSERT INTO `pv` VALUES (311, '2019-04-07', 11);
INSERT INTO `pv` VALUES (312, '2019-04-08', 73);
INSERT INTO `pv` VALUES (313, '2019-04-09', 34);
INSERT INTO `pv` VALUES (314, '2019-04-10', 21);
INSERT INTO `pv` VALUES (315, '2019-04-11', 21);
INSERT INTO `pv` VALUES (316, '2019-04-12', 47);
INSERT INTO `pv` VALUES (317, '2019-04-13', 25);
INSERT INTO `pv` VALUES (318, '2019-04-14', 19);
INSERT INTO `pv` VALUES (319, '2019-04-15', 30);
INSERT INTO `pv` VALUES (320, '2019-04-16', 40);
INSERT INTO `pv` VALUES (321, '2019-04-17', 42);
INSERT INTO `pv` VALUES (322, '2019-04-18', 48);
INSERT INTO `pv` VALUES (323, '2019-04-19', 36);
INSERT INTO `pv` VALUES (324, '2019-04-20', 12);
INSERT INTO `pv` VALUES (325, '2019-04-21', 11);
INSERT INTO `pv` VALUES (326, '2019-04-22', 55);
INSERT INTO `pv` VALUES (327, '2019-04-23', 30);
INSERT INTO `pv` VALUES (328, '2019-04-24', 41);
INSERT INTO `pv` VALUES (329, '2019-04-25', 21);
INSERT INTO `pv` VALUES (330, '2019-04-26', 21);
INSERT INTO `pv` VALUES (331, '2019-04-27', 20);
INSERT INTO `pv` VALUES (332, '2019-04-28', 12);
INSERT INTO `pv` VALUES (333, '2019-04-29', 21);
INSERT INTO `pv` VALUES (334, '2019-04-30', 28);
INSERT INTO `pv` VALUES (335, '2019-05-01', 47);
INSERT INTO `pv` VALUES (336, '2019-05-02', 19);
INSERT INTO `pv` VALUES (337, '2019-05-03', 10);
INSERT INTO `pv` VALUES (338, '2019-05-04', 38);
INSERT INTO `pv` VALUES (339, '2019-05-05', 25);
INSERT INTO `pv` VALUES (340, '2019-05-06', 36);
INSERT INTO `pv` VALUES (341, '2019-05-07', 134);
INSERT INTO `pv` VALUES (342, '2019-05-08', 111);
INSERT INTO `pv` VALUES (343, '2019-05-09', 70);
INSERT INTO `pv` VALUES (344, '2019-05-10', 71);
INSERT INTO `pv` VALUES (345, '2019-05-11', 82);
INSERT INTO `pv` VALUES (346, '2019-05-12', 72);
INSERT INTO `pv` VALUES (347, '2019-05-13', 0);
INSERT INTO `pv` VALUES (348, '2019-05-14', 0);
INSERT INTO `pv` VALUES (349, '2019-05-15', 0);
INSERT INTO `pv` VALUES (350, '2019-05-16', 0);
INSERT INTO `pv` VALUES (351, '2019-05-17', 0);
INSERT INTO `pv` VALUES (352, '2019-05-18', 0);
INSERT INTO `pv` VALUES (353, '2019-05-19', 0);
INSERT INTO `pv` VALUES (354, '2019-05-20', 0);
INSERT INTO `pv` VALUES (355, '2019-05-21', 0);
INSERT INTO `pv` VALUES (356, '2019-05-22', 0);
INSERT INTO `pv` VALUES (357, '2019-05-23', 0);
INSERT INTO `pv` VALUES (358, '2019-05-24', 0);
INSERT INTO `pv` VALUES (359, '2019-05-25', 0);
INSERT INTO `pv` VALUES (360, '2019-05-26', 0);
INSERT INTO `pv` VALUES (361, '2019-05-27', 0);
INSERT INTO `pv` VALUES (362, '2019-05-28', 85);
INSERT INTO `pv` VALUES (363, '2019-05-29', 47);
INSERT INTO `pv` VALUES (364, '2019-05-30', 65);
INSERT INTO `pv` VALUES (365, '2019-05-31', 50);
INSERT INTO `pv` VALUES (366, '2019-06-01', 42);
INSERT INTO `pv` VALUES (367, '2019-06-02', 57);
INSERT INTO `pv` VALUES (368, '2019-06-03', 27);
INSERT INTO `pv` VALUES (369, '2019-06-04', 132);
INSERT INTO `pv` VALUES (370, '2019-06-05', 158);
INSERT INTO `pv` VALUES (371, '2019-06-06', 103);
INSERT INTO `pv` VALUES (372, '2019-06-07', 46);
INSERT INTO `pv` VALUES (373, '2019-06-08', 91);
INSERT INTO `pv` VALUES (374, '2019-06-09', 65);
INSERT INTO `pv` VALUES (375, '2019-06-10', 112);
INSERT INTO `pv` VALUES (376, '2019-06-11', 77);
INSERT INTO `pv` VALUES (377, '2019-06-12', 94);
INSERT INTO `pv` VALUES (378, '2019-06-13', 55);
INSERT INTO `pv` VALUES (379, '2019-06-14', 69);
INSERT INTO `pv` VALUES (380, '2019-06-15', 43);
INSERT INTO `pv` VALUES (381, '2019-06-16', 51);
INSERT INTO `pv` VALUES (382, '2019-06-17', 70);
INSERT INTO `pv` VALUES (383, '2019-06-18', 61);
INSERT INTO `pv` VALUES (384, '2019-06-19', 62);
INSERT INTO `pv` VALUES (385, '2019-06-20', 54);
INSERT INTO `pv` VALUES (386, '2019-06-21', 51);
INSERT INTO `pv` VALUES (387, '2019-06-22', 39);
INSERT INTO `pv` VALUES (388, '2019-06-23', 57);
INSERT INTO `pv` VALUES (389, '2019-06-24', 54);
INSERT INTO `pv` VALUES (390, '2019-06-25', 149);
INSERT INTO `pv` VALUES (391, '2019-06-26', 131);
INSERT INTO `pv` VALUES (392, '2019-06-27', 99);
INSERT INTO `pv` VALUES (393, '2019-06-28', 106);
INSERT INTO `pv` VALUES (394, '2019-06-29', 57);
INSERT INTO `pv` VALUES (395, '2019-06-30', 56);
INSERT INTO `pv` VALUES (396, '2019-07-01', 50);
INSERT INTO `pv` VALUES (397, '2019-07-02', 52);
INSERT INTO `pv` VALUES (398, '2019-07-03', 68);
INSERT INTO `pv` VALUES (399, '2019-07-04', 69);
INSERT INTO `pv` VALUES (400, '2019-07-05', 99);
INSERT INTO `pv` VALUES (401, '2019-07-06', 94);
INSERT INTO `pv` VALUES (402, '2019-07-07', 74);
INSERT INTO `pv` VALUES (403, '2019-07-08', 90);
INSERT INTO `pv` VALUES (404, '2019-07-09', 106);
INSERT INTO `pv` VALUES (405, '2019-07-10', 76);
INSERT INTO `pv` VALUES (406, '2019-07-11', 101);
INSERT INTO `pv` VALUES (407, '2019-07-12', 78);
INSERT INTO `pv` VALUES (408, '2019-07-13', 114);
INSERT INTO `pv` VALUES (409, '2019-07-14', 29);
INSERT INTO `pv` VALUES (410, '2019-07-15', 79);
INSERT INTO `pv` VALUES (411, '2019-07-16', 110);
INSERT INTO `pv` VALUES (412, '2019-07-17', 60);
INSERT INTO `pv` VALUES (413, '2019-07-18', 84);
INSERT INTO `pv` VALUES (414, '2019-07-19', 63);
INSERT INTO `pv` VALUES (415, '2019-07-20', 93);
INSERT INTO `pv` VALUES (416, '2019-07-21', 35);
INSERT INTO `pv` VALUES (417, '2019-07-22', 40);
INSERT INTO `pv` VALUES (418, '2019-07-23', 87);
INSERT INTO `pv` VALUES (419, '2019-07-24', 78);
INSERT INTO `pv` VALUES (420, '2019-07-25', 135);
INSERT INTO `pv` VALUES (421, '2019-07-26', 88);
INSERT INTO `pv` VALUES (422, '2019-07-27', 85);
INSERT INTO `pv` VALUES (423, '2019-07-28', 53);
INSERT INTO `pv` VALUES (424, '2019-07-29', 85);
INSERT INTO `pv` VALUES (425, '2019-07-30', 98);
INSERT INTO `pv` VALUES (426, '2019-07-31', 48);
INSERT INTO `pv` VALUES (427, '2019-08-01', 56);
INSERT INTO `pv` VALUES (428, '2019-08-02', 77);
INSERT INTO `pv` VALUES (429, '2019-08-03', 57);
INSERT INTO `pv` VALUES (430, '2019-08-04', 34);
INSERT INTO `pv` VALUES (431, '2019-08-05', 76);
INSERT INTO `pv` VALUES (432, '2019-08-06', 87);
INSERT INTO `pv` VALUES (433, '2019-08-07', 0);
INSERT INTO `pv` VALUES (434, '2019-08-08', 85);
INSERT INTO `pv` VALUES (435, '2019-08-09', 115);
INSERT INTO `pv` VALUES (436, '2019-08-10', 43);
INSERT INTO `pv` VALUES (437, '2019-08-11', 41);
INSERT INTO `pv` VALUES (438, '2019-08-12', 105);
INSERT INTO `pv` VALUES (439, '2019-08-13', 66);
INSERT INTO `pv` VALUES (440, '2019-08-14', 83);
INSERT INTO `pv` VALUES (441, '2019-08-15', 76);
INSERT INTO `pv` VALUES (442, '2019-08-16', 111);
INSERT INTO `pv` VALUES (443, '2019-08-17', 53);
INSERT INTO `pv` VALUES (444, '2019-08-18', 40);
INSERT INTO `pv` VALUES (445, '2019-08-19', 108);
INSERT INTO `pv` VALUES (446, '2019-08-20', 59);
INSERT INTO `pv` VALUES (447, '2019-08-21', 73);
INSERT INTO `pv` VALUES (448, '2019-08-22', 82);
INSERT INTO `pv` VALUES (449, '2019-08-23', 81);
INSERT INTO `pv` VALUES (450, '2019-08-24', 34);
INSERT INTO `pv` VALUES (451, '2019-08-25', 25);
INSERT INTO `pv` VALUES (452, '2019-08-26', 82);
INSERT INTO `pv` VALUES (453, '2019-08-27', 81);
INSERT INTO `pv` VALUES (454, '2019-08-28', 91);
INSERT INTO `pv` VALUES (455, '2019-08-29', 64);
INSERT INTO `pv` VALUES (456, '2019-08-30', 62);
INSERT INTO `pv` VALUES (457, '2019-08-31', 22);
INSERT INTO `pv` VALUES (458, '2019-09-01', 25);
INSERT INTO `pv` VALUES (459, '2019-09-02', 79);
INSERT INTO `pv` VALUES (460, '2019-09-03', 53);
INSERT INTO `pv` VALUES (461, '2019-09-04', 63);
INSERT INTO `pv` VALUES (462, '2019-09-05', 78);
INSERT INTO `pv` VALUES (463, '2019-09-06', 70);
INSERT INTO `pv` VALUES (464, '2019-09-07', 35);
INSERT INTO `pv` VALUES (465, '2019-09-08', 45);
INSERT INTO `pv` VALUES (466, '2019-09-09', 47);
INSERT INTO `pv` VALUES (467, '2019-09-10', 116);
INSERT INTO `pv` VALUES (468, '2019-09-11', 80);
INSERT INTO `pv` VALUES (469, '2019-09-12', 42);
INSERT INTO `pv` VALUES (470, '2019-09-13', 16);
INSERT INTO `pv` VALUES (471, '2019-09-14', 36);
INSERT INTO `pv` VALUES (472, '2019-09-15', 128);
INSERT INTO `pv` VALUES (473, '2019-09-16', 109);
INSERT INTO `pv` VALUES (474, '2019-09-17', 94);
INSERT INTO `pv` VALUES (475, '2019-09-18', 126);
INSERT INTO `pv` VALUES (476, '2019-09-19', 96);
INSERT INTO `pv` VALUES (477, '2019-09-20', 174);
INSERT INTO `pv` VALUES (478, '2019-09-21', 33);
INSERT INTO `pv` VALUES (479, '2019-09-22', 24);
INSERT INTO `pv` VALUES (480, '2019-09-23', 66);
INSERT INTO `pv` VALUES (481, '2019-09-24', 76);
INSERT INTO `pv` VALUES (482, '2019-09-25', 81);
INSERT INTO `pv` VALUES (483, '2019-09-26', 62);
INSERT INTO `pv` VALUES (484, '2019-09-27', 70);
INSERT INTO `pv` VALUES (485, '2019-09-28', 30);
INSERT INTO `pv` VALUES (486, '2019-09-29', 77);
INSERT INTO `pv` VALUES (487, '2019-09-30', 69);
INSERT INTO `pv` VALUES (488, '2019-10-01', 22);
INSERT INTO `pv` VALUES (489, '2019-10-02', 19);
INSERT INTO `pv` VALUES (490, '2019-10-03', 20);
INSERT INTO `pv` VALUES (491, '2019-10-04', 10);
INSERT INTO `pv` VALUES (492, '2019-10-05', 23);
INSERT INTO `pv` VALUES (493, '2019-10-06', 25);
INSERT INTO `pv` VALUES (494, '2019-10-07', 12);
INSERT INTO `pv` VALUES (495, '2019-10-08', 47);
INSERT INTO `pv` VALUES (496, '2019-10-09', 44);
INSERT INTO `pv` VALUES (497, '2019-10-10', 29);
INSERT INTO `pv` VALUES (498, '2019-10-11', 52);
INSERT INTO `pv` VALUES (499, '2019-10-12', 29);
INSERT INTO `pv` VALUES (500, '2019-10-13', 18);
INSERT INTO `pv` VALUES (501, '2019-10-14', 32);
INSERT INTO `pv` VALUES (502, '2019-10-15', 48);
INSERT INTO `pv` VALUES (503, '2019-10-16', 45);
INSERT INTO `pv` VALUES (504, '2019-10-17', 30);
INSERT INTO `pv` VALUES (505, '2019-10-18', 39);
INSERT INTO `pv` VALUES (506, '2019-10-19', 9);
INSERT INTO `pv` VALUES (507, '2019-10-20', 9);
INSERT INTO `pv` VALUES (508, '2019-10-21', 58);
INSERT INTO `pv` VALUES (509, '2019-10-22', 19);
INSERT INTO `pv` VALUES (510, '2019-10-23', 47);
INSERT INTO `pv` VALUES (511, '2019-10-24', 46);
INSERT INTO `pv` VALUES (512, '2019-10-25', 57);
INSERT INTO `pv` VALUES (513, '2019-10-26', 15);
INSERT INTO `pv` VALUES (514, '2019-10-27', 24);
INSERT INTO `pv` VALUES (515, '2019-10-28', 47);
INSERT INTO `pv` VALUES (516, '2019-10-29', 49);
INSERT INTO `pv` VALUES (517, '2019-10-30', 69);
INSERT INTO `pv` VALUES (518, '2019-10-31', 53);
INSERT INTO `pv` VALUES (519, '2019-11-01', 58);
INSERT INTO `pv` VALUES (520, '2019-11-02', 28);
INSERT INTO `pv` VALUES (521, '2019-11-03', 6);
INSERT INTO `pv` VALUES (522, '2019-11-04', 51);
INSERT INTO `pv` VALUES (523, '2019-11-05', 33);
INSERT INTO `pv` VALUES (524, '2019-11-06', 50);
INSERT INTO `pv` VALUES (525, '2019-11-07', 47);
INSERT INTO `pv` VALUES (526, '2019-11-08', 54);
INSERT INTO `pv` VALUES (527, '2019-11-09', 17);
INSERT INTO `pv` VALUES (528, '2019-11-10', 12);
INSERT INTO `pv` VALUES (529, '2019-11-11', 72);
INSERT INTO `pv` VALUES (530, '2019-11-12', 37);
INSERT INTO `pv` VALUES (531, '2019-11-13', 52);
INSERT INTO `pv` VALUES (532, '2019-11-14', 47);
INSERT INTO `pv` VALUES (533, '2019-11-15', 52);
INSERT INTO `pv` VALUES (534, '2019-11-16', 33);
INSERT INTO `pv` VALUES (535, '2019-11-17', 29);
INSERT INTO `pv` VALUES (536, '2019-11-18', 43);
INSERT INTO `pv` VALUES (537, '2019-11-19', 44);
INSERT INTO `pv` VALUES (538, '2019-11-20', 32);
INSERT INTO `pv` VALUES (539, '2019-11-21', 25);
INSERT INTO `pv` VALUES (540, '2019-11-22', 38);
INSERT INTO `pv` VALUES (541, '2019-11-23', 22);
INSERT INTO `pv` VALUES (542, '2019-11-24', 11);
INSERT INTO `pv` VALUES (543, '2019-11-25', 25);
INSERT INTO `pv` VALUES (544, '2019-11-26', 29);
INSERT INTO `pv` VALUES (545, '2019-11-27', 36);
INSERT INTO `pv` VALUES (546, '2019-11-28', 23);
INSERT INTO `pv` VALUES (547, '2019-11-29', 25);
INSERT INTO `pv` VALUES (548, '2019-11-30', 21);
INSERT INTO `pv` VALUES (549, '2019-12-01', 8);
INSERT INTO `pv` VALUES (550, '2019-12-02', 40);
INSERT INTO `pv` VALUES (551, '2019-12-03', 24);
INSERT INTO `pv` VALUES (552, '2019-12-04', 31);
INSERT INTO `pv` VALUES (553, '2019-12-05', 26);
INSERT INTO `pv` VALUES (554, '2019-12-06', 69);
INSERT INTO `pv` VALUES (555, '2019-12-07', 29);
INSERT INTO `pv` VALUES (556, '2019-12-08', 33);
INSERT INTO `pv` VALUES (557, '2019-12-09', 48);
INSERT INTO `pv` VALUES (558, '2019-12-10', 59);
INSERT INTO `pv` VALUES (559, '2019-12-11', 39);
INSERT INTO `pv` VALUES (560, '2019-12-12', 34);
INSERT INTO `pv` VALUES (561, '2019-12-13', 55);
INSERT INTO `pv` VALUES (562, '2019-12-14', 30);
INSERT INTO `pv` VALUES (563, '2019-12-15', 22);
INSERT INTO `pv` VALUES (564, '2019-12-16', 42);
INSERT INTO `pv` VALUES (565, '2019-12-17', 54);
INSERT INTO `pv` VALUES (566, '2019-12-18', 46);
INSERT INTO `pv` VALUES (567, '2019-12-19', 49);
INSERT INTO `pv` VALUES (568, '2019-12-20', 38);
INSERT INTO `pv` VALUES (569, '2019-12-21', 38);
INSERT INTO `pv` VALUES (570, '2019-12-22', 23);
INSERT INTO `pv` VALUES (571, '2019-12-23', 29);
INSERT INTO `pv` VALUES (572, '2019-12-24', 33);
INSERT INTO `pv` VALUES (573, '2019-12-25', 51);
INSERT INTO `pv` VALUES (574, '2019-12-26', 33);
INSERT INTO `pv` VALUES (575, '2019-12-27', 40);
INSERT INTO `pv` VALUES (576, '2019-12-28', 28);
INSERT INTO `pv` VALUES (577, '2019-12-29', 31);
INSERT INTO `pv` VALUES (578, '2019-12-30', 49);
INSERT INTO `pv` VALUES (579, '2019-12-31', 39);
INSERT INTO `pv` VALUES (580, '2020-01-01', 25);
INSERT INTO `pv` VALUES (581, '2020-01-02', 45);
INSERT INTO `pv` VALUES (582, '2020-01-03', 45);
INSERT INTO `pv` VALUES (583, '2020-01-04', 42);
INSERT INTO `pv` VALUES (584, '2020-01-05', 32);
INSERT INTO `pv` VALUES (585, '2020-01-06', 66);
INSERT INTO `pv` VALUES (586, '2020-01-07', 50);
INSERT INTO `pv` VALUES (587, '2020-01-08', 34);
INSERT INTO `pv` VALUES (588, '2020-01-09', 37);
INSERT INTO `pv` VALUES (589, '2020-01-10', 24);
INSERT INTO `pv` VALUES (590, '2020-01-11', 17);
INSERT INTO `pv` VALUES (591, '2020-01-12', 9);
INSERT INTO `pv` VALUES (592, '2020-01-13', 29);
INSERT INTO `pv` VALUES (593, '2020-01-14', 24);
INSERT INTO `pv` VALUES (594, '2020-01-15', 37);
INSERT INTO `pv` VALUES (595, '2020-01-16', 23);
INSERT INTO `pv` VALUES (596, '2020-01-17', 32);
INSERT INTO `pv` VALUES (597, '2020-01-18', 35);
INSERT INTO `pv` VALUES (598, '2020-01-19', 17);
INSERT INTO `pv` VALUES (599, '2020-01-20', 13);
INSERT INTO `pv` VALUES (600, '2020-01-21', 18);
INSERT INTO `pv` VALUES (601, '2020-01-22', 6);
INSERT INTO `pv` VALUES (602, '2020-01-23', 15);
INSERT INTO `pv` VALUES (603, '2020-01-24', 14);
INSERT INTO `pv` VALUES (604, '2020-01-25', 9);
INSERT INTO `pv` VALUES (605, '2020-01-26', 12);
INSERT INTO `pv` VALUES (606, '2020-01-27', 22);
INSERT INTO `pv` VALUES (607, '2020-01-28', 15);
INSERT INTO `pv` VALUES (608, '2020-01-29', 18);
INSERT INTO `pv` VALUES (609, '2020-01-30', 7);
INSERT INTO `pv` VALUES (610, '2020-01-31', 19);
INSERT INTO `pv` VALUES (611, '2020-02-01', 19);
INSERT INTO `pv` VALUES (612, '2020-02-02', 24);
INSERT INTO `pv` VALUES (613, '2020-02-03', 19);
INSERT INTO `pv` VALUES (614, '2020-02-04', 18);
INSERT INTO `pv` VALUES (615, '2020-02-05', 19);
INSERT INTO `pv` VALUES (616, '2020-02-06', 15);
INSERT INTO `pv` VALUES (617, '2020-02-07', 10);
INSERT INTO `pv` VALUES (618, '2020-02-08', 17);
INSERT INTO `pv` VALUES (619, '2020-02-09', 15);
INSERT INTO `pv` VALUES (620, '2020-02-10', 36);
INSERT INTO `pv` VALUES (621, '2020-02-11', 30);
INSERT INTO `pv` VALUES (622, '2020-02-12', 47);
INSERT INTO `pv` VALUES (623, '2020-02-13', 58);
INSERT INTO `pv` VALUES (624, '2020-02-14', 43);
INSERT INTO `pv` VALUES (625, '2020-02-15', 38);
INSERT INTO `pv` VALUES (626, '2020-02-16', 47);
INSERT INTO `pv` VALUES (627, '2020-02-17', 46);
INSERT INTO `pv` VALUES (628, '2020-02-18', 34);
INSERT INTO `pv` VALUES (629, '2020-02-19', 45);
INSERT INTO `pv` VALUES (630, '2020-02-20', 33);
INSERT INTO `pv` VALUES (631, '2020-02-21', 59);
INSERT INTO `pv` VALUES (632, '2020-02-22', 52);
INSERT INTO `pv` VALUES (633, '2020-02-23', 45);
INSERT INTO `pv` VALUES (634, '2020-02-24', 39);
INSERT INTO `pv` VALUES (635, '2020-02-25', 39);
INSERT INTO `pv` VALUES (636, '2020-02-26', 53);
INSERT INTO `pv` VALUES (637, '2020-02-27', 1);
COMMIT;

-- ----------------------------
-- Table structure for tabs
-- ----------------------------
DROP TABLE IF EXISTS `tabs`;
CREATE TABLE `tabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '标签名称',
  `article_id` int(11) NOT NULL COMMENT '所属文章编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='標籤表';

-- ----------------------------
-- Records of tabs
-- ----------------------------
BEGIN;
INSERT INTO `tabs` VALUES (1, 'JavaScript', 1);
INSERT INTO `tabs` VALUES (2, 'web前端', 1);
INSERT INTO `tabs` VALUES (3, 'JS', 1);
INSERT INTO `tabs` VALUES (4, 'CSS3', 2);
INSERT INTO `tabs` VALUES (5, 'web前端', 2);
INSERT INTO `tabs` VALUES (6, 'HTML5', 3);
INSERT INTO `tabs` VALUES (7, 'web前端', 3);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='用戶表';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin', '123456');
INSERT INTO `user` VALUES (2, 'test', '123456');
INSERT INTO `user` VALUES (3, 'sam', '0000');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
