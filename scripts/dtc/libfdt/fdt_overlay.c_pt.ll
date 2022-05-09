; ModuleID = '/llk/IR_all_yes/scripts/dtc/libfdt/fdt_overlay.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"/__local_fixups__\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/__fixups__\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"/__symbols__\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"__overlay__\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"target-path\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"__symbols__\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"/__overlay__/\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"/__overlay__\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_overlay_apply(ptr noundef %fdt, ptr noundef %fdto) local_unnamed_addr #0 {
entry:
  %phandle_prop.i.i.i = alloca i32, align 4
  %prop_len.i.i.i = alloca i32, align 4
  %label.i.i = alloca ptr, align 8
  %len.i.i = alloca i32, align 4
  %endptr.i.i = alloca ptr, align 8
  %delta = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delta) #8
  %call = tail call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup32, label %cleanup.cont

cleanup.cont:                                     ; preds = %entry
  %call2 = tail call i32 @fdt_ro_probe_(ptr noundef %fdto) #8
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %cleanup32, label %cleanup.cont8

cleanup.cont8:                                    ; preds = %cleanup.cont
  %call9 = call i32 @fdt_find_max_phandle(ptr noundef %fdt, ptr noundef nonnull %delta) #8
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %err

if.end11:                                         ; preds = %cleanup.cont8
  %0 = load i32, ptr %delta, align 4, !tbaa !5
  %call.i = call fastcc i32 @overlay_adjust_node_phandles(ptr noundef %fdto, i32 noundef 0, i32 noundef %0) #8
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %err

if.end15:                                         ; preds = %if.end11
  %1 = load i32, ptr %delta, align 4, !tbaa !5
  %call.i54 = call i32 @fdt_path_offset(ptr noundef %fdto, ptr noundef nonnull @.str.2) #8
  %cmp.i = icmp slt i32 %call.i54, 0
  br i1 %cmp.i, label %if.then.i, label %overlay_update_local_references.exit

if.then.i:                                        ; preds = %if.end15
  %cmp1.i = icmp eq i32 %call.i54, -1
  br i1 %cmp1.i, label %if.end19, label %err

overlay_update_local_references.exit:             ; preds = %if.end15
  %call4.i = call fastcc i32 @overlay_update_local_node_references(ptr noundef %fdto, i32 noundef 0, i32 noundef %call.i54, i32 noundef %1) #8
  %tobool17.not = icmp eq i32 %call4.i, 0
  br i1 %tobool17.not, label %if.end19, label %err

if.end19:                                         ; preds = %overlay_update_local_references.exit, %if.then.i
  %call.i55 = call i32 @fdt_path_offset(ptr noundef %fdto, ptr noundef nonnull @.str.3) #8
  %cmp.i56 = icmp eq i32 %call.i55, -1
  br i1 %cmp.i56, label %if.end23, label %if.end.i

if.end.i:                                         ; preds = %if.end19
  %cmp1.i57 = icmp slt i32 %call.i55, 0
  br i1 %cmp1.i57, label %err, label %if.end3.i59

if.end3.i59:                                      ; preds = %if.end.i
  %call4.i58 = call i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef nonnull @.str.4) #8
  %2 = icmp slt i32 %call4.i58, -1
  br i1 %2, label %err, label %if.end8.i

