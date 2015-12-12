/**
 * Created by seigo on 2015/11/23.
 */



////http://blog.livedoor.jp/chiaki_kasai/archives/28482783.html
//
//$(document).ready(function () {
//  $('.neko').on('click', function (e) {
//    //条件 : もしnekoというクラス名を持っていたら
//    if ($('.neko').hasClass('clicked')
//    ) {
//      //実行 : nekoから、clickedというクラスを外す
//      $('.neko').removeClass('clicked');
//      //条件 : もしnekoというクラス名を持っていなかったら
//    } else {
//      //実行 : nekoに、clickedというクラスをつける
//      $('.neko').addClass('clicked');
//    }
//  })
//});


//$('.main-item-image').click(function(){
//  alert('てすと');
//});


//
//
////http://memocarilog.info/jquery/7477
//
//<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
//    <script>
//// 横幅などの設定
//var options = {
//  maxWidth : 520, // #photo_container の max-width を指定(px)
//  thumbMaxWidth : 80, // #thumbnail li の max-width を指定(px)
//  thumbMinWidth : 60, // #thumbnail li の min-width を指定(px)
//  fade : 500 // フェードアウトするスピードを指定
//};
//
//$(function(){
//  // 変数を作る
//  var thumbList = $('#thumbnail').find('a'),
//      mainPhoto = $('#main_photo'),
//      img = $('<img />'),
//      imgHeight;
//
//  // 親ボックスと li 要素に max-width 指定
//  $('#photo_container').css('maxWidth', options.maxWidth);
//
//  // li 要素の横幅の計算と指定
//  var liWidth = Math.floor((options.thumbMaxWidth / options.maxWidth) * 100);
//  $('#thumbnail li').css({
//    width : liWidth + '%',
//    maxWidth : options.thumbMaxWidth,
//    minWidth : options.thumbMinWidth
//  });
//
//  // 最初の画像の div#main_photo へ表示と current クラスを指定
//  img = img.attr({
//    src: $(thumbList[0]).attr('href'),
//    alt: $(thumbList[0]).find('img').attr('alt')
//  });
//  mainPhoto.append(img);
//  $('#thumbnail li:first').addClass('current');
//
//  // メイン画像を先に読み込んどく
//  for(var i = 0; i < thumbList.length; i++){
//    $('<img />').attr({
//      src: $(thumbList[i]).attr('href'),
//      alt: $(thumbList[i]).find('img').attr('alt')
//    });
//  }
//
//  // サムネイルのクリックイベント
//  thumbList.on('click', function(){
//    // img 要素を作り サムネイル画像からリンク・altの情報を取得・設定する
//    var photo = $('<img />').attr({
//      src: $(this).attr('href'),
//      alt: $(this).find('img').attr('alt')
//    });
//
//    // div#main_photo へ 上で作った img 要素を挿入する
//    mainPhoto.find('img').before(photo);
//    // div#main_photo に先に表示されていた img 要素をフェードしながら非表示にし要素を消す、
//    mainPhoto.find('img:not(:first)').stop(true, true).fadeOut(options.fade, function(){
//      $(this).remove();
//    });
//
//    // 新しく表示した img の親 li へ .current を付け、
//    // 他の li 要素についていた .current を削除する
//    $(this).parent().addClass('current').siblings().removeClass('current');
//    // 画像の親要素を現在表示中の画像の高さへ変更する
//    mainPhoto.height(photo.outerHeight());
//    return false;
//  });
//
//  // ウィンドウが読み込まれた時とリサイズされた時に
//  // div#main_photo の高さを img の高さへ変更する
//  $(window).on('resize load', function(){
//    mainPhoto.height(mainPhoto.find('img').outerHeight());
//  });
//});
//</script>
