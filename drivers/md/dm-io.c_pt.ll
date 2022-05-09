; ModuleID = '/llk/IR_all_yes/drivers/md/dm-io.c_pt.bc'
source_filename = "../drivers/md/dm-io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dm_io_client_create\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_io_client_create\09\09\09\09"
module asm "\09.long\09__crc_dm_io_client_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_io_client_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_io_client_create\22\09\09\09\09\09"
module asm "__kstrtabns_dm_io_client_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dm_io_client_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_io_client_destroy\09\09\09\09"
module asm "\09.long\09__crc_dm_io_client_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_io_client_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_io_client_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dm_io_client_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dm_io\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_io\09\09\09\09"
module asm "\09.long\09__crc_dm_io\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_io:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_io\22\09\09\09\09\09"
module asm "__kstrtabns_dm_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dm_io_client = type { %struct.mempool_s, %struct.bio_set }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sync_io = type { i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dpages = type { ptr, ptr, %union.anon.91, ptr, ptr, i32 }
%union.anon.91 = type { i32, [16 x i8] }
%struct.dm_io_region = type { ptr, i64, i64 }
%struct.dm_io_request = type { i32, i32, %struct.dm_io_memory, %struct.dm_io_notify, ptr }
%struct.dm_io_memory = type { i32, i32, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.dm_io_notify = type { ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.86, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.86 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.io = type { i32, %struct.atomic_t, ptr, ptr, ptr, ptr, i32, [4 x i8] }
%struct.page_list = type { ptr, ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.76, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.76 = type { %struct.atomic_t }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }

@_dm_io_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_dm_io_client_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_io_client_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_io_client_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_io_client_create to i32), ptr @__kstrtab_dm_io_client_create, ptr @__kstrtabns_dm_io_client_create }, section "___ksymtab+dm_io_client_create", align 4
@__kstrtab_dm_io_client_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_io_client_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_io_client_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_io_client_destroy to i32), ptr @__kstrtab_dm_io_client_destroy, ptr @__kstrtabns_dm_io_client_destroy }, section "___ksymtab+dm_io_client_destroy", align 4
@__kstrtab_dm_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_io = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_io to i32), ptr @__kstrtab_dm_io, ptr @__kstrtabns_dm_io }, section "___ksymtab+dm_io", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", [52 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/md/dm-io.c\00", [45 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@store_io_and_region_in_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\012device-mapper: io: Unaligned struct io pointer %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"store_io_and_region_in_bio\00", [37 x i8] zeroinitializer }, align 32
@store_io_and_region_in_bio._entry_ptr = internal global ptr @store_io_and_region_in_bio._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 9]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 7, i64 9]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 7, i64 9]
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"_dm_io_cache\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 43, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 560, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 106, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 440, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 87, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [22 x i8] c"../drivers/md/dm-io.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 94, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_dm_io, ptr @__ksymtab_dm_io_client_create, ptr @__ksymtab_dm_io_client_destroy, ptr @store_io_and_region_in_bio._entry, ptr @store_io_and_region_in_bio._entry_ptr, ptr @_dm_io_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @init_completion.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dm_io_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_io_and_region_in_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_io_client_create() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_get_reserved_bio_based_ios() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 724) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @_dm_io_cache, align 4
  %call.i = tail call i32 @mempool_init(ptr noundef nonnull %call7.i.i, i32 noundef %call, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.bad_crit_edge

if.end.bad_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end6:                                          ; preds = %if.end
  %bios = getelementptr inbounds %struct.dm_io_client, ptr %call7.i.i, i32 0, i32 1
  %call7 = tail call i32 @bioset_init(ptr noundef %bios, i32 noundef %call, i32 noundef 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end6.bad_crit_edge

if.end6.bad_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

bad:                                              ; preds = %if.end6.bad_crit_edge, %if.end.bad_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.bad_crit_edge ], [ %call7, %if.end6.bad_crit_edge ]
  tail call void @mempool_exit(ptr noundef nonnull %call7.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %2 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %bad ], [ %call7.i.i, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_reserved_bio_based_ios() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_io_client_destroy(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mempool_exit(ptr noundef %client) #10
  %bios = getelementptr inbounds %struct.dm_io_client, ptr %client, i32 0, i32 1
  tail call void @bioset_exit(ptr noundef %bios) #10
  tail call void @kfree(ptr noundef %client) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_io(ptr nocapture noundef readonly %io_req, i32 noundef %num_regions, ptr nocapture noundef readonly %where, ptr noundef writeonly %sync_error_bits) #0 align 64 {
entry:
  %sio.i = alloca %struct.sync_io, align 4
  %dp = alloca %struct.dpages, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dp) #10
  %0 = call ptr @memset(ptr %dp, i32 255, i32 32)
  %count = getelementptr inbounds %struct.dm_io_region, ptr %where, i32 0, i32 2
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %count, align 8
  %conv = trunc i64 %2 to i32
  %shl = shl i32 %conv, 9
  %vma_invalidate_address.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 4
  %3 = ptrtoint ptr %vma_invalidate_address.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %vma_invalidate_address.i, align 4
  %vma_invalidate_size.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 5
  %4 = ptrtoint ptr %vma_invalidate_size.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vma_invalidate_size.i, align 4
  %mem.i = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 2
  %5 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb15.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ptr.i = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptr.i, align 4
  %offset.i = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %12 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @list_get_page, ptr %dp, align 4
  %next_page.i.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 1
  %13 = ptrtoint ptr %next_page.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @list_next_page, ptr %next_page.i.i, align 4
  %14 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %11, ptr %14, align 4
  %context_ptr.i.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %16 = ptrtoint ptr %context_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %9, ptr %context_ptr.i.i, align 4
  br label %if.end

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ptr5.i = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %ptr5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptr5.i, align 4
  %19 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bio_get_page, ptr %dp, align 4
  %next_page.i34.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 1
  %20 = ptrtoint ptr %next_page.i34.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bio_next_page, ptr %next_page.i34.i, align 4
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 20
  %21 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bi_io_vec.i.i, align 8
  %context_ptr.i35.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %23 = ptrtoint ptr %context_ptr.i35.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %context_ptr.i35.i, align 4
  %24 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 8
  %25 = call ptr @memcpy(ptr %24, ptr %bi_iter.i.i, i32 20)
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  %ptr8.i = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 2, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %26 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool2.not.i.i, label %sw.bb6.i.flush_kernel_vmap_range.exit.i_crit_edge, label %if.then.i.i

sw.bb6.i.flush_kernel_vmap_range.exit.i_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %flush_kernel_vmap_range.exit.i

if.then.i.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %ptr8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ptr8.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %29(ptr noundef %28, i32 noundef %shl) #10
  br label %flush_kernel_vmap_range.exit.i

flush_kernel_vmap_range.exit.i:                   ; preds = %if.then.i.i, %sw.bb6.i.flush_kernel_vmap_range.exit.i_crit_edge
  %30 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %io_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  br i1 %cmp.i, label %if.then.i, label %flush_kernel_vmap_range.exit.i.if.end.i_crit_edge

flush_kernel_vmap_range.exit.i.if.end.i_crit_edge: ; preds = %flush_kernel_vmap_range.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %flush_kernel_vmap_range.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %ptr8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptr8.i, align 4
  %34 = ptrtoint ptr %vma_invalidate_address.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %vma_invalidate_address.i, align 4
  %35 = ptrtoint ptr %vma_invalidate_size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl, ptr %vma_invalidate_size.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %flush_kernel_vmap_range.exit.i.if.end.i_crit_edge
  %36 = ptrtoint ptr %ptr8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptr8.i, align 4
  %38 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @vm_get_page, ptr %dp, align 4
  %next_page.i36.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 1
  %39 = ptrtoint ptr %next_page.i36.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @vm_next_page, ptr %next_page.i36.i, align 4
  %40 = ptrtoint ptr %37 to i32
  %and.i.i = and i32 %40, 4095
  %41 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i.i, ptr %41, align 4
  %context_ptr.i37.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %43 = ptrtoint ptr %context_ptr.i37.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %37, ptr %context_ptr.i37.i, align 4
  br label %if.end

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ptr17.i = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %ptr17.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptr17.i, align 4
  %46 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @km_get_page, ptr %dp, align 4
  %next_page.i38.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 1
  %47 = ptrtoint ptr %next_page.i38.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @km_next_page, ptr %next_page.i38.i, align 4
  %48 = ptrtoint ptr %45 to i32
  %and.i39.i = and i32 %48, 4095
  %49 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and.i39.i, ptr %49, align 4
  %context_ptr.i40.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %51 = ptrtoint ptr %context_ptr.i40.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %context_ptr.i40.i, align 4
  br label %if.end

if.end:                                           ; preds = %sw.bb15.i, %if.end.i, %sw.bb3.i, %sw.bb.i
  %notify = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 3
  %52 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %notify, align 4
  %tobool1.not = icmp eq ptr %53, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %client = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 4
  %54 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client, align 4
  %56 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %io_req, align 4
  %bi_op_flags = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 1
  %58 = ptrtoint ptr %bi_op_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bi_op_flags, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sio.i) #10
  %60 = call ptr @memset(ptr %sio.i, i32 255, i32 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_regions)
  %cmp.i26 = icmp ult i32 %num_regions, 2
  %and.i.i27 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.i.i = icmp ne i32 %and.i.i27, 0
  %or.cond.i = or i1 %cmp.i26, %tobool.i.i
  br i1 %or.cond.i, label %if.end16.i, label %do.end.i

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 440, i32 noundef 9, ptr noundef null) #10
  br label %sync_io.exit

