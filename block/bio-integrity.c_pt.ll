; ModuleID = '/llk/IR_all_yes/block/bio-integrity.c_pt.bc'
source_filename = "../block/bio-integrity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bio_integrity_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_bio_integrity_alloc\09\09\09\09"
module asm "\09.long\09__crc_bio_integrity_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_integrity_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_integrity_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_bio_integrity_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bio_integrity_add_page\22, \22a\22\09"
module asm "\09.weak\09__crc_bio_integrity_add_page\09\09\09\09"
module asm "\09.long\09__crc_bio_integrity_add_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_integrity_add_page:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_integrity_add_page\22\09\09\09\09\09"
module asm "__kstrtabns_bio_integrity_add_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bio_integrity_prep\22, \22a\22\09"
module asm "\09.weak\09__crc_bio_integrity_prep\09\09\09\09"
module asm "\09.long\09__crc_bio_integrity_prep\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_integrity_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_integrity_prep\22\09\09\09\09\09"
module asm "__kstrtabns_bio_integrity_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bio_integrity_trim\22, \22a\22\09"
module asm "\09.weak\09__crc_bio_integrity_trim\09\09\09\09"
module asm "\09.long\09__crc_bio_integrity_trim\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_integrity_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_integrity_trim\22\09\09\09\09\09"
module asm "__kstrtabns_bio_integrity_trim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bio_integrity_clone\22, \22a\22\09"
module asm "\09.weak\09__crc_bio_integrity_clone\09\09\09\09"
module asm "\09.long\09__crc_bio_integrity_clone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_integrity_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_integrity_clone\22\09\09\09\09\09"
module asm "__kstrtabns_bio_integrity_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bioset_integrity_create\22, \22a\22\09"
module asm "\09.weak\09__crc_bioset_integrity_create\09\09\09\09"
module asm "\09.long\09__crc_bioset_integrity_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bioset_integrity_create:\09\09\09\09\09"
module asm "\09.asciz \09\22bioset_integrity_create\22\09\09\09\09\09"
module asm "__kstrtabns_bioset_integrity_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.82, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.82 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bio_integrity_payload = type { ptr, %struct.bvec_iter, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, ptr, [0 x %struct.bio_vec] }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.blk_integrity_profile = type { ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.blk_integrity_iter = type { ptr, ptr, i64, i32, i16, ptr }

@kintegrityd_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bio_integrity_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"block/bio-integrity.c\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_bio_integrity_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_integrity_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_integrity_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_integrity_alloc to i32), ptr @__kstrtab_bio_integrity_alloc, ptr @__kstrtabns_bio_integrity_alloc }, section "___ksymtab+bio_integrity_alloc", align 4
@bio_integrity_add_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s: bip_vec full\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bio_integrity_add_page\00", [41 x i8] zeroinitializer }, align 32
@bio_integrity_add_page._entry_ptr = internal global ptr @bio_integrity_add_page._entry, section ".printk_index", align 4
@__kstrtab_bio_integrity_add_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_integrity_add_page = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_integrity_add_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_integrity_add_page to i32), ptr @__kstrtab_bio_integrity_add_page, ptr @__kstrtabns_bio_integrity_add_page }, section "___ksymtab+bio_integrity_add_page", align 4
@bio_integrity_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013could not allocate integrity buffer\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bio_integrity_prep\00", [45 x i8] zeroinitializer }, align 32
@bio_integrity_prep._entry_ptr = internal global ptr @bio_integrity_prep._entry, section ".printk_index", align 4
@bio_integrity_prep._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013could not allocate data integrity bioset\0A\00", [52 x i8] zeroinitializer }, align 32
@bio_integrity_prep._entry_ptr.7 = internal global ptr @bio_integrity_prep._entry.5, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@bio_integrity_prep._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013could not attach integrity payload\0A\00", [58 x i8] zeroinitializer }, align 32
@bio_integrity_prep._entry_ptr.10 = internal global ptr @bio_integrity_prep._entry.8, section ".printk_index", align 4
@__kstrtab_bio_integrity_prep = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_integrity_prep = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_integrity_prep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_integrity_prep to i32), ptr @__kstrtab_bio_integrity_prep, ptr @__kstrtabns_bio_integrity_prep }, section "___ksymtab+bio_integrity_prep", align 4
@__bio_integrity_endio.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&bip->bip_work)\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_bio_integrity_trim = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_integrity_trim = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_integrity_trim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_integrity_trim to i32), ptr @__kstrtab_bio_integrity_trim, ptr @__kstrtabns_bio_integrity_trim }, section "___ksymtab+bio_integrity_trim", align 4
@__kstrtab_bio_integrity_clone = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_integrity_clone = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_integrity_clone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_integrity_clone to i32), ptr @__kstrtab_bio_integrity_clone, ptr @__kstrtabns_bio_integrity_clone }, section "___ksymtab+bio_integrity_clone", align 4
@bip_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_bioset_integrity_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_bioset_integrity_create = external dso_local constant [0 x i8], align 1
@__ksymtab_bioset_integrity_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bioset_integrity_create to i32), ptr @__kstrtab_bioset_integrity_create, ptr @__kstrtabns_bioset_integrity_create }, section "___ksymtab+bioset_integrity_create", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kintegrityd\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to create kintegrityd\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bio_integrity_payload\00", [42 x i8] zeroinitializer }, align 32
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"kintegrityd_wq\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 18, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 56, i32 6 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 130, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 238, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 249, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 278, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 352, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [9 x i8] c"bip_slab\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 17, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 455, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 458, i32 9 }
@___asan_gen_.67 = private constant [25 x i8] c"../block/bio-integrity.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 460, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 240, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 106, i32 6 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_bio_integrity_add_page, ptr @__ksymtab_bio_integrity_alloc, ptr @__ksymtab_bio_integrity_clone, ptr @__ksymtab_bio_integrity_prep, ptr @__ksymtab_bio_integrity_trim, ptr @__ksymtab_bioset_integrity_create, ptr @bio_integrity_add_page._entry, ptr @bio_integrity_add_page._entry_ptr, ptr @bio_integrity_prep._entry, ptr @bio_integrity_prep._entry.5, ptr @bio_integrity_prep._entry.8, ptr @bio_integrity_prep._entry_ptr, ptr @bio_integrity_prep._entry_ptr.10, ptr @bio_integrity_prep._entry_ptr.7, ptr @kintegrityd_wq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @bip_slab, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kintegrityd_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_integrity_add_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_integrity_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_integrity_prep._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_integrity_prep._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bip_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_flush_integrity() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kintegrityd_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bio_integrity_alloc(ptr noundef %bio, i32 noundef %gfp_mask, i32 noundef %nr_vecs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_pool = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 21
  %0 = ptrtoint ptr %bi_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_pool, align 4
  %bi_crypt_context.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %2 = ptrtoint ptr %bi_crypt_context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_crypt_context.i, align 8
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b104 = load i1, ptr @bio_integrity_alloc.__already_done, align 1
  br i1 %.b104, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !61

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bio_integrity_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end38:                                         ; preds = %entry
  %tobool39.not = icmp eq ptr %1, null
  br i1 %tobool39.not, label %if.end38.if.end8.i_crit_edge, label %lor.lhs.false

