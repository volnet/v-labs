 /*firefox window.event*/
function __firefox()
{
    HTMLElement.prototype.__defineGetter__("runtimeStyle", __element_style);
    window.constructor.prototype.__defineGetter__("event", __window_event_constructor_getter);
    window.constructor.prototype.__defineSetter__("event", __window_event_constructor_setter);
    Event.prototype.__defineGetter__("srcElement", __event_srcElement);
    HTMLElement.prototype.__defineGetter__("outerHTML",__element_outerHTML_getter);
    HTMLElement.prototype.__defineSetter__("outerHTML",__element_outerHTML_setter);
    HTMLElement.prototype.__defineGetter__("canHaveChildren",__canHaveChildren_getter);
}
function __canHaveChildren_getter(){
    return !/^(area|base|basefont|col|frame|hr|img|br|input|isindex|link|meta|param)$/.test(this.tagName.toLowerCase());
}
function __element_outerHTML_setter(s){
    var r = this.ownerDocument.createRange();
    r.setStartBefore(this);
    var df = r.createContextualFragment(s);
    this.parentNode.replaceChild(df, this);
    return s;
}
function __element_outerHTML_getter(){
    var a=this.attributes, str="<"+this.tagName, i=0;for(;i<a.length;i++)
    if(a[i].specified) str+=" "+a[i].name+'="'+a[i].value+'"';
    if(!this.canHaveChildren) return str+" />";
    return str+">"+this.innerHTML+"</"+this.tagName+">";
}
function __element_style()
{
    return this.style;
}

function __event_srcElement()
{
    return this.target;
}
function __window_event_constructor_getter()
{
    if(document.all)
    {
        return window.event;
    }
    var _caller = __window_event_constructor.caller;
    while(_caller!=null){
        var _argument = _caller.arguments[0];
        if(_argument){
            var _temp = _argument.constructor;
            if(_temp.toString().indexOf("Event")!=-1)
            {
                return _argument;
            }
        }
        _caller = _caller.caller;
    }
    return null;
}
function __window_event_constructor_setter(e)
{
    //
}
if(window.addEventListener)
{
    __firefox();
}

/*end firefox.event*/