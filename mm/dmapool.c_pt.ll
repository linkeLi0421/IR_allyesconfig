; ModuleID = '/llk/IR_all_yes/mm/dmapool.c_pt.bc'
source_filename = "../mm/dmapool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dma_pool_create\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_pool_create\09\09\09\09"
module asm "\09.long\09__crc_dma_pool_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_pool_create\22\09\09\09\09\09"
module asm "__kstrtabns_dma_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_pool_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_pool_destroy\09\09\09\09"
module asm "\09.long\09__crc_dma_pool_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_pool_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dma_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_pool_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_pool_alloc\09\09\09\09"
module asm "\09.long\09__crc_dma_pool_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_pool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_pool_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_dma_pool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dma_pool_free\22, \22a\22\09"
module asm "\09.weak\09__crc_dma_pool_free\09\09\09\09"
module asm "\09.long\09__crc_dma_pool_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_pool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_pool_free\22\09\09\09\09\09"
module asm "__kstrtabns_dma_pool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dmam_pool_create\22, \22a\22\09"
module asm "\09.weak\09__crc_dmam_pool_create\09\09\09\09"
module asm "\09.long\09__crc_dmam_pool_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmam_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dmam_pool_create\22\09\09\09\09\09"
module asm "__kstrtabns_dmam_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dmam_pool_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_dmam_pool_destroy\09\09\09\09"
module asm "\09.long\09__crc_dmam_pool_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmam_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dmam_pool_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dmam_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.dma_pool = type { %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, [32 x i8], %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dma_page = type { %struct.list_head, ptr, i32, i32, i32 }

@dma_pool_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&retval->lock\00", [18 x i8] zeroinitializer }, align 32
@pools_reg_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pools_reg_lock, i64 52), ptr getelementptr (i8, ptr @pools_reg_lock, i64 52) }, ptr @pools_reg_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pools_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pools_lock, i64 52), ptr getelementptr (i8, ptr @pools_lock, i64 52) }, ptr @pools_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pools = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pools_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_dma_pool_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_pool_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_pool_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_pool_create to i32), ptr @__kstrtab_dma_pool_create, ptr @__kstrtabns_dma_pool_create }, section "___ksymtab+dma_pool_create", align 4
@dma_pool_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s, %p busy\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma_pool_destroy\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm/dmapool.c\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dma_pool_destroy._entry_ptr = internal global ptr @dma_pool_destroy._entry, section ".printk_index", align 4
@dma_pool_destroy._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s %s, %p busy\0A\00", [46 x i8] zeroinitializer }, align 32
@dma_pool_destroy._entry_ptr.8 = internal global ptr @dma_pool_destroy._entry.6, section ".printk_index", align 4
@__kstrtab_dma_pool_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_pool_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_pool_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_pool_destroy to i32), ptr @__kstrtab_dma_pool_destroy, ptr @__kstrtabns_dma_pool_destroy }, section "___ksymtab+dma_pool_destroy", align 4
@dma_pool_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s %s, %p (corrupted)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dma_pool_alloc\00", [17 x i8] zeroinitializer }, align 32
@dma_pool_alloc._entry_ptr = internal global ptr @dma_pool_alloc._entry, section ".printk_index", align 4
@dma_pool_alloc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s %s, %p (corrupted)\0A\00", [39 x i8] zeroinitializer }, align 32
@dma_pool_alloc._entry_ptr.13 = internal global ptr @dma_pool_alloc._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab_dma_pool_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_pool_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_pool_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_pool_alloc to i32), ptr @__kstrtab_dma_pool_alloc, ptr @__kstrtabns_dma_pool_alloc }, section "___ksymtab+dma_pool_alloc", align 4
@dma_pool_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 416, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s %s, %p/%pad (bad dma)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dma_pool_free\00", [18 x i8] zeroinitializer }, align 32
@dma_pool_free._entry_ptr = internal global ptr @dma_pool_free._entry, section ".printk_index", align 4
@dma_pool_free._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s %s, %p/%pad (bad dma)\0A\00", [36 x i8] zeroinitializer }, align 32
@dma_pool_free._entry_ptr.19 = internal global ptr @dma_pool_free._entry.17, section ".printk_index", align 4
@dma_pool_free._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s %s, %p (bad vaddr)/%pad\0A\00", [36 x i8] zeroinitializer }, align 32
@dma_pool_free._entry_ptr.22 = internal global ptr @dma_pool_free._entry.20, section ".printk_index", align 4
@dma_pool_free._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s %s, %p (bad vaddr)/%pad\0A\00", [34 x i8] zeroinitializer }, align 32
@dma_pool_free._entry_ptr.25 = internal global ptr @dma_pool_free._entry.23, section ".printk_index", align 4
@dma_pool_free._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.3, i32 447, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s, dma %pad already free\0A\00", [34 x i8] zeroinitializer }, align 32
@dma_pool_free._entry_ptr.28 = internal global ptr @dma_pool_free._entry.26, section ".printk_index", align 4
@dma_pool_free._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.3, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s %s, dma %pad already free\0A\00", [32 x i8] zeroinitializer }, align 32
@dma_pool_free._entry_ptr.31 = internal global ptr @dma_pool_free._entry.29, section ".printk_index", align 4
@__kstrtab_dma_pool_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_pool_free = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_pool_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_pool_free to i32), ptr @__kstrtab_dma_pool_free, ptr @__kstrtabns_dma_pool_free }, section "___ksymtab+dma_pool_free", align 4
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dmam_pool_release\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_dmam_pool_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmam_pool_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dmam_pool_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmam_pool_create to i32), ptr @__kstrtab_dmam_pool_create, ptr @__kstrtabns_dmam_pool_create }, section "___ksymtab+dmam_pool_create", align 4
@__kstrtab_dmam_pool_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmam_pool_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dmam_pool_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmam_pool_destroy to i32), ptr @__kstrtab_dmam_pool_destroy, ptr @__kstrtabns_dmam_pool_destroy }, section "___ksymtab+dmam_pool_destroy", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pools_reg_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pools_reg_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pools_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pools_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pools\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"poolinfo - 0.1\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%-16s %4u %4zu %4zu %2u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/sched/mm.h\00", [39 x i8] zeroinitializer }, align 32
@init_on_alloc = external dso_local global %struct.static_key_true, align 4
@init_on_free = external dso_local global %struct.static_key_true, align 4
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 164, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"pools_reg_lock\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"pools_lock\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"dev_attr_pools\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 288, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 291, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 355, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 358, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 365, i32 29 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 415, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 418, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 430, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 433, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 446, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 449, i32 5 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 503, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 63, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 62, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 105, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 76, i32 31 }
@___asan_gen_.159 = private constant [16 x i8] c"../mm/dmapool.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 93, i32 32 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [28 x i8] c"../include/linux/sched/mm.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 256, i32 2 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__ksymtab_dma_pool_alloc, ptr @__ksymtab_dma_pool_create, ptr @__ksymtab_dma_pool_destroy, ptr @__ksymtab_dma_pool_free, ptr @__ksymtab_dmam_pool_create, ptr @__ksymtab_dmam_pool_destroy, ptr @dma_pool_alloc._entry, ptr @dma_pool_alloc._entry.11, ptr @dma_pool_alloc._entry_ptr, ptr @dma_pool_alloc._entry_ptr.13, ptr @dma_pool_destroy._entry, ptr @dma_pool_destroy._entry.6, ptr @dma_pool_destroy._entry_ptr, ptr @dma_pool_destroy._entry_ptr.8, ptr @dma_pool_free._entry, ptr @dma_pool_free._entry.17, ptr @dma_pool_free._entry.20, ptr @dma_pool_free._entry.23, ptr @dma_pool_free._entry.26, ptr @dma_pool_free._entry.29, ptr @dma_pool_free._entry_ptr, ptr @dma_pool_free._entry_ptr.19, ptr @dma_pool_free._entry_ptr.22, ptr @dma_pool_free._entry_ptr.25, ptr @dma_pool_free._entry_ptr.28, ptr @dma_pool_free._entry_ptr.31, ptr @dma_pool_create.__key, ptr @.str, ptr @pools_reg_lock, ptr @pools_lock, ptr @dev_attr_pools, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pool_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pools_reg_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pools_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pools to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pool_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pool_destroy._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pool_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pool_alloc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pool_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pool_free._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pool_free._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pool_free._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pool_free._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_pool_free._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_pool_create(ptr noundef %name, ptr noundef %dev, i32 noundef %size, i32 noundef %align, i32 noundef %boundary) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align)
  %cmp = icmp eq i32 %align, 0
  br i1 %cmp, label %entry.if.end3_crit_edge, label %if.else

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.else:                                          ; preds = %entry
  %0 = tail call i32 @llvm.ctpop.i32(i32 %align), !range !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %tobool.not = icmp ult i32 %0, 2
  br i1 %tobool.not, label %if.else.if.end3_crit_edge, label %if.else.cleanup49_crit_edge

if.else.cleanup49_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end3:                                          ; preds = %if.else.if.end3_crit_edge, %entry.if.end3_crit_edge
  %align.addr.0 = phi i32 [ %align, %if.else.if.end3_crit_edge ], [ 1, %entry.if.end3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp4 = icmp eq i32 %size, 0
  br i1 %cmp4, label %if.end3.cleanup49_crit_edge, label %if.else6

if.end3.cleanup49_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

if.else6:                                         ; preds = %if.end3
  %1 = tail call i32 @llvm.umax.i32(i32 %size, i32 4)
  %sub11 = add i32 %1, -1
  %add = add i32 %sub11, %align.addr.0
  %neg = sub i32 0, %align.addr.0
  %and13 = and i32 %add, %neg
  %2 = tail call i32 @llvm.umax.i32(i32 %and13, i32 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boundary)
  %tobool15.not = icmp eq i32 %boundary, 0
  br i1 %tobool15.not, label %if.else6.if.end24_crit_edge, label %if.else17

if.else6.if.end24_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else17:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_cmp4(i32 %and13, i32 %boundary)
  %cmp18 = icmp ule i32 %and13, %boundary
  %3 = tail call i32 @llvm.ctpop.i32(i32 %boundary), !range !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %tobool21.not = icmp ult i32 %3, 2
  %or.cond = and i1 %tobool21.not, %cmp18
  br i1 %or.cond, label %if.else17.if.end24_crit_edge, label %if.else17.cleanup49_crit_edge

if.else17.cleanup49_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

if.else17.if.end24_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end24:                                         ; preds = %if.else17.if.end24_crit_edge, %if.else6.if.end24_crit_edge
  %boundary.addr.0 = phi i32 [ %2, %if.else6.if.end24_crit_edge ], [ %boundary, %if.else17.if.end24_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 108) #9
  %tobool25.not = icmp eq ptr %call7.i, null
  br i1 %tobool25.not, label %if.end24.cleanup49_crit_edge, label %if.end27

if.end24.cleanup49_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

if.end27:                                         ; preds = %if.end24
  %name28 = getelementptr inbounds %struct.dma_pool, ptr %call7.i, i32 0, i32 6
  %call29 = tail call i32 @strscpy(ptr noundef %name28, ptr noundef %name, i32 noundef 32) #6
  %dev30 = getelementptr inbounds %struct.dma_pool, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev30, align 8
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.dma_pool, ptr %call7.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @dma_pool_create.__key, i16 noundef signext 3) #6
  %size32 = getelementptr inbounds %struct.dma_pool, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %size32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and13, ptr %size32, align 4
  %boundary33 = getelementptr inbounds %struct.dma_pool, ptr %call7.i, i32 0, i32 5
  %9 = ptrtoint ptr %boundary33 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %boundary.addr.0, ptr %boundary33, align 8
  %allocation34 = getelementptr inbounds %struct.dma_pool, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %allocation34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %2, ptr %allocation34, align 4
  %pools = getelementptr inbounds %struct.dma_pool, ptr %call7.i, i32 0, i32 7
  %11 = ptrtoint ptr %pools to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pools, ptr %pools, align 4
  %prev.i85 = getelementptr inbounds %struct.dma_pool, ptr %call7.i, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pools, ptr %prev.i85, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @pools_reg_lock, i32 noundef 0) #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @pools_lock, i32 noundef 0) #6
  %dma_pools = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 23
  %13 = ptrtoint ptr %dma_pools to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %dma_pools, align 4
  %cmp.i.not = icmp eq ptr %14, %dma_pools
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pools, ptr noundef %dma_pools, ptr noundef %14) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.list_add.exit_crit_edge

if.end27.list_add.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pools, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %pools to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %pools, align 4
  %17 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dma_pools, ptr %prev.i85, align 8
  %18 = ptrtoint ptr %dma_pools to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %pools, ptr %dma_pools, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end27.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pools_lock) #6
  br i1 %cmp.i.not, label %if.then42, label %list_add.exit.if.end48_crit_edge

list_add.exit.if.end48_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then42:                                        ; preds = %list_add.exit
  %call43 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_pools) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then42.if.end48_crit_edge, label %if.then45

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then45:                                        ; preds = %if.then42
  tail call void @mutex_lock_nested(ptr noundef nonnull @pools_lock, i32 noundef 0) #6
  %call.i.i86 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pools) #6
  br i1 %call.i.i86, label %if.end.i.i87, label %if.then45.list_del.exit_crit_edge

if.then45.list_del.exit_crit_edge:                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i87:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i85, align 8
  %21 = ptrtoint ptr %pools to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pools, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i87, %if.then45.list_del.exit_crit_edge
  %25 = ptrtoint ptr %pools to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %pools, align 4
  %26 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i85, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @pools_lock) #6
  tail call void @mutex_unlock(ptr noundef nonnull @pools_reg_lock) #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup49

if.end48:                                         ; preds = %if.then42.if.end48_crit_edge, %list_add.exit.if.end48_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pools_reg_lock) #6
  br label %cleanup49

cleanup49:                                        ; preds = %if.end48, %list_del.exit, %if.end24.cleanup49_crit_edge, %if.else17.cleanup49_crit_edge, %if.end3.cleanup49_crit_edge, %if.else.cleanup49_crit_edge
  %retval.1 = phi ptr [ %call7.i, %if.end48 ], [ null, %if.else.cleanup49_crit_edge ], [ null, %if.end3.cleanup49_crit_edge ], [ null, %if.else17.cleanup49_crit_edge ], [ null, %if.end24.cleanup49_crit_edge ], [ null, %list_del.exit ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_pool_destroy(ptr noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !92

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @pools_reg_lock, i32 noundef 0) #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @pools_lock, i32 noundef 0) #6
  %pools = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pools) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %pools to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pools, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %pools to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %pools, align 4
  %prev.i = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dev = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end12.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %list_del.exit
  %dma_pools = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %dma_pools to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %dma_pools, align 4
  %cmp.i.not = icmp eq ptr %11, %dma_pools
  tail call void @mutex_unlock(ptr noundef nonnull @pools_lock) #6
  br i1 %cmp.i.not, label %if.then10, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void @device_remove_file(ptr noundef %13, ptr noundef nonnull @dev_attr_pools) #6
  br label %if.end12

if.end12.critedge:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef nonnull @pools_lock) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end12.critedge, %if.then10, %land.lhs.true.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pools_reg_lock) #6
  %14 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pool, align 4
  %cmp.not78 = icmp eq ptr %15, %pool
  br i1 %cmp.not78, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %name = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 6
  %allocation.i = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %page.079 = phi ptr [ %15, %for.body.lr.ph ], [ %tmp.082, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %page.079 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.082 = load ptr, ptr %page.079, align 4
  %in_use.i = getelementptr inbounds %struct.dma_page, ptr %page.079, i32 0, i32 3
  %17 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i69.not = icmp eq i32 %18, 0
  br i1 %cmp.i69.not, label %if.else39, label %if.then24

if.then24:                                        ; preds = %for.body
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %tobool26.not = icmp eq ptr %20, null
  %vaddr35 = getelementptr inbounds %struct.dma_page, ptr %page.079, i32 0, i32 1
  %21 = ptrtoint ptr %vaddr35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vaddr35, align 4
  br i1 %tobool26.not, label %do.end31, label %do.end

do.end:                                           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %name, ptr noundef %22) #10
  br label %if.end37

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, ptr noundef %name, ptr noundef %22) #10
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %do.end
  %call.i.i70 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %page.079) #6
  br i1 %call.i.i70, label %if.end.i.i73, label %if.end37.for.inc_crit_edge

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i73:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i71 = getelementptr inbounds %struct.list_head, ptr %page.079, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i71, align 4
  %25 = ptrtoint ptr %page.079 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page.079, align 4
  %prev1.i.i.i72 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i72, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %for.inc

if.else39:                                        ; preds = %for.body
  %dma1.i = getelementptr inbounds %struct.dma_page, ptr %page.079, i32 0, i32 2
  %29 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma1.i, align 4
  %vaddr.i = getelementptr inbounds %struct.dma_page, ptr %page.079, i32 0, i32 1
  %31 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vaddr.i, align 4
  %33 = ptrtoint ptr %allocation.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %allocation.i, align 4
  %35 = call ptr @memset(ptr %32, i32 167, i32 %34)
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = load i32, ptr %allocation.i, align 4
  %39 = load ptr, ptr %vaddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %37, i32 noundef %38, ptr noundef %39, i32 noundef %30, i32 noundef 0) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %page.079) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else39.for.inc_crit_edge

if.else39.for.inc_crit_edge:                      ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %page.079, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %page.079 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %page.079, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %if.else39.for.inc_crit_edge, %if.end.i.i73, %if.end37.for.inc_crit_edge
  %46 = ptrtoint ptr %page.079 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %page.079, align 4
  %prev.i74 = getelementptr inbounds %struct.list_head, ptr %page.079, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i74, align 4
  tail call void @kfree(ptr noundef %page.079) #6
  %cmp.not = icmp eq ptr %tmp.082, %pool
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %pool) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_pool_alloc(ptr noundef %pool, i32 noundef %mem_flags, ptr nocapture noundef writeonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fs_reclaim_acquire(i32 noundef %mem_flags) #6
  tail call void @fs_reclaim_release(i32 noundef %mem_flags) #6
  %and.i.i = and i32 %mem_flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.might_alloc.exit_crit_edge, label %do.body1.i

entry.might_alloc.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %might_alloc.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.40, i32 noundef 256) #6
  br label %might_alloc.exit

might_alloc.exit:                                 ; preds = %do.body1.i, %entry.might_alloc.exit_crit_edge
  %lock = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %allocation = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %might_alloc.exit
  %page.0.in = phi ptr [ %pool, %might_alloc.exit ], [ %page.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %page.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %page.0 = load ptr, ptr %page.0.in, align 4
  %cmp9.not = icmp eq ptr %page.0, %pool
  br i1 %cmp9.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %offset11 = getelementptr inbounds %struct.dma_page, ptr %page.0, i32 0, i32 4
  %1 = ptrtoint ptr %offset11 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset11, align 4
  %3 = ptrtoint ptr %allocation to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %allocation, align 4
  %cmp12 = icmp ult i32 %2, %4
  br i1 %cmp12, label %for.body.ready_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.ready_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ready

for.end:                                          ; preds = %for.cond
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %and = and i32 %mem_flags, -257
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.end.kmalloc.exit.i_crit_edge, label %if.end.i.i.i, !prof !93

for.end.kmalloc.exit.i_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit.i

if.end.i.i.i:                                     ; preds = %for.end
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kmalloc.exit.i_crit_edge

if.end.i.i.i.kmalloc.exit.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kmalloc.exit.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kmalloc.exit.i

kmalloc.exit.i:                                   ; preds = %if.end5.i.i.i, %if.end.i.i.i.kmalloc.exit.i_crit_edge, %for.end.kmalloc.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %for.end.kmalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.kmalloc.exit.i_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %5 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef %and, i32 noundef 24) #9
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %kmalloc.exit.i.cleanup_crit_edge, label %if.end.i

kmalloc.exit.i.cleanup_crit_edge:                 ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %kmalloc.exit.i
  %dev.i = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %allocation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %allocation, align 4
  %dma.i = getelementptr inbounds %struct.dma_page, ptr %call7.i.i, i32 0, i32 2
  %and.i.i124 = lshr i32 %mem_flags, 5
  %11 = and i32 %and.i.i124, 256
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef %10, ptr noundef %dma.i, i32 noundef %and, i32 noundef %11) #6
  %vaddr.i = getelementptr inbounds %struct.dma_page, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %vaddr.i, align 8
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %allocation to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %allocation, align 4
  %15 = call ptr @memset(ptr %call.i.i, i32 167, i32 %14)
  %boundary.i.i = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 5
  %16 = ptrtoint ptr %boundary.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %boundary.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.then4.i
  %offset.0.i.i = phi i32 [ 0, %if.then4.i ], [ %next.0.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %next_boundary.0.i.i = phi i32 [ %17, %if.then4.i ], [ %next_boundary.1.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %19, %offset.0.i.i
  %add2.i.i = add i32 %add.i.i, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i, i32 %next_boundary.0.i.i)
  %cmp.not.i.i = icmp ult i32 %add2.i.i, %next_boundary.0.i.i
  br i1 %cmp.not.i.i, label %do.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i, !prof !93

do.body.i.i.if.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %boundary.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %boundary.i.i, align 4
  %add5.i.i = add i32 %21, %next_boundary.0.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %do.body.i.i.if.end.i.i_crit_edge
  %next_boundary.1.i.i = phi i32 [ %add5.i.i, %if.then.i.i ], [ %next_boundary.0.i.i, %do.body.i.i.if.end.i.i_crit_edge ]
  %next.0.i.i = phi i32 [ %next_boundary.0.i.i, %if.then.i.i ], [ %add.i.i, %do.body.i.i.if.end.i.i_crit_edge ]
  %22 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vaddr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %offset.0.i.i
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %next.0.i.i, ptr %add.ptr.i.i, align 4
  %25 = ptrtoint ptr %allocation to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %allocation, align 4
  %cmp6.i.i = icmp ult i32 %next.0.i.i, %26
  br i1 %cmp6.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %pool_alloc_page.exit

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

pool_alloc_page.exit:                             ; preds = %if.end.i.i
  %in_use.i = getelementptr inbounds %struct.dma_page, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %in_use.i, align 8
  %offset.i = getelementptr inbounds %struct.dma_page, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %offset.i, align 4
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %29 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pool, align 4
  %call.i.i125 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %pool, ptr noundef %30) #6
  br i1 %call.i.i125, label %if.end.i.i126, label %pool_alloc_page.exit.ready_crit_edge

pool_alloc_page.exit.ready_crit_edge:             ; preds = %pool_alloc_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ready

if.end.i.i126:                                    ; preds = %pool_alloc_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pool, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %pool, align 4
  br label %ready

ready:                                            ; preds = %if.end.i.i126, %pool_alloc_page.exit.ready_crit_edge, %for.body.ready_crit_edge
  %page.1 = phi ptr [ %call7.i.i, %pool_alloc_page.exit.ready_crit_edge ], [ %call7.i.i, %if.end.i.i126 ], [ %page.0, %for.body.ready_crit_edge ]
  %flags.0 = phi i32 [ %call32, %pool_alloc_page.exit.ready_crit_edge ], [ %call32, %if.end.i.i126 ], [ %call3, %for.body.ready_crit_edge ]
  %in_use = getelementptr inbounds %struct.dma_page, ptr %page.1, i32 0, i32 3
  %35 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in_use, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %in_use, align 4
  %offset39 = getelementptr inbounds %struct.dma_page, ptr %page.1, i32 0, i32 4
  %37 = ptrtoint ptr %offset39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset39, align 4
  %vaddr = getelementptr inbounds %struct.dma_page, ptr %page.1, i32 0, i32 1
  %39 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vaddr, align 4
  %add.ptr40 = getelementptr i8, ptr %40, i32 %38
  %41 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr40, align 4
  store i32 %42, ptr %offset39, align 4
  %dma = getelementptr inbounds %struct.dma_page, ptr %page.1, i32 0, i32 2
  %43 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma, align 4
  %add = add i32 %44, %38
  %45 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add, ptr %handle, align 4
  %size = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 2
  %46 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp45134 = icmp ugt i32 %47, 4
  br i1 %cmp45134, label %ready.for.body47_crit_edge, label %ready.for.end70_crit_edge

ready.for.end70_crit_edge:                        ; preds = %ready
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end70

ready.for.body47_crit_edge:                       ; preds = %ready
  br label %for.body47

for.cond44:                                       ; preds = %for.body47
  %inc69 = add nuw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc69, %47
  br i1 %exitcond.not, label %for.cond44.for.end70_crit_edge, label %for.cond44.for.body47_crit_edge

for.cond44.for.body47_crit_edge:                  ; preds = %for.cond44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body47

for.cond44.for.end70_crit_edge:                   ; preds = %for.cond44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end70

for.body47:                                       ; preds = %for.cond44.for.body47_crit_edge, %ready.for.body47_crit_edge
  %i.0135 = phi i32 [ %inc69, %for.cond44.for.body47_crit_edge ], [ 4, %ready.for.body47_crit_edge ]
  %arrayidx = getelementptr i8, ptr %add.ptr40, i32 %i.0135
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -89, i8 %49)
  %cmp49 = icmp eq i8 %49, -89
  br i1 %cmp49, label %for.cond44, label %if.end52

if.end52:                                         ; preds = %for.body47
  %dev = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 3
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %tobool53.not = icmp eq ptr %51, null
  %name63 = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 6
  br i1 %tobool53.not, label %do.end61, label %do.end57

do.end57:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %51, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef %name63, ptr noundef %add.ptr40) #10
  br label %if.end66

do.end61:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef %name63, ptr noundef %add.ptr40) #10
  br label %if.end66

if.end66:                                         ; preds = %do.end61, %do.end57
  %52 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr40, i32 noundef %53, i1 noundef zeroext true) #6
  br label %for.end70

for.end70:                                        ; preds = %if.end66, %for.cond44.for.end70_crit_edge, %ready.for.end70_crit_edge
  %and71 = and i32 %mem_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.then73, label %for.end70.if.end75_crit_edge

for.end70.if.end75_crit_edge:                     ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then73:                                        ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size, align 4
  %56 = call ptr @memset(ptr %add.ptr40, i32 169, i32 %55)
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %for.end70.if.end75_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_alloc, i32 1), ptr blockaddress(@dma_pool_alloc, %57)) #6
          to label %if.then78 [label %57], !srcloc !94

57:                                               ; preds = %if.end75
  br i1 %tobool72.not, label %.cleanup_crit_edge, label %.if.then78_crit_edge

.if.then78_crit_edge:                             ; preds = %57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78

.cleanup_crit_edge:                               ; preds = %57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then78:                                        ; preds = %.if.then78_crit_edge, %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size, align 4
  %60 = call ptr @memset(ptr %add.ptr40, i32 0, i32 %59)
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %.cleanup_crit_edge, %if.else.i, %kmalloc.exit.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr40, %if.then78 ], [ %add.ptr40, %.cleanup_crit_edge ], [ null, %kmalloc.exit.i.cleanup_crit_edge ], [ null, %if.else.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_pool_free(ptr noundef %pool, ptr noundef %vaddr, i32 noundef %dma) #0 align 64 {
entry:
  %dma.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dma.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dma, ptr %dma.addr, align 4
  %lock = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %1 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %page.021.i = load ptr, ptr %pool, align 4
  %cmp.not22.i = icmp eq ptr %page.021.i, %pool
  br i1 %cmp.not22.i, label %entry.if.then_crit_edge, label %for.body.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %allocation.i = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %page.023.i = phi ptr [ %page.021.i, %for.body.lr.ph.i ], [ %page.0.i, %for.inc.i.for.body.i_crit_edge ]
  %dma3.i = getelementptr inbounds %struct.dma_page, ptr %page.023.i, i32 0, i32 2
  %2 = ptrtoint ptr %dma3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %dma)
  %cmp4.i = icmp ugt i32 %3, %dma
  br i1 %cmp4.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %sub.i = sub i32 %dma, %3
  %4 = ptrtoint ptr %allocation.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %allocation.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp6.i = icmp ult i32 %sub.i, %5
  br i1 %cmp6.i, label %pool_find_page.exit, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %6 = ptrtoint ptr %page.023.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %page.0.i = load ptr, ptr %page.023.i, align 4
  %cmp.not.i = icmp eq ptr %page.0.i, %pool
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pool_find_page.exit:                              ; preds = %if.end.i
  %dma3.i.le = getelementptr inbounds %struct.dma_page, ptr %page.023.i, i32 0, i32 2
  %tobool.not = icmp eq ptr %page.023.i, null
  br i1 %tobool.not, label %pool_find_page.exit.if.then_crit_edge, label %if.end20

pool_find_page.exit.if.then_crit_edge:            ; preds = %pool_find_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %pool_find_page.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %dev = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %tobool7.not = icmp eq ptr %8, null
  %name17 = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 6
  br i1 %tobool7.not, label %do.end15, label %do.end11

do.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %name17, ptr noundef %vaddr, ptr noundef nonnull %dma.addr) #10
  br label %cleanup80

do.end15:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, ptr noundef %name17, ptr noundef %vaddr, ptr noundef nonnull %dma.addr) #10
  br label %cleanup80

if.end20:                                         ; preds = %pool_find_page.exit
  %vaddr21 = getelementptr inbounds %struct.dma_page, ptr %page.023.i, i32 0, i32 1
  %9 = ptrtoint ptr %vaddr21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vaddr21, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %vaddr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_free, i32 1), ptr blockaddress(@dma_pool_free, %if.end24)) #6
          to label %if.then23 [label %if.end24], !srcloc !94

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %size = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %13 = call ptr @memset(ptr %vaddr, i32 0, i32 %12)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20
  %14 = ptrtoint ptr %dma.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma.addr, align 4
  %16 = ptrtoint ptr %dma3.i.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma3.i.le, align 4
  %sub = sub i32 %15, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub.ptr.sub)
  %cmp26.not = icmp eq i32 %sub, %sub.ptr.sub
  br i1 %cmp26.not, label %if.end48, label %if.then28

if.then28:                                        ; preds = %if.end24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %dev30 = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 3
  %18 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev30, align 4
  %tobool31.not = icmp eq ptr %19, null
  %name44 = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 6
  br i1 %tobool31.not, label %do.end42, label %do.end35

do.end35:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %19, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16, ptr noundef %name44, ptr noundef %vaddr, ptr noundef nonnull %dma.addr) #10
  br label %cleanup80

do.end42:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16, ptr noundef %name44, ptr noundef %vaddr, ptr noundef nonnull %dma.addr) #10
  br label %cleanup80

if.end48:                                         ; preds = %if.end24
  %offset49 = getelementptr inbounds %struct.dma_page, ptr %page.023.i, i32 0, i32 4
  %20 = ptrtoint ptr %allocation.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %allocation.i, align 4
  %22 = ptrtoint ptr %offset49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %chain.0133 = load i32, ptr %offset49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chain.0133, i32 %21)
  %cmp50134 = icmp ult i32 %chain.0133, %21
  br i1 %cmp50134, label %if.end48.while.body_crit_edge, label %if.end48.cleanup.cont.critedge_crit_edge

if.end48.cleanup.cont.critedge_crit_edge:         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.cont.critedge

if.end48.while.body_crit_edge:                    ; preds = %if.end48
  br label %while.body

while.body:                                       ; preds = %if.then54.while.body_crit_edge, %if.end48.while.body_crit_edge
  %chain.0135 = phi i32 [ %chain.0, %if.then54.while.body_crit_edge ], [ %chain.0133, %if.end48.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %chain.0135, i32 %sub.ptr.sub)
  %cmp52.not = icmp eq i32 %chain.0135, %sub.ptr.sub
  br i1 %cmp52.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %while.body
  %23 = ptrtoint ptr %vaddr21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vaddr21, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %chain.0135
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %chain.0 = load i32, ptr %add.ptr, align 4
  %cmp50 = icmp ult i32 %chain.0, %21
  br i1 %cmp50, label %if.then54.while.body_crit_edge, label %if.then54.cleanup.cont.critedge_crit_edge

if.then54.cleanup.cont.critedge_crit_edge:        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.cont.critedge

if.then54.while.body_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end56:                                         ; preds = %while.body
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %dev58 = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 3
  %26 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev58, align 4
  %tobool59.not = icmp eq ptr %27, null
  %name72 = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 6
  br i1 %tobool59.not, label %do.end70, label %do.end63

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %27, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.16, ptr noundef %name72, ptr noundef nonnull %dma.addr) #10
  br label %cleanup80

do.end70:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.16, ptr noundef %name72, ptr noundef nonnull %dma.addr) #10
  br label %cleanup80