if.end38.if.end8.i_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

lor.lhs.false:                                    ; preds = %if.end38
  %elements.i = getelementptr inbounds %struct.bio_set, ptr %1, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elements.i, align 4
  %cmp.i106.not = icmp eq ptr %5, null
  br i1 %cmp.i106.not, label %lor.lhs.false.if.end8.i_crit_edge, label %if.else

lor.lhs.false.if.end8.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %lor.lhs.false.if.end8.i_crit_edge, %if.end38.if.end8.i_crit_edge
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_vecs, i32 12) #9
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 100) #9
  %retval.0.i = select i1 %7, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef %gfp_mask) #12
  br label %if.end46

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %bio_integrity_pool = getelementptr inbounds %struct.bio_set, ptr %1, i32 0, i32 5
  %call45 = tail call noalias ptr @mempool_alloc(ptr noundef %bio_integrity_pool, i32 noundef %gfp_mask) #9
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.end8.i
  %inline_vecs.0 = phi i32 [ 4, %if.else ], [ %nr_vecs, %if.end8.i ]
  %bip.0 = phi ptr [ %call45, %if.else ], [ %call9.i, %if.end8.i ]
  %tobool47.not = icmp eq ptr %bip.0, null
  br i1 %tobool47.not, label %if.end46.cleanup_crit_edge, label %if.end58, !prof !62

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end58:                                         ; preds = %if.end46
  %9 = call ptr @memset(ptr %bip.0, i32 0, i32 100)
  call void @__sanitizer_cov_trace_cmp4(i32 %inline_vecs.0, i32 %nr_vecs)
  %cmp = icmp ult i32 %inline_vecs.0, %nr_vecs
  br i1 %cmp, label %if.then59, label %if.else66

if.then59:                                        ; preds = %if.end58
  %conv = trunc i32 %nr_vecs to i16
  %bip_max_vcnt = getelementptr inbounds %struct.bio_integrity_payload, ptr %bip.0, i32 0, i32 3
  %10 = ptrtoint ptr %bip_max_vcnt to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %bip_max_vcnt, align 2
  %bvec_integrity_pool = getelementptr inbounds %struct.bio_set, ptr %1, i32 0, i32 6
  %call61 = tail call ptr @bvec_alloc(ptr noundef %bvec_integrity_pool, ptr noundef %bip_max_vcnt, i32 noundef %gfp_mask) #9
  %bip_vec = getelementptr inbounds %struct.bio_integrity_payload, ptr %bip.0, i32 0, i32 7
  %11 = ptrtoint ptr %bip_vec to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call61, ptr %bip_vec, align 4
  %tobool63.not = icmp eq ptr %call61, null
  br i1 %tobool63.not, label %err, label %if.then59.if.end70_crit_edge

if.then59.if.end70_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.else66:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %bip_inline_vecs = getelementptr inbounds %struct.bio_integrity_payload, ptr %bip.0, i32 0, i32 8
  %bip_vec67 = getelementptr inbounds %struct.bio_integrity_payload, ptr %bip.0, i32 0, i32 7
  %12 = ptrtoint ptr %bip_vec67 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bip_inline_vecs, ptr %bip_vec67, align 4
  %conv68 = trunc i32 %inline_vecs.0 to i16
  %bip_max_vcnt69 = getelementptr inbounds %struct.bio_integrity_payload, ptr %bip.0, i32 0, i32 3
  %13 = ptrtoint ptr %bip_max_vcnt69 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv68, ptr %bip_max_vcnt69, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.else66, %if.then59.if.end70_crit_edge
  %14 = ptrtoint ptr %bip.0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bio, ptr %bip.0, align 4
  %15 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bip.0, ptr %15, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %17 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_opf, align 8
  %19 = or i32 %18, 65536
  store i32 %19, ptr %bi_opf, align 8
  br label %cleanup

err:                                              ; preds = %if.then59
  br i1 %tobool39.not, label %err.if.else.i_crit_edge, label %land.lhs.true.i

