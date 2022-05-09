; ModuleID = '/llk/IR_all_yes/lib/idr.c_pt.bc'
source_filename = "../lib/idr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+idr_alloc_u32\22, \22a\22\09"
module asm "\09.weak\09__crc_idr_alloc_u32\09\09\09\09"
module asm "\09.long\09__crc_idr_alloc_u32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_alloc_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_alloc_u32\22\09\09\09\09\09"
module asm "__kstrtabns_idr_alloc_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+idr_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_idr_alloc\09\09\09\09"
module asm "\09.long\09__crc_idr_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_idr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+idr_alloc_cyclic\22, \22a\22\09"
module asm "\09.weak\09__crc_idr_alloc_cyclic\09\09\09\09"
module asm "\09.long\09__crc_idr_alloc_cyclic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_alloc_cyclic:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_alloc_cyclic\22\09\09\09\09\09"
module asm "__kstrtabns_idr_alloc_cyclic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+idr_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_idr_remove\09\09\09\09"
module asm "\09.long\09__crc_idr_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_remove\22\09\09\09\09\09"
module asm "__kstrtabns_idr_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+idr_find\22, \22a\22\09"
module asm "\09.weak\09__crc_idr_find\09\09\09\09"
module asm "\09.long\09__crc_idr_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_find:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_find\22\09\09\09\09\09"
module asm "__kstrtabns_idr_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+idr_for_each\22, \22a\22\09"
module asm "\09.weak\09__crc_idr_for_each\09\09\09\09"
module asm "\09.long\09__crc_idr_for_each\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_for_each:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_for_each\22\09\09\09\09\09"
module asm "__kstrtabns_idr_for_each:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+idr_get_next_ul\22, \22a\22\09"
module asm "\09.weak\09__crc_idr_get_next_ul\09\09\09\09"
module asm "\09.long\09__crc_idr_get_next_ul\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_get_next_ul:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_get_next_ul\22\09\09\09\09\09"
module asm "__kstrtabns_idr_get_next_ul:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+idr_get_next\22, \22a\22\09"
module asm "\09.weak\09__crc_idr_get_next\09\09\09\09"
module asm "\09.long\09__crc_idr_get_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_get_next:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_get_next\22\09\09\09\09\09"
module asm "__kstrtabns_idr_get_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+idr_replace\22, \22a\22\09"
module asm "\09.weak\09__crc_idr_replace\09\09\09\09"
module asm "\09.long\09__crc_idr_replace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_replace\22\09\09\09\09\09"
module asm "__kstrtabns_idr_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ida_alloc_range\22, \22a\22\09"
module asm "\09.weak\09__crc_ida_alloc_range\09\09\09\09"
module asm "\09.long\09__crc_ida_alloc_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ida_alloc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22ida_alloc_range\22\09\09\09\09\09"
module asm "__kstrtabns_ida_alloc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ida_free\22, \22a\22\09"
module asm "\09.weak\09__crc_ida_free\09\09\09\09"
module asm "\09.long\09__crc_ida_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ida_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ida_free\22\09\09\09\09\09"
module asm "__kstrtabns_ida_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ida_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_ida_destroy\09\09\09\09"
module asm "\09.long\09__crc_ida_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ida_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ida_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ida_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.radix_tree_iter = type { i32, i32, i32, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.2, [64 x ptr], %union.anon.3 }
%union.anon.2 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.3 = type { [3 x [2 x i32]] }
%struct.anon = type { [16 x i8], %struct.lockdep_map }

@idr_alloc_u32.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lib/idr.c\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_idr_alloc_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_alloc_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_alloc_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_alloc_u32 to i32), ptr @__kstrtab_idr_alloc_u32, ptr @__kstrtabns_idr_alloc_u32 }, section "___ksymtab_gpl+idr_alloc_u32", align 4
@idr_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_idr_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_alloc to i32), ptr @__kstrtab_idr_alloc, ptr @__kstrtabns_idr_alloc }, section "___ksymtab_gpl+idr_alloc", align 4
@__kstrtab_idr_alloc_cyclic = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_alloc_cyclic = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_alloc_cyclic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_alloc_cyclic to i32), ptr @__kstrtab_idr_alloc_cyclic, ptr @__kstrtabns_idr_alloc_cyclic }, section "___ksymtab+idr_alloc_cyclic", align 4
@__kstrtab_idr_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_remove to i32), ptr @__kstrtab_idr_remove, ptr @__kstrtabns_idr_remove }, section "___ksymtab_gpl+idr_remove", align 4
@__kstrtab_idr_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_find = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_find to i32), ptr @__kstrtab_idr_find, ptr @__kstrtabns_idr_find }, section "___ksymtab_gpl+idr_find", align 4
@idr_for_each.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_idr_for_each = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_for_each = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_for_each = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_for_each to i32), ptr @__kstrtab_idr_for_each, ptr @__kstrtabns_idr_for_each }, section "___ksymtab+idr_for_each", align 4
@__kstrtab_idr_get_next_ul = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_get_next_ul = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_get_next_ul = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_get_next_ul to i32), ptr @__kstrtab_idr_get_next_ul, ptr @__kstrtabns_idr_get_next_ul }, section "___ksymtab+idr_get_next_ul", align 4
@idr_get_next.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_idr_get_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_get_next = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_get_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_get_next to i32), ptr @__kstrtab_idr_get_next, ptr @__kstrtabns_idr_get_next }, section "___ksymtab+idr_get_next", align 4
@__kstrtab_idr_replace = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_replace = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_replace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_replace to i32), ptr @__kstrtab_idr_replace, ptr @__kstrtabns_idr_replace }, section "___ksymtab+idr_replace", align 4
@__kstrtab_ida_alloc_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_ida_alloc_range = external dso_local constant [0 x i8], align 1
@__ksymtab_ida_alloc_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ida_alloc_range to i32), ptr @__kstrtab_ida_alloc_range, ptr @__kstrtabns_ida_alloc_range }, section "___ksymtab+ida_alloc_range", align 4
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ida_free called for id=%d which is not allocated.\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_ida_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ida_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ida_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ida_free to i32), ptr @__kstrtab_ida_free, ptr @__kstrtabns_ida_free }, section "___ksymtab+ida_free", align 4
@__kstrtab_ida_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ida_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ida_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ida_destroy to i32), ptr @__kstrtab_ida_destroy, ptr @__kstrtabns_ida_destroy }, section "___ksymtab+ida_destroy", align 4
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 41, i32 6 }
@___asan_gen_.8 = private constant [13 x i8] c"../lib/idr.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 524, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 54, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 1182, i32 9 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_ida_alloc_range, ptr @__ksymtab_ida_destroy, ptr @__ksymtab_ida_free, ptr @__ksymtab_idr_alloc, ptr @__ksymtab_idr_alloc_cyclic, ptr @__ksymtab_idr_alloc_u32, ptr @__ksymtab_idr_find, ptr @__ksymtab_idr_for_each, ptr @__ksymtab_idr_get_next, ptr @__ksymtab_idr_get_next_ul, ptr @__ksymtab_idr_remove, ptr @__ksymtab_idr_replace, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @idr_alloc_u32(ptr noundef %idr, ptr noundef %ptr, ptr nocapture noundef %nextid, i32 noundef %max, i32 noundef %gfp) #0 align 64 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #7
  %0 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 1
  %idr_base = getelementptr inbounds %struct.idr, ptr %idr, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %iter, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  %3 = ptrtoint ptr %idr_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idr_base, align 4
  %5 = ptrtoint ptr %nextid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nextid, align 4
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %idr, i32 0, i32 1
  %7 = ptrtoint ptr %xa_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xa_flags, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

