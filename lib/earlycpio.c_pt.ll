; ModuleID = '/llk/IR_all_yes/lib/earlycpio.c_pt.bc'
source_filename = "../lib/earlycpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpio_data = type { ptr, i32, [18 x i8] }

@find_cpio_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014File %s exceeding MAX_CPIO_FILE_NAME [%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"find_cpio_data\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lib/earlycpio.c\00", [16 x i8] zeroinitializer }, align 32
@find_cpio_data._entry_ptr = internal global ptr @find_cpio_data._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [19 x i8] c"../lib/earlycpio.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 125, i32 5 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @find_cpio_data._entry, ptr @find_cpio_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_cpio_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @find_cpio_data(ptr noalias sret(%struct.cpio_data) align 4 %agg.result, ptr nocapture noundef readonly %path, ptr noundef %data, i32 noundef %len, ptr noundef writeonly %nextoff) local_unnamed_addr #0 align 64 {
entry:
  %ch = alloca [14 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  %0 = call ptr @memset(ptr %agg.result, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ch) #8
  %1 = call ptr @memset(ptr %ch, i32 255, i32 56)
  %call = tail call i32 @strlen(ptr noundef %path) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %len)
  %cmp143 = icmp ugt i32 %len, 110
  br i1 %cmp143, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx32 = getelementptr inbounds [14 x i32], ptr %ch, i32 0, i32 12
  %arrayidx35 = getelementptr inbounds [14 x i32], ptr %ch, i32 0, i32 7
  %arrayidx49 = getelementptr inbounds [14 x i32], ptr %ch, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %len.addr.0145 = phi i32 [ %len, %while.body.lr.ph ], [ %len.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %p.0144 = phi ptr [ %data, %while.body.lr.ph ], [ %p.0.be, %while.cond.backedge.while.body_crit_edge ]
  %2 = ptrtoint ptr %p.0144 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p.0144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %while.body.while.cond2.preheader_crit_edge

while.body.while.cond2.preheader_crit_edge:       ; preds = %while.body
  br label %while.cond2.preheader

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %p.0144, i32 4
  %sub = add i32 %len.addr.0145, -4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end76, %if.then
  %p.0.be = phi ptr [ %39, %if.end76 ], [ %add.ptr, %if.then ]
  %len.addr.0.be = phi i32 [ %sub77, %if.end76 ], [ %sub, %if.then ]
  %cmp = icmp ugt i32 %len.addr.0.be, 110
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond2.preheader:                            ; preds = %while.end.while.cond2.preheader_crit_edge, %while.body.while.cond2.preheader_crit_edge
  %tobool3.not.5 = phi i1 [ false, %while.end.while.cond2.preheader_crit_edge ], [ true, %while.body.while.cond2.preheader_crit_edge ]
  %j.0142 = phi i32 [ 7, %while.end.while.cond2.preheader_crit_edge ], [ 5, %while.body.while.cond2.preheader_crit_edge ]
  %i.0141 = phi i32 [ %dec25, %while.end.while.cond2.preheader_crit_edge ], [ 14, %while.body.while.cond2.preheader_crit_edge ]
  %chp.0140 = phi ptr [ %incdec.ptr24, %while.end.while.cond2.preheader_crit_edge ], [ %ch, %while.body.while.cond2.preheader_crit_edge ]
  %p.1139 = phi ptr [ %uglygep151, %while.end.while.cond2.preheader_crit_edge ], [ %p.0144, %while.body.while.cond2.preheader_crit_edge ]
  %uglygep = getelementptr i8, ptr %p.1139, i32 1
  %uglygep151 = getelementptr i8, ptr %uglygep, i32 %j.0142
  %incdec.ptr = getelementptr i8, ptr %p.1139, i32 1
  %4 = ptrtoint ptr %p.1139 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p.1139, align 1
  %sub5 = add i8 %5, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %sub5)
  %cmp8 = icmp ult i8 %sub5, 10
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %conv7 = zext i8 %sub5 to i32
  br label %while.body4.1