if.end16.i:                                       ; preds = %if.then2
  %wait.i = getelementptr inbounds %struct.sync_io, ptr %sio.i, i32 0, i32 1
  %61 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %wait.i, align 4
  %wait.i.i = getelementptr inbounds %struct.sync_io, ptr %sio.i, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #10
  %call17.i = call noalias ptr @mempool_alloc(ptr noundef %55, i32 noundef 3072) #10
  %62 = ptrtoint ptr %call17.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %call17.i, align 32
  %count.i = getelementptr inbounds %struct.io, ptr %call17.i, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  %63 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 1, ptr %count.i, align 4
  %client19.i = getelementptr inbounds %struct.io, ptr %call17.i, i32 0, i32 2
  %64 = ptrtoint ptr %client19.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %55, ptr %client19.i, align 8
  %callback.i = getelementptr inbounds %struct.io, ptr %call17.i, i32 0, i32 3
  %65 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @sync_io_complete, ptr %callback.i, align 4
  %context.i = getelementptr inbounds %struct.io, ptr %call17.i, i32 0, i32 4
  %66 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %sio.i, ptr %context.i, align 16
  %67 = ptrtoint ptr %vma_invalidate_address.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vma_invalidate_address.i, align 4
  %vma_invalidate_address20.i = getelementptr inbounds %struct.io, ptr %call17.i, i32 0, i32 5
  %69 = ptrtoint ptr %vma_invalidate_address20.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %vma_invalidate_address20.i, align 4
  %70 = ptrtoint ptr %vma_invalidate_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vma_invalidate_size.i, align 4
  %vma_invalidate_size21.i = getelementptr inbounds %struct.io, ptr %call17.i, i32 0, i32 6
  %72 = ptrtoint ptr %vma_invalidate_size21.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %vma_invalidate_size21.i, align 8
  call fastcc void @dispatch_io(i32 noundef %57, i32 noundef %59, i32 noundef %num_regions, ptr noundef %where, ptr noundef nonnull %dp, ptr noundef %call17.i, i32 noundef 1) #10
  call void @wait_for_completion_io(ptr noundef %wait.i) #10
  %tobool23.not.i = icmp eq ptr %sync_error_bits, null
  br i1 %tobool23.not.i, label %if.end16.i.if.end26.i_crit_edge, label %if.then24.i

