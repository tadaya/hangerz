var FormView = Backbone.View.extends({

  var values = {};
  var csrf_param = $('meta[name=csrf-param]').attr('content');
  var csrf_token = $('meta[name=csrf-token]').attr('content');
  var values_with_csrf;

  events: {
    'submit form' : 'uploadFile'
  },

  uploadFile: function(event) {
    var values = {};

    if(event){ event.preventDefault(); }

    _.each(this.$('form').serializeArray(), function(input){
      values[ input.name ] = input.value;
    })

    this.model.save(values, { iframe: true,
                              files: this.$('form :file'),
                              data: values });
  }
});