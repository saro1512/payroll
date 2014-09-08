
function validate_form_form_updation(item,event)
{
    Event.observe(item, event, function() {
        if ($$('p.form-footer input[type=submit]').length != 0){
            $$('p.form-footer input[type=submit]').first().disabled=false;
        }
        else if($$('input[type=submit]').length != 0){
            $$('input[type=submit]').first().disabled=false;
        }
    });
}
function validate_form_is_dirty(form_id){ 
    var form = $(form_id);
    Ext.onReady(function(){
        var elements_textarea = form.getElementsByTagName('textarea');
        if(elements_textarea.length > 0)
        {
            for (var i = 0; i < elements_textarea.length; i++) {
                var item = elements_textarea[i];
                item.onkeyup = function() {
                    $$('p.form-footer input[type=submit]').first().disabled=false;
                };
                item.onchange = function() {
                    $$('p.form-footer input[type=submit]').first().disabled=false;
                };
            }
        }
        var ele_array = form.getInputs();
        ele_array.each(function(item) {
            switch(item.type)
            {
                case 'select':
                    validate_form_form_updation(item,"change");
                    break;
                case 'checkbox':
                case 'radio':
                    validate_form_form_updation(item,"click");
                    break;
                case 'text':
                case 'password':
                case 'number':
                case 'email':
                    validate_form_form_updation(item,"keyup");
                    item.onchange=function(){
                        $$('input[type=submit]').first().disabled=false;
                    };
                    break;
                case 'button':
                    validate_form_form_updation(item,"click");
                    break;
                case 'hidden':
                    var ext_select = Ext.getCmp("record_label")
                    if(Ext.isDefined(ext_select))
                    {
                        ext_select.on("select",function(){
                            $$('input[type=submit]').first().disabled=false;
                        });	
                    }
                    break;
            }
        });
        var select_list_array = $$('select');
        select_list_array.each(function(item) {
            validate_form_form_updation(item,"change");
        });
        var delete_button_array = $$('a.destroy');
        delete_button_array.each(function(item) {
            validate_form_form_updation(item,"click");
        });
  
        Event.observe($$('input[type=submit]').first(), 'click', function(e) {
            if ($("check_for_dirty"))
            {
                if($("check_for_dirty").value == 'false')
                {
                    if(confirm('There are no updations. You still want to save data?'))
                    {
                        return true;
                    }
                    else
                    {
                        Event.stop(e);
                    }
                }
            }
        });
    })
}