if.end16.i.if.end26.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %sio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sio.i, align 4
  %75 = ptrtoint ptr %sync_error_bits to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %sync_error_bits, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end16.i.if.end26.i_crit_edge
  %76 = ptrtoint ptr %sio.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool28.not.i = icmp eq i32 %77, 0
  %cond.i = select i1 %tobool28.not.i, i32 0, i32 -5
  br label %sync_io.exit

sync_io.exit:                                     ; preds = %if.end26.i, %do.end.i
  %retval.0.i30 = phi i32 [ %cond.i, %if.end26.i ], [ -5, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sio.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %78 = ptrtoint ptr %io_req to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %io_req, align 4
  %context = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_regions)
  %cmp.i31 = icmp ult i32 %num_regions, 2
  %and.i.i32 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.i.i33 = icmp ne i32 %and.i.i32, 0
  %or.cond.i34 = or i1 %cmp.i31, %tobool.i.i33
  br i1 %or.cond.i34, label %if.end16.i44, label %do.end.i35

do.end.i35:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 473, i32 noundef 9, ptr noundef null) #10
  tail call void %53(i32 noundef 1, ptr noundef %81) #10
  br label %cleanup

if.end16.i44:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %bi_op_flags7 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 1
  %82 = ptrtoint ptr %bi_op_flags7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bi_op_flags7, align 4
  %client5 = getelementptr inbounds %struct.dm_io_request, ptr %io_req, i32 0, i32 4
  %84 = ptrtoint ptr %client5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %client5, align 4
  %call17.i36 = tail call noalias ptr @mempool_alloc(ptr noundef %85, i32 noundef 3072) #10
  %86 = ptrtoint ptr %call17.i36 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %call17.i36, align 32
  %count.i37 = getelementptr inbounds %struct.io, ptr %call17.i36, i32 0, i32 1
  %call.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i37, i32 noundef 4) #10
  %87 = ptrtoint ptr %count.i37 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 1, ptr %count.i37, align 4
  %client18.i = getelementptr inbounds %struct.io, ptr %call17.i36, i32 0, i32 2
  %88 = ptrtoint ptr %client18.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %client18.i, align 8
  %callback.i39 = getelementptr inbounds %struct.io, ptr %call17.i36, i32 0, i32 3
  %89 = ptrtoint ptr %callback.i39 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %53, ptr %callback.i39, align 4
  %context19.i = getelementptr inbounds %struct.io, ptr %call17.i36, i32 0, i32 4
  %90 = ptrtoint ptr %context19.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %81, ptr %context19.i, align 16
  %91 = ptrtoint ptr %vma_invalidate_address.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %vma_invalidate_address.i, align 4
  %vma_invalidate_address20.i41 = getelementptr inbounds %struct.io, ptr %call17.i36, i32 0, i32 5
  %93 = ptrtoint ptr %vma_invalidate_address20.i41 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %vma_invalidate_address20.i41, align 4
  %94 = ptrtoint ptr %vma_invalidate_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vma_invalidate_size.i, align 4
  %vma_invalidate_size21.i43 = getelementptr inbounds %struct.io, ptr %call17.i36, i32 0, i32 6
  %96 = ptrtoint ptr %vma_invalidate_size21.i43 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %vma_invalidate_size21.i43, align 8
  call fastcc void @dispatch_io(i32 noundef %79, i32 noundef %83, i32 noundef %num_regions, ptr noundef %where, ptr noundef nonnull %dp, ptr noundef %call17.i36, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16.i44, %do.end.i35, %sync_io.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i30, %sync_io.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end16.i44 ], [ -5, %do.end.i35 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dp) #10
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_io_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef null) #10
  store ptr %call, ptr @_dm_io_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_io_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @_dm_io_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #10
  store ptr null, ptr @_dm_io_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @list_get_page(ptr nocapture noundef readonly %dp, ptr nocapture noundef writeonly %p, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %3 = ptrtoint ptr %context_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context_ptr, align 4
  %page = getelementptr inbounds %struct.page_list, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page, align 4
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %p, align 4
  %sub = sub i32 4096, %2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %len, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %2, ptr %offset, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @list_next_page(ptr nocapture noundef %dp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %0 = ptrtoint ptr %context_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context_ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  store ptr %3, ptr %context_ptr, align 4
  %4 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bio_get_page(ptr nocapture noundef %dp, ptr nocapture noundef writeonly %p, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %0 = ptrtoint ptr %context_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context_ptr, align 4
  %bi_idx = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2, i32 1, i32 8
  %2 = ptrtoint ptr %bi_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_idx, align 4
  %arrayidx = getelementptr %struct.bio_vec, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %1, i32 %3, i32 2
  %6 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bv_offset, align 4
  %bi_bvec_done = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2, i32 1, i32 12
  %8 = ptrtoint ptr %bi_bvec_done to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_bvec_done, align 4
  %bi_size = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2, i32 1, i32 4
  %10 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_size, align 4
  %bv_len8 = getelementptr %struct.bio_vec, ptr %1, i32 %3, i32 1
  %12 = ptrtoint ptr %bv_len8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_len8, align 4
  %sub = sub i32 %13, %9
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %sub)
  %add15 = add i32 %9, %7
  %rem = and i32 %add15, 4095
  %sub16 = sub nuw nsw i32 4096, %rem
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %sub16)
  %16 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %div55 = lshr i32 %add15, 12
  %add.ptr = getelementptr %struct.page, ptr %5, i32 %div55
  %17 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %p, align 4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %len, align 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %rem, ptr %offset, align 4
  %conv = zext i32 %15 to i64
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %conv, ptr %16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bio_next_page(ptr nocapture noundef %dp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %0, align 4
  %conv = trunc i64 %2 to i32
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %3 = ptrtoint ptr %context_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context_ptr, align 4
  %bi_idx.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2, i32 1, i32 8
  %bi_size.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2, i32 1, i32 4
  %5 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %bi_size.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp.i = icmp ult i32 %6, %conv
  br i1 %cmp.i, label %land.rhs.i, label %if.end38.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then36.i_crit_edge, label %if.then.i, !prof !33

land.rhs.i.if.then36.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.2) #10
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then36.i_crit_edge
  %7 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %bi_size.i, align 1
  br label %bvec_iter_advance.exit

if.end38.i:                                       ; preds = %entry
  %8 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %bi_idx.i, align 1
  %sub.i = sub i32 %6, %conv
  %10 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %sub.i, ptr %bi_size.i, align 1
  %bi_bvec_done.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2, i32 1, i32 12
  %11 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %bi_bvec_done.i, align 1
  %add.i = add i32 %12, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool40.not3.i = icmp eq i32 %add.i, 0
  br i1 %tobool40.not3.i, label %if.end38.i.while.end.i_crit_edge, label %if.end38.i.land.rhs41.i_crit_edge

if.end38.i.land.rhs41.i_crit_edge:                ; preds = %if.end38.i
  br label %land.rhs41.i

if.end38.i.while.end.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

land.rhs41.i:                                     ; preds = %while.body.i.land.rhs41.i_crit_edge, %if.end38.i.land.rhs41.i_crit_edge
  %bytes.addr.05.i = phi i32 [ %sub46.i, %while.body.i.land.rhs41.i_crit_edge ], [ %add.i, %if.end38.i.land.rhs41.i_crit_edge ]
  %idx.04.i = phi i32 [ %inc.i, %while.body.i.land.rhs41.i_crit_edge ], [ %9, %if.end38.i.land.rhs41.i_crit_edge ]
  %bv_len.i = getelementptr %struct.bio_vec, ptr %4, i32 %idx.04.i, i32 1
  %13 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i, i32 %14)
  %cmp42.not.i = icmp ult i32 %bytes.addr.05.i, %14
  br i1 %cmp42.not.i, label %land.rhs41.i.while.end.i_crit_edge, label %while.body.i