land.rhs:                                         ; preds = %entry
  %.b70 = load i1, ptr @idr_alloc_u32.__already_done, align 1
  br i1 %.b70, label %land.rhs.if.then38_crit_edge, label %if.then, !prof !48

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @idr_alloc_u32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef null) #7
  br label %if.then38

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  %9 = ptrtoint ptr %xa_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xa_flags, align 4
  %or = or i32 %10, 67108868
  store i32 %or, ptr %xa_flags, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %entry.if.end41_crit_edge
  %11 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 %4)
  %12 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %iter, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %0, align 4
  %sub43 = sub i32 %max, %4
  %call44 = call ptr @idr_get_free(ptr noundef %idr, ptr noundef nonnull %iter, i32 noundef %gfp, i32 noundef %sub43) #7
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %call44 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iter, align 4
  %add = add i32 %16, %4
  %17 = ptrtoint ptr %nextid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %nextid, align 4
  call void @radix_tree_iter_replace(ptr noundef %idr, ptr noundef nonnull %iter, ptr noundef %call44, ptr noundef %ptr) #7
  call void @radix_tree_iter_tag_clear(ptr noundef %idr, ptr noundef nonnull %iter, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then46
  %retval.0 = phi i32 [ %14, %if.then46 ], [ 0, %if.end48 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_free(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_iter_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_iter_tag_clear(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @idr_alloc(ptr noundef %idr, ptr noundef %ptr, i32 noundef %start, i32 noundef %end, i32 noundef %gfp) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %start, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp = icmp slt i32 %start, 0
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b48 = load i1, ptr @idr_alloc.__already_done, align 1
  br i1 %.b48, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !48

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @idr_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end)
  %cmp38 = icmp sgt i32 %end, 0
  %sub = add i32 %end, -1
  %spec.select = select i1 %cmp38, i32 %sub, i32 2147483647
  %call = call i32 @idr_alloc_u32(ptr noundef %idr, ptr noundef %ptr, ptr noundef nonnull %id, i32 noundef %spec.select, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool39.not = icmp eq i32 %call, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end37.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.end41 ], [ -22, %if.then ], [ %call, %if.end37.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @idr_alloc_cyclic(ptr noundef %idr, ptr noundef %ptr, i32 noundef %start, i32 noundef %end, i32 noundef %gfp) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %idr_next = getelementptr inbounds %struct.idr, ptr %idr, i32 0, i32 2
  %0 = ptrtoint ptr %idr_next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idr_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end)
  %cmp = icmp sgt i32 %end, 0
  %sub = add i32 %end, -1
  %spec.select = select i1 %cmp, i32 %sub, i32 2147483647
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 %start)
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %id, align 4
  %call = call i32 @idr_alloc_u32(ptr noundef %idr, ptr noundef %ptr, ptr noundef nonnull %id, i32 noundef %spec.select, i32 noundef %gfp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp2 = icmp eq i32 %call, -28
  br i1 %cmp2, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %start)
  %cmp3 = icmp ugt i32 %5, %start
  br i1 %cmp3, label %if.then4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %start, ptr %id, align 4
  %call5 = call i32 @idr_alloc_u32(ptr noundef %idr, ptr noundef %ptr, ptr noundef nonnull %id, i32 noundef %spec.select, i32 noundef %gfp)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  %err.0 = phi i32 [ %call5, %if.then4 ], [ %call, %entry.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %add = add i32 %8, 1
  %9 = ptrtoint ptr %idr_next to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %idr_next, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end8 ], [ %err.0, %if.end6.cleanup_crit_edge ], [ -28, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @idr_remove(ptr noundef %idr, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %idr_base = getelementptr inbounds %struct.idr, ptr %idr, i32 0, i32 1
  %0 = ptrtoint ptr %idr_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idr_base, align 4
  %sub = sub i32 %id, %1
  %call = tail call ptr @radix_tree_delete_item(ptr noundef %idr, i32 noundef %sub, ptr noundef null) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete_item(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @idr_find(ptr noundef %idr, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %idr_base = getelementptr inbounds %struct.idr, ptr %idr, i32 0, i32 1
  %0 = ptrtoint ptr %idr_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idr_base, align 4
  %sub = sub i32 %id, %1
  %call = tail call ptr @radix_tree_lookup(ptr noundef %idr, i32 noundef %sub) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @idr_for_each(ptr noundef %idr, ptr nocapture noundef readonly %fn, ptr noundef %data) #0 align 64 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #7
  %0 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 1
  %idr_base = getelementptr inbounds %struct.idr, ptr %idr, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %iter, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  %3 = ptrtoint ptr %idr_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idr_base, align 4
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %iter, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %0, align 4
  br label %for.cond

for.cond.loopexit:                                ; preds = %while.body.i.for.cond.loopexit_crit_edge, %while.cond.i.for.cond.loopexit_crit_edge
  %slot.0.ph = phi ptr [ null, %while.cond.i.for.cond.loopexit_crit_edge ], [ %incdec.ptr29.i, %while.body.i.for.cond.loopexit_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  %slot.0 = phi ptr [ null, %entry ], [ %slot.0.ph, %for.cond.loopexit ]
  %tobool.not = icmp eq ptr %slot.0, null
  br i1 %tobool.not, label %lor.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call1 = call ptr @radix_tree_next_chunk(ptr noundef %idr, ptr noundef nonnull %iter, i32 noundef 0) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %lor.rhs.cleanup52_crit_edge, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

lor.rhs.cleanup52_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup52

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %slot.1 = phi ptr [ %slot.0, %for.cond.for.body_crit_edge ], [ %call1, %lor.rhs.for.body_crit_edge ]
  %7 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iter, align 4
  %add = add i32 %8, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp = icmp slt i32 %add, 0
  br i1 %cmp, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %for.body
  %.b62 = load i1, ptr @idr_for_each.__already_done, align 1
  br i1 %.b62, label %land.rhs.cleanup52_crit_edge, label %if.then, !prof !48

land.rhs.cleanup52_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup52

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @idr_for_each.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 9, ptr noundef null) #7
  br label %cleanup52

if.end40:                                         ; preds = %for.body
  %9 = ptrtoint ptr %slot.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %slot.1, align 4
  %call46 = call i32 %fn(i32 noundef %add, ptr noundef %10, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.inc, label %if.end40.cleanup52_crit_edge

if.end40.cleanup52_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup52

for.inc:                                          ; preds = %if.end40
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %13 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iter, align 4
  %sub.i.i = sub i32 %12, %14
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.inc
  %slot.addr.0.i = phi ptr [ %slot.1, %for.inc ], [ %incdec.ptr29.i, %while.body.i.while.cond.i_crit_edge ]
  %count.0.i = phi i32 [ %sub.i.i, %for.inc ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.for.cond.loopexit_crit_edge

while.cond.i.for.cond.loopexit_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.loopexit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr29.i = getelementptr ptr, ptr %slot.addr.0.i, i32 1
  %15 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iter, align 4
  %add.i.i = add i32 %16, 1
  store i32 %add.i.i, ptr %iter, align 4
  %17 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %incdec.ptr29.i, align 4
  %tobool32.not.i = icmp eq ptr %18, null
  br i1 %tobool32.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.for.cond.loopexit_crit_edge, !prof !49

while.body.i.for.cond.loopexit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.loopexit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

cleanup52:                                        ; preds = %if.end40.cleanup52_crit_edge, %if.then, %land.rhs.cleanup52_crit_edge, %lor.rhs.cleanup52_crit_edge
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %land.rhs.cleanup52_crit_edge ], [ %call46, %if.end40.cleanup52_crit_edge ], [ 0, %lor.rhs.cleanup52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_next_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @idr_get_next_ul(ptr noundef %idr, ptr nocapture noundef %nextid) #0 align 64 {
entry:
  %iter = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #7
  %0 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 1
  %1 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 2
  %idr_base = getelementptr inbounds %struct.idr, ptr %idr, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %iter, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %4 = ptrtoint ptr %idr_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idr_base, align 4
  %6 = ptrtoint ptr %nextid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nextid, align 4
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 %5)
  %9 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %iter, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %0, align 4
  %xa_head = getelementptr inbounds %struct.xarray, ptr %idr, i32 0, i32 2
  br label %for.cond

for.cond.loopexit:                                ; preds = %while.body.i.for.cond.loopexit_crit_edge, %while.cond.i.for.cond.loopexit_crit_edge
  %slot.0.ph = phi ptr [ null, %while.cond.i.for.cond.loopexit_crit_edge ], [ %incdec.ptr29.i, %while.body.i.for.cond.loopexit_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  %slot.0 = phi ptr [ null, %entry ], [ %slot.0.ph, %for.cond.loopexit ]
  %tobool.not = icmp eq ptr %slot.0, null
  br i1 %tobool.not, label %lor.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

lor.rhs:                                          ; preds = %for.cond
  %call2 = call ptr @radix_tree_next_chunk(ptr noundef %idr, ptr noundef nonnull %iter, i32 noundef 0) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %slot.1 = phi ptr [ %slot.0, %for.cond.for.body_crit_edge ], [ %call2, %lor.rhs.for.body_crit_edge ]
  %11 = ptrtoint ptr %slot.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %slot.1, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %13 = ptrtoint ptr %12 to i32
  %and.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i39 = icmp eq i32 %and.i, 2
  br i1 %cmp.i39, label %if.end8, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.end8:                                          ; preds = %if.end
  %cmp10.not = icmp eq ptr %slot.1, %xa_head
  %cmp.i40 = icmp eq ptr %12, inttoptr (i32 1026 to ptr)
  %or.cond = select i1 %cmp10.not, i1 true, i1 %cmp.i40
  br i1 %or.cond, label %if.end13, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iter, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %0, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %1, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %for.body.for.inc_crit_edge
  %slot.2 = phi ptr [ null, %if.end13 ], [ %slot.1, %for.body.for.inc_crit_edge ]
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %20 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iter, align 4
  %sub.i.i = sub i32 %19, %21
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.inc
  %slot.addr.0.i = phi ptr [ %slot.2, %for.inc ], [ %incdec.ptr29.i, %while.body.i.while.cond.i_crit_edge ]
  %count.0.i = phi i32 [ %sub.i.i, %for.inc ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %dec.i = add i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.for.cond.loopexit_crit_edge

while.cond.i.for.cond.loopexit_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.loopexit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr29.i = getelementptr ptr, ptr %slot.addr.0.i, i32 1
  %22 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iter, align 4
  %add.i.i = add i32 %23, 1
  store i32 %add.i.i, ptr %iter, align 4
  %24 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %incdec.ptr29.i, align 4
  %tobool32.not.i = icmp eq ptr %25, null
  br i1 %tobool32.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.for.cond.loopexit_crit_edge, !prof !49

while.body.i.for.cond.loopexit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.loopexit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

if.end18:                                         ; preds = %if.end8.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %26 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iter, align 4
  %add = add i32 %27, %5
  %28 = ptrtoint ptr %nextid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %nextid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.end18 ], [ null, %lor.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @idr_get_next(ptr noundef %idr, ptr nocapture noundef %nextid) #0 align 64 {
entry:
  %iter.i = alloca %struct.radix_tree_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %nextid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nextid, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i) #7
  %2 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.radix_tree_iter, ptr %iter.i, i32 0, i32 2
  %idr_base.i = getelementptr inbounds %struct.idr, ptr %idr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4
  %5 = ptrtoint ptr %idr_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idr_base.i, align 4
  %7 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %6) #7
  %8 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %iter.i, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %2, align 4
  %xa_head.i = getelementptr inbounds %struct.xarray, ptr %idr, i32 0, i32 2
  br label %for.cond.i

for.cond.i.loopexit:                              ; preds = %while.body.i.i.for.cond.i.loopexit_crit_edge, %while.cond.i.i.for.cond.i.loopexit_crit_edge
  %slot.0.i.ph = phi ptr [ null, %while.cond.i.i.for.cond.i.loopexit_crit_edge ], [ %incdec.ptr29.i.i, %while.body.i.i.for.cond.i.loopexit_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.loopexit, %entry
  %slot.0.i = phi ptr [ null, %entry ], [ %slot.0.i.ph, %for.cond.i.loopexit ]
  %tobool.not.i = icmp eq ptr %slot.0.i, null
  br i1 %tobool.not.i, label %lor.rhs.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

lor.rhs.i:                                        ; preds = %for.cond.i
  %call2.i = call ptr @radix_tree_next_chunk(ptr noundef %idr, ptr noundef nonnull %iter.i, i32 noundef 0) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %lor.rhs.i.idr_get_next_ul.exit_crit_edge, label %lor.rhs.i.for.body.i_crit_edge

lor.rhs.i.for.body.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

lor.rhs.i.idr_get_next_ul.exit_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %idr_get_next_ul.exit

for.body.i:                                       ; preds = %lor.rhs.i.for.body.i_crit_edge, %for.cond.i.for.body.i_crit_edge
  %slot.1.i = phi ptr [ %slot.0.i, %for.cond.i.for.body.i_crit_edge ], [ %call2.i, %lor.rhs.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %slot.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %slot.1.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %12 = ptrtoint ptr %11 to i32
  %and.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp.i39.i = icmp eq i32 %and.i.i, 2
  br i1 %cmp.i39.i, label %if.end8.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.end8.i:                                        ; preds = %if.end.i
  %cmp10.not.i = icmp eq ptr %slot.1.i, %xa_head.i
  %cmp.i40.i = icmp eq ptr %11, inttoptr (i32 1026 to ptr)
  %or.cond.i = select i1 %cmp10.not.i, i1 true, i1 %cmp.i40.i
  br i1 %or.cond.i, label %if.end13.i, label %if.end8.i.if.end18.i_crit_edge

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iter.i, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %2, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %3, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %for.body.i.for.inc.i_crit_edge
  %slot.2.i = phi ptr [ null, %if.end13.i ], [ %slot.1.i, %for.body.i.for.inc.i_crit_edge ]
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %2, align 4
  %19 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iter.i, align 4
  %sub.i.i.i = sub i32 %18, %20
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %for.inc.i
  %slot.addr.0.i.i = phi ptr [ %slot.2.i, %for.inc.i ], [ %incdec.ptr29.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %count.0.i.i = phi i32 [ %sub.i.i.i, %for.inc.i ], [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %dec.i.i = add i32 %count.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp sgt i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.for.cond.i.loopexit_crit_edge

while.cond.i.i.for.cond.i.loopexit_crit_edge:     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.loopexit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %incdec.ptr29.i.i = getelementptr ptr, ptr %slot.addr.0.i.i, i32 1
  %21 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iter.i, align 4
  %add.i.i.i = add i32 %22, 1
  store i32 %add.i.i.i, ptr %iter.i, align 4
  %23 = ptrtoint ptr %incdec.ptr29.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %incdec.ptr29.i.i, align 4
  %tobool32.not.i.i = icmp eq ptr %24, null
  br i1 %tobool32.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.for.cond.i.loopexit_crit_edge, !prof !49

while.body.i.i.for.cond.i.loopexit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.loopexit

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i

if.end18.i:                                       ; preds = %if.end8.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  %25 = ptrtoint ptr %iter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iter.i, align 4
  %add.i = add i32 %26, %6
  br label %idr_get_next_ul.exit

idr_get_next_ul.exit:                             ; preds = %if.end18.i, %lor.rhs.i.idr_get_next_ul.exit_crit_edge
  %id.0 = phi i32 [ %add.i, %if.end18.i ], [ %1, %lor.rhs.i.idr_get_next_ul.exit_crit_edge ]
  %retval.0.i = phi ptr [ %11, %if.end18.i ], [ null, %lor.rhs.i.idr_get_next_ul.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id.0)
  %cmp = icmp slt i32 %id.0, 0
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %idr_get_next_ul.exit
  %.b43 = load i1, ptr @idr_get_next.__already_done, align 1
  br i1 %.b43, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !48

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @idr_get_next.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end38:                                         ; preds = %idr_get_next_ul.exit
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %nextid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %id.0, ptr %nextid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %if.end38 ], [ null, %if.then ], [ null, %land.rhs.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @idr_replace(ptr noundef %idr, ptr noundef %ptr, i32 noundef %id) #0 align 64 {
entry:
  %node = alloca ptr, align 4
  %slot = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node) #7
  %0 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %node, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slot) #7
  %1 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %slot, align 4
  %idr_base = getelementptr inbounds %struct.idr, ptr %idr, i32 0, i32 1
  %2 = ptrtoint ptr %idr_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idr_base, align 4
  %sub = sub i32 %id, %3
  %call = call ptr @__radix_tree_lookup(ptr noundef %idr, i32 noundef %sub, ptr noundef nonnull %node, ptr noundef nonnull %slot) #7
  %4 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slot, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call3 = call i32 @radix_tree_tag_get(ptr noundef %idr, i32 noundef %sub, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %8 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slot, align 4
  call void @__radix_tree_replace(ptr noundef %idr, ptr noundef %7, ptr noundef %9, ptr noundef %ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ inttoptr (i32 -2 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slot) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__radix_tree_lookup(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tag_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__radix_tree_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ida_alloc_range(ptr noundef %ida, i32 noundef %min, i32 noundef %max, i32 noundef %gfp) #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  %tmp26 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #7
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ida, ptr %xas, align 4
  %div184 = lshr i32 %min, 10
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div184, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %rem = and i32 %min, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min)
  %cmp = icmp slt i32 %min, 0
  br i1 %cmp, label %entry.cleanup132_crit_edge, label %if.end

entry.cleanup132_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup132

if.end:                                           ; preds = %entry
  %11 = tail call i32 @llvm.umin.i32(i32 %max, i32 2147483647)
  %div11185 = lshr i32 %11, 10
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i213 = icmp eq i32 %and.i.i.i, 0
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  %or.i214 = or i32 %gfp, 256
  %spec.select271 = select i1 %tobool3.not.i.i.i, i32 %..i.i.i, i32 3
  br label %retry.outer

retry.outer:                                      ; preds = %if.end127, %if.end
  %alloc.0.ph = phi ptr [ %call7.i.i215, %if.end127 ], [ null, %if.end ]
  %tobool.not = icmp eq ptr %alloc.0.ph, null
  br label %retry

retry:                                            ; preds = %if.then104, %retry.outer
  %12 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xas, align 4
  %call8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #7
  br label %next

next:                                             ; preds = %if.end71.next_crit_edge, %retry
  %bit.1 = phi i32 [ %rem, %retry ], [ 1024, %if.end71.next_crit_edge ]
  %call12 = call ptr @xas_find_marked(ptr noundef nonnull %xas, i32 noundef %div11185, i32 noundef 0) #7
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div184)
  %cmp15 = icmp ugt i32 %15, %div184
  %spec.select = select i1 %cmp15, i32 0, i32 %bit.1
  %mul = shl i32 %15, 10
  %add = add i32 %spec.select, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp20 = icmp ugt i32 %add, %11
  br i1 %cmp20, label %next.nospc_crit_edge, label %if.end23

next.nospc_crit_edge:                             ; preds = %next
  call void @__sanitizer_cov_trace_pc() #6
  br label %nospc

if.end23:                                         ; preds = %next
  %16 = ptrtoint ptr %call12 to i32
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end60, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp26) #7
  %shr.i = lshr i32 %16, 1
  %17 = ptrtoint ptr %tmp26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr.i, ptr %tmp26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %spec.select)
  %cmp28 = icmp ult i32 %spec.select, 31
  br i1 %cmp28, label %if.then30, label %if.then25.if.end45_crit_edge

if.then25.if.end45_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then30:                                        ; preds = %if.then25
  %call31 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %tmp26, i32 noundef 31, i32 noundef %spec.select) #7
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %mul33 = shl i32 %19, 10
  %add34 = add i32 %mul33, %call31
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %11)
  %cmp35 = icmp ugt i32 %add34, %11
  br i1 %cmp35, label %cleanup, label %if.end38

if.end38:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call31)
  %cmp39 = icmp ult i32 %call31, 31
  br i1 %cmp39, label %if.then41, label %if.end38.if.end45_crit_edge

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then41:                                        ; preds = %if.end38
  %shl = shl nuw nsw i32 1, %call31
  %20 = ptrtoint ptr %tmp26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp26, align 4
  %or = or i32 %21, %shl
  store i32 %or, ptr %tmp26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp.i = icmp slt i32 %or, 0
  br i1 %cmp.i, label %do.end.i, label %if.then41.xa_mk_value.exit_crit_edge, !prof !49

if.then41.xa_mk_value.exit_crit_edge:             ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %xa_mk_value.exit

do.end.i:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 54, i32 noundef 9, ptr noundef null) #7
  br label %xa_mk_value.exit

xa_mk_value.exit:                                 ; preds = %do.end.i, %if.then41.xa_mk_value.exit_crit_edge
  %shl.i191 = shl i32 %or, 1
  %or.i192 = or i32 %shl.i191, 1
  %22 = inttoptr i32 %or.i192 to ptr
  %call43 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull %22) #7
  br label %cleanup.thread

if.end45:                                         ; preds = %if.end38.if.end45_crit_edge, %if.then25.if.end45_crit_edge
  %bit.3 = phi i32 [ %call31, %if.end38.if.end45_crit_edge ], [ %bit.1, %if.then25.if.end45_crit_edge ]
  br i1 %tobool.not, label %if.end48, label %if.end45.if.end51_crit_edge

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.end48:                                         ; preds = %if.end45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 2304, i32 noundef 128) #8
  %tobool49.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool49.not, label %cleanup.thread227, label %if.end48.if.end51_crit_edge

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

cleanup.thread227:                                ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp26) #7
  br label %alloc121

if.end51:                                         ; preds = %if.end48.if.end51_crit_edge, %if.end45.if.end51_crit_edge
  %bitmap.0219 = phi ptr [ %call7.i.i, %if.end48.if.end51_crit_edge ], [ %alloc.0.ph, %if.end45.if.end51_crit_edge ]
  %24 = ptrtoint ptr %tmp26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmp26, align 4
  %26 = ptrtoint ptr %bitmap.0219 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %bitmap.0219, align 4
  %call53 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull %bitmap.0219) #7
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 4
  %29 = ptrtoint ptr %28 to i32
  %and.i.i.i.i = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %and.i.i.i.i, 2
  %cmp.i.i.i = icmp ult ptr %28, inttoptr (i32 -16378 to ptr)
  %tobool55.not240 = icmp ult ptr %28, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp.i.i.i.i
  %tobool55.not = or i1 %tobool55.not240, %not.spec.select.i.i.i
  br i1 %tobool55.not, label %if.end60.thread, label %if.then56

