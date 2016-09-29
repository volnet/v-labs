/*
 *  Text of the GNU Public License
 *  by Volnet
 *  Created: 22 September 2008
 *  Version: $Revision: 0.1 $
 *  Version control file: $RCSfile: license.h,v $
 *  Date last modified: $Date: 2008/09/22 11:15:11 $
 *  Last modified by: $Author: Volnet $
 *
 *  This file is part of the Ascend Language Interpreter.
 *
 *  Copyright (C) Volnet
 *
 *  The Ascend Language Interpreter is free software; you can redistribute
 *  it and/or modify it under the terms of the GNU General Public License as
 *  published by the Free Software Foundation; either version 3 of the
 *  License, or (at your option) any later version.
 *
 *  The Ascend Language Interpreter is distributed in hope that it will be
 *  useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with the program; if not, write to the Free Software Foundation,
 *  Inc., 675 Mass Ave, Cambridge, MA 02139 USA.  Check the file named
 *  COPYING.
 */


function isDefined(type) {
    return (type != 'undefined' && type != 'unknown');
}

function getElementById(element_name) {
  if (isDefined(typeof document.getElementById)) {
    return document.getElementById(element_name);
  } else if(isDefined(typeof document.all)) {
    return document.all[element_name];
  }
}

function fixEvent(e){
    if(!isDefined(typeof e)) {
        e = window.event;
    }
    //e.pageX & e.pageY are only enabled in firefox.
    if(!isDefined(typeof e.pageX)){
        e.pageX = e.clientX + document.body.scrollLeft - document.body.clientLeft;
    }		
    if(!isDefined(typeof e.pageY)){
        e.pageY = e.clientY + document.body.scrollTop - document.body.clientTop;
    }	
    return e;
}
///<summary>
///计算当前元素的位置
///</summary>
function currCoordinate(elem){
    this.left=this.top=0;
    var now=elem;
    var s = "";
    
    while(now != null && now.tagName.toLowerCase() != "body") {
        this.left+=now.offsetLeft;
        this.top+=now.offsetTop;
        now = now.offsetParent;
    }
    
    this.bottom=this.top+elem.offsetHeight;
    this.right=this.left+elem.offsetWidth;
}
function replaceElement(srcElement,tarElement){
/*replace the srcElement as tarElement*/
    var refChild = null;
    for(var i=0;i<srcElement.parentNode.childNodes.length;i++)
        if(srcElement.parentNode.childNodes[i] == srcElement){
            refChild = srcElement.parentNode.childNodes[i];
            break;    
        }
    if(refChild != null){
        srcElement.parentNode.insertBefore(tarElement, refChild);
        srcElement.style.display = "none";
    }
}

///<summary>
///remove the element from document.
/// It can cross browser.equals to the function element.removeNode(true) in IE.
///</summary>
function removeNode(id){
    try{
        var o = getElementById(id);
        if(isDefined(typeof o) && o != null){
            var c = o.parentNode;
            if(isDefined(typeof c) && c != null)
                return c.removeChild(o);
        }
    }
    catch(e){ }
}
///<summary>
///check if the first node is an element node
///It can cross browser.
///</summary>
function getFirstchild(node)
{
    var last = node.firstChild;
    while (last != null && last.nodeType==1)
    {
        last = last.nextSibling;
    }
    return last;
}

///<summary>
///It can create a new random name start with prefix.
///It must be the only one in the document.
///e.g: set the prefix = "hello" the result like:hello2123
///</summary>
function makeName(prefix){
    var name = prefix + Math.random() * 1000;
    while(getElementById(name) != null)
        name = prefix + Math.random() * 1000;
    return name;
}