land.rhs41.i.while.end.i_crit_edge:               ; preds = %land.rhs41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs41.i
  %sub46.i = sub i32 %bytes.addr.05.i, %14
  %inc.i = add i32 %idx.04.i, 1
  %tobool40.not.i = icmp eq i32 %sub46.i, 0
  br i1 %tobool40.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.land.rhs41.i_crit_edge

while.body.i.land.rhs41.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs41.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs41.i.while.end.i_crit_edge, %if.end38.i.while.end.i_crit_edge
  %idx.0.lcssa.i = phi i32 [ %9, %if.end38.i.while.end.i_crit_edge ], [ %idx.04.i, %land.rhs41.i.while.end.i_crit_edge ], [ %inc.i, %while.body.i.while.end.i_crit_edge ]
  %bytes.addr.0.lcssa.i = phi i32 [ 0, %if.end38.i.while.end.i_crit_edge ], [ %bytes.addr.05.i, %land.rhs41.i.while.end.i_crit_edge ], [ 0, %while.body.i.while.end.i_crit_edge ]
  %15 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %idx.0.lcssa.i, ptr %bi_idx.i, align 1
  %16 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %bytes.addr.0.lcssa.i, ptr %bi_bvec_done.i, align 1
  br label %bvec_iter_advance.exit