if.end8.i:                                        ; preds = %if.end3.i59
  %call9.i = call i32 @fdt_first_property_offset(ptr noundef %fdto, i32 noundef %call.i55) #8
  %cmp1041.i = icmp sgt i32 %call9.i, -1
  br i1 %cmp1041.i, label %for.body.lr.ph.i, label %if.end23

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %cmp.i.i.i = icmp slt i32 %call4.i58, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %property.042.i = phi i32 [ %call9.i, %for.body.lr.ph.i ], [ %call14.i, %for.inc.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %label.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #8
  %call.i.i = call ptr @fdt_getprop_by_offset(ptr noundef %fdto, i32 noundef %property.042.i, ptr noundef nonnull %label.i.i, ptr noundef nonnull %len.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %3 = load i32, ptr %len.i.i, align 4, !tbaa !5
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %cmp.i.i = icmp eq i32 %3, -1
  br i1 %cmp.i.i, label %.loopexit.i, label %overlay_fixup_phandle.exit.i

do.body.i.i:                                      ; preds = %do.cond.i.i, %for.body.i
  %4 = phi i32 [ %12, %do.cond.i.i ], [ %3, %for.body.i ]
  %value.0.i.i = phi ptr [ %add.ptr.i.i, %do.cond.i.i ], [ %call.i.i, %for.body.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endptr.i.i) #8
  %conv.i.i = sext i32 %4 to i64
  %call3.i.i = call ptr @memchr(ptr noundef %value.0.i.i, i32 noundef 0, i64 noundef %conv.i.i) #9
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %cleanup.thread.i.i, label %if.end6.i.i

if.end6.i.i:                                      ; preds = %do.body.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call3.i.i to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %value.0.i.i to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv7.i.i = trunc i64 %sub.ptr.sub.i.i to i32
  %add.i.i = add i32 %conv7.i.i, 1
  %sub.i.i = sub i32 %4, %add.i.i
  store i32 %sub.i.i, ptr %len.i.i, align 4, !tbaa !5
  %idx.ext.i.i = zext i32 %add.i.i to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %value.0.i.i, i64 %idx.ext.i.i
  %conv9.i.i = and i64 %sub.ptr.sub.i.i, 4294967295
  %call10.i.i = call ptr @memchr(ptr noundef %value.0.i.i, i32 noundef 58, i64 noundef %conv9.i.i) #9
  %tobool11.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool11.not.i.i, label %cleanup.thread.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end6.i.i
  %5 = load i8, ptr %call10.i.i, align 1, !tbaa !9
  %cmp13.not.i.i = icmp eq i8 %5, 58
  br i1 %cmp13.not.i.i, label %if.end16.i.i, label %cleanup.thread.i.i

if.end16.i.i:                                     ; preds = %lor.lhs.false.i.i
  %sub.ptr.lhs.cast17.i.i = ptrtoint ptr %call10.i.i to i64
  %sub.ptr.sub19.i.i = sub i64 %sub.ptr.lhs.cast17.i.i, %sub.ptr.rhs.cast.i.i
  %conv20.i.i = trunc i64 %sub.ptr.sub19.i.i to i32
  %sub21.i.i = add i32 %conv7.i.i, -1
  %cmp22.i.i = icmp eq i32 %sub21.i.i, %conv20.i.i
  br i1 %cmp22.i.i, label %cleanup.thread.i.i, label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.end16.i.i
  %add26.neg.i.i = xor i64 %sub.ptr.sub19.i.i, -1
  %sub27.i.i = add i64 %sub.ptr.sub.i.i, %add26.neg.i.i
  %add.ptr28.i.i = getelementptr inbounds i8, ptr %call10.i.i, i64 1
  %conv29.i.i = and i64 %sub27.i.i, 4294967295
  %call30.i.i = call ptr @memchr(ptr noundef nonnull %add.ptr28.i.i, i32 noundef 58, i64 noundef %conv29.i.i) #9
  %tobool31.not.i.i = icmp eq ptr %call30.i.i, null
  br i1 %tobool31.not.i.i, label %cleanup.thread.i.i, label %lor.lhs.false32.i.i

lor.lhs.false32.i.i:                              ; preds = %if.end25.i.i
  %6 = load i8, ptr %call30.i.i, align 1, !tbaa !9
  %cmp34.not.i.i = icmp eq i8 %6, 58
  br i1 %cmp34.not.i.i, label %if.end37.i.i, label %cleanup.thread.i.i

if.end37.i.i:                                     ; preds = %lor.lhs.false32.i.i
  %sub.ptr.lhs.cast38.i.i = ptrtoint ptr %call30.i.i to i64
  %sub.ptr.rhs.cast39.i.i = ptrtoint ptr %add.ptr28.i.i to i64
  %sub.ptr.sub40.i.i = sub i64 %sub.ptr.lhs.cast38.i.i, %sub.ptr.rhs.cast39.i.i
  %conv41.i.i = trunc i64 %sub.ptr.sub40.i.i to i32
  %tobool42.not.i.i = icmp eq i32 %conv41.i.i, 0
  br i1 %tobool42.not.i.i, label %cleanup.thread.i.i, label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.end37.i.i
  %add.ptr45.i.i = getelementptr inbounds i8, ptr %call30.i.i, i64 1
  %call46.i.i = call i64 @strtoul(ptr noundef nonnull %add.ptr45.i.i, ptr noundef nonnull %endptr.i.i, i32 noundef 10) #8
  %conv47.i.i = trunc i64 %call46.i.i to i32
  %7 = load ptr, ptr %endptr.i.i, align 8, !tbaa !10
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %cmp49.not.i.i = icmp eq i8 %8, 0
  %cmp53.not.i.i = icmp ugt ptr %7, %add.ptr45.i.i
  %or.cond.i.i = and i1 %cmp53.not.i.i, %cmp49.not.i.i
  br i1 %or.cond.i.i, label %if.end56.i.i, label %cleanup.thread.i.i

if.end56.i.i:                                     ; preds = %if.end44.i.i
  %9 = load ptr, ptr %label.i.i, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phandle_prop.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop_len.i.i.i) #8
  br i1 %cmp.i.i.i, label %11, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end56.i.i
  %call.i.i.i = call ptr @fdt_getprop(ptr noundef %fdt, i32 noundef %call4.i58, ptr noundef %9, ptr noundef nonnull %prop_len.i.i.i) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then1.i.i.i, label %if.end2.i.i.i

if.then1.i.i.i:                                   ; preds = %if.end.i.i.i
  %10 = load i32, ptr %prop_len.i.i.i, align 4, !tbaa !5
  br label %cleanup.i.i

if.end2.i.i.i:                                    ; preds = %if.end.i.i.i
  %call3.i.i.i = call i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef nonnull %call.i.i.i) #8
  %cmp4.i.i.i = icmp slt i32 %call3.i.i.i, 0
  br i1 %cmp4.i.i.i, label %11, label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.end2.i.i.i
  %call7.i.i.i = call i32 @fdt_get_phandle(ptr noundef %fdt, i32 noundef %call3.i.i.i) #8
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %11, label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.end6.i.i.i
  %call11.i.i.i = call i32 @fdt_path_offset_namelen(ptr noundef %fdto, ptr noundef %value.0.i.i, i32 noundef %conv20.i.i) #8
  %cmp12.i.i.i = icmp eq i32 %call11.i.i.i, -1
  br i1 %cmp12.i.i.i, label %11, label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.end10.i.i.i
  %cmp15.i.i.i = icmp slt i32 %call11.i.i.i, 0
  br i1 %cmp15.i.i.i, label %11, label %if.end17.i.i.i

if.end17.i.i.i:                                   ; preds = %if.end14.i.i.i
  %rev.i.i.i.i = call i32 @llvm.bswap.i32(i32 %call7.i.i.i) #8
  store i32 %rev.i.i.i.i, ptr %phandle_prop.i.i.i, align 4, !tbaa !5
  %call19.i.i.i = call i32 @fdt_setprop_inplace_namelen_partial(ptr noundef %fdto, i32 noundef %call11.i.i.i, ptr noundef nonnull %add.ptr28.i.i, i32 noundef %conv41.i.i, i32 noundef %conv47.i.i, ptr noundef nonnull %phandle_prop.i.i.i, i32 noundef 4) #8
  br label %cleanup.i.i

cleanup.thread.i.i:                               ; preds = %if.end44.i.i, %if.end37.i.i, %lor.lhs.false32.i.i, %if.end25.i.i, %if.end16.i.i, %lor.lhs.false.i.i, %if.end6.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endptr.i.i) #8
  br label %.loopexit.i

11:                                               ; preds = %if.end14.i.i.i, %if.end10.i.i.i, %if.end6.i.i.i, %if.end2.i.i.i, %if.end56.i.i
  %retval.0.i.ph.i.i = phi i32 [ %call11.i.i.i, %if.end14.i.i.i ], [ -16, %if.end10.i.i.i ], [ -1, %if.end6.i.i.i ], [ %call3.i.i.i, %if.end2.i.i.i ], [ %call4.i58, %if.end56.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_len.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phandle_prop.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endptr.i.i) #8
  br label %.loopexit.i

cleanup.i.i:                                      ; preds = %if.end17.i.i.i, %if.then1.i.i.i
  %retval.0.i.i.i = phi i32 [ %call19.i.i.i, %if.end17.i.i.i ], [ %10, %if.then1.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_len.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phandle_prop.i.i.i) #8
  %tobool58.not.i.i = icmp eq i32 %retval.0.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endptr.i.i) #8
  br i1 %tobool58.not.i.i, label %do.cond.i.i, label %.loopexit.i