while.body4.1:                                    ; preds = %if.then19, %if.then10
  %v.0.be = phi i32 [ %conv7, %if.then10 ], [ %add22, %if.then19 ]
  %shl.1 = shl nsw i32 %v.0.be, 4
  %incdec.ptr.1 = getelementptr i8, ptr %p.1139, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr, align 1
  %sub5.1 = add i8 %7, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %sub5.1)
  %cmp8.1 = icmp ult i8 %sub5.1, 10
  br i1 %cmp8.1, label %if.then10.1, label %if.end12.1

if.end12.1:                                       ; preds = %while.body4.1
  %8 = or i8 %7, 32
  %sub14.1 = add i8 %8, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %sub14.1)
  %cmp17.1 = icmp ult i8 %sub14.1, 6
  br i1 %cmp17.1, label %if.then19.1, label %if.end12.1.cleanup_crit_edge

if.end12.1.cleanup_crit_edge:                     ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19.1:                                      ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #7
  %conv16.1 = zext i8 %sub14.1 to i32
  %add21.1 = or i32 %shl.1, 10
  %add22.1 = add nsw i32 %add21.1, %conv16.1
  br label %while.body4.2

if.then10.1:                                      ; preds = %while.body4.1
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.1 = zext i8 %sub5.1 to i32
  %add.1 = add nuw nsw i32 %shl.1, %conv7.1
  br label %while.body4.2

while.body4.2:                                    ; preds = %if.then10.1, %if.then19.1
  %v.0.be.1 = phi i32 [ %add.1, %if.then10.1 ], [ %add22.1, %if.then19.1 ]
  %shl.2 = shl i32 %v.0.be.1, 4
  %incdec.ptr.2 = getelementptr i8, ptr %p.1139, i32 3
  %9 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.1, align 1
  %sub5.2 = add i8 %10, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %sub5.2)
  %cmp8.2 = icmp ult i8 %sub5.2, 10
  br i1 %cmp8.2, label %if.then10.2, label %if.end12.2

if.end12.2:                                       ; preds = %while.body4.2
  %11 = or i8 %10, 32
  %sub14.2 = add i8 %11, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %sub14.2)
  %cmp17.2 = icmp ult i8 %sub14.2, 6
  br i1 %cmp17.2, label %if.then19.2, label %if.end12.2.cleanup_crit_edge

if.end12.2.cleanup_crit_edge:                     ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19.2:                                      ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #7
  %conv16.2 = zext i8 %sub14.2 to i32
  %add21.2 = or i32 %shl.2, 10
  %add22.2 = add i32 %add21.2, %conv16.2
  br label %while.body4.3

if.then10.2:                                      ; preds = %while.body4.2
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.2 = zext i8 %sub5.2 to i32
  %add.2 = add nuw i32 %shl.2, %conv7.2
  br label %while.body4.3

while.body4.3:                                    ; preds = %if.then10.2, %if.then19.2
  %v.0.be.2 = phi i32 [ %add.2, %if.then10.2 ], [ %add22.2, %if.then19.2 ]
  %shl.3 = shl i32 %v.0.be.2, 4
  %incdec.ptr.3 = getelementptr i8, ptr %p.1139, i32 4
  %12 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.2, align 1
  %sub5.3 = add i8 %13, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %sub5.3)
  %cmp8.3 = icmp ult i8 %sub5.3, 10
  br i1 %cmp8.3, label %if.then10.3, label %if.end12.3

if.end12.3:                                       ; preds = %while.body4.3
  %14 = or i8 %13, 32
  %sub14.3 = add i8 %14, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %sub14.3)
  %cmp17.3 = icmp ult i8 %sub14.3, 6
  br i1 %cmp17.3, label %if.then19.3, label %if.end12.3.cleanup_crit_edge

if.end12.3.cleanup_crit_edge:                     ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19.3:                                      ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #7
  %conv16.3 = zext i8 %sub14.3 to i32
  %add21.3 = or i32 %shl.3, 10
  %add22.3 = add i32 %add21.3, %conv16.3
  br label %while.body4.4