bvec_iter_advance.exit:                           ; preds = %while.end.i, %if.then36.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vm_get_page(ptr nocapture noundef readonly %dp, ptr nocapture noundef writeonly %p, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %0 = ptrtoint ptr %context_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context_ptr, align 4
  %call = tail call ptr @vmalloc_to_page(ptr noundef %1) #10
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %p, align 4
  %3 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %offset, align 4
  %7 = load i32, ptr %3, align 4
  %sub = sub i32 4096, %7
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %len, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vm_next_page(ptr nocapture noundef %dp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %sub = sub i32 4096, %2
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %3 = ptrtoint ptr %context_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context_ptr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %sub
  store ptr %add.ptr, ptr %context_ptr, align 4
  store i32 0, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @km_get_page(ptr nocapture noundef readonly %dp, ptr nocapture noundef writeonly %p, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %1 = ptrtoint ptr %context_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %context_ptr, align 4
  %3 = ptrtoint ptr %2 to i32
  %sub = add i32 %3, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %shr
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %p, align 4
  %5 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %offset, align 4
  %9 = load i32, ptr %5, align 4
  %sub2 = sub i32 4096, %9
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub2, ptr %len, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @km_next_page(ptr nocapture noundef %dp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %sub = sub i32 4096, %2
  %context_ptr = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 3
  %3 = ptrtoint ptr %context_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context_ptr, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %sub
  store ptr %add.ptr, ptr %context_ptr, align 4
  store i32 0, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sync_io_complete(i32 noundef %error, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %error, ptr %context, align 4
  %wait = getelementptr inbounds %struct.sync_io, ptr %context, i32 0, i32 1
  tail call void @complete(ptr noundef %wait) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dispatch_io(i32 noundef %op, i32 noundef %op_flags, i32 noundef %num_regions, ptr nocapture noundef readonly %where, ptr noundef %dp, ptr noundef %io, i32 noundef %sync) unnamed_addr #0 align 64 {
entry:
  %page.i = alloca ptr, align 4
  %len.i = alloca i32, align 4
  %offset.i = alloca i32, align 4
  %old_pages = alloca %struct.dpages, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %old_pages)
  %0 = call ptr @memcpy(ptr %old_pages, ptr %dp, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %num_regions)
  %cmp = icmp ugt i32 %num_regions, 32
  br i1 %cmp, label %do.body2, label %do.end7, !prof !34

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 397, 0\0A.popsection", ""() #10, !srcloc !35
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_regions)
  %cmp1235.not = icmp eq i32 %num_regions, 0
  br i1 %cmp1235.not, label %do.end7.for.end_crit_edge, label %for.body.lr.ph

do.end7.for.end_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %tobool8.not = icmp eq i32 %sync, 0
  %1 = or i32 %op_flags, 2048
  %spec.select = select i1 %tobool8.not, i32 %op_flags, i32 %1
  %2 = and i32 %spec.select, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool16.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %op)
  %cmp.i = icmp eq i32 %op, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %op)
  %cmp16.i = icmp eq i32 %op, 9
  %or.cond.i = or i1 %cmp.i, %cmp16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %op)
  %cmp19.i = icmp eq i32 %op, 7
  %or.cond431.i = or i1 %cmp19.i, %or.cond.i
  %client.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 2
  %or.i.i = or i32 %spec.select, %op
  %3 = ptrtoint ptr %io to i32
  %and.i.i = and i32 %3, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.not.i435.i = icmp eq i32 %and.i.i, 0
  %next_page.i = getelementptr inbounds %struct.dpages, ptr %dp, i32 0, i32 1
  %count283.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = call ptr @memcpy(ptr %dp, ptr %old_pages, i32 40)
  %arrayidx = getelementptr %struct.dm_io_region, ptr %where, i32 %i.036
  %count = getelementptr %struct.dm_io_region, ptr %where, i32 %i.036, i32 2
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool14.not = icmp eq i64 %6, 0
  %or.cond = and i1 %tobool16.not, %tobool14.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #10
  %7 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %page.i, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #10
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %len.i, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #10
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %offset.i, align 4, !annotation !36
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %count, align 8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 8
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then17.queue_logical_block_size.exit.i_crit_edge, label %land.lhs.true.i.i

if.then17.queue_logical_block_size.exit.i_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %queue_logical_block_size.exit.i

land.lhs.true.i.i:                                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 37, i32 9
  %16 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.i.i = icmp eq i32 %17, 0
  %.op.i = and i32 %17, 65535
  %phi.bo.i = select i1 %tobool2.not.i.i, i32 512, i32 %.op.i
  br label %queue_logical_block_size.exit.i

queue_logical_block_size.exit.i:                  ; preds = %land.lhs.true.i.i, %if.then17.queue_logical_block_size.exit.i_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %if.then17.queue_logical_block_size.exit.i_crit_edge ], [ %phi.bo.i, %land.lhs.true.i.i ]
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %queue_logical_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_discard_sectors.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 37, i32 13
  br label %if.end13.i

if.else.i:                                        ; preds = %queue_logical_block_size.exit.i
  %18 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %op, label %if.else.i.do.body.preheader.i_crit_edge [
    i32 9, label %if.then5.i
    i32 7, label %if.then10.i
  ]

if.else.i.do.body.preheader.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_zeroes_sectors.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 37, i32 16
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_same_sectors.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 37, i32 15
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.then5.i, %if.then.i
  %max_write_zeroes_sectors.sink.i = phi ptr [ %max_write_zeroes_sectors.i, %if.then5.i ], [ %max_write_same_sectors.i, %if.then10.i ], [ %max_discard_sectors.i, %if.then.i ]
  %19 = ptrtoint ptr %max_write_zeroes_sectors.sink.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_write_zeroes_sectors.sink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp21.i = icmp eq i32 %20, 0
  %or.cond432.i = select i1 %or.cond431.i, i1 %cmp21.i, i1 false
  br i1 %or.cond432.i, label %if.then23.i, label %if.end13.i.do.body.preheader.i_crit_edge