if.end60.thread:                                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp26) #7
  br label %if.then62

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %bitmap.0219 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %bitmap.0219, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then56, %xa_mk_value.exit
  %bit.4.ph = phi i32 [ %bit.3, %if.then56 ], [ %call31, %xa_mk_value.exit ]
  %bitmap.1.ph = phi ptr [ %bitmap.0219, %if.then56 ], [ %call12, %xa_mk_value.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp26) #7
  br label %out

cleanup:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp26) #7
  br label %nospc

if.end60:                                         ; preds = %if.end23
  %tobool61.not = icmp eq ptr %call12, null
  br i1 %tobool61.not, label %if.else, label %if.end60.if.then62_crit_edge

if.end60.if.then62_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then62

if.then62:                                        ; preds = %if.end60.if.then62_crit_edge, %if.end60.thread
  %bitmap.2236 = phi ptr [ %bitmap.0219, %if.end60.thread ], [ %call12, %if.end60.if.then62_crit_edge ]
  %bit.5234 = phi i32 [ %bit.3, %if.end60.thread ], [ %spec.select, %if.end60.if.then62_crit_edge ]
  %call64 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %bitmap.2236, i32 noundef 1024, i32 noundef %bit.5234) #7
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %0, align 4
  %mul66 = shl i32 %32, 10
  %add67 = add i32 %mul66, %call64
  call void @__sanitizer_cov_trace_cmp4(i32 %add67, i32 %11)
  %cmp68 = icmp ugt i32 %add67, %11
  br i1 %cmp68, label %if.then62.nospc_crit_edge, label %if.end71