err.if.else.i_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %err
  %elements.i.i = getelementptr inbounds %struct.bio_set, ptr %1, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %elements.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %elements.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, null
  br i1 %cmp.i.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.end.i108

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end.i108:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %bio_integrity_pool.i = getelementptr inbounds %struct.bio_set, ptr %1, i32 0, i32 5
  tail call void @mempool_free(ptr noundef nonnull %bip.0, ptr noundef %bio_integrity_pool.i) #9
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %err.if.else.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %bip.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.end.i108, %if.end70, %if.end46.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %bip.0, %if.end70 ], [ inttoptr (i32 -95 to ptr), %land.rhs.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end46.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i108 ], [ inttoptr (i32 -12 to ptr), %if.else.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bvec_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bio_integrity_free(ptr nocapture noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i, align 8
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.bio_integrity.exit_crit_edge, label %if.then.i

entry.bio_integrity.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_integrity.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %bio_integrity.exit

bio_integrity.exit:                               ; preds = %if.then.i, %entry.bio_integrity.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ null, %entry.bio_integrity.exit_crit_edge ]
  %bi_pool = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 21
  %6 = ptrtoint ptr %bi_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_pool, align 4
  %bip_flags = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %bip_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bip_flags, align 4
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %bio_integrity.exit.if.end_crit_edge, label %if.then

bio_integrity.exit.if.end_crit_edge:              ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %bio_integrity.exit
  %bip_vec = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 7
  %11 = ptrtoint ptr %bip_vec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bip_vec, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %shr.i.i = lshr i32 %16, 30
  %17 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.then.bvec_virt.exit_crit_edge [
    i32 2, label %if.then.land.rhs.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.land.rhs.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.then.bvec_virt.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %bvec_virt.exit

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %18 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp2.i.not.i = icmp eq i32 %18, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.land.rhs.i_crit_edge, label %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge

is_highmem_idx.exit.i.bvec_virt.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bvec_virt.exit

is_highmem_idx.exit.i.land.rhs.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %is_highmem_idx.exit.i.land.rhs.i_crit_edge, %if.then.land.rhs.i_crit_edge
  %.b43.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.bvec_virt.exit_crit_edge, label %if.then.i10, !prof !61

land.rhs.i.bvec_virt.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bvec_virt.exit

if.then.i10:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 240, i32 noundef 9, ptr noundef null) #9
  br label %bvec_virt.exit

bvec_virt.exit:                                   ; preds = %if.then.i10, %land.rhs.i.bvec_virt.exit_crit_edge, %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge, %if.then.bvec_virt.exit_crit_edge
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %12, align 4
  %call38.i = tail call ptr @page_address(ptr noundef %20) #9
  %bv_offset.i = getelementptr inbounds %struct.bio_vec, ptr %12, i32 0, i32 2
  %21 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bv_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %22
  tail call void @kfree(ptr noundef %add.ptr.i) #9
  br label %if.end

if.end:                                           ; preds = %bvec_virt.exit, %bio_integrity.exit.if.end_crit_edge
  %tobool.not.i11 = icmp eq ptr %7, null
  br i1 %tobool.not.i11, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %bio_integrity_pool.i = getelementptr inbounds %struct.bio_set, ptr %7, i32 0, i32 5
  %elements.i.i = getelementptr inbounds %struct.bio_set, ptr %7, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %elements.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %elements.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, null
  br i1 %cmp.i.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i12

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i12:                                      ; preds = %land.lhs.true.i
  %bip_vec.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 7
  %25 = ptrtoint ptr %bip_vec.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bip_vec.i, align 4
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %if.then.i12.if.end.i_crit_edge, label %if.then2.i

if.then.i12.if.end.i_crit_edge:                   ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #11
  %bvec_integrity_pool.i = getelementptr inbounds %struct.bio_set, ptr %7, i32 0, i32 6
  %bip_max_vcnt.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %bip_max_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %bip_max_vcnt.i, align 2
  tail call void @bvec_free(ptr noundef %bvec_integrity_pool.i, ptr noundef nonnull %26, i16 noundef zeroext %28) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i12.if.end.i_crit_edge
  tail call void @mempool_free(ptr noundef %retval.0.i, ptr noundef %bio_integrity_pool.i) #9
  br label %__bio_integrity_free.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  tail call void @kfree(ptr noundef %retval.0.i) #9
  br label %__bio_integrity_free.exit

__bio_integrity_free.exit:                        ; preds = %if.else.i, %if.end.i
  %29 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %29, align 4
  %31 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bi_opf.i, align 8
  %33 = and i32 %32, -65537
  store i32 %33, ptr %bi_opf.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bio_integrity_add_page(ptr nocapture noundef readonly %bio, ptr noundef %page, i32 noundef %len, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i, align 8
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.bio_integrity.exit_crit_edge, label %if.then.i

entry.bio_integrity.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_integrity.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %bio_integrity.exit

bio_integrity.exit:                               ; preds = %if.then.i, %entry.bio_integrity.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ null, %entry.bio_integrity.exit_crit_edge ]
  %bip_vcnt = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %bip_vcnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bip_vcnt, align 4
  %bip_max_vcnt = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %bip_max_vcnt to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bip_max_vcnt, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp.not = icmp ult i16 %7, %9
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end:                                           ; preds = %bio_integrity.exit
  %conv = zext i16 %7 to i32
  %bip_vec = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 7
  %10 = ptrtoint ptr %bip_vec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bip_vec, align 4
  %add.ptr = getelementptr %struct.bio_vec, ptr %11, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %12 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_queue.i, align 4
  %sub = add nsw i32 %conv, -1
  %virt_boundary_mask.i.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 37, i32 2
  %16 = ptrtoint ptr %virt_boundary_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %virt_boundary_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i30 = icmp eq i32 %17, 0
  br i1 %tobool.not.i30, label %land.lhs.true.if.end15_crit_edge, label %if.end.i

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end.i:                                         ; preds = %land.lhs.true
  %and.i.i = and i32 %17, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %bvec_gap_to_prev.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

bvec_gap_to_prev.exit:                            ; preds = %if.end.i
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %11, i32 %sub, i32 2
  %18 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_offset.i.i, align 4
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %11, i32 %sub, i32 1
  %20 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bv_len.i.i, align 4
  %add.i.i = add i32 %21, %19
  %and2.i.i = and i32 %add.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.i.i.not, label %bvec_gap_to_prev.exit.if.end15_crit_edge, label %bvec_gap_to_prev.exit.cleanup_crit_edge

bvec_gap_to_prev.exit.cleanup_crit_edge:          ; preds = %bvec_gap_to_prev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

bvec_gap_to_prev.exit.if.end15_crit_edge:         ; preds = %bvec_gap_to_prev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %bvec_gap_to_prev.exit.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %page, ptr %add.ptr, align 4
  %bv_len = getelementptr %struct.bio_vec, ptr %11, i32 %conv, i32 1
  %23 = ptrtoint ptr %bv_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %len, ptr %bv_len, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %11, i32 %conv, i32 2
  %24 = ptrtoint ptr %bv_offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %offset, ptr %bv_offset, align 4
  %25 = ptrtoint ptr %bip_vcnt to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bip_vcnt, align 4
  %inc = add i16 %26, 1
  store i16 %inc, ptr %bip_vcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %bvec_gap_to_prev.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %len, %if.end15 ], [ 0, %bvec_gap_to_prev.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bio_integrity_prep(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue.i, align 4
  %integrity.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %integrity.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %integrity.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %tobool.not211 = icmp eq ptr %integrity.i, null
  %tobool.not = or i1 %tobool.not.i, %tobool.not211
  br i1 %tobool.not, label %entry.cleanup120_crit_edge, label %if.end

entry.cleanup120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup120

if.end:                                           ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %8 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_opf, align 8
  %and = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %switch = icmp ult i32 %and, 2
  br i1 %switch, label %if.end5, label %if.end.cleanup120_crit_edge

if.end.cleanup120_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup120

if.end5:                                          ; preds = %if.end
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %11)
  %tobool6.not = icmp ult i32 %11, 512
  br i1 %tobool6.not, label %if.end5.cleanup120_crit_edge, label %if.end8

if.end5.cleanup120_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup120

if.end8:                                          ; preds = %if.end5
  %12 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i180 = icmp eq i32 %12, 0
  br i1 %tobool.not.i180, label %if.end8.if.end12_crit_edge, label %bio_integrity.exit

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

bio_integrity.exit:                               ; preds = %if.end8
  %13 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %bio_integrity.exit.if.end12_crit_edge, label %bio_integrity.exit.cleanup120_crit_edge

bio_integrity.exit.cleanup120_crit_edge:          ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup120

bio_integrity.exit.if.end12_crit_edge:            ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %bio_integrity.exit.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.i.not = icmp eq i32 %and, 0
  %16 = ptrtoint ptr %integrity.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %integrity.i, align 4
  br i1 %tobool.i.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end12
  %verify_fn = getelementptr inbounds %struct.blk_integrity_profile, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %verify_fn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %verify_fn, align 4
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %if.then17.cleanup120_crit_edge, label %lor.lhs.false

if.then17.cleanup120_crit_edge:                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup120

lor.lhs.false:                                    ; preds = %if.then17
  %flags = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags, align 4
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool20.not = icmp eq i8 %22, 0
  br i1 %tobool20.not, label %lor.lhs.false.cleanup120_crit_edge, label %lor.lhs.false.if.end32_crit_edge

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

lor.lhs.false.cleanup120_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup120

if.else:                                          ; preds = %if.end12
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %17, align 4
  %tobool24.not = icmp eq ptr %24, null
  br i1 %tobool24.not, label %if.else.cleanup120_crit_edge, label %lor.lhs.false25

if.else.cleanup120_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup120

lor.lhs.false25:                                  ; preds = %if.else
  %flags26 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %flags26 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags26, align 4
  %27 = and i8 %26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool29.not = icmp eq i8 %27, 0
  br i1 %tobool29.not, label %lor.lhs.false25.cleanup120_crit_edge, label %lor.lhs.false25.if.end32_crit_edge

lor.lhs.false25.if.end32_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

lor.lhs.false25.cleanup120_crit_edge:             ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup120

if.end32:                                         ; preds = %lor.lhs.false25.if.end32_crit_edge, %lor.lhs.false.if.end32_crit_edge
  %shr35 = lshr i32 %11, 9
  %interval_exp.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 18, i32 3
  %28 = ptrtoint ptr %interval_exp.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %interval_exp.i, align 2
  %conv.i = zext i8 %29 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %shr.i = lshr i32 %shr35, %sub.i
  %tuple_size = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 18, i32 2
  %30 = ptrtoint ptr %tuple_size to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tuple_size, align 1
  %conv37 = zext i8 %31 to i32
  %mul = mul nuw nsw i32 %shr.i, %conv37
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3072) #12
  %cmp39 = icmp eq ptr %call9.i, null
  br i1 %cmp39, label %do.end, label %if.end45, !prof !62

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %err_end_io

