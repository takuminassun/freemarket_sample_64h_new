document.addEventListener(
  "DOMContentLoaded", e =>{
    if (document.getElementById("token_submit") != null) { //token_submitというidがnullの場合、下記コードを実行しない
      Payjp.setPublicKey("pk_test_e3999572a348afbbe0d9d3a7"); //公開鍵直書き
      let btn = document.getElementById("token_submit"); //IDがtoken_submitの場合に取得される
      btn.addEventListener("click", e => { //ボタンが押されてイベント発火
        e.preventDefault();
        let card = {
          number: document.getElementById("card_number").value,
          cvc: document.getElementById("cvc").value,
          exp_month: document.getElementById("exp_month").value,
          exp_year: document.getElementById("exp_year").value,
        }; //入力されたデータを取得
        Payjp.createToken(card, (status, response) => {
          if (status === 200){
            $("#card_nummber").removeAttr("name");
            $("#cvc").removeAttr("name");
            $("#exp_month").removeAttr("name");
            $("#exp_year").removeAttr("name");//データを自サーバに保存しないようにname属性を削除
            var token = response.id;
            $("#charge-form").append($('<input type="hidden" name="payjp_token" class="payjp-token" />').val(token));
            $("#charge-form").get(0).submit();
          }else{
            alert("Error");
          }
        });
      }
    },
    false
  );
})