if.then62.nospc_crit_edge:                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #6
  br label %nospc

if.end71:                                         ; preds = %if.then62
  %cmp72 = icmp eq i32 %call64, 1024
  br i1 %cmp72, label %if.end71.next_crit_edge, label %if.end75

if.end71.next_crit_edge:                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %next

if.end75:                                         ; preds = %if.end71
  %rem.i = and i32 %call64, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call64, 5
  %add.ptr.i = getelementptr i32, ptr %bitmap.2236, i32 %div2.i
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %34, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %call.i = call i32 @_find_first_zero_bit_be(ptr noundef nonnull %bitmap.2236, i32 noundef 1024) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 1024
  br i1 %cmp4.i, label %if.then81, label %if.end75.out_crit_edge

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  call void @xas_clear_mark(ptr noundef nonnull %xas, i32 noundef 0) #7
  br label %out

if.else:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %spec.select)
  %cmp83 = icmp ult i32 %spec.select, 31
  br i1 %cmp83, label %if.then85, label %if.else88

if.then85:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %shl.i195 = shl nuw i32 2, %spec.select
  %or.i196 = or i32 %shl.i195, 1
  %35 = inttoptr i32 %or.i196 to ptr
  br label %if.end98

if.else88:                                        ; preds = %if.else
  br i1 %tobool.not, label %if.end92, label %if.else88.if.end95_crit_edge