if.end13.i.do.body.preheader.i_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %if.end13.i.do.body.preheader.i_crit_edge, %if.else.i.do.body.preheader.i_crit_edge
  %special_cmd_max_sectors.0447.i = phi i32 [ %20, %if.end13.i.do.body.preheader.i_crit_edge ], [ -1, %if.else.i.do.body.preheader.i_crit_edge ]
  %sector.i = getelementptr %struct.dm_io_region, ptr %where, i32 %i.036, i32 1
  %or.i436.i = or i32 %i.036, %3
  %21 = inttoptr i32 %or.i436.i to ptr
  %conv249.i = zext i32 %special_cmd_max_sectors.0447.i to i64
  br label %do.body.i

if.then23.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count283.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %count283.i, i32 1, i32 3, i32 1) #10
  %22 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count283.i, ptr %count283.i, i32 1, ptr elementtype(i32) %count283.i) #10, !srcloc !37
  call fastcc void @dec_count(ptr noundef %io, i32 noundef %i.036, i8 noundef zeroext 1) #10
  br label %do_region.exit

do.body.i:                                        ; preds = %if.end282.i.do.body.i_crit_edge, %do.body.preheader.i
  %remaining.0.i = phi i64 [ %remaining.2.i, %if.end282.i.do.body.i_crit_edge ], [ %11, %do.body.preheader.i ]
  %23 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %op, label %sw.default.i [
    i32 3, label %do.body.i.sw.epilog.i_crit_edge
    i32 9, label %do.body.i.sw.epilog.i_crit_edge39
    i32 7, label %sw.bb26.i
  ]

do.body.i.sw.epilog.i_crit_edge39:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.body.i.sw.epilog.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i64 %remaining.0.i, 7
  %shr.i = lshr i64 %sub.i, 3
  %conv217.i = trunc i64 %shr.i to i32
  %24 = call i32 @llvm.umin.i32(i32 %conv217.i, i32 256) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb26.i, %do.body.i.sw.epilog.i_crit_edge, %do.body.i.sw.epilog.i_crit_edge39
  %num_bvecs.0.i = phi i32 [ %24, %sw.default.i ], [ 1, %sw.bb26.i ], [ 0, %do.body.i.sw.epilog.i_crit_edge ], [ 0, %do.body.i.sw.epilog.i_crit_edge39 ]
  %conv219.i = trunc i32 %num_bvecs.0.i to i16
  %25 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client.i, align 8
  %bios.i = getelementptr inbounds %struct.dm_io_client, ptr %26, i32 0, i32 1
  %call220.i = call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %conv219.i, ptr noundef %bios.i) #10
  %27 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %sector.i, align 8
  %29 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %count, align 8
  %sub222.i = sub i64 %28, %remaining.0.i
  %add223.i = add i64 %sub222.i, %30
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call220.i, i32 0, i32 8
  %31 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add223.i, ptr %bi_iter.i, align 8
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call220.i, i32 0, i32 3
  %34 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %35, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call220.i, i32 0, i32 1
  %36 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %37, %33
  br i1 %cmp.not.i.i, label %sw.epilog.i.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

sw.epilog.i.bio_set_dev.exit.i_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i.i = and i16 %35, -2177
  %38 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %sw.epilog.i.bio_set_dev.exit.i_crit_edge
  %39 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %33, ptr %bi_bdev.i.i, align 4
  call void @bio_associate_blkg(ptr noundef %call220.i) #10
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call220.i, i32 0, i32 10
  %40 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @endio, ptr %bi_end_io.i, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call220.i, i32 0, i32 2
  %41 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i.i, ptr %bi_opf.i.i, align 8
  br i1 %cmp.not.i435.i, label %store_io_and_region_in_bio.exit.i, label %do.end.i.i, !prof !33

do.end.i.i:                                       ; preds = %bio_set_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %io) #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 95, 0\0A.popsection", ""() #10, !srcloc !38
  unreachable

store_io_and_region_in_bio.exit.i:                ; preds = %bio_set_dev.exit.i
  %bi_private.i.i = getelementptr inbounds %struct.bio, ptr %call220.i, i32 0, i32 11
  %42 = ptrtoint ptr %bi_private.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %21, ptr %bi_private.i.i, align 4
  %43 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %op, label %while.cond.preheader.i [
    i32 9, label %store_io_and_region_in_bio.exit.i.if.then230.i_crit_edge
    i32 3, label %store_io_and_region_in_bio.exit.i.if.then230.i_crit_edge40
    i32 7, label %if.then246.i
  ]

store_io_and_region_in_bio.exit.i.if.then230.i_crit_edge40: ; preds = %store_io_and_region_in_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then230.i

store_io_and_region_in_bio.exit.i.if.then230.i_crit_edge: ; preds = %store_io_and_region_in_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then230.i

while.cond.preheader.i:                           ; preds = %store_io_and_region_in_bio.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %remaining.0.i)
  %tobool263.not437.i = icmp eq i64 %remaining.0.i, 0
  br i1 %tobool263.not437.i, label %while.cond.preheader.i.if.end282.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.end282.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282.i

if.then230.i:                                     ; preds = %store_io_and_region_in_bio.exit.i.if.then230.i_crit_edge, %store_io_and_region_in_bio.exit.i.if.then230.i_crit_edge40
  %44 = call i64 @llvm.umin.i64(i64 %remaining.0.i, i64 %conv249.i) #10
  %cond238.tr.i = trunc i64 %44 to i32
  %conv240.i = shl i32 %cond238.tr.i, 9
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %call220.i, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv240.i, ptr %bi_size.i, align 8
  %sub242.i = sub i64 %remaining.0.i, %44
  br label %if.end282.i