if.then10.3:                                      ; preds = %while.body4.3
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.3 = zext i8 %sub5.3 to i32
  %add.3 = add nuw i32 %shl.3, %conv7.3
  br label %while.body4.4

while.body4.4:                                    ; preds = %if.then10.3, %if.then19.3
  %v.0.be.3 = phi i32 [ %add.3, %if.then10.3 ], [ %add22.3, %if.then19.3 ]
  %shl.4 = shl i32 %v.0.be.3, 4
  %incdec.ptr.4 = getelementptr i8, ptr %p.1139, i32 5
  %15 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.3, align 1
  %sub5.4 = add i8 %16, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %sub5.4)
  %cmp8.4 = icmp ult i8 %sub5.4, 10
  br i1 %cmp8.4, label %if.then10.4, label %if.end12.4

if.end12.4:                                       ; preds = %while.body4.4
  %17 = or i8 %16, 32
  %sub14.4 = add i8 %17, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %sub14.4)
  %cmp17.4 = icmp ult i8 %sub14.4, 6
  br i1 %cmp17.4, label %if.then19.4, label %if.end12.4.cleanup_crit_edge

if.end12.4.cleanup_crit_edge:                     ; preds = %if.end12.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19.4:                                      ; preds = %if.end12.4
  call void @__sanitizer_cov_trace_pc() #7
  %conv16.4 = zext i8 %sub14.4 to i32
  %add21.4 = or i32 %shl.4, 10
  %add22.4 = add i32 %add21.4, %conv16.4
  br label %while.body4.5

if.then10.4:                                      ; preds = %while.body4.4
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.4 = zext i8 %sub5.4 to i32
  %add.4 = add nuw i32 %shl.4, %conv7.4
  br label %while.body4.5

while.body4.5:                                    ; preds = %if.then10.4, %if.then19.4
  %v.0.be.4 = phi i32 [ %add.4, %if.then10.4 ], [ %add22.4, %if.then19.4 ]
  %shl.5 = shl i32 %v.0.be.4, 4
  %incdec.ptr.5 = getelementptr i8, ptr %p.1139, i32 6
  %18 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.4, align 1
  %sub5.5 = add i8 %19, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %sub5.5)
  %cmp8.5 = icmp ult i8 %sub5.5, 10
  br i1 %cmp8.5, label %if.then10.5, label %if.end12.5

if.end12.5:                                       ; preds = %while.body4.5
  %20 = or i8 %19, 32
  %sub14.5 = add i8 %20, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %sub14.5)
  %cmp17.5 = icmp ult i8 %sub14.5, 6
  br i1 %cmp17.5, label %if.then19.5, label %if.end12.5.cleanup_crit_edge

if.end12.5.cleanup_crit_edge:                     ; preds = %if.end12.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19.5:                                      ; preds = %if.end12.5
  call void @__sanitizer_cov_trace_pc() #7
  %conv16.5 = zext i8 %sub14.5 to i32
  %add21.5 = or i32 %shl.5, 10
  %add22.5 = add i32 %add21.5, %conv16.5
  br label %while.cond2.backedge.5

if.then10.5:                                      ; preds = %while.body4.5
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.5 = zext i8 %sub5.5 to i32
  %add.5 = add nuw i32 %shl.5, %conv7.5
  br label %while.cond2.backedge.5

while.cond2.backedge.5:                           ; preds = %if.then10.5, %if.then19.5
  %v.0.be.5 = phi i32 [ %add.5, %if.then10.5 ], [ %add22.5, %if.then19.5 ]
  br i1 %tobool3.not.5, label %while.cond2.backedge.5.while.end_crit_edge, label %while.body4.6

while.cond2.backedge.5.while.end_crit_edge:       ; preds = %while.cond2.backedge.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body4.6:                                    ; preds = %while.cond2.backedge.5
  %shl.6 = shl i32 %v.0.be.5, 4
  %incdec.ptr.6 = getelementptr i8, ptr %p.1139, i32 7
  %21 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr.5, align 1
  %sub5.6 = add i8 %22, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %sub5.6)
  %cmp8.6 = icmp ult i8 %sub5.6, 10
  br i1 %cmp8.6, label %if.then10.6, label %if.end12.6

