; ModuleID = '/llk/IR_all_yes/fs/mbcache.c_pt.bc'
source_filename = "../fs/mbcache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mb_cache_entry_create\22, \22a\22\09"
module asm "\09.weak\09__crc_mb_cache_entry_create\09\09\09\09"
module asm "\09.long\09__crc_mb_cache_entry_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_create:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_create\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__mb_cache_entry_free\22, \22a\22\09"
module asm "\09.weak\09__crc___mb_cache_entry_free\09\09\09\09"
module asm "\09.long\09__crc___mb_cache_entry_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mb_cache_entry_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__mb_cache_entry_free\22\09\09\09\09\09"
module asm "__kstrtabns___mb_cache_entry_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mb_cache_entry_find_first\22, \22a\22\09"
module asm "\09.weak\09__crc_mb_cache_entry_find_first\09\09\09\09"
module asm "\09.long\09__crc_mb_cache_entry_find_first\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_find_first:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_find_first\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_find_first:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mb_cache_entry_find_next\22, \22a\22\09"
module asm "\09.weak\09__crc_mb_cache_entry_find_next\09\09\09\09"
module asm "\09.long\09__crc_mb_cache_entry_find_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_find_next:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_find_next\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_find_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mb_cache_entry_get\22, \22a\22\09"
module asm "\09.weak\09__crc_mb_cache_entry_get\09\09\09\09"
module asm "\09.long\09__crc_mb_cache_entry_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_get:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_get\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mb_cache_entry_delete\22, \22a\22\09"
module asm "\09.weak\09__crc_mb_cache_entry_delete\09\09\09\09"
module asm "\09.long\09__crc_mb_cache_entry_delete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_delete\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mb_cache_entry_touch\22, \22a\22\09"
module asm "\09.weak\09__crc_mb_cache_entry_touch\09\09\09\09"
module asm "\09.long\09__crc_mb_cache_entry_touch\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_entry_touch:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_entry_touch\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_entry_touch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mb_cache_create\22, \22a\22\09"
module asm "\09.weak\09__crc_mb_cache_create\09\09\09\09"
module asm "\09.long\09__crc_mb_cache_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_create:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_create\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mb_cache_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_mb_cache_destroy\09\09\09\09"
module asm "\09.long\09__crc_mb_cache_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb_cache_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22mb_cache_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_mb_cache_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mb_cache = type { ptr, i32, i32, %struct.spinlock, %struct.list_head, i32, %struct.shrinker, %struct.work_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mb_cache_entry = type { %struct.list_head, %struct.hlist_bl_node, %struct.atomic_t, i32, i8, i64 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.hlist_bl_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@mb_entry_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_mb_cache_entry_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_create = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_create to i32), ptr @__kstrtab_mb_cache_entry_create, ptr @__kstrtabns_mb_cache_entry_create }, section "___ksymtab+mb_cache_entry_create", align 4
@__kstrtab___mb_cache_entry_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___mb_cache_entry_free = external dso_local constant [0 x i8], align 1
@__ksymtab___mb_cache_entry_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mb_cache_entry_free to i32), ptr @__kstrtab___mb_cache_entry_free, ptr @__kstrtabns___mb_cache_entry_free }, section "___ksymtab+__mb_cache_entry_free", align 4
@__kstrtab_mb_cache_entry_find_first = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_find_first = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_find_first = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_find_first to i32), ptr @__kstrtab_mb_cache_entry_find_first, ptr @__kstrtabns_mb_cache_entry_find_first }, section "___ksymtab+mb_cache_entry_find_first", align 4
@__kstrtab_mb_cache_entry_find_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_find_next = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_find_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_find_next to i32), ptr @__kstrtab_mb_cache_entry_find_next, ptr @__kstrtabns_mb_cache_entry_find_next }, section "___ksymtab+mb_cache_entry_find_next", align 4
@__kstrtab_mb_cache_entry_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_get = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_get to i32), ptr @__kstrtab_mb_cache_entry_get, ptr @__kstrtabns_mb_cache_entry_get }, section "___ksymtab+mb_cache_entry_get", align 4
@mb_cache_entry_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fs/mbcache.c\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mbcache: attempt to decrement c_entry_count past zero\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_mb_cache_entry_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_delete to i32), ptr @__kstrtab_mb_cache_entry_delete, ptr @__kstrtabns_mb_cache_entry_delete }, section "___ksymtab+mb_cache_entry_delete", align 4
@__kstrtab_mb_cache_entry_touch = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_entry_touch = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_entry_touch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_entry_touch to i32), ptr @__kstrtab_mb_cache_entry_touch, ptr @__kstrtabns_mb_cache_entry_touch }, section "___ksymtab+mb_cache_entry_touch", align 4
@mb_cache_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cache->c_list_lock\00", [44 x i8] zeroinitializer }, align 32
@mb_cache_create.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&cache->c_shrink_work)\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_mb_cache_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_create = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_create to i32), ptr @__kstrtab_mb_cache_create, ptr @__kstrtabns_mb_cache_create }, section "___ksymtab+mb_cache_create", align 4
@__kstrtab_mb_cache_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb_cache_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_mb_cache_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb_cache_destroy to i32), ptr @__kstrtab_mb_cache_destroy, ptr @__kstrtabns_mb_cache_destroy }, section "___ksymtab+mb_cache_destroy", align 4
@__initcall__kmod_mbcache__213_432_mbcache_init6 = internal global ptr @mbcache_init, section ".initcall6.init", align 4
@__exitcall_mbcache_exit = internal global ptr @mbcache_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author214 = internal constant [39 x i8] c"mbcache.author=Jan Kara <jack@suse.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description215 = internal constant [63 x i8] c"mbcache.description=Meta block cache (for extended attributes)\00", section ".modinfo", align 1
@__UNIQUE_ID_file216 = internal constant [24 x i8] c"mbcache.file=fs/mbcache\00", section ".modinfo", align 1
@__UNIQUE_ID_license217 = internal constant [20 x i8] c"mbcache.license=GPL\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mbcache\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"mb_entry_cache\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 45, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 243, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 356, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 376, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [16 x i8] c"../fs/mbcache.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 419, i32 37 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author214, ptr @__UNIQUE_ID_description215, ptr @__UNIQUE_ID_file216, ptr @__UNIQUE_ID_license217, ptr @__exitcall_mbcache_exit, ptr @__initcall__kmod_mbcache__213_432_mbcache_init6, ptr @__ksymtab___mb_cache_entry_free, ptr @__ksymtab_mb_cache_create, ptr @__ksymtab_mb_cache_destroy, ptr @__ksymtab_mb_cache_entry_create, ptr @__ksymtab_mb_cache_entry_delete, ptr @__ksymtab_mb_cache_entry_find_first, ptr @__ksymtab_mb_cache_entry_find_next, ptr @__ksymtab_mb_cache_entry_get, ptr @__ksymtab_mb_cache_entry_touch, ptr @mbcache_exit, ptr @mb_entry_cache, ptr @.str, ptr @.str.1, ptr @mb_cache_create.__key, ptr @.str.2, ptr @mb_cache_create.__key.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb_entry_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb_cache_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb_cache_create.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mb_cache_entry_create(ptr noundef %cache, i32 noundef %mask, i32 noundef %key, i64 noundef %value, i1 noundef zeroext %reusable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_entry_count = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 5
  %0 = ptrtoint ptr %c_entry_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_entry_count, align 4
  %c_max_entries = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 2
  %2 = ptrtoint ptr %c_max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_max_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %c_shrink_work = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i66 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %c_shrink_work) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %c_entry_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %c_entry_count, align 4
  %7 = ptrtoint ptr %c_max_entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c_max_entries, align 4
  %mul = shl i32 %8, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mul)
  %cmp4.not = icmp ult i32 %6, %mul
  br i1 %cmp4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc i32 @mb_cache_shrink(ptr noundef %cache, i32 noundef 64)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %9 = load ptr, ptr @mb_entry_cache, align 4
  %call8 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef %mask) #10
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call8, ptr %call8, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call8, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %prev.i, align 4
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %call8, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt, i32 noundef 4) #10
  %12 = ptrtoint ptr %e_refcnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %e_refcnt, align 8
  %e_key = getelementptr inbounds %struct.mb_cache_entry, ptr %call8, i32 0, i32 3
  %13 = ptrtoint ptr %e_key to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %key, ptr %e_key, align 4
  %e_value = getelementptr inbounds %struct.mb_cache_entry, ptr %call8, i32 0, i32 5
  %14 = ptrtoint ptr %e_value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %value, ptr %e_value, align 8
  %e_reusable = getelementptr inbounds %struct.mb_cache_entry, ptr %call8, i32 0, i32 4
  %15 = ptrtoint ptr %e_reusable to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %e_reusable, align 8
  %bf.shl = select i1 %reusable, i8 64, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %e_reusable, align 8
  %16 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cache, align 4
  %c_bucket_bits.i = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 1
  %18 = ptrtoint ptr %c_bucket_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_bucket_bits.i, align 4
  %mul.i.i.i = mul i32 %key, 1640531527
  %sub.i.i = sub i32 32, %19
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %arrayidx.i = getelementptr %struct.hlist_bl_head, ptr %17, i32 %shr.i.i
  %20 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.body14.i.i, %if.end10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %test_and_set_bit_lock.exit.i.i, label %while.cond.i.i.do.body2.i.i_crit_edge, !prof !54