if.end45:                                         ; preds = %if.end32
  %32 = ptrtoint ptr %call9.i to i32
  %add = add nuw nsw i32 %mul, 4095
  %sub = add i32 %add, %32
  %shr47 = lshr i32 %sub, 12
  %shr48 = lshr i32 %32, 12
  %sub49 = sub nsw i32 %shr47, %shr48
  %call50 = tail call ptr @bio_integrity_alloc(ptr noundef %bio, i32 noundef 3072, i32 noundef %sub49)
  %cmp.i182 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %do.end55, label %if.end58

do.end55:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #13
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %err_end_io

if.end58:                                         ; preds = %if.end45
  %bip_flags = getelementptr inbounds %struct.bio_integrity_payload, ptr %call50, i32 0, i32 4
  %33 = ptrtoint ptr %bip_flags to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bip_flags, align 4
  %35 = or i16 %34, 1
  store i16 %35, ptr %bip_flags, align 4
  %bi_size61 = getelementptr inbounds %struct.bio_integrity_payload, ptr %call50, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %bi_size61 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %bi_size61, align 4
  %37 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bi_iter, align 8
  %bip_iter.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %call50, i32 0, i32 1
  %39 = ptrtoint ptr %bip_iter.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %bip_iter.i, align 4
  %flags63 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %flags63 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flags63, align 4
  %42 = and i8 %41, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool66.not = icmp eq i8 %42, 0
  br i1 %tobool66.not, label %if.end58.if.end72_crit_edge, label %if.then67

if.end58.if.end72_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then67:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %43 = or i16 %34, 17
  %44 = ptrtoint ptr %bip_flags to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %bip_flags, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end58.if.end72_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %shr47, i32 %shr48)
  %cmp74212 = icmp eq i32 %shr47, %shr48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp77213 = icmp eq i32 %mul, 0
  %or.cond214 = or i1 %cmp74212, %cmp77213
  br i1 %or.cond214, label %if.end72.for.end_crit_edge, label %if.end80.lr.ph

if.end72.for.end_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end80.lr.ph:                                   ; preds = %if.end72
  %and73 = and i32 %32, 3968
  %45 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  br label %if.end80

if.end80:                                         ; preds = %for.inc.if.end80_crit_edge, %if.end80.lr.ph
  %i.0218 = phi i32 [ 0, %if.end80.lr.ph ], [ %inc, %for.inc.if.end80_crit_edge ]
  %offset.0217 = phi i32 [ %and73, %if.end80.lr.ph ], [ 0, %for.inc.if.end80_crit_edge ]
  %len.0216 = phi i32 [ %mul, %if.end80.lr.ph ], [ %sub104, %for.inc.if.end80_crit_edge ]
  %buf.0215 = phi ptr [ %call9.i, %if.end80.lr.ph ], [ %add.ptr103, %for.inc.if.end80_crit_edge ]
  %sub76 = sub nuw nsw i32 4096, %offset.0217
  %46 = tail call i32 @llvm.umin.i32(i32 %sub76, i32 %len.0216)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %47 = load ptr, ptr @mem_map, align 4
  %48 = ptrtoint ptr %buf.0215 to i32
  %sub85 = add i32 %48, 1073741824
  %shr86 = lshr i32 %sub85, 12
  %add.ptr = getelementptr %struct.page, ptr %47, i32 %shr86
  %49 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bi_opf, align 8
  %51 = and i32 %50, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i183 = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i183, label %if.end80.bio_integrity.exit.i_crit_edge, label %if.then.i.i

if.end80.bio_integrity.exit.i_crit_edge:          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_integrity.exit.i

if.then.i.i:                                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %45, align 4
  br label %bio_integrity.exit.i

bio_integrity.exit.i:                             ; preds = %if.then.i.i, %if.end80.bio_integrity.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %53, %if.then.i.i ], [ null, %if.end80.bio_integrity.exit.i_crit_edge ]
  %bip_vcnt.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %bip_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %bip_vcnt.i, align 4
  %bip_max_vcnt.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %bip_max_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bip_max_vcnt.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %55, i16 %57)
  %cmp.not.i = icmp ult i16 %55, %57
  br i1 %cmp.not.i, label %if.end.i186, label %do.end.i

do.end.i:                                         ; preds = %bio_integrity.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end.i186:                                      ; preds = %bio_integrity.exit.i
  %conv.i184 = zext i16 %55 to i32
  %bip_vec.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i.i, i32 0, i32 7
  %58 = ptrtoint ptr %bip_vec.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bip_vec.i, align 4
  %add.ptr.i = getelementptr %struct.bio_vec, ptr %59, i32 %conv.i184
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i185 = icmp eq i16 %55, 0
  br i1 %tobool.not.i185, label %if.end.i186.for.inc_crit_edge, label %land.lhs.true.i

if.end.i186.for.inc_crit_edge:                    ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end.i186
  %60 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bi_bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %61, i32 0, i32 18
  %62 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bd_queue.i.i, align 4
  %sub.i187 = add nsw i32 %conv.i184, -1
  %virt_boundary_mask.i.i.i = getelementptr inbounds %struct.request_queue, ptr %63, i32 0, i32 37, i32 2
  %64 = ptrtoint ptr %virt_boundary_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %virt_boundary_mask.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i30.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i30.i, label %land.lhs.true.i.for.inc_crit_edge, label %if.end.i.i188

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i188:                                    ; preds = %land.lhs.true.i
  %and.i.i.i = and i32 %65, %offset.0217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %bvec_gap_to_prev.exit.i, label %if.end.i.i188.cleanup_crit_edge

if.end.i.i188.cleanup_crit_edge:                  ; preds = %if.end.i.i188
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