if.then246.i:                                     ; preds = %store_io_and_region_in_bio.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dp, align 4
  call void %47(ptr noundef %dp, ptr noundef nonnull %page.i, ptr noundef nonnull %len.i, ptr noundef nonnull %offset.i) #10
  %48 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %page.i, align 4
  %50 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset.i, align 4
  %call248.i = call i32 @bio_add_page(ptr noundef %call220.i, ptr noundef %49, i32 noundef %retval1.0.i.i, i32 noundef %51) #10
  %52 = call i64 @llvm.umin.i64(i64 %remaining.0.i, i64 %conv249.i) #10
  %cond256.tr.i = trunc i64 %52 to i32
  %conv258.i = shl i32 %cond256.tr.i, 9
  %bi_size260.i = getelementptr inbounds %struct.bio, ptr %call220.i, i32 0, i32 8, i32 1
  %53 = ptrtoint ptr %bi_size260.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv258.i, ptr %bi_size260.i, align 8
  %54 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %offset.i, align 4
  %sub261.i = sub i64 %remaining.0.i, %52
  %55 = ptrtoint ptr %next_page.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %next_page.i, align 4
  call void %56(ptr noundef %dp) #10
  br label %if.end282.i

while.body.i:                                     ; preds = %if.end276.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %remaining.1438.i = phi i64 [ %sub279.i, %if.end276.i.while.body.i_crit_edge ], [ %remaining.0.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %57 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dp, align 4
  call void %58(ptr noundef %dp, ptr noundef nonnull %page.i, ptr noundef nonnull %len.i, ptr noundef nonnull %offset.i) #10
  %59 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i, align 4
  %n.tr.i.i = trunc i64 %remaining.1438.i to i32
  %conv.i.i = shl i32 %n.tr.i.i, 9
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 %conv.i.i) #10
  %62 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %len.i, align 4
  %63 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %page.i, align 4
  %65 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset.i, align 4
  %call273.i = call i32 @bio_add_page(ptr noundef %call220.i, ptr noundef %64, i32 noundef %61, i32 noundef %66) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273.i)
  %tobool274.not.i = icmp eq i32 %call273.i, 0
  br i1 %tobool274.not.i, label %while.body.i.if.end282.i_crit_edge, label %if.end276.i

while.body.i.if.end282.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282.i

if.end276.i:                                      ; preds = %while.body.i
  %67 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %offset.i, align 4
  %68 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i, align 4
  %70 = lshr i32 %69, 9
  %shr.i.i = zext i32 %70 to i64
  %sub279.i = sub i64 %remaining.1438.i, %shr.i.i
  %71 = ptrtoint ptr %next_page.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %next_page.i, align 4
  call void %72(ptr noundef %dp) #10
  %tobool263.not.i = icmp eq i64 %sub279.i, 0
  br i1 %tobool263.not.i, label %if.end276.i.if.end282.i_crit_edge, label %if.end276.i.while.body.i_crit_edge

if.end276.i.while.body.i_crit_edge:               ; preds = %if.end276.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end276.i.if.end282.i_crit_edge:                ; preds = %if.end276.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end282.i

if.end282.i:                                      ; preds = %if.end276.i.if.end282.i_crit_edge, %while.body.i.if.end282.i_crit_edge, %if.then246.i, %if.then230.i, %while.cond.preheader.i.if.end282.i_crit_edge
  %remaining.2.i = phi i64 [ %sub242.i, %if.then230.i ], [ %sub261.i, %if.then246.i ], [ 0, %while.cond.preheader.i.if.end282.i_crit_edge ], [ %remaining.1438.i, %while.body.i.if.end282.i_crit_edge ], [ 0, %if.end276.i.if.end282.i_crit_edge ]
  %call.i.i434.i = call zeroext i1 @__kasan_check_write(ptr noundef %count283.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %count283.i, i32 1, i32 3, i32 1) #10
  %73 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count283.i, ptr %count283.i, i32 1, ptr elementtype(i32) %count283.i) #10, !srcloc !37
  call void @submit_bio(ptr noundef %call220.i) #10
  %tobool284.not.i = icmp eq i64 %remaining.2.i, 0
  br i1 %tobool284.not.i, label %if.end282.i.do_region.exit_crit_edge, label %if.end282.i.do.body.i_crit_edge

if.end282.i.do.body.i_crit_edge:                  ; preds = %if.end282.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end282.i.do_region.exit_crit_edge:             ; preds = %if.end282.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_region.exit

do_region.exit:                                   ; preds = %if.end282.i.do_region.exit_crit_edge, %if.then23.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #10
  br label %for.inc

for.inc:                                          ; preds = %do_region.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %num_regions
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end7.for.end_crit_edge
  %count.i31 = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 1
  %call.i.i.i32 = call zeroext i1 @__kasan_check_write(ptr noundef %count.i31, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  call void @llvm.prefetch.p0(ptr %count.i31, i32 1, i32 3, i32 1) #10
  %74 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i31, ptr %count.i31, i32 1, ptr elementtype(i32) %count.i31) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %74, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %for.end.dec_count.exit_crit_edge

for.end.dec_count.exit_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dec_count.exit