while.cond.i.i.do.body2.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

test_and_set_bit_lock.exit.i.i:                   ; preds = %while.cond.i.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i, label %hlist_bl_lock.exit, label %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, !prof !57

test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, %while.cond.i.i.do.body2.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  %27 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i1.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %do.body4.i.i.do.body4.i.i_crit_edge, %do.body2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !60
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i = and i32 %32, 1
  %tobool12.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body14.i.i, label %do.body4.i.i.do.body4.i.i_crit_edge

do.body4.i.i.do.body4.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i

do.body14.i.i:                                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i3.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i3.i.i to ptr
  %preempt_count.i.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i4.i.i, align 4
  %add.i5.i.i = add i32 %36, 1
  store volatile i32 %add.i5.i.i, ptr %preempt_count.i.i4.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  br label %while.cond.i.i

hlist_bl_lock.exit:                               ; preds = %test_and_set_bit_lock.exit.i.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %39 = ptrtoint ptr %38 to i32
  %and.i = and i32 %39, -2
  %40 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not86 = icmp eq i32 %and.i, 0
  br i1 %tobool17.not86, label %for.end.thread, label %hlist_bl_lock.exit.for.body_crit_edge

hlist_bl_lock.exit.for.body_crit_edge:            ; preds = %hlist_bl_lock.exit
  br label %for.body

for.end.thread:                                   ; preds = %hlist_bl_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %e_hash_list89 = getelementptr inbounds %struct.mb_cache_entry, ptr %call8, i32 0, i32 1
  %41 = ptrtoint ptr %e_hash_list89 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %e_hash_list89, align 8
  br label %if.end.i

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %hlist_bl_lock.exit.for.body_crit_edge
  %dup_node.087 = phi ptr [ %57, %for.inc.for.body_crit_edge ], [ %40, %hlist_bl_lock.exit.for.body_crit_edge ]
  %e_key20 = getelementptr i8, ptr %dup_node.087, i32 12
  %42 = ptrtoint ptr %e_key20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %e_key20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %key)
  %cmp21 = icmp eq i32 %43, %key
  br i1 %cmp21, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %e_value23 = getelementptr i8, ptr %dup_node.087, i32 24
  %44 = ptrtoint ptr %e_value23 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %e_value23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %value)
  %cmp24 = icmp eq i64 %45, %value
  br i1 %cmp24, label %if.then26, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then26:                                        ; preds = %land.lhs.true
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i67 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i67)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i67, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i68, label %hlist_bl_unlock.exit, !prof !62

do.body4.i.i68:                                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !63
  unreachable

hlist_bl_unlock.exit:                             ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i70 = and i32 %49, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %and.i.i.i.i70, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %51 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i71 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %sub.i.i.i73 = add i32 %54, -1
  store volatile i32 %sub.i.i.i73, ptr %preempt_count.i.i.i.i72, align 4
  %55 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %55, ptr noundef nonnull %call8) #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %56 = ptrtoint ptr %dup_node.087 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dup_node.087, align 4
  %tobool17.not = icmp eq ptr %57, null
  br i1 %tobool17.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %e_hash_list = getelementptr inbounds %struct.mb_cache_entry, ptr %call8, i32 0, i32 1
  %58 = ptrtoint ptr %e_hash_list to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %40, ptr %e_hash_list, align 8
  br i1 %tobool17.not86, label %for.end.if.end.i_crit_edge, label %if.then.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i = getelementptr inbounds %struct.hlist_bl_node, ptr %40, i32 0, i32 1
  %59 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %e_hash_list, ptr %pprev.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.end.if.end.i_crit_edge, %for.end.thread
  %e_hash_list90 = phi ptr [ %e_hash_list89, %for.end.thread ], [ %e_hash_list, %if.then.i ], [ %e_hash_list, %for.end.if.end.i_crit_edge ]
  %pprev3.i = getelementptr inbounds %struct.mb_cache_entry, ptr %call8, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %pprev3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx.i, ptr %pprev3.i, align 4
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 4
  %63 = ptrtoint ptr %62 to i32
  %and8.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %cmp.not.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %cmp.not.not.i.i, label %do.body16.i.i, label %hlist_bl_add_head.exit, !prof !62

do.body16.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 68, 0\0A.popsection", ""() #10, !srcloc !66
  unreachable

hlist_bl_add_head.exit:                           ; preds = %if.end.i
  %64 = ptrtoint ptr %e_hash_list90 to i32
  %or.i.i = or i32 %64, 1
  %65 = inttoptr i32 %or.i.i to ptr
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %arrayidx.i, align 4
  %67 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i75 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i75)
  %tobool.not.i.i76 = icmp eq i32 %and1.i.i.i75, 0
  br i1 %tobool.not.i.i76, label %do.body4.i.i77, label %hlist_bl_unlock.exit83, !prof !62

