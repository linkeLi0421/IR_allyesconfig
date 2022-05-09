; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_displayid.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_displayid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.displayid_iter = type { ptr, ptr, i32, i32, i32 }
%struct.displayid_block = type { i8, i8, i8 }
%struct.displayid_header = type { i8, i8, i8, i8 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/drm_displayid.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"base revision 0x%x, length %d, %d %d\0A\00", [58 x i8] zeroinitializer }, align 32
@validate_displayid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[drm] DisplayID checksum invalid, remainder is %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"validate_displayid\00", [45 x i8] zeroinitializer }, align 32
@validate_displayid._entry_ptr = internal global ptr @validate_displayid._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 97, i32 7 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 18, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [35 x i8] c"../drivers/gpu/drm/drm_displayid.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 29, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @validate_displayid._entry, ptr @validate_displayid._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_displayid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @displayid_iter_edid_begin(ptr noundef %edid, ptr nocapture noundef writeonly %iter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %iter, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %edid, ptr %iter, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__displayid_iter_next(ptr noundef %iter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %section = getelementptr inbounds %struct.displayid_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %section to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %section, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end36_crit_edge, label %if.end.i

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end.i:                                         ; preds = %if.end
  %idx.i = getelementptr inbounds %struct.displayid_iter, ptr %iter, i32 0, i32 3
  %4 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i, align 4
  %add.i = add i32 %5, 3
  %length.i = getelementptr inbounds %struct.displayid_iter, ptr %iter, i32 0, i32 2
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %7)
  %cmp.not.i = icmp ugt i32 %add.i, %7
  br i1 %cmp.not.i, label %if.end.i.do.end_crit_edge, label %land.lhs.true.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %num_bytes.i = getelementptr inbounds %struct.displayid_block, ptr %arrayidx.i, i32 0, i32 2
  %8 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_bytes.i, align 1
  %conv.i = zext i8 %9 to i32
  %add5.i = add i32 %add.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %7)
  %cmp7.not.i = icmp ugt i32 %add5.i, %7
  %tobool3.not = icmp eq ptr %arrayidx.i, null
  %or.cond = select i1 %cmp7.not.i, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %land.lhs.true.i.do.end_crit_edge, label %if.end.i79, !prof !18

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef null) #4
  br label %cleanup.sink.split

if.end.i79:                                       ; preds = %land.lhs.true.i
  %10 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_bytes.i, align 1
  %conv = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv, 3
  %12 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx.i, align 4
  %add31 = add i32 %add, %13
  store i32 %add31, ptr %idx.i, align 4
  %add.i76 = add i32 %add31, 3
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i76, i32 %15)
  %cmp.not.i78 = icmp ugt i32 %add.i76, %15
  br i1 %cmp.not.i78, label %if.end.i79.if.end36_crit_edge, label %land.lhs.true.i85

if.end.i79.if.end36_crit_edge:                    ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

land.lhs.true.i85:                                ; preds = %if.end.i79
  %arrayidx.i80 = getelementptr i8, ptr %3, i32 %add31
  %num_bytes.i81 = getelementptr inbounds %struct.displayid_block, ptr %arrayidx.i80, i32 0, i32 2
  %16 = ptrtoint ptr %num_bytes.i81 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_bytes.i81, align 1
  %conv.i82 = zext i8 %17 to i32
  %add5.i83 = add i32 %add.i76, %conv.i82
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i83, i32 %15)
  %cmp7.not.i84 = icmp ugt i32 %add5.i83, %15
  %tobool33.not = icmp eq ptr %arrayidx.i80, null
  %or.cond118 = select i1 %cmp7.not.i84, i1 true, i1 %tobool33.not
  br i1 %or.cond118, label %land.lhs.true.i85.if.end36_crit_edge, label %land.lhs.true.i85.cleanup_crit_edge

land.lhs.true.i85.cleanup_crit_edge:              ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.i85.if.end36_crit_edge:             ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true.i85.if.end36_crit_edge, %if.end.i79.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %length = getelementptr inbounds %struct.displayid_iter, ptr %iter, i32 0, i32 2
  %idx38 = getelementptr inbounds %struct.displayid_iter, ptr %iter, i32 0, i32 3
  %ext_index = getelementptr inbounds %struct.displayid_iter, ptr %iter, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %displayid_iter_block.exit111.for.cond_crit_edge, %if.end36
  %18 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iter, align 4
  %call.i = tail call ptr @drm_find_edid_extension(ptr noundef %19, i32 noundef 112, ptr noundef %ext_index) #4
  %tobool.not.i89 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i89, label %for.cond.cleanup.sink.split_crit_edge, label %if.end.i90

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i90:                                       ; preds = %for.cond
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 127, ptr %length, align 4
  %21 = ptrtoint ptr %idx38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %idx38, align 4
  %arrayidx.i.i = getelementptr i8, ptr %call.i, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %23 to i32
  %bytes.i.i = getelementptr i8, ptr %call.i, i32 2
  %24 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bytes.i.i, align 1
  %conv1.i.i = zext i8 %25 to i32
  %prod_id.i.i = getelementptr i8, ptr %call.i, i32 3
  %26 = ptrtoint ptr %prod_id.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %prod_id.i.i, align 1
  %conv2.i.i = zext i8 %27 to i32
  %ext_count.i.i = getelementptr i8, ptr %call.i, i32 4
  %28 = ptrtoint ptr %ext_count.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ext_count.i.i, align 1
  %conv3.i.i = zext i8 %29 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv.i.i, i32 noundef %conv1.i.i, i32 noundef %conv2.i.i, i32 noundef %conv3.i.i) #4
  %30 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bytes.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 121, i8 %31)
  %cmp.i.i = icmp ugt i8 %31, 121
  br i1 %cmp.i.i, label %if.end.i90.cleanup.sink.split_crit_edge, label %for.body.i.i.preheader