bvec_gap_to_prev.exit.i:                          ; preds = %if.end.i.i188
  %bv_offset.i.i.i = getelementptr %struct.bio_vec, ptr %59, i32 %sub.i187, i32 2
  %66 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %59, i32 %sub.i187, i32 1
  %68 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bv_len.i.i.i, align 4
  %add.i.i.i = add i32 %69, %67
  %and2.i.i.i = and i32 %add.i.i.i, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.i.i.not.i, label %bvec_gap_to_prev.exit.i.for.inc_crit_edge, label %bvec_gap_to_prev.exit.i.cleanup_crit_edge

bvec_gap_to_prev.exit.i.cleanup_crit_edge:        ; preds = %bvec_gap_to_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

bvec_gap_to_prev.exit.i.for.inc_crit_edge:        ; preds = %bvec_gap_to_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %bvec_gap_to_prev.exit.i.cleanup_crit_edge, %if.end.i.i188.cleanup_crit_edge, %do.end.i
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %err_end_io

for.inc:                                          ; preds = %bvec_gap_to_prev.exit.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end.i186.for.inc_crit_edge
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr, ptr %add.ptr.i, align 4
  %bv_len.i = getelementptr %struct.bio_vec, ptr %59, i32 %conv.i184, i32 1
  %71 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %46, ptr %bv_len.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %59, i32 %conv.i184, i32 2
  %72 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %offset.0217, ptr %bv_offset.i, align 4
  %73 = ptrtoint ptr %bip_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %bip_vcnt.i, align 4
  %inc.i = add i16 %74, 1
  store i16 %inc.i, ptr %bip_vcnt.i, align 4
  %add.ptr103 = getelementptr i8, ptr %buf.0215, i32 %46
  %sub104 = sub i32 %len.0216, %46
  %inc = add nuw i32 %i.0218, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub49)
  %cmp74 = icmp uge i32 %inc, %sub49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub104)
  %cmp77 = icmp eq i32 %sub104, 0
  %or.cond = select i1 %cmp74, i1 true, i1 %cmp77
  br i1 %or.cond, label %for.inc.for.end_crit_edge, label %for.inc.if.end80_crit_edge

for.inc.if.end80_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end72.for.end_crit_edge
  %75 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bi_opf, align 8
  %and.i190 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %tobool.i191.not = icmp eq i32 %and.i190, 0
  br i1 %tobool.i191.not, label %if.else117, label %if.then112

if.then112:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %integrity.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %integrity.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %call116 = tail call fastcc zeroext i8 @bio_integrity_process(ptr noundef %bio, ptr noundef %bi_iter, ptr noundef %80)
  br label %cleanup120

if.else117:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %bio_iter = getelementptr inbounds %struct.bio_integrity_payload, ptr %call50, i32 0, i32 5
  %81 = call ptr @memcpy(ptr %bio_iter, ptr %bi_iter, i32 20)
  br label %cleanup120

err_end_io:                                       ; preds = %cleanup, %do.end55, %do.end
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %82 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 9, ptr %bi_status, align 2
  tail call void @bio_endio(ptr noundef %bio) #9
  br label %cleanup120

cleanup120:                                       ; preds = %err_end_io, %if.else117, %if.then112, %lor.lhs.false25.cleanup120_crit_edge, %if.else.cleanup120_crit_edge, %lor.lhs.false.cleanup120_crit_edge, %if.then17.cleanup120_crit_edge, %bio_integrity.exit.cleanup120_crit_edge, %if.end5.cleanup120_crit_edge, %if.end.cleanup120_crit_edge, %entry.cleanup120_crit_edge
  %retval.0 = phi i1 [ false, %err_end_io ], [ true, %entry.cleanup120_crit_edge ], [ true, %if.end.cleanup120_crit_edge ], [ true, %if.end5.cleanup120_crit_edge ], [ true, %bio_integrity.exit.cleanup120_crit_edge ], [ true, %lor.lhs.false.cleanup120_crit_edge ], [ true, %if.then17.cleanup120_crit_edge ], [ true, %lor.lhs.false25.cleanup120_crit_edge ], [ true, %if.else.cleanup120_crit_edge ], [ true, %if.else117 ], [ true, %if.then112 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @bio_integrity_process(ptr nocapture noundef readonly %bio, ptr nocapture noundef readonly %proc_iter, ptr nocapture noundef readonly %proc_fn) unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.blk_integrity_iter, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue.i, align 4
  %integrity.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %integrity.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %integrity.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %.integrity.i = select i1 %tobool.not.i, ptr null, ptr %integrity.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #9
  %8 = call ptr @memset(ptr %iter, i32 255, i32 32)
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %9 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_opf.i, align 8
  %11 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i70 = icmp eq i32 %11, 0
  br i1 %tobool.not.i70, label %entry.bio_integrity.exit_crit_edge, label %if.then.i

entry.bio_integrity.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_integrity.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  br label %bio_integrity.exit

bio_integrity.exit:                               ; preds = %if.then.i, %entry.bio_integrity.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.then.i ], [ null, %entry.bio_integrity.exit_crit_edge ]
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 3
  %disk_name4 = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 5
  %15 = ptrtoint ptr %disk_name4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %disk_name, ptr %disk_name4, align 8
  %interval_exp = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i, i32 0, i32 3
  %16 = ptrtoint ptr %interval_exp to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %interval_exp, align 2
  %conv = zext i8 %17 to i32
  %shl = shl nuw i32 1, %conv
  %conv5 = trunc i32 %shl to i16
  %interval = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 4
  %18 = ptrtoint ptr %interval to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv5, ptr %interval, align 4
  %19 = ptrtoint ptr %proc_iter to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %proc_iter, align 1
  %seed = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 2
  %21 = ptrtoint ptr %seed to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %seed, align 8
  %bip_vec = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 7
  %22 = ptrtoint ptr %bip_vec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bip_vec, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %shr.i.i = lshr i32 %27, 30
  %28 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i.i, label %bio_integrity.exit.bvec_virt.exit_crit_edge [
    i32 2, label %bio_integrity.exit.land.rhs.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

bio_integrity.exit.land.rhs.i_crit_edge:          ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

bio_integrity.exit.bvec_virt.exit_crit_edge:      ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %bvec_virt.exit

is_highmem_idx.exit.i:                            ; preds = %bio_integrity.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %29 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp2.i.not.i = icmp eq i32 %29, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.land.rhs.i_crit_edge, label %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge

is_highmem_idx.exit.i.bvec_virt.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bvec_virt.exit

is_highmem_idx.exit.i.land.rhs.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %is_highmem_idx.exit.i.land.rhs.i_crit_edge, %bio_integrity.exit.land.rhs.i_crit_edge
  %.b43.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.bvec_virt.exit_crit_edge, label %if.then.i71, !prof !61

land.rhs.i.bvec_virt.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bvec_virt.exit

if.then.i71:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 240, i32 noundef 9, ptr noundef null) #9
  br label %bvec_virt.exit