do.cond.i.i:                                      ; preds = %cleanup.i.i
  %12 = load i32, ptr %len.i.i, align 4, !tbaa !5
  %cmp71.i.i = icmp sgt i32 %12, 0
  br i1 %cmp71.i.i, label %do.body.i.i, label %overlay_fixup_phandle.exit.thread34.i

overlay_fixup_phandle.exit.thread34.i:            ; preds = %do.cond.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %label.i.i) #8
  br label %for.inc.i

.loopexit.i:                                      ; preds = %cleanup.i.i, %11, %cleanup.thread.i.i, %if.then.i.i
  %retval.2.i.ph.i = phi i32 [ %retval.0.i.ph.i.i, %11 ], [ -16, %cleanup.thread.i.i ], [ %retval.0.i.i.i, %cleanup.i.i ], [ -13, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %label.i.i) #8
  br label %err

overlay_fixup_phandle.exit.i:                     ; preds = %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %label.i.i) #8
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %for.inc.i, label %err

for.inc.i:                                        ; preds = %overlay_fixup_phandle.exit.i, %overlay_fixup_phandle.exit.thread34.i
  %call14.i = call i32 @fdt_next_property_offset(ptr noundef %fdto, i32 noundef %property.042.i) #8
  %cmp10.i = icmp sgt i32 %call14.i, -1
  br i1 %cmp10.i, label %for.body.i, label %if.end23

if.end23:                                         ; preds = %for.inc.i, %if.end8.i, %if.end19
  %call24 = call fastcc i32 @overlay_merge(ptr noundef %fdt, ptr noundef %fdto)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %err

if.end27:                                         ; preds = %if.end23
  %call28 = call fastcc i32 @overlay_symbol_update(ptr noundef %fdt, ptr noundef %fdto)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup32.sink.split, label %err

err:                                              ; preds = %if.end27, %if.end23, %overlay_fixup_phandle.exit.i, %.loopexit.i, %if.end3.i59, %if.end.i, %overlay_update_local_references.exit, %if.then.i, %if.end11, %cleanup.cont8
  %ret.0 = phi i32 [ %call9, %cleanup.cont8 ], [ %call.i, %if.end11 ], [ %call4.i, %overlay_update_local_references.exit ], [ %call24, %if.end23 ], [ %call28, %if.end27 ], [ %call.i54, %if.then.i ], [ %retval.2.i.ph.i, %.loopexit.i ], [ %call4.i58, %if.end3.i59 ], [ %call.i55, %if.end.i ], [ %3, %overlay_fixup_phandle.exit.i ]
  store i32 -1, ptr %fdto, align 4, !tbaa !12
  br label %cleanup32.sink.split

cleanup32.sink.split:                             ; preds = %err, %if.end27
  %fdt.sink = phi ptr [ %fdt, %err ], [ %fdto, %if.end27 ]
  %retval.2.ph = phi i32 [ %ret.0, %err ], [ 0, %if.end27 ]
  store i32 -1, ptr %fdt.sink, align 4, !tbaa !12
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup32.sink.split, %cleanup.cont, %entry
  %retval.2 = phi i32 [ %call2, %cleanup.cont ], [ %call, %entry ], [ %retval.2.ph, %cleanup32.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delta) #8
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fdt_ro_probe_(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @fdt_find_max_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_merge(ptr noundef %fdt, ptr noundef %fdto) unnamed_addr #0 {
entry:
  %call = tail call i32 @fdt_first_subnode(ptr noundef %fdto, i32 noundef 0) #8
  %cmp33 = icmp sgt i32 %call, -1
  br i1 %cmp33, label %for.body, label %cleanup16

for.body:                                         ; preds = %for.inc, %entry
  %fragment.034 = phi i32 [ %call15, %for.inc ], [ %call, %entry ]
  %call1 = tail call i32 @fdt_subnode_offset(ptr noundef %fdto, i32 noundef %fragment.034, ptr noundef nonnull @.str.5) #8
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %cmp3 = icmp slt i32 %call1, 0
  br i1 %cmp3, label %cleanup16, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @overlay_get_target(ptr noundef %fdt, ptr noundef %fdto, i32 noundef %fragment.034, ptr noundef null)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %cleanup16, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc i32 @overlay_apply_node(ptr noundef %fdt, i32 noundef %call6, ptr noundef %fdto, i32 noundef %call1)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %for.inc, label %cleanup16

for.inc:                                          ; preds = %if.end9, %for.body
  %call15 = tail call i32 @fdt_next_subnode(ptr noundef %fdto, i32 noundef %fragment.034) #8
  %cmp = icmp sgt i32 %call15, -1
  br i1 %cmp, label %for.body, label %cleanup16

cleanup16:                                        ; preds = %for.inc, %if.end9, %if.end5, %if.end, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ %call10, %if.end9 ], [ %call6, %if.end5 ], [ %call1, %if.end ], [ 0, %for.inc ]
  ret i32 %retval.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_symbol_update(ptr noundef %fdt, ptr noundef %fdto) unnamed_addr #0 {
entry:
  %namelen.i = alloca i32, align 4
  %path_len = alloca i32, align 4
  %name = alloca ptr, align 8
  %target_path = alloca ptr, align 8
  %p = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %path_len) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %target_path) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #8
  %call = tail call i32 @fdt_subnode_offset(ptr noundef %fdto, i32 noundef 0, ptr noundef nonnull @.str.8) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @fdt_subnode_offset(ptr noundef %fdt, i32 noundef 0, ptr noundef nonnull @.str.8) #8
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @fdt_add_subnode(ptr noundef %fdt, i32 noundef 0, ptr noundef nonnull @.str.8) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %root_sym.0 = phi i32 [ %call4, %if.then3 ], [ %call1, %if.end ]
  %cmp6 = icmp slt i32 %root_sym.0, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %call9 = tail call i32 @fdt_first_property_offset(ptr noundef %fdto, i32 noundef %call) #8
  %cmp10244 = icmp sgt i32 %call9, -1
  br i1 %cmp10244, label %for.body, label %cleanup

