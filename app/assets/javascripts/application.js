// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require autocomplete-rails
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .


// JavaScript Document

(function (a) {
    a.createModal = function (b) {
        defaults = {
            title: "",
            message: "",
            closeButton: false,
            saveButton: false,
            yesnoButton: false,
            scrollable: false
        };

        var b = a.extend({}, defaults, b);

        var footer = '';
        if (b.saveButton === true) {
            footer += '<button type="button" class="btn btn-primary" id="button1">Salvar</button>';
        }
        if (b.yesnoButton === true) {
            footer += '<button type="button" class="btn btn-primary" data-dismiss="modal">Sim</button>';
            footer += '<button type="button" class="btn btn-primary" data-dismiss="modal">N&atilde;o</button>';
        }

        html = ''
        html += '<div id="container-modal" class="modal fade" tabindex="-1" role="dialog">';
        html += '  <div class="modal-dialog">';
        html += '    <div class="modal-content">';
        html += '      <div class="modal-header">';
        html += '        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
        html += '        <h4 class="modal-title">' + b.title + '</h4>';
        html += '      </div>';
        html += '      <div class="modal-body">';
        html += b.message;
        html += '      </div>';
        html += '      <div class="modal-footer">';
        html += footer;
        html += '      </div>';
        html += '    </div>';//.modal-content
        html += '  </div>';//.modal-dialog
        html += '</div>';//.modal


        a("body").prepend(html);

        a("#container-modal").modal().on("hidden.bs.modal", function () {
            a(this).remove()
        })

        $('#container-modal').on('shown.bs.modal', function () {
            $('#input1').focus()
        })

        $('#button1').click(function () {
            //var form = $('#iframe1').contents().find('#form1');
            //form.validator();
            //form.submit();
            console.log('saved');
        });
    }
})

(jQuery);