bvec_virt.exit:                                   ; preds = %if.then.i71, %land.rhs.i.bvec_virt.exit_crit_edge, %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge, %bio_integrity.exit.bvec_virt.exit_crit_edge
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %23, align 4
  %call38.i = tail call ptr @page_address(ptr noundef %31) #9
  %bv_offset.i = getelementptr inbounds %struct.bio_vec, ptr %23, i32 0, i32 2
  %32 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bv_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %33
  %34 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i, ptr %iter, align 8
  %bviter.sroa.6.0.proc_iter.sroa_idx = getelementptr inbounds i8, ptr %proc_iter, i32 8
  %35 = ptrtoint ptr %bviter.sroa.6.0.proc_iter.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %bviter.sroa.6.0.copyload = load i32, ptr %bviter.sroa.6.0.proc_iter.sroa_idx, align 1
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bviter.sroa.6.0.copyload)
  %tobool.not83 = icmp eq i32 %bviter.sroa.6.0.copyload, 0
  br i1 %tobool.not83, label %bvec_virt.exit.for.end_crit_edge, label %land.rhs.lr.ph

bvec_virt.exit.for.end_crit_edge:                 ; preds = %bvec_virt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %bvec_virt.exit
  %bviter.sroa.16.0.proc_iter.sroa_idx = getelementptr inbounds i8, ptr %proc_iter, i32 16
  %36 = ptrtoint ptr %bviter.sroa.16.0.proc_iter.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %bviter.sroa.16.0.copyload = load i32, ptr %bviter.sroa.16.0.proc_iter.sroa_idx, align 1
  %bviter.sroa.10.0.proc_iter.sroa_idx = getelementptr inbounds i8, ptr %proc_iter, i32 12
  %37 = ptrtoint ptr %bviter.sroa.10.0.proc_iter.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %bviter.sroa.10.0.copyload = load i32, ptr %bviter.sroa.10.0.proc_iter.sroa_idx, align 1
  %data_buf = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 1
  %data_size = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %bviter.sroa.6.086 = phi i32 [ %bviter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %bviter.sroa.10.085 = phi i32 [ %bviter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %bviter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %bviter.sroa.16.084 = phi i32 [ %bviter.sroa.16.0.copyload, %land.rhs.lr.ph ], [ %bviter.sroa.16.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %38 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %39, i32 %bviter.sroa.10.085
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %39, i32 %bviter.sroa.10.085, i32 2
  %42 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bv_offset, align 4
  %add = add i32 %43, %bviter.sroa.16.084
  %div69 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %41, i32 %div69
  %bv_len15 = getelementptr %struct.bio_vec, ptr %39, i32 %bviter.sroa.10.085, i32 1
  %44 = ptrtoint ptr %bv_len15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bv_len15, align 4
  %sub = sub i32 %45, %bviter.sroa.16.084
  %46 = call i32 @llvm.umin.i32(i32 %bviter.sroa.6.086, i32 %sub)
  %rem = and i32 %add, 4095
  %sub24 = sub nuw nsw i32 4096, %rem
  %47 = call i32 @llvm.umin.i32(i32 %46, i32 %sub24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %48 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %48, 512
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i.i) #9
  %add.ptr.i73 = getelementptr i8, ptr %call.i.i, i32 %rem
  %49 = ptrtoint ptr %data_buf to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i73, ptr %data_buf, align 4
  %50 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %data_size, align 8
  %call42 = call zeroext i8 %proc_fn(ptr noundef nonnull %iter) #9
  call void @kunmap_local_indexed(ptr noundef %add.ptr.i73) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call42)
  %tobool46.not = icmp eq i8 %call42, 0
  br i1 %tobool46.not, label %for.inc, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %51 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bi_opf.i, align 8
  %and.i.i = and i32 %52, 255
  %53 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %53, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %for.inc.bio_advance_iter_single.exit_crit_edge, label %if.else.i

for.inc.bio_advance_iter_single.exit_crit_edge:   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i = add i32 %47, %bviter.sroa.16.084
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %55, i32 %bviter.sroa.10.085, i32 1
  %56 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %57)
  %cmp.i.i = icmp eq i32 %add.i.i, %57
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select82 = add i32 %bviter.sroa.10.085, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %for.inc.bio_advance_iter_single.exit_crit_edge
  %bviter.sroa.16.1 = phi i32 [ %bviter.sroa.16.084, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %bviter.sroa.10.2 = phi i32 [ %bviter.sroa.10.085, %for.inc.bio_advance_iter_single.exit_crit_edge ], [ %spec.select82, %if.else.i ]
  %sub.i.i = sub i32 %bviter.sroa.6.086, %47
  %tobool.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not, label %bio_advance_iter_single.exit.for.end_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

bio_advance_iter_single.exit.for.end_crit_edge:   ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %bio_advance_iter_single.exit.for.end_crit_edge, %land.rhs.for.end_crit_edge, %bvec_virt.exit.for.end_crit_edge
  %ret.1 = phi i8 [ 0, %bvec_virt.exit.for.end_crit_edge ], [ %call42, %land.rhs.for.end_crit_edge ], [ 0, %bio_advance_iter_single.exit.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #9
  ret i8 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__bio_integrity_endio(ptr nocapture noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %0 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue.i, align 4
  %integrity.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %integrity.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %integrity.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %.integrity.i = select i1 %tobool.not.i, ptr null, ptr %integrity.i
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %8 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_opf.i, align 8
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i25 = icmp eq i32 %10, 0
  br i1 %tobool.not.i25, label %entry.bio_integrity.exit_crit_edge, label %if.then.i

entry.bio_integrity.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_integrity.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  br label %bio_integrity.exit

bio_integrity.exit:                               ; preds = %if.then.i, %entry.bio_integrity.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.then.i ], [ null, %entry.bio_integrity.exit_crit_edge ]
  %and = and i32 %9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %bio_integrity.exit.if.end_crit_edge

bio_integrity.exit.if.end_crit_edge:              ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %bio_integrity.exit
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %14 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %bip_flags = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 4
  %16 = ptrtoint ptr %bip_flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bip_flags, align 4
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool4.not = icmp eq i16 %18, 0
  br i1 %tobool4.not, label %land.lhs.true2.if.end_crit_edge, label %land.lhs.true5

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %19 = ptrtoint ptr %.integrity.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.integrity.i, align 4
  %verify_fn = getelementptr inbounds %struct.blk_integrity_profile, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %verify_fn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %verify_fn, align 4
  %tobool6.not = icmp eq ptr %22, null
  br i1 %tobool6.not, label %land.lhs.true5.if.end_crit_edge, label %do.body

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  %bip_work = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %bip_work, i32 noundef 0) #9
  %23 = ptrtoint ptr %bip_work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %bip_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @__bio_integrity_endio.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry10 = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 6, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bio_integrity_verify_fn, ptr %func, align 4
  %27 = load ptr, ptr @kintegrityd_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %bip_work) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %bio_integrity.exit.if.end_crit_edge
  tail call void @bio_integrity_free(ptr noundef %bio)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i1 [ true, %if.end ], [ false, %do.body ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bio_integrity_verify_fn(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue.i, align 4
  %integrity.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %integrity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %integrity.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %.integrity.i = select i1 %tobool.not.i, ptr null, ptr %integrity.i
  %bio_iter = getelementptr i8, ptr %work, i32 -22
  %10 = ptrtoint ptr %.integrity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.integrity.i, align 4
  %verify_fn = getelementptr inbounds %struct.blk_integrity_profile, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %verify_fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %verify_fn, align 4
  %call1 = tail call fastcc zeroext i8 @bio_integrity_process(ptr noundef %1, ptr noundef %bio_iter, ptr noundef %13)
  %bi_status = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call1, ptr %bi_status, align 2
  tail call void @bio_integrity_free(ptr noundef %1)
  tail call void @bio_endio(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bio_integrity_advance(ptr nocapture noundef readonly %bio, i32 noundef %bytes_done) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i, align 8
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.bio_integrity.exit_crit_edge, label %if.then.i

entry.bio_integrity.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_integrity.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %bio_integrity.exit

bio_integrity.exit:                               ; preds = %if.then.i, %entry.bio_integrity.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ null, %entry.bio_integrity.exit_crit_edge ]
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %6 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_disk, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue.i, align 4
  %integrity.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %integrity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %integrity.i, align 4
  %tobool.not.i12 = icmp eq ptr %13, null
  %.integrity.i = select i1 %tobool.not.i12, ptr null, ptr %integrity.i
  %shr = lshr i32 %bytes_done, 9
  %interval_exp.i.i = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i, i32 0, i32 3
  %14 = ptrtoint ptr %interval_exp.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %interval_exp.i.i, align 2
  %conv.i.i = zext i8 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -9
  %shr.i.i = lshr i32 %shr, %sub.i.i
  %tuple_size.i = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i, i32 0, i32 2
  %16 = ptrtoint ptr %tuple_size.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tuple_size.i, align 1
  %conv.i = zext i8 %17 to i32
  %mul.i = mul nuw nsw i32 %shr.i.i, %conv.i
  %conv = zext i32 %shr.i.i to i64
  %bip_iter = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %bip_iter to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %bip_iter, align 4
  %add = add i64 %19, %conv
  store i64 %add, ptr %bip_iter, align 4
  %bip_vec = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 7
  %20 = ptrtoint ptr %bip_vec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bip_vec, align 4
  %bi_idx.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1, i32 2
  %bi_size.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %bi_size.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %mul.i)
  %cmp.i = icmp ult i32 %23, %mul.i
  br i1 %cmp.i, label %land.rhs.i, label %if.end38.i

land.rhs.i:                                       ; preds = %bio_integrity.exit
  %.b1.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then36.i_crit_edge, label %if.then.i14, !prof !61

land.rhs.i.if.then36.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

if.then.i14:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.16) #9
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.then.i14, %land.rhs.i.if.then36.i_crit_edge
  %24 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %bi_size.i, align 1
  br label %bvec_iter_advance.exit

if.end38.i:                                       ; preds = %bio_integrity.exit
  %25 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %bi_idx.i, align 1
  %sub.i15 = sub i32 %23, %mul.i
  %27 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %sub.i15, ptr %bi_size.i, align 1
  %bi_bvec_done.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %bi_bvec_done.i, align 1
  %add.i = add i32 %29, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool40.not3.i = icmp eq i32 %add.i, 0
  br i1 %tobool40.not3.i, label %if.end38.i.while.end.i_crit_edge, label %if.end38.i.land.rhs41.i_crit_edge

if.end38.i.land.rhs41.i_crit_edge:                ; preds = %if.end38.i
  br label %land.rhs41.i

if.end38.i.while.end.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

land.rhs41.i:                                     ; preds = %while.body.i.land.rhs41.i_crit_edge, %if.end38.i.land.rhs41.i_crit_edge
  %bytes.addr.05.i = phi i32 [ %sub46.i, %while.body.i.land.rhs41.i_crit_edge ], [ %add.i, %if.end38.i.land.rhs41.i_crit_edge ]
  %idx.04.i = phi i32 [ %inc.i, %while.body.i.land.rhs41.i_crit_edge ], [ %26, %if.end38.i.land.rhs41.i_crit_edge ]
  %bv_len.i = getelementptr %struct.bio_vec, ptr %21, i32 %idx.04.i, i32 1
  %30 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i, i32 %31)
  %cmp42.not.i = icmp ult i32 %bytes.addr.05.i, %31
  br i1 %cmp42.not.i, label %land.rhs41.i.while.end.i_crit_edge, label %while.body.i