do.body4.i.i77:                                   ; preds = %hlist_bl_add_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !63
  unreachable

hlist_bl_unlock.exit83:                           ; preds = %hlist_bl_add_head.exit
  %call.i.i.i.i78 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i79 = and i32 %69, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 %and.i.i.i.i79, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %71 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i80 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i80 to ptr
  %preempt_count.i.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i81, align 4
  %sub.i.i.i82 = add i32 %74, -1
  store volatile i32 %sub.i.i.i82, ptr %preempt_count.i.i.i.i81, align 4
  %c_list_lock = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %c_list_lock) #10
  %c_list = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 4
  %prev.i84 = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i84, align 4
  %call.i.i85 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call8, ptr noundef %76, ptr noundef %c_list) #10
  br i1 %call.i.i85, label %if.end.i.i, label %hlist_bl_unlock.exit83.list_add_tail.exit_crit_edge

hlist_bl_unlock.exit83.list_add_tail.exit_crit_edge: ; preds = %hlist_bl_unlock.exit83
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %hlist_bl_unlock.exit83
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call8, ptr %prev.i84, align 4
  %78 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %c_list, ptr %call8, align 8
  %79 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %call8, ptr %76, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %hlist_bl_unlock.exit83.list_add_tail.exit_crit_edge
  %call.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %e_refcnt, i32 1, i32 3, i32 1) #10
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt, ptr %e_refcnt, i32 1, ptr elementtype(i32) %e_refcnt) #10, !srcloc !67
  %82 = ptrtoint ptr %c_entry_count to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %c_entry_count, align 4
  %inc = add i32 %83, 1
  store i32 %inc, ptr %c_entry_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %c_list_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %hlist_bl_unlock.exit, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %hlist_bl_unlock.exit ], [ 0, %list_add_tail.exit ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb_cache_shrink(ptr noundef %cache, i32 noundef %nr_to_scan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_list_lock = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %c_list_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_to_scan)
  %tobool.not6570 = icmp eq i32 %nr_to_scan, 0
  br i1 %tobool.not6570, label %entry.while.end_crit_edge, label %land.rhs.lr.ph.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph.lr.ph:                             ; preds = %entry
  %c_list = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 4
  %prev.i2.i = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 4, i32 1
  %c_entry_count = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 5
  %c_bucket_bits.i = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 1
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %while.cond.outer.land.rhs.lr.ph_crit_edge, %land.rhs.lr.ph.lr.ph
  %dec6472.in = phi i32 [ %nr_to_scan, %land.rhs.lr.ph.lr.ph ], [ %dec66, %while.cond.outer.land.rhs.lr.ph_crit_edge ]
  %shrunk.0.ph71 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph ], [ %74, %while.cond.outer.land.rhs.lr.ph_crit_edge ]
  br label %land.rhs

land.rhs:                                         ; preds = %list_move_tail.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %dec66.in = phi i32 [ %dec6472.in, %land.rhs.lr.ph ], [ %dec66, %list_move_tail.exit.land.rhs_crit_edge ]
  %dec66 = add i32 %dec66.in, -1
  %0 = ptrtoint ptr %c_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %c_list, align 4
  %cmp.i.not = icmp eq ptr %1, %c_list
  br i1 %cmp.i.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %e_referenced = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %e_referenced to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %e_referenced, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %bf.clear = and i8 %bf.load, 127
  %3 = ptrtoint ptr %e_referenced to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear, ptr %e_referenced, align 8
  %call.i.i43 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i43, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %11, ptr noundef %c_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %prev.i2.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %c_list, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %1, ptr %11, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %tobool.not = icmp eq i32 %dec66, 0
  br i1 %tobool.not, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.land.rhs_crit_edge

list_move_tail.exit.land.rhs_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %call.i.i44 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i44, label %if.end.i.i47, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i47:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i45 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i45, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %prev1.i.i.i46 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i46, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i47, %if.end.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %prev.i3.i, align 4
  %24 = ptrtoint ptr %c_entry_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_entry_count, align 4
  %dec9 = add i32 %25, -1
  store i32 %dec9, ptr %c_entry_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %c_list_lock) #10
  %e_key = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %e_key to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %e_key, align 4
  %28 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cache, align 4
  %30 = ptrtoint ptr %c_bucket_bits.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %c_bucket_bits.i, align 4
  %mul.i.i.i = mul i32 %27, 1640531527
  %sub.i.i = sub i32 32, %31
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %arrayidx.i = getelementptr %struct.hlist_bl_head, ptr %29, i32 %shr.i.i
  %32 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.body14.i.i, %list_del_init.exit
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %test_and_set_bit_lock.exit.i.i, label %while.cond.i.i.do.body2.i.i_crit_edge, !prof !54

while.cond.i.i.do.body2.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

test_and_set_bit_lock.exit.i.i:                   ; preds = %while.cond.i.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #10
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i, label %hlist_bl_lock.exit, label %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, !prof !57

test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, %while.cond.i.i.do.body2.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  %39 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i1.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %do.body4.i.i.do.body4.i.i_crit_edge, %do.body2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !60
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i = and i32 %44, 1
  %tobool12.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body14.i.i, label %do.body4.i.i.do.body4.i.i_crit_edge

do.body4.i.i.do.body4.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i

do.body14.i.i:                                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i3.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i3.i.i to ptr
  %preempt_count.i.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i4.i.i, align 4
  %add.i5.i.i = add i32 %48, 1
  store volatile i32 %add.i5.i.i, ptr %preempt_count.i.i4.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  br label %while.cond.i.i

hlist_bl_lock.exit:                               ; preds = %test_and_set_bit_lock.exit.i.i
  %e_hash_list = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 1
  %pprev.i = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i, label %hlist_bl_lock.exit.if.end15_crit_edge, label %if.then.i

hlist_bl_lock.exit.if.end15_crit_edge:            ; preds = %hlist_bl_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then.i:                                        ; preds = %hlist_bl_lock.exit
  %51 = ptrtoint ptr %e_hash_list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %e_hash_list, align 4
  %53 = ptrtoint ptr %e_hash_list to i32
  %and.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i3.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i3.i, label %do.body15.i.i, label %do.body5.i.i, !prof !57

do.body5.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.body15.i.i:                                    ; preds = %if.then.i
  %54 = ptrtoint ptr %52 to i32
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %50, align 4
  %57 = ptrtoint ptr %56 to i32
  %and16.i.i = and i32 %57, 1
  %or.i.i = or i32 %and16.i.i, %54
  %58 = inttoptr i32 %or.i.i to ptr
  store volatile ptr %58, ptr %50, align 4
  %tobool21.not.i.i = icmp eq ptr %52, null
  br i1 %tobool21.not.i.i, label %do.body15.i.i.hlist_bl_del_init.exit_crit_edge, label %if.then22.i.i

do.body15.i.i.hlist_bl_del_init.exit_crit_edge:   ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_bl_del_init.exit

if.then22.i.i:                                    ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev23.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %52, i32 0, i32 1
  %59 = ptrtoint ptr %pprev23.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %50, ptr %pprev23.i.i, align 4
  br label %hlist_bl_del_init.exit

