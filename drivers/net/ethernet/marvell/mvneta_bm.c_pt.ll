; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/mvneta_bm.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/mvneta_bm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mvneta_bm_construct\22, \22a\22\09"
module asm "\09.weak\09__crc_mvneta_bm_construct\09\09\09\09"
module asm "\09.long\09__crc_mvneta_bm_construct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvneta_bm_construct:\09\09\09\09\09"
module asm "\09.asciz \09\22mvneta_bm_construct\22\09\09\09\09\09"
module asm "__kstrtabns_mvneta_bm_construct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mvneta_bm_pool_use\22, \22a\22\09"
module asm "\09.weak\09__crc_mvneta_bm_pool_use\09\09\09\09"
module asm "\09.long\09__crc_mvneta_bm_pool_use\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvneta_bm_pool_use:\09\09\09\09\09"
module asm "\09.asciz \09\22mvneta_bm_pool_use\22\09\09\09\09\09"
module asm "__kstrtabns_mvneta_bm_pool_use:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mvneta_bm_bufs_free\22, \22a\22\09"
module asm "\09.weak\09__crc_mvneta_bm_bufs_free\09\09\09\09"
module asm "\09.long\09__crc_mvneta_bm_bufs_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvneta_bm_bufs_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mvneta_bm_bufs_free\22\09\09\09\09\09"
module asm "__kstrtabns_mvneta_bm_bufs_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mvneta_bm_pool_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_mvneta_bm_pool_destroy\09\09\09\09"
module asm "\09.long\09__crc_mvneta_bm_pool_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvneta_bm_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22mvneta_bm_pool_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_mvneta_bm_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mvneta_bm_get\22, \22a\22\09"
module asm "\09.weak\09__crc_mvneta_bm_get\09\09\09\09"
module asm "\09.long\09__crc_mvneta_bm_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvneta_bm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22mvneta_bm_get\22\09\09\09\09\09"
module asm "__kstrtabns_mvneta_bm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mvneta_bm_put\22, \22a\22\09"
module asm "\09.weak\09__crc_mvneta_bm_put\09\09\09\09"
module asm "\09.long\09__crc_mvneta_bm_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mvneta_bm_put:\09\09\09\09\09"
module asm "\09.asciz \09\22mvneta_bm_put\22\09\09\09\09\09"
module asm "__kstrtabns_mvneta_bm_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hwbm_pool = type { i32, i32, i32, ptr, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mvneta_bm_pool = type { %struct.hwbm_pool, i8, i32, i32, i32, ptr, i32, i8, ptr }
%struct.mvneta_bm = type { ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__kstrtab_mvneta_bm_construct = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvneta_bm_construct = external dso_local constant [0 x i8], align 1
@__ksymtab_mvneta_bm_construct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvneta_bm_construct to i32), ptr @__kstrtab_mvneta_bm_construct, ptr @__kstrtabns_mvneta_bm_construct }, section "___ksymtab_gpl+mvneta_bm_construct", align 4
@mvneta_bm_pool_use._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"long pool cannot be shared by the ports\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mvneta_bm_pool_use\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/marvell/mvneta_bm.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvneta_bm_pool_use._entry_ptr = internal global ptr @mvneta_bm_pool_use._entry, section ".printk_index", align 4
@mvneta_bm_pool_use._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mixing pools' types between the ports is forbidden\0A\00", [44 x i8] zeroinitializer }, align 32
@mvneta_bm_pool_use._entry_ptr.7 = internal global ptr @mvneta_bm_pool_use._entry.5, section ".printk_index", align 4
@mvneta_bm_pool_use.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&hwbm_pool->buf_lock\00", [43 x i8] zeroinitializer }, align 32
@mvneta_bm_pool_use._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fail to create pool %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mvneta_bm_pool_use._entry_ptr.11 = internal global ptr @mvneta_bm_pool_use._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pool %d: %d of %d allocated\0A\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_mvneta_bm_pool_use = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvneta_bm_pool_use = external dso_local constant [0 x i8], align 1
@__ksymtab_mvneta_bm_pool_use = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvneta_bm_pool_use to i32), ptr @__kstrtab_mvneta_bm_pool_use, ptr @__kstrtabns_mvneta_bm_pool_use }, section "___ksymtab_gpl+mvneta_bm_pool_use", align 4
@__kstrtab_mvneta_bm_bufs_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvneta_bm_bufs_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mvneta_bm_bufs_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvneta_bm_bufs_free to i32), ptr @__kstrtab_mvneta_bm_bufs_free, ptr @__kstrtabns_mvneta_bm_bufs_free }, section "___ksymtab_gpl+mvneta_bm_bufs_free", align 4
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot free all buffers in pool %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_mvneta_bm_pool_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvneta_bm_pool_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_mvneta_bm_pool_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvneta_bm_pool_destroy to i32), ptr @__kstrtab_mvneta_bm_pool_destroy, ptr @__kstrtabns_mvneta_bm_pool_destroy }, section "___ksymtab_gpl+mvneta_bm_pool_destroy", align 4
@__kstrtab_mvneta_bm_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvneta_bm_get = external dso_local constant [0 x i8], align 1
@__ksymtab_mvneta_bm_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvneta_bm_get to i32), ptr @__kstrtab_mvneta_bm_get, ptr @__kstrtabns_mvneta_bm_get }, section "___ksymtab_gpl+mvneta_bm_get", align 4
@__kstrtab_mvneta_bm_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_mvneta_bm_put = external dso_local constant [0 x i8], align 1
@__ksymtab_mvneta_bm_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mvneta_bm_put to i32), ptr @__kstrtab_mvneta_bm_put, ptr @__kstrtabns_mvneta_bm_put }, section "___ksymtab_gpl+mvneta_bm_put", align 4
@__initcall__kmod_mvneta_bm__341_497_mvneta_bm_driver_init6 = internal global ptr @mvneta_bm_driver_init, section ".initcall6.init", align 4
@mvneta_bm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mvneta_bm_probe, ptr @mvneta_bm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.18, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvneta_bm_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mvneta_bm_driver_exit = internal global ptr @mvneta_bm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description342 = internal constant [75 x i8] c"mvneta_bm.description=Marvell NETA Buffer Manager Driver - www.marvell.com\00", section ".modinfo", align 1
@__UNIQUE_ID_author343 = internal constant [49 x i8] c"mvneta_bm.author=Marcin Wojtas <mw@semihalf.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file344 = internal constant [54 x i8] c"mvneta_bm.file=drivers/net/ethernet/marvell/mvneta_bm\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [25 x i8] c"mvneta_bm.license=GPL v2\00", section ".modinfo", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mvneta_bm_pool_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BM pool %d is not %d bytes aligned\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mvneta_bm_pool_create\00", [42 x i8] zeroinitializer }, align 32
@mvneta_bm_pool_create._entry_ptr = internal global ptr @mvneta_bm_pool_create._entry, section ".printk_index", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mvneta_bm\00", [22 x i8] zeroinitializer }, align 32
@mvneta_bm_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-neta-bm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mvneta_bm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 433, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate internal memory\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mvneta_bm_probe\00", [16 x i8] zeroinitializer }, align 32
@mvneta_bm_probe._entry_ptr = internal global ptr @mvneta_bm_probe._entry, section ".printk_index", align 4
@mvneta_bm_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 442, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize controller\0A\00", [63 x i8] zeroinitializer }, align 32
@mvneta_bm_probe._entry_ptr.23 = internal global ptr @mvneta_bm_probe._entry.21, section ".printk_index", align 4
@mvneta_bm_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 449, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Buffer Manager for network controller enabled\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mvneta_bm_probe._entry_ptr.27 = internal global ptr @mvneta_bm_probe._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"internal-mem\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pool%d,capacity\00", [16 x i8] zeroinitializer }, align 32
@mvneta_bm_pools_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 313, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Illegal pool %d capacity %d, set to %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mvneta_bm_pools_init\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mvneta_bm_pools_init._entry_ptr = internal global ptr @mvneta_bm_pools_init._entry, section ".printk_index", align 4
@mvneta_bm_pools_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 318, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mvneta_bm_pools_init._entry_ptr.34 = internal global ptr @mvneta_bm_pools_init._entry.33, section ".printk_index", align 4
@mvneta_bm_pools_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 324, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Illegal pool %d capacity %d, round to %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mvneta_bm_pools_init._entry_ptr.37 = internal global ptr @mvneta_bm_pools_init._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pool%d,pkt-size\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 167, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 173, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 193, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 198, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 206, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 270, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"mvneta_bm_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 488, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 326, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 132, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 492, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"mvneta_bm_match\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 482, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 433, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 442, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 449, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 377, i32 40 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 307, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 311, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 316, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 321, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [44 x i8] c"../drivers/net/ethernet/marvell/mvneta_bm.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 333, i32 17 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_license345, ptr @__exitcall_mvneta_bm_driver_exit, ptr @__initcall__kmod_mvneta_bm__341_497_mvneta_bm_driver_init6, ptr @__ksymtab_mvneta_bm_bufs_free, ptr @__ksymtab_mvneta_bm_construct, ptr @__ksymtab_mvneta_bm_get, ptr @__ksymtab_mvneta_bm_pool_destroy, ptr @__ksymtab_mvneta_bm_pool_use, ptr @__ksymtab_mvneta_bm_put, ptr @mvneta_bm_driver_exit, ptr @mvneta_bm_pool_create._entry, ptr @mvneta_bm_pool_create._entry_ptr, ptr @mvneta_bm_pool_use._entry, ptr @mvneta_bm_pool_use._entry.5, ptr @mvneta_bm_pool_use._entry.9, ptr @mvneta_bm_pool_use._entry_ptr, ptr @mvneta_bm_pool_use._entry_ptr.11, ptr @mvneta_bm_pool_use._entry_ptr.7, ptr @mvneta_bm_pools_init._entry, ptr @mvneta_bm_pools_init._entry.33, ptr @mvneta_bm_pools_init._entry.35, ptr @mvneta_bm_pools_init._entry_ptr, ptr @mvneta_bm_pools_init._entry_ptr.34, ptr @mvneta_bm_pools_init._entry_ptr.37, ptr @mvneta_bm_probe._entry, ptr @mvneta_bm_probe._entry.21, ptr @mvneta_bm_probe._entry.24, ptr @mvneta_bm_probe._entry_ptr, ptr @mvneta_bm_probe._entry_ptr.23, ptr @mvneta_bm_probe._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @mvneta_bm_pool_use.__key, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @mvneta_bm_driver, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @mvneta_bm_match, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_pool_use._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_pool_use._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_pool_use.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_pool_use._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_pool_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_pools_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_pools_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvneta_bm_pools_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvneta_bm_construct(ptr nocapture noundef readonly %hwbm_pool, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwbm_pool, ptr %hwbm_pool, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %priv2 = getelementptr inbounds %struct.mvneta_bm_pool, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %4 = ptrtoint ptr %buf to i32
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buf, align 4
  %pdev = getelementptr inbounds %struct.mvneta_bm, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %buf_size = getelementptr inbounds %struct.mvneta_bm_pool, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_size, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !102

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #7
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %buf, i32 noundef %9) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %4, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %4, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %9, i32 noundef 2, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call void @debug_dma_mapping_error(ptr noundef %dev4, i32 noundef %retval.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #7
  %bppi_virt_addr.i = getelementptr inbounds %struct.mvneta_bm, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %bppi_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bppi_virt_addr.i, align 4
  %id.i = getelementptr inbounds %struct.mvneta_bm_pool, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %add.ptr.i17 = getelementptr i8, ptr %19, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %17) #7, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dma_map_single_attrs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %dma_map_single_attrs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mvneta_bm_pool_use(ptr noundef %priv, i8 noundef zeroext %pool_id, i32 noundef %type, i8 noundef zeroext %port_id, i32 noundef %pkt_size) #0 align 64 {
entry:
  %target_id.i = alloca i8, align 1
  %attr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bm_pools = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %bm_pools to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bm_pools, align 4
  %idxprom = zext i8 %pool_id to i32
  %arrayidx = getelementptr %struct.mvneta_bm_pool, ptr %1, i32 %idxprom
  %type1 = getelementptr %struct.mvneta_bm_pool, ptr %1, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %port_map = getelementptr %struct.mvneta_bm_pool, ptr %1, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %port_map to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_map, align 4
  %conv = zext i8 %5 to i32
  %conv2 = zext i8 %port_id to i32
  %shl = shl nuw i32 1, %conv2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %conv)
  %cmp3.not = icmp eq i32 %shl, %conv
  br i1 %cmp3.not, label %if.end.thread, label %do.end

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp10.not121 = icmp eq i32 %type, 2
  br label %if.end18

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup81

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp6 = icmp ne i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp10.not = icmp eq i32 %type, 2
  %or.cond = or i1 %cmp10.not, %cmp6
  br i1 %or.cond, label %if.end.if.end18_crit_edge, label %do.end15

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev16 = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev16, align 4
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.6) #10
  br label %cleanup81

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %if.end.thread
  %cmp10.not123 = phi i1 [ %cmp10.not121, %if.end.thread ], [ %cmp10.not, %if.end.if.end18_crit_edge ]
  %pkt_size19 = getelementptr %struct.mvneta_bm_pool, ptr %1, i32 %idxprom, i32 3
  %10 = ptrtoint ptr %pkt_size19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pkt_size19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20 = icmp ne i32 %11, 0
  %or.cond118 = and i1 %cmp10.not123, %cmp20
  br i1 %or.cond118, label %if.end18.if.end26_crit_edge, label %if.then24

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pkt_size19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %pkt_size, ptr %pkt_size19, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end18.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28 = icmp eq i32 %3, 0
  br i1 %cmp28, label %if.then30, label %if.end26.cleanup81_crit_edge

if.end26.cleanup81_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.then30:                                        ; preds = %if.end26
  %priv32 = getelementptr %struct.mvneta_bm_pool, ptr %1, i32 %idxprom, i32 8
  %13 = ptrtoint ptr %priv32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %priv, ptr %priv32, align 4
  %14 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %type, ptr %type1, align 4
  %15 = ptrtoint ptr %pkt_size19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pkt_size19, align 4
  %add = add i32 %16, 128
  %buf_size = getelementptr %struct.mvneta_bm_pool, ptr %1, i32 %idxprom, i32 4
  %17 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %buf_size, align 4
  %18 = add i32 %16, 511
  %add38 = and i32 %18, -128
  %frag_size = getelementptr inbounds %struct.hwbm_pool, ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %frag_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add38, ptr %frag_size, align 4
  %construct = getelementptr inbounds %struct.hwbm_pool, ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %construct to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mvneta_bm_construct, ptr %construct, align 4
  %priv39 = getelementptr inbounds %struct.hwbm_pool, ptr %arrayidx, i32 0, i32 5
  %21 = ptrtoint ptr %priv39 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %priv39, align 4
  %buf_lock = getelementptr inbounds %struct.hwbm_pool, ptr %arrayidx, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %buf_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @mvneta_bm_pool_use.__key) #7
  %pdev1.i = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 2
  %22 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %target_id.i) #7
  %24 = ptrtoint ptr %target_id.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %target_id.i, align 1, !annotation !104
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %attr.i) #7
  %25 = ptrtoint ptr %attr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %attr.i, align 1, !annotation !104
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %mul.i = shl i32 %27, 2
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %phys_addr.i = getelementptr %struct.mvneta_bm_pool, ptr %1, i32 %idxprom, i32 6
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef %phys_addr.i, i32 noundef 3264, i32 noundef 0) #7
  %virt_addr.i = getelementptr %struct.mvneta_bm_pool, ptr %1, i32 %idxprom, i32 5
  %28 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %virt_addr.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then30.do.end46_crit_edge, label %if.end.i

if.then30.do.end46_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

if.end.i:                                         ; preds = %if.then30
  %29 = ptrtoint ptr %call.i.i to i32
  %and.i = and i32 %29, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %30 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phys_addr.i, align 4
  br i1 %cmp.i, label %if.end9.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef nonnull %call.i.i, i32 noundef %31, i32 noundef 0) #7
  %id.i = getelementptr %struct.mvneta_bm_pool, ptr %1, i32 %idxprom, i32 1
  %32 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16, i32 noundef %conv.i, i32 noundef 32) #10
  br label %do.end46

if.end9.i:                                        ; preds = %if.end.i
  %call11.i = call i32 @mvebu_mbus_get_dram_win_info(i32 noundef %31, ptr noundef nonnull %target_id.i, ptr noundef nonnull %attr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.end50

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_addr.i, align 4
  %36 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys_addr.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef %35, i32 noundef %37, i32 noundef 0) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then14.i, %if.then4.i, %if.then30.do.end46_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %attr.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %target_id.i) #7
  %38 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev1.i, align 4
  %dev48 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %id = getelementptr %struct.mvneta_bm_pool, ptr %1, i32 %idxprom, i32 1
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %id, align 4
  %conv49 = zext i8 %41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.10, i32 noundef %conv49) #10
  br label %cleanup81

if.end50:                                         ; preds = %if.end9.i
  %id19.i = getelementptr %struct.mvneta_bm_pool, ptr %1, i32 %idxprom, i32 1
  %42 = ptrtoint ptr %id19.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %id19.i, align 4
  %conv20.i = zext i8 %43 to i32
  %shl.i = shl nuw nsw i32 %conv20.i, 4
  %add.i = add nuw nsw i32 %shl.i, 16
  %44 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phys_addr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %46 = call i32 @llvm.bswap.i32(i32 %45) #7
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %46) #7, !srcloc !103
  %49 = ptrtoint ptr %id19.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %id19.i, align 4
  %51 = ptrtoint ptr %target_id.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %target_id.i, align 1
  %53 = ptrtoint ptr %attr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %attr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp.i.i = icmp ult i8 %50, 2
  %cond.i.i = select i1 %cmp.i.i, i32 8, i32 12
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %56, i32 %cond.i.i
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !106
  %58 = call i32 @llvm.bswap.i32(i32 %57) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %59 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i = icmp eq i8 %59, 0
  %60 = shl nuw nsw i8 %59, 4
  %61 = zext i8 %60 to i32
  %shl.i.i = shl nuw nsw i32 15, %61
  %cond5.i.i = select i1 %tobool.not.i.i, i32 4, i32 20
  %shl6.i.i = shl nuw nsw i32 255, %cond5.i.i
  %62 = or i32 %shl6.i.i, %shl.i.i
  %63 = xor i32 %62, -1
  %and8.i.i = and i32 %58, %63
  %conv.i.i = zext i8 %52 to i32
  %shl12.i.i = shl nuw nsw i32 %conv.i.i, %61
  %conv13.i.i = zext i8 %54 to i32
  %shl17.i.i = shl nuw nsw i32 %conv13.i.i, %cond5.i.i
  %or.i.i = or i32 %shl17.i.i, %shl12.i.i
  %or18.i.i = or i32 %or.i.i, %and8.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %64 = call i32 @llvm.bswap.i32(i32 %or18.i.i) #7
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 4
  %add.ptr.i32.i.i = getelementptr i8, ptr %66, i32 %cond.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i, i32 %64) #7, !srcloc !103
  %67 = ptrtoint ptr %id19.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %id19.i, align 4
  %conv25.i = zext i8 %68 to i32
  %shl.i53.i = shl nuw nsw i32 %conv25.i, 4
  %add.i.i = add nuw nsw i32 %shl.i53.i, 16
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 4
  %add.ptr.i.i54.i = getelementptr i8, ptr %70, i32 %add.i.i
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54.i) #7, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %72 = or i32 %71, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %74, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %72) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %76, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #7, !srcloc !103
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %attr.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %target_id.i) #7
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx, align 4
  %call51 = call i32 @hwbm_pool_add(ptr noundef %arrayidx, i32 noundef %78) #7
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call51, i32 %80)
  %cmp53.not = icmp eq i32 %call51, %80
  br i1 %cmp53.not, label %if.end50.cleanup81_crit_edge, label %do.end63

if.end50.cleanup81_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

do.end63:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %id19.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %id19.i, align 4
  %conv65 = zext i8 %82 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 207, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %conv65, i32 noundef %call51, i32 noundef %80) #7
  br label %cleanup81

cleanup81:                                        ; preds = %do.end63, %if.end50.cleanup81_crit_edge, %do.end46, %if.end26.cleanup81_crit_edge, %do.end15, %do.end
  %retval.1 = phi ptr [ null, %do.end ], [ null, %do.end15 ], [ null, %do.end63 ], [ null, %do.end46 ], [ %arrayidx, %if.end50.cleanup81_crit_edge ], [ %arrayidx, %if.end26.cleanup81_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwbm_pool_add(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvneta_bm_bufs_free(ptr nocapture noundef readonly %priv, ptr noundef %bm_pool, i8 noundef zeroext %port_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = xor i8 %port_map, -1
  %port_map1 = getelementptr inbounds %struct.mvneta_bm_pool, ptr %bm_pool, i32 0, i32 7
  %0 = ptrtoint ptr %port_map1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_map1, align 4
  %and = and i8 %1, %neg
  store i8 %and, ptr %port_map1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool.not = icmp eq i8 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %5 = or i32 %4, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !103
  %buf_num = getelementptr inbounds %struct.hwbm_pool, ptr %bm_pool, i32 0, i32 2
  %8 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp38 = icmp sgt i32 %9, 0
  br i1 %cmp38, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %bppi_virt_addr.i = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 4
  %id.i = getelementptr inbounds %struct.mvneta_bm_pool, ptr %bm_pool, i32 0, i32 1
  %pdev = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 2
  %buf_size = getelementptr inbounds %struct.mvneta_bm_pool, ptr %bm_pool, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %bppi_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bppi_virt_addr.i, align 4
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 %shl.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !106
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %16 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %15, i32 -2130706432, i32 8454144) #11, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %if.end9.for.end_crit_edge, label %if.end13

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %17 = inttoptr i32 %16 to ptr
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %15, i32 noundef %21, i32 noundef 2, i32 noundef 0) #7
  tail call void @hwbm_buf_free(ptr noundef %bm_pool, ptr noundef nonnull %17) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %22 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_num, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %i.039, %if.end9.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %27 = and i32 %26, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !103
  %30 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_num, align 4
  %sub = sub i32 %31, %i.0.lcssa
  store i32 %sub, ptr %buf_num, align 4
  br label %cleanup18

cleanup18:                                        ; preds = %for.end, %entry.cleanup18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwbm_buf_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvneta_bm_pool_destroy(ptr nocapture noundef readonly %priv, ptr noundef %bm_pool, i8 noundef zeroext %port_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = xor i8 %port_map, -1
  %port_map2 = getelementptr inbounds %struct.mvneta_bm_pool, ptr %bm_pool, i32 0, i32 7
  %0 = ptrtoint ptr %port_map2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_map2, align 4
  %and = and i8 %1, %neg
  store i8 %and, ptr %port_map2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool.not = icmp eq i8 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.mvneta_bm_pool, ptr %bm_pool, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 4
  tail call void @mvneta_bm_bufs_free(ptr noundef %priv, ptr noundef %bm_pool, i8 noundef zeroext %port_map)
  %buf_num = getelementptr inbounds %struct.hwbm_pool, ptr %bm_pool, i32 0, i32 2
  %3 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.end.if.end26_crit_edge, label %do.end

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.mvneta_bm_pool, ptr %bm_pool, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %conv13 = zext i8 %6 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv13) #7
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end.if.end26_crit_edge
  %virt_addr = getelementptr inbounds %struct.mvneta_bm_pool, ptr %bm_pool, i32 0, i32 5
  %7 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt_addr, align 4
  %tobool27.not = icmp eq ptr %8, null
  br i1 %tobool27.not, label %if.end26.if.end31_crit_edge, label %if.then28

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 2
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bm_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bm_pool, align 4
  %mul = shl i32 %12, 2
  %phys_addr = getelementptr inbounds %struct.mvneta_bm_pool, ptr %bm_pool, i32 0, i32 6
  %13 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %8, i32 noundef %14, i32 noundef 0) #7
  %15 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %virt_addr, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end26.if.end31_crit_edge
  %id32 = getelementptr inbounds %struct.mvneta_bm_pool, ptr %bm_pool, i32 0, i32 1
  %16 = ptrtoint ptr %id32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id32, align 4
  %conv33 = zext i8 %17 to i32
  %shl.i = shl nuw nsw i32 %conv33, 4
  %add.i = add nuw nsw i32 %shl.i, 16
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %add.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %21 = and i32 %20, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %23, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %21) #7, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mvneta_bm_get(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_device_by_node(ptr noundef %node) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvneta_bm_put(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  tail call void @platform_device_put(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mvneta_bm_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvneta_bm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mvneta_bm_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvneta_bm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_get_dram_win_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvneta_bm_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.mvneta_bm, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %clk, align 4
  %cmp.i69 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call.i70 = tail call i32 @clk_prepare(ptr noundef %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.clk_prepare_enable.exit_crit_edge

if.end16.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end16
  %call1.i = tail call i32 @clk_enable(ptr noundef %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end20_crit_edge, label %if.then3.i

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call10) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end16.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i70, %if.end16.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end20_crit_edge

clk_prepare_enable.exit.if.end20_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %clk_prepare_enable.exit.if.end20_crit_edge, %if.end.i.if.end20_crit_edge
  %call21 = tail call fastcc i32 @mvneta_bm_get_sram(ptr noundef %1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %err_clk

if.end25:                                         ; preds = %if.end20
  %pdev26 = getelementptr inbounds %struct.mvneta_bm, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %pdev26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pdev26, align 4
  %call27 = tail call fastcc i32 @mvneta_bm_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  %bppi_pool.i = getelementptr inbounds %struct.mvneta_bm, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %bppi_pool.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bppi_pool.i, align 4
  %bppi_phys_addr.i = getelementptr inbounds %struct.mvneta_bm, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %bppi_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bppi_phys_addr.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %8, i32 noundef %10, i32 noundef 1048576, ptr noundef null) #7
  br label %err_clk

if.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  br label %cleanup

err_clk:                                          ; preds = %do.end32, %do.end
  %err.0 = phi i32 [ %call21, %do.end ], [ %call27, %do.end32 ]
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %if.end34, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %5, %if.then13 ], [ %err.0, %err_clk ], [ 0, %if.end34 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvneta_bm_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bm_pools = getelementptr inbounds %struct.mvneta_bm, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bm_pools to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bm_pools, align 4
  tail call void @mvneta_bm_pool_destroy(ptr noundef %1, ptr noundef %3, i8 noundef zeroext -1)
  %4 = ptrtoint ptr %bm_pools to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bm_pools, align 4
  %arrayidx.1 = getelementptr %struct.mvneta_bm_pool, ptr %5, i32 1
  tail call void @mvneta_bm_pool_destroy(ptr noundef %1, ptr noundef %arrayidx.1, i8 noundef zeroext -1)
  %6 = ptrtoint ptr %bm_pools to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bm_pools, align 4
  %arrayidx.2 = getelementptr %struct.mvneta_bm_pool, ptr %7, i32 2
  tail call void @mvneta_bm_pool_destroy(ptr noundef %1, ptr noundef %arrayidx.2, i8 noundef zeroext -1)
  %8 = ptrtoint ptr %bm_pools to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bm_pools, align 4
  %arrayidx.3 = getelementptr %struct.mvneta_bm_pool, ptr %9, i32 3
  tail call void @mvneta_bm_pool_destroy(ptr noundef %1, ptr noundef %arrayidx.3, i8 noundef zeroext -1)
  %bppi_pool.i = getelementptr inbounds %struct.mvneta_bm, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %bppi_pool.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bppi_pool.i, align 4
  %bppi_phys_addr.i = getelementptr inbounds %struct.mvneta_bm, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %bppi_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bppi_phys_addr.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %11, i32 noundef %13, i32 noundef 1048576, ptr noundef null) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #7, !srcloc !103
  %clk = getelementptr inbounds %struct.mvneta_bm, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvneta_bm_get_sram(ptr noundef %dn, ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_gen_pool_get(ptr noundef %dn, ptr noundef nonnull @.str.28, i32 noundef 0) #7
  %bppi_pool = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %bppi_pool to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %bppi_pool, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bppi_phys_addr = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 5
  %call3 = tail call ptr @gen_pool_dma_alloc(ptr noundef nonnull %call, i32 noundef 1048576, ptr noundef %bppi_phys_addr) #7
  %bppi_virt_addr = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 4
  %1 = ptrtoint ptr %bppi_virt_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %bppi_virt_addr, align 4
  %tobool5.not = icmp eq ptr %call3, null
  %. = select i1 %tobool5.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvneta_bm_init(ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  %prop.i = alloca [15 x i8], align 1
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #7, !srcloc !103
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %7 = and i32 %6, -1537
  %8 = or i32 %7, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !103
  %pdev = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 576, i32 noundef 3520) #7
  %bm_pools = getelementptr inbounds %struct.mvneta_bm, ptr %priv, i32 0, i32 6
  %13 = ptrtoint ptr %bm_pools to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %bm_pools, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %prop.i) #7
  %18 = call ptr @memset(ptr %prop.i, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #7
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %size.i, align 4, !annotation !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6, i32 16777216) #7, !srcloc !103
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.077.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %bm_pools to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bm_pools, align 4
  %arrayidx.i = getelementptr %struct.mvneta_bm_pool, ptr %23, i32 %i.077.i
  %conv.i = trunc i32 %i.077.i to i8
  %id.i = getelementptr %struct.mvneta_bm_pool, ptr %23, i32 %i.077.i, i32 1
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i, ptr %id.i, align 4
  %type.i = getelementptr %struct.mvneta_bm_pool, ptr %23, i32 %i.077.i, i32 2
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type.i, align 4
  %shl.i = shl i32 %i.077.i, 4
  %add.i = add nuw nsw i32 %shl.i, 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %27, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 0) #7, !srcloc !103
  %add2.i = add nuw nsw i32 %shl.i, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %29, i32 %add2.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 0) #7, !srcloc !103
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %prop.i, ptr noundef nonnull @.str.29, i32 noundef %i.077.i) #7
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull %prop.i, ptr noundef nonnull %size.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2048, ptr %size.i, align 4
  br label %if.end34.i

if.else.i:                                        ; preds = %for.body.i
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16352, i32 %32)
  %cmp5.i = icmp ugt i32 %32, 16352
  br i1 %cmp5.i, label %do.end.i, label %if.else10.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %dev9.i = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9.i, ptr noundef nonnull @.str.30, i32 noundef %i.077.i, i32 noundef %32, i32 noundef 16352) #10
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16352, ptr %size.i, align 4
  br label %if.end34.i

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %32)
  %cmp11.i = icmp ult i32 %32, 128
  br i1 %cmp11.i, label %do.end16.i, label %if.else19.i

do.end16.i:                                       ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 4
  %dev18.i = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18.i, ptr noundef nonnull @.str.30, i32 noundef %i.077.i, i32 noundef %32, i32 noundef 128) #10
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 128, ptr %size.i, align 4
  br label %if.end34.i

if.else19.i:                                      ; preds = %if.else10.i
  %and.i = and i32 %32, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp20.i = icmp eq i32 %and.i, 0
  br i1 %cmp20.i, label %if.else19.i.if.end34.i_crit_edge, label %do.end25.i

if.else19.i.if.end34.i_crit_edge:                 ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

do.end25.i:                                       ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %dev27.i = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  %add28.i = add nuw nsw i32 %32, 31
  %and29.i = and i32 %add28.i, -32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27.i, ptr noundef nonnull @.str.36, i32 noundef %i.077.i, i32 noundef %32, i32 noundef %and29.i) #10
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i, align 4
  %add30.i = add i32 %42, 31
  %and31.i = and i32 %add30.i, -32
  store i32 %and31.i, ptr %size.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end25.i, %if.else19.i.if.end34.i_crit_edge, %do.end16.i, %do.end.i, %if.then.i
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i, align 4
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx.i, align 4
  %add37.i = add nuw nsw i32 %shl.i, 28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  call void @arm_heavy_mb() #7
  %46 = call i32 @llvm.bswap.i32(i32 %44) #7
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %48, i32 %add37.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %46) #7, !srcloc !103
  %call41.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %prop.i, ptr noundef nonnull @.str.38, i32 noundef %i.077.i) #7
  %pkt_size.i = getelementptr %struct.mvneta_bm_pool, ptr %23, i32 %i.077.i, i32 3
  %call.i.i76.i = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull %prop.i, ptr noundef %pkt_size.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i76.i)
  %tobool44.not.i = icmp sgt i32 %call.i.i76.i, -1
  br i1 %tobool44.not.i, label %if.end34.i.for.inc.i_crit_edge, label %if.then45.i

