; ModuleID = '/llk/IR_all_yes/drivers/mtd/mtdpstore.c_pt.bc'
source_filename = "../drivers/mtd/mtdpstore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_notifier = type { ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mtdpstore_context = type { i32, %struct.pstore_blk_config, %struct.pstore_device_info, ptr, ptr, ptr, ptr }
%struct.pstore_blk_config = type { [80 x i8], i32, i32, i32, i32, i32 }
%struct.pstore_device_info = type { i32, %struct.pstore_zone_info }
%struct.pstore_zone_info = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.erase_info = type { i64, i64, i64 }

@__initcall__kmod_mtdpstore__198_569_mtdpstore_init6 = internal global ptr @mtdpstore_init, section ".initcall6.init", align 4
@mtdpstore_notifier = internal global { %struct.mtd_notifier, [16 x i8] } { %struct.mtd_notifier { ptr @mtdpstore_notify_add, ptr @mtdpstore_notify_remove, %struct.list_head zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@__exitcall_mtdpstore_exit = internal global ptr @mtdpstore_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file199 = internal constant [37 x i8] c"mtdpstore.file=drivers/mtd/mtdpstore\00", section ".modinfo", align 1
@__UNIQUE_ID_license200 = internal constant [22 x i8] c"mtdpstore.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author201 = internal constant [64 x i8] c"mtdpstore.author=WeiXiong Liao <liaoweixiong@allwinnertech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description202 = internal constant [49 x i8] c"mtdpstore.description=MTD backend for pstore/blk\00", section ".modinfo", align 1
@oops_cxt = internal global { %struct.mtdpstore_context, [52 x i8] } zeroinitializer, align 32
@mtdpstore_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013mtd device must be supplied (device name is empty)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtdpstore_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mtd/mtdpstore.c\00", [40 x i8] zeroinitializer }, align 32
@mtdpstore_init._entry_ptr = internal global ptr @mtdpstore_init._entry, section ".printk_index", align 4
@mtdpstore_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013no backend enabled (kmsg_size is 0)\0A\00", [57 x i8] zeroinitializer }, align 32
@mtdpstore_init._entry_ptr.5 = internal global ptr @mtdpstore_init._entry.3, section ".printk_index", align 4
@mtdpstore_notify_add.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mtdpstore\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtdpstore_notify_add\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mtdoops-pstore: found matching MTD device %s\0A\00", [50 x i8] zeroinitializer }, align 32
@mtdpstore_notify_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 398, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mtdoops-pstore: MTD partition %d not big enough\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtdpstore_notify_add._entry_ptr = internal global ptr @mtdpstore_notify_add._entry, section ".printk_index", align 4
@mtdpstore_notify_add._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 409, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mtdoops-pstore: eraseblock size of MTD partition %d too small\0A\00", [33 x i8] zeroinitializer }, align 32
@mtdpstore_notify_add._entry_ptr.14 = internal global ptr @mtdpstore_notify_add._entry.12, section ".printk_index", align 4
@mtdpstore_notify_add._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.2, i32 415, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mtdoops-pstore: record size %lu KB must align to write size %d KB\0A\00", [61 x i8] zeroinitializer }, align 32
@mtdpstore_notify_add._entry_ptr.17 = internal global ptr @mtdpstore_notify_add._entry.15, section ".printk_index", align 4
@mtdpstore_notify_add._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.2, i32 437, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mtdoops-pstore: mtd%d register to psblk failed\0A\00", [48 x i8] zeroinitializer }, align 32
@mtdpstore_notify_add._entry_ptr.20 = internal global ptr @mtdpstore_notify_add._entry.18, section ".printk_index", align 4
@mtdpstore_notify_add._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.2, i32 441, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mtdoops-pstore: Attached to MTD device %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtdpstore_notify_add._entry_ptr.24 = internal global ptr @mtdpstore_notify_add._entry.21, section ".printk_index", align 4
@mtdpstore_read.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtdpstore_read\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mtdoops-pstore: try to read off 0x%llx size %zu\0A\00", [47 x i8] zeroinitializer }, align 32
@mtdpstore_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 328, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mtdoops-pstore: read failure at %lld (%zu of %zu read), err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtdpstore_read._entry_ptr = internal global ptr @mtdpstore_read._entry, section ".printk_index", align 4
@mtdpstore_read._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.2, i32 341, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"mtdoops-pstore: ecc error at %lld (%zu of %zu read), err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtdpstore_read._entry_ptr.30 = internal global ptr @mtdpstore_read._entry.28, section ".printk_index", align 4
@mtdpstore_block_isbad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 40, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mtdoops-pstore: mtd_block_isbad failed, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtdpstore_block_isbad\00", [42 x i8] zeroinitializer }, align 32
@mtdpstore_block_isbad._entry_ptr = internal global ptr @mtdpstore_block_isbad._entry, section ".printk_index", align 4
@mtdpstore_mark_unused.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtdpstore_mark_unused\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mtdoops-pstore: mark zone %llu unused\0A\00", [57 x i8] zeroinitializer }, align 32
@mtdpstore_mark_used.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtdpstore_mark_used\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mtdoops-pstore: mark zone %llu used\0A\00", [59 x i8] zeroinitializer }, align 32
@mtdpstore_security._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 269, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mtdoops-pstore: all blocks bad!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtdpstore_security\00", [45 x i8] zeroinitializer }, align 32
@mtdpstore_security._entry_ptr = internal global ptr @mtdpstore_security._entry, section ".printk_index", align 4
@mtdpstore_security.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mtdoops-pstore: end security\0A\00", [34 x i8] zeroinitializer }, align 32
@mtdpstore_erase_do.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtdpstore_erase_do\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mtdoops-pstore: try to erase off 0x%llx\0A\00", [55 x i8] zeroinitializer }, align 32
@mtdpstore_erase_do._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 199, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"mtdoops-pstore: erase of region [0x%llx, 0x%llx] on \22%s\22 failed\0A\00", [63 x i8] zeroinitializer }, align 32
@mtdpstore_erase_do._entry_ptr = internal global ptr @mtdpstore_erase_do._entry, section ".printk_index", align 4
@mtdpstore_block_mark_unused.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.43, ptr @.str.2, ptr @.str.34, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtdpstore_block_mark_unused\00", [36 x i8] zeroinitializer }, align 32
@mtdpstore_write.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtdpstore_write\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mtdoops-pstore: try to write off 0x%llx size %zu\0A\00", [46 x i8] zeroinitializer }, align 32
@mtdpstore_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 292, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"mtdoops-pstore: write failure at %lld (%zu of %zu written), err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mtdpstore_write._entry_ptr = internal global ptr @mtdpstore_write._entry, section ".printk_index", align 4
@mtdpstore_mark_removed.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtdpstore_mark_removed\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mtdoops-pstore: mark zone %llu removed\0A\00", [56 x i8] zeroinitializer }, align 32
@mtdpstore_panic_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 373, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"mtdoops-pstore: panic write failure at %lld (%zu of %zu read), err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtdpstore_panic_write\00", [42 x i8] zeroinitializer }, align 32
@mtdpstore_panic_write._entry_ptr = internal global ptr @mtdpstore_panic_write._entry, section ".printk_index", align 4
@mtdpstore_flush_removed_do._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 478, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mtdoops-pstore: write failure at %lld (%zu of %u written), err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtdpstore_flush_removed_do\00", [37 x i8] zeroinitializer }, align 32
@mtdpstore_flush_removed_do._entry_ptr = internal global ptr @mtdpstore_flush_removed_do._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 4294967179, i64 4294967222]
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"mtdpstore_notifier\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 537, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant [9 x i8] c"oops_cxt\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 25, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 553, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 557, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 394, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 397, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 408, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 413, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 436, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 441, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 320, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 327, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 340, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 40, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 76, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 66, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 269, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 270, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 190, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 197, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 90, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 288, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 291, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 145, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 372, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [27 x i8] c"../drivers/mtd/mtdpstore.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 477, i32 5 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author201, ptr @__UNIQUE_ID_description202, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200, ptr @__exitcall_mtdpstore_exit, ptr @__initcall__kmod_mtdpstore__198_569_mtdpstore_init6, ptr @mtdpstore_block_isbad._entry, ptr @mtdpstore_block_isbad._entry_ptr, ptr @mtdpstore_erase_do._entry, ptr @mtdpstore_erase_do._entry_ptr, ptr @mtdpstore_exit, ptr @mtdpstore_flush_removed_do._entry, ptr @mtdpstore_flush_removed_do._entry_ptr, ptr @mtdpstore_init._entry, ptr @mtdpstore_init._entry.3, ptr @mtdpstore_init._entry_ptr, ptr @mtdpstore_init._entry_ptr.5, ptr @mtdpstore_notify_add._entry, ptr @mtdpstore_notify_add._entry.12, ptr @mtdpstore_notify_add._entry.15, ptr @mtdpstore_notify_add._entry.18, ptr @mtdpstore_notify_add._entry.21, ptr @mtdpstore_notify_add._entry_ptr, ptr @mtdpstore_notify_add._entry_ptr.14, ptr @mtdpstore_notify_add._entry_ptr.17, ptr @mtdpstore_notify_add._entry_ptr.20, ptr @mtdpstore_notify_add._entry_ptr.24, ptr @mtdpstore_panic_write._entry, ptr @mtdpstore_panic_write._entry_ptr, ptr @mtdpstore_read._entry, ptr @mtdpstore_read._entry.28, ptr @mtdpstore_read._entry_ptr, ptr @mtdpstore_read._entry_ptr.30, ptr @mtdpstore_security._entry, ptr @mtdpstore_security._entry_ptr, ptr @mtdpstore_write._entry, ptr @mtdpstore_write._entry_ptr, ptr @mtdpstore_notifier, ptr @oops_cxt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_notifier to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oops_cxt to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_notify_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_notify_add._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_notify_add._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_notify_add._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_notify_add._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_read._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_block_isbad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_security._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_erase_do._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_panic_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpstore_flush_removed_do._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdpstore_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pstore_blk_get_config(ptr noundef getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !128

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %char0 = load i8, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp = icmp eq i8 %char0, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %0 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool8.not = icmp eq i32 %0, 0
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call18 = tail call i32 @kstrtoint(ptr noundef getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1), i32 noundef 0, ptr noundef nonnull @oops_cxt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end15.if.end22_crit_edge, label %if.then20

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  store i32 -1, ptr @oops_cxt, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end15.if.end22_crit_edge
  tail call void @register_mtd_user(ptr noundef nonnull @mtdpstore_notifier) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end22 ], [ -22, %do.end12 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtdpstore_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @unregister_mtd_user(ptr noundef nonnull @mtdpstore_notifier) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_mtd_user(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pstore_blk_get_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_mtd_user(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdpstore_notify_add(ptr noundef %mtd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1)) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  store i32 %3, ptr @oops_cxt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %index3 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %4 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index3, align 4
  %6 = load i32, ptr @oops_cxt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %6)
  %cmp.not = icmp ne i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp slt i32 %6, 0
  %or.cond = or i1 %cmp.not, %cmp6
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_notify_add.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_notify_add, %if.then13)) #8
          to label %do.end [label %if.then13], !srcloc !129

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_notify_add.__UNIQUE_ID_ddebug195, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %8) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size, align 8
  %11 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  %mul = shl i32 %11, 1
  %conv = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv)
  %cmp16 = icmp ult i64 %10, %conv
  br i1 %cmp16, label %do.end21, label %if.end24

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56
  %12 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.9, i32 noundef %13) #11
  br label %cleanup

if.end24:                                         ; preds = %do.end
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %14 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp26 = icmp ult i32 %15, %11
  br i1 %cmp26, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56
  %16 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.13, i32 noundef %17) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %18 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %writesize, align 4
  %rem = urem i32 %11, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool36.not = icmp eq i32 %rem, 0
  br i1 %tobool36.not, label %if.else162.i.i, label %do.end46, !prof !128

do.end46:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %dev47 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56
  %div145 = lshr i32 %11, 10
  %div50146 = lshr i32 %19, 10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.16, i32 noundef %div145, i32 noundef %div50146) #11
  br label %cleanup

if.else162.i.i:                                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %10)
  %cmp164.i.i = icmp ult i64 %10, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !128

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %10 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %11
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %10) #13, !srcloc !130
  %asmresult1.i.i.i = extractvalue { i64, i64 } %20, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %sub = add i64 %dividend.addr.0.i.i, 31
  %div55143 = lshr i64 %sub, 5
  %conv56 = trunc i64 %div55143 to i32
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv56, i32 4) #8
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kcalloc.exit, label %if.end7.i.i177, !prof !131

kcalloc.exit:                                     ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 4), align 4
  br label %kcalloc.exit179

if.end7.i.i177:                                   ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = extractvalue { i32, i1 } %21, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #14
  store ptr %call8.i.i, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 4), align 4
  %call8.i.i176 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #14
  br label %kcalloc.exit179

kcalloc.exit179:                                  ; preds = %if.end7.i.i177, %kcalloc.exit
  %retval.0.i.i178 = phi ptr [ %call8.i.i176, %if.end7.i.i177 ], [ null, %kcalloc.exit ]
  store ptr %retval.0.i.i178, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size, align 8
  %26 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %25)
  %cmp164.i.i284 = icmp ult i64 %25, 4294967296
  br i1 %cmp164.i.i284, label %if.then168.i.i289, label %if.else174.i.i291, !prof !128

if.then168.i.i289:                                ; preds = %kcalloc.exit179
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i286 = trunc i64 %25 to i32
  %div172.i.i287 = udiv i32 %conv169.i.i286, %27
  %conv173.i.i288 = zext i32 %div172.i.i287 to i64
  br label %div_u64.exit293

if.else174.i.i291:                                ; preds = %kcalloc.exit179
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %25) #13, !srcloc !130
  %asmresult1.i.i.i290 = extractvalue { i64, i64 } %28, 1
  br label %div_u64.exit293

div_u64.exit293:                                  ; preds = %if.else174.i.i291, %if.then168.i.i289
  %dividend.addr.0.i.i292 = phi i64 [ %conv173.i.i288, %if.then168.i.i289 ], [ %asmresult1.i.i.i290, %if.else174.i.i291 ]
  %sub63 = add i64 %dividend.addr.0.i.i292, 31
  %div64144 = lshr i64 %sub63, 5
  %conv65 = trunc i64 %div64144 to i32
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv65, i32 4) #8
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %div_u64.exit293.kcalloc.exit326_crit_edge, label %if.end7.i.i324, !prof !131

div_u64.exit293.kcalloc.exit326_crit_edge:        ; preds = %div_u64.exit293
  call void @__sanitizer_cov_trace_pc() #10
  br label %kcalloc.exit326

if.end7.i.i324:                                   ; preds = %div_u64.exit293
  call void @__sanitizer_cov_trace_pc() #10
  %31 = extractvalue { i32, i1 } %29, 0
  %call8.i.i323 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #14
  br label %kcalloc.exit326

kcalloc.exit326:                                  ; preds = %if.end7.i.i324, %div_u64.exit293.kcalloc.exit326_crit_edge
  %retval.0.i.i325 = phi ptr [ %call8.i.i323, %if.end7.i.i324 ], [ null, %div_u64.exit293.kcalloc.exit326_crit_edge ]
  store ptr %retval.0.i.i325, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 6), align 4
  store i32 1, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 2), align 4
  store ptr @mtdpstore_read, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 2, i32 1, i32 8), align 4
  store ptr @mtdpstore_write, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 2, i32 1, i32 9), align 4
  store ptr @mtdpstore_erase, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 2, i32 1, i32 10), align 4
  store ptr @mtdpstore_panic_write, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 2, i32 1, i32 11), align 4
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %size, align 8
  %conv76 = trunc i64 %33 to i32
  store i32 %conv76, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 2, i32 1, i32 2), align 4
  %call80 = tail call i32 @register_pstore_device(ptr noundef getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end88, label %do.end85

do.end85:                                         ; preds = %kcalloc.exit326
  call void @__sanitizer_cov_trace_pc() #10
  %dev86 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56
  %34 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.19, i32 noundef %35) #11
  br label %cleanup

if.end88:                                         ; preds = %kcalloc.exit326
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %mtd, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %dev93 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56
  %36 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev93, ptr noundef nonnull @.str.22, i32 noundef %37) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end85, %do.end46, %do.end31, %do.end21, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtdpstore_notify_remove(ptr nocapture noundef readonly %mtd) #4 align 64 {
entry:
  %retlen.i.i = alloca i32, align 4
  %erase.i.i = alloca %struct.erase_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 14
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = load i32, ptr @oops_cxt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp ne i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3 = icmp slt i32 %2, 0
  %or.cond = or i1 %cmp.not, %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size.i, align 8
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %5)
  %cmp164.i.i.i = icmp ult i64 %5, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !128

if.then168.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %5 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %7
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %5) #13, !srcloc !130
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %8, 1
  %extract.t26.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t26.i, %if.else174.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dividend.addr.0.i.i.off0.i)
  %cmp.not28.i = icmp eq i32 %dividend.addr.0.i.i.off0.i, 0
  br i1 %cmp.not28.i, label %div_u64.exit.i.mtdpstore_flush_removed.exit_crit_edge, label %for.body.lr.ph.i

div_u64.exit.i.mtdpstore_flush_removed.exit_crit_edge: ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdpstore_flush_removed.exit

for.body.lr.ph.i:                                 ; preds = %div_u64.exit.i
  %9 = getelementptr inbounds %struct.erase_info, ptr %erase.i.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %blkcnt.031.i = phi i32 [ %dividend.addr.0.i.i.off0.i, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %off.029.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %call3.i = call fastcc i32 @mtdpstore_block_isbad(i64 noundef %off.029.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %10 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %erasesize.i.i, align 8
  %13 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  %div.i.i = udiv i32 %12, %13
  %sub.i.i = add i32 %12, -1
  %conv.i.i = zext i32 %sub.i.i to i64
  %conv5.i.i = zext i32 %12 to i64
  %sub3.i.i = add i64 %off.029.i, -1
  %sub6.i.i = add i64 %sub3.i.i, %conv5.i.i
  %add.i.i = sub i64 %sub6.i.i, %conv.i.i
  %neg.i.i = sub nsw i64 0, %conv5.i.i
  %and.i.i = and i64 %add.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i.i)
  %cmp164.i.i.i.i = icmp ult i64 %and.i.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !128

if.then168.i.i.i.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i.i = trunc i64 %and.i.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %13
  %conv173.i.i.i.i = zext i32 %div172.i.i.i.i to i64
  br label %div_u64.exit.i.i

if.else174.i.i.i.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %and.i.i) #13, !srcloc !130
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %14, 1
  br label %div_u64.exit.i.i

div_u64.exit.i.i:                                 ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.i.i = phi i64 [ %conv173.i.i.i.i, %if.then168.i.i.i.i ], [ %asmresult1.i.i.i.i.i, %if.else174.i.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %12)
  %cmp.not1.i.i = icmp ugt i32 %13, %12
  br i1 %cmp.not1.i.i, label %div_u64.exit.i.i.for.inc.i_crit_edge, label %while.body.lr.ph.i.i

div_u64.exit.i.i.for.inc.i_crit_edge:             ; preds = %div_u64.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

while.body.lr.ph.i.i:                             ; preds = %div_u64.exit.i.i
  %15 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 4), align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %zonenum.03.i.i = phi i64 [ %dividend.addr.0.i.i.i.i, %while.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %zonecnt.02.i.i = phi i32 [ %div.i.i, %while.body.lr.ph.i.i ], [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %conv13.i.i = trunc i64 %zonenum.03.i.i to i32
  %div3.i.i.i = lshr i32 %conv13.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %15, i32 %div3.i.i.i
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %conv13.i.i, 31
  %18 = shl nuw i32 1, %and.i.i.i
  %19 = and i32 %18, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end7.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %inc.i.i = add i64 %zonenum.03.i.i, 1
  %dec.i.i = add i32 %zonecnt.02.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end7.i:                                        ; preds = %while.body.i.i
  %20 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %erasesize.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i.i) #8
  %22 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %retlen.i.i, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %erase.i.i) #8
  %23 = call ptr @memset(ptr %erase.i.i, i32 255, i32 24)
  %24 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %erasesize.i.i, align 8
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #14
  %tobool.not.i6.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i6.i, label %mtdpstore_flush_removed_do.exit.thread.i, label %if.end.i7.i

mtdpstore_flush_removed_do.exit.thread.i:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #8
  br label %mtdpstore_flush_removed.exit

if.end.i7.i:                                      ; preds = %if.end7.i
  %26 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %erasesize.i.i, align 8
  %call3.i.i = call i32 @mtd_read(ptr noundef %10, i64 noundef %off.029.i, i32 noundef %27, ptr noundef nonnull %retlen.i.i, ptr noundef nonnull %call9.i.i.i) #8
  %call3.fr.i.i = freeze i32 %call3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.fr.i.i)
  %cmp.i1.i.i = icmp slt i32 %call3.fr.i.i, 0
  br i1 %cmp.i1.i.i, label %switch.early.test.i.i, label %if.end.i7.i.if.end6.i.i_crit_edge

if.end.i7.i.if.end6.i.i_crit_edge:                ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

switch.early.test.i.i:                            ; preds = %if.end.i7.i
  %28 = zext i32 %call3.fr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3.fr.i.i, label %switch.early.test.i.i.mtdpstore_flush_removed_do.exit.thread19.i_crit_edge [
    i32 -74, label %switch.early.test.i.i.if.end6.i.i_crit_edge
    i32 -117, label %switch.early.test.i.i.if.end6.i.i_crit_edge17
  ]

switch.early.test.i.i.if.end6.i.i_crit_edge17:    ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

switch.early.test.i.i.if.end6.i.i_crit_edge:      ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

switch.early.test.i.i.mtdpstore_flush_removed_do.exit.thread19.i_crit_edge: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdpstore_flush_removed_do.exit.thread19.i

if.end6.i.i:                                      ; preds = %switch.early.test.i.i.if.end6.i.i_crit_edge, %switch.early.test.i.i.if.end6.i.i_crit_edge17, %if.end.i7.i.if.end6.i.i_crit_edge
  %29 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %erasesize.i.i, align 8
  %conv.i8.i = zext i32 %30 to i64
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv.i8.i, ptr %9, align 8
  %32 = ptrtoint ptr %erase.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %off.029.i, ptr %erase.i.i, align 8
  %call8.i.i = call i32 @mtd_erase(ptr noundef %10, ptr noundef nonnull %erase.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %while.cond.preheader.i.i, label %if.end6.i.i.mtdpstore_flush_removed_do.exit.thread19.i_crit_edge

if.end6.i.i.mtdpstore_flush_removed_do.exit.thread19.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdpstore_flush_removed_do.exit.thread19.i

while.cond.preheader.i.i:                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not8.i.i = icmp eq i32 %21, 0
  br i1 %tobool12.not8.i.i, label %mtdpstore_flush_removed_do.exit.thread22.i, label %while.body.lr.ph.i9.i

mtdpstore_flush_removed_do.exit.thread22.i:       ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #8
  br label %for.inc.i

while.body.lr.ph.i9.i:                            ; preds = %while.cond.preheader.i.i
  %dev.i.i = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 56
  br label %while.body.i10.i

while.body.i10.i:                                 ; preds = %if.end20.i.i.while.body.i10.i_crit_edge, %while.body.lr.ph.i9.i
  %ret.016.i.i = phi i32 [ 0, %while.body.lr.ph.i9.i ], [ %ret.1.i.i, %if.end20.i.i.while.body.i10.i_crit_edge ]
  %size.addr.015.i.i = phi i32 [ %21, %while.body.lr.ph.i9.i ], [ %51, %if.end20.i.i.while.body.i10.i_crit_edge ]
  %off.addr.09.i.i = phi i64 [ %off.029.i, %while.body.lr.ph.i9.i ], [ %add.i13.i, %if.end20.i.i.while.body.i10.i_crit_edge ]
  %33 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off.addr.09.i.i)
  %cmp164.i.i.i.i.i = icmp ult i64 %off.addr.09.i.i, 4294967296
  br i1 %cmp164.i.i.i.i.i, label %if.then168.i.i.i.i.i, label %if.else174.i.i.i.i.i, !prof !128

if.then168.i.i.i.i.i:                             ; preds = %while.body.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i.i.i = trunc i64 %off.addr.09.i.i to i32
  %div172.i.i.i.i.i = udiv i32 %conv169.i.i.i.i.i, %33
  br label %div_u64.exit.i.i.i

if.else174.i.i.i.i.i:                             ; preds = %while.body.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %off.addr.09.i.i) #13, !srcloc !130
  %asmresult1.i.i.i.i.i.i = extractvalue { i64, i64 } %34, 1
  %extract.t121.i.i.i = trunc i64 %asmresult1.i.i.i.i.i.i to i32
  br label %div_u64.exit.i.i.i

div_u64.exit.i.i.i:                               ; preds = %if.else174.i.i.i.i.i, %if.then168.i.i.i.i.i
  %dividend.addr.0.i.i.off0.i.i.i = phi i32 [ %div172.i.i.i.i.i, %if.then168.i.i.i.i.i ], [ %extract.t121.i.i.i, %if.else174.i.i.i.i.i ]
  %35 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %erasesize.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %erasesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %erasesize.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off.addr.09.i.i)
  %cmp164.i.i110.i.i.i = icmp ult i64 %off.addr.09.i.i, 4294967296
  br i1 %cmp164.i.i110.i.i.i, label %if.then168.i.i115.i.i.i, label %if.else174.i.i117.i.i.i, !prof !128

if.then168.i.i115.i.i.i:                          ; preds = %div_u64.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i112.i.i.i = trunc i64 %off.addr.09.i.i to i32
  %div172.i.i113.i.i.i = udiv i32 %conv169.i.i112.i.i.i, %37
  br label %div_u64.exit119.i.i.i

if.else174.i.i117.i.i.i:                          ; preds = %div_u64.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 %off.addr.09.i.i) #13, !srcloc !130
  %asmresult1.i.i.i116.i.i.i = extractvalue { i64, i64 } %38, 1
  %extract.t125.i.i.i = trunc i64 %asmresult1.i.i.i116.i.i.i to i32
  br label %div_u64.exit119.i.i.i

div_u64.exit119.i.i.i:                            ; preds = %if.else174.i.i117.i.i.i, %if.then168.i.i115.i.i.i
  %dividend.addr.0.i.i118.off0.i.i.i = phi i32 [ %div172.i.i113.i.i.i, %if.then168.i.i115.i.i.i ], [ %extract.t125.i.i.i, %if.else174.i.i117.i.i.i ]
  %39 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 6), align 4
  %div3.i.i.i.i = lshr i32 %dividend.addr.0.i.i118.off0.i.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %39, i32 %div3.i.i.i.i
  %40 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i11.i = and i32 %dividend.addr.0.i.i118.off0.i.i.i, 31
  %42 = shl nuw i32 1, %and.i.i.i11.i
  %43 = and i32 %41, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i12.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i12.i, label %mtdpstore_is_used.exit.i.i, label %div_u64.exit119.i.i.i.if.then15.i.i_crit_edge

div_u64.exit119.i.i.i.if.then15.i.i_crit_edge:    ; preds = %div_u64.exit119.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i.i

mtdpstore_is_used.exit.i.i:                       ; preds = %div_u64.exit119.i.i.i
  %44 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  %div3.i1.i.i.i = lshr i32 %dividend.addr.0.i.i.off0.i.i.i, 5
  %arrayidx.i2.i.i.i = getelementptr i32, ptr %44, i32 %div3.i1.i.i.i
  %45 = ptrtoint ptr %arrayidx.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i2.i.i.i, align 4
  %and.i3.i.i.i = and i32 %dividend.addr.0.i.i.off0.i.i.i, 31
  %47 = shl nuw i32 1, %and.i3.i.i.i
  %48 = and i32 %46, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool14.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool14.not.i.i, label %mtdpstore_is_used.exit.i.i.if.end20.i.i_crit_edge, label %mtdpstore_is_used.exit.i.i.if.then15.i.i_crit_edge

mtdpstore_is_used.exit.i.i.if.then15.i.i_crit_edge: ; preds = %mtdpstore_is_used.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i.i

mtdpstore_is_used.exit.i.i.if.end20.i.i_crit_edge: ; preds = %mtdpstore_is_used.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

if.then15.i.i:                                    ; preds = %mtdpstore_is_used.exit.i.i.if.then15.i.i_crit_edge, %div_u64.exit119.i.i.i.if.then15.i.i_crit_edge
  %call16.i.i = call i32 @mtd_write(ptr noundef %10, i64 noundef %off.addr.09.i.i, i32 noundef %33, ptr noundef nonnull %retlen.i.i, ptr noundef nonnull %call9.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.then15.i.i.if.end20.i.i_crit_edge, label %do.end.i.i

if.then15.i.i.if.end20.i.i_crit_edge:             ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %retlen.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.51, i64 noundef %off.addr.09.i.i, i32 noundef %50, i32 noundef %33, i32 noundef %call16.i.i) #11
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.end.i.i, %if.then15.i.i.if.end20.i.i_crit_edge, %mtdpstore_is_used.exit.i.i.if.end20.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %call16.i.i, %do.end.i.i ], [ 0, %if.then15.i.i.if.end20.i.i_crit_edge ], [ %ret.016.i.i, %mtdpstore_is_used.exit.i.i.if.end20.i.i_crit_edge ]
  %conv21.i.i = zext i32 %33 to i64
  %add.i13.i = add i64 %off.addr.09.i.i, %conv21.i.i
  %51 = call i32 @llvm.usub.sat.i32(i32 %size.addr.015.i.i, i32 %33) #8
  %tobool12.not.not.i.i = icmp ugt i32 %size.addr.015.i.i, %33
  br i1 %tobool12.not.not.i.i, label %if.end20.i.i.while.body.i10.i_crit_edge, label %mtdpstore_flush_removed_do.exit.i

if.end20.i.i.while.body.i10.i_crit_edge:          ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i10.i

mtdpstore_flush_removed_do.exit.thread19.i:       ; preds = %if.end6.i.i.mtdpstore_flush_removed_do.exit.thread19.i_crit_edge, %switch.early.test.i.i.mtdpstore_flush_removed_do.exit.thread19.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #8
  br label %mtdpstore_flush_removed.exit

mtdpstore_flush_removed_do.exit.i:                ; preds = %if.end20.i.i
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %tobool10.not.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %tobool10.not.i, label %mtdpstore_flush_removed_do.exit.i.for.inc.i_crit_edge, label %mtdpstore_flush_removed_do.exit.i.mtdpstore_flush_removed.exit_crit_edge

mtdpstore_flush_removed_do.exit.i.mtdpstore_flush_removed.exit_crit_edge: ; preds = %mtdpstore_flush_removed_do.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdpstore_flush_removed.exit

mtdpstore_flush_removed_do.exit.i.for.inc.i_crit_edge: ; preds = %mtdpstore_flush_removed_do.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %mtdpstore_flush_removed_do.exit.i.for.inc.i_crit_edge, %mtdpstore_flush_removed_do.exit.thread22.i, %if.end.i.i.for.inc.i_crit_edge, %div_u64.exit.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %dec.i = add i32 %blkcnt.031.i, -1
  %52 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %erasesize.i, align 8
  %conv14.i = zext i32 %53 to i64
  %add.i = add i64 %off.029.i, %conv14.i
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.inc.i.mtdpstore_flush_removed.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.mtdpstore_flush_removed.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtdpstore_flush_removed.exit

mtdpstore_flush_removed.exit:                     ; preds = %for.inc.i.mtdpstore_flush_removed.exit_crit_edge, %mtdpstore_flush_removed_do.exit.i.mtdpstore_flush_removed.exit_crit_edge, %mtdpstore_flush_removed_do.exit.thread19.i, %mtdpstore_flush_removed_do.exit.thread.i, %div_u64.exit.i.mtdpstore_flush_removed.exit_crit_edge
  call void @unregister_pstore_device(ptr noundef getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 2)) #8
  %54 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 6), align 4
  call void @kfree(ptr noundef %54) #8
  %55 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  call void @kfree(ptr noundef %55) #8
  %56 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 4), align 4
  call void @kfree(ptr noundef %56) #8
  store ptr null, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  store i32 -1, ptr @oops_cxt, align 4
  br label %cleanup

cleanup:                                          ; preds = %mtdpstore_flush_removed.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdpstore_read(ptr noundef %buf, i32 noundef %size, i64 noundef %off) #4 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #8
  %1 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %retlen, align 4, !annotation !132
  %call = tail call fastcc i32 @mtdpstore_block_isbad(i64 noundef %off)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_read.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_read, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !129

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_read.__UNIQUE_ID_ddebug194, ptr noundef %dev, ptr noundef nonnull @.str.26, i64 noundef %off, i32 noundef %size) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %2 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp201.not = icmp eq i32 %size, 0
  br i1 %cmp201.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %dev26 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %done.0202 = phi i32 [ 0, %for.body.lr.ph ], [ %add34, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %retlen, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %conv = zext i32 %done.0202 to i64
  %add = add i64 %conv, %off
  %sub = sub i32 %size, %done.0202
  %add.ptr = getelementptr i8, ptr %buf, i32 %done.0202
  %call9 = call i32 @mtd_read(ptr noundef %4, i64 noundef %add, i32 noundef %sub, ptr noundef nonnull %retlen, ptr noundef %add.ptr) #8
  %call9.fr = freeze i32 %call9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.fr)
  %cmp.i = icmp slt i32 %call9.fr, 0
  br i1 %cmp.i, label %switch.early.test, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

switch.early.test:                                ; preds = %for.body
  %5 = zext i32 %call9.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call9.fr, label %do.end14 [
    i32 -74, label %do.end25
    i32 -117, label %switch.early.test.for.inc_crit_edge
  ]

switch.early.test.for.inc_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end14:                                         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  %call9.fr.le = freeze i32 %call9
  %6 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %retlen, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.27, i64 noundef %add, i32 noundef %7, i32 noundef %sub, i32 noundef %call9.fr.le) #11
  br label %cleanup

do.end25:                                         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retlen, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.29, i64 noundef %add, i32 noundef %9, i32 noundef %sub, i32 noundef -74) #11
  %10 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp30 = icmp eq i32 %11, 0
  %sub. = select i1 %cmp30, i32 %sub, i32 %11
  %12 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub., ptr %retlen, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end25, %switch.early.test.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %retlen, align 4
  %add34 = add i32 %14, %done.0202
  %cmp = icmp ult i32 %add34, %size
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %15 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize.i, align 4
  %div1.i = lshr i32 %17, 2
  %18 = call i32 @llvm.umin.i32(i32 %div1.i, i32 %size) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp22.not.i = icmp eq i32 %18, 0
  br i1 %cmp22.not.i, label %for.end.if.then37_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.if.then37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.cond.i.if.then37_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.if.then37_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.03.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp3.not.i = icmp eq i8 %20, -1
  br i1 %cmp3.not.i, label %for.cond.i, label %if.else

if.then37:                                        ; preds = %for.cond.i.if.then37_crit_edge, %for.end.if.then37_crit_edge
  %21 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i.i.i = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !128

if.then168.i.i.i:                                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %off to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %21
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %22 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %off) #13, !srcloc !130
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %22, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_mark_unused.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_read, %if.then.i)) #8
          to label %mtdpstore_mark_unused.exit [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_mark_unused.__UNIQUE_ID_ddebug186, ptr noundef %dev.i, ptr noundef nonnull @.str.34, i64 noundef %dividend.addr.0.i.i.i) #8
  br label %mtdpstore_mark_unused.exit

mtdpstore_mark_unused.exit:                       ; preds = %if.then.i, %div_u64.exit.i
  %conv.i80 = trunc i64 %dividend.addr.0.i.i.i to i32
  %23 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  call void @_clear_bit(i32 noundef %conv.i80, ptr noundef %23) #8
  br label %if.end38

if.else:                                          ; preds = %for.body.i
  %24 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i.i.i185 = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i.i.i185, label %if.then168.i.i.i190, label %if.else174.i.i.i192, !prof !128

if.then168.i.i.i190:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i187 = trunc i64 %off to i32
  %div172.i.i.i188 = udiv i32 %conv169.i.i.i187, %24
  %conv173.i.i.i189 = zext i32 %div172.i.i.i188 to i64
  br label %div_u64.exit.i194

if.else174.i.i.i192:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %25 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %off) #13, !srcloc !130
  %asmresult1.i.i.i.i191 = extractvalue { i64, i64 } %25, 1
  br label %div_u64.exit.i194

div_u64.exit.i194:                                ; preds = %if.else174.i.i.i192, %if.then168.i.i.i190
  %dividend.addr.0.i.i.i193 = phi i64 [ %conv173.i.i.i189, %if.then168.i.i.i190 ], [ %asmresult1.i.i.i.i191, %if.else174.i.i.i192 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_mark_used.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_read, %if.then.i196)) #8
          to label %mtdpstore_mark_used.exit [label %if.then.i196], !srcloc !129

if.then.i196:                                     ; preds = %div_u64.exit.i194
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i195 = getelementptr inbounds %struct.mtd_info, ptr %15, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_mark_used.__UNIQUE_ID_ddebug185, ptr noundef %dev.i195, ptr noundef nonnull @.str.36, i64 noundef %dividend.addr.0.i.i.i193) #8
  br label %mtdpstore_mark_used.exit

mtdpstore_mark_used.exit:                         ; preds = %if.then.i196, %div_u64.exit.i194
  %conv.i197 = trunc i64 %dividend.addr.0.i.i.i193 to i32
  %26 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  call void @_set_bit(i32 noundef %conv.i197, ptr noundef %26) #8
  br label %if.end38

if.end38:                                         ; preds = %mtdpstore_mark_used.exit, %mtdpstore_mark_unused.exit
  call fastcc void @mtdpstore_security(i64 noundef %off)
  %27 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %retlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -42, %do.end14 ], [ %28, %if.end38 ], [ -42, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdpstore_write(ptr noundef %buf, i32 noundef %size, i64 noundef %off) #4 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #8
  %1 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %retlen, align 4, !annotation !132
  %call = tail call fastcc i32 @mtdpstore_block_isbad(i64 noundef %off)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i.i.i = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !128

if.then168.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %off to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %2
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %off) #13, !srcloc !130
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %3, 1
  %extract.t121.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t121.i, %if.else174.i.i.i ]
  %4 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i.i110.i = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i.i110.i, label %if.then168.i.i115.i, label %if.else174.i.i117.i, !prof !128

if.then168.i.i115.i:                              ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i112.i = trunc i64 %off to i32
  %div172.i.i113.i = udiv i32 %conv169.i.i112.i, %6
  br label %div_u64.exit119.i

if.else174.i.i117.i:                              ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %off) #13, !srcloc !130
  %asmresult1.i.i.i116.i = extractvalue { i64, i64 } %7, 1
  %extract.t125.i = trunc i64 %asmresult1.i.i.i116.i to i32
  br label %div_u64.exit119.i

div_u64.exit119.i:                                ; preds = %if.else174.i.i117.i, %if.then168.i.i115.i
  %dividend.addr.0.i.i118.off0.i = phi i32 [ %div172.i.i113.i, %if.then168.i.i115.i ], [ %extract.t125.i, %if.else174.i.i117.i ]
  %8 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 6), align 4
  %div3.i.i = lshr i32 %dividend.addr.0.i.i118.off0.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %8, i32 %div3.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %dividend.addr.0.i.i118.off0.i, 31
  %11 = shl nuw i32 1, %and.i.i
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %mtdpstore_is_used.exit, label %div_u64.exit119.i.cleanup_crit_edge

div_u64.exit119.i.cleanup_crit_edge:              ; preds = %div_u64.exit119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtdpstore_is_used.exit:                           ; preds = %div_u64.exit119.i
  %13 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  %div3.i1.i = lshr i32 %dividend.addr.0.i.i.off0.i, 5
  %arrayidx.i2.i = getelementptr i32, ptr %13, i32 %div3.i1.i
  %14 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i2.i, align 4
  %and.i3.i = and i32 %dividend.addr.0.i.i.off0.i, 31
  %16 = shl nuw i32 1, %and.i3.i
  %17 = and i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not = icmp eq i32 %17, 0
  br i1 %tobool3.not, label %do.body, label %mtdpstore_is_used.exit.cleanup_crit_edge

mtdpstore_is_used.exit.cleanup_crit_edge:         ; preds = %mtdpstore_is_used.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %mtdpstore_is_used.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_write.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_write, %if.then10)) #8
          to label %do.end [label %if.then10], !srcloc !129

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_write.__UNIQUE_ID_ddebug193, ptr noundef %dev, ptr noundef nonnull @.str.45, i64 noundef %off, i32 noundef %size) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %18 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %call13 = call i32 @mtd_write(ptr noundef %18, i64 noundef %off, i32 noundef %size, ptr noundef nonnull %retlen, ptr noundef %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %do.end.do.end18_crit_edge, label %lor.lhs.false

do.end.do.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

lor.lhs.false:                                    ; preds = %do.end
  %19 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %size)
  %cmp14.not = icmp eq i32 %20, %size
  br i1 %cmp14.not, label %if.end20, label %lor.lhs.false.do.end18_crit_edge

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false.do.end18_crit_edge, %do.end.do.end18_crit_edge
  %dev19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  %21 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retlen, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.46, i64 noundef %off, i32 noundef %22, i32 noundef %size, i32 noundef %call13) #11
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  %23 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %24 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i.i.i146 = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i.i.i146, label %if.then168.i.i.i150, label %if.else174.i.i.i152, !prof !128

if.then168.i.i.i150:                              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i148 = trunc i64 %off to i32
  %div172.i.i.i149 = udiv i32 %conv169.i.i.i148, %24
  %conv173.i.i.i = zext i32 %div172.i.i.i149 to i64
  br label %div_u64.exit.i153

if.else174.i.i.i152:                              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %25 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %off) #13, !srcloc !130
  %asmresult1.i.i.i.i151 = extractvalue { i64, i64 } %25, 1
  br label %div_u64.exit.i153

div_u64.exit.i153:                                ; preds = %if.else174.i.i.i152, %if.then168.i.i.i150
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i150 ], [ %asmresult1.i.i.i.i151, %if.else174.i.i.i152 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_mark_used.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_write, %if.then.i)) #8
          to label %mtdpstore_mark_used.exit [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %div_u64.exit.i153
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mtd_info, ptr %23, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_mark_used.__UNIQUE_ID_ddebug185, ptr noundef %dev.i, ptr noundef nonnull @.str.36, i64 noundef %dividend.addr.0.i.i.i) #8
  br label %mtdpstore_mark_used.exit

mtdpstore_mark_used.exit:                         ; preds = %if.then.i, %div_u64.exit.i153
  %conv.i = trunc i64 %dividend.addr.0.i.i.i to i32
  %26 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  call void @_set_bit(i32 noundef %conv.i, ptr noundef %26) #8
  call fastcc void @mtdpstore_security(i64 noundef %off)
  %27 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %retlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %mtdpstore_mark_used.exit, %do.end18, %mtdpstore_is_used.exit.cleanup_crit_edge, %div_u64.exit119.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end18 ], [ %28, %mtdpstore_mark_used.exit ], [ -42, %entry.cleanup_crit_edge ], [ -42, %mtdpstore_is_used.exit.cleanup_crit_edge ], [ -42, %div_u64.exit119.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdpstore_erase(i32 noundef %size, i64 noundef %off) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mtdpstore_block_isbad(i64 noundef %off)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i.i.i = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !128

if.then168.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %off to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %1
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %off) #13, !srcloc !130
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %2, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_mark_unused.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_erase, %if.then.i)) #8
          to label %mtdpstore_mark_unused.exit [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_mark_unused.__UNIQUE_ID_ddebug186, ptr noundef %dev.i, ptr noundef nonnull @.str.34, i64 noundef %dividend.addr.0.i.i.i) #8
  br label %mtdpstore_mark_unused.exit

mtdpstore_mark_unused.exit:                       ; preds = %if.then.i, %div_u64.exit.i
  %conv.i = trunc i64 %dividend.addr.0.i.i.i to i32
  %3 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %3) #8
  %4 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %erasesize.i, align 8
  %7 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  %div.i = udiv i32 %6, %7
  %sub.i = add i32 %6, -1
  %conv.i16 = zext i32 %sub.i to i64
  %conv5.i = zext i32 %6 to i64
  %sub3.i = add i64 %off, -1
  %sub6.i = add i64 %sub3.i, %conv5.i
  %add.i = sub i64 %sub6.i, %conv.i16
  %neg.i = sub nsw i64 0, %conv5.i
  %and.i = and i64 %add.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i)
  %cmp164.i.i.i121 = icmp ult i64 %and.i, 4294967296
  br i1 %cmp164.i.i.i121, label %if.then168.i.i.i126, label %if.else174.i.i.i128, !prof !128

if.then168.i.i.i126:                              ; preds = %mtdpstore_mark_unused.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i123 = trunc i64 %and.i to i32
  %div172.i.i.i124 = udiv i32 %conv169.i.i.i123, %7
  %conv173.i.i.i125 = zext i32 %div172.i.i.i124 to i64
  br label %div_u64.exit.i130

if.else174.i.i.i128:                              ; preds = %mtdpstore_mark_unused.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %and.i) #13, !srcloc !130
  %asmresult1.i.i.i.i127 = extractvalue { i64, i64 } %8, 1
  br label %div_u64.exit.i130

div_u64.exit.i130:                                ; preds = %if.else174.i.i.i128, %if.then168.i.i.i126
  %dividend.addr.0.i.i.i129 = phi i64 [ %conv173.i.i.i125, %if.then168.i.i.i126 ], [ %asmresult1.i.i.i.i127, %if.else174.i.i.i128 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %6)
  %cmp.not1.i = icmp ugt i32 %7, %6
  br i1 %cmp.not1.i, label %div_u64.exit.i130.if.end6_crit_edge, label %while.body.lr.ph.i

div_u64.exit.i130.if.end6_crit_edge:              ; preds = %div_u64.exit.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

while.body.lr.ph.i:                               ; preds = %div_u64.exit.i130
  %9 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %zonenum.03.i = phi i64 [ %dividend.addr.0.i.i.i129, %while.body.lr.ph.i ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %zonecnt.02.i = phi i32 [ %div.i, %while.body.lr.ph.i ], [ %dec.i, %if.end.i.while.body.i_crit_edge ]
  %conv13.i = trunc i64 %zonenum.03.i to i32
  %div3.i.i = lshr i32 %conv13.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 %div3.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv13.i, 31
  %12 = shl nuw i32 1, %and.i.i
  %13 = and i32 %12, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else162.i.i.i236

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add i64 %zonenum.03.i, 1
  %dec.i = add i32 %zonecnt.02.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end6_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.else162.i.i.i236:                              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i.i.i235 = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i.i.i235, label %if.then168.i.i.i240, label %if.else174.i.i.i242, !prof !128

if.then168.i.i.i240:                              ; preds = %if.else162.i.i.i236
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i237 = trunc i64 %off to i32
  %div172.i.i.i238 = udiv i32 %conv169.i.i.i237, %7
  %conv173.i.i.i239 = zext i32 %div172.i.i.i238 to i64
  br label %div_u64.exit.i244

if.else174.i.i.i242:                              ; preds = %if.else162.i.i.i236
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %off) #13, !srcloc !130
  %asmresult1.i.i.i.i241 = extractvalue { i64, i64 } %14, 1
  br label %div_u64.exit.i244

div_u64.exit.i244:                                ; preds = %if.else174.i.i.i242, %if.then168.i.i.i240
  %dividend.addr.0.i.i.i243 = phi i64 [ %conv173.i.i.i239, %if.then168.i.i.i240 ], [ %asmresult1.i.i.i.i241, %if.else174.i.i.i242 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_mark_removed.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_erase, %if.then.i246)) #8
          to label %mtdpstore_mark_removed.exit [label %if.then.i246], !srcloc !129

if.then.i246:                                     ; preds = %div_u64.exit.i244
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i245 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_mark_removed.__UNIQUE_ID_ddebug190, ptr noundef %dev.i245, ptr noundef nonnull @.str.48, i64 noundef %dividend.addr.0.i.i.i243) #8
  br label %mtdpstore_mark_removed.exit

mtdpstore_mark_removed.exit:                      ; preds = %if.then.i246, %div_u64.exit.i244
  %conv.i247 = trunc i64 %dividend.addr.0.i.i.i243 to i32
  %15 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 4), align 4
  tail call void @_set_bit(i32 noundef %conv.i247, ptr noundef %15) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.if.end6_crit_edge, %div_u64.exit.i130.if.end6_crit_edge
  %call7 = tail call fastcc i32 @mtdpstore_erase_do(i64 noundef %off)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %mtdpstore_mark_removed.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mtdpstore_mark_removed.exit ], [ %call7, %if.end6 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtdpstore_panic_write(ptr noundef %buf, i32 noundef %size, i64 noundef %off) #4 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #8
  %1 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %retlen, align 4, !annotation !132
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %2 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %erasesize.i, align 8
  %sub.i = add i32 %3, -1
  %conv.i = zext i32 %sub.i to i64
  %sub2.i = sub i64 %off, %conv.i
  %conv4.i = zext i32 %3 to i64
  %sub5.i = add nsw i64 %conv4.i, -1
  %add.i = add i64 %sub2.i, %sub5.i
  %neg.i = sub nsw i64 0, %conv4.i
  %and.i = and i64 %add.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i)
  %cmp164.i.i.i = icmp ult i64 %and.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !128

if.then168.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %and.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %3
  br label %mtdpstore_panic_block_isbad.exit

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %and.i) #13, !srcloc !130
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %4, 1
  %extract.t2.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %mtdpstore_panic_block_isbad.exit

mtdpstore_panic_block_isbad.exit:                 ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t2.i, %if.else174.i.i.i ]
  %5 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 6), align 4
  %div3.i.i = lshr i32 %dividend.addr.0.i.i.off0.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %5, i32 %div3.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %dividend.addr.0.i.i.off0.i, 31
  %8 = shl nuw i32 1, %and.i.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %mtdpstore_panic_block_isbad.exit.cleanup_crit_edge

mtdpstore_panic_block_isbad.exit.cleanup_crit_edge: ; preds = %mtdpstore_panic_block_isbad.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mtdpstore_panic_block_isbad.exit
  %10 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i.i.i128 = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i.i.i128, label %if.then168.i.i.i132, label %if.else174.i.i.i134, !prof !128

if.then168.i.i.i132:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i130 = trunc i64 %off to i32
  %div172.i.i.i131 = udiv i32 %conv169.i.i.i130, %10
  br label %if.else162.i.i111.i

if.else174.i.i.i134:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %off) #13, !srcloc !130
  %asmresult1.i.i.i.i133 = extractvalue { i64, i64 } %11, 1
  %extract.t121.i = trunc i64 %asmresult1.i.i.i.i133 to i32
  br label %if.else162.i.i111.i

if.else162.i.i111.i:                              ; preds = %if.else174.i.i.i134, %if.then168.i.i.i132
  %dividend.addr.0.i.i.off0.i135 = phi i32 [ %div172.i.i.i131, %if.then168.i.i.i132 ], [ %extract.t121.i, %if.else174.i.i.i134 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i.i110.i = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i.i110.i, label %if.then168.i.i115.i, label %if.else174.i.i117.i, !prof !128

if.then168.i.i115.i:                              ; preds = %if.else162.i.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i112.i = trunc i64 %off to i32
  %div172.i.i113.i = udiv i32 %conv169.i.i112.i, %3
  br label %div_u64.exit119.i

if.else174.i.i117.i:                              ; preds = %if.else162.i.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %off) #13, !srcloc !130
  %asmresult1.i.i.i116.i = extractvalue { i64, i64 } %12, 1
  %extract.t125.i = trunc i64 %asmresult1.i.i.i116.i to i32
  br label %div_u64.exit119.i

div_u64.exit119.i:                                ; preds = %if.else174.i.i117.i, %if.then168.i.i115.i
  %dividend.addr.0.i.i118.off0.i = phi i32 [ %div172.i.i113.i, %if.then168.i.i115.i ], [ %extract.t125.i, %if.else174.i.i117.i ]
  %div3.i.i137 = lshr i32 %dividend.addr.0.i.i118.off0.i, 5
  %arrayidx.i.i138 = getelementptr i32, ptr %5, i32 %div3.i.i137
  %13 = ptrtoint ptr %arrayidx.i.i138 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i138, align 4
  %and.i.i139 = and i32 %dividend.addr.0.i.i118.off0.i, 31
  %15 = shl nuw i32 1, %and.i.i139
  %16 = and i32 %15, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %mtdpstore_is_used.exit, label %div_u64.exit119.i.cleanup_crit_edge

div_u64.exit119.i.cleanup_crit_edge:              ; preds = %div_u64.exit119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtdpstore_is_used.exit:                           ; preds = %div_u64.exit119.i
  %17 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  %div3.i1.i = lshr i32 %dividend.addr.0.i.i.off0.i135, 5
  %arrayidx.i2.i = getelementptr i32, ptr %17, i32 %div3.i1.i
  %18 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i2.i, align 4
  %and.i3.i = and i32 %dividend.addr.0.i.i.off0.i135, 31
  %20 = shl nuw i32 1, %and.i3.i
  %21 = and i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool3.not = icmp eq i32 %21, 0
  br i1 %tobool3.not, label %if.end5, label %mtdpstore_is_used.exit.cleanup_crit_edge

mtdpstore_is_used.exit.cleanup_crit_edge:         ; preds = %mtdpstore_is_used.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %mtdpstore_is_used.exit
  %call7 = call i32 @mtd_panic_write(ptr noundef %0, i64 noundef %off, i32 noundef %size, ptr noundef nonnull %retlen, ptr noundef %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end5.do.end_crit_edge, label %lor.lhs.false

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end5
  %22 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %size)
  %cmp8.not = icmp eq i32 %23, %size
  br i1 %cmp8.not, label %if.end10, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end5.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  %24 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retlen, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i64 noundef %off, i32 noundef %25, i32 noundef %size, i32 noundef %call7) #11
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %26 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %27 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i.i.i244 = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i.i.i244, label %if.then168.i.i.i248, label %if.else174.i.i.i250, !prof !128

if.then168.i.i.i248:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i246 = trunc i64 %off to i32
  %div172.i.i.i247 = udiv i32 %conv169.i.i.i246, %27
  %conv173.i.i.i = zext i32 %div172.i.i.i247 to i64
  br label %div_u64.exit.i251

if.else174.i.i.i250:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %28 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %off) #13, !srcloc !130
  %asmresult1.i.i.i.i249 = extractvalue { i64, i64 } %28, 1
  br label %div_u64.exit.i251

div_u64.exit.i251:                                ; preds = %if.else174.i.i.i250, %if.then168.i.i.i248
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i248 ], [ %asmresult1.i.i.i.i249, %if.else174.i.i.i250 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_mark_used.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_panic_write, %if.then.i)) #8
          to label %mtdpstore_mark_used.exit [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %div_u64.exit.i251
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mtd_info, ptr %26, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_mark_used.__UNIQUE_ID_ddebug185, ptr noundef %dev.i, ptr noundef nonnull @.str.36, i64 noundef %dividend.addr.0.i.i.i) #8
  br label %mtdpstore_mark_used.exit

mtdpstore_mark_used.exit:                         ; preds = %if.then.i, %div_u64.exit.i251
  %conv.i252 = trunc i64 %dividend.addr.0.i.i.i to i32
  %29 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  call void @_set_bit(i32 noundef %conv.i252, ptr noundef %29) #8
  %30 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %retlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %mtdpstore_mark_used.exit, %do.end, %mtdpstore_is_used.exit.cleanup_crit_edge, %div_u64.exit119.i.cleanup_crit_edge, %mtdpstore_panic_block_isbad.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %31, %mtdpstore_mark_used.exit ], [ -42, %mtdpstore_panic_block_isbad.exit.cleanup_crit_edge ], [ -42, %mtdpstore_is_used.exit.cleanup_crit_edge ], [ -42, %div_u64.exit119.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pstore_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdpstore_block_isbad(i64 noundef %off) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %erasesize, align 8
  %sub = add i32 %2, -1
  %conv = zext i32 %sub to i64
  %sub2 = sub i64 %off, %conv
  %conv4 = zext i32 %2 to i64
  %sub5 = add nsw i64 %conv4, -1
  %add = add i64 %sub2, %sub5
  %neg = sub nsw i64 0, %conv4
  %and = and i64 %add, %neg
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and)
  %cmp164.i.i = icmp ult i64 %and, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !128

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %and to i32
  %div172.i.i = udiv i32 %conv169.i.i, %2
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %and) #13, !srcloc !130
  %asmresult1.i.i.i = extractvalue { i64, i64 } %3, 1
  %extract.t2 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t2, %if.else174.i.i ]
  %4 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 6), align 4
  %div3.i = lshr i32 %dividend.addr.0.i.i.off0, 5
  %arrayidx.i = getelementptr i32, ptr %4, i32 %div3.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %dividend.addr.0.i.i.off0, 31
  %7 = shl nuw i32 1, %and.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %div_u64.exit.cleanup_crit_edge

div_u64.exit.cleanup_crit_edge:                   ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %div_u64.exit
  %call12 = tail call i32 @mtd_block_isbad(ptr noundef %0, i64 noundef %and) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp15.not = icmp eq i32 %call12, 0
  br i1 %cmp15.not, label %if.else.cleanup_crit_edge, label %if.then17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 6), align 4
  tail call void @_set_bit(i32 noundef %dividend.addr.0.i.i.off0, ptr noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.else.cleanup_crit_edge, %do.end, %div_u64.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end ], [ 1, %if.then17 ], [ 1, %div_u64.exit.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtdpstore_security(i64 noundef %off) unnamed_addr #4 align 64 {
entry:
  %off.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %off, ptr %off.addr, align 8
  %1 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %off)
  %cmp164.i.i = icmp ult i64 %off, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !128

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %off to i32
  %div172.i.i = udiv i32 %conv169.i.i, %2
  br label %if.else162.i.i106

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %off) #13, !srcloc !130
  %asmresult1.i.i.i = extractvalue { i64, i64 } %3, 1
  %extract.t238 = trunc i64 %asmresult1.i.i.i to i32
  br label %if.else162.i.i106

if.else162.i.i106:                                ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t238, %if.else174.i.i ]
  %size = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %5)
  %cmp164.i.i105 = icmp ult i64 %5, 4294967296
  br i1 %cmp164.i.i105, label %if.then168.i.i110, label %if.else174.i.i112, !prof !128

if.then168.i.i110:                                ; preds = %if.else162.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i107 = trunc i64 %5 to i32
  %div172.i.i108 = udiv i32 %conv169.i.i107, %2
  br label %div_u64.exit114

if.else174.i.i112:                                ; preds = %if.else162.i.i106
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %5) #13, !srcloc !130
  %asmresult1.i.i.i111 = extractvalue { i64, i64 } %6, 1
  %extract.t240 = trunc i64 %asmresult1.i.i.i111 to i32
  br label %div_u64.exit114

div_u64.exit114:                                  ; preds = %if.else174.i.i112, %if.then168.i.i110
  %dividend.addr.0.i.i113.off0 = phi i32 [ %div172.i.i108, %if.then168.i.i110 ], [ %extract.t240, %if.else174.i.i112 ]
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %erasesize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %5)
  %cmp164.i.i219 = icmp ult i64 %5, 4294967296
  br i1 %cmp164.i.i219, label %if.then168.i.i224, label %if.else174.i.i226, !prof !128

if.then168.i.i224:                                ; preds = %div_u64.exit114
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i221 = trunc i64 %5 to i32
  %div172.i.i222 = udiv i32 %conv169.i.i221, %8
  br label %div_u64.exit228

if.else174.i.i226:                                ; preds = %div_u64.exit114
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %5) #13, !srcloc !130
  %asmresult1.i.i.i225 = extractvalue { i64, i64 } %9, 1
  %extract.t244 = trunc i64 %asmresult1.i.i.i225 to i32
  br label %div_u64.exit228

div_u64.exit228:                                  ; preds = %if.else174.i.i226, %if.then168.i.i224
  %dividend.addr.0.i.i227.off0 = phi i32 [ %div172.i.i222, %if.then168.i.i224 ], [ %extract.t244, %if.else174.i.i226 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dividend.addr.0.i.i113.off0)
  %cmp250.not = icmp eq i32 %dividend.addr.0.i.i113.off0, 0
  br i1 %cmp250.not, label %div_u64.exit228.while.cond.preheader_crit_edge, label %for.body.lr.ph

div_u64.exit228.while.cond.preheader_crit_edge:   ; preds = %div_u64.exit228
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %div_u64.exit228
  %10 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0251, 1
  %exitcond.not = icmp eq i32 %inc, %dividend.addr.0.i.i113.off0
  br i1 %exitcond.not, label %for.cond.while.cond.preheader_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.while.cond.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond.while.cond.preheader_crit_edge, %div_u64.exit228.while.cond.preheader_crit_edge
  %conv18 = zext i32 %8 to i64
  br label %while.cond.outer

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0251 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %add = add i32 %i.0251, %dividend.addr.0.i.i.off0
  %rem = urem i32 %add, %dividend.addr.0.i.i113.off0
  %div3.i = lshr i32 %rem, 5
  %arrayidx.i = getelementptr i32, ptr %10, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %rem, 31
  %13 = shl nuw i32 1, %and.i
  %14 = and i32 %12, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %for.body.cleanup44_crit_edge, label %for.cond

for.body.cleanup44_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup44

while.cond:                                       ; preds = %while.cond.outer, %while.body.while.cond_crit_edge
  %blkcnt.0 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ %blkcnt.0.ph, %while.cond.outer ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blkcnt.0)
  %tobool17.not = icmp eq i32 %blkcnt.0, 0
  br i1 %tobool17.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %dec = add i32 %blkcnt.0, -1
  %15 = ptrtoint ptr %off.addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %off.addr, align 8
  %add19 = add i64 %16, %conv18
  %17 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %size21 = getelementptr inbounds %struct.mtd_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %size21 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size21, align 8
  %call22 = call i64 @div64_u64_rem(i64 noundef %add19, i64 noundef %19, ptr noundef nonnull %off.addr) #8
  %20 = ptrtoint ptr %off.addr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %off.addr, align 8
  %call23 = call fastcc i32 @mtdpstore_block_isbad(i64 noundef %21)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end26:                                         ; preds = %while.body
  %22 = ptrtoint ptr %off.addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %off.addr, align 8
  %call27 = call fastcc i32 @mtdpstore_erase_do(i64 noundef %23)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.while.cond.outer_crit_edge

if.end26.while.cond.outer_crit_edge:              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end26.while.cond.outer_crit_edge, %while.cond.preheader
  %blkcnt.0.ph = phi i32 [ %dividend.addr.0.i.i227.off0, %while.cond.preheader ], [ %dec, %if.end26.while.cond.outer_crit_edge ]
  %ret.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %call27, %if.end26.while.cond.outer_crit_edge ]
  br label %while.cond

if.then29:                                        ; preds = %if.end26
  %24 = ptrtoint ptr %off.addr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %off.addr, align 8
  %26 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %erasesize.i, align 8
  %29 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  %div.i = udiv i32 %28, %29
  %sub.i = add i32 %28, -1
  %conv.i = zext i32 %sub.i to i64
  %conv5.i = zext i32 %28 to i64
  %sub3.i = add i64 %25, -1
  %sub6.i = add i64 %sub3.i, %conv5.i
  %add.i = sub i64 %sub6.i, %conv.i
  %neg.i = sub nsw i64 0, %conv5.i
  %and.i229 = and i64 %add.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i229)
  %cmp164.i.i.i = icmp ult i64 %and.i229, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !128

if.then168.i.i.i:                                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %and.i229 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %29
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %30 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %and.i229) #13, !srcloc !130
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %30, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %28)
  %cmp.not2.i = icmp ugt i32 %29, %28
  br i1 %cmp.not2.i, label %div_u64.exit.i.do.body34_crit_edge, label %do.body.lr.ph.i

div_u64.exit.i.do.body34_crit_edge:               ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

do.body.lr.ph.i:                                  ; preds = %div_u64.exit.i
  %dev.i = getelementptr inbounds %struct.mtd_info, ptr %26, i32 0, i32 56
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %zonecnt.04.i = phi i32 [ %div.i, %do.body.lr.ph.i ], [ %dec.i, %do.end.i.do.body.i_crit_edge ]
  %zonenum.03.i = phi i64 [ %dividend.addr.0.i.i.i, %do.body.lr.ph.i ], [ %inc.i, %do.end.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_block_mark_unused.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_security, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !129

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_block_mark_unused.__UNIQUE_ID_ddebug187, ptr noundef %dev.i, ptr noundef nonnull @.str.34, i64 noundef %zonenum.03.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %conv16.i = trunc i64 %zonenum.03.i to i32
  %31 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 5), align 4
  call void @_clear_bit(i32 noundef %conv16.i, ptr noundef %31) #8
  %inc.i = add i64 %zonenum.03.i, 1
  %dec.i = add i32 %zonecnt.04.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.end.i.do.body34_crit_edge, label %do.end.i.do.body.i_crit_edge

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i.do.body34_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph)
  %tobool31.not = icmp eq i32 %ret.0.ph, 0
  br i1 %tobool31.not, label %while.end.do.body34_crit_edge, label %do.end