hlist_bl_del_init.exit:                           ; preds = %if.then22.i.i, %do.body15.i.i.hlist_bl_del_init.exit_crit_edge
  %60 = ptrtoint ptr %e_hash_list to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %e_hash_list, align 4
  %61 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %pprev.i, align 4
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %e_refcnt, i32 1, i32 3, i32 1) #10
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt, ptr %e_refcnt, i32 1, ptr elementtype(i32) %e_refcnt) #10, !srcloc !69
  br label %if.end15

if.end15:                                         ; preds = %hlist_bl_del_init.exit, %hlist_bl_lock.exit.if.end15_crit_edge
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i49 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i49)
  %tobool.not.i.i50 = icmp eq i32 %and1.i.i.i49, 0
  br i1 %tobool.not.i.i50, label %do.body4.i.i51, label %hlist_bl_unlock.exit, !prof !62

do.body4.i.i51:                                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !63
  unreachable

hlist_bl_unlock.exit:                             ; preds = %if.end15
  %call.i.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i53 = and i32 %66, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %and.i.i.i.i53, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %68 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i54 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i56 = add i32 %71, -1
  store volatile i32 %sub.i.i.i56, ptr %preempt_count.i.i.i.i55, align 4
  %e_refcnt.i = getelementptr inbounds %struct.mb_cache_entry, ptr %1, i32 0, i32 2
  %call.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %e_refcnt.i, i32 1, i32 3, i32 1) #10
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt.i, ptr %e_refcnt.i, i32 1, ptr elementtype(i32) %e_refcnt.i) #10, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %72, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %mb_cache_entry_put.exit, label %hlist_bl_unlock.exit.while.cond.outer_crit_edge

hlist_bl_unlock.exit.while.cond.outer_crit_edge:  ; preds = %hlist_bl_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer

mb_cache_entry_put.exit:                          ; preds = %hlist_bl_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %73 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %73, ptr noundef %1) #10
  %inc = add i32 %shrunk.0.ph71, 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %mb_cache_entry_put.exit, %hlist_bl_unlock.exit.while.cond.outer_crit_edge
  %74 = phi i32 [ %inc, %mb_cache_entry_put.exit ], [ %shrunk.0.ph71, %hlist_bl_unlock.exit.while.cond.outer_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 312, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  tail call void @_raw_spin_lock(ptr noundef %c_list_lock) #10
  %tobool.not65 = icmp eq i32 %dec66, 0
  br i1 %tobool.not65, label %while.cond.outer.while.end_crit_edge, label %while.cond.outer.land.rhs.lr.ph_crit_edge

while.cond.outer.land.rhs.lr.ph_crit_edge:        ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.lr.ph

while.cond.outer.while.end_crit_edge:             ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.cond.outer.while.end_crit_edge, %list_move_tail.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %shrunk.0.ph.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %shrunk.0.ph71, %list_move_tail.exit.while.end_crit_edge ], [ %shrunk.0.ph71, %land.rhs.while.end_crit_edge ], [ %74, %while.cond.outer.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %c_list_lock) #10
  ret i32 %shrunk.0.ph.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mb_cache_entry_free(ptr noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %entry1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mb_cache_entry_find_first(ptr nocapture noundef readonly %cache, i32 noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__entry_find(ptr noundef %cache, ptr noundef null, i32 noundef %key)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__entry_find(ptr nocapture noundef readonly %cache, ptr noundef %entry1, i32 noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %c_bucket_bits.i = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 1
  %2 = ptrtoint ptr %c_bucket_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_bucket_bits.i, align 4
  %mul.i.i.i = mul i32 %key, 1640531527
  %sub.i.i = sub i32 32, %3
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %arrayidx.i = getelementptr %struct.hlist_bl_head, ptr %1, i32 %shr.i.i
  %4 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.body14.i.i, %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %test_and_set_bit_lock.exit.i.i, label %while.cond.i.i.do.body2.i.i_crit_edge, !prof !54

while.cond.i.i.do.body2.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

test_and_set_bit_lock.exit.i.i:                   ; preds = %while.cond.i.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i, label %hlist_bl_lock.exit, label %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, !prof !57

test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, %while.cond.i.i.do.body2.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  %11 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %do.body4.i.i.do.body4.i.i_crit_edge, %do.body2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !60
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i = and i32 %16, 1
  %tobool12.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body14.i.i, label %do.body4.i.i.do.body4.i.i_crit_edge

do.body4.i.i.do.body4.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i

do.body14.i.i:                                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i3.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i3.i.i to ptr
  %preempt_count.i.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i4.i.i, align 4
  %add.i5.i.i = add i32 %20, 1
  store volatile i32 %add.i5.i.i, ptr %preempt_count.i.i4.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  br label %while.cond.i.i

hlist_bl_lock.exit:                               ; preds = %test_and_set_bit_lock.exit.i.i
  %tobool.not = icmp eq ptr %entry1, null
  br i1 %tobool.not, label %hlist_bl_lock.exit.if.else_crit_edge, label %land.lhs.true

hlist_bl_lock.exit.if.else_crit_edge:             ; preds = %hlist_bl_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %hlist_bl_lock.exit
  %pprev.i = getelementptr inbounds %struct.mb_cache_entry, ptr %entry1, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %e_hash_list = getelementptr inbounds %struct.mb_cache_entry, ptr %entry1, i32 0, i32 1
  %23 = ptrtoint ptr %e_hash_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %e_hash_list, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %hlist_bl_lock.exit.if.else_crit_edge
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %and.i = and i32 %27, -2
  %28 = inttoptr i32 %and.i to ptr
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %node.0 = phi ptr [ %28, %if.else ], [ %24, %if.then ]
  %tobool5.not37 = icmp eq ptr %node.0, null
  br i1 %tobool5.not37, label %if.end.out_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %if.end.while.body_crit_edge
  %node.138 = phi ptr [ %35, %if.end9.while.body_crit_edge ], [ %node.0, %if.end.while.body_crit_edge ]
  %e_key = getelementptr i8, ptr %node.138, i32 12
  %29 = ptrtoint ptr %e_key to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %e_key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %key)
  %cmp = icmp eq i32 %30, %key
  br i1 %cmp, label %land.lhs.true6, label %while.body.if.end9_crit_edge

while.body.if.end9_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true6:                                   ; preds = %while.body
  %e_reusable = getelementptr i8, ptr %node.138, i32 16
  %31 = ptrtoint ptr %e_reusable to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %e_reusable, align 8
  %32 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool7.not = icmp eq i8 %32, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end9_crit_edge, label %if.then8

land.lhs.true6.if.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.le = getelementptr i8, ptr %node.138, i32 -8
  %e_refcnt = getelementptr i8, ptr %node.138, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %e_refcnt, i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt, ptr %e_refcnt, i32 1, ptr elementtype(i32) %e_refcnt) #10, !srcloc !67
  br label %out

if.end9:                                          ; preds = %land.lhs.true6.if.end9_crit_edge, %while.body.if.end9_crit_edge
  %34 = ptrtoint ptr %node.138 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %node.138, align 4
  %tobool5.not = icmp eq ptr %35, null
  br i1 %tobool5.not, label %if.end9.out_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %if.end9.out_crit_edge, %if.then8, %if.end.out_crit_edge
  %entry.addr.0 = phi ptr [ %add.ptr.le, %if.then8 ], [ null, %if.end.out_crit_edge ], [ null, %if.end9.out_crit_edge ]
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i29 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i29)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i29, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i30, label %hlist_bl_unlock.exit, !prof !62

