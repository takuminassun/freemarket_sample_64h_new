$(document).on("turbolinks:load", function(){
  var sliders = ".item__image__box__main"; // スライダー
  var thumbnailItem = ".item__image__box__sub__img"; // サムネイル画像アイテム
  
  // サムネイル画像アイテムに data-index でindex番号を付与
  $(thumbnailItem).each(function(){
   var index = $(thumbnailItem).index(this);
   $(this).attr("data-index",index);
  });
  //slickスライダー初期化  
  $(sliders).slick({
    arrows: false,
  });
  //サムネイル画像アイテムをクリックしたときにスライダー切り替え
  $(thumbnailItem).on('click',function(){
    var index = $(this).attr("data-index");
    $(sliders).slick("slickGoTo",index,false);
  });

});