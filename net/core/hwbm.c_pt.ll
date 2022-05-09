; ModuleID = '/llk/IR_all_yes/net/core/hwbm.c_pt.bc'
source_filename = "../net/core/hwbm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hwbm_buf_free\22, \22a\22\09"
module asm "\09.weak\09__crc_hwbm_buf_free\09\09\09\09"
module asm "\09.long\09__crc_hwbm_buf_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwbm_buf_free:\09\09\09\09\09"
module asm "\09.asciz \09\22hwbm_buf_free\22\09\09\09\09\09"
module asm "__kstrtabns_hwbm_buf_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hwbm_pool_refill\22, \22a\22\09"
module asm "\09.weak\09__crc_hwbm_pool_refill\09\09\09\09"
module asm "\09.long\09__crc_hwbm_pool_refill\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwbm_pool_refill:\09\09\09\09\09"
module asm "\09.asciz \09\22hwbm_pool_refill\22\09\09\09\09\09"
module asm "__kstrtabns_hwbm_pool_refill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hwbm_pool_add\22, \22a\22\09"
module asm "\09.weak\09__crc_hwbm_pool_add\09\09\09\09"
module asm "\09.long\09__crc_hwbm_pool_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwbm_pool_add:\09\09\09\09\09"
module asm "\09.asciz \09\22hwbm_pool_add\22\09\09\09\09\09"
module asm "__kstrtabns_hwbm_pool_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hwbm_pool = type { i32, i32, i32, ptr, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__kstrtab_hwbm_buf_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwbm_buf_free = external dso_local constant [0 x i8], align 1
@__ksymtab_hwbm_buf_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwbm_buf_free to i32), ptr @__kstrtab_hwbm_buf_free, ptr @__kstrtabns_hwbm_buf_free }, section "___ksymtab_gpl+hwbm_buf_free", align 4
@__kstrtab_hwbm_pool_refill = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwbm_pool_refill = external dso_local constant [0 x i8], align 1
@__ksymtab_hwbm_pool_refill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwbm_pool_refill to i32), ptr @__kstrtab_hwbm_pool_refill, ptr @__kstrtabns_hwbm_pool_refill }, section "___ksymtab_gpl+hwbm_pool_refill", align 4
@hwbm_pool_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014pool already filled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hwbm_pool_add\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/core/hwbm.c\00", [16 x i8] zeroinitializer }, align 32
@hwbm_pool_add._entry_ptr = internal global ptr @hwbm_pool_add._entry, section ".printk_index", align 4
@hwbm_pool_add._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014cannot allocate %d buffers for pool\0A\00", [57 x i8] zeroinitializer }, align 32
@hwbm_pool_add._entry_ptr.5 = internal global ptr @hwbm_pool_add._entry.3, section ".printk_index", align 4
@hwbm_pool_add._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014Adding %d buffers to the %d current buffers will overflow\0A\00", [35 x i8] zeroinitializer }, align 32
@hwbm_pool_add._entry_ptr.8 = internal global ptr @hwbm_pool_add._entry.6, section ".printk_index", align 4
@hwbm_pool_add.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hwbm\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hwpm pool: %d of %d buffers added\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_hwbm_pool_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwbm_pool_add = external dso_local constant [0 x i8], align 1
@__ksymtab_hwbm_pool_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwbm_pool_add to i32), ptr @__kstrtab_hwbm_pool_add, ptr @__kstrtabns_hwbm_pool_add }, section "___ksymtab_gpl+hwbm_pool_add", align 4
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 52, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 58, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 65, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [19 x i8] c"../net/core/hwbm.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 80, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_hwbm_buf_free, ptr @__ksymtab_hwbm_pool_add, ptr @__ksymtab_hwbm_pool_refill, ptr @hwbm_pool_add._entry, ptr @hwbm_pool_add._entry.3, ptr @hwbm_pool_add._entry.6, ptr @hwbm_pool_add._entry_ptr, ptr @hwbm_pool_add._entry_ptr.5, ptr @hwbm_pool_add._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwbm_pool_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwbm_pool_add._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwbm_pool_add._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwbm_buf_free(ptr nocapture noundef readonly %bm_pool, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frag_size = getelementptr inbounds %struct.hwbm_pool, ptr %bm_pool, i32 0, i32 1
  %0 = ptrtoint ptr %frag_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frag_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %1)
  %cmp = icmp ult i32 %1, 4097
  br i1 %cmp, label %if.then, label %if.else, !prof !33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @page_frag_free(ptr noundef %buf) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef %buf) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwbm_pool_refill(ptr noundef %bm_pool, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frag_size1 = getelementptr inbounds %struct.hwbm_pool, ptr %bm_pool, i32 0, i32 1
  %0 = ptrtoint ptr %frag_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frag_size1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %1)
  %cmp = icmp ult i32 %1, 4097
  br i1 %cmp, label %if.then, label %if.end8.i, !prof !33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call ptr @__netdev_alloc_frag_align(i32 noundef %1, i32 noundef -1) #4
  br label %if.end

if.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef %gfp) #7
  br label %if.end

if.end:                                           ; preds = %if.end8.i, %if.then
  %buf.0 = phi ptr [ %call.i, %if.then ], [ %call9.i, %if.end8.i ]
  %tobool4.not = icmp eq ptr %buf.0, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %construct = getelementptr inbounds %struct.hwbm_pool, ptr %bm_pool, i32 0, i32 3
  %2 = ptrtoint ptr %construct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %construct, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %call10 = tail call i32 %3(ptr noundef %bm_pool, ptr noundef nonnull %buf.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.cleanup_crit_edge, label %if.then12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %if.then8
  %4 = ptrtoint ptr %frag_size1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frag_size1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %5)
  %cmp.i25 = icmp ult i32 %5, 4097
  br i1 %cmp.i25, label %if.then.i26, label %if.else.i, !prof !33