do.body4.i.i30:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !63
  unreachable

hlist_bl_unlock.exit:                             ; preds = %out
  %call.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i32 = and i32 %39, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 %and.i.i.i.i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %41 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i33 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i35 = add i32 %44, -1
  store volatile i32 %sub.i.i.i35, ptr %preempt_count.i.i.i.i34, align 4
  br i1 %tobool.not, label %hlist_bl_unlock.exit.if.end14_crit_edge, label %if.then12

hlist_bl_unlock.exit.if.end14_crit_edge:          ; preds = %hlist_bl_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %hlist_bl_unlock.exit
  %e_refcnt.i = getelementptr inbounds %struct.mb_cache_entry, ptr %entry1, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %e_refcnt.i, i32 1, i32 3, i32 1) #10
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt.i, ptr %e_refcnt.i, i32 1, ptr elementtype(i32) %e_refcnt.i) #10, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %46 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %46, ptr noundef nonnull %entry1) #10
  br label %if.end14

if.end14:                                         ; preds = %if.end.i, %if.then12.if.end14_crit_edge, %hlist_bl_unlock.exit.if.end14_crit_edge
  ret ptr %entry.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mb_cache_entry_find_next(ptr nocapture noundef readonly %cache, ptr noundef %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %e_key = getelementptr inbounds %struct.mb_cache_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %e_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %e_key, align 4
  %call = tail call fastcc ptr @__entry_find(ptr noundef %cache, ptr noundef %entry1, i32 noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mb_cache_entry_get(ptr nocapture noundef readonly %cache, i32 noundef %key, i64 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %c_bucket_bits.i = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 1
  %2 = ptrtoint ptr %c_bucket_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_bucket_bits.i, align 4
  %mul.i.i.i = mul i32 %key, 1640531527
  %sub.i.i = sub i32 32, %3
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %arrayidx.i = getelementptr %struct.hlist_bl_head, ptr %1, i32 %shr.i.i
  %4 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.body14.i.i, %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %test_and_set_bit_lock.exit.i.i, label %while.cond.i.i.do.body2.i.i_crit_edge, !prof !54

while.cond.i.i.do.body2.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

test_and_set_bit_lock.exit.i.i:                   ; preds = %while.cond.i.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i, label %hlist_bl_lock.exit, label %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, !prof !57

test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, %while.cond.i.i.do.body2.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  %11 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %do.body4.i.i.do.body4.i.i_crit_edge, %do.body2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !60
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i = and i32 %16, 1
  %tobool12.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body14.i.i, label %do.body4.i.i.do.body4.i.i_crit_edge

do.body4.i.i.do.body4.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i

do.body14.i.i:                                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i3.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i3.i.i to ptr
  %preempt_count.i.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i4.i.i, align 4
  %add.i5.i.i = add i32 %20, 1
  store volatile i32 %add.i5.i.i, ptr %preempt_count.i.i4.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  br label %while.cond.i.i

hlist_bl_lock.exit:                               ; preds = %test_and_set_bit_lock.exit.i.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %and.i = and i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not22 = icmp eq i32 %and.i, 0
  br i1 %tobool.not22, label %hlist_bl_lock.exit.out_crit_edge, label %land.rhs.preheader

hlist_bl_lock.exit.out_crit_edge:                 ; preds = %hlist_bl_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.rhs.preheader:                               ; preds = %hlist_bl_lock.exit
  %24 = inttoptr i32 %and.i to ptr
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.preheader
  %node.023 = phi ptr [ %31, %for.inc.land.rhs_crit_edge ], [ %24, %land.rhs.preheader ]
  %e_key = getelementptr i8, ptr %node.023, i32 12
  %25 = ptrtoint ptr %e_key to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %e_key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %key)
  %cmp = icmp eq i32 %26, %key
  br i1 %cmp, label %land.lhs.true, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %land.rhs
  %e_value = getelementptr i8, ptr %node.023, i32 24
  %27 = ptrtoint ptr %e_value to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %e_value, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %value)
  %cmp5 = icmp eq i64 %28, %value
  br i1 %cmp5, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.le = getelementptr i8, ptr %node.023, i32 -8
  %e_refcnt = getelementptr i8, ptr %node.023, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %e_refcnt, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt, ptr %e_refcnt, i32 1, ptr elementtype(i32) %e_refcnt) #10, !srcloc !67
  br label %out

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %30 = ptrtoint ptr %node.023 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %node.023, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %for.inc.out_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.then, %hlist_bl_lock.exit.out_crit_edge
  %entry1.0 = phi ptr [ %add.ptr.le, %if.then ], [ null, %hlist_bl_lock.exit.out_crit_edge ], [ null, %for.inc.out_crit_edge ]
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i14 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i14)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i14, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i15, label %hlist_bl_unlock.exit, !prof !62

do.body4.i.i15:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !63
  unreachable

hlist_bl_unlock.exit:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i17 = and i32 %35, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %and.i.i.i.i17, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %37 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i18 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i20 = add i32 %40, -1
  store volatile i32 %sub.i.i.i20, ptr %preempt_count.i.i.i.i19, align 4
  ret ptr %entry1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mb_cache_entry_delete(ptr noundef %cache, i32 noundef %key, i64 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  %c_bucket_bits.i = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 1
  %2 = ptrtoint ptr %c_bucket_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_bucket_bits.i, align 4
  %mul.i.i.i = mul i32 %key, 1640531527
  %sub.i.i = sub i32 32, %3
  %shr.i.i = lshr i32 %mul.i.i.i, %sub.i.i
  %arrayidx.i = getelementptr %struct.hlist_bl_head, ptr %1, i32 %shr.i.i
  %4 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.body14.i.i, %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %test_and_set_bit_lock.exit.i.i, label %while.cond.i.i.do.body2.i.i_crit_edge, !prof !54

while.cond.i.i.do.body2.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

test_and_set_bit_lock.exit.i.i:                   ; preds = %while.cond.i.i
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #10, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.not.i.i, label %hlist_bl_lock.exit, label %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, !prof !57

test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %test_and_set_bit_lock.exit.i.i.do.body2.i.i_crit_edge, %while.cond.i.i.do.body2.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  %11 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %do.body4.i.i.do.body4.i.i_crit_edge, %do.body2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !60
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i = and i32 %16, 1
  %tobool12.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body14.i.i, label %do.body4.i.i.do.body4.i.i_crit_edge

do.body4.i.i.do.body4.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i

do.body14.i.i:                                    ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i3.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i3.i.i to ptr
  %preempt_count.i.i4.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i4.i.i, align 4
  %add.i5.i.i = add i32 %20, 1
  store volatile i32 %add.i5.i.i, ptr %preempt_count.i.i4.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  br label %while.cond.i.i

hlist_bl_lock.exit:                               ; preds = %test_and_set_bit_lock.exit.i.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %and.i = and i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not102 = icmp eq i32 %and.i, 0
  br i1 %tobool.not102, label %hlist_bl_lock.exit.for.end_crit_edge, label %land.rhs.preheader

hlist_bl_lock.exit.for.end_crit_edge:             ; preds = %hlist_bl_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs.preheader:                               ; preds = %hlist_bl_lock.exit
  %24 = inttoptr i32 %and.i to ptr
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.preheader
  %node.0103 = phi ptr [ %68, %for.inc.land.rhs_crit_edge ], [ %24, %land.rhs.preheader ]
  %e_key = getelementptr i8, ptr %node.0103, i32 12
  %25 = ptrtoint ptr %e_key to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %e_key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %key)
  %cmp = icmp eq i32 %26, %key
  br i1 %cmp, label %land.lhs.true, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %land.rhs
  %e_value = getelementptr i8, ptr %node.0103, i32 24
  %27 = ptrtoint ptr %e_value to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %e_value, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %value)
  %cmp5 = icmp eq i64 %28, %value
  br i1 %cmp5, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %add.ptr.le = getelementptr i8, ptr %node.0103, i32 -8
  %pprev.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %node.0103, i32 0, i32 1
  %29 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.then.hlist_bl_del_init.exit_crit_edge, label %if.then.i