///<summary>
///type 
///    A string representing the event type to listen for. //this version can auto deal "on".(e.g: "onmouseover"=="mouseover")
///listener 
///    The object that receives a notification when an event of the specified type occurs. This must be an object implementing the EventListener interface, or simply a JavaScript function. 
///useCapture 
///    If true, useCapture indicates that the user wishes to initiate capture. After initiating capture, all events of the specified type will be dispatched to the registered listener before being dispatched to any EventTargets beneath it in the DOM tree. Events which are bubbling upward through the tree will not trigger a listener designated to use capture. See DOM Level 3 Events for a detailed explanation. 
///</summary>
function addEventListener(obj,type, listener, useCapture){
    if(!isDefined(typeof obj)||obj == null)
        return;
    if(!isDefined(typeof useCapture)||typeof useCapture != "boolean"||useCapture == null)
        useCapture = false;
    /*IE*/
    if (obj.attachEvent){
        type = getTypeName(type,false);
        obj.attachEvent(type, listener);
    }
    /*firefox*/
    else if (obj.addEventListener){
        type = getTypeName(type,true);
        obj.addEventListener(type, listener, useCapture);    
    }
    
    function getTypeName(oStr,isFirefox){
        var startWord = "on";
        var result = undefined;
        if(isDefined(typeof oStr) && (typeof oStr).toLowerCase() == "string")
        if(-1 == oStr.indexOf(startWord,0)){
            if(isFirefox)
                result = oStr;
            else       
                result = startWord + oStr;
        }
        else
        {
            if(isFirefox)
                result = oStr.substring(startWord.length);
            else
                result = oStr;
        }
        return result;
    }
}

var debugS = "";