for.body:                                         ; preds = %for.inc, %if.end8
  %prop.0245 = phi i32 [ %call137, %for.inc ], [ %call9, %if.end8 ]
  %call11 = call ptr @fdt_getprop_by_offset(ptr noundef %fdto, i32 noundef %prop.0245, ptr noundef nonnull %name, ptr noundef nonnull %path_len) #8
  %tobool.not = icmp eq ptr %call11, null
  %0 = load i32, ptr %path_len, align 4, !tbaa !5
  br i1 %tobool.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %for.body
  %cmp14 = icmp slt i32 %0, 1
  br i1 %cmp14, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %conv237 = zext i32 %0 to i64
  %call15 = call ptr @memchr(ptr noundef nonnull %call11, i32 noundef 0, i64 noundef %conv237) #9
  %sub = add nsw i32 %0, -1
  %1 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %call11, i64 %1
  %cmp16.not = icmp eq ptr %call15, %arrayidx
  br i1 %cmp16.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %add.ptr = getelementptr inbounds i8, ptr %call11, i64 %conv237
  %2 = load i8, ptr %call11, align 1, !tbaa !9
  %cmp21.not = icmp eq i8 %2, 47
  br i1 %cmp21.not, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.end19
  %add.ptr25 = getelementptr inbounds i8, ptr %call11, i64 1
  %call26 = call ptr @strchr(ptr noundef nonnull %add.ptr25, i32 noundef 47) #9
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %for.inc, label %if.end29

if.end29:                                         ; preds = %if.end24
  %sub.ptr.lhs.cast = ptrtoint ptr %call26 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call11 to i64
  %3 = xor i64 %sub.ptr.rhs.cast, -1
  %sub31 = add i64 %sub.ptr.lhs.cast, %3
  %conv32 = trunc i64 %sub31 to i32
  %sub.ptr.lhs.cast33 = ptrtoint ptr %add.ptr to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.lhs.cast
  %cmp37 = icmp sgt i64 %sub.ptr.sub35, 13
  br i1 %cmp37, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end29
  %bcmp230 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %call26, ptr noundef nonnull dereferenceable(13) @.str.9, i64 13)
  %cmp41 = icmp eq i32 %bcmp230, 0
  br i1 %cmp41, label %if.then43, label %for.inc

if.then43:                                        ; preds = %land.lhs.true
  %add.ptr45 = getelementptr inbounds i8, ptr %call26, i64 13
  %sub.ptr.rhs.cast47 = ptrtoint ptr %add.ptr45 to i64
  %4 = xor i64 %sub.ptr.rhs.cast47, -1
  %sub49 = add i64 %4, %sub.ptr.lhs.cast33
  %conv50 = trunc i64 %sub49 to i32
  br label %if.end66

if.else:                                          ; preds = %if.end29
  %cmp55 = icmp eq i64 %sub.ptr.sub35, 13
  br i1 %cmp55, label %land.lhs.true57, label %for.inc

land.lhs.true57:                                  ; preds = %if.else
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %call26, ptr noundef nonnull dereferenceable(12) @.str.10, i64 12)
  %cmp61 = icmp eq i32 %bcmp, 0
  br i1 %cmp61, label %if.end66, label %for.inc

if.end66:                                         ; preds = %land.lhs.true57, %if.then43
  %rel_path_len.0 = phi i32 [ %conv50, %if.then43 ], [ 0, %land.lhs.true57 ]
  %rel_path.0 = phi ptr [ %add.ptr45, %if.then43 ], [ @.str.11, %land.lhs.true57 ]
  %call67 = call i32 @fdt_subnode_offset_namelen(ptr noundef %fdto, i32 noundef 0, ptr noundef nonnull %add.ptr25, i32 noundef %conv32) #8
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %cleanup, label %if.end71

if.end71:                                         ; preds = %if.end66
  %call72 = call i32 @fdt_subnode_offset(ptr noundef %fdto, i32 noundef %call67, ptr noundef nonnull @.str.5) #8
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %cleanup, label %if.end76

if.end76:                                         ; preds = %if.end71
  %call77 = call fastcc i32 @overlay_get_target(ptr noundef %fdt, ptr noundef %fdto, i32 noundef %call67, ptr noundef nonnull %target_path)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %cleanup, label %if.end81

if.end81:                                         ; preds = %if.end76
  %5 = load ptr, ptr %target_path, align 8, !tbaa !10
  %tobool82.not = icmp eq ptr %5, null
  br i1 %tobool82.not, label %if.then83, label %if.else89

if.then83:                                        ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %namelen.i) #8
  %call.i = call i32 @fdt_ro_probe_(ptr noundef %fdt) #8
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %get_path_len.exit.thread, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then83
  %call128.i = call ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %call77, ptr noundef nonnull %namelen.i) #8
  %tobool.not29.i = icmp eq ptr %call128.i, null
  br i1 %tobool.not29.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end10.i, %for.cond.preheader.i
  %6 = load i32, ptr %namelen.i, align 4, !tbaa !5
  br label %get_path_len.exit

if.end3.i:                                        ; preds = %if.end10.i, %for.cond.preheader.i
  %nodeoffset.addr.031.i = phi i32 [ %call7.i, %if.end10.i ], [ %call77, %for.cond.preheader.i ]
  %len.030.i = phi i32 [ %add11.i, %if.end10.i ], [ 0, %for.cond.preheader.i ]
  %7 = load i32, ptr %namelen.i, align 4, !tbaa !5
  %cmp4.i = icmp eq i32 %7, 0
  br i1 %cmp4.i, label %for.end.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.end3.i
  %call7.i = call i32 @fdt_parent_offset(ptr noundef %fdt, i32 noundef %nodeoffset.addr.031.i) #8
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %get_path_len.exit.thread, label %if.end10.i

if.end10.i:                                       ; preds = %if.end6.i
  %8 = load i32, ptr %namelen.i, align 4, !tbaa !5
  %add.i = add i32 %len.030.i, 1
  %add11.i = add i32 %add.i, %8
  %call1.i = call ptr @fdt_get_name(ptr noundef %fdt, i32 noundef %call7.i, ptr noundef nonnull %namelen.i) #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then2.i, label %if.end3.i

for.end.i:                                        ; preds = %if.end3.i
  %cmp12.i = icmp eq i32 %len.030.i, 0
  br i1 %cmp12.i, label %get_path_len.exit.thread234, label %get_path_len.exit

get_path_len.exit.thread234:                      ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen.i) #8
  br label %if.end92

get_path_len.exit.thread:                         ; preds = %if.end6.i, %if.then83
  %retval.1.i.ph = phi i32 [ %call7.i, %if.end6.i ], [ %call.i, %if.then83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen.i) #8
  br label %cleanup

