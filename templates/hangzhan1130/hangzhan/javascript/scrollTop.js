function $z(id) { return document.getElementById(id); }

function addLoadEvent(func) {
    var oldonload = window.onload;
    if (typeof window.onload != 'function') {
        window.onload = func;
    } else {
        window.onload = function () {
            oldonload();
            func();
        }
    }
}

function moveElement(elementID, final_x, final_y, interval) {
    if (!document.getElementById) return false;
    if (!document.getElementById(elementID)) return false;
    var elem = document.getElementById(elementID);
    if (elem.movement) {
        clearTimeout(elem.movement);
    }
    if (!elem.style.left) {
        elem.style.left = "0px";
    }
    if (!elem.style.top) {
        elem.style.top = "0px";
    }
    var xpos = parseInt(elem.style.left);
    var ypos = parseInt(elem.style.top);
    if (xpos == final_x && ypos == final_y) {
        return true;
    }
    if (xpos < final_x) {
        var dist = Math.ceil((final_x - xpos) / 10);
        xpos = xpos + dist;
    }
    if (xpos > final_x) {
        var dist = Math.ceil((xpos - final_x) / 10);
        xpos = xpos - dist;
    }
    if (ypos < final_y) {
        var dist = Math.ceil((final_y - ypos) / 10);
        ypos = ypos + dist;
    }
    if (ypos > final_y) {
        var dist = Math.ceil((ypos - final_y) / 10);
        ypos = ypos - dist;
    }
    elem.style.left = xpos + "px";
    elem.style.top = ypos + "px";
    var repeat = "moveElement('" + elementID + "'," + final_x + "," + final_y + "," + interval + ")";
    elem.movement = setTimeout(repeat, interval);
}

function classNormal(iFocusBtnID, iFocusTxID) {
    var iFocusBtns = $z(iFocusBtnID).getElementsByTagName('li');
    var iFocusTxs = $z(iFocusTxID).getElementsByTagName('li');
    for (var i = 0; i < iFocusBtns.length; i++) {
        iFocusBtns[i].className = 'normal';
        iFocusTxs[i].className = 'normal';
    }
}

function classCurrent(iFocusBtnID, iFocusTxID, n) {
    var iFocusBtns = $z(iFocusBtnID).getElementsByTagName('li');
    var iFocusTxs = $z(iFocusTxID).getElementsByTagName('li');
    iFocusBtns[n].className = 'current';
    iFocusTxs[n].className = 'current';
}

function iFocusChange() {
    if (!$z('hangzhan')) return false;
    $z('hangzhan').onmouseover = function () { atuokey = true };
    $z('hangzhan').onmouseout = function () { atuokey = false };
    var iFocusBtns = $z('hangzhan_btn').getElementsByTagName('li');
    var listLength = iFocusBtns.length;
    iFocusBtns[0].onmouseover = function () {
        moveElement('hangzhan_piclist', 0, 0, 5);
        classNormal('hangzhan_btn', 'hangzhan_tx');
        classCurrent('hangzhan_btn', 'hangzhan_tx', 0);
    }
    if (listLength >= 2) {
        iFocusBtns[1].onmouseover = function () {
            moveElement('hangzhan_piclist', 0, -296, 5);
            classNormal('hangzhan_btn', 'hangzhan_tx');
            classCurrent('hangzhan_btn', 'hangzhan_tx', 1);
        }
    }
    if (listLength >= 3) {
        iFocusBtns[2].onmouseover = function () {
            moveElement('hangzhan_piclist', 0, -592, 5);
            classNormal('hangzhan_btn', 'hangzhan_tx');
            classCurrent('hangzhan_btn', 'hangzhan_tx', 2);
        }
    }
    if (listLength >= 4) {
        iFocusBtns[3].onmouseover = function () {
            moveElement('hangzhan_piclist', 0, -888, 5);
            classNormal('hangzhan_btn', 'hangzhan_tx');
            classCurrent('hangzhan_btn', 'hangzhan_tx', 3);
        }
    }
}

setInterval('autoiFocus()', 5000);
var atuokey = false;
function autoiFocus() {
    if (!$z('hangzhan')) return false;
    if (atuokey) return false;
    var focusBtnList = $z('hangzhan_btn').getElementsByTagName('li');
    var listLength = focusBtnList.length;
    for (var i = 0; i < listLength; i++) {
        if (focusBtnList[i].className == 'current') var currentNum = i;
    }
    if (currentNum == 0 && listLength != 1) {
        moveElement('hangzhan_piclist', 0, -296, 5);
        classNormal('hangzhan_btn', 'hangzhan_tx');
        classCurrent('hangzhan_btn', 'hangzhan_tx', 1);
    }
    if (currentNum == 1 && listLength != 2) {
        moveElement('hangzhan_piclist', 0, -592, 5);
        classNormal('hangzhan_btn', 'hangzhan_tx');
        classCurrent('hangzhan_btn', 'hangzhan_tx', 2);
    }
    if (currentNum == 2 && listLength != 3) {
        moveElement('hangzhan_piclist', 0, -888, 5);
        classNormal('hangzhan_btn', 'hangzhan_tx');
        classCurrent('hangzhan_btn', 'hangzhan_tx', 3);
    }
    if (currentNum == 3) {
        moveElement('hangzhan_piclist', 0, 0, 5);
        classNormal('hangzhan_btn', 'hangzhan_tx');
        classCurrent('hangzhan_btn', 'hangzhan_tx', 0);
    }
    if (currentNum == 1 && listLength == 2) {
        moveElement('hangzhan_piclist', 0, 0, 5);
        classNormal('hangzhan_btn', 'hangzhan_tx');
        classCurrent('hangzhan_btn', 'hangzhan_tx', 0);
    }
    if (currentNum == 2 && listLength == 3) {
        moveElement('hangzhan_piclist', 0, 0, 5);
        classNormal('hangzhan_btn', 'hangzhan_tx');
        classCurrent('hangzhan_btn', 'hangzhan_tx', 0);
    }
}
addLoadEvent(iFocusChange);