if.then.hlist_bl_del_init.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_bl_del_init.exit

if.then.i:                                        ; preds = %if.then
  %31 = ptrtoint ptr %node.0103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %node.0103, align 4
  %33 = ptrtoint ptr %node.0103 to i32
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i3.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i3.i, label %do.body15.i.i, label %do.body5.i.i, !prof !57

do.body5.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.body15.i.i:                                    ; preds = %if.then.i
  %34 = ptrtoint ptr %32 to i32
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %30, align 4
  %37 = ptrtoint ptr %36 to i32
  %and16.i.i = and i32 %37, 1
  %or.i.i = or i32 %and16.i.i, %34
  %38 = inttoptr i32 %or.i.i to ptr
  store volatile ptr %38, ptr %30, align 4
  %tobool21.not.i.i = icmp eq ptr %32, null
  br i1 %tobool21.not.i.i, label %do.body15.i.i.__hlist_bl_del.exit.i_crit_edge, label %if.then22.i.i

do.body15.i.i.__hlist_bl_del.exit.i_crit_edge:    ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_bl_del.exit.i

if.then22.i.i:                                    ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev23.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %32, i32 0, i32 1
  %39 = ptrtoint ptr %pprev23.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %30, ptr %pprev23.i.i, align 4
  br label %__hlist_bl_del.exit.i

__hlist_bl_del.exit.i:                            ; preds = %if.then22.i.i, %do.body15.i.i.__hlist_bl_del.exit.i_crit_edge
  %40 = ptrtoint ptr %node.0103 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %node.0103, align 4
  %41 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_bl_del_init.exit

hlist_bl_del_init.exit:                           ; preds = %__hlist_bl_del.exit.i, %if.then.hlist_bl_del_init.exit_crit_edge
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i81 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i81)
  %tobool.not.i.i82 = icmp eq i32 %and1.i.i.i81, 0
  br i1 %tobool.not.i.i82, label %do.body4.i.i83, label %hlist_bl_unlock.exit, !prof !62

do.body4.i.i83:                                   ; preds = %hlist_bl_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !63
  unreachable

hlist_bl_unlock.exit:                             ; preds = %hlist_bl_del_init.exit
  %call.i.i.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i85 = and i32 %45, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %and.i.i.i.i85, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %47 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i86 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i86 to ptr
  %preempt_count.i.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i87, align 4
  %sub.i.i.i88 = add i32 %50, -1
  store volatile i32 %sub.i.i.i88, ptr %preempt_count.i.i.i.i87, align 4
  %c_list_lock = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %c_list_lock) #10
  %51 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %add.ptr.le, align 4
  %cmp.i.not = icmp eq ptr %52, %add.ptr.le
  br i1 %cmp.i.not, label %hlist_bl_unlock.exit.if.end54_crit_edge, label %if.then8

hlist_bl_unlock.exit.if.end54_crit_edge:          ; preds = %hlist_bl_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then8:                                         ; preds = %hlist_bl_unlock.exit
  %call.i.i89 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.le) #10
  br i1 %call.i.i89, label %if.end.i.i, label %if.then8.list_del_init.exit_crit_edge

if.then8.list_del_init.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr i8, ptr %node.0103, i32 -4
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.le, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then8.list_del_init.exit_crit_edge
  %59 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %add.ptr.le, ptr %add.ptr.le, align 4
  %prev.i3.i = getelementptr i8, ptr %node.0103, i32 -4
  %60 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.le, ptr %prev.i3.i, align 4
  %c_entry_count = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 5
  %61 = ptrtoint ptr %c_entry_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %c_entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp10 = icmp eq i32 %62, 0
  br i1 %cmp10, label %land.rhs13, label %if.then51.critedge

land.rhs13:                                       ; preds = %list_del_init.exit
  %.b79 = load i1, ptr @mb_cache_entry_delete.__already_done, align 1
  br i1 %.b79, label %land.rhs13.if.end53_crit_edge, label %if.then20, !prof !57

land.rhs13.if.end53_crit_edge:                    ; preds = %land.rhs13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then20:                                        ; preds = %land.rhs13
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mb_cache_entry_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef nonnull @.str.1) #10
  br label %if.end53

if.then51.critedge:                               ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %62, -1
  %63 = ptrtoint ptr %c_entry_count to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %dec, ptr %c_entry_count, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51.critedge, %if.then20, %land.rhs13.if.end53_crit_edge
  %e_refcnt = getelementptr i8, ptr %node.0103, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %e_refcnt, i32 1, i32 3, i32 1) #10
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt, ptr %e_refcnt, i32 1, ptr elementtype(i32) %e_refcnt) #10, !srcloc !69
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %hlist_bl_unlock.exit.if.end54_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %c_list_lock) #10
  %e_refcnt.i = getelementptr i8, ptr %node.0103, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %e_refcnt.i, i32 1, i32 3, i32 1) #10
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt.i, ptr %e_refcnt.i, i32 1, ptr elementtype(i32) %e_refcnt.i) #10, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %65, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %66 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %66, ptr noundef %add.ptr.le) #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %67 = ptrtoint ptr %node.0103 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %node.0103, align 4
  %tobool.not = icmp eq ptr %68, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %hlist_bl_lock.exit.for.end_crit_edge
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %arrayidx.i, align 4
  %and1.i.i.i90 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i90)
  %tobool.not.i.i91 = icmp eq i32 %and1.i.i.i90, 0
  br i1 %tobool.not.i.i91, label %do.body4.i.i92, label %hlist_bl_unlock.exit98, !prof !62

do.body4.i.i92:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !63
  unreachable

hlist_bl_unlock.exit98:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i94 = and i32 %72, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %and.i.i.i.i94, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %74 = tail call i32 @llvm.read_register.i32(metadata !43) #10
  %and.i.i.i.i.i95 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i95 to ptr
  %preempt_count.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i96, align 4
  %sub.i.i.i97 = add i32 %77, -1
  store volatile i32 %sub.i.i.i97, ptr %preempt_count.i.i.i.i96, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_bl_unlock.exit98, %if.end.i, %if.end54.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mb_cache_entry_touch(ptr nocapture readnone %cache, ptr nocapture noundef %entry1) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %e_referenced = getelementptr inbounds %struct.mb_cache_entry, ptr %entry1, i32 0, i32 4
  %0 = ptrtoint ptr %e_referenced to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %e_referenced, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %e_referenced, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mb_cache_create(i32 noundef %bucket_bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %bucket_bits
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 148) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %c_bucket_bits = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %c_bucket_bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bucket_bits, ptr %c_bucket_bits, align 4
  %shl1 = shl i32 %shl, 4
  %c_max_entries = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %c_max_entries to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl1, ptr %c_max_entries, align 8
  %c_list = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %c_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %c_list, ptr %c_list, align 8
  %prev.i = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %c_list, ptr %prev.i, align 4
  %c_list_lock = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %c_list_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mb_cache_create.__key, i16 noundef signext 3) #10
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl, i32 4) #10
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !62

kmalloc_array.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %call7.i.i, align 8
  br label %if.then6

if.end7.i:                                        ; preds = %if.end
  %8 = extractvalue { i32, i1 } %5, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #14
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i, ptr %call7.i.i, align 8
  %tobool5.not = icmp eq ptr %call8.i, null
  br i1 %tobool5.not, label %if.end7.i.if.then6_crit_edge, label %if.end7.i.for.body_crit_edge

if.end7.i.for.body_crit_edge:                     ; preds = %if.end7.i
  br label %for.body

if.end7.i.if.then6_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %if.end7.i.if.then6_crit_edge, %kmalloc_array.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.i.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end7.i.for.body_crit_edge ]
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i.i, align 8
  %arrayidx = getelementptr %struct.hlist_bl_head, ptr %11, i32 %i.056
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %shl
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %c_shrink = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %c_shrink to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mb_cache_count, ptr %c_shrink, align 4
  %scan_objects = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %scan_objects to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mb_cache_scan, ptr %scan_objects, align 8
  %seeks = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %seeks to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %seeks, align 8
  %call12 = tail call i32 @register_shrinker(ptr noundef %c_shrink) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body17, label %if.then14

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %17) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

do.body17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %c_shrink_work = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %c_shrink_work, i32 noundef 0) #10
  %18 = ptrtoint ptr %c_shrink_work to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %c_shrink_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @mb_cache_create.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry21 = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry21, ptr %entry21, align 4
  %prev.i53 = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry21, ptr %prev.i53, align 8
  %func = getelementptr inbounds %struct.mb_cache, ptr %call7.i.i, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mb_cache_shrink_worker, ptr %func, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body17 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then14 ], [ null, %if.then6 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mb_cache_count(ptr nocapture noundef readonly %shrink, ptr nocapture noundef readnone %sc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_entry_count = getelementptr i8, ptr %shrink, i32 -4
  %0 = ptrtoint ptr %c_entry_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_entry_count, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb_cache_scan(ptr noundef %shrink, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %shrink, i32 -68
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_to_scan, align 4
  %call = tail call fastcc i32 @mb_cache_shrink(ptr noundef %add.ptr, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mb_cache_shrink_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %c_max_entries = getelementptr i8, ptr %work, i32 -96
  %0 = ptrtoint ptr %c_max_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_max_entries, align 4
  %div2 = lshr i32 %1, 4
  %call = tail call fastcc i32 @mb_cache_shrink(ptr noundef %add.ptr, i32 noundef %div2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mb_cache_destroy(ptr noundef %cache) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %c_shrink = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 6
  tail call void @unregister_shrinker(ptr noundef %c_shrink) #10
  %c_list = getelementptr inbounds %struct.mb_cache, ptr %cache, i32 0, i32 4
  %0 = ptrtoint ptr %c_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_list, align 4
  %cmp.not86 = icmp eq ptr %1, %c_list
  br i1 %cmp.not86, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %mb_cache_entry_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.087 = phi ptr [ %next.088, %mb_cache_entry_put.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %entry1.087 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.088 = load ptr, ptr %entry1.087, align 8
  %e_hash_list = getelementptr inbounds %struct.mb_cache_entry, ptr %entry1.087, i32 0, i32 1
  %pprev.i = getelementptr inbounds %struct.mb_cache_entry, ptr %entry1.087, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %5 = ptrtoint ptr %e_hash_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %e_hash_list, align 4
  %7 = ptrtoint ptr %e_hash_list to i32
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i3.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i3.i, label %do.body15.i.i, label %do.body5.i.i, !prof !57

do.body5.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/list_bl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.body15.i.i:                                    ; preds = %if.then.i
  %8 = ptrtoint ptr %6 to i32
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %11 = ptrtoint ptr %10 to i32
  %and16.i.i = and i32 %11, 1
  %or.i.i = or i32 %and16.i.i, %8
  %12 = inttoptr i32 %or.i.i to ptr
  store volatile ptr %12, ptr %4, align 4
  %tobool21.not.i.i = icmp eq ptr %6, null
  br i1 %tobool21.not.i.i, label %do.body15.i.i.hlist_bl_del_init.exit_crit_edge, label %if.then22.i.i

do.body15.i.i.hlist_bl_del_init.exit_crit_edge:   ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_bl_del_init.exit

if.then22.i.i:                                    ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev23.i.i = getelementptr inbounds %struct.hlist_bl_node, ptr %6, i32 0, i32 1
  %13 = ptrtoint ptr %pprev23.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %pprev23.i.i, align 4
  br label %hlist_bl_del_init.exit

hlist_bl_del_init.exit:                           ; preds = %if.then22.i.i, %do.body15.i.i.hlist_bl_del_init.exit_crit_edge
  %14 = ptrtoint ptr %e_hash_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %e_hash_list, align 4
  %15 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pprev.i, align 4
  %e_refcnt = getelementptr inbounds %struct.mb_cache_entry, ptr %entry1.087, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %e_refcnt, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt, ptr %e_refcnt, i32 1, ptr elementtype(i32) %e_refcnt) #10, !srcloc !69
  br label %if.end27

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 407, i32 noundef 9, ptr noundef null) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end, %hlist_bl_del_init.exit
  %call.i.i84 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.087) #10
  br i1 %call.i.i84, label %if.end.i.i, label %if.end27.list_del.exit_crit_edge

if.end27.list_del.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.087, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %entry1.087 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entry1.087, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end27.list_del.exit_crit_edge
  %23 = ptrtoint ptr %entry1.087 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.087, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.087, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %e_refcnt30 = getelementptr inbounds %struct.mb_cache_entry, ptr %entry1.087, i32 0, i32 2
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %e_refcnt30, i32 noundef 4) #10
  %25 = ptrtoint ptr %e_refcnt30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %e_refcnt30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp32.not = icmp eq i32 %26, 1
  br i1 %cmp32.not, label %list_del.exit.if.end54_crit_edge, label %do.end48, !prof !57

list_del.exit.if.end54_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end48:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 409, i32 noundef 9, ptr noundef null) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %list_del.exit.if.end54_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %e_refcnt30, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %e_refcnt30, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %e_refcnt30, ptr %e_refcnt30, i32 1, ptr elementtype(i32) %e_refcnt30) #10, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %if.end54.mb_cache_entry_put.exit_crit_edge

