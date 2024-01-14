const base = {
    get() {
                return {
            url : "http://localhost:8080/ssmd9cd3/",
            name: "ssmd9cd3",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmd9cd3/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "私家车位共享系统小程序"
        } 
    }
}
export default base