get_path_len.exit:                                ; preds = %for.end.i, %if.then2.i
  %retval.1.i = phi i32 [ %len.030.i, %for.end.i ], [ %6, %if.then2.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %namelen.i) #8
  %cmp85 = icmp slt i32 %retval.1.i, 0
  br i1 %cmp85, label %cleanup, label %if.end92

if.else89:                                        ; preds = %if.end81
  %call90 = call i64 @strlen(ptr noundef nonnull %5) #9
  %conv91 = trunc i64 %call90 to i32
  br label %if.end92

if.end92:                                         ; preds = %if.else89, %get_path_len.exit, %get_path_len.exit.thread234
  %len.0 = phi i32 [ %conv91, %if.else89 ], [ %retval.1.i, %get_path_len.exit ], [ 1, %get_path_len.exit.thread234 ]
  %9 = load ptr, ptr %name, align 8, !tbaa !10
  %cmp93 = icmp sgt i32 %len.0, 1
  %conv94 = zext i1 %cmp93 to i32
  %add = add i32 %len.0, 1
  %add95 = add i32 %add, %rel_path_len.0
  %add96 = add i32 %add95, %conv94
  %call97 = call i32 @fdt_setprop_placeholder(ptr noundef %fdt, i32 noundef %root_sym.0, ptr noundef %9, i32 noundef %add96, ptr noundef nonnull %p) #8
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %cleanup, label %if.end101

if.end101:                                        ; preds = %if.end92
  %10 = load ptr, ptr %target_path, align 8, !tbaa !10
  %tobool102.not = icmp eq ptr %10, null
  br i1 %tobool102.not, label %if.then103, label %if.end109

if.then103:                                       ; preds = %if.end101
  %call104 = call fastcc i32 @overlay_get_target(ptr noundef %fdt, ptr noundef %fdto, i32 noundef %call67, ptr noundef nonnull %target_path)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %cleanup, label %if.end109

if.end109:                                        ; preds = %if.then103, %if.end101
  %target.0 = phi i32 [ %call77, %if.end101 ], [ %call104, %if.then103 ]
  %11 = load ptr, ptr %p, align 8, !tbaa !10
  br i1 %cmp93, label %if.then112, label %if.else125

if.then112:                                       ; preds = %if.end109
  %12 = load ptr, ptr %target_path, align 8, !tbaa !10
  %tobool113.not = icmp eq ptr %12, null
  br i1 %tobool113.not, label %if.then114, label %if.else121

if.then114:                                       ; preds = %if.then112
  %call116 = call i32 @fdt_get_path(ptr noundef %fdt, i32 noundef %target.0, ptr noundef %11, i32 noundef %add) #8
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %cleanup, label %if.end126

if.else121:                                       ; preds = %if.then112
  %conv123238 = zext i32 %add to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr nonnull align 1 %12, i64 %conv123238, i1 false)
  br label %if.end126

if.else125:                                       ; preds = %if.end109
  %dec = add nsw i32 %len.0, -1
  br label %if.end126

if.end126:                                        ; preds = %if.else125, %if.else121, %if.then114
  %len.1 = phi i32 [ %len.0, %if.else121 ], [ %len.0, %if.then114 ], [ %dec, %if.else125 ]
  %idxprom127 = sext i32 %len.1 to i64
  %arrayidx128 = getelementptr inbounds i8, ptr %11, i64 %idxprom127
  store i8 47, ptr %arrayidx128, align 1, !tbaa !9
  %add.ptr131 = getelementptr inbounds i8, ptr %arrayidx128, i64 1
  %conv132 = sext i32 %rel_path_len.0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr131, ptr nonnull align 1 %rel_path.0, i64 %conv132, i1 false)
  %add133 = add i32 %rel_path_len.0, 1
  %add134 = add i32 %add133, %len.1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds i8, ptr %11, i64 %idxprom135
  store i8 0, ptr %arrayidx136, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end126, %land.lhs.true57, %if.else, %land.lhs.true, %if.end24
  %call137 = call i32 @fdt_next_property_offset(ptr noundef %fdto, i32 noundef %prop.0245) #8
  %cmp10 = icmp sgt i32 %call137, -1
  br i1 %cmp10, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %if.then114, %if.then103, %if.end92, %get_path_len.exit, %get_path_len.exit.thread, %if.end76, %if.end71, %if.end66, %if.end19, %lor.lhs.false, %if.end13, %for.body, %if.end8, %if.end5, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %root_sym.0, %if.end5 ], [ %retval.1.i.ph, %get_path_len.exit.thread ], [ 0, %if.end8 ], [ %0, %for.body ], [ -15, %lor.lhs.false ], [ -15, %if.end13 ], [ -15, %if.end19 ], [ -16, %if.end66 ], [ -16, %if.end71 ], [ %call77, %if.end76 ], [ %retval.1.i, %get_path_len.exit ], [ %call97, %if.end92 ], [ %call104, %if.then103 ], [ %call116, %if.then114 ], [ 0, %for.inc ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %target_path) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path_len) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_adjust_node_phandles(ptr noundef %fdto, i32 noundef %node, i32 noundef %delta) unnamed_addr #0 {
