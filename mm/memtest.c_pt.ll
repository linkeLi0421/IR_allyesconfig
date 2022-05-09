; ModuleID = '/llk/IR_all_yes/mm/memtest.c_pt.bc'
source_filename = "../mm/memtest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }

@__setup_str_parse_memtest = internal constant [8 x i8] c"memtest\00", section ".init.rodata", align 1
@__setup_parse_memtest = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_memtest, ptr @parse_memtest, i32 1 }, section ".init.setup", align 4
@memtest_pattern = internal global i32 0, section ".init.data", align 4
@early_memtest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016early_memtest: # of tests: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"early_memtest\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm/memtest.c\00", [19 x i8] zeroinitializer }, align 32
@early_memtest._entry_ptr = internal global ptr @early_memtest._entry, section ".printk_index", align 4
@patterns = internal unnamed_addr constant [17 x i64] [i64 0, i64 -1, i64 6148914691236517205, i64 -6148914691236517206, i64 1229782938247303441, i64 2459565876494606882, i64 4919131752989213764, i64 -8608480567731124088, i64 3689348814741910323, i64 7378697629483820646, i64 -7378697629483820647, i64 -3689348814741910324, i64 8608480567731124087, i64 -4919131752989213765, i64 -2459565876494606883, i64 -1229782938247303442, i64 8821551493825841484], section ".init.data", align 8
@memblock = external dso_local global %struct.memblock, align 4
@do_one_pass._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016  %pa - %pa pattern %016llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_one_pass\00", [20 x i8] zeroinitializer }, align 32
@do_one_pass._entry_ptr = internal global ptr @do_one_pass._entry, section ".printk_index", align 4
@reserve_bad_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016  %016llx bad mem addr %pa - %pa reserved\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reserve_bad_mem\00", [16 x i8] zeroinitializer }, align 32
@reserve_bad_mem._entry_ptr = internal global ptr @reserve_bad_mem._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 108, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 76, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [16 x i8] c"../mm/memtest.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 30, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__setup_parse_memtest, ptr @do_one_pass._entry, ptr @do_one_pass._entry_ptr, ptr @early_memtest._entry, ptr @early_memtest._entry_ptr, ptr @reserve_bad_mem._entry, ptr @reserve_bad_mem._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_memtest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_one_pass._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserve_bad_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_memtest(ptr noundef %arg) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @kstrtouint(ptr noundef nonnull %arg, i32 noundef 0, ptr noundef nonnull @memtest_pattern) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i32 17, ptr @memtest_pattern, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @early_memtest(i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @memtest_pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #8
  %1 = load i32, ptr @memtest_pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not4 = icmp eq i32 %1, 0
  br i1 %cmp.not4, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0.in5 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %1, %do.end.for.body_crit_edge ]
  %i.0 = add i32 %i.0.in5, -1
  %rem = urem i32 %i.0, 17
  %arrayidx = getelementptr [17 x i64], ptr @patterns, i32 0, i32 %rem
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  tail call fastcc void @do_one_pass(i64 noundef %3, i32 noundef %start, i32 noundef %end) #9
  %cmp.not = icmp eq i32 %i.0, 0
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_one_pass(i64 noundef %pattern, i32 noundef %start, i32 noundef %end) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %i = alloca i64, align 8
  %this_start = alloca i32, align 4
  %this_end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %this_start) #5
  %0 = ptrtoint ptr %this_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %this_start, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %this_end) #5
  %1 = ptrtoint ptr %this_end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %this_end, align 4, !annotation !32
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %i, align 8
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %this_start, ptr noundef nonnull %this_end, ptr noundef null) #5
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %4)
  %cmp.not34 = icmp eq i64 %4, -1
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = ptrtoint ptr %this_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %this_start, align 4
  %7 = call i32 @llvm.umax.i32(i32 %6, i32 %start)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 %end)
  %9 = ptrtoint ptr %this_start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %this_start, align 4
  %10 = ptrtoint ptr %this_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %this_end, align 4
  %12 = call i32 @llvm.umax.i32(i32 %11, i32 %start)
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 %end)
  %14 = ptrtoint ptr %this_end to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %this_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %13)
  %cmp20 = icmp ult i32 %8, %13
  br i1 %cmp20, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %this_start, ptr noundef nonnull %this_end, i64 noundef %pattern) #8
  %15 = ptrtoint ptr %this_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %this_start, align 4
  %17 = ptrtoint ptr %this_end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %this_end, align 4
  %sub = sub i32 %18, %16
  call fastcc void @memtest(i64 noundef %pattern, i32 noundef %16, i32 noundef %sub) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  call void @__next_mem_range(ptr noundef nonnull %i, i32 noundef -1, i32 noundef 0, ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 3), ptr noundef nonnull %this_start, ptr noundef nonnull %this_end, ptr noundef null) #5
  %19 = ptrtoint ptr %i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i, align 8
  %cmp.not = icmp eq i64 %20, -1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_end) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_start) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @memtest(i64 noundef %pattern, i32 noundef %start_phys, i32 noundef %size) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %start_phys, 7
  %and = and i32 %add, -8
  %0 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and, i32 -2130706432, i32 8454144) #10, !srcloc !33
  %1 = inttoptr i32 %0 to ptr
  %sub.neg = add i32 %size, %start_phys
  %sub1 = sub i32 %sub.neg, %and
  %div44 = lshr i32 %sub1, 3
  %add.ptr = getelementptr i64, ptr %1, i32 %div44
  %cmp45 = icmp ugt ptr %add.ptr, %1
  br i1 %cmp45, label %entry.for.body_crit_edge, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  br i1 %cmp45, label %for.cond2.preheader.for.body4_crit_edge, label %for.cond2.preheader.if.end21_crit_edge