land.rhs41.i.while.end.i_crit_edge:               ; preds = %land.rhs41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs41.i
  %sub46.i = sub i32 %bytes.addr.05.i, %31
  %inc.i = add i32 %idx.04.i, 1
  %tobool40.not.i = icmp eq i32 %sub46.i, 0
  br i1 %tobool40.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.land.rhs41.i_crit_edge

while.body.i.land.rhs41.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs41.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs41.i.while.end.i_crit_edge, %if.end38.i.while.end.i_crit_edge
  %idx.0.lcssa.i = phi i32 [ %26, %if.end38.i.while.end.i_crit_edge ], [ %idx.04.i, %land.rhs41.i.while.end.i_crit_edge ], [ %inc.i, %while.body.i.while.end.i_crit_edge ]
  %bytes.addr.0.lcssa.i = phi i32 [ 0, %if.end38.i.while.end.i_crit_edge ], [ %bytes.addr.05.i, %land.rhs41.i.while.end.i_crit_edge ], [ 0, %while.body.i.while.end.i_crit_edge ]
  %32 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %idx.0.lcssa.i, ptr %bi_idx.i, align 1
  %33 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %bytes.addr.0.lcssa.i, ptr %bi_bvec_done.i, align 1
  br label %bvec_iter_advance.exit

bvec_iter_advance.exit:                           ; preds = %while.end.i, %if.then36.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @bio_integrity_trim(ptr nocapture noundef readonly %bio) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i, align 8
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.bio_integrity.exit_crit_edge, label %if.then.i

entry.bio_integrity.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bio_integrity.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %bio_integrity.exit