if.end34.i.for.inc.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then45.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %pkt_size.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %pkt_size.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then45.i, %if.end34.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %mvneta_bm_pools_init.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mvneta_bm_pools_init.exit:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #7
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %prop.i) #7
  br label %return

return:                                           ; preds = %mvneta_bm_pools_init.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %mvneta_bm_pools_init.exit ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__ksymtab_mvneta_bm_construct, !1, !"__ksymtab_mvneta_bm_construct", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 113, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 167, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mvneta_bm_pool_use._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @mvneta_bm_pool_use._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 173, i32 3}
!12 = !{ptr @mvneta_bm_pool_use._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mvneta_bm_pool_use._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @mvneta_bm_pool_use.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 193, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 198, i32 4}
!19 = !{ptr @mvneta_bm_pool_use._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mvneta_bm_pool_use._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 206, i32 4}
!23 = !{ptr @__ksymtab_mvneta_bm_pool_use, !24, !"__ksymtab_mvneta_bm_pool_use", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 214, i32 1}
!25 = !{ptr @__ksymtab_mvneta_bm_bufs_free, !26, !"__ksymtab_mvneta_bm_bufs_free", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 255, i32 1}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 270, i32 3}
!29 = !{ptr @__ksymtab_mvneta_bm_pool_destroy, !30, !"__ksymtab_mvneta_bm_pool_destroy", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 281, i32 1}
!31 = !{ptr @__ksymtab_mvneta_bm_get, !32, !"__ksymtab_mvneta_bm_get", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 402, i32 1}
!33 = !{ptr @__ksymtab_mvneta_bm_put, !34, !"__ksymtab_mvneta_bm_put", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 408, i32 1}
!35 = !{ptr @__initcall__kmod_mvneta_bm__341_497_mvneta_bm_driver_init6, !36, !"__initcall__kmod_mvneta_bm__341_497_mvneta_bm_driver_init6", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 497, i32 1}
!37 = !{ptr @__exitcall_mvneta_bm_driver_exit, !36, !"__exitcall_mvneta_bm_driver_exit", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_description342, !39, !"__UNIQUE_ID_description342", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 499, i32 1}
!40 = !{ptr @__UNIQUE_ID_author343, !41, !"__UNIQUE_ID_author343", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 500, i32 1}
!42 = !{ptr @__UNIQUE_ID_file344, !43, !"__UNIQUE_ID_file344", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 501, i32 1}
!44 = !{ptr @__UNIQUE_ID_license345, !43, !"__UNIQUE_ID_license345", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 132, i32 3}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mvneta_bm_pool_create._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mvneta_bm_pool_create._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 492, i32 11}
!56 = !{ptr @mvneta_bm_driver, !57, !"mvneta_bm_driver", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 488, i32 31}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 433, i32 3}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mvneta_bm_probe._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mvneta_bm_probe._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 442, i32 3}
!65 = !{ptr @mvneta_bm_probe._entry.21, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mvneta_bm_probe._entry_ptr.23, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 449, i32 2}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mvneta_bm_probe._entry.24, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @mvneta_bm_probe._entry_ptr.27, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 377, i32 40}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 307, i32 17}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 311, i32 4}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mvneta_bm_pools_init._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @mvneta_bm_pools_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @mvneta_bm_pools_init._entry.33, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 316, i32 4}
!84 = !{ptr @mvneta_bm_pools_init._entry_ptr.34, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 321, i32 4}
!87 = !{ptr @mvneta_bm_pools_init._entry.35, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mvneta_bm_pools_init._entry_ptr.37, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 333, i32 17}
!91 = !{ptr @mvneta_bm_match, !92, !"mvneta_bm_match", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/marvell/mvneta_bm.c", i32 482, i32 34}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2049261}
!104 = !{!"auto-init"}
!105 = !{i64 2156113200}
!106 = !{i64 2049679}
!107 = !{i64 2156113894}
!108 = !{i64 2148858278, i64 2148858301, i64 2148858333, i64 2148858365, i64 2148858403, i64 2148858433}