if.end.i90.cleanup.sink.split_crit_edge:          ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.body.i.i.preheader:                           ; preds = %if.end.i90
  %conv5.i.i = zext i8 %31 to i32
  %32 = add nuw nsw i32 %conv5.i.i, 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.02.i.i = phi i32 [ %add10.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %csum.01.i.i = phi i8 [ %add14.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %add10.i.i = add nuw nsw i32 %i.02.i.i, 1
  %arrayidx11.i.i = getelementptr i8, ptr %call.i, i32 %add10.i.i
  %33 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx11.i.i, align 1
  %add14.i.i = add i8 %34, %csum.01.i.i
  %exitcond.not.i.i = icmp eq i32 %i.02.i.i, %32
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add14.i.i)
  %tobool.not.i.i = icmp eq i8 %add14.i.i, 0
  br i1 %tobool.not.i.i, label %drm_find_displayid_extension.exit, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv17.i.i = zext i8 %add14.i.i to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv17.i.i) #7
  br label %cleanup.sink.split

drm_find_displayid_extension.exit:                ; preds = %for.end.i.i
  %35 = ptrtoint ptr %idx38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idx38, align 4
  %arrayidx.i91 = getelementptr i8, ptr %call.i, i32 %36
  %add.i92 = add i32 %36, 4
  %bytes.i = getelementptr inbounds %struct.displayid_header, ptr %arrayidx.i91, i32 0, i32 1
  %37 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bytes.i, align 1
  %conv.i93 = zext i8 %38 to i32
  %add5.i94 = add i32 %add.i92, %conv.i93
  %39 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add5.i94, ptr %length, align 4
  %40 = ptrtoint ptr %section to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %section, align 4
  store i32 %add.i92, ptr %idx38, align 4
  %add.i99 = add i32 %36, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i99, i32 %add5.i94)
  %cmp.not.i101 = icmp ugt i32 %add.i99, %add5.i94
  br i1 %cmp.not.i101, label %drm_find_displayid_extension.exit.if.end10.i109_crit_edge, label %land.lhs.true.i108

drm_find_displayid_extension.exit.if.end10.i109_crit_edge: ; preds = %drm_find_displayid_extension.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i109

land.lhs.true.i108:                               ; preds = %drm_find_displayid_extension.exit
  %arrayidx.i103 = getelementptr i8, ptr %call.i, i32 %add.i92
  %num_bytes.i104 = getelementptr inbounds %struct.displayid_block, ptr %arrayidx.i103, i32 0, i32 2
  %41 = ptrtoint ptr %num_bytes.i104 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_bytes.i104, align 1
  %conv.i105 = zext i8 %42 to i32
  %add5.i106 = add i32 %add.i99, %conv.i105
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i106, i32 %add5.i94)
  %cmp7.not.i107 = icmp ugt i32 %add5.i106, %add5.i94
  br i1 %cmp7.not.i107, label %land.lhs.true.i108.if.end10.i109_crit_edge, label %land.lhs.true.i108.displayid_iter_block.exit111_crit_edge

land.lhs.true.i108.displayid_iter_block.exit111_crit_edge: ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #6
  br label %displayid_iter_block.exit111

land.lhs.true.i108.if.end10.i109_crit_edge:       ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i109

if.end10.i109:                                    ; preds = %land.lhs.true.i108.if.end10.i109_crit_edge, %drm_find_displayid_extension.exit.if.end10.i109_crit_edge
  br label %displayid_iter_block.exit111

displayid_iter_block.exit111:                     ; preds = %if.end10.i109, %land.lhs.true.i108.displayid_iter_block.exit111_crit_edge
  %retval.0.i110 = phi ptr [ null, %if.end10.i109 ], [ %arrayidx.i103, %land.lhs.true.i108.displayid_iter_block.exit111_crit_edge ]
  %tobool49.not = icmp eq ptr %retval.0.i110, null
  br i1 %tobool49.not, label %displayid_iter_block.exit111.for.cond_crit_edge, label %displayid_iter_block.exit111.cleanup_crit_edge

displayid_iter_block.exit111.cleanup_crit_edge:   ; preds = %displayid_iter_block.exit111
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

displayid_iter_block.exit111.for.cond_crit_edge:  ; preds = %displayid_iter_block.exit111
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

cleanup.sink.split:                               ; preds = %do.end.i.i, %if.end.i90.cleanup.sink.split_crit_edge, %for.cond.cleanup.sink.split_crit_edge, %do.end
  %43 = ptrtoint ptr %section to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %section, align 4
  %44 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %iter, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %displayid_iter_block.exit111.cleanup_crit_edge, %land.lhs.true.i85.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %arrayidx.i80, %land.lhs.true.i85.cleanup_crit_edge ], [ null, %cleanup.sink.split ], [ %retval.0.i110, %displayid_iter_block.exit111.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @displayid_iter_end(ptr nocapture noundef writeonly %iter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %iter, i32 0, i32 20)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_find_edid_extension(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_displayid.c", i32 97, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_displayid.c", i32 18, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_displayid.c", i32 29, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @validate_displayid._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @validate_displayid._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2002, i32 2000}
