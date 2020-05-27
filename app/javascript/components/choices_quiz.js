const choicesCustom = $(document).ready(function(){
  $(".personnality-choices .form-group").click(function(){
    console.log(this);
    $(this).parent().find(".form-group").removeClass("active");
    $(this).addClass("active");
  });
});

export { choicesCustom };