if.else88.if.end95_crit_edge:                     ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.end92:                                         ; preds = %if.else88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i198 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 2304, i32 noundef 128) #8
  %tobool93.not = icmp eq ptr %call7.i.i198, null
  br i1 %tobool93.not, label %if.end92.alloc121_crit_edge, label %if.end92.if.end95_crit_edge

if.end92.if.end95_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.end92.alloc121_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %alloc121

if.end95:                                         ; preds = %if.end92.if.end95_crit_edge, %if.else88.if.end95_crit_edge
  %bitmap.3239 = phi ptr [ %call7.i.i198, %if.end92.if.end95_crit_edge ], [ %alloc.0.ph, %if.else88.if.end95_crit_edge ]
  %rem.i186 = and i32 %spec.select, 31
  %shl.i187 = shl nuw i32 1, %rem.i186
  %div2.i188 = lshr i32 %spec.select, 5
  %add.ptr.i189 = getelementptr i32, ptr %bitmap.3239, i32 %div2.i188
  %37 = ptrtoint ptr %add.ptr.i189 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i189, align 4
  %or.i190 = or i32 %38, %shl.i187
  store i32 %or.i190, ptr %add.ptr.i189, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.end95, %if.then85
  %bit.5235 = phi i32 [ %spec.select, %if.then85 ], [ %bit.1, %if.end95 ]
  %bitmap.4 = phi ptr [ %35, %if.then85 ], [ %bitmap.3239, %if.end95 ]
  %call99 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull %bitmap.4) #7
  br label %out

