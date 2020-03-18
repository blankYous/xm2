/* 鏀惰棌鍒楄〃鑴氭湰
** 2019-11-05
** by Molly
*/
var userVm=new Vue({
    el:".page-container",
    data:{
        loadFlag:true,
        url:{
            collect_get:'/antacom/data.User/getMyCollection',
            collect_add:"/antacom/data.User/addMyCollection",
            collect_remove:"/antacom/data.User/delMyCollection",
            collect_batchRemove:'/antacom/data.User/batchDelMycollection',
            collect_clearDisable:'/antacom/data.User/clearMyCollectionByOffGoods',
            path_list:MALL.Common.url.path_list,
            path_login:MALL.Common.url.path_login
        },
        dropdown:{
            page:false
        },
        page:{
            p:1,
            list:[1],
            total:1
        },
        collect:{
            list:[]
        }
    },
    mounted:function(){
        this.loadPage(false);
    },
    methods:{
        loadPage:function(_async,sucback,failback){
            var that=this,_data={};
            _data.page=this.page.p;
            if (that.loadFlag == false) return;
            that.loadFlag=false;
            MALL.Common.showLoading();
            $.ajax({
                type: "POST",
                url: that.url.collect_get,
                data:_data,
                async:_async,
                dataType: 'json',
                success: function(res) {
                    MALL.Common.hideLoading();
                    that.loadFlag=true;
                    if(res.status==1){
                        var _list=res.data.data?res.data.data:[],
                            _total=res.data.page?parseInt(res.data.page):1,
                            _pages=[];
                        for(var i=1;i<=_total;i++){
                            _pages.push(i);
                        }
                        for(var x in _list){
                            _list[x].url="/goods-"+_list[x].id_goods+".html";
                            _list[x].isCollect=1;
                        }
                        that.$set(that.collect,'list',_list);
                        that.$set(that.page,'list',_pages);
                        that.$set(that.page,'total',_total);
                        sucback && typeof sucback == 'function' && sucback();
                        return false;
                    }
                    MALL.Common.message({text:res.msg?res.msg:"璇锋眰鏁版嵁澶辫触锛岃閲嶈瘯",time:2000});
                    failback && typeof failback == 'function' && failback();
                    if(res.code==0 && res.msg && res.msg.indexOf('鏈櫥褰�')>=0){
                        setTimeout(function(){location.href=that.url.path_login;},1500);
                    }
                },
                error:function(res){
                    MALL.Common.hideLoading();
                    that.loadFlag=true;
                    MALL.Common.message({text:"璇锋眰鏁版嵁澶辫触锛岃閲嶈瘯",time:2000});
                    failback && typeof failback == 'function' && failback();
                }
            });
        },
        toggleDropdown:function(key){
            for(var x in this.dropdown){
                if(key && x==key)	this.$set(this.dropdown,x,!this.dropdown[x]);
                else this.$set(this.dropdown,x,false);
            }
        },
        pageClick:function(type,value){
            if(!this.loadFlag) return false;
            var _totalPage=this.page.total,
                _curPage=this.page.p,
                _nextPage=false;
            switch(type){
                case 'num':_nextPage=parseInt(value);break;
                case 'btn':
                    if(value=='prev') _nextPage=_curPage-1;
                    else if(value=='next') _nextPage=_curPage+1;
                    break;
                default:;
            }
            var _errMsg='';
            if(_nextPage>=1 && _nextPage<=_totalPage && _nextPage!=_curPage) _errMsg=false;
            else if(_nextPage==_curPage) _errMsg="褰撳墠宸茬粡鏄"+_curPage+"椤典簡";
            else if(type=='btn'&&_nextPage<1) _errMsg="褰撳墠宸茬粡鏄1椤典簡";
            else if(type=='btn'&&_nextPage>_totalPage)  _errMsg="褰撳墠宸茬粡鏄渶鍚庝竴椤典簡";
            else _errMsg="椤电爜閿欒";
            this.toggleDropdown('');
            if(_errMsg && _errMsg!=''){
                MALL.Common.message({text:_errMsg,time:2000});
                return false;
            }
            this.$set(this.page,'p',_nextPage);
            this.loadPage(true);
            $('html').scrollTop(0);
        },
        toggleCollect:function(gid,type){
            var that=this,_list=this.collect.list,_idx=-1;
            for(var x in _list){
                if(_list[x].id_goods==gid) _idx=x;
            }
            if(_idx<0) return;
            switch(type){
                case 'remove':
                    if (that.loadFlag == false) return;
                    that.loadFlag=false;
                    MALL.Common.showLoading();
                    $.ajax({
                        type: "POST",
                        url: that.url.collect_remove,
                        data:{id_goods:gid},
                        dataType: 'json',
                        success: function(res) {
                            MALL.Common.hideLoading();
                            that.loadFlag=true;
                            if(res.status==1){
                                _list[_idx].isCollect=0;
                                that.$set(that.collect,'list',_list);
                                return false;
                            }
                            MALL.Common.message({text:res.msg?res.msg:"鍙栨秷澶辫触锛岃閲嶈瘯",time:2000});
                            if(res.code==0 && res.msg && res.msg.indexOf('鏈櫥褰�')>=0){
                                setTimeout(function(){location.href=that.url.path_login;},1500);
                            }
                        },
                        error:function(res){
                            MALL.Common.hideLoading();
                            that.loadFlag=true;
                            MALL.Common.message({text:"璇锋眰鏁版嵁澶辫触锛岃閲嶈瘯",time:2000});
                        }
                    });
                    break;
                case 'add':
                    if (that.loadFlag == false) return;
                    that.loadFlag=false;
                    MALL.Common.showLoading();
                    $.ajax({
                        type: "POST",
                        url: that.url.collect_add,
                        data:{id_goods:gid},
                        dataType: 'json',
                        success: function(res) {
                            MALL.Common.hideLoading();
                            that.loadFlag=true;
                            if(res.status==1){
                                _list[_idx].isCollect=1;
                                that.$set(that.collect,'list',_list);
                                return false;
                            }
                            MALL.Common.message({text:res.msg?res.msg:"鏀惰棌澶辫触锛岃閲嶈瘯",time:2000});
                            if(res.code==0 && res.msg && res.msg.indexOf('鏈櫥褰�')>=0){
                                setTimeout(function(){location.href=that.url.path_login;},1500);
                            }
                        },
                        error:function(res){
                            MALL.Common.hideLoading();
                            that.loadFlag=true;
                            MALL.Common.message({text:"璇锋眰鏁版嵁澶辫触锛岃閲嶈瘯",time:2000});
                        }
                    });
                    break;
                default:;
            }
        },
        batchRemoveColl:function(){},
        clearDisable:function(){
            var that=this;
            MALL.Common.confirm({
                "title":"纭娓呴櫎宸插け鏁堝晢鍝侊紵",
                yes:function(){
                    if (that.loadFlag == false) return;
                    that.loadFlag=false;
                    MALL.Common.showLoading();
                    $.ajax({
                        type: "POST",
                        url: that.url.collect_clearDisable,
                        data:{},
                        dataType: 'json',
                        success: function(res) {
                            MALL.Common.hideLoading();
                            that.loadFlag=true;
                            if(res.status==1){
                                that.loadPage();
                                return false;
                            }
                            MALL.Common.message({text:res.msg?res.msg:"鎿嶄綔澶辫触锛岃閲嶈瘯",time:2000});
                            if(res.code==0 && res.msg && res.msg.indexOf('鏈櫥褰�')>=0){
                                setTimeout(function(){location.href=that.url.path_login;},1500);
                            }
                        },
                        error:function(res){
                            MALL.Common.hideLoading();
                            that.loadFlag=true;
                            MALL.Common.message({text:"璇锋眰鏁版嵁澶辫触锛岃閲嶈瘯",time:2000});
                        }
                    });
                }
            });
        }
    }
});