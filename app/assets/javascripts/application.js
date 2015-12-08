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
            scrollable: false,
            boostrapsize: "md"
        };

        var b = a.extend({}, defaults, b);
        var c = (b.scrollable === true) ? 'style="max-height: 600px;overflow-y: auto;"' : "";
        var tit = (b.title.length > 0) ? '<h4 class="modal-title">' + b.title + '</h4>' : '';
        var footer = '';
        if (b.saveButton === true) {
            footer += '<button type="button" class="btn btn-primary" id="button1">Salvar</button>';
        }
        if (b.closeButton === true) {
            footer += '<button type="button" class="btn btn-primary" data-dismiss="modal">Fechar</button>';
        }
        if (b.yesnoButton === true) {
            footer += '<button type="button" class="btn btn-primary" data-dismiss="modal">Sim</button>';
            footer += '<button type="button" class="btn btn-primary" data-dismiss="modal">N&atilde;o</button>';
        }

        html = '<div class="modal fade " id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">';
        html += '<div class="modal-dialog modal-' + b.boostrapsize + ' " role="document">';
        html += '<div class="modal-content modal-primary">';
        html += '<div class="modal-header">';
        html += '<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times"></i></button>';
        html += b.title;
        html += '</div>';
        html += '<div class="modal-body" ' + c + '>';
        html += b.message;
        html += '</div>';
        html += '<div class="modal-footer">';
        html += footer;
        html += '</div>';
        html += '</div>';
        html += '</div>';
        html += '</div>';

        a("body").prepend(html);

        a("#myModal").modal().on("hidden.bs.modal", function () {
            a(this).remove()
        })

        $('#myModal').on('shown.bs.modal', function () {
            $('#input1').focus()
        })

        $('#button1').click(function () {
            var form = $('#iframe1').contents().find('#form1');
            form.validator();
            form.submit();
            console.log(form);
        });

    }
})

(jQuery);