cleanup.cont.critedge:                            ; preds = %if.then54.cleanup.cont.critedge_crit_edge, %if.end48.cleanup.cont.critedge_crit_edge
  %size76 = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 2
  %28 = ptrtoint ptr %size76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size76, align 4
  %30 = call ptr @memset(ptr %vaddr, i32 167, i32 %29)
  %in_use = getelementptr inbounds %struct.dma_page, ptr %page.023.i, i32 0, i32 3
  %31 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_use, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %in_use, align 4
  %33 = ptrtoint ptr %offset49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset49, align 4
  %35 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %vaddr, align 4
  store i32 %sub.ptr.sub, ptr %offset49, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup.cont.critedge, %do.end70, %do.end63, %do.end42, %do.end35, %do.end15, %do.end11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dmam_pool_create(ptr noundef %name, ptr noundef %dev, i32 noundef %size, i32 noundef %align, i32 noundef %allocation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @dmam_pool_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.32) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @dma_pool_create(ptr noundef %name, ptr noundef %dev, i32 noundef %size, i32 noundef %align, i32 noundef %allocation)
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devres_free(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.else ], [ %call1, %if.then3 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmam_pool_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @dma_pool_destroy(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmam_pool_destroy(ptr noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.dma_pool, ptr %pool, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @devres_release(ptr noundef %1, ptr noundef nonnull @dmam_pool_release, ptr noundef nonnull @dmam_pool_match, ptr noundef %pool) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !93

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 527, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dmam_pool_match(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res, ptr noundef readnone %match_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %cmp = icmp eq ptr %1, %match_data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pools_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.38) #6
  %sub = sub i32 4096, %call
  tail call void @mutex_lock_nested(ptr noundef nonnull @pools_lock, i32 noundef 0) #6
  %dma_pools = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %dma_pools to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn64 = load ptr, ptr %dma_pools, align 4
  %cmp.not66 = icmp eq ptr %.pn64, %dma_pools
  br i1 %cmp.not66, label %entry.for.end31_crit_edge, label %for.body.preheader

entry.for.end31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end31

for.body.preheader:                               ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buf, i32 %call
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.preheader
  %.pn69 = phi ptr [ %.pn, %for.end.for.body_crit_edge ], [ %.pn64, %for.body.preheader ]
  %size.068 = phi i32 [ %sub23, %for.end.for.body_crit_edge ], [ %sub, %for.body.preheader ]
  %next.067 = phi ptr [ %add.ptr24, %for.end.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %pool.070 = getelementptr i8, ptr %.pn69, i32 -100
  %lock = getelementptr i8, ptr %.pn69, i32 -92
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %1 = ptrtoint ptr %pool.070 to i32
  call void @__asan_load4_noabort(i32 %1)
  %page.058 = load ptr, ptr %pool.070, align 4
  %cmp11.not59 = icmp eq ptr %page.058, %pool.070
  br i1 %cmp11.not59, label %for.body.for.end_crit_edge, label %for.body.for.body13_crit_edge

for.body.for.body13_crit_edge:                    ; preds = %for.body
  br label %for.body13

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body.for.body13_crit_edge
  %page.062 = phi ptr [ %page.0, %for.body13.for.body13_crit_edge ], [ %page.058, %for.body.for.body13_crit_edge ]
  %pages.061 = phi i32 [ %inc, %for.body13.for.body13_crit_edge ], [ 0, %for.body.for.body13_crit_edge ]
  %blocks.060 = phi i32 [ %add, %for.body13.for.body13_crit_edge ], [ 0, %for.body.for.body13_crit_edge ]
  %inc = add i32 %pages.061, 1
  %in_use = getelementptr inbounds %struct.dma_page, ptr %page.062, i32 0, i32 3
  %2 = ptrtoint ptr %in_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_use, align 4
  %add = add i32 %3, %blocks.060
  %4 = ptrtoint ptr %page.062 to i32
  call void @__asan_load4_noabort(i32 %4)
  %page.0 = load ptr, ptr %page.062, align 4
  %cmp11.not = icmp eq ptr %page.0, %pool.070
  br i1 %cmp11.not, label %for.body13.for.end_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13

for.body13.for.end_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body13.for.end_crit_edge, %for.body.for.end_crit_edge
  %blocks.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %add, %for.body13.for.end_crit_edge ]
  %pages.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %inc, %for.body13.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  %name = getelementptr i8, ptr %.pn69, i32 -32
  %allocation = getelementptr i8, ptr %.pn69, i32 -40
  %5 = ptrtoint ptr %allocation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %allocation, align 4
  %size20 = getelementptr i8, ptr %.pn69, i32 -48
  %7 = ptrtoint ptr %size20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size20, align 4
  %div = udiv i32 %6, %8
  %mul = mul i32 %div, %pages.0.lcssa
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %next.067, i32 noundef %size.068, ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %blocks.0.lcssa, i32 noundef %mul, i32 noundef %8, i32 noundef %pages.0.lcssa) #6
  %sub23 = sub i32 %size.068, %call22
  %add.ptr24 = getelementptr i8, ptr %next.067, i32 %call22
  %9 = ptrtoint ptr %.pn69 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn69, align 4
  %cmp.not = icmp eq ptr %.pn, %dma_pools
  br i1 %cmp.not, label %for.end.for.end31_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.for.end31_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end31

for.end31:                                        ; preds = %for.end.for.end31_crit_edge, %entry.for.end31_crit_edge
  %size.0.lcssa = phi i32 [ %sub, %entry.for.end31_crit_edge ], [ %sub23, %for.end.for.end31_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @pools_lock) #6
  %sub32 = sub i32 4096, %size.0.lcssa
  ret i32 %sub32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fs_reclaim_acquire(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fs_reclaim_release(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @dma_pool_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../mm/dmapool.c", i32 164, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_dma_pool_create, !4, !"__ksymtab_dma_pool_create", i1 false, i1 false}
!4 = !{!"../mm/dmapool.c", i32 201, i32 1}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../mm/dmapool.c", i32 288, i32 5}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dma_pool_destroy._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @dma_pool_destroy._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../mm/dmapool.c", i32 291, i32 5}
!15 = !{ptr @dma_pool_destroy._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @dma_pool_destroy._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_dma_pool_destroy, !18, !"__ksymtab_dma_pool_destroy", i1 false, i1 false}
!18 = !{!"../mm/dmapool.c", i32 302, i32 1}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../mm/dmapool.c", i32 355, i32 5}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dma_pool_alloc._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @dma_pool_alloc._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../mm/dmapool.c", i32 358, i32 5}
!26 = !{ptr @dma_pool_alloc._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dma_pool_alloc._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../mm/dmapool.c", i32 365, i32 29}
!30 = !{ptr @__ksymtab_dma_pool_alloc, !31, !"__ksymtab_dma_pool_alloc", i1 false, i1 false}
!31 = !{!"../mm/dmapool.c", i32 380, i32 1}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../mm/dmapool.c", i32 415, i32 4}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dma_pool_free._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @dma_pool_free._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../mm/dmapool.c", i32 418, i32 4}
!39 = !{ptr @dma_pool_free._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @dma_pool_free._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../mm/dmapool.c", i32 430, i32 4}
!43 = !{ptr @dma_pool_free._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @dma_pool_free._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../mm/dmapool.c", i32 433, i32 4}
!47 = !{ptr @dma_pool_free._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @dma_pool_free._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../mm/dmapool.c", i32 446, i32 5}
!51 = !{ptr @dma_pool_free._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @dma_pool_free._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../mm/dmapool.c", i32 449, i32 5}
!55 = !{ptr @dma_pool_free._entry.29, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @dma_pool_free._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @__ksymtab_dma_pool_free, !58, !"__ksymtab_dma_pool_free", i1 false, i1 false}
!58 = !{!"../mm/dmapool.c", i32 467, i32 1}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../mm/dmapool.c", i32 503, i32 8}
!61 = !{ptr @__ksymtab_dmam_pool_create, !62, !"__ksymtab_dmam_pool_create", i1 false, i1 false}
!62 = !{!"../mm/dmapool.c", i32 515, i32 1}
!63 = !{ptr @__ksymtab_dmam_pool_destroy, !64, !"__ksymtab_dmam_pool_destroy", i1 false, i1 false}
!64 = !{!"../mm/dmapool.c", i32 529, i32 1}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../mm/dmapool.c", i32 63, i32 8}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @pools_reg_lock, !66, !"pools_reg_lock", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../mm/dmapool.c", i32 62, i32 8}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @pools_lock, !70, !"pools_lock", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../mm/dmapool.c", i32 105, i32 8}
!75 = !{ptr @dev_attr_pools, !74, !"dev_attr_pools", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../mm/dmapool.c", i32 76, i32 31}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../mm/dmapool.c", i32 93, i32 32}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/sched/mm.h", i32 256, i32 2}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i32 0, i32 33}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{!"branch_weights", i32 2000, i32 1}
!94 = !{i64 2148289423, i64 2148289428, i64 2148289441, i64 2148289485, i64 2148289519, i64 2148289540}