function drag(){
    //a temp value of the cursor. It record the last value of the cursor.
    var oldCursor = {
        "top" : 0,
        "left" : 0
    };
    var drag = {
        ///<summary>
        ///The current element be draged.
        ///</summary>
        "srcElement" : null,
        
        ///<summary>
        ///The current box to place the element.
        ///</summary>
        "tarElement" : null,
        
        ///<summary>
        ///The drag.placeholder in the document.
        ///The drag.placeholder would be replaced as new position after the mouse up. 
        ///</summary>
        "placeholder" : null,
        
        ///<summary>
        ///srcElement.parentNode
        ///</summary>
        "container":null,
        
        ///<summary>
        ///A value to point is the mouse over the box.
        ///</summary>
        "isOverBox":false,
        
        ///<summary>
        ///A value to point is the mouse up
        ///</summary>
        "isMouseUp" : true,
        
        ///<summary>
        ///The cursor style when it's moving.
        ///</summary>
        "effectAllowed":"default",
        
        ///<summary>
        ///The cursor style when it's over boxs.
        ///</summary>
        "dropEffect":"default",
        
        ///<summary>
        ///the cordinate's x value relative to the current mouse pointer.
        ///if current mouse pointer is (x,y) the result of offsetX is 2
        ///the actual of the left point of the float block is x+offsetX == x+2.
        ///(default):2
        ///</summary>
        "offsetX":2,
        
        ///<summary>
        ///the cordinate's y value relative to the current mouse pointer.
        ///if current mouse pointer is (x,y) the result of offsetY is 2
        ///the actual of the top point of the float block is x+offsetY == y+2.
        ///(default):2
        ///</summary>
        "offsetY":2,
        
        ///<summary>
        ///The switch of the notice plug-in in this drag system.
        ///(value):true:show the current status of the float block.
        ///        false:nothing to show the status.
        ///</summary>
        "enabledExtNotice":false,
        
        ///<summary>
        ///the constructor function() which return an element 
        ///which will display in the front of the draged element 
        ///when the draged element over any box.
        ///(condition):drag.enabledExtNotice = true
        ///(default):null
        ///(value):if it == null, it will start the default effect to display.
        ///</summary>
        "enabledConstructor" : null,
        
        ///<summary>
        ///the constructor function() which return an element 
        ///which will display in the front of the draged element 
        ///when the draged element not over any box.
        ///(condition):drag.enabledExtNotice = true
        ///(default):null
        ///(value):if it == null, it will start the default effect to display.
        ///</summary>
        "unabledConstructor" : null ,
        
        ///<summary>
        ///The first function be called above all others functions.
        ///</summary>
        "init" : function(beDrags,boxs,
            enabledExtNotice,enabledConstructor,unabledConstructor){
            
            addEventListener(document,"onmousemove",this._ondrag,false);
            addEventListener(document,"onmouseup",this._ondragend,false);
//            document.onmousemove = this._ondrag;
//            document.onmouseup = this._ondragend;
            this.initBeDrags(beDrags);
            this.initBoxs(boxs);
            drag.enabledExtNotice = enabledExtNotice;
            drag.enabledConstructor = enabledConstructor;
            drag.unabledConstructor = unabledConstructor;
        },
        "initBeDrags": function(objs){
            for(var i=0;i<objs.length;i++){
                var obj = getElementById(objs[i]);
                if(isDefined(typeof obj)){
//                    obj.onmousedown = this._ondragstart;
                    addEventListener(obj,"onmousedown",this._ondragstart,false);
                    obj.style.cursor = drag.effectAllowed;
                }
            }
        },
        "initBoxs":function(objs){
            for(var i=0;i<objs.length;i++){
                var obj = getElementById(objs[i]);
                if(isDefined(typeof obj)){
//                    obj.onmouseover = this._ondragover;
//                    obj.onmouseout = this._ondragleave;
                    addEventListener(obj,"onmouseover",this._ondragover,false);
                    addEventListener(obj,"onmouseout",this._ondragleave,false);
                    obj.style.cursor = drag.dropEffect;
                }
            }
        },
        "_ondragstart":function(e){
            e = fixEvent(e);
            
            drag.srcElement = e.srcElement;
            drag.isMouseUp = false;

            /*save the origninal data*/
            /*drag.placeholder = */drag.createDragPlaceHolder(e.srcElement);
            drag.container = drag.srcElement.parentNode;
            
            replaceElement(drag.srcElement,drag.placeholder);
            
            //!!It's important for testing.
            drag.srcElement.style.position = "fixed";
            drag.srcElement.style.display = "block";
            drag.srcElement.style.cursor = drag.effectAllowed;
            
            var p = new currCoordinate(e.srcElement);
                    
            drag.placeholder.style.left = p.left + "px";
            drag.placeholder.style.top = p.top + "px";
            
            p.left = e.pageX;
            p.top = e.pageY;

            drag.srcElement.style.left = p.left + drag.offsetX + "px";
            drag.srcElement.style.top = p.top + drag.offsetY + "px";

            oldCursor.left = e.pageX;
            oldCursor.top = e.pageY;

            if(drag.ondragstart != null)
                drag.ondragstart(e);

            /*extension*/  
            /*enable the notice*/
            if(drag.enabledExtNotice)
                _drag_ext_notice(false);
        },
        "_ondrag":function(e){
            if(drag.srcElement != null && drag.isMouseUp == false){
                e = fixEvent(e);

    //            drag.placeholder.style.left = e.pageX - oldCursor.left + parseInt(drag.placeholder.style.left) + "px";
    //            drag.placeholder.style.top = e.pageY - oldCursor.top + parseInt(drag.placeholder.style.top) + "px";
               
                drag.srcElement.style.left = e.pageX - oldCursor.left + parseInt(drag.srcElement.style.left) + "px";
                drag.srcElement.style.top = e.pageY - oldCursor.top + parseInt(drag.srcElement.style.top) + "px";

                oldCursor.left = e.pageX;
                oldCursor.top = e.pageY;
               
                
                if(drag.ondrag != null)
                    drag.ondrag(e);
            }
        },
        "_ondragend":function(e){
            e = fixEvent(e);
            drag.isMouseUp = true;
            if((drag.srcElement != null && drag.isMouseUp)==true)
            {
                /*extension*/  
                /*enable the notice*/
                if(drag.enabledExtNotice)
                    _drag_ext_notice(true);
                drag.ondragend(e);
            }
            //release resource.
            if(isDefined(typeof drag.placeholder) && drag.placeholder != null)
            {
                replaceElement(drag.placeholder,drag.srcElement);

                drag.srcElement.style.position = "static";
                    
                if(isDefined(typeof drag.placeholder.style)){
                    drag.placeholder.style.display = "none";
                }
                try{
                    //if the placeholder has be move to another place.
                    drag.container.removeChild(drag.placeholder);
                }catch(e){}
                drag.placeholder = null;
                drag.srcElement = null;
                drag.tarElement = null;
                drag.isMouseUp = true;
                //drag.isOverBox = false;
            }
        },
        "_ondragover":function(e){
            e = fixEvent(e);
            
            drag.isOverBox = true;
            if(isDefined(typeof e)&&e!=null&&isDefined(typeof e.srcElement) && e.srcElement != null
                &&drag.srcElement != null && drag.isMouseUp == false)
                drag.tarElement = e.srcElement;
            if(drag.ondragover != null)
                drag.ondragover(e);

            /*extension*/  
            /*enable the notice*/
            if(drag.enabledExtNotice)
                _drag_ext_notice(false);
        },
        "_ondragleave":function(e){
            e = fixEvent(e);

            drag.isOverBox = false;
            drag.tarElement = null;
            
            if(drag.ondragleave != null)
                drag.ondragleave(e);
              
            /*extension*/  
            /*enable the notice*/
            if(drag.enabledExtNotice)
                _drag_ext_notice(false);
        },
        "ondragstart":function(e){
        
        },
        "ondragend":function(e){
            
        },
        "ondrag":function(e){
        
        },
        "ondragover":function(e){
        
        },
        "ondragleave":function(e){
        
        },
        "createDragPlaceHolder":function(element){
            if(drag.placeholder == null){
                drag.placeholder = document.createElement(drag.srcElement.tagName);
                drag.placeholder.style.width = element.offsetWidth;
                drag.placeholder.style.height = element.offsetHeight;
                drag.placeholder.id = "_drag_placeholder_" + element.id.toString();
                //drag.placeholder.style.border = "dashed 0px #EEEEEE";
                //drag.placeholder.style.margin = "0px";
                //drag.placeholder.style.display = "block";
                //drag.placeholder.style.position = "static";
                //drag.placeholder.style.cursor = "default";
                //drag.placeholder.style.backgroundColor = "#EEEEEE";
            }
            return drag.placeholder;
        }
    };


    /*All the plug-in component would named start with "_drag_ext_". All of them are private to the user.*/
    var _drag_notice_name = null;
    var _drag_ext_notice = function(finished){
        
        ///<summary>
        /// An constructor of the 'enabled symbol', the parameter 'name' is necessary.
        /// You must use the name as the id of new element;
        ///</summary>
        ///<returns>the new element symbolize enabled.</returns>
        this.enabledConstructor = function(name){
            if(drag.enabledConstructor == null)
                return null;
            var ec = drag.enabledConstructor();
            ec.id = getName();
            return ec;
        };
        ///<summary>
        /// An constructor of the 'unabled symbol', the parameter 'name' is necessary.
        /// You must use the name as the id of new element;
        ///</summary>
        ///<returns>the new element symbolize unabled.</returns>
        this.unabledConstructor = function(name){
            if(drag.unabledConstructor == null)
                return null;
            var uc = drag.unabledConstructor();
            uc.id = getName();
            return uc;
        };
        
        function getName(){
            if(_drag_notice_name == null)
                _drag_notice_name = makeName("_drag_notice_name");
            return _drag_notice_name;
        }
     
        function createEnabledElement(notice_name){
            var enabledElement = this.enabledConstructor(notice_name);
            if(enabledElement == null){
                enabledElement = document.createElement("span");
                enabledElement.id = notice_name;
                enabledElement.innerHTML = "[OK]";
                enabledElement.style.backgroundColor = "yellow";
            }
            return enabledElement;
        }
        function createUnabledElement(notice_name){
            var unabledElement = this.unabledConstructor(notice_name);
            if(unabledElement == null){
                unabledElement = document.createElement("span");
                unabledElement.id = notice_name;
                unabledElement.innerHTML = "[×]";
                unabledElement.style.backgroundColor = "yellow";
            }
            return unabledElement;
        }
        
        if(drag.srcElement!=null){

            var ok = getElementById(getName());
            if(isDefined(typeof ok) && ok != null)
                removeNode(getName());

            if(finished == false){
                if(drag.isOverBox)
                {
                    drag.srcElement.insertBefore(createEnabledElement(getName()), getFirstchild(drag.srcElement));
                }
                else
                {
                    drag.srcElement.insertBefore(createUnabledElement(getName()), getFirstchild(drag.srcElement));
                }
            }
            return;       
        }
    }
    
    /*[Option]The interface to Visual Studio JavaScript IntelliSense*/
    this.srcElement = drag.srcElement;
    this.tarElement = drag.tarElement;
    this.init = function(beDrags,boxs,enabledExtNotice,enabledConstructor,unabledConstructor){
        return drag.init(beDrags,boxs,enabledExtNotice,enabledConstructor,unabledConstructor);
    }
    /*...*/
    
    return drag;
}