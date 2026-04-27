.class public Lsinet/startup/inDriver/ui/CustomConfigWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CustomConfigWebViewClient.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    const-string v2, "<html><head><meta name=\'viewport\' content=\'width=device-width, initial-scale=1.0\'><style>body{display:flex;flex-direction:column;align-items:center;justify-content:center;height:100vh;font-family:-apple-system,sans-serif;background:#f3f4f6;color:#1f2937;margin:0;} .icon{font-size:48px;margin-bottom:16px;} h2{margin:0 0 8px 0;font-size:20px;} p{margin:0;color:#6b7280;text-align:center;} .btn{margin-top:24px;background:#2563eb;color:white;border:none;padding:12px 24px;border-radius:12px;font-weight:bold;font-size:16px;}</style></head><body><div class=\'icon\'>📡</div><h2>Sin Conexión</h2><p>No se pudo conectar con el servidor.</p><p>Verifica tu internet.</p><button class=\'btn\' onclick=\'location.reload()\'>Reintentar</button></body></html>"

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 p0, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "whatsapp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "wa.me"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_24
    const/4 v0, 0x0

    return v0
.end method
