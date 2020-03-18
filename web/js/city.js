var city = {
    'province': areaList.province,
    'city': areaList.city,
    'area': areaList.area,
    'createCity': function (arr = ['province', 'city', 'area']) {
        /*$('#liui-city').append('：');*/
        arr.forEach(function (v) {
            $('#liui-city').append('<select name="' + v + '" class="' + v + '"></select>');
        });
    },
    'showCity': function (node, arr, linkfield = '', linkcode = '') {
        let str = '';
        arr.forEach(function (v) {
            if (linkfield === '' || v[linkfield] === linkcode) {
                str += '<option value="' + v.code + '">' + v.name + '</option>';
            }
        });
        node.html(str);
    },
    'initCity': function () {
        this.showCity($('.province'), this.province);
        this.changeProvince();
    },
    'changeCity': function () {
        let citycode = $('.city').children('option:selected').val();
        this.showCity($('.area'), this.area, 'citycode', citycode);
    },
    'changeProvince': function () {
        let provincecode = $('.province').children('option:selected').val();
        this.showCity($('.city'), this.city, 'provincecode', provincecode);
        this.changeCity();
    },
    'render': function () {
        this.createCity();
        this.initCity();
        return city;
    },
    'listen': function (e) {
        $('.province').change(function () {
            e.changeProvince();
        });
        
        $('.city').change(function () {
            e.changeCity();
        }); 
    }
}


