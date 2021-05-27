function quit() {
    if (confirm("确定要退出吗？")) {
        window.location.href = "customer.do?action=loginOut";
    }
}