out:                                              ; preds = %if.end98, %if.then81, %if.end75.out_crit_edge, %cleanup.thread
  %bit.6 = phi i32 [ %call64, %if.then81 ], [ %call64, %if.end75.out_crit_edge ], [ %bit.5235, %if.end98 ], [ %bit.4.ph, %cleanup.thread ]
  %bitmap.5 = phi ptr [ %bitmap.2236, %if.then81 ], [ %bitmap.2236, %if.end75.out_crit_edge ], [ %bitmap.4, %if.end98 ], [ %bitmap.1.ph, %cleanup.thread ]
  %39 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %call8) #7
  %call103 = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas, i32 noundef %gfp) #7
  br i1 %call103, label %if.then104, label %if.end108

if.then104:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div184, ptr %0, align 4
  br label %retry

if.end108:                                        ; preds = %out
  %cmp109.not = icmp eq ptr %bitmap.5, %alloc.0.ph
  br i1 %cmp109.not, label %if.end108.if.end112_crit_edge, label %if.then111

if.end108.if.end112_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef %alloc.0.ph) #7
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end108.if.end112_crit_edge
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %2, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i.i.i.i200 = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i200)
  %cmp.i.i.i.i201 = icmp eq i32 %and.i.i.i.i200, 2
  %cmp.i.i.i202 = icmp uge ptr %43, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i.i203 = and i1 %cmp.i.i.i202, %cmp.i.i.i.i201
  %shr.i.i204 = ashr i32 %44, 2
  %retval.0.i.i205 = select i1 %spec.select.i.i.i203, i32 %shr.i.i204, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i205)
  %tobool114.not = icmp eq i32 %retval.0.i.i205, 0
  br i1 %tobool114.not, label %if.end117, label %if.end112.cleanup132_crit_edge

if.end112.cleanup132_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup132

if.end117:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %0, align 4
  %mul119 = shl i32 %46, 10
  %add120 = add i32 %mul119, %bit.6
  br label %cleanup132

alloc121:                                         ; preds = %if.end92.alloc121_crit_edge, %cleanup.thread227
  %47 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %call8) #7
  br i1 %cmp.i.i.i213, label %alloc121.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !48