entry:
  %tmp.i.i33 = alloca i32, align 4
  %len.i34 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #8
  %call.i = call ptr @fdt_getprop(ptr noundef %fdto, i32 noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %len.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  %0 = load i32, ptr %len.i, align 4, !tbaa !5
  br i1 %tobool.not.i, label %overlay_phandle_add_offset.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %cmp.not.i = icmp eq i32 %0, 4
  br i1 %cmp.not.i, label %if.end3.i, label %overlay_phandle_add_offset.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %1 = load i32, ptr %call.i, align 4, !tbaa !5
  %rev.i.i = call i32 @llvm.bswap.i32(i32 %1) #8
  %add.i = add i32 %rev.i.i, %delta
  %cmp5.i = icmp ult i32 %add.i, %rev.i.i
  %cmp10.i = icmp eq i32 %add.i, -1
  %or.cond.i = or i1 %cmp5.i, %cmp10.i
  br i1 %or.cond.i, label %overlay_phandle_add_offset.exit.thread, label %if.end13.i

if.end13.i:                                       ; preds = %if.end3.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %rev.i.i.i = call i32 @llvm.bswap.i32(i32 %add.i) #8
  store i32 %rev.i.i.i, ptr %tmp.i.i, align 4, !tbaa !5
  %call1.i.i = call i32 @fdt_setprop_inplace(ptr noundef %fdto, i32 noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %tmp.i.i, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  br label %overlay_phandle_add_offset.exit

overlay_phandle_add_offset.exit.thread:           ; preds = %if.end3.i, %if.end.i
  %retval.0.i.ph = phi i32 [ -17, %if.end3.i ], [ -6, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  br label %cleanup

overlay_phandle_add_offset.exit:                  ; preds = %if.end13.i, %entry
  %retval.0.i = phi i32 [ %call1.i.i, %if.end13.i ], [ %0, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  %2 = add i32 %retval.0.i, -1
  %3 = icmp ult i32 %2, -2
  br i1 %3, label %cleanup, label %if.end

if.end:                                           ; preds = %overlay_phandle_add_offset.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i34) #8
  %call.i35 = call ptr @fdt_getprop(ptr noundef %fdto, i32 noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %len.i34) #8
  %tobool.not.i36 = icmp eq ptr %call.i35, null
  %4 = load i32, ptr %len.i34, align 4, !tbaa !5
  br i1 %tobool.not.i36, label %overlay_phandle_add_offset.exit49, label %if.end.i38

if.end.i38:                                       ; preds = %if.end
  %cmp.not.i37 = icmp eq i32 %4, 4
  br i1 %cmp.not.i37, label %if.end3.i44, label %overlay_phandle_add_offset.exit49.thread

if.end3.i44:                                      ; preds = %if.end.i38
  %5 = load i32, ptr %call.i35, align 4, !tbaa !5
  %rev.i.i39 = call i32 @llvm.bswap.i32(i32 %5) #8
  %add.i40 = add i32 %rev.i.i39, %delta
  %cmp5.i41 = icmp ult i32 %add.i40, %rev.i.i39
  %cmp10.i42 = icmp eq i32 %add.i40, -1
  %or.cond.i43 = or i1 %cmp5.i41, %cmp10.i42
  br i1 %or.cond.i43, label %overlay_phandle_add_offset.exit49.thread, label %if.end13.i47

if.end13.i47:                                     ; preds = %if.end3.i44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i33) #8
  %rev.i.i.i45 = call i32 @llvm.bswap.i32(i32 %add.i40) #8
  store i32 %rev.i.i.i45, ptr %tmp.i.i33, align 4, !tbaa !5
  %call1.i.i46 = call i32 @fdt_setprop_inplace(ptr noundef %fdto, i32 noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %tmp.i.i33, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i33) #8
  br label %overlay_phandle_add_offset.exit49

overlay_phandle_add_offset.exit49.thread:         ; preds = %if.end3.i44, %if.end.i38
  %retval.0.i48.ph = phi i32 [ -17, %if.end3.i44 ], [ -6, %if.end.i38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i34) #8
  br label %cleanup

overlay_phandle_add_offset.exit49:                ; preds = %if.end13.i47, %if.end
  %retval.0.i48 = phi i32 [ %call1.i.i46, %if.end13.i47 ], [ %4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i34) #8
  %6 = add i32 %retval.0.i48, -1
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %cleanup, label %if.end6

if.end6:                                          ; preds = %overlay_phandle_add_offset.exit49
  %call7 = call i32 @fdt_first_subnode(ptr noundef %fdto, i32 noundef %node) #8
  %cmp852 = icmp sgt i32 %call7, -1
  br i1 %cmp852, label %for.body, label %cleanup

for.body:                                         ; preds = %for.inc, %if.end6
  %child.053 = phi i32 [ %call13, %for.inc ], [ %call7, %if.end6 ]
  %call9 = call fastcc i32 @overlay_adjust_node_phandles(ptr noundef %fdto, i32 noundef %child.053, i32 noundef %delta)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %for.body
  %call13 = call i32 @fdt_next_subnode(ptr noundef %fdto, i32 noundef %child.053) #8
  %cmp8 = icmp sgt i32 %call13, -1
  br i1 %cmp8, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %for.body, %if.end6, %overlay_phandle_add_offset.exit49, %overlay_phandle_add_offset.exit49.thread, %overlay_phandle_add_offset.exit, %overlay_phandle_add_offset.exit.thread
  %retval.0 = phi i32 [ %retval.0.i, %overlay_phandle_add_offset.exit ], [ %retval.0.i48, %overlay_phandle_add_offset.exit49 ], [ %retval.0.i.ph, %overlay_phandle_add_offset.exit.thread ], [ %retval.0.i48.ph, %overlay_phandle_add_offset.exit49.thread ], [ 0, %if.end6 ], [ %call9, %for.body ], [ 0, %for.inc ]
  ret i32 %retval.0
}

declare i32 @fdt_first_subnode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_next_subnode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @fdt_setprop_inplace(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_path_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_update_local_node_references(ptr noundef %fdto, i32 noundef %tree_node, i32 noundef %fixup_node, i32 noundef %delta) unnamed_addr #0 {
entry:
  %name = alloca ptr, align 8
  %fixup_len = alloca i32, align 4
  %tree_len = alloca i32, align 4
  %adj_val = alloca i32, align 4
  %call = tail call i32 @fdt_first_property_offset(ptr noundef %fdto, i32 noundef %fixup_node) #8
  %cmp121 = icmp sgt i32 %call, -1
  br i1 %cmp121, label %for.body, label %for.end43

for.body:                                         ; preds = %for.inc41, %entry
  %fixup_prop.0122 = phi i32 [ %call42, %for.inc41 ], [ %call, %entry ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fixup_len) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tree_len) #8
  %call1 = call ptr @fdt_getprop_by_offset(ptr noundef %fdto, i32 noundef %fixup_prop.0122, ptr noundef nonnull %name, ptr noundef nonnull %fixup_len) #8
  %tobool.not = icmp eq ptr %call1, null
  %0 = load i32, ptr %fixup_len, align 4, !tbaa !5
  br i1 %tobool.not, label %cleanup33.thread, label %if.end

if.end:                                           ; preds = %for.body
  %1 = and i32 %0, 3
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup33.thread

if.end4:                                          ; preds = %if.end
  %conv6 = ashr i32 %0, 2
  store i32 %conv6, ptr %fixup_len, align 4, !tbaa !5
  %2 = load ptr, ptr %name, align 8, !tbaa !10
  %call7 = call ptr @fdt_getprop(ptr noundef %fdto, i32 noundef %tree_node, ptr noundef %2, ptr noundef nonnull %tree_len) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %if.end4
  %3 = load i32, ptr %fixup_len, align 4, !tbaa !5
  %cmp16119 = icmp sgt i32 %3, 0
  br i1 %cmp16119, label %for.body18, label %for.inc41

if.then9:                                         ; preds = %if.end4
  %4 = load i32, ptr %tree_len, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %4, -1
  %. = select i1 %cmp10, i32 -16, i32 %4
  br label %cleanup33.thread

for.body18:                                       ; preds = %for.inc, %for.cond15.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond15.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adj_val) #8
  %arrayidx = getelementptr inbounds i32, ptr %call1, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %rev.i = call i32 @llvm.bswap.i32(i32 %5) #8
  %idx.ext = zext i32 %rev.i to i64
  %add.ptr = getelementptr inbounds i8, ptr %call7, i64 %idx.ext
  %6 = load i32, ptr %add.ptr, align 1
  %rev.i110 = call i32 @llvm.bswap.i32(i32 %6) #8
  %add = add i32 %rev.i110, %delta
  %rev.i111 = call i32 @llvm.bswap.i32(i32 %add) #8
  store i32 %rev.i111, ptr %adj_val, align 4, !tbaa !5
  %7 = load ptr, ptr %name, align 8, !tbaa !10
  %call22 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #9
  %conv23 = trunc i64 %call22 to i32
  %call24 = call i32 @fdt_setprop_inplace_namelen_partial(ptr noundef %fdto, i32 noundef %tree_node, ptr noundef %7, i32 noundef %conv23, i32 noundef %rev.i, ptr noundef nonnull %adj_val, i32 noundef 4) #8
  switch i32 %call24, label %cleanup.thread [
    i32 -3, label %cleanup.thread.loopexit
    i32 0, label %for.inc
  ]