if.then1.i:                                       ; preds = %for.end
  %75 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %io, align 32
  %callback.i.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 3
  %77 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %callback.i.i, align 4
  %context2.i.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 4
  %79 = ptrtoint ptr %context2.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %context2.i.i, align 16
  %vma_invalidate_size.i.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 6
  %81 = ptrtoint ptr %vma_invalidate_size.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vma_invalidate_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i33 = icmp eq i32 %82, 0
  br i1 %tobool.not.i.i33, label %if.then1.i.complete_io.exit.i_crit_edge, label %if.then.i.i34

if.then1.i.complete_io.exit.i_crit_edge:          ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %complete_io.exit.i

if.then.i.i34:                                    ; preds = %if.then1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %83 = load i32, ptr @cacheid, align 4
  %and2.i.i.i.i = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i.i34.complete_io.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.i34.complete_io.exit.i_crit_edge:       ; preds = %if.then.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %complete_io.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i34
  call void @__sanitizer_cov_trace_pc() #12
  %vma_invalidate_address.i.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 5
  %84 = ptrtoint ptr %vma_invalidate_address.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vma_invalidate_address.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  call void %86(ptr noundef %85, i32 noundef %82) #10
  br label %complete_io.exit.i

complete_io.exit.i:                               ; preds = %if.then.i.i.i, %if.then.i.i34.complete_io.exit.i_crit_edge, %if.then1.i.complete_io.exit.i_crit_edge
  %client.i.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 2
  %87 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %client.i.i, align 8
  call void @mempool_free(ptr noundef %io, ptr noundef %88) #10
  call void %78(i32 noundef %76, ptr noundef %80) #10
  br label %dec_count.exit

dec_count.exit:                                   ; preds = %complete_io.exit.i, %for.end.dec_count.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %old_pages)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dec_count(ptr noundef %io, i32 noundef %region, i8 noundef zeroext %error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %error)
  %tobool.not = icmp eq i8 %error, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef %region, ptr noundef %io) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #10, !srcloc !40
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end2

if.then1:                                         ; preds = %if.end
  %1 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %io, align 32
  %callback.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 3
  %3 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %callback.i, align 4
  %context2.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 4
  %5 = ptrtoint ptr %context2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context2.i, align 16
  %vma_invalidate_size.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 6
  %7 = ptrtoint ptr %vma_invalidate_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vma_invalidate_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then1.complete_io.exit_crit_edge, label %if.then.i

if.then1.complete_io.exit_crit_edge:              ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %complete_io.exit

if.then.i:                                        ; preds = %if.then1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %9 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i.complete_io.exit_crit_edge, label %if.then.i.i

if.then.i.complete_io.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %complete_io.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %vma_invalidate_address.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 5
  %10 = ptrtoint ptr %vma_invalidate_address.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vma_invalidate_address.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %12(ptr noundef %11, i32 noundef %8) #10
  br label %complete_io.exit

complete_io.exit:                                 ; preds = %if.then.i.i, %if.then.i.complete_io.exit_crit_edge, %if.then1.complete_io.exit_crit_edge
  %client.i = getelementptr inbounds %struct.io, ptr %io, i32 0, i32 2
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 8
  tail call void @mempool_free(ptr noundef %io, ptr noundef %14) #10
  tail call void %4(i32 noundef %2, ptr noundef %6) #10
  br label %if.end2

if.end2:                                          ; preds = %complete_io.exit, %if.end.if.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %0 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @zero_fill_bio(ptr noundef %bio) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %4 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_private.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %and.i9 = and i32 %6, -32
  %7 = inttoptr i32 %and.i9 to ptr
  %and1.i = and i32 %6, 31
  %8 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bi_status, align 2
  tail call void @bio_put(ptr noundef %bio) #10
  tail call fastcc void @dec_count(ptr noundef %7, i32 noundef %and1.i, i8 noundef zeroext %9)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_fill_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !19, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_dm_io_client_create, !1, !"__ksymtab_dm_io_client_create", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-io.c", i32 73, i32 1}
!2 = !{ptr @__ksymtab_dm_io_client_destroy, !3, !"__ksymtab_dm_io_client_destroy", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-io.c", i32 81, i32 1}
!4 = !{ptr @__ksymtab_dm_io, !5, !"__ksymtab_dm_io", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-io.c", i32 556, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-io.c", i32 560, i32 17}
!8 = !{ptr @_dm_io_cache, !9, !"_dm_io_cache", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-io.c", i32 43, i32 27}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/bvec.h", i32 106, i32 6}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-io.c", i32 440, i32 3}
!16 = !{ptr @init_completion.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/completion.h", i32 87, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-io.c", i32 94, i32 3}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @store_io_and_region_in_bio._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @store_io_and_region_in_bio._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
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
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2155616858, i64 2155617341, i64 2155616895, i64 2155616951, i64 2155616985, i64 2155617009, i64 2155617050, i64 2155617071, i64 2155617099, i64 2155617133}
!36 = !{!"auto-init"}
!37 = !{i64 2148455683, i64 2148455709, i64 2148455738, i64 2148455772, i64 2148455803, i64 2148455826}
!38 = !{i64 2155569114, i64 2155569596, i64 2155569151, i64 2155569207, i64 2155569241, i64 2155569265, i64 2155569306, i64 2155569327, i64 2155569355, i64 2155569389}
!39 = !{i64 2148544135}
!40 = !{i64 2148458868, i64 2148458900, i64 2148458929, i64 2148458963, i64 2148458994, i64 2148459017}
!41 = !{i64 2148544364}