bio_integrity.exit:                               ; preds = %if.then.i, %entry.bio_integrity.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ null, %entry.bio_integrity.exit_crit_edge ]
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %6 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_disk, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue.i, align 4
  %integrity.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %integrity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %integrity.i, align 4
  %tobool.not.i6 = icmp eq ptr %13, null
  %.integrity.i = select i1 %tobool.not.i6, ptr null, ptr %integrity.i
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %15, 9
  %interval_exp.i.i = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i, i32 0, i32 3
  %16 = ptrtoint ptr %interval_exp.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %interval_exp.i.i, align 2
  %conv.i.i = zext i8 %17 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -9
  %shr.i.i = lshr i32 %shr, %sub.i.i
  %tuple_size.i = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i, i32 0, i32 2
  %18 = ptrtoint ptr %tuple_size.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tuple_size.i, align 1
  %conv.i = zext i8 %19 to i32
  %mul.i = mul nuw nsw i32 %shr.i.i, %conv.i
  %bi_size3 = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %bi_size3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i, ptr %bi_size3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bio_integrity_clone(ptr noundef %bio, ptr nocapture noundef readonly %bio_src, i32 noundef %gfp_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio_src, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i, align 8
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.do.body2_crit_edge, label %bio_integrity.exit

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

bio_integrity.exit:                               ; preds = %entry
  %3 = getelementptr inbounds %struct.bio, ptr %bio_src, i32 0, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %bio_integrity.exit.do.body2_crit_edge, label %do.end7, !prof !62

bio_integrity.exit.do.body2_crit_edge:            ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.body2:                                         ; preds = %bio_integrity.exit.do.body2_crit_edge, %entry.do.body2_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bio-integrity.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 409, 0\0A.popsection", ""() #9, !srcloc !63
  unreachable

do.end7:                                          ; preds = %bio_integrity.exit
  %bip_vcnt = getelementptr inbounds %struct.bio_integrity_payload, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bip_vcnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bip_vcnt, align 4
  %conv = zext i16 %7 to i32
  %call8 = tail call ptr @bio_integrity_alloc(ptr noundef %bio, i32 noundef %gfp_mask, i32 noundef %conv)
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %bip_vec = getelementptr inbounds %struct.bio_integrity_payload, ptr %call8, i32 0, i32 7
  %9 = ptrtoint ptr %bip_vec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bip_vec, align 4
  %bip_vec13 = getelementptr inbounds %struct.bio_integrity_payload, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %bip_vec13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bip_vec13, align 4
  %13 = ptrtoint ptr %bip_vcnt to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bip_vcnt, align 4
  %conv15 = zext i16 %14 to i32
  %mul = mul nuw nsw i32 %conv15, 12
  %15 = call ptr @memcpy(ptr %10, ptr %12, i32 %mul)
  %16 = load i16, ptr %bip_vcnt, align 4
  %bip_vcnt17 = getelementptr inbounds %struct.bio_integrity_payload, ptr %call8, i32 0, i32 2
  %17 = ptrtoint ptr %bip_vcnt17 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %bip_vcnt17, align 4
  %bip_iter = getelementptr inbounds %struct.bio_integrity_payload, ptr %call8, i32 0, i32 1
  %bip_iter18 = getelementptr inbounds %struct.bio_integrity_payload, ptr %5, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %bip_iter, ptr %bip_iter18, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10
  %retval.0 = phi i32 [ %8, %if.then10 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bioset_integrity_create(ptr noundef %bs, i32 noundef %pool_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_integrity_pool = getelementptr inbounds %struct.bio_set, ptr %bs, i32 0, i32 5
  %elements.i = getelementptr inbounds %struct.bio_set, ptr %bs, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elements.i, align 4
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @bip_slab, align 4
  %call.i = tail call i32 @mempool_init(ptr noundef %bio_integrity_pool, i32 noundef %pool_size, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end4:                                          ; preds = %if.end
  %bvec_integrity_pool = getelementptr inbounds %struct.bio_set, ptr %bs, i32 0, i32 6
  %call5 = tail call i32 @biovec_init_pool(ptr noundef %bvec_integrity_pool, i32 noundef %pool_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.return_crit_edge, label %if.then7

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mempool_exit(ptr noundef %bio_integrity_pool) #9
  br label %return

return:                                           ; preds = %if.then7, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %if.then7 ], [ 0, %entry.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ 0, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @biovec_init_pool(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bioset_integrity_free(ptr noundef %bs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_integrity_pool = getelementptr inbounds %struct.bio_set, ptr %bs, i32 0, i32 5
  tail call void @mempool_exit(ptr noundef %bio_integrity_pool) #9
  %bvec_integrity_pool = getelementptr inbounds %struct.bio_set, ptr %bs, i32 0, i32 6
  tail call void @mempool_exit(ptr noundef %bvec_integrity_pool) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @bio_integrity_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.12, i32 noundef 56, i32 noundef 1) #9
  store ptr %call, ptr @kintegrityd_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.13) #14
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.14, i32 noundef 148, i32 noundef 0, i32 noundef 270336, ptr noundef null) #9
  store ptr %call1, ptr @bip_slab, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bvec_free(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../block/bio-integrity.c", i32 56, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_bio_integrity_alloc, !4, !"__ksymtab_bio_integrity_alloc", i1 false, i1 false}
!4 = !{!"../block/bio-integrity.c", i32 92, i32 1}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../block/bio-integrity.c", i32 130, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @bio_integrity_add_page._entry, !6, !"_entry", i1 false, i1 false}
!9 = !{ptr @bio_integrity_add_page._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_bio_integrity_add_page, !11, !"__ksymtab_bio_integrity_add_page", i1 false, i1 false}
!11 = !{!"../block/bio-integrity.c", i32 148, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../block/bio-integrity.c", i32 238, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @bio_integrity_prep._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @bio_integrity_prep._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../block/bio-integrity.c", i32 249, i32 3}
!19 = !{ptr @bio_integrity_prep._entry.5, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @bio_integrity_prep._entry_ptr.7, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../block/bio-integrity.c", i32 278, i32 4}
!23 = !{ptr @bio_integrity_prep._entry.8, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @bio_integrity_prep._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_bio_integrity_prep, !26, !"__ksymtab_bio_integrity_prep", i1 false, i1 false}
!26 = !{!"../block/bio-integrity.c", i32 306, i32 1}
!27 = !{ptr @__bio_integrity_endio.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../block/bio-integrity.c", i32 352, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__ksymtab_bio_integrity_trim, !31, !"__ksymtab_bio_integrity_trim", i1 false, i1 false}
!31 = !{!"../block/bio-integrity.c", i32 393, i32 1}
!32 = !{ptr @__ksymtab_bio_integrity_clone, !33, !"__ksymtab_bio_integrity_clone", i1 false, i1 false}
!33 = !{!"../block/bio-integrity.c", i32 423, i32 1}
!34 = !{ptr @__ksymtab_bioset_integrity_create, !35, !"__ksymtab_bioset_integrity_create", i1 false, i1 false}
!35 = !{!"../block/bio-integrity.c", i32 441, i32 1}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../block/bio-integrity.c", i32 455, i32 35}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../block/bio-integrity.c", i32 458, i32 9}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../block/bio-integrity.c", i32 460, i32 31}
!42 = !{ptr @bip_slab, !43, !"bip_slab", i1 false, i1 false}
!43 = !{!"../block/bio-integrity.c", i32 17, i32 27}
!44 = !{ptr @kintegrityd_wq, !45, !"kintegrityd_wq", i1 false, i1 false}
!45 = !{!"../block/bio-integrity.c", i32 18, i32 33}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/bvec.h", i32 240, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/bvec.h", i32 106, i32 6}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2154509960, i64 2154510446, i64 2154509997, i64 2154510053, i64 2154510087, i64 2154510111, i64 2154510152, i64 2154510173, i64 2154510201, i64 2154510235}