cleanup.thread.loopexit:                          ; preds = %for.body18
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.loopexit, %for.body18
  %retval.2.ph = phi i32 [ -16, %cleanup.thread.loopexit ], [ %call24, %for.body18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adj_val) #8
  br label %cleanup33.thread

for.inc:                                          ; preds = %for.body18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adj_val) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %fixup_len, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp16 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp16, label %for.body18, label %for.inc41

cleanup33.thread:                                 ; preds = %cleanup.thread, %if.then9, %if.end, %for.body
  %retval.3.ph = phi i32 [ %retval.2.ph, %cleanup.thread ], [ %., %if.then9 ], [ %0, %for.body ], [ -16, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tree_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fixup_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #8
  br label %cleanup70

for.inc41:                                        ; preds = %for.inc, %for.cond15.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tree_len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fixup_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #8
  %call42 = call i32 @fdt_next_property_offset(ptr noundef %fdto, i32 noundef %fixup_prop.0122) #8
  %cmp = icmp sgt i32 %call42, -1
  br i1 %cmp, label %for.body, label %for.end43

for.end43:                                        ; preds = %for.inc41, %entry
  %call44 = call i32 @fdt_first_subnode(ptr noundef %fdto, i32 noundef %fixup_node) #8
  %cmp46123 = icmp sgt i32 %call44, -1
  br i1 %cmp46123, label %for.body48, label %cleanup70

for.body48:                                       ; preds = %for.inc67, %for.end43
  %fixup_child.0124 = phi i32 [ %call68, %for.inc67 ], [ %call44, %for.end43 ]
  %call49 = call ptr @fdt_get_name(ptr noundef %fdto, i32 noundef %fixup_child.0124, ptr noundef null) #8
  %call50 = call i32 @fdt_subnode_offset(ptr noundef %fdto, i32 noundef %tree_node, ptr noundef %call49) #8
  %cmp51 = icmp eq i32 %call50, -1
  br i1 %cmp51, label %cleanup70, label %if.end54

if.end54:                                         ; preds = %for.body48
  %cmp55 = icmp slt i32 %call50, 0
  br i1 %cmp55, label %cleanup70, label %cleanup63

cleanup63:                                        ; preds = %if.end54
  %call59 = call fastcc i32 @overlay_update_local_node_references(ptr noundef %fdto, i32 noundef %call50, i32 noundef %fixup_child.0124, i32 noundef %delta)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %for.inc67, label %cleanup70

for.inc67:                                        ; preds = %cleanup63
  %call68 = call i32 @fdt_next_subnode(ptr noundef %fdto, i32 noundef %fixup_child.0124) #8
  %cmp46 = icmp sgt i32 %call68, -1
  br i1 %cmp46, label %for.body48, label %cleanup70

cleanup70:                                        ; preds = %for.inc67, %cleanup63, %if.end54, %for.body48, %for.end43, %cleanup33.thread
  %retval.6 = phi i32 [ %retval.3.ph, %cleanup33.thread ], [ 0, %for.end43 ], [ %call59, %cleanup63 ], [ 0, %for.inc67 ], [ -16, %for.body48 ], [ %call50, %if.end54 ]
  ret i32 %retval.6
}