for.cond2.preheader.if.end21_crit_edge:           ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.046 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %p.046 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %pattern, ptr %p.046, align 8
  %incdec.ptr = getelementptr i64, ptr %p.046, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body4:                                        ; preds = %for.inc14.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %p.152 = phi ptr [ %incdec.ptr15, %for.inc14.for.body4_crit_edge ], [ %1, %for.cond2.preheader.for.body4_crit_edge ]
  %start_phys_aligned.050 = phi i32 [ %add16, %for.inc14.for.body4_crit_edge ], [ %and, %for.cond2.preheader.for.body4_crit_edge ]
  %last_bad.049 = phi i32 [ %last_bad.1, %for.inc14.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  %start_bad.048 = phi i32 [ %start_bad.1, %for.inc14.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  %3 = ptrtoint ptr %p.152 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %p.152, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %pattern)
  %cmp5 = icmp eq i64 %4, %pattern
  br i1 %cmp5, label %for.body4.for.inc14_crit_edge, label %if.end

for.body4.for.inc14_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc14

if.end:                                           ; preds = %for.body4
  %add6 = add i32 %last_bad.049, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %start_phys_aligned.050, i32 %add6)
  %cmp7 = icmp eq i32 %start_phys_aligned.050, %add6
  br i1 %cmp7, label %if.end.for.inc14_crit_edge, label %if.end10

if.end.for.inc14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc14

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_bad.048)
  %tobool.not = icmp eq i32 %start_bad.048, 0
  br i1 %tobool.not, label %if.end10.for.inc14_crit_edge, label %if.then11

if.end10.for.inc14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc14

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @reserve_bad_mem(i64 noundef %pattern, i32 noundef %start_bad.048, i32 noundef %add6) #9
  br label %for.inc14

for.inc14:                                        ; preds = %if.then11, %if.end10.for.inc14_crit_edge, %if.end.for.inc14_crit_edge, %for.body4.for.inc14_crit_edge
  %start_bad.1 = phi i32 [ %start_bad.048, %for.body4.for.inc14_crit_edge ], [ %start_bad.048, %if.end.for.inc14_crit_edge ], [ %start_phys_aligned.050, %if.then11 ], [ %start_phys_aligned.050, %if.end10.for.inc14_crit_edge ]
  %last_bad.1 = phi i32 [ %last_bad.049, %for.body4.for.inc14_crit_edge ], [ %start_phys_aligned.050, %if.end.for.inc14_crit_edge ], [ %start_phys_aligned.050, %if.then11 ], [ %start_phys_aligned.050, %if.end10.for.inc14_crit_edge ]
  %incdec.ptr15 = getelementptr i64, ptr %p.152, i32 1
  %add16 = add i32 %start_phys_aligned.050, 8
  %cmp3 = icmp ult ptr %incdec.ptr15, %add.ptr
  br i1 %cmp3, label %for.inc14.for.body4_crit_edge, label %for.end17

for.inc14.for.body4_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4

for.end17:                                        ; preds = %for.inc14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_bad.1)
  %tobool18.not = icmp eq i32 %start_bad.1, 0
  br i1 %tobool18.not, label %for.end17.if.end21_crit_edge, label %if.then19

for.end17.if.end21_crit_edge:                     ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then19:                                        ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #7
  %add20 = add i32 %last_bad.1, 8
  tail call fastcc void @reserve_bad_mem(i64 noundef %pattern, i32 noundef %start_bad.1, i32 noundef %add20) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.end17.if.end21_crit_edge, %for.cond2.preheader.if.end21_crit_edge, %entry.if.end21_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reserve_bad_mem(i64 noundef %pattern, i32 noundef %start_bad, i32 noundef %end_bad) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %start_bad.addr = alloca i32, align 4
  %end_bad.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %start_bad.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %start_bad, ptr %start_bad.addr, align 4
  %1 = ptrtoint ptr %end_bad.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %end_bad, ptr %end_bad.addr, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i64 noundef %pattern, ptr noundef nonnull %start_bad.addr, ptr noundef nonnull %end_bad.addr) #8
  %2 = ptrtoint ptr %start_bad.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_bad.addr, align 4
  %4 = ptrtoint ptr %end_bad.addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end_bad.addr, align 4
  %sub = sub i32 %5, %3
  %call1 = call i32 @memblock_reserve(i32 noundef %3, i32 noundef %sub) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__setup_parse_memtest, !1, !"__setup_parse_memtest", i1 false, i1 false}
!1 = !{!"../mm/memtest.c", i32 98, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/memtest.c", i32 108, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @early_memtest._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @early_memtest._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @memtest_pattern, !9, !"memtest_pattern", i1 false, i1 false}
!9 = !{!"../mm/memtest.c", i32 84, i32 21}
!10 = !{ptr @__setup_str_parse_memtest, !1, !"__setup_str_parse_memtest", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../mm/memtest.c", i32 76, i32 4}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @do_one_pass._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @do_one_pass._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../mm/memtest.c", i32 30, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @reserve_bad_mem._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @reserve_bad_mem._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @patterns, !22, !"patterns", i1 false, i1 false}
!22 = !{!"../mm/memtest.c", i32 7, i32 12}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
!33 = !{i64 2149129836, i64 2149129859, i64 2149129891, i64 2149129923, i64 2149129961, i64 2149129991}