alloc121.kzalloc.exit_crit_edge:                  ; preds = %alloc121
  call void @__sanitizer_cov_trace_pc() #6
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %alloc121
  call void @__sanitizer_cov_trace_pc() #6
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end.i.i.i, %alloc121.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %alloc121.kzalloc.exit_crit_edge ], [ %spec.select271, %if.end.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %49 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i215 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef %or.i214, i32 noundef 128) #8
  %tobool125.not = icmp eq ptr %call7.i.i215, null
  br i1 %tobool125.not, label %kzalloc.exit.cleanup132_crit_edge, label %if.end127

kzalloc.exit.cleanup132_crit_edge:                ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup132

if.end127:                                        ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div184, ptr %0, align 4
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  br label %retry.outer

nospc:                                            ; preds = %if.then62.nospc_crit_edge, %cleanup, %next.nospc_crit_edge
  %53 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %call8) #7
  call void @kfree(ptr noundef %alloc.0.ph) #7
  br label %cleanup132

cleanup132:                                       ; preds = %nospc, %kzalloc.exit.cleanup132_crit_edge, %if.end117, %if.end112.cleanup132_crit_edge, %entry.cleanup132_crit_edge
  %retval.0 = phi i32 [ -28, %nospc ], [ %add120, %if.end117 ], [ -28, %entry.cleanup132_crit_edge ], [ %retval.0.i.i205, %if.end112.cleanup132_crit_edge ], [ -12, %kzalloc.exit.cleanup132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_marked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_clear_mark(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xas_nomem(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ida_free(ptr noundef %ida, i32 noundef %id) #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #7
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ida, ptr %xas, align 4
  %div102 = lshr i32 %id, 10
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div102, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %rem = and i32 %id, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %do.body3, label %do.body10, !prof !49

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/idr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.body10:                                        ; preds = %entry
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ida) #7
  %call18 = call ptr @xas_load(ptr noundef nonnull %xas) #7
  %11 = ptrtoint ptr %call18 to i32
  %and.i104 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool.i.not = icmp eq i32 %and.i104, 0
  br i1 %tobool.i.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %do.body10
  %shr.i105 = lshr i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %rem)
  %cmp22 = icmp ugt i32 %rem, 30
  br i1 %cmp22, label %if.then20.err_crit_edge, label %if.end25

if.then20.err_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end25:                                         ; preds = %if.then20
  %shl = shl nuw nsw i32 1, %rem
  %and = and i32 %shr.i105, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end25.err_crit_edge, label %if.end28

if.end25.err_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end28:                                         ; preds = %if.end25
  %neg = xor i32 %shl, -1
  %and30 = and i32 %shr.i105, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.delete_crit_edge, label %cleanup.thread108

if.end28.delete_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %delete

cleanup.thread108:                                ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %shl.i106 = shl nuw i32 %and30, 1
  %or.i = or i32 %shl.i106, 1
  %12 = inttoptr i32 %or.i to ptr
  %call35 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef nonnull %12) #7
  br label %if.end49

if.else:                                          ; preds = %do.body10
  %div3.i = lshr i32 %rem, 5
  %arrayidx.i = getelementptr i32, ptr %call18, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %id, 31
  %15 = shl nuw i32 1, %and.i
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool38.not = icmp eq i32 %16, 0
  br i1 %tobool38.not, label %if.else.err_crit_edge, label %if.end40

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end40:                                         ; preds = %if.else
  %neg.i = xor i32 %15, -1
  %and.i103 = and i32 %14, %neg.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i103, ptr %arrayidx.i, align 4
  call void @xas_set_mark(ptr noundef nonnull %xas, i32 noundef 0) #7
  %call.i = call i32 @_find_first_bit_be(ptr noundef %call18, i32 noundef 1024) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 1024
  br i1 %cmp4.i, label %if.then46, label %if.end40.if.end49_crit_edge

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef %call18) #7
  br label %delete

delete:                                           ; preds = %if.then46, %if.end28.delete_crit_edge
  %call47 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef null) #7
  br label %if.end49

if.end49:                                         ; preds = %delete, %if.end40.if.end49_crit_edge, %cleanup.thread108
  %18 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call13) #7
  br label %cleanup79

err:                                              ; preds = %if.else.err_crit_edge, %if.end25.err_crit_edge, %if.then20.err_crit_edge
  %20 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call13) #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 524, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %id) #7
  br label %cleanup79

cleanup79:                                        ; preds = %err, %if.end49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_set_mark(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ida_destroy(ptr noundef %ida) #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #7
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ida, ptr %xas, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %0, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %4, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ida) #7
  %call7 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #7
  %tobool.not16 = icmp eq ptr %call7, null
  br i1 %tobool.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %xas_next_entry.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %bitmap.017 = phi ptr [ %retval.0.i, %xas_next_entry.exit.for.body_crit_edge ], [ %call7, %entry.for.body_crit_edge ]
  %10 = ptrtoint ptr %bitmap.017 to i32
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %bitmap.017) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %call9 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef null) #7
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %13 = ptrtoint ptr %12 to i32
  %and.i.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %tobool1.not.i.i = icmp eq ptr %12, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %spec.select.i.i, label %if.end.cleanup.sink.split.i_crit_edge, label %lor.lhs.false.i, !prof !49

if.end.cleanup.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, !prof !48

lor.lhs.false.i.cleanup.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 2
  %conv2.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %and.i15 = and i32 %19, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i15, i32 %conv2.i)
  %cmp.not.i = icmp eq i32 %and.i15, %conv2.i
  br i1 %cmp.not.i, label %lor.rhs.i.do.body.i_crit_edge, label %lor.rhs.i.cleanup.sink.split.i_crit_edge, !prof !48

lor.rhs.i.cleanup.sink.split.i_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

lor.rhs.i.do.body.i_crit_edge:                    ; preds = %lor.rhs.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end44.i.do.body.i_crit_edge, %lor.rhs.i.do.body.i_crit_edge
  %20 = phi i32 [ %inc47.i, %if.end44.i.do.body.i_crit_edge ], [ %19, %lor.rhs.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp8.i = icmp eq i32 %20, -1
  br i1 %cmp8.i, label %do.body.i.cleanup.sink.split.i_crit_edge, label %if.end18.i, !prof !49

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %do.body.i
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %22)
  %cmp21.i = icmp eq i8 %22, 63
  br i1 %cmp21.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %if.end31.i, !prof !49

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end31.i:                                       ; preds = %if.end18.i
  %conv20.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xas, align 4
  %add.i = add nuw nsw i32 %conv20.i, 1
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %12, i32 0, i32 7, i32 %add.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i2.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i2.i, label %lor.lhs.false.i.i, label %if.end31.i.xa_entry.exit.i_crit_edge