declare i32 @fdt_first_property_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @fdt_getprop_by_offset(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @fdt_setprop_inplace_namelen_partial(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare i32 @fdt_next_property_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @fdt_subnode_offset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

declare i32 @fdt_get_phandle(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_path_offset_namelen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_get_target(ptr noundef %fdt, ptr noundef %fdto, i32 noundef %fragment, ptr noundef writeonly %pathp) unnamed_addr #0 {
entry:
  %len.i = alloca i32, align 4
  %path_len = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %path_len) #8
  store i32 0, ptr %path_len, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #8
  %call.i = call ptr @fdt_getprop(ptr noundef %fdto, i32 noundef %fragment, ptr noundef nonnull @.str.7, ptr noundef nonnull %len.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %overlay_get_target_phandle.exit.thread38, label %if.end.i

overlay_get_target_phandle.exit.thread38:         ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  br label %if.then1

if.end.i:                                         ; preds = %entry
  %0 = load i32, ptr %len.i, align 4, !tbaa !5
  %cmp.not.i = icmp eq i32 %0, 4
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %overlay_get_target_phandle.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %1 = load i32, ptr %call.i, align 4, !tbaa !5
  %rev.i.i = call i32 @llvm.bswap.i32(i32 %1) #8
  %cmp3.i = icmp eq i32 %1, -1
  br i1 %cmp3.i, label %overlay_get_target_phandle.exit.thread, label %overlay_get_target_phandle.exit

overlay_get_target_phandle.exit.thread:           ; preds = %lor.lhs.false.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  br label %cleanup

overlay_get_target_phandle.exit:                  ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #8
  switch i32 %rev.i.i, label %if.else7 [
    i32 -1, label %cleanup
    i32 0, label %if.then1
  ]

if.then1:                                         ; preds = %overlay_get_target_phandle.exit, %overlay_get_target_phandle.exit.thread38
  %call2 = call ptr @fdt_getprop(ptr noundef %fdto, i32 noundef %fragment, ptr noundef nonnull @.str.6, ptr noundef nonnull %path_len) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then1
  %call5 = call i32 @fdt_path_offset(ptr noundef %fdt, ptr noundef nonnull %call2) #8
  %.pre = load i32, ptr %path_len, align 4
  br label %if.end9

if.else:                                          ; preds = %if.then1
  %2 = load i32, ptr %path_len, align 4, !tbaa !5
  br label %if.end9

if.else7:                                         ; preds = %overlay_get_target_phandle.exit
  %call8 = call i32 @fdt_node_offset_by_phandle(ptr noundef %fdt, i32 noundef %rev.i.i) #8
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.else, %if.then4
  %3 = phi i32 [ 0, %if.else7 ], [ %.pre, %if.then4 ], [ %2, %if.else ]
  %path.0 = phi ptr [ null, %if.else7 ], [ %call2, %if.then4 ], [ null, %if.else ]
  %ret.0 = phi i32 [ %call8, %if.else7 ], [ %call5, %if.then4 ], [ %2, %if.else ]
  %cmp10 = icmp slt i32 %ret.0, 0
  %cmp11 = icmp eq i32 %3, -1
  %or.cond = select i1 %cmp10, i1 %cmp11, i1 false
  %spec.store.select = select i1 %or.cond, i32 -16, i32 %ret.0
  %cmp14 = icmp slt i32 %spec.store.select, 0
  %tobool17.not = icmp eq ptr %pathp, null
  %or.cond36 = or i1 %tobool17.not, %cmp14
  br i1 %or.cond36, label %cleanup, label %if.then18

if.then18:                                        ; preds = %if.end9
  store ptr %path.0, ptr %pathp, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end9, %overlay_get_target_phandle.exit, %overlay_get_target_phandle.exit.thread
  %retval.0 = phi i32 [ -6, %overlay_get_target_phandle.exit ], [ %spec.store.select, %if.end9 ], [ %ret.0, %if.then18 ], [ -6, %overlay_get_target_phandle.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path_len) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @overlay_apply_node(ptr noundef %fdt, i32 noundef %target, ptr noundef %fdto, i32 noundef %node) unnamed_addr #0 {
entry:
  %name = alloca ptr, align 8
  %prop_len = alloca i32, align 4
  %call = tail call i32 @fdt_first_property_offset(ptr noundef %fdto, i32 noundef %node) #8
  %cmp77 = icmp sgt i32 %call, -1
  br i1 %cmp77, label %for.body, label %for.end

for.body:                                         ; preds = %for.inc, %entry
  %property.078 = phi i32 [ %call12, %for.inc ], [ %call, %entry ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop_len) #8
  %call1 = call ptr @fdt_getprop_by_offset(ptr noundef %fdto, i32 noundef %property.078, ptr noundef nonnull %name, ptr noundef nonnull %prop_len) #8
  %0 = load i32, ptr %prop_len, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %0, -1
  br i1 %cmp2, label %cleanup.thread, label %if.end

if.end:                                           ; preds = %for.body
  %cmp3 = icmp slt i32 %0, 0
  br i1 %cmp3, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.end, %for.body
  %retval.1.ph = phi i32 [ %0, %if.end ], [ -13, %for.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #8
  br label %cleanup43

cleanup:                                          ; preds = %if.end
  %1 = load ptr, ptr %name, align 8, !tbaa !10
  %call6 = call i32 @fdt_setprop(ptr noundef %fdt, i32 noundef %target, ptr noundef %1, ptr noundef %call1, i32 noundef %0) #8
  %tobool.not = icmp eq i32 %call6, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #8
  br i1 %tobool.not, label %for.inc, label %cleanup43

for.inc:                                          ; preds = %cleanup
  %call12 = call i32 @fdt_next_property_offset(ptr noundef %fdto, i32 noundef %property.078) #8
  %cmp = icmp sgt i32 %call12, -1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %call13 = call i32 @fdt_first_subnode(ptr noundef %fdto, i32 noundef %node) #8
  %cmp1579 = icmp sgt i32 %call13, -1
  br i1 %cmp1579, label %for.body16, label %cleanup43

for.body16:                                       ; preds = %for.inc40, %for.end
  %subnode.080 = phi i32 [ %call41, %for.inc40 ], [ %call13, %for.end ]
  %call18 = call ptr @fdt_get_name(ptr noundef %fdto, i32 noundef %subnode.080, ptr noundef null) #8
  %call20 = call i32 @fdt_add_subnode(ptr noundef %fdt, i32 noundef %target, ptr noundef %call18) #8
  %cmp21 = icmp eq i32 %call20, -2
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %for.body16
  %call23 = call i32 @fdt_subnode_offset(ptr noundef %fdt, i32 noundef %target, ptr noundef %call18) #8
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %cleanup43, label %if.end27

if.end27:                                         ; preds = %if.then22, %for.body16
  %nnode.0 = phi i32 [ %call23, %if.then22 ], [ %call20, %for.body16 ]
  %cmp28 = icmp slt i32 %nnode.0, 0
  br i1 %cmp28, label %cleanup43, label %cleanup35

cleanup35:                                        ; preds = %if.end27
  %call31 = call fastcc i32 @overlay_apply_node(ptr noundef %fdt, i32 noundef %nnode.0, ptr noundef %fdto, i32 noundef %subnode.080)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %for.inc40, label %cleanup43

for.inc40:                                        ; preds = %cleanup35
  %call41 = call i32 @fdt_next_subnode(ptr noundef %fdto, i32 noundef %subnode.080) #8
  %cmp15 = icmp sgt i32 %call41, -1
  br i1 %cmp15, label %for.body16, label %cleanup43

cleanup43:                                        ; preds = %for.inc40, %cleanup35, %if.end27, %if.then22, %for.end, %cleanup, %cleanup.thread
  %retval.4 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %for.end ], [ %call31, %cleanup35 ], [ 0, %for.inc40 ], [ -13, %if.then22 ], [ %nnode.0, %if.end27 ], [ %call6, %cleanup ]
  ret i32 %retval.4
}

declare i32 @fdt_node_offset_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_setprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_add_subnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @fdt_subnode_offset_namelen(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_setprop_placeholder(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @fdt_get_path(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fdt_parent_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !6, i64 0}
!13 = !{!"fdt_header", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