if.then.i26:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @page_frag_free(ptr noundef nonnull %buf.0) #4
  br label %cleanup

if.else.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %buf.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i26, %if.then8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -12, %if.then.i26 ], [ -12, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwbm_pool_add(ptr noundef %bm_pool, i32 noundef %buf_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_lock = getelementptr inbounds %struct.hwbm_pool, ptr %bm_pool, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #4
  %buf_num1 = getelementptr inbounds %struct.hwbm_pool, ptr %bm_pool, i32 0, i32 2
  %0 = ptrtoint ptr %buf_num1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_num1, align 4
  %2 = ptrtoint ptr %bm_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bm_pool, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  tail call void @mutex_unlock(ptr noundef %buf_lock) #4
  %4 = ptrtoint ptr %buf_num1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_num1, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %1, %buf_num
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp6 = icmp ugt i32 %add, %3
  br i1 %cmp6, label %do.end10, label %if.end14

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %buf_num) #8
  tail call void @mutex_unlock(ptr noundef %buf_lock) #4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp18 = icmp ult i32 %add, %1
  br i1 %cmp18, label %do.end22, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_num)
  %cmp2876.not = icmp eq i32 %buf_num, 0
  br i1 %cmp2876.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %frag_size1.i = getelementptr inbounds %struct.hwbm_pool, ptr %bm_pool, i32 0, i32 1
  %construct.i = getelementptr inbounds %struct.hwbm_pool, ptr %bm_pool, i32 0, i32 3
  br label %for.body

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %buf_num, i32 noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %buf_lock) #4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %frag_size1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frag_size1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %7)
  %cmp.i = icmp ult i32 %7, 4097
  br i1 %cmp.i, label %if.then.i, label %if.end8.i.i, !prof !33

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call ptr @__netdev_alloc_frag_align(i32 noundef %7, i32 noundef -1) #4
  br label %if.end.i

if.end8.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.end8.i.i, %if.then.i
  %buf.0.i = phi ptr [ %call.i.i, %if.then.i ], [ %call9.i.i, %if.end8.i.i ]
  %tobool4.not.i = icmp eq ptr %buf.0.i, null
  br i1 %tobool4.not.i, label %if.end.i.for.end_crit_edge, label %if.end6.i

if.end.i.for.end_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end6.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %construct.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %construct.i, align 4
  %tobool7.not.i = icmp eq ptr %9, null
  br i1 %tobool7.not.i, label %if.end6.i.for.inc_crit_edge, label %if.then8.i

if.end6.i.for.inc_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then8.i:                                       ; preds = %if.end6.i
  %call10.i = tail call i32 %9(ptr noundef %bm_pool, ptr noundef nonnull %buf.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.for.inc_crit_edge, label %if.then12.i

if.then8.i.for.inc_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then12.i:                                      ; preds = %if.then8.i
  %10 = ptrtoint ptr %frag_size1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frag_size1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %11)
  %cmp.i25.i = icmp ult i32 %11, 4097
  br i1 %cmp.i25.i, label %if.then.i26.i, label %if.else.i.i, !prof !33

if.then.i26.i:                                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @page_frag_free(ptr noundef nonnull %buf.0.i) #4
  br label %for.end

if.else.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %buf.0.i) #4
  br label %for.end

for.inc:                                          ; preds = %if.then8.i.for.inc_crit_edge, %if.end6.i.for.inc_crit_edge
  %inc = add nuw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %buf_num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.i.i, %if.then.i26.i, %if.end.i.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.075 = phi i32 [ %i.077, %if.else.i.i ], [ %i.077, %if.then.i26.i ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %buf_num, %for.inc.for.end_crit_edge ], [ %i.077, %if.end.i.for.end_crit_edge ]
  %12 = ptrtoint ptr %buf_num1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_num1, align 4
  %add34 = add i32 %13, %i.075
  store i32 %add34, ptr %buf_num1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hwbm_pool_add.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hwbm_pool_add, %if.then40)) #4
          to label %do.end43 [label %if.then40], !srcloc !34

if.then40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hwbm_pool_add.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.10, i32 noundef %i.075, i32 noundef %buf_num) #4
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %for.end
  tail call void @mutex_unlock(ptr noundef %buf_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %do.end22, %do.end10, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ 0, %do.end10 ], [ 0, %do.end22 ], [ %i.075, %do.end43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_frag_align(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_hwbm_buf_free, !1, !"__ksymtab_hwbm_buf_free", i1 false, i1 false}
!1 = !{!"../net/core/hwbm.c", i32 20, i32 1}
!2 = !{ptr @__ksymtab_hwbm_pool_refill, !3, !"__ksymtab_hwbm_pool_refill", i1 false, i1 false}
!3 = !{!"../net/core/hwbm.c", i32 44, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/core/hwbm.c", i32 52, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hwbm_pool_add._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @hwbm_pool_add._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/core/hwbm.c", i32 58, i32 3}
!12 = !{ptr @hwbm_pool_add._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hwbm_pool_add._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/core/hwbm.c", i32 65, i32 3}
!16 = !{ptr @hwbm_pool_add._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @hwbm_pool_add._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/core/hwbm.c", i32 80, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hwbm_pool_add.__UNIQUE_ID_ddebug271, !19, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!22 = !{ptr @__ksymtab_hwbm_pool_add, !23, !"__ksymtab_hwbm_pool_add", i1 false, i1 false}
!23 = !{!"../net/core/hwbm.c", i32 85, i32 1}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2148691495, i64 2148691500, i64 2148691513, i64 2148691557, i64 2148691591, i64 2148691612}
