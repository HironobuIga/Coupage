func run() {
    print("🍐 Start Generate Confluence Page")
    
    guard CommandLine.arguments.count >= 2 else {
        print("⛔️ 引数が不足しています >>> \(CommandLine.arguments)")
        assertionFailure()
        return
    }
    
    // TODO: 外部から引数で受け取る
    // 対象のspacekey
    let spaceKey = "spaceKey"
    
    // TODO: 外部から引数で受け取る
    // 対象の親ページID(optional)
    let ancestorsKey = "ancestorsKey"

    // TODO: 外部から引数で受け取る
    // 生成するpegeのtitle
    let pageTitle = "pageTitle"
    
    let pageValueString = TemplateFileAccessor.fetchTemplate()
    
    ConfluenceAPI().generateReleaseNote(spaceKey: spaceKey,
                                        ancestorsKey: ancestorsKey,
                                        pageTitle: pageTitle,
                                        pageValueString: pageValueString)
}

run()
