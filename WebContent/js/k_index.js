//公有协议
function showContent1(){
    $('#private').hide();
    $('#product_info').hide();
    $('#public').show();
    $('#data').hide();
    // $('.nav li:first').toggleClass('active');
    $('.nav li:eq(1)').removeClass('active');
    $('.nav li:eq(2)').removeClass('active');
    //console.log($('.nav li:eq(1)'));
}

//创建产品
function create(){
    // $('#xieyi').hide();
    $('#public').hide();
    $('#private').hide();
    $('#product_info').show();
    $('#data').hide();
    $('.nav li:first').removeClass('active');
    $('.nav li:eq(1)').removeClass('active');
    $('.nav li:eq(2)').removeClass('active');
}

function Change_1(){
    //选择类别
    var lie = $('#leibie');
    var lie1 = $('#liebie_1');
    var lie_val = $('#leibie').val();
    var lie1s=[];
    lie1.empty();
    switch(lie_val){
        case "A":
            lie1s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "B":
            lie1s = ["外设产品","网络产品","办公设备"];
            break;
        case "C":
            lie1s = ["钟表"];
            break;
        case "D":
            lie1s = ["童车童车","童装童鞋","喂养用品"];
            break;
        case "E":
            lie1s = ["车载电器","安全自驾"];
            break;
        case "F":
            lie1s = ["遥控/电动","娃娃玩具","益智玩具"];
            break;
        case "G":
            lie1s = ["摄影摄像","影音娱乐","数码配件","电子教育","智能数码"];
            break;
        case "H":
            lie1s = ["骑行运动","垂钓用品","户外装备"];
            break;
        case "I":
            lie1s = ["其他"];
            break;
    }
    var temp = document.createDocumentFragment(); //文档碎片
    for(var i=0;i<lie1s.length;i++){
        var opt = document.createElement("option");
        opt.innerHTML = lie1s[i];
        temp.appendChild(opt);
    }
    lie1.append(temp);
}

function Change_2(){
    var lie1 = $('#liebie_1');
    var lie2 = $('#liebie_2');
    var lie_val = $('#liebie_1').val();
    var lie2s=[];
    lie2.empty();
    switch(lie_val){
        case "大家电":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "生活电器":
            lie2s = ["取暖电器","净化器","空气监测仪","加湿器","家用机器人","吸尘器","挂烫机/熨斗","插座","清洁机"
                ,"除湿机","干衣机","收录/音机","电风扇","冷风扇","生活电器配件","净水设备","饮水机","其它"];
            break;
        case "厨房电器":
            lie2s = ["取暖电器","净化器","空气监测仪","加湿器","家用机器人","吸尘器","挂烫机/熨斗","插座","清洁机"
                ,"除湿机","干衣机","收录/音机","电风扇","冷风扇","生活电器配件","净水设备","饮水机","其它"];
            break;
        case "个人护理健康":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "五金家装":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "外设产品":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "网络产品":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "办公设备":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "钟表":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "童车童车":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "童装童鞋":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "喂养用品":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "车载电器":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "安全自驾":
            lie2s = ["平板电视","空调","冰箱","洗衣机","家庭影院","DVD播放机","迷你音响","烟机/灶具","热水器"
                ,"消毒柜/洗碗机","冷柜/冰吧","酒柜","家电配件","其它"];
            break;
        case "遥控/电动":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "娃娃玩具":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "益智玩具":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "摄影摄像":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "影音娱乐":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "数码配件":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "电子教育":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "智能数码":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "骑行运动":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "垂钓用品":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "户外装备":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;
        case "其他":
            lie2s = ["大家电","生活电器","厨房电器","个人护理健康","五金家装"];
            break;

    }
    var temp = document.createDocumentFragment(); //文档碎片
    for(var i=0;i<lie2s.length;i++){
        var opt = document.createElement("option");
        opt.innerHTML = lie2s[i];
        temp.appendChild(opt);
    }
    lie2.append(temp);
}


//改变灯泡
var img=0;
function change_led() {
    if(img==0){
        $('#switch').attr('src',"../images/off.png");
        $('#deng').attr('src',"../images/r10.png");
        img=1;
        $.ajax({
            type: "POST",
            url: "http://139.199.97.82:8080/company/controller/Close.htm",
            data: null
        });
    }else{
        $('#switch').attr('src',"../images/on.png");
        $('#deng').attr('src',"../images/r12.png");
        img=0;
        $.ajax({
            type: "POST",
            url: "http://139.199.97.82:8080/company/controller/Open.htm",
            data: null
        });
    }

}

//底部
$(".footer ul li").hover(function(){
    $(this).addClass("change").siblings().removeClass("change");
});
