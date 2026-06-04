.class public Lcom/bweather/forecast/adapter/ˆ;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bweather/forecast/adapter/ˆ$ʻ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/bweather/forecast/model/Link;",
        ">;"
    }
.end annotation


# instance fields
.field private ʼʼ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bweather/forecast/model/Link;",
            ">;"
        }
    .end annotation
.end field

.field private final ʽʽ:Landroid/view/LayoutInflater;

.field private ʿʿ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "links",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bweather/forecast/model/Link;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/bweather/forecast/adapter/ˆ;->ʼʼ:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/bweather/forecast/adapter/ˆ;->ʿʿ:Landroid/content/Context;

    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/bweather/forecast/adapter/ˆ;->ʽʽ:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/bweather/forecast/adapter/ˆ;->ʼʼ:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/ˈˈ;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x7

    invoke-virtual {p0, p1}, Lcom/bweather/forecast/adapter/ˆ;->ʻ(I)Lcom/bweather/forecast/model/Link;

    move-result-object p1

    const/4 v0, 0x1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v3, 0x3

    iget-object p2, p0, Lcom/bweather/forecast/adapter/ˆ;->ʽʽ:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0075

    const/4 v3, 0x7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 v3, 0x2

    new-instance p3, Lcom/bweather/forecast/adapter/ˆ$ʻ;

    const/4 v3, 0x6

    invoke-direct {p3, p2}, Lcom/bweather/forecast/adapter/ˆ$ʻ;-><init>(Landroid/view/View;)V

    const/4 v3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x6

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    const/4 v3, 0x7

    check-cast p3, Lcom/bweather/forecast/adapter/ˆ$ʻ;

    :goto_0
    iget-object v0, p0, Lcom/bweather/forecast/adapter/ˆ;->ʼʼ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bweather/forecast/model/Link;

    invoke-static {p3}, Lcom/bweather/forecast/adapter/ˆ$ʻ;->ʻ(Lcom/bweather/forecast/adapter/ˆ$ʻ;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/bweather/forecast/model/Link;->getInfoTwo()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    const/4 v3, 0x1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v3, 0x0

    invoke-static {p3}, Lcom/bweather/forecast/adapter/ˆ$ʻ;->ʼ(Lcom/bweather/forecast/adapter/ˆ$ʻ;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/bweather/forecast/model/Link;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/bweather/forecast/model/Link;->isSelected()Z

    move-result v0

    const/4 v3, 0x6

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/bweather/forecast/adapter/ˆ$ʻ;->ʼ(Lcom/bweather/forecast/adapter/ˆ$ʻ;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/bweather/forecast/adapter/ˆ;->ʿʿ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x5

    const v1, 0x7f06011c

    const/4 v3, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x5

    invoke-static {p3}, Lcom/bweather/forecast/adapter/ˆ$ʻ;->ʻ(Lcom/bweather/forecast/adapter/ˆ$ʻ;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/bweather/forecast/adapter/ˆ;->ʿʿ:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/4 v3, 0x3

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    const/4 v3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x7

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    invoke-static {p3}, Lcom/bweather/forecast/adapter/ˆ$ʻ;->ʼ(Lcom/bweather/forecast/adapter/ˆ$ʻ;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bweather/forecast/model/Link;->getColorCode()I

    move-result v1

    const/4 v3, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    invoke-static {p3}, Lcom/bweather/forecast/adapter/ˆ$ʻ;->ʻ(Lcom/bweather/forecast/adapter/ˆ$ʻ;)Landroid/widget/TextView;

    move-result-object p3

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/bweather/forecast/model/Link;->getColorTwo()I

    move-result p1

    const/4 v3, 0x5

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 4

    const/4 v3, 0x5

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public ʻ(I)Lcom/bweather/forecast/model/Link;
    .locals 2
    .annotation build Landroidx/annotation/ˈˈ;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/bweather/forecast/adapter/ˆ;->ʼʼ:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    check-cast p1, Lcom/bweather/forecast/model/Link;

    const/4 v1, 0x7

    return-object p1
.end method