while.end.do.body34_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #11
  br label %do.body34

do.body34:                                        ; preds = %do.end, %while.end.do.body34_crit_edge, %do.end.i.do.body34_crit_edge, %div_u64.exit.i.do.body34_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_security.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_security, %if.then39)) #8
          to label %cleanup44 [label %if.then39], !srcloc !129

if.then39:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 56
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_security.__UNIQUE_ID_ddebug192, ptr noundef %dev40, ptr noundef nonnull @.str.39) #8
  br label %cleanup44

cleanup44:                                        ; preds = %if.then39, %do.body34, %for.body.cleanup44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtdpstore_erase_do(i64 noundef %off) unnamed_addr #4 align 64 {
entry:
  %erase = alloca %struct.erase_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %erase) #8
  %1 = getelementptr inbounds %struct.erase_info, ptr %erase, i32 0, i32 1
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %2 = getelementptr inbounds i8, ptr %erase, i32 16
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %4 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erasesize, align 8
  %sub = add i32 %5, -1
  %conv = zext i32 %sub to i64
  %conv6 = zext i32 %5 to i64
  %sub3 = add i64 %off, -1
  %sub7 = add i64 %sub3, %conv6
  %add = sub i64 %sub7, %conv
  %neg = sub nsw i64 0, %conv6
  %and = and i64 %add, %neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtdpstore_erase_do.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtdpstore_erase_do, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtdpstore_erase_do.__UNIQUE_ID_ddebug191, ptr noundef %dev, ptr noundef nonnull @.str.41, i64 noundef %and) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %erasesize15 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %erasesize15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %erasesize15, align 8
  %conv16 = zext i32 %8 to i64
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv16, ptr %1, align 8
  %10 = ptrtoint ptr %erase to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %and, ptr %erase, align 8
  %call18 = call i32 @mtd_erase(ptr noundef %6, ptr noundef nonnull %erase) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %do.end23

if.then20:                                        ; preds = %do.end
  %11 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 3), align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %erasesize.i, align 8
  %14 = load i32, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1, i32 2), align 4
  %div.i = udiv i32 %13, %14
  %sub.i = add i32 %13, -1
  %conv.i = zext i32 %sub.i to i64
  %conv5.i = zext i32 %13 to i64
  %sub3.i = add i64 %and, -1
  %sub6.i = add i64 %sub3.i, %conv5.i
  %add.i = sub i64 %sub6.i, %conv.i
  %neg.i = sub nsw i64 0, %conv5.i
  %and.i = and i64 %add.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i)
  %cmp164.i.i.i = icmp ult i64 %and.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !128

if.then168.i.i.i:                                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %and.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %14
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %15 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %and.i) #13, !srcloc !130
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %15, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %13)
  %cmp.not1.i = icmp ugt i32 %14, %13
  br i1 %cmp.not1.i, label %div_u64.exit.i.if.end27_crit_edge, label %div_u64.exit.i.while.body.i_crit_edge

div_u64.exit.i.while.body.i_crit_edge:            ; preds = %div_u64.exit.i
  br label %while.body.i

div_u64.exit.i.if.end27_crit_edge:                ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %div_u64.exit.i.while.body.i_crit_edge
  %zonenum.03.i = phi i64 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ %dividend.addr.0.i.i.i, %div_u64.exit.i.while.body.i_crit_edge ]
  %zonecnt.02.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %div.i, %div_u64.exit.i.while.body.i_crit_edge ]
  %conv13.i = trunc i64 %zonenum.03.i to i32
  %16 = load ptr, ptr getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 4), align 4
  call void @_clear_bit(i32 noundef %conv13.i, ptr noundef %16) #8
  %inc.i = add i64 %zonenum.03.i, 1
  %dec.i = add i32 %zonecnt.02.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %while.body.i.if.end27_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.if.end27_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  %17 = ptrtoint ptr %erase to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %erase, align 8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.42, i64 noundef %18, i64 noundef %20, ptr noundef getelementptr inbounds (%struct.mtdpstore_context, ptr @oops_cxt, i32 0, i32 1)) #11
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %while.body.i.if.end27_crit_edge, %div_u64.exit.i.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase) #8
  ret i32 %call18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_panic_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pstore_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__initcall__kmod_mtdpstore__198_569_mtdpstore_init6, !1, !"__initcall__kmod_mtdpstore__198_569_mtdpstore_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/mtdpstore.c", i32 569, i32 1}
!2 = !{ptr @__exitcall_mtdpstore_exit, !3, !"__exitcall_mtdpstore_exit", i1 false, i1 false}
!3 = !{!"../drivers/mtd/mtdpstore.c", i32 575, i32 1}
!4 = !{ptr @__UNIQUE_ID_file199, !5, !"__UNIQUE_ID_file199", i1 false, i1 false}
!5 = !{!"../drivers/mtd/mtdpstore.c", i32 577, i32 1}
!6 = !{ptr @__UNIQUE_ID_license200, !5, !"__UNIQUE_ID_license200", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author201, !8, !"__UNIQUE_ID_author201", i1 false, i1 false}
!8 = !{!"../drivers/mtd/mtdpstore.c", i32 578, i32 1}
!9 = !{ptr @__UNIQUE_ID_description202, !10, !"__UNIQUE_ID_description202", i1 false, i1 false}
!10 = !{!"../drivers/mtd/mtdpstore.c", i32 579, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/mtdpstore.c", i32 553, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mtdpstore_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @mtdpstore_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/mtdpstore.c", i32 557, i32 3}
!19 = !{ptr @mtdpstore_init._entry.3, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mtdpstore_init._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @oops_cxt, !22, !"oops_cxt", i1 false, i1 false}
!22 = !{!"../drivers/mtd/mtdpstore.c", i32 25, i32 3}
!23 = !{ptr @mtdpstore_notifier, !24, !"mtdpstore_notifier", i1 false, i1 false}
!24 = !{!"../drivers/mtd/mtdpstore.c", i32 537, i32 28}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/mtdpstore.c", i32 394, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mtdpstore_notify_add.__UNIQUE_ID_ddebug195, !26, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/mtdpstore.c", i32 397, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mtdpstore_notify_add._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtdpstore_notify_add._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/mtdpstore.c", i32 408, i32 3}
!38 = !{ptr @mtdpstore_notify_add._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtdpstore_notify_add._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/mtdpstore.c", i32 413, i32 3}
!42 = !{ptr @mtdpstore_notify_add._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtdpstore_notify_add._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/mtdpstore.c", i32 436, i32 3}
!46 = !{ptr @mtdpstore_notify_add._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtdpstore_notify_add._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/mtdpstore.c", i32 441, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mtdpstore_notify_add._entry.21, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @mtdpstore_notify_add._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/mtdpstore.c", i32 320, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mtdpstore_read.__UNIQUE_ID_ddebug194, !54, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/mtdpstore.c", i32 327, i32 4}
!59 = !{ptr @mtdpstore_read._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mtdpstore_read._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/mtdpstore.c", i32 340, i32 4}
!63 = !{ptr @mtdpstore_read._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mtdpstore_read._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/mtdpstore.c", i32 40, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mtdpstore_block_isbad._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @mtdpstore_block_isbad._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/mtdpstore.c", i32 76, i32 2}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mtdpstore_mark_unused.__UNIQUE_ID_ddebug186, !71, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/mtdpstore.c", i32 66, i32 2}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mtdpstore_mark_used.__UNIQUE_ID_ddebug185, !75, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/mtdpstore.c", i32 269, i32 3}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mtdpstore_security._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mtdpstore_security._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/mtdpstore.c", i32 270, i32 2}
!85 = !{ptr @mtdpstore_security.__UNIQUE_ID_ddebug192, !84, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/mtdpstore.c", i32 190, i32 2}
!88 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mtdpstore_erase_do.__UNIQUE_ID_ddebug191, !87, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/mtdpstore.c", i32 197, i32 3}
!92 = !{ptr @mtdpstore_erase_do._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mtdpstore_erase_do._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/mtdpstore.c", i32 90, i32 3}
!96 = !{ptr @mtdpstore_block_mark_unused.__UNIQUE_ID_ddebug187, !95, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/mtdpstore.c", i32 288, i32 2}
!99 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mtdpstore_write.__UNIQUE_ID_ddebug193, !98, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/mtdpstore.c", i32 291, i32 3}
!103 = !{ptr @mtdpstore_write._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @mtdpstore_write._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/mtdpstore.c", i32 145, i32 2}
!107 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mtdpstore_mark_removed.__UNIQUE_ID_ddebug190, !106, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/mtdpstore.c", i32 372, i32 3}
!111 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mtdpstore_panic_write._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @mtdpstore_panic_write._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/mtdpstore.c", i32 477, i32 5}
!116 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mtdpstore_flush_removed_do._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @mtdpstore_flush_removed_do._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{i64 2148704440, i64 2148704445, i64 2148704458, i64 2148704502, i64 2148704536, i64 2148704557}
!130 = !{i64 2148613159, i64 2148613439, i64 2148613773, i64 2148614107}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{!"auto-init"}
