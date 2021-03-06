.class public final Lcom/prolificinteractive/materialcalendarview/DayViewFacade;
.super Ljava/lang/Object;
.source "DayViewFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;
    }
.end annotation


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private daysDisabled:Z

.field private isDecorated:Z

.field private selectionDrawable:Landroid/graphics/drawable/Drawable;

.field private final spans:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    .line 20
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->daysDisabled:Z

    .line 23
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 24
    return-void
.end method


# virtual methods
.method public addSpan(Ljava/lang/Object;)V
    .locals 2
    .parameter "span"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    new-instance v1, Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;

    invoke-direct {v1, p1}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 64
    :cond_0
    return-void
.end method

.method protected applyTo(Lcom/prolificinteractive/materialcalendarview/DayViewFacade;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_1
    iget-object v0, p1, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 97
    iget-boolean v0, p1, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated:Z

    iget-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated:Z

    or-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 98
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->daysDisabled:Z

    iput-boolean v0, p1, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->daysDisabled:Z

    .line 99
    return-void
.end method

.method public areDaysDisabled()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->daysDisabled:Z

    return v0
.end method

.method protected getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSelectionDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewFacade$Span;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isDecorated()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated:Z

    return v0
.end method

.method protected reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->spans:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 81
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 82
    iput-boolean v1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->daysDisabled:Z

    .line 83
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 37
    return-void
.end method

.method public setDaysDisabled(Z)V
    .locals 1
    .parameter "daysDisabled"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->daysDisabled:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 75
    return-void
.end method

.method public setSelectionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->selectionDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/DayViewFacade;->isDecorated:Z

    .line 52
    return-void
.end method