if.end31.i.xa_entry.exit.i_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xa_entry.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end31.i
  %call4.i.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xa_entry.exit.i_crit_edge

lor.lhs.false.i.i.xa_entry.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xa_entry.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.xa_entry.exit.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.xa_entry.exit.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xa_entry.exit.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xa_entry.exit.i_crit_edge, label %if.then.i.i

land.lhs.true8.i.i.xa_entry.exit.i_crit_edge:     ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xa_entry.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1183, ptr noundef nonnull @.str.3) #7
  br label %xa_entry.exit.i

xa_entry.exit.i:                                  ; preds = %if.then.i.i, %land.lhs.true8.i.i.xa_entry.exit.i_crit_edge, %land.lhs.true.i.i.xa_entry.exit.i_crit_edge, %lor.lhs.false.i.i.xa_entry.exit.i_crit_edge, %if.end31.i.xa_entry.exit.i_crit_edge
  %27 = ptrtoint ptr %26 to i32
  %and.i3.i = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i3.i)
  %cmp.i.i = icmp eq i32 %and.i3.i, 2
  br i1 %cmp.i.i, label %xa_entry.exit.i.cleanup.sink.split.i_crit_edge, label %if.end44.i, !prof !49

xa_entry.exit.i.cleanup.sink.split.i_crit_edge:   ; preds = %xa_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end44.i:                                       ; preds = %xa_entry.exit.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 2
  %inc.i = add i8 %29, 1
  store i8 %inc.i, ptr %1, align 2
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %0, align 4
  %inc47.i = add i32 %31, 1
  store i32 %inc47.i, ptr %0, align 4
  %tobool48.not.i = icmp eq ptr %26, null
  br i1 %tobool48.not.i, label %if.end44.i.do.body.i_crit_edge, label %if.end44.i.xas_next_entry.exit_crit_edge

if.end44.i.xas_next_entry.exit_crit_edge:         ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xas_next_entry.exit

if.end44.i.do.body.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

cleanup.sink.split.i:                             ; preds = %xa_entry.exit.i.cleanup.sink.split.i_crit_edge, %if.end18.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge, %lor.rhs.i.cleanup.sink.split.i_crit_edge, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, %if.end.cleanup.sink.split.i_crit_edge
  %call43.i = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef -1) #7
  br label %xas_next_entry.exit

xas_next_entry.exit:                              ; preds = %cleanup.sink.split.i, %if.end44.i.xas_next_entry.exit_crit_edge
  %retval.0.i = phi ptr [ %call43.i, %cleanup.sink.split.i ], [ %26, %if.end44.i.xas_next_entry.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xas_next_entry.exit.for.end_crit_edge, label %xas_next_entry.exit.for.body_crit_edge

xas_next_entry.exit.for.body_crit_edge:           ; preds = %xas_next_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

xas_next_entry.exit.for.end_crit_edge:            ; preds = %xas_next_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %xas_next_entry.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %32 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../lib/idr.c", i32 41, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_idr_alloc_u32, !4, !"__ksymtab_idr_alloc_u32", i1 false, i1 false}
!4 = !{!"../lib/idr.c", i32 57, i32 1}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../lib/idr.c", i32 84, i32 6}
!7 = !{ptr @__ksymtab_idr_alloc, !8, !"__ksymtab_idr_alloc", i1 false, i1 false}
!8 = !{!"../lib/idr.c", i32 93, i32 1}
!9 = !{ptr @__ksymtab_idr_alloc_cyclic, !10, !"__ksymtab_idr_alloc_cyclic", i1 false, i1 false}
!10 = !{!"../lib/idr.c", i32 136, i32 1}
!11 = !{ptr @__ksymtab_idr_remove, !12, !"__ksymtab_idr_remove", i1 false, i1 false}
!12 = !{!"../lib/idr.c", i32 156, i32 1}
!13 = !{ptr @__ksymtab_idr_find, !14, !"__ksymtab_idr_find", i1 false, i1 false}
!14 = !{!"../lib/idr.c", i32 176, i32 1}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../lib/idr.c", i32 206, i32 7}
!17 = !{ptr @__ksymtab_idr_for_each, !18, !"__ksymtab_idr_for_each", i1 false, i1 false}
!18 = !{!"../lib/idr.c", i32 215, i32 1}
!19 = !{ptr @__ksymtab_idr_get_next_ul, !20, !"__ksymtab_idr_get_next_ul", i1 false, i1 false}
!20 = !{!"../lib/idr.c", i32 252, i32 1}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../lib/idr.c", i32 269, i32 6}
!23 = !{ptr @__ksymtab_idr_get_next, !24, !"__ksymtab_idr_get_next", i1 false, i1 false}
!24 = !{!"../lib/idr.c", i32 274, i32 1}
!25 = !{ptr @__ksymtab_idr_replace, !26, !"__ksymtab_idr_replace", i1 false, i1 false}
!26 = !{!"../lib/idr.c", i32 306, i32 1}
!27 = !{ptr @__ksymtab_ida_alloc_range, !28, !"__ksymtab_ida_alloc_range", i1 false, i1 false}
!28 = !{!"../lib/idr.c", i32 477, i32 1}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/idr.c", i32 524, i32 2}
!31 = !{ptr @__ksymtab_ida_free, !32, !"__ksymtab_ida_free", i1 false, i1 false}
!32 = !{!"../lib/idr.c", i32 526, i32 1}
!33 = !{ptr @__ksymtab_ida_destroy, !34, !"__ksymtab_ida_destroy", i1 false, i1 false}
!34 = !{!"../lib/idr.c", i32 554, i32 1}
!35 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/xarray.h", i32 54, i32 2}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!39 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"auto-init"}
!51 = !{i64 2152222460, i64 2152222934, i64 2152222497, i64 2152222553, i64 2152222587, i64 2152222611, i64 2152222652, i64 2152222673, i64 2152222701, i64 2152222735}