if.end54.mb_cache_entry_put.exit_crit_edge:       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %mb_cache_entry_put.exit

if.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %28 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %28, ptr noundef %entry1.087) #10
  br label %mb_cache_entry_put.exit

mb_cache_entry_put.exit:                          ; preds = %if.end.i, %if.end54.mb_cache_entry_put.exit_crit_edge
  %cmp.not = icmp eq ptr %next.088, %c_list
  br i1 %cmp.not, label %mb_cache_entry_put.exit.for.end_crit_edge, label %mb_cache_entry_put.exit.for.body_crit_edge

mb_cache_entry_put.exit.for.body_crit_edge:       ; preds = %mb_cache_entry_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

mb_cache_entry_put.exit.for.end_crit_edge:        ; preds = %mb_cache_entry_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %mb_cache_entry_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %29 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cache, align 4
  tail call void @kfree(ptr noundef %30) #10
  tail call void @kfree(ptr noundef %cache) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mbcache_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @mb_entry_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mbcache_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 40, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #10
  store ptr %call, ptr @mb_entry_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__ksymtab_mb_cache_entry_create, !1, !"__ksymtab_mb_cache_entry_create", i1 false, i1 false}
!1 = !{!"../fs/mbcache.c", i32 120, i32 1}
!2 = !{ptr @__ksymtab___mb_cache_entry_free, !3, !"__ksymtab___mb_cache_entry_free", i1 false, i1 false}
!3 = !{!"../fs/mbcache.c", i32 126, i32 1}
!4 = !{ptr @__ksymtab_mb_cache_entry_find_first, !5, !"__ksymtab_mb_cache_entry_find_first", i1 false, i1 false}
!5 = !{!"../fs/mbcache.c", i32 173, i32 1}
!6 = !{ptr @__ksymtab_mb_cache_entry_find_next, !7, !"__ksymtab_mb_cache_entry_find_next", i1 false, i1 false}
!7 = !{!"../fs/mbcache.c", i32 190, i32 1}
!8 = !{ptr @__ksymtab_mb_cache_entry_get, !9, !"__ksymtab_mb_cache_entry_get", i1 false, i1 false}
!9 = !{!"../fs/mbcache.c", i32 218, i32 1}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../fs/mbcache.c", i32 243, i32 10}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__ksymtab_mb_cache_entry_delete, !15, !"__ksymtab_mb_cache_entry_delete", i1 false, i1 false}
!15 = !{!"../fs/mbcache.c", i32 255, i32 1}
!16 = !{ptr @__ksymtab_mb_cache_entry_touch, !17, !"__ksymtab_mb_cache_entry_touch", i1 false, i1 false}
!17 = !{!"../fs/mbcache.c", i32 268, i32 1}
!18 = !{ptr @mb_cache_create.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../fs/mbcache.c", i32 356, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mb_cache_create.__key.3, !22, !"__key", i1 false, i1 false}
!22 = !{!"../fs/mbcache.c", i32 376, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__ksymtab_mb_cache_create, !25, !"__ksymtab_mb_cache_create", i1 false, i1 false}
!25 = !{!"../fs/mbcache.c", i32 383, i32 1}
!26 = !{ptr @__ksymtab_mb_cache_destroy, !27, !"__ksymtab_mb_cache_destroy", i1 false, i1 false}
!27 = !{!"../fs/mbcache.c", i32 415, i32 1}
!28 = !{ptr @__initcall__kmod_mbcache__213_432_mbcache_init6, !29, !"__initcall__kmod_mbcache__213_432_mbcache_init6", i1 false, i1 false}
!29 = !{!"../fs/mbcache.c", i32 432, i32 1}
!30 = !{ptr @__exitcall_mbcache_exit, !31, !"__exitcall_mbcache_exit", i1 false, i1 false}
!31 = !{!"../fs/mbcache.c", i32 433, i32 1}
!32 = !{ptr @__UNIQUE_ID_author214, !33, !"__UNIQUE_ID_author214", i1 false, i1 false}
!33 = !{!"../fs/mbcache.c", i32 435, i32 1}
!34 = !{ptr @__UNIQUE_ID_description215, !35, !"__UNIQUE_ID_description215", i1 false, i1 false}
!35 = !{!"../fs/mbcache.c", i32 436, i32 1}
!36 = !{ptr @__UNIQUE_ID_file216, !37, !"__UNIQUE_ID_file216", i1 false, i1 false}
!37 = !{!"../fs/mbcache.c", i32 437, i32 1}
!38 = !{ptr @__UNIQUE_ID_license217, !37, !"__UNIQUE_ID_license217", i1 false, i1 false}
!39 = !{ptr @mb_entry_cache, !40, !"mb_entry_cache", i1 false, i1 false}
!40 = !{!"../fs/mbcache.c", i32 45, i32 27}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/mbcache.c", i32 419, i32 37}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2152051856}
!54 = !{!"branch_weights", i32 2146410443, i32 1073205}
!55 = !{i64 2148496559, i64 2148496591, i64 2148496620, i64 2148496654, i64 2148496685, i64 2148496708}
!56 = !{i64 2148585664}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2152052016}
!59 = !{i64 2152052293}
!60 = !{i64 2152052135}
!61 = !{i64 2152052498}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2152055537, i64 2152056029, i64 2152055574, i64 2152055630, i64 2152055664, i64 2152055688, i64 2152055729, i64 2152055750, i64 2152055778, i64 2152055812}
!64 = !{i64 2148569686}
!65 = !{i64 2152056932}
!66 = !{i64 2152059929, i64 2152060416, i64 2152059966, i64 2152060022, i64 2152060056, i64 2152060080, i64 2152060121, i64 2152060142, i64 2152060170, i64 2152060204}
!67 = !{i64 2148487701, i64 2148487727, i64 2148487756, i64 2148487790, i64 2148487821, i64 2148487844}
!68 = !{i64 2152067226, i64 2152067714, i64 2152067263, i64 2152067319, i64 2152067353, i64 2152067377, i64 2152067418, i64 2152067439, i64 2152067467, i64 2152067501}
!69 = !{i64 2148490166, i64 2148490192, i64 2148490221, i64 2148490255, i64 2148490286, i64 2148490309}
!70 = !{i64 2148576177}
!71 = !{i64 2148490886, i64 2148490918, i64 2148490947, i64 2148490981, i64 2148491012, i64 2148491035}
!72 = !{i64 2148576406}