if.end12.6:                                       ; preds = %while.body4.6
  %23 = or i8 %22, 32
  %sub14.6 = add i8 %23, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %sub14.6)
  %cmp17.6 = icmp ult i8 %sub14.6, 6
  br i1 %cmp17.6, label %if.then19.6, label %if.end12.6.cleanup_crit_edge

if.end12.6.cleanup_crit_edge:                     ; preds = %if.end12.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19.6:                                      ; preds = %if.end12.6
  call void @__sanitizer_cov_trace_pc() #7
  %conv16.6 = zext i8 %sub14.6 to i32
  %add21.6 = or i32 %shl.6, 10
  %add22.6 = add i32 %add21.6, %conv16.6
  br label %while.body4.7

if.then10.6:                                      ; preds = %while.body4.6
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.6 = zext i8 %sub5.6 to i32
  %add.6 = add nuw i32 %shl.6, %conv7.6
  br label %while.body4.7

while.body4.7:                                    ; preds = %if.then10.6, %if.then19.6
  %v.0.be.6 = phi i32 [ %add.6, %if.then10.6 ], [ %add22.6, %if.then19.6 ]
  %shl.7 = shl i32 %v.0.be.6, 4
  %24 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.6, align 1
  %sub5.7 = add i8 %25, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %sub5.7)
  %cmp8.7 = icmp ult i8 %sub5.7, 10
  br i1 %cmp8.7, label %if.then10.7, label %if.end12.7

if.end12.7:                                       ; preds = %while.body4.7
  %26 = or i8 %25, 32
  %sub14.7 = add i8 %26, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %sub14.7)
  %cmp17.7 = icmp ult i8 %sub14.7, 6
  br i1 %cmp17.7, label %if.then19.7, label %if.end12.7.cleanup_crit_edge

if.end12.7.cleanup_crit_edge:                     ; preds = %if.end12.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19.7:                                      ; preds = %if.end12.7
  call void @__sanitizer_cov_trace_pc() #7
  %conv16.7 = zext i8 %sub14.7 to i32
  %add21.7 = or i32 %shl.7, 10
  %add22.7 = add i32 %add21.7, %conv16.7
  br label %while.end

if.then10.7:                                      ; preds = %while.body4.7
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.7 = zext i8 %sub5.7 to i32
  %add.7 = add nuw i32 %shl.7, %conv7.7
  br label %while.end

if.end12:                                         ; preds = %while.cond2.preheader
  %27 = or i8 %5, 32
  %sub14 = add i8 %27, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %sub14)
  %cmp17 = icmp ult i8 %sub14, 6
  br i1 %cmp17, label %if.then19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %conv16 = zext i8 %sub14 to i32
  %add22 = add nuw nsw i32 %conv16, 10
  br label %while.body4.1

while.end:                                        ; preds = %if.then10.7, %if.then19.7, %while.cond2.backedge.5.while.end_crit_edge
  %v.0.be.lcssa = phi i32 [ %v.0.be.5, %while.cond2.backedge.5.while.end_crit_edge ], [ %add.7, %if.then10.7 ], [ %add22.7, %if.then19.7 ]
  %incdec.ptr24 = getelementptr i32, ptr %chp.0140, i32 1
  %28 = ptrtoint ptr %chp.0140 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %v.0.be.lcssa, ptr %chp.0140, align 4
  %dec25 = add nsw i32 %i.0141, -1
  %tobool1.not = icmp eq i32 %dec25, 0
  br i1 %tobool1.not, label %for.end, label %while.end.while.cond2.preheader_crit_edge

while.end.while.cond2.preheader_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond2.preheader

for.end:                                          ; preds = %while.end
  %29 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ch, align 4
  %31 = add i32 %30, -460547
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %31)
  %cmp27 = icmp ult i32 %31, -2
  br i1 %cmp27, label %for.end.cleanup_crit_edge, label %if.end30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %for.end
  %sub31 = add i32 %len.addr.0145, -110
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx32, align 4
  %add.ptr33 = getelementptr i8, ptr %uglygep151, i32 %33
  %34 = ptrtoint ptr %add.ptr33 to i32
  %add34 = add i32 %34, 3
  %and = and i32 %add34, -4
  %35 = inttoptr i32 %and to ptr
  %36 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx35, align 4
  %add.ptr36 = getelementptr i8, ptr %35, i32 %37
  %38 = ptrtoint ptr %add.ptr36 to i32
  %add37 = add i32 %38, 3
  %and38 = and i32 %add37, -4
  %39 = inttoptr i32 %and38 to ptr
  %add.ptr39 = getelementptr i8, ptr %uglygep151, i32 %sub31
  %cmp40 = icmp ult ptr %add.ptr39, %39
  %cmp42 = icmp ugt ptr %uglygep151, %35
  %or.cond = select i1 %cmp40, i1 true, i1 %cmp42
  %cmp45 = icmp ult ptr %39, %35
  %or.cond125 = select i1 %or.cond, i1 true, i1 %cmp45
  br i1 %or.cond125, label %if.end30.cleanup_crit_edge, label %if.end48

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %if.end30
  %40 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx49, align 4
  %and50 = and i32 %41, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and50)
  %cmp51 = icmp ne i32 %and50, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %call)
  %cmp54.not = icmp ult i32 %33, %call
  %or.cond126 = select i1 %cmp51, i1 true, i1 %cmp54.not
  br i1 %or.cond126, label %if.end48.if.end76_crit_edge, label %land.lhs.true56

if.end48.if.end76_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

land.lhs.true56:                                  ; preds = %if.end48
  %bcmp = tail call i32 @bcmp(ptr %uglygep151, ptr %path, i32 %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool58.not = icmp eq i32 %bcmp, 0
  br i1 %tobool58.not, label %if.then59, label %land.lhs.true56.if.end76_crit_edge

land.lhs.true56.if.end76_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then59:                                        ; preds = %land.lhs.true56
  %42 = inttoptr i32 %and to ptr
  %tobool60.not = icmp eq ptr %nextoff, null
  br i1 %tobool60.not, label %if.then59.if.end63_crit_edge, label %if.then61

if.then59.if.end63_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %data to i32
  %sub62 = sub i32 %and38, %43
  %44 = ptrtoint ptr %nextoff to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub62, ptr %nextoff, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then59.if.end63_crit_edge
  %sub65 = sub i32 %33, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub65)
  %cmp66 = icmp ugt i32 %sub65, 17
  br i1 %cmp66, label %do.end, label %if.end63.if.end70_crit_edge

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

do.end:                                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %uglygep151, i32 noundef 18) #10
  br label %if.end70

if.end70:                                         ; preds = %do.end, %if.end63.if.end70_crit_edge
  %name = getelementptr inbounds %struct.cpio_data, ptr %agg.result, i32 0, i32 2
  %add.ptr72 = getelementptr i8, ptr %uglygep151, i32 %call
  %call73 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %add.ptr72, i32 noundef 18) #8
  %45 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %agg.result, align 4
  %size = getelementptr inbounds %struct.cpio_data, ptr %agg.result, i32 0, i32 1
  %46 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %37, ptr %size, align 4
  br label %cleanup

if.end76:                                         ; preds = %land.lhs.true56.if.end76_crit_edge, %if.end48.if.end76_crit_edge
  %sub.ptr.rhs.cast = ptrtoint ptr %uglygep151 to i32
  %sub.ptr.sub.neg = add i32 %sub31, %sub.ptr.rhs.cast
  %sub77 = sub i32 %sub.ptr.sub.neg, %and38
  br label %while.cond.backedge

cleanup:                                          ; preds = %if.end70, %if.end30.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end12.7.cleanup_crit_edge, %if.end12.6.cleanup_crit_edge, %if.end12.5.cleanup_crit_edge, %if.end12.4.cleanup_crit_edge, %if.end12.3.cleanup_crit_edge, %if.end12.2.cleanup_crit_edge, %if.end12.1.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ch) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/earlycpio.c", i32 125, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @find_cpio_data._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @find_cpio_data._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
