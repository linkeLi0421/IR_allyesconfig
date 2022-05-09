; ModuleID = '/llk/IR_all_yes/drivers/mtd/ftl.c_pt.bc'
source_filename = "../drivers/mtd/ftl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.mtd_blktrans_ops = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.partition_t = type { %struct.mtd_blktrans_dev, i32, ptr, i32, ptr, ptr, i16, ptr, i16, i32, %struct.erase_unit_header_t }
%struct.mtd_blktrans_dev = type { ptr, %struct.list_head, ptr, %struct.mutex, i32, i8, i32, i32, i32, %struct.kref, ptr, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.erase_unit_header_t = type { [5 x i8], [10 x i8], i8, i32, i16, i8, i8, i16, i16, i32, i32, i16, i8, i8, i32, i32, i32, [12 x i8], [2 x i8] }
%struct.eun_info_t = type { i32, i32, i32, i32 }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.xfer_info_t = type { i32, i32, i16 }
%struct.erase_info = type { i64, i64, i64 }

@__param_str_shuffle_freq = internal constant [17 x i8] c"ftl.shuffle_freq\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@shuffle_freq = internal global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@__param_shuffle_freq = internal constant %struct.kernel_param { ptr @__param_str_shuffle_freq, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @shuffle_freq } }, section "__param", align 4
@__UNIQUE_ID_shuffle_freqtype234 = internal constant [30 x i8] c"ftl.parmtype=shuffle_freq:int\00", section ".modinfo", align 1
@__initcall__kmod_ftl__254_1059_ftl_tr_init6 = internal global ptr @ftl_tr_init, section ".initcall6.init", align 4
@ftl_tr = internal global { %struct.mtd_blktrans_ops, [48 x i8] } { %struct.mtd_blktrans_ops { ptr @.str, i32 44, i32 4, i32 512, i32 0, ptr @ftl_readsect, ptr @ftl_writesect, ptr @ftl_discardsect, ptr null, ptr @ftl_getgeo, ptr null, ptr null, ptr null, ptr @ftl_add_mtd, ptr @ftl_remove_dev, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, [48 x i8] zeroinitializer }, align 32
@__exitcall_ftl_tr_exit = internal global ptr @ftl_tr_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file255 = internal constant [25 x i8] c"ftl.file=drivers/mtd/ftl\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [25 x i8] c"ftl.license=Dual MPL/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [55 x i8] c"ftl.author=David Hinds <dahinds@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [81 x i8] c"ftl.description=Support code for Flash Translation Layer, used on PCMCIA devices\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ftl\00", [28 x i8] zeroinitializer }, align 32
@ftl_read.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ftl_read\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/mtd/ftl.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ftl_cs: ftl_read(0x%p, 0x%lx, %ld)\0A\00", [60 x i8] zeroinitializer }, align 32
@ftl_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015ftl_cs: bad partition\0A\00", [39 x i8] zeroinitializer }, align 32
@ftl_read._entry_ptr = internal global ptr @ftl_read._entry, section ".printk_index", align 4
@ftl_read._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015ftl_cs: bad read offset\0A\00", [37 x i8] zeroinitializer }, align 32
@ftl_read._entry_ptr.7 = internal global ptr @ftl_read._entry.5, section ".printk_index", align 4
@ftl_read._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Error reading MTD device in ftl_read()\0A\00", [54 x i8] zeroinitializer }, align 32
@ftl_read._entry_ptr.10 = internal global ptr @ftl_read._entry.8, section ".printk_index", align 4
@ftl_write.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ftl_write\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ftl_cs: ftl_write(0x%p, %ld, %ld)\0A\00", [61 x i8] zeroinitializer }, align 32
@ftl_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.11, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ftl_write._entry_ptr = internal global ptr @ftl_write._entry, section ".printk_index", align 4
@ftl_write._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015ftl_cs: bad write offset\0A\00", [36 x i8] zeroinitializer }, align 32
@ftl_write._entry_ptr.15 = internal global ptr @ftl_write._entry.13, section ".printk_index", align 4
@ftl_write.ne = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ftl_write._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015ftl_cs: internal error: no free blocks!\0A\00", [53 x i8] zeroinitializer }, align 32
@ftl_write._entry_ptr.18 = internal global ptr @ftl_write._entry.16, section ".printk_index", align 4
@ftl_write._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.2, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015ftl_cs: block write failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@ftl_write._entry_ptr.21 = internal global ptr @ftl_write._entry.19, section ".printk_index", align 4
@ftl_write._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.11, ptr @.str.2, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015ftl_cs:   log_addr = 0x%x, virt_addr = 0x%x, Offset = 0x%zx\0A\00", [33 x i8] zeroinitializer }, align 32
@ftl_write._entry_ptr.24 = internal global ptr @ftl_write._entry.22, section ".printk_index", align 4
@reclaim_block.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reclaim_block\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ftl_cs: reclaiming space...\0A\00", [35 x i8] zeroinitializer }, align 32
@reclaim_block.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NumTransferUnits == %x\0A\00", [40 x i8] zeroinitializer }, align 32
@reclaim_block.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"XferInfo[%d].state == XFER_UNKNOWN\0A\00", [60 x i8] zeroinitializer }, align 32
@reclaim_block.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.29, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"XferInfo[%d].state == XFER_ERASING\0A\00", [60 x i8] zeroinitializer }, align 32
@reclaim_block.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.30, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"XferInfo[%d].state == XFER_ERASED\0A\00", [61 x i8] zeroinitializer }, align 32
@reclaim_block.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.31, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"XferInfo[%d].state == XFER_PREPARED\0A\00", [59 x i8] zeroinitializer }, align 32
@reclaim_block.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.32, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"XferInfo[%d].state == %x\0A\00", [38 x i8] zeroinitializer }, align 32
@reclaim_block.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.33, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ftl_cs: waiting for transfer unit to be prepared...\0A\00", [43 x i8] zeroinitializer }, align 32
@reclaim_block.ne = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reclaim_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015ftl_cs: reclaim failed: no suitable transfer units!\0A\00", [41 x i8] zeroinitializer }, align 32
@reclaim_block._entry_ptr = internal global ptr @reclaim_block._entry, section ".printk_index", align 4
@reclaim_block.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.35, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ftl_cs: reclaim failed: no suitable transfer units!\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@reclaim_block.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.36, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ftl_cs: recycling freshest block...\0A\00", [59 x i8] zeroinitializer }, align 32
@reclaim_block.ne.37 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reclaim_block._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015ftl_cs: reclaim failed: no free blocks!\0A\00", [53 x i8] zeroinitializer }, align 32
@reclaim_block._entry_ptr.40 = internal global ptr @reclaim_block._entry.38, section ".printk_index", align 4
@reclaim_block.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.41, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ftl_cs: reclaim failed: no free blocks!\0A\00", [55 x i8] zeroinitializer }, align 32
@reclaim_block._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.25, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015ftl_cs: copy_erase_unit failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@reclaim_block._entry_ptr.44 = internal global ptr @reclaim_block._entry.42, section ".printk_index", align 4
@erase_xfer.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"erase_xfer\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ftl_cs: erasing xfer unit at 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@erase_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015ftl_cs: erase failed: err = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@erase_xfer._entry_ptr = internal global ptr @erase_xfer._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@prepare_xfer.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"prepare_xfer\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ftl_cs: preparing xfer unit at 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@copy_erase_unit.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"copy_erase_unit\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ftl_cs: copying block 0x%x to 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@copy_erase_unit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014ftl: Failed to read BAM cache in copy_erase_unit()!\0A\00", [41 x i8] zeroinitializer }, align 32
@copy_erase_unit._entry_ptr = internal global ptr @copy_erase_unit._entry, section ".printk_index", align 4
@copy_erase_unit._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.50, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014ftl: Failed to write back to BAM cache in copy_erase_unit()!\0A\00", [32 x i8] zeroinitializer }, align 32
@copy_erase_unit._entry_ptr.55 = internal global ptr @copy_erase_unit._entry.53, section ".printk_index", align 4
@copy_erase_unit._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.50, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014ftl: Error reading old xfer unit in copy_erase_unit\0A\00", [41 x i8] zeroinitializer }, align 32
@copy_erase_unit._entry_ptr.58 = internal global ptr @copy_erase_unit._entry.56, section ".printk_index", align 4
@copy_erase_unit._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.50, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014ftl: Error writing new xfer unit in copy_erase_unit\0A\00", [41 x i8] zeroinitializer }, align 32
@copy_erase_unit._entry_ptr.61 = internal global ptr @copy_erase_unit._entry.59, section ".printk_index", align 4
@copy_erase_unit._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.50, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014ftl: Error writing BAM in copy_erase_unit\0A\00", [51 x i8] zeroinitializer }, align 32
@copy_erase_unit._entry_ptr.64 = internal global ptr @copy_erase_unit._entry.62, section ".printk_index", align 4
@copy_erase_unit._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.50, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014ftl: Error writing new LogicalEUN in copy_erase_unit\0A\00", [40 x i8] zeroinitializer }, align 32
@copy_erase_unit._entry_ptr.67 = internal global ptr @copy_erase_unit._entry.65, section ".printk_index", align 4
@find_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014ftl: Error reading BAM in find_free\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"find_free\00", [22 x i8] zeroinitializer }, align 32
@find_free._entry_ptr = internal global ptr @find_free._entry, section ".printk_index", align 4
@find_free._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015ftl_cs: bad free list!\0A\00", [38 x i8] zeroinitializer }, align 32
@find_free._entry_ptr.72 = internal global ptr @find_free._entry.70, section ".printk_index", align 4
@find_free.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.73, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ftl_cs: found free block at %d in %d\0A\00", [58 x i8] zeroinitializer }, align 32
@set_bam_entry.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_bam_entry\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ftl_cs: set_bam_entry(0x%p, 0x%x, 0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@set_bam_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015ftl_cs: set_bam_entry() failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@set_bam_entry._entry_ptr = internal global ptr @set_bam_entry._entry, section ".printk_index", align 4
@set_bam_entry._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.74, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015ftl_cs:   log_addr = 0x%x, new = 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@set_bam_entry._entry_ptr.79 = internal global ptr @set_bam_entry._entry.77, section ".printk_index", align 4
@ftl_discardsect.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ftl_discardsect\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FTL erase sector %ld for %d sectors\0A\00", [59 x i8] zeroinitializer }, align 32
@ftl_add_mtd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014No memory to scan for FTL on %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ftl_add_mtd\00", [20 x i8] zeroinitializer }, align 32
@ftl_add_mtd._entry_ptr = internal global ptr @ftl_add_mtd._entry, section ".printk_index", align 4
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FTL100\00", [25 x i8] zeroinitializer }, align 32
@scan_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015ftl_cs: FTL header not found.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"scan_header\00", [20 x i8] zeroinitializer }, align 32
@scan_header._entry_ptr = internal global ptr @scan_header._entry, section ".printk_index", align 4
@scan_header._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015ftl_cs: FTL header corrupt!\0A\00", [33 x i8] zeroinitializer }, align 32
@scan_header._entry_ptr.89 = internal global ptr @scan_header._entry.87, section ".printk_index", align 4
@scan_header._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015ftl: FTL EraseUnitSize %x != MTD erasesize %x\0A\00", [47 x i8] zeroinitializer }, align 32
@scan_header._entry_ptr.92 = internal global ptr @scan_header._entry.90, section ".printk_index", align 4
@build_maps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015ftl_cs: format error: too many transfer units!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"build_maps\00", [21 x i8] zeroinitializer }, align 32
@build_maps._entry_ptr = internal global ptr @build_maps._entry, section ".printk_index", align 4
@build_maps._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015ftl_cs: format error: erase units don't add up!\0A\00", [45 x i8] zeroinitializer }, align 32
@build_maps._entry_ptr.97 = internal global ptr @build_maps._entry.95, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4278190079]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 48, i64 64, i64 96]
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"shuffle_freq\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 80, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"ftl_tr\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1045, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1046, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 756, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 759, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 766, i32 6 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 779, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 870, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 873, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 888, i32 6 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 895, i32 17 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 897, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 914, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 915, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 574, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 575, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 583, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 588, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 593, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 598, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 606, i32 7 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 611, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 615, i32 14 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 617, i32 7 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 620, i32 7 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 630, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 645, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 647, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 650, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 660, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 336, i32 5 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 355, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 382, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 443, i32 5 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 460, i32 6 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 474, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 493, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 501, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 523, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 533, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 718, i32 6 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 733, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 736, i32 5 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 805, i32 5 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 855, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 856, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 975, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 1013, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 170, i32 36 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 174, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 180, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 184, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 238, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.380 = private constant [21 x i8] c"../drivers/mtd/ftl.c\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 259, i32 2 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__UNIQUE_ID_shuffle_freqtype234, ptr @__exitcall_ftl_tr_exit, ptr @__initcall__kmod_ftl__254_1059_ftl_tr_init6, ptr @__param_shuffle_freq, ptr @build_maps._entry, ptr @build_maps._entry.95, ptr @build_maps._entry_ptr, ptr @build_maps._entry_ptr.97, ptr @copy_erase_unit._entry, ptr @copy_erase_unit._entry.53, ptr @copy_erase_unit._entry.56, ptr @copy_erase_unit._entry.59, ptr @copy_erase_unit._entry.62, ptr @copy_erase_unit._entry.65, ptr @copy_erase_unit._entry_ptr, ptr @copy_erase_unit._entry_ptr.55, ptr @copy_erase_unit._entry_ptr.58, ptr @copy_erase_unit._entry_ptr.61, ptr @copy_erase_unit._entry_ptr.64, ptr @copy_erase_unit._entry_ptr.67, ptr @erase_xfer._entry, ptr @erase_xfer._entry_ptr, ptr @find_free._entry, ptr @find_free._entry.70, ptr @find_free._entry_ptr, ptr @find_free._entry_ptr.72, ptr @ftl_add_mtd._entry, ptr @ftl_add_mtd._entry_ptr, ptr @ftl_read._entry, ptr @ftl_read._entry.5, ptr @ftl_read._entry.8, ptr @ftl_read._entry_ptr, ptr @ftl_read._entry_ptr.10, ptr @ftl_read._entry_ptr.7, ptr @ftl_tr_exit, ptr @ftl_write._entry, ptr @ftl_write._entry.13, ptr @ftl_write._entry.16, ptr @ftl_write._entry.19, ptr @ftl_write._entry.22, ptr @ftl_write._entry_ptr, ptr @ftl_write._entry_ptr.15, ptr @ftl_write._entry_ptr.18, ptr @ftl_write._entry_ptr.21, ptr @ftl_write._entry_ptr.24, ptr @reclaim_block._entry, ptr @reclaim_block._entry.38, ptr @reclaim_block._entry.42, ptr @reclaim_block._entry_ptr, ptr @reclaim_block._entry_ptr.40, ptr @reclaim_block._entry_ptr.44, ptr @scan_header._entry, ptr @scan_header._entry.87, ptr @scan_header._entry.90, ptr @scan_header._entry_ptr, ptr @scan_header._entry_ptr.89, ptr @scan_header._entry_ptr.92, ptr @set_bam_entry._entry, ptr @set_bam_entry._entry.77, ptr @set_bam_entry._entry_ptr, ptr @set_bam_entry._entry_ptr.79, ptr @shuffle_freq, ptr @ftl_tr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @ftl_write.ne, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @reclaim_block.ne, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @reclaim_block.ne.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffle_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftl_tr to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftl_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftl_read._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftl_read._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftl_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftl_write._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftl_write.ne to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftl_write._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftl_write._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftl_write._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reclaim_block.ne to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reclaim_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reclaim_block.ne.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reclaim_block._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reclaim_block._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erase_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_erase_unit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_erase_unit._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_erase_unit._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_erase_unit._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_erase_unit._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_erase_unit._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_free._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_bam_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_bam_entry._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftl_add_mtd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_header._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_header._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_maps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_maps._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ftl_tr_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_mtd_blktrans(ptr noundef nonnull @ftl_tr) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ftl_tr_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @deregister_mtd_blktrans(ptr noundef nonnull @ftl_tr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @deregister_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_mtd_blktrans(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftl_readsect(ptr noundef %dev, i32 noundef %block, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ftl_read(ptr noundef %dev, ptr noundef %buf, i32 noundef %block)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftl_writesect(ptr noundef %dev, i32 noundef %block, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ftl_write(ptr noundef %dev, ptr noundef %buf, i32 noundef %block)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftl_discardsect(ptr noundef %dev, i32 noundef %sector, i32 noundef %nr_sects) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %EraseUnitSize = getelementptr inbounds %struct.partition_t, ptr %dev, i32 0, i32 10, i32 6
  %0 = ptrtoint ptr %EraseUnitSize to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %EraseUnitSize, align 1
  %conv = zext i8 %1 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftl_discardsect.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftl_discardsect, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ftl_discardsect.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.81, i32 noundef %sector, i32 noundef %nr_sects) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_sects)
  %tobool3.not33 = icmp eq i32 %nr_sects, 0
  br i1 %tobool3.not33, label %do.end.cleanup15_crit_edge, label %while.body.lr.ph

do.end.cleanup15_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

while.body.lr.ph:                                 ; preds = %do.end
  %VirtualBlockMap = getelementptr inbounds %struct.partition_t, ptr %dev, i32 0, i32 2
  %EUNInfo = getelementptr inbounds %struct.partition_t, ptr %dev, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %sector.addr.035 = phi i32 [ %sector, %while.body.lr.ph ], [ %inc14, %cleanup.while.body_crit_edge ]
  %nr_sects.addr.034 = phi i32 [ %nr_sects, %while.body.lr.ph ], [ %dec, %cleanup.while.body_crit_edge ]
  %2 = ptrtoint ptr %VirtualBlockMap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %VirtualBlockMap, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %sector.addr.035
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.not = icmp eq i32 %5, -1
  br i1 %cmp.not, label %while.body.cleanup_crit_edge, label %if.then5

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %while.body
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %EUNInfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %EUNInfo, align 4
  %div28 = lshr i32 %5, %conv
  %Deleted = getelementptr %struct.eun_info_t, ptr %8, i32 %div28, i32 3
  %9 = ptrtoint ptr %Deleted to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %Deleted, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %Deleted, align 4
  %call9 = tail call fastcc i32 @set_bam_entry(ptr noundef %dev, i32 noundef %5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then5.cleanup_crit_edge, label %if.then5.cleanup15_crit_edge

if.then5.cleanup15_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %dec = add i32 %nr_sects.addr.034, -1
  %inc14 = add i32 %sector.addr.035, 1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %cleanup.cleanup15_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup15_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup15

cleanup15:                                        ; preds = %cleanup.cleanup15_crit_edge, %if.then5.cleanup15_crit_edge, %do.end.cleanup15_crit_edge
  %retval.2 = phi i32 [ 0, %do.end.cleanup15_crit_edge ], [ -5, %if.then5.cleanup15_crit_edge ], [ 0, %cleanup.cleanup15_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ftl_getgeo(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %geo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %FormattedSize = getelementptr inbounds %struct.partition_t, ptr %dev, i32 0, i32 10, i32 9
  %0 = ptrtoint ptr %FormattedSize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %FormattedSize, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %div3 = lshr i32 %2, 12
  %3 = ptrtoint ptr %geo to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %geo, align 4
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %4 = ptrtoint ptr %sectors to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %sectors, align 1
  %conv = trunc i32 %div3 to i16
  %cylinders = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %5 = ptrtoint ptr %cylinders to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %cylinders, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftl_add_mtd(ptr noundef %tr, ptr noundef %mtd) #2 align 64 {
entry:
  %header.i28 = alloca %struct.erase_unit_header_t, align 4
  %retval1.i = alloca i32, align 4
  %header.i = alloca %struct.erase_unit_header_t, align 4
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 312) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %2) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtd2 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %mtd2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mtd, ptr %mtd2, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %header.i) #10
  %4 = call ptr @memset(ptr %header.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #10
  %5 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ret.i, align 4, !annotation !219
  %header1.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 10
  %FormattedSize.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 10, i32 9
  %6 = ptrtoint ptr %FormattedSize.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %FormattedSize.i, align 8
  %size.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size.i, align 8
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 1048576) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 68, i64 %9)
  %cmp587.i = icmp ugt i64 %9, 68
  br i1 %cmp587.i, label %for.body.lr.ph.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %add.ptr.i = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i, i32 0, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %offset.088.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add19.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mtd2, align 4
  %call.i = call i32 @mtd_read(ptr noundef %11, i64 noundef %offset.088.i, i32 noundef 68, ptr noundef nonnull %ret.i, ptr noundef nonnull %header.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.scan_header.exit.thread_crit_edge

for.body.i.scan_header.exit.thread_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %scan_header.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(7) %add.ptr.i, ptr noundef nonnull dereferenceable(7) @.str.84, i32 7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp9.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp9.i, label %if.end.i.for.end.i_crit_edge, label %for.inc.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtd2, align 4
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %erasesize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not.i = icmp eq i32 %15, 0
  %..i = select i1 %tobool14.not.i, i32 8192, i32 %15
  %conv.i = zext i32 %..i to i64
  %add19.i = add i64 %offset.088.i, %conv.i
  %add.i = add i64 %add19.i, 68
  %cmp5.i = icmp slt i64 %add.i, %9
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %offset.0.lcssa.i = phi i64 [ 0, %if.end.for.end.i_crit_edge ], [ %add19.i, %for.inc.i.for.end.i_crit_edge ], [ %offset.088.i, %if.end.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.0.lcssa.i, i64 %9)
  %cmp20.i = icmp eq i64 %offset.0.lcssa.i, %9
  br i1 %cmp20.i, label %do.end.i, label %if.end24.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #14
  br label %scan_header.exit.thread

if.end24.i:                                       ; preds = %for.end.i
  %BlockSize.i = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i, i32 0, i32 5
  %16 = ptrtoint ptr %BlockSize.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %BlockSize.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %17)
  %cmp26.not.i = icmp eq i8 %17, 9
  br i1 %cmp26.not.i, label %lor.lhs.false.i, label %if.end24.i.do.end44.i_crit_edge

if.end24.i.do.end44.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44.i

lor.lhs.false.i:                                  ; preds = %if.end24.i
  %EraseUnitSize.i = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i, i32 0, i32 6
  %18 = ptrtoint ptr %EraseUnitSize.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %EraseUnitSize.i, align 1
  %conv28.i = zext i8 %19 to i32
  %20 = add i8 %19, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %20)
  %21 = icmp ult i8 %20, -22
  br i1 %21, label %lor.lhs.false.i.do.end44.i_crit_edge, label %lor.lhs.false36.i

lor.lhs.false.i.do.end44.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44.i

lor.lhs.false36.i:                                ; preds = %lor.lhs.false.i
  %NumTransferUnits.i = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i, i32 0, i32 2
  %22 = ptrtoint ptr %NumTransferUnits.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %NumTransferUnits.i, align 1
  %NumEraseUnits.i = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i, i32 0, i32 8
  %24 = ptrtoint ptr %NumEraseUnits.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %NumEraseUnits.i, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #10
  %27 = zext i8 %23 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %27)
  %cmp39.not.i = icmp ugt i16 %26, %27
  br i1 %cmp39.not.i, label %if.end47.i, label %lor.lhs.false36.i.do.end44.i_crit_edge

lor.lhs.false36.i.do.end44.i_crit_edge:           ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44.i

do.end44.i:                                       ; preds = %lor.lhs.false36.i.do.end44.i_crit_edge, %lor.lhs.false.i.do.end44.i_crit_edge, %if.end24.i.do.end44.i_crit_edge
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #14
  br label %scan_header.exit.thread

if.end47.i:                                       ; preds = %lor.lhs.false36.i
  %shl.i = shl nuw i32 1, %conv28.i
  %28 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mtd2, align 4
  %erasesize52.i = getelementptr inbounds %struct.mtd_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %erasesize52.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %erasesize52.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %31)
  %cmp53.not.i = icmp eq i32 %shl.i, %31
  br i1 %cmp53.not.i, label %land.lhs.true, label %do.end58.i

do.end58.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %call66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %shl.i, i32 noundef %31) #14
  br label %scan_header.exit.thread

scan_header.exit.thread:                          ; preds = %do.end58.i, %do.end44.i, %do.end.i, %for.body.i.scan_header.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %header.i) #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end47.i
  %32 = call ptr @memcpy(ptr %header1.i, ptr %header.i, i32 68)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %header.i) #10
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %header.i28) #10
  %33 = call ptr @memset(ptr %header.i28, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1.i) #10
  %34 = ptrtoint ptr %retval1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %retval1.i, align 4, !annotation !219
  %NumEraseUnits.i29 = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 10, i32 8
  %35 = ptrtoint ptr %NumEraseUnits.i29 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %NumEraseUnits.i29, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36) #10
  %NumTransferUnits.i30 = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 10, i32 2
  %38 = ptrtoint ptr %NumTransferUnits.i30 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %NumTransferUnits.i30, align 1
  %conv4.i = zext i8 %39 to i16
  %sub.i = sub i16 %37, %conv4.i
  %DataUnits.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %DataUnits.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %sub.i, ptr %DataUnits.i, align 4
  %conv7.i = zext i16 %sub.i to i32
  %41 = shl nuw nsw i32 %conv7.i, 4
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3264) #16
  %EUNInfo.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %EUNInfo.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call8.i.i, ptr %EUNInfo.i, align 4
  %tobool.not.i31 = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i31, label %land.lhs.true.build_maps.exit_crit_edge, label %for.cond.preheader.i

land.lhs.true.build_maps.exit_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %build_maps.exit

for.cond.preheader.i:                             ; preds = %land.lhs.true
  %43 = ptrtoint ptr %DataUnits.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %DataUnits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp448.not.i = icmp eq i16 %44, 0
  br i1 %cmp448.not.i, label %for.cond.preheader.i.if.end7.i381.i_crit_edge, label %for.cond.preheader.i.for.body.i32_crit_edge

for.cond.preheader.i.for.body.i32_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i32

for.cond.preheader.i.if.end7.i381.i_crit_edge:    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i381.i

for.body.i32:                                     ; preds = %for.body.i32.for.body.i32_crit_edge, %for.cond.preheader.i.for.body.i32_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i32.for.body.i32_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i32_crit_edge ]
  %45 = ptrtoint ptr %EUNInfo.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %EUNInfo.i, align 4
  %arrayidx.i = getelementptr %struct.eun_info_t, ptr %46, i32 %indvars.iv.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %arrayidx.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %48 = ptrtoint ptr %DataUnits.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %DataUnits.i, align 4
  %50 = zext i16 %49 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %50
  br i1 %cmp.i, label %for.body.i32.for.body.i32_crit_edge, label %for.body.i32.if.end7.i381.i_crit_edge

for.body.i32.if.end7.i381.i_crit_edge:            ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i381.i

for.body.i32.for.body.i32_crit_edge:              ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i32

if.end7.i381.i:                                   ; preds = %for.body.i32.if.end7.i381.i_crit_edge, %for.cond.preheader.i.if.end7.i381.i_crit_edge
  %51 = ptrtoint ptr %NumTransferUnits.i30 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %NumTransferUnits.i30, align 1
  %conv16.i = zext i8 %52 to i32
  %53 = mul nuw nsw i32 %conv16.i, 12
  %call8.i380.i = call noalias align 128 ptr @__kmalloc(i32 noundef %53, i32 noundef 3264) #16
  %XferInfo.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %XferInfo.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call8.i380.i, ptr %XferInfo.i, align 8
  %tobool19.not.i = icmp eq ptr %call8.i380.i, null
  br i1 %tobool19.not.i, label %if.end7.i381.i.out_EUNInfo.i_crit_edge, label %for.cond22.preheader.i

if.end7.i381.i.out_EUNInfo.i_crit_edge:           ; preds = %if.end7.i381.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_EUNInfo.i

for.cond22.preheader.i:                           ; preds = %if.end7.i381.i
  %55 = ptrtoint ptr %NumEraseUnits.i29 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %NumEraseUnits.i29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp27450.not.i = icmp eq i16 %56, 0
  br i1 %cmp27450.not.i, label %for.cond22.preheader.i.for.end115.i_crit_edge, label %for.body29.lr.ph.i

for.cond22.preheader.i.for.end115.i_crit_edge:    ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end115.i

for.body29.lr.ph.i:                               ; preds = %for.cond22.preheader.i
  %FirstPhysicalEUN.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 10, i32 7
  %EraseUnitSize.i34 = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 10, i32 6
  %add.ptr.i36 = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i28, i32 0, i32 1, i32 3
  %LogicalEUN.i = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i28, i32 0, i32 4
  %EraseCount100.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 10, i32 3
  %EraseCount89.i = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i28, i32 0, i32 3
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.inc113.i.for.body29.i_crit_edge, %for.body29.lr.ph.i
  %indvars.iv465.i = phi i32 [ 0, %for.body29.lr.ph.i ], [ %indvars.iv.next466.i, %for.inc113.i.for.body29.i_crit_edge ]
  %xvalid.0455.i = phi i16 [ 0, %for.body29.lr.ph.i ], [ %xvalid.1.i, %for.inc113.i.for.body29.i_crit_edge ]
  %xtrans.0452.i = phi i16 [ 0, %for.body29.lr.ph.i ], [ %xtrans.1.i, %for.inc113.i.for.body29.i_crit_edge ]
  %57 = ptrtoint ptr %FirstPhysicalEUN.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %FirstPhysicalEUN.i, align 4
  %59 = call i16 @llvm.bswap.i16(i16 %58) #10
  %conv32.i = zext i16 %59 to i32
  %add.i37 = add nuw nsw i32 %indvars.iv465.i, %conv32.i
  %60 = ptrtoint ptr %EraseUnitSize.i34 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %EraseUnitSize.i34, align 1
  %conv34.i = zext i8 %61 to i32
  %shl.i38 = shl i32 %add.i37, %conv34.i
  %conv35.i = sext i32 %shl.i38 to i64
  %62 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mtd2, align 4
  %call36.i = call i32 @mtd_read(ptr noundef %63, i64 noundef %conv35.i, i32 noundef 68, ptr noundef nonnull %retval1.i, ptr noundef nonnull %header.i28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %for.body29.i.out_XferInfo.i_crit_edge

for.body29.i.out_XferInfo.i_crit_edge:            ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_XferInfo.i

if.end39.i:                                       ; preds = %for.body29.i
  %bcmp.i39 = call i32 @bcmp(ptr noundef dereferenceable(7) %add.ptr.i36, ptr noundef nonnull dereferenceable(7) @.str.84, i32 7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i39)
  %cmp41.i = icmp eq i32 %bcmp.i39, 0
  br i1 %cmp41.i, label %land.lhs.true.i, label %if.else.thread.i

land.lhs.true.i:                                  ; preds = %if.end39.i
  %64 = ptrtoint ptr %LogicalEUN.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %LogicalEUN.i, align 4
  %66 = call i16 @llvm.bswap.i16(i16 %65) #10
  %67 = ptrtoint ptr %DataUnits.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %DataUnits.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %66, i16 %68)
  %cmp47.i = icmp ult i16 %66, %68
  br i1 %cmp47.i, label %land.lhs.true49.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true49.i:                                ; preds = %land.lhs.true.i
  %conv44.i = zext i16 %66 to i32
  %69 = ptrtoint ptr %EUNInfo.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %EUNInfo.i, align 4
  %arrayidx53.i = getelementptr %struct.eun_info_t, ptr %70, i32 %conv44.i
  %71 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp55.i = icmp eq i32 %72, -1
  br i1 %cmp55.i, label %if.then57.i, label %land.lhs.true49.i.if.else.i_crit_edge

land.lhs.true49.i.if.else.i_crit_edge:            ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then57.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %shl.i38, ptr %arrayidx53.i, align 4
  %74 = ptrtoint ptr %EraseCount89.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %EraseCount89.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #10
  %77 = ptrtoint ptr %EUNInfo.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %EUNInfo.i, align 4
  %79 = ptrtoint ptr %LogicalEUN.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %LogicalEUN.i, align 4
  %81 = call i16 @llvm.bswap.i16(i16 %80) #10
  %idxprom66.i = zext i16 %81 to i32
  %EraseCount68.i = getelementptr %struct.eun_info_t, ptr %78, i32 %idxprom66.i, i32 1
  %82 = ptrtoint ptr %EraseCount68.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %76, ptr %EraseCount68.i, align 4
  %inc69.i = add i16 %xvalid.0455.i, 1
  br label %for.inc113.i

if.else.i:                                        ; preds = %land.lhs.true49.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge
  %83 = ptrtoint ptr %NumTransferUnits.i30 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %NumTransferUnits.i30, align 1
  %85 = zext i8 %84 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %xtrans.0452.i, i16 %85)
  %cmp74.i = icmp eq i16 %xtrans.0452.i, %85
  br i1 %cmp74.i, label %if.else.i.do.end.i40_crit_edge, label %land.lhs.true80.critedge.i

if.else.i.do.end.i40_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i40

if.else.thread.i:                                 ; preds = %if.end39.i
  %conv70429.i = zext i16 %xtrans.0452.i to i32
  %86 = ptrtoint ptr %NumTransferUnits.i30 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %NumTransferUnits.i30, align 1
  %88 = zext i8 %87 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %xtrans.0452.i, i16 %88)
  %cmp74430.i = icmp eq i16 %xtrans.0452.i, %88
  br i1 %cmp74430.i, label %if.else.thread.i.do.end.i40_crit_edge, label %if.else.thread.i.if.else94.i_crit_edge

if.else.thread.i.if.else94.i_crit_edge:           ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else94.i

if.else.thread.i.do.end.i40_crit_edge:            ; preds = %if.else.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i40

do.end.i40:                                       ; preds = %if.else.thread.i.do.end.i40_crit_edge, %if.else.i.do.end.i40_crit_edge
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #14
  br label %out_XferInfo.i

land.lhs.true80.critedge.i:                       ; preds = %if.else.i
  %conv70.i = zext i16 %xtrans.0452.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %65)
  %cmp83.i = icmp eq i16 %65, -1
  br i1 %cmp83.i, label %land.lhs.true80.critedge.i.if.end105.i_crit_edge, label %land.lhs.true80.critedge.i.if.else94.i_crit_edge

land.lhs.true80.critedge.i.if.else94.i_crit_edge: ; preds = %land.lhs.true80.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else94.i

land.lhs.true80.critedge.i.if.end105.i_crit_edge: ; preds = %land.lhs.true80.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105.i

if.else94.i:                                      ; preds = %land.lhs.true80.critedge.i.if.else94.i_crit_edge, %if.else.thread.i.if.else94.i_crit_edge
  %conv70431434.i = phi i32 [ %conv70.i, %land.lhs.true80.critedge.i.if.else94.i_crit_edge ], [ %conv70429.i, %if.else.thread.i.if.else94.i_crit_edge ]
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.else94.i, %land.lhs.true80.critedge.i.if.end105.i_crit_edge
  %conv70431434.sink493.i = phi i32 [ %conv70431434.i, %if.else94.i ], [ %conv70.i, %land.lhs.true80.critedge.i.if.end105.i_crit_edge ]
  %.sink.i = phi i16 [ 0, %if.else94.i ], [ 3, %land.lhs.true80.critedge.i.if.end105.i_crit_edge ]
  %EraseCount100.sink.i = phi ptr [ %EraseCount100.i, %if.else94.i ], [ %EraseCount89.i, %land.lhs.true80.critedge.i.if.end105.i_crit_edge ]
  %89 = ptrtoint ptr %XferInfo.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %XferInfo.i, align 8
  %state98.i = getelementptr %struct.xfer_info_t, ptr %90, i32 %conv70431434.sink493.i, i32 2
  %91 = ptrtoint ptr %state98.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %.sink.i, ptr %state98.i, align 4
  %92 = ptrtoint ptr %EraseCount100.sink.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %EraseCount100.sink.i, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #10
  %95 = ptrtoint ptr %XferInfo.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %XferInfo.i, align 8
  %EraseCount104.i = getelementptr %struct.xfer_info_t, ptr %96, i32 %conv70431434.sink493.i, i32 1
  %97 = ptrtoint ptr %EraseCount104.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %94, ptr %EraseCount104.i, align 4
  %98 = load ptr, ptr %XferInfo.i, align 8
  %arrayidx109.i = getelementptr %struct.xfer_info_t, ptr %98, i32 %conv70431434.sink493.i
  %99 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shl.i38, ptr %arrayidx109.i, align 4
  %inc111.i = add i16 %xtrans.0452.i, 1
  br label %for.inc113.i

for.inc113.i:                                     ; preds = %if.end105.i, %if.then57.i
  %xtrans.1.i = phi i16 [ %xtrans.0452.i, %if.then57.i ], [ %inc111.i, %if.end105.i ]
  %xvalid.1.i = phi i16 [ %inc69.i, %if.then57.i ], [ %xvalid.0455.i, %if.end105.i ]
  %indvars.iv.next466.i = add nuw nsw i32 %indvars.iv465.i, 1
  %100 = ptrtoint ptr %NumEraseUnits.i29 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %NumEraseUnits.i29, align 2
  %102 = call i16 @llvm.bswap.i16(i16 %101) #10
  %103 = zext i16 %102 to i32
  %cmp27.i = icmp ult i32 %indvars.iv.next466.i, %103
  br i1 %cmp27.i, label %for.inc113.i.for.body29.i_crit_edge, label %for.inc113.i.for.end115.i_crit_edge

for.inc113.i.for.end115.i_crit_edge:              ; preds = %for.inc113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end115.i

for.inc113.i.for.body29.i_crit_edge:              ; preds = %for.inc113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29.i

for.end115.i:                                     ; preds = %for.inc113.i.for.end115.i_crit_edge, %for.cond22.preheader.i.for.end115.i_crit_edge
  %xtrans.0.lcssa.i = phi i16 [ 0, %for.cond22.preheader.i.for.end115.i_crit_edge ], [ %xtrans.1.i, %for.inc113.i.for.end115.i_crit_edge ]
  %xvalid.0.lcssa.i = phi i16 [ 0, %for.cond22.preheader.i.for.end115.i_crit_edge ], [ %xvalid.1.i, %for.inc113.i.for.end115.i_crit_edge ]
  %104 = call ptr @memcpy(ptr %header.i28, ptr %header1.i, i32 68)
  %NumTransferUnits118.i = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i28, i32 0, i32 2
  %105 = ptrtoint ptr %NumTransferUnits118.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %NumTransferUnits118.i, align 1
  %107 = zext i8 %106 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %xtrans.0.lcssa.i, i16 %107)
  %cmp120.not.i = icmp eq i16 %xtrans.0.lcssa.i, %107
  br i1 %cmp120.not.i, label %lor.lhs.false.i41, label %for.end115.i.do.end132.i_crit_edge

for.end115.i.do.end132.i_crit_edge:               ; preds = %for.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end132.i

lor.lhs.false.i41:                                ; preds = %for.end115.i
  %conv117.i = zext i16 %xtrans.0.lcssa.i to i32
  %conv122.i = zext i16 %xvalid.0.lcssa.i to i32
  %add124.i = add nuw nsw i32 %conv122.i, %conv117.i
  %NumEraseUnits125.i = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i28, i32 0, i32 8
  %108 = ptrtoint ptr %NumEraseUnits125.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %NumEraseUnits125.i, align 2
  %110 = call i16 @llvm.bswap.i16(i16 %109) #10
  %conv126.i = zext i16 %110 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add124.i, i32 %conv126.i)
  %cmp127.not.i = icmp eq i32 %add124.i, %conv126.i
  br i1 %cmp127.not.i, label %if.end135.i, label %lor.lhs.false.i41.do.end132.i_crit_edge

lor.lhs.false.i41.do.end132.i_crit_edge:          ; preds = %lor.lhs.false.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end132.i

do.end132.i:                                      ; preds = %lor.lhs.false.i41.do.end132.i_crit_edge, %for.end115.i.do.end132.i_crit_edge
  %call134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #14
  br label %out_XferInfo.i

if.end135.i:                                      ; preds = %lor.lhs.false.i41
  %FormattedSize.i42 = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i28, i32 0, i32 9
  %111 = ptrtoint ptr %FormattedSize.i42 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %FormattedSize.i42, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112) #10
  %BlockSize.i43 = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i28, i32 0, i32 5
  %114 = ptrtoint ptr %BlockSize.i43 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %BlockSize.i43, align 2
  %conv136.i = zext i8 %115 to i32
  %shr.i = lshr i32 %113, %conv136.i
  %116 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr.i, i32 4) #10
  %117 = extractvalue { i32, i1 } %116, 1
  %118 = extractvalue { i32, i1 } %116, 0
  %retval.0.i384.i = select i1 %117, i32 -1, i32 %118
  %call138.i = call noalias ptr @vmalloc(i32 noundef %retval.0.i384.i) #16
  %VirtualBlockMap.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 2
  %119 = ptrtoint ptr %VirtualBlockMap.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call138.i, ptr %VirtualBlockMap.i, align 4
  %tobool140.not.i = icmp eq ptr %call138.i, null
  br i1 %tobool140.not.i, label %if.end135.i.out_XferInfo.i_crit_edge, label %if.end142.i

if.end135.i.out_XferInfo.i_crit_edge:             ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_XferInfo.i

if.end142.i:                                      ; preds = %if.end135.i
  %mul.i = shl i32 %shr.i, 2
  %120 = call ptr @memset(ptr %call138.i, i32 255, i32 %mul.i)
  %EraseUnitSize144.i = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i28, i32 0, i32 6
  %121 = ptrtoint ptr %EraseUnitSize144.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %EraseUnitSize144.i, align 1
  %conv145.i = zext i8 %122 to i32
  %shl146.i = shl nuw i32 1, %conv145.i
  %123 = ptrtoint ptr %BlockSize.i43 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %BlockSize.i43, align 2
  %conv148.i = zext i8 %124 to i32
  %shr149.i = ashr i32 %shl146.i, %conv148.i
  %BlocksPerUnit.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 9
  %125 = ptrtoint ptr %BlocksPerUnit.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %shr149.i, ptr %BlocksPerUnit.i, align 8
  %126 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr149.i, i32 4) #10
  %127 = extractvalue { i32, i1 } %126, 1
  br i1 %127, label %kmalloc_array.exit417.thread.i, label %if.end7.i415.i, !prof !220

kmalloc_array.exit417.thread.i:                   ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #12
  %bam_cache436.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 7
  %128 = ptrtoint ptr %bam_cache436.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %bam_cache436.i, align 8
  br label %out_VirtualBlockMap.i

if.end7.i415.i:                                   ; preds = %if.end142.i
  %129 = extractvalue { i32, i1 } %126, 0
  %call8.i414.i = call noalias align 128 ptr @__kmalloc(i32 noundef %129, i32 noundef 3264) #16
  %bam_cache.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 7
  %130 = ptrtoint ptr %bam_cache.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call8.i414.i, ptr %bam_cache.i, align 8
  %tobool153.not.i = icmp eq ptr %call8.i414.i, null
  br i1 %tobool153.not.i, label %if.end7.i415.i.out_VirtualBlockMap.i_crit_edge, label %if.end155.i

if.end7.i415.i.out_VirtualBlockMap.i_crit_edge:   ; preds = %if.end7.i415.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_VirtualBlockMap.i

if.end155.i:                                      ; preds = %if.end7.i415.i
  %bam_index.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 6
  %131 = ptrtoint ptr %bam_index.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 -1, ptr %bam_index.i, align 4
  %FreeTotal.i = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 3
  %132 = ptrtoint ptr %FreeTotal.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %FreeTotal.i, align 8
  %133 = ptrtoint ptr %DataUnits.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %DataUnits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %cmp160459.not.i = icmp eq i16 %134, 0
  br i1 %cmp160459.not.i, label %if.end155.i.if.then6_crit_edge, label %for.body162.lr.ph.i

if.end155.i.if.then6_crit_edge:                   ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

for.body162.lr.ph.i:                              ; preds = %if.end155.i
  %BAMOffset.i = getelementptr inbounds %struct.erase_unit_header_t, ptr %header.i28, i32 0, i32 16
  br label %for.body162.i

for.body162.i:                                    ; preds = %for.inc248.i.for.body162.i_crit_edge, %for.body162.lr.ph.i
  %indvars.iv467.i = phi i32 [ 0, %for.body162.lr.ph.i ], [ %indvars.iv.next468.i, %for.inc248.i.for.body162.i_crit_edge ]
  %135 = ptrtoint ptr %EUNInfo.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %EUNInfo.i, align 4
  %Free.i = getelementptr %struct.eun_info_t, ptr %136, i32 %indvars.iv467.i, i32 2
  %137 = ptrtoint ptr %Free.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %Free.i, align 4
  %138 = load ptr, ptr %EUNInfo.i, align 4
  %Deleted.i = getelementptr %struct.eun_info_t, ptr %138, i32 %indvars.iv467.i, i32 3
  %139 = ptrtoint ptr %Deleted.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %Deleted.i, align 4
  %140 = load ptr, ptr %EUNInfo.i, align 4
  %arrayidx171.i = getelementptr %struct.eun_info_t, ptr %140, i32 %indvars.iv467.i
  %141 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx171.i, align 4
  %143 = ptrtoint ptr %BAMOffset.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %BAMOffset.i, align 4
  %145 = call i32 @llvm.bswap.i32(i32 %144) #10
  %add173.i = add i32 %145, %142
  %conv174.i = zext i32 %add173.i to i64
  %146 = ptrtoint ptr %mtd2 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mtd2, align 4
  %148 = ptrtoint ptr %BlocksPerUnit.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %BlocksPerUnit.i, align 8
  %mul178.i = shl i32 %149, 2
  %150 = ptrtoint ptr %bam_cache.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bam_cache.i, align 8
  %call180.i = call i32 @mtd_read(ptr noundef %147, i64 noundef %conv174.i, i32 noundef %mul178.i, ptr noundef nonnull %retval1.i, ptr noundef %151) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %tobool181.not.i = icmp eq i32 %call180.i, 0
  br i1 %tobool181.not.i, label %for.cond184.preheader.i, label %out_bam_cache.i

for.cond184.preheader.i:                          ; preds = %for.body162.i
  %152 = ptrtoint ptr %BlocksPerUnit.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %BlocksPerUnit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp186457.not.i = icmp eq i32 %153, 0
  br i1 %cmp186457.not.i, label %for.cond184.preheader.i.for.inc248.i_crit_edge, label %for.cond184.preheader.i.for.body188.i_crit_edge

for.cond184.preheader.i.for.body188.i_crit_edge:  ; preds = %for.cond184.preheader.i
  br label %for.body188.i

for.cond184.preheader.i.for.inc248.i_crit_edge:   ; preds = %for.cond184.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc248.i

for.body188.i:                                    ; preds = %for.inc245.i.for.body188.i_crit_edge, %for.cond184.preheader.i.for.body188.i_crit_edge
  %j.0458.i = phi i32 [ %inc246.i, %for.inc245.i.for.body188.i_crit_edge ], [ 0, %for.cond184.preheader.i.for.body188.i_crit_edge ]
  %154 = ptrtoint ptr %bam_cache.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %bam_cache.i, align 8
  %arrayidx190.i = getelementptr i32, ptr %155, i32 %j.0458.i
  %156 = ptrtoint ptr %arrayidx190.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx190.i, align 4
  %158 = call i32 @llvm.bswap.i32(i32 %157) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %157)
  %cmp191.i = icmp eq i32 %157, -1
  br i1 %cmp191.i, label %if.then193.i, label %if.else201.i

if.then193.i:                                     ; preds = %for.body188.i
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %EUNInfo.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %EUNInfo.i, align 4
  %Free197.i = getelementptr %struct.eun_info_t, ptr %160, i32 %indvars.iv467.i, i32 2
  %161 = ptrtoint ptr %Free197.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %Free197.i, align 4
  %inc198.i = add i32 %162, 1
  store i32 %inc198.i, ptr %Free197.i, align 4
  %163 = ptrtoint ptr %FreeTotal.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %FreeTotal.i, align 8
  %inc200.i = add i32 %164, 1
  store i32 %inc200.i, ptr %FreeTotal.i, align 8
  br label %for.inc245.i

if.else201.i:                                     ; preds = %for.body188.i
  %and.i = and i32 %158, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i)
  %cmp204.i = icmp eq i32 %and.i, 64
  br i1 %cmp204.i, label %land.lhs.true206.i, label %if.else201.i.if.else226.i_crit_edge

if.else201.i.if.else226.i_crit_edge:              ; preds = %if.else201.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else226.i

land.lhs.true206.i:                               ; preds = %if.else201.i
  %shr209.i = lshr i32 %158, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr209.i, i32 %shr.i)
  %cmp210.i = icmp ult i32 %shr209.i, %shr.i
  br i1 %cmp210.i, label %if.then212.i, label %land.lhs.true206.i.if.else226.i_crit_edge

land.lhs.true206.i.if.else226.i_crit_edge:        ; preds = %land.lhs.true206.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else226.i

if.then212.i:                                     ; preds = %land.lhs.true206.i
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %EraseUnitSize144.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %EraseUnitSize144.i, align 1
  %conv215.i = zext i8 %166 to i32
  %shl216.i = shl i32 %indvars.iv467.i, %conv215.i
  %167 = ptrtoint ptr %BlockSize.i43 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %BlockSize.i43, align 2
  %conv218.i = zext i8 %168 to i32
  %shl219.i = shl i32 %j.0458.i, %conv218.i
  %add220.i = add i32 %shl219.i, %shl216.i
  %169 = ptrtoint ptr %VirtualBlockMap.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %VirtualBlockMap.i, align 4
  %arrayidx225.i = getelementptr i32, ptr %170, i32 %shr209.i
  %171 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %add220.i, ptr %arrayidx225.i, align 4
  br label %for.inc245.i

if.else226.i:                                     ; preds = %land.lhs.true206.i.if.else226.i_crit_edge, %if.else201.i.if.else226.i_crit_edge
  %172 = zext i32 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values)
  switch i32 %157, label %if.else226.i.for.inc245.i_crit_edge [
    i32 0, label %if.else226.i.if.then236.i_crit_edge
    i32 -16777217, label %if.else226.i.if.then236.i_crit_edge48
  ]

if.else226.i.if.then236.i_crit_edge48:            ; preds = %if.else226.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then236.i

if.else226.i.if.then236.i_crit_edge:              ; preds = %if.else226.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then236.i

if.else226.i.for.inc245.i_crit_edge:              ; preds = %if.else226.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc245.i

if.then236.i:                                     ; preds = %if.else226.i.if.then236.i_crit_edge, %if.else226.i.if.then236.i_crit_edge48
  %173 = ptrtoint ptr %EUNInfo.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %EUNInfo.i, align 4
  %Deleted240.i = getelementptr %struct.eun_info_t, ptr %174, i32 %indvars.iv467.i, i32 3
  %175 = ptrtoint ptr %Deleted240.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %Deleted240.i, align 4
  %inc241.i = add i32 %176, 1
  store i32 %inc241.i, ptr %Deleted240.i, align 4
  br label %for.inc245.i

for.inc245.i:                                     ; preds = %if.then236.i, %if.else226.i.for.inc245.i_crit_edge, %if.then212.i, %if.then193.i
  %inc246.i = add nuw i32 %j.0458.i, 1
  %177 = ptrtoint ptr %BlocksPerUnit.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %BlocksPerUnit.i, align 8
  %cmp186.i = icmp ult i32 %inc246.i, %178
  br i1 %cmp186.i, label %for.inc245.i.for.body188.i_crit_edge, label %for.inc245.i.for.inc248.i_crit_edge

for.inc245.i.for.inc248.i_crit_edge:              ; preds = %for.inc245.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc248.i

for.inc245.i.for.body188.i_crit_edge:             ; preds = %for.inc245.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body188.i

for.inc248.i:                                     ; preds = %for.inc245.i.for.inc248.i_crit_edge, %for.cond184.preheader.i.for.inc248.i_crit_edge
  %indvars.iv.next468.i = add nuw nsw i32 %indvars.iv467.i, 1
  %179 = ptrtoint ptr %DataUnits.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %DataUnits.i, align 4
  %181 = zext i16 %180 to i32
  %cmp160.i = icmp ult i32 %indvars.iv.next468.i, %181
  br i1 %cmp160.i, label %for.inc248.i.for.body162.i_crit_edge, label %for.inc248.i.if.then6_crit_edge

for.inc248.i.if.then6_crit_edge:                  ; preds = %for.inc248.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

for.inc248.i.for.body162.i_crit_edge:             ; preds = %for.inc248.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body162.i

out_bam_cache.i:                                  ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #12
  %182 = ptrtoint ptr %bam_cache.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bam_cache.i, align 8
  call void @kfree(ptr noundef %183) #10
  br label %out_VirtualBlockMap.i

out_VirtualBlockMap.i:                            ; preds = %out_bam_cache.i, %if.end7.i415.i.out_VirtualBlockMap.i_crit_edge, %kmalloc_array.exit417.thread.i
  %184 = ptrtoint ptr %VirtualBlockMap.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %VirtualBlockMap.i, align 4
  call void @vfree(ptr noundef %185) #10
  br label %out_XferInfo.i

out_XferInfo.i:                                   ; preds = %out_VirtualBlockMap.i, %if.end135.i.out_XferInfo.i_crit_edge, %do.end132.i, %do.end.i40, %for.body29.i.out_XferInfo.i_crit_edge
  %186 = ptrtoint ptr %XferInfo.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %XferInfo.i, align 8
  call void @kfree(ptr noundef %187) #10
  br label %out_EUNInfo.i

out_EUNInfo.i:                                    ; preds = %out_XferInfo.i, %if.end7.i381.i.out_EUNInfo.i_crit_edge
  %188 = ptrtoint ptr %EUNInfo.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %EUNInfo.i, align 4
  call void @kfree(ptr noundef %189) #10
  br label %build_maps.exit

build_maps.exit:                                  ; preds = %out_EUNInfo.i, %land.lhs.true.build_maps.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %header.i28) #10
  br label %if.end16

if.then6:                                         ; preds = %for.inc248.i.if.then6_crit_edge, %if.end155.i.if.then6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %header.i28) #10
  %state = getelementptr inbounds %struct.partition_t, ptr %call7.i.i, i32 0, i32 1
  %190 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 1, ptr %state, align 8
  %191 = ptrtoint ptr %FormattedSize.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %FormattedSize.i, align 8
  %193 = call i32 @llvm.bswap.i32(i32 %192)
  %shr = lshr i32 %193, 9
  %size = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 6
  %194 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %shr, ptr %size, align 4
  %195 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %tr, ptr %call7.i.i, align 8
  %devnum = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %call7.i.i, i32 0, i32 4
  %196 = ptrtoint ptr %devnum to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -1, ptr %devnum, align 4
  %call12 = call i32 @add_mtd_blktrans_dev(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then6.cleanup_crit_edge, label %if.then6.if.end16_crit_edge

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.then6.if.end16_crit_edge, %build_maps.exit, %scan_header.exit.thread
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then6.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftl_remove_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @del_mtd_blktrans_dev(ptr noundef %dev) #10
  %VirtualBlockMap.i = getelementptr inbounds %struct.partition_t, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %VirtualBlockMap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %VirtualBlockMap.i, align 4
  tail call void @vfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %VirtualBlockMap.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %VirtualBlockMap.i, align 4
  %EUNInfo.i = getelementptr inbounds %struct.partition_t, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %EUNInfo.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %EUNInfo.i, align 4
  tail call void @kfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %EUNInfo.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %EUNInfo.i, align 4
  %XferInfo.i = getelementptr inbounds %struct.partition_t, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %XferInfo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %XferInfo.i, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %XferInfo.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %XferInfo.i, align 4
  %bam_cache.i = getelementptr inbounds %struct.partition_t, ptr %dev, i32 0, i32 7
  %9 = ptrtoint ptr %bam_cache.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bam_cache.i, align 4
  tail call void @kfree(ptr noundef %10) #10
  %11 = ptrtoint ptr %bam_cache.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bam_cache.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftl_read(ptr noundef %part, ptr noundef %buffer, i32 noundef %sector) unnamed_addr #2 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !219
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftl_read.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftl_read, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ftl_read.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.3, ptr noundef %part, i32 noundef %sector, i32 noundef 1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %EraseUnitSize = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 6
  %3 = ptrtoint ptr %EraseUnitSize to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %EraseUnitSize, align 1
  %conv = zext i8 %4 to i32
  %mul = shl i32 %sector, 9
  %FormattedSize = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 9
  %EUNInfo = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 4
  %notmask = shl nsw i32 -1, %conv
  %5 = xor i32 %notmask, -1
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %6 = ptrtoint ptr %FormattedSize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %FormattedSize, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %8)
  %cmp13.not = icmp ult i32 %mul, %8
  br i1 %cmp13.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %VirtualBlockMap = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 2
  %9 = ptrtoint ptr %VirtualBlockMap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %VirtualBlockMap, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 %sector
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp23 = icmp eq i32 %12, -1
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %13 = call ptr @memset(ptr %buffer, i32 0, i32 512)
  br label %cleanup

if.else:                                          ; preds = %if.end21
  %14 = ptrtoint ptr %EUNInfo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %EUNInfo, align 4
  %div1 = lshr i32 %12, %conv
  %arrayidx26 = getelementptr %struct.eun_info_t, ptr %15, i32 %div1
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx26, align 4
  %rem = and i32 %12, %5
  %add27 = add i32 %17, %rem
  %18 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mtd, align 4
  %conv28 = zext i32 %add27 to i64
  %call29 = call i32 @mtd_read(ptr noundef %19, i64 noundef %conv28, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef %buffer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.else.cleanup_crit_edge, label %do.end34

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.else.cleanup_crit_edge, %if.then25, %do.end18, %do.end7
  %retval.0 = phi i32 [ -5, %do.end18 ], [ %call29, %do.end34 ], [ -5, %do.end7 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ftl_write(ptr noundef %part, ptr noundef %buffer, i32 noundef %sector) unnamed_addr #2 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !219
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ftl_write.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ftl_write, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ftl_write.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.12, ptr noundef %part, i32 noundef %sector, i32 noundef 1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end7, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  %FreeTotal = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 3
  br label %while.cond

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %cleanup

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %3 = ptrtoint ptr %FreeTotal to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %FreeTotal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call11 = tail call fastcc i32 @reclaim_block(ptr noundef %part)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %while.body.while.cond_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %EraseUnitSize = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 6
  %5 = ptrtoint ptr %EraseUnitSize to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %EraseUnitSize, align 1
  %conv = zext i8 %6 to i32
  %mul = shl i32 %sector, 9
  %or = or i32 %mul, 64
  %FormattedSize = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 9
  %bam_index = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 6
  %EUNInfo = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 4
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %VirtualBlockMap = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 2
  %7 = ptrtoint ptr %FormattedSize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %FormattedSize, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %9)
  %cmp18.not = icmp ult i32 %or, %9
  br i1 %cmp18.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  br label %cleanup

if.end26:                                         ; preds = %while.end
  %call27 = call fastcc i32 @find_free(ptr noundef %part)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end40

if.then30:                                        ; preds = %if.end26
  %10 = load i32, ptr @ftl_write.ne, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @ftl_write.ne, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp31 = icmp slt i32 %inc, 5
  br i1 %cmp31, label %do.end36, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %cleanup

if.end40:                                         ; preds = %if.end26
  %11 = ptrtoint ptr %bam_index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bam_index, align 4
  %conv41 = zext i16 %12 to i32
  %mul42 = shl i32 %conv41, %conv
  %mul43 = shl i32 %call27, 9
  %add = add i32 %mul42, %mul43
  %13 = ptrtoint ptr %EUNInfo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %EUNInfo, align 4
  %Free = getelementptr %struct.eun_info_t, ptr %14, i32 %conv41, i32 2
  %15 = ptrtoint ptr %Free to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %Free, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %Free, align 4
  %17 = ptrtoint ptr %FreeTotal to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %FreeTotal, align 4
  %dec46 = add i32 %18, -1
  store i32 %dec46, ptr %FreeTotal, align 4
  %call47 = call fastcc i32 @set_bam_entry(ptr noundef %part, i32 noundef %add, i32 noundef -2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %19 = ptrtoint ptr %EUNInfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %EUNInfo, align 4
  %21 = ptrtoint ptr %bam_index to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bam_index, align 4
  %idxprom53 = zext i16 %22 to i32
  %Deleted = getelementptr %struct.eun_info_t, ptr %20, i32 %idxprom53, i32 3
  %23 = ptrtoint ptr %Deleted to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %Deleted, align 4
  %inc55 = add i32 %24, 1
  store i32 %inc55, ptr %Deleted, align 4
  %25 = load ptr, ptr %EUNInfo, align 4
  %26 = load i16, ptr %bam_index, align 4
  %idxprom58 = zext i16 %26 to i32
  %arrayidx59 = getelementptr %struct.eun_info_t, ptr %25, i32 %idxprom58
  %27 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx59, align 4
  %add61 = add i32 %28, %mul43
  %29 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mtd, align 4
  %conv62 = zext i32 %add61 to i64
  %call63 = call i32 @mtd_write(ptr noundef %30, i64 noundef %conv62, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef %buffer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end76, label %do.end68

do.end68:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add, i32 noundef %or, i32 noundef %add61) #14
  br label %cleanup

if.end76:                                         ; preds = %if.end50
  %31 = ptrtoint ptr %VirtualBlockMap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %VirtualBlockMap, align 4
  %arrayidx78 = getelementptr i32, ptr %32, i32 %sector
  %33 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp79.not = icmp eq i32 %34, -1
  br i1 %cmp79.not, label %if.end76.if.end93_crit_edge, label %if.then81

if.end76.if.end93_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then81:                                        ; preds = %if.end76
  %35 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %arrayidx78, align 4
  %36 = ptrtoint ptr %EUNInfo to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %EUNInfo, align 4
  %div1 = lshr i32 %34, %conv
  %Deleted87 = getelementptr %struct.eun_info_t, ptr %37, i32 %div1, i32 3
  %38 = ptrtoint ptr %Deleted87 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %Deleted87, align 4
  %inc88 = add i32 %39, 1
  store i32 %inc88, ptr %Deleted87, align 4
  %call89 = call fastcc i32 @set_bam_entry(ptr noundef %part, i32 noundef %34, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then81.if.end93_crit_edge, label %if.then81.cleanup_crit_edge

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then81.if.end93_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.end93:                                         ; preds = %if.then81.if.end93_crit_edge, %if.end76.if.end93_crit_edge
  %call94 = call fastcc i32 @set_bam_entry(ptr noundef %part, i32 noundef %add, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end97:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %VirtualBlockMap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %VirtualBlockMap, align 4
  %arrayidx100 = getelementptr i32, ptr %41, i32 %sector
  %42 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add, ptr %arrayidx100, align 4
  %43 = ptrtoint ptr %EUNInfo to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %EUNInfo, align 4
  %45 = ptrtoint ptr %bam_index to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %bam_index, align 4
  %idxprom103 = zext i16 %46 to i32
  %Deleted105 = getelementptr %struct.eun_info_t, ptr %44, i32 %idxprom103, i32 3
  %47 = ptrtoint ptr %Deleted105 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %Deleted105, align 4
  %dec106 = add i32 %48, -1
  store i32 %dec106, ptr %Deleted105, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.end93.cleanup_crit_edge, %if.then81.cleanup_crit_edge, %do.end68, %if.end40.cleanup_crit_edge, %do.end36, %if.then30.cleanup_crit_edge, %do.end23, %while.body.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -5, %do.end23 ], [ -5, %do.end68 ], [ -5, %do.end7 ], [ -28, %do.end36 ], [ -28, %if.then30.cleanup_crit_edge ], [ 0, %if.end97 ], [ -5, %if.end93.cleanup_crit_edge ], [ -5, %if.then81.cleanup_crit_edge ], [ -5, %if.end40.cleanup_crit_edge ], [ %call11, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reclaim_block(ptr nocapture noundef %part) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then)) #10
          to label %do.body3 [label %if.then], !srcloc !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.26) #10
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then15)) #10
          to label %do.end18 [label %if.then15], !srcloc !218

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %NumTransferUnits = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 2
  %0 = ptrtoint ptr %NumTransferUnits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %NumTransferUnits, align 1
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.27, i32 noundef %conv) #10
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body3
  %NumTransferUnits22 = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 2
  %XferInfo = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 5
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %2 = ptrtoint ptr %NumTransferUnits22 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %NumTransferUnits22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp437.not475 = icmp eq i8 %3, 0
  br i1 %cmp437.not475, label %do.end18.if.else186_crit_edge, label %do.end18.for.body_crit_edge

do.end18.for.body_crit_edge:                      ; preds = %do.end18
  br label %for.body

do.end18.if.else186_crit_edge:                    ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else186

for.body:                                         ; preds = %for.body.backedge, %do.end18.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.be, %for.body.backedge ], [ 0, %do.end18.for.body_crit_edge ]
  %xfer.1440 = phi i16 [ %xfer.1440.be, %for.body.backedge ], [ -1, %do.end18.for.body_crit_edge ]
  %best.1439 = phi i32 [ %best.2429, %for.body.backedge ], [ -1, %do.end18.for.body_crit_edge ]
  %queued.0438 = phi i32 [ %queued.0438.be, %for.body.backedge ], [ 0, %do.end18.for.body_crit_edge ]
  %4 = ptrtoint ptr %XferInfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %XferInfo, align 4
  %state = getelementptr %struct.xfer_info_t, ptr %5, i32 %indvars.iv, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp26 = icmp eq i16 %7, 0
  br i1 %cmp26, label %do.body29, label %for.body.if.end47_crit_edge

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.body29:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then41)) #10
          to label %do.end45 [label %if.then41], !srcloc !218

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.28, i32 noundef %indvars.iv) #10
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %8 = trunc i32 %indvars.iv to i16
  tail call fastcc void @erase_xfer(ptr noundef %part, i16 noundef zeroext %8)
  br label %if.end47

if.end47:                                         ; preds = %do.end45, %for.body.if.end47_crit_edge
  %n.0 = phi i32 [ 1, %do.end45 ], [ 0, %for.body.if.end47_crit_edge ]
  %9 = ptrtoint ptr %XferInfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %XferInfo, align 4
  %state51 = getelementptr %struct.xfer_info_t, ptr %10, i32 %indvars.iv, i32 2
  %11 = ptrtoint ptr %state51 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %state51, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %12, label %if.end47.if.end101_crit_edge [
    i16 1, label %do.body56
    i16 2, label %do.body81
  ]

if.end47.if.end101_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

do.body56:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then68)) #10
          to label %if.end101 [label %if.then68], !srcloc !218

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.29, i32 noundef %indvars.iv) #10
  br label %if.end101

do.body81:                                        ; preds = %if.end47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then93)) #10
          to label %do.end97 [label %if.then93], !srcloc !218

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.30, i32 noundef %indvars.iv) #10
  br label %do.end97

do.end97:                                         ; preds = %if.then93, %do.body81
  tail call fastcc void @prepare_xfer(ptr noundef %part, i32 noundef %indvars.iv)
  br label %if.end101

if.end101:                                        ; preds = %do.end97, %if.then68, %do.body56, %if.end47.if.end101_crit_edge
  %n.1 = phi i32 [ 1, %do.end97 ], [ 1, %if.then68 ], [ %n.0, %if.end47.if.end101_crit_edge ], [ 1, %do.body56 ]
  %queued.1 = phi i32 [ %queued.0438, %do.end97 ], [ 1, %if.then68 ], [ %queued.0438, %if.end47.if.end101_crit_edge ], [ 1, %do.body56 ]
  %14 = ptrtoint ptr %XferInfo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %XferInfo, align 4
  %state105 = getelementptr %struct.xfer_info_t, ptr %15, i32 %indvars.iv, i32 2
  %16 = ptrtoint ptr %state105 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %state105, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %17)
  %cmp107 = icmp eq i16 %17, 3
  br i1 %cmp107, label %do.body110, label %if.end138

do.body110:                                       ; preds = %if.end101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then122)) #10
          to label %if.end138.thread [label %if.then122], !srcloc !218

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.31, i32 noundef %indvars.iv) #10
  br label %if.end138.thread

if.end138.thread:                                 ; preds = %if.then122, %do.body110
  %18 = ptrtoint ptr %XferInfo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %XferInfo, align 4
  %EraseCount = getelementptr %struct.xfer_info_t, ptr %19, i32 %indvars.iv, i32 1
  %20 = ptrtoint ptr %EraseCount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %EraseCount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %best.1439)
  %cmp130.not = icmp ugt i32 %21, %best.1439
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %best.1439)
  %23 = trunc i32 %indvars.iv to i16
  %spec.select384 = select i1 %cmp130.not, i16 %xfer.1440, i16 %23
  br label %if.end163

if.end138:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1)
  %tobool139.not = icmp eq i32 %n.1, 0
  br i1 %tobool139.not, label %do.body141, label %if.end138.if.end163_crit_edge

if.end138.if.end163_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

do.body141:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then153)) #10
          to label %if.end163 [label %if.then153], !srcloc !218

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %XferInfo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %XferInfo, align 4
  %state158 = getelementptr %struct.xfer_info_t, ptr %25, i32 %indvars.iv, i32 2
  %26 = ptrtoint ptr %state158 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %state158, align 4
  %conv159 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.32, i32 noundef %indvars.iv, i32 noundef %conv159) #10
  br label %if.end163

if.end163:                                        ; preds = %if.then153, %do.body141, %if.end138.if.end163_crit_edge, %if.end138.thread
  %xfer.2430 = phi i16 [ %spec.select384, %if.end138.thread ], [ %xfer.1440, %if.then153 ], [ %xfer.1440, %if.end138.if.end163_crit_edge ], [ %xfer.1440, %do.body141 ]
  %best.2429 = phi i32 [ %22, %if.end138.thread ], [ %best.1439, %if.then153 ], [ %best.1439, %if.end138.if.end163_crit_edge ], [ %best.1439, %do.body141 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %28 = ptrtoint ptr %NumTransferUnits22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %NumTransferUnits22, align 1
  %30 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %indvars.iv.next, i32 %30)
  %cmp = icmp ult i32 %indvars.iv.next, %30
  br i1 %cmp, label %if.end163.for.body.backedge_crit_edge, label %for.end

if.end163.for.body.backedge_crit_edge:            ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge

for.body.backedge:                                ; preds = %mtd_sync.exit.for.body.backedge_crit_edge, %if.end163.for.body.backedge_crit_edge
  %indvars.iv.be = phi i32 [ %indvars.iv.next, %if.end163.for.body.backedge_crit_edge ], [ 0, %mtd_sync.exit.for.body.backedge_crit_edge ]
  %xfer.1440.be = phi i16 [ %xfer.2430, %if.end163.for.body.backedge_crit_edge ], [ -1, %mtd_sync.exit.for.body.backedge_crit_edge ]
  %queued.0438.be = phi i32 [ %queued.1, %if.end163.for.body.backedge_crit_edge ], [ 0, %mtd_sync.exit.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %if.end163
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %xfer.2430)
  %cmp165 = icmp eq i16 %xfer.2430, -1
  br i1 %cmp165, label %if.then167, label %do.end220.critedge

if.then167:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queued.1)
  %tobool168.not = icmp eq i32 %queued.1, 0
  br i1 %tobool168.not, label %if.then167.if.else186_crit_edge, label %do.body170

if.then167.if.else186_crit_edge:                  ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else186

do.body170:                                       ; preds = %if.then167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then182)) #10
          to label %do.end185 [label %if.then182], !srcloc !218

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.33) #10
  br label %do.end185

do.end185:                                        ; preds = %if.then182, %do.body170
  %31 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mtd, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %do.end185
  %mtd.addr.0.i.i = phi ptr [ %32, %do.end185 ], [ %34, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %33 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  %_sync.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 37
  %35 = ptrtoint ptr %_sync.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %_sync.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %mtd_get_master.exit.i.mtd_sync.exit_crit_edge, label %if.then.i

mtd_get_master.exit.i.mtd_sync.exit_crit_edge:    ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtd_sync.exit

if.then.i:                                        ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %36(ptr noundef %mtd.addr.0.i.i) #10
  br label %mtd_sync.exit

mtd_sync.exit:                                    ; preds = %if.then.i, %mtd_get_master.exit.i.mtd_sync.exit_crit_edge
  %37 = ptrtoint ptr %NumTransferUnits22 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %NumTransferUnits22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp437.not = icmp eq i8 %38, 0
  br i1 %cmp437.not, label %mtd_sync.exit.if.else186_crit_edge, label %mtd_sync.exit.for.body.backedge_crit_edge

mtd_sync.exit.for.body.backedge_crit_edge:        ; preds = %mtd_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge

mtd_sync.exit.if.else186_crit_edge:               ; preds = %mtd_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else186

if.else186:                                       ; preds = %mtd_sync.exit.if.else186_crit_edge, %if.then167.if.else186_crit_edge, %do.end18.if.else186_crit_edge
  %39 = load i32, ptr @reclaim_block.ne, align 4
  %inc187 = add i32 %39, 1
  store i32 %inc187, ptr @reclaim_block.ne, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc187)
  %cmp188 = icmp slt i32 %inc187, 5
  br i1 %cmp188, label %do.end193, label %do.body197

do.end193:                                        ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #12
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %cleanup

do.body197:                                       ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then209)) #10
          to label %cleanup [label %if.then209], !srcloc !218

if.then209:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.35) #10
  br label %cleanup

do.end220.critedge:                               ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %41 = load i32, ptr @shuffle_freq, align 4
  %rem = urem i32 %40, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp221 = icmp eq i32 %rem, 0
  br i1 %cmp221, label %do.body224, label %for.cond261.preheader

for.cond261.preheader:                            ; preds = %do.end220.critedge
  %DataUnits263 = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 8
  %42 = ptrtoint ptr %DataUnits263 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %DataUnits263, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp265446.not = icmp eq i16 %43, 0
  br i1 %cmp265446.not, label %for.cond261.preheader.if.then284_crit_edge, label %for.body267.lr.ph

for.cond261.preheader.if.then284_crit_edge:       ; preds = %for.cond261.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then284

for.body267.lr.ph:                                ; preds = %for.cond261.preheader
  %EUNInfo268 = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 4
  %44 = ptrtoint ptr %EUNInfo268 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %EUNInfo268, align 4
  %wide.trip.count = zext i16 %43 to i32
  br label %for.body267

do.body224:                                       ; preds = %do.end220.critedge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then236)) #10
          to label %do.end239 [label %if.then236], !srcloc !218

if.then236:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.36) #10
  br label %do.end239

do.end239:                                        ; preds = %if.then236, %do.body224
  %DataUnits = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 8
  %46 = ptrtoint ptr %DataUnits to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %DataUnits, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp243452.not = icmp eq i16 %47, 0
  br i1 %cmp243452.not, label %do.end239.if.end313_crit_edge, label %for.body245.lr.ph

do.end239.if.end313_crit_edge:                    ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end313

for.body245.lr.ph:                                ; preds = %do.end239
  %EUNInfo = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 4
  %48 = ptrtoint ptr %EUNInfo to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %EUNInfo, align 4
  %wide.trip.count462 = zext i16 %47 to i32
  br label %for.body245

for.body245:                                      ; preds = %for.body245.for.body245_crit_edge, %for.body245.lr.ph
  %indvars.iv460 = phi i32 [ 0, %for.body245.lr.ph ], [ %indvars.iv.next461, %for.body245.for.body245_crit_edge ]
  %eun.0454 = phi i16 [ 0, %for.body245.lr.ph ], [ %spec.select386, %for.body245.for.body245_crit_edge ]
  %best.3453 = phi i32 [ -1, %for.body245.lr.ph ], [ %52, %for.body245.for.body245_crit_edge ]
  %EraseCount248 = getelementptr %struct.eun_info_t, ptr %49, i32 %indvars.iv460, i32 1
  %50 = ptrtoint ptr %EraseCount248 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %EraseCount248, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %best.3453)
  %cmp249.not = icmp ugt i32 %51, %best.3453
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 %best.3453)
  %53 = trunc i32 %indvars.iv460 to i16
  %spec.select386 = select i1 %cmp249.not, i16 %eun.0454, i16 %53
  %indvars.iv.next461 = add nuw nsw i32 %indvars.iv460, 1
  %exitcond463.not = icmp eq i32 %indvars.iv.next461, %wide.trip.count462
  br i1 %exitcond463.not, label %for.body245.if.end313_crit_edge, label %for.body245.for.body245_crit_edge

for.body245.for.body245_crit_edge:                ; preds = %for.body245
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body245

for.body245.if.end313_crit_edge:                  ; preds = %for.body245
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end313

for.body267:                                      ; preds = %for.body267.for.body267_crit_edge, %for.body267.lr.ph
  %indvars.iv458 = phi i32 [ 0, %for.body267.lr.ph ], [ %indvars.iv.next459, %for.body267.for.body267_crit_edge ]
  %eun.2448 = phi i16 [ 0, %for.body267.lr.ph ], [ %spec.select388, %for.body267.for.body267_crit_edge ]
  %best.5447 = phi i32 [ 0, %for.body267.lr.ph ], [ %56, %for.body267.for.body267_crit_edge ]
  %Deleted = getelementptr %struct.eun_info_t, ptr %45, i32 %indvars.iv458, i32 3
  %54 = ptrtoint ptr %Deleted to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %Deleted, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %best.5447)
  %cmp271.not = icmp ult i32 %55, %best.5447
  %56 = tail call i32 @llvm.umax.i32(i32 %55, i32 %best.5447)
  %57 = trunc i32 %indvars.iv458 to i16
  %spec.select388 = select i1 %cmp271.not, i16 %eun.2448, i16 %57
  %indvars.iv.next459 = add nuw nsw i32 %indvars.iv458, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next459, %wide.trip.count
  br i1 %exitcond.not, label %for.end281, label %for.body267.for.body267_crit_edge

for.body267.for.body267_crit_edge:                ; preds = %for.body267
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body267

for.end281:                                       ; preds = %for.body267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %phi.cmp = icmp eq i32 %56, 0
  br i1 %phi.cmp, label %for.end281.if.then284_crit_edge, label %for.end281.if.end313_crit_edge

for.end281.if.end313_crit_edge:                   ; preds = %for.end281
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end313

for.end281.if.then284_crit_edge:                  ; preds = %for.end281
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then284

if.then284:                                       ; preds = %for.end281.if.then284_crit_edge, %for.cond261.preheader.if.then284_crit_edge
  %58 = load i32, ptr @reclaim_block.ne.37, align 4
  %inc285 = add i32 %58, 1
  store i32 %inc285, ptr @reclaim_block.ne.37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc285)
  %cmp286 = icmp slt i32 %inc285, 5
  br i1 %cmp286, label %do.end291, label %do.body295

do.end291:                                        ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #12
  %call293 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %cleanup

do.body295:                                       ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_block.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_block, %if.then307)) #10
          to label %cleanup [label %if.then307], !srcloc !218

if.then307:                                       ; preds = %do.body295
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reclaim_block.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end313:                                        ; preds = %for.end281.if.end313_crit_edge, %for.body245.if.end313_crit_edge, %do.end239.if.end313_crit_edge
  %eun.4 = phi i16 [ %spec.select388, %for.end281.if.end313_crit_edge ], [ 0, %do.end239.if.end313_crit_edge ], [ %spec.select386, %for.body245.if.end313_crit_edge ]
  %call314 = tail call fastcc i32 @copy_erase_unit(ptr noundef %part, i16 noundef zeroext %eun.4, i16 noundef zeroext %xfer.2430)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %tobool315.not = icmp eq i32 %call314, 0
  br i1 %tobool315.not, label %if.then316, label %do.end321

if.then316:                                       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @erase_xfer(ptr noundef %part, i16 noundef zeroext %xfer.2430)
  br label %cleanup

do.end321:                                        ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #12
  %call323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end321, %if.then316, %if.then307, %do.body295, %do.end291, %if.then209, %do.body197, %do.end193
  %retval.0 = phi i32 [ -5, %if.then209 ], [ -5, %do.end193 ], [ -5, %if.then307 ], [ -5, %do.end291 ], [ %call314, %do.end321 ], [ 0, %if.then316 ], [ -5, %do.body197 ], [ -5, %do.body295 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_free(ptr nocapture noundef %part) unnamed_addr #2 align 64 {
entry:
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !219
  %bam_index = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 6
  %1 = ptrtoint ptr %bam_index to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bam_index, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %2)
  %cmp = icmp eq i16 %2, -1
  %spec.select = select i1 %cmp, i16 0, i16 %2
  %EUNInfo = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 4
  %3 = ptrtoint ptr %EUNInfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %EUNInfo, align 4
  %DataUnits = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %eun.0 = phi i16 [ %spec.select, %entry ], [ %spec.store.select, %if.end.do.body_crit_edge ]
  %idxprom = zext i16 %eun.0 to i32
  %Free = getelementptr %struct.eun_info_t, ptr %4, i32 %idxprom, i32 2
  %5 = ptrtoint ptr %Free to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %Free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not = icmp eq i32 %6, 0
  br i1 %cmp5.not, label %if.end, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %do.body
  %inc = add i16 %eun.0, 1
  %7 = ptrtoint ptr %DataUnits to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %DataUnits, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %8)
  %cmp9 = icmp eq i16 %inc, %8
  %spec.store.select = select i1 %cmp9, i16 0, i16 %inc
  %cmp15.not = icmp eq i16 %spec.store.select, %spec.select
  br i1 %cmp15.not, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = zext i16 %spec.select to i32
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  %idxprom18.pre-phi = phi i32 [ %.pre, %if.end.do.end_crit_edge ], [ %idxprom, %do.body.do.end_crit_edge ]
  %eun.1 = phi i16 [ %spec.select, %if.end.do.end_crit_edge ], [ %eun.0, %do.body.do.end_crit_edge ]
  %Free20 = getelementptr %struct.eun_info_t, ptr %4, i32 %idxprom18.pre-phi, i32 2
  %9 = ptrtoint ptr %Free20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %Free20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp21 = icmp eq i32 %10, 0
  br i1 %cmp21, label %do.end.cleanup_crit_edge, label %if.end24

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp2(i16 %eun.1, i16 %2)
  %cmp28.not = icmp eq i16 %eun.1, %2
  br i1 %cmp28.not, label %if.end24.if.end43_crit_edge, label %if.then30

if.end24.if.end43_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then30:                                        ; preds = %if.end24
  %11 = ptrtoint ptr %bam_index to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %bam_index, align 4
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %12 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtd, align 4
  %arrayidx34 = getelementptr %struct.eun_info_t, ptr %4, i32 %idxprom18.pre-phi
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx34, align 4
  %BAMOffset = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 16
  %16 = ptrtoint ptr %BAMOffset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %BAMOffset, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add = add i32 %18, %15
  %conv35 = zext i32 %add to i64
  %BlocksPerUnit = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 9
  %19 = ptrtoint ptr %BlocksPerUnit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %BlocksPerUnit, align 4
  %mul = shl i32 %20, 2
  %bam_cache = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 7
  %21 = ptrtoint ptr %bam_cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bam_cache, align 4
  %call = call i32 @mtd_read(ptr noundef %13, i64 noundef %conv35, i32 noundef %mul, ptr noundef nonnull %retlen, ptr noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #14
  br label %cleanup

if.end41:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %bam_index to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %eun.1, ptr %bam_index, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end24.if.end43_crit_edge
  %BlocksPerUnit44 = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 9
  %24 = ptrtoint ptr %BlocksPerUnit44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %BlocksPerUnit44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp45109.not = icmp eq i32 %25, 0
  br i1 %cmp45109.not, label %if.end43.for.end_crit_edge, label %for.body.lr.ph

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end43
  %bam_cache47 = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 7
  %26 = ptrtoint ptr %bam_cache47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bam_cache47, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %blk.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc53, %for.inc.for.body_crit_edge ]
  %arrayidx48 = getelementptr i32, ptr %27, i32 %blk.0110
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp49 = icmp eq i32 %29, -1
  br i1 %cmp49, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc53 = add nuw i32 %blk.0110, 1
  %exitcond.not = icmp eq i32 %inc53, %25
  br i1 %exitcond.not, label %for.inc.do.end60_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.end60_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end43.for.end_crit_edge
  %blk.0.lcssa = phi i32 [ 0, %if.end43.for.end_crit_edge ], [ %blk.0110, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %blk.0.lcssa, i32 %25)
  %cmp55 = icmp eq i32 %blk.0.lcssa, %25
  br i1 %cmp55, label %for.end.do.end60_crit_edge, label %do.body64

for.end.do.end60_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end60

do.end60:                                         ; preds = %for.end.do.end60_crit_edge, %for.inc.do.end60_crit_edge
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #14
  br label %cleanup

do.body64:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_free.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_free, %if.then70)) #10
          to label %cleanup [label %if.then70], !srcloc !218

if.then70:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_free.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.73, i32 noundef %blk.0.lcssa, i32 noundef %idxprom18.pre-phi) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %do.body64, %do.end60, %do.end39, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end39 ], [ 0, %do.end60 ], [ 0, %do.end.cleanup_crit_edge ], [ %blk.0.lcssa, %if.then70 ], [ %blk.0.lcssa, %do.body64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_bam_entry(ptr noundef %part, i32 noundef %log_addr, i32 noundef %virt_addr) unnamed_addr #2 align 64 {
entry:
  %le_virt_addr = alloca i32, align 4
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_virt_addr) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !219
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_bam_entry.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_bam_entry, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_bam_entry.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.75, ptr noundef %part, i32 noundef %log_addr, i32 noundef %virt_addr) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %EraseUnitSize = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 6
  %1 = ptrtoint ptr %EraseUnitSize to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %EraseUnitSize, align 1
  %conv = zext i8 %2 to i32
  %div43 = lshr i32 %log_addr, %conv
  %notmask = shl nsw i32 -1, %conv
  %3 = xor i32 %notmask, -1
  %rem = and i32 %3, %log_addr
  %div444 = lshr i32 %rem, 9
  %EUNInfo = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 4
  %4 = ptrtoint ptr %EUNInfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %EUNInfo, align 4
  %idxprom = and i32 %div43, 65535
  %arrayidx = getelementptr %struct.eun_info_t, ptr %5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %mul = shl nuw nsw i32 %div444, 2
  %BAMOffset = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 16
  %8 = ptrtoint ptr %BAMOffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %BAMOffset, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %add = add i32 %10, %7
  %add6 = add i32 %add, %mul
  %11 = tail call i32 @llvm.bswap.i32(i32 %virt_addr)
  %12 = ptrtoint ptr %le_virt_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %le_virt_addr, align 4
  %bam_index = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 6
  %13 = ptrtoint ptr %bam_index to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bam_index, align 4
  %15 = trunc i32 %div43 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %15)
  %cmp = icmp eq i16 %14, %15
  br i1 %cmp, label %if.then10, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %bam_cache = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 7
  %16 = ptrtoint ptr %bam_cache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bam_cache, align 4
  %arrayidx11 = getelementptr i32, ptr %17, i32 %div444
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %11, ptr %arrayidx11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end.if.end12_crit_edge
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %19 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mtd, align 4
  %conv13 = zext i32 %add6 to i64
  %call14 = call i32 @mtd_write(ptr noundef %20, i64 noundef %conv13, i32 noundef 4, ptr noundef nonnull %retlen, ptr noundef nonnull %le_virt_addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.if.end27_crit_edge, label %do.end19

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #14
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %log_addr, i32 noundef %virt_addr) #14
  br label %if.end27

if.end27:                                         ; preds = %do.end19, %if.end12.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_virt_addr) #10
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @erase_xfer(ptr nocapture noundef readonly %part, i16 noundef zeroext %xfernum) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %XferInfo = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 5
  %0 = ptrtoint ptr %XferInfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %XferInfo, align 4
  %idxprom = zext i16 %xfernum to i32
  %arrayidx = getelementptr %struct.xfer_info_t, ptr %1, i32 %idxprom
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @erase_xfer.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@erase_xfer, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @erase_xfer.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.46, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr %struct.xfer_info_t, ptr %1, i32 %idxprom, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 24) #13
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %call7.i, align 8
  %EraseUnitSize = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 6
  %9 = ptrtoint ptr %EraseUnitSize to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %EraseUnitSize, align 1
  %conv8 = zext i8 %10 to i32
  %shl = shl nuw i32 1, %conv8
  %conv9 = sext i32 %shl to i64
  %len = getelementptr inbounds %struct.erase_info, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv9, ptr %len, align 8
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %12 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtd, align 4
  %call10 = tail call i32 @mtd_erase(ptr noundef %13, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %state, align 4
  %EraseCount = getelementptr %struct.xfer_info_t, ptr %1, i32 %idxprom, i32 1
  %15 = ptrtoint ptr %EraseCount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %EraseCount, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %EraseCount, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4, ptr %state, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call10) #14
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prepare_xfer(ptr nocapture noundef readonly %part, i32 noundef %i) unnamed_addr #2 align 64 {
entry:
  %header = alloca %struct.erase_unit_header_t, align 4
  %ctl = alloca i32, align 4
  %retlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %header) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctl) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %0 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen, align 4, !annotation !219
  %XferInfo = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 5
  %1 = ptrtoint ptr %XferInfo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %XferInfo, align 4
  %arrayidx = getelementptr %struct.xfer_info_t, ptr %2, i32 %i
  %state = getelementptr %struct.xfer_info_t, ptr %2, i32 %i, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_xfer.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prepare_xfer, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_xfer.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.49, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %header3 = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10
  %6 = call ptr @memcpy(ptr %header, ptr %header3, i32 68)
  %LogicalEUN = getelementptr inbounds %struct.erase_unit_header_t, ptr %header, i32 0, i32 4
  %7 = ptrtoint ptr %LogicalEUN to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %LogicalEUN, align 4
  %EraseCount = getelementptr %struct.xfer_info_t, ptr %2, i32 %i, i32 1
  %8 = ptrtoint ptr %EraseCount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %EraseCount, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %EraseCount4 = getelementptr inbounds %struct.erase_unit_header_t, ptr %header, i32 0, i32 3
  %11 = ptrtoint ptr %EraseCount4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %EraseCount4, align 4
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %12 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtd, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %15 to i64
  %call6 = call i32 @mtd_write(ptr noundef %13, i64 noundef %conv, i32 noundef 68, ptr noundef nonnull %retlen, ptr noundef nonnull %header) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %BlocksPerUnit = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 9
  %16 = ptrtoint ptr %BlocksPerUnit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %BlocksPerUnit, align 4
  %mul = shl i32 %17, 2
  %BAMOffset = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 16
  %18 = ptrtoint ptr %BAMOffset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %BAMOffset, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %add = add i32 %mul, 511
  %sub = add i32 %add, %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 805306368, ptr %ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub)
  %cmp3.not = icmp ult i32 %sub, 512
  br i1 %cmp3.not, label %if.end9.for.end_crit_edge, label %for.body.preheader

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end9
  %add15 = add i32 %22, %20
  %conv16 = zext i32 %add15 to i64
  %div1 = lshr i32 %sub, 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.addr.05 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %offset.04 = phi i64 [ %add24, %for.inc.for.body_crit_edge ], [ %conv16, %for.body.preheader ]
  %24 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mtd, align 4
  %call20 = call i32 @mtd_write(ptr noundef %25, i64 noundef %offset.04, i32 noundef 4, ptr noundef nonnull %retlen, ptr noundef nonnull %ctl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.addr.05, 1
  %add24 = add nuw nsw i64 %offset.04, 4
  %exitcond.not = icmp eq i32 %inc, %div1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 3, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctl) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %header) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_erase_unit(ptr nocapture noundef %part, i16 noundef zeroext %srcunit, i16 noundef zeroext %xferunit) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [512 x i8], align 1
  %unit = alloca i16, align 2
  %retlen = alloca i32, align 4
  %srcunitswap = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %buf) #10
  %0 = call ptr @memset(ptr %buf, i32 255, i32 512)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %unit) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen) #10
  %1 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %retlen, align 4, !annotation !219
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %srcunitswap) #10
  %2 = tail call i16 @llvm.bswap.i16(i16 %srcunit)
  %3 = ptrtoint ptr %srcunitswap to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %srcunitswap, align 2
  %EUNInfo = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 4
  %4 = ptrtoint ptr %EUNInfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %EUNInfo, align 4
  %idxprom = zext i16 %srcunit to i32
  %arrayidx = getelementptr %struct.eun_info_t, ptr %5, i32 %idxprom
  %XferInfo = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 5
  %6 = ptrtoint ptr %XferInfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %XferInfo, align 4
  %idxprom1 = zext i16 %xferunit to i32
  %arrayidx2 = getelementptr %struct.xfer_info_t, ptr %7, i32 %idxprom1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @copy_erase_unit.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@copy_erase_unit, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @copy_erase_unit.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.51, i32 noundef %9, i32 noundef %11) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bam_index = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 6
  %12 = ptrtoint ptr %bam_index to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bam_index, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %srcunit)
  %cmp.not = icmp eq i16 %13, %srcunit
  br i1 %cmp.not, label %do.end.if.end21_crit_edge, label %if.then8

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then8:                                         ; preds = %do.end
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %BAMOffset = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 16
  %16 = ptrtoint ptr %BAMOffset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %BAMOffset, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %add = add i32 %18, %15
  %conv10 = zext i32 %add to i64
  %mtd = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %19 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mtd, align 4
  %BlocksPerUnit = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 9
  %21 = ptrtoint ptr %BlocksPerUnit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %BlocksPerUnit, align 4
  %mul = shl i32 %22, 2
  %bam_cache = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 7
  %23 = ptrtoint ptr %bam_cache to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bam_cache, align 4
  %call11 = call i32 @mtd_read(ptr noundef %20, i64 noundef %conv10, i32 noundef %mul, ptr noundef nonnull %retlen, ptr noundef %24) #10
  %25 = ptrtoint ptr %bam_index to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %bam_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.then8.if.end21_crit_edge, label %do.end17

if.then8.if.end21_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end17:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #14
  br label %cleanup

if.end21:                                         ; preds = %if.then8.if.end21_crit_edge, %do.end.if.end21_crit_edge
  %state = getelementptr %struct.xfer_info_t, ptr %7, i32 %idxprom1, i32 2
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %state, align 4
  %27 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx2, align 4
  %add23 = add i32 %28, 20
  %conv24 = zext i32 %add23 to i64
  %29 = ptrtoint ptr %unit to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -129, ptr %unit, align 2
  %mtd26 = getelementptr inbounds %struct.mtd_blktrans_dev, ptr %part, i32 0, i32 2
  %30 = ptrtoint ptr %mtd26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mtd26, align 4
  %call27 = call i32 @mtd_write(ptr noundef %31, i64 noundef %conv24, i32 noundef 2, ptr noundef nonnull %retlen, ptr noundef nonnull %unit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #14
  br label %cleanup

if.end35:                                         ; preds = %if.end21
  %BlocksPerUnit38 = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 9
  %32 = ptrtoint ptr %BlocksPerUnit38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %BlocksPerUnit38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp39202.not = icmp eq i32 %33, 0
  br i1 %cmp39202.not, label %if.end35.for.end_crit_edge, label %for.body.lr.ph

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end35
  %34 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2, align 4
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %bam_cache41 = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %src.0207 = phi i32 [ %37, %for.body.lr.ph ], [ %add70, %sw.epilog.for.body_crit_edge ]
  %dest.0205 = phi i32 [ %35, %for.body.lr.ph ], [ %add71, %sw.epilog.for.body_crit_edge ]
  %free.0204 = phi i32 [ 0, %for.body.lr.ph ], [ %free.1, %sw.epilog.for.body_crit_edge ]
  %i.0203 = phi i32 [ 0, %for.body.lr.ph ], [ %inc72, %sw.epilog.for.body_crit_edge ]
  %38 = ptrtoint ptr %bam_cache41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bam_cache41, align 4
  %arrayidx42 = getelementptr i32, ptr %39, i32 %i.0203
  %40 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx42, align 4
  %42 = lshr i32 %41, 24
  %and = and i32 %42, 127
  %43 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %and, label %sw.default [
    i32 48, label %for.body.sw.epilog_crit_edge
    i32 64, label %for.body.sw.bb_crit_edge
    i32 96, label %for.body.sw.bb_crit_edge220
  ]

for.body.sw.bb_crit_edge220:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge220
  %44 = ptrtoint ptr %mtd26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mtd26, align 4
  %conv45 = zext i32 %src.0207 to i64
  %call46 = call i32 @mtd_read(ptr noundef %45, i64 noundef %conv45, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end54, label %do.end51

do.end51:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #14
  br label %cleanup

if.end54:                                         ; preds = %sw.bb
  %46 = ptrtoint ptr %mtd26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mtd26, align 4
  %conv57 = zext i32 %dest.0205 to i64
  %call59 = call i32 @mtd_write(ptr noundef %47, i64 noundef %conv57, i32 noundef 512, ptr noundef nonnull %retlen, ptr noundef nonnull %buf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end54.sw.epilog_crit_edge, label %do.end64

if.end54.sw.epilog_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end64:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #14
  br label %cleanup

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %arrayidx42, align 4
  %inc = add i32 %free.0204, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end54.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %free.1 = phi i32 [ %inc, %sw.default ], [ %free.0204, %if.end54.sw.epilog_crit_edge ], [ %free.0204, %for.body.sw.epilog_crit_edge ]
  %add70 = add i32 %src.0207, 512
  %add71 = add i32 %dest.0205, 512
  %inc72 = add nuw i32 %i.0203, 1
  %49 = ptrtoint ptr %BlocksPerUnit38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %BlocksPerUnit38, align 4
  %cmp39 = icmp ult i32 %inc72, %50
  br i1 %cmp39, label %sw.epilog.for.body_crit_edge, label %for.end.loopexit

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = shl i32 %50, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end35.for.end_crit_edge
  %free.0.lcssa = phi i32 [ 0, %if.end35.for.end_crit_edge ], [ %free.1, %for.end.loopexit ]
  %.lcssa = phi i32 [ 0, %if.end35.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %51 = ptrtoint ptr %mtd26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mtd26, align 4
  %53 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx2, align 4
  %BAMOffset77 = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 10, i32 16
  %55 = ptrtoint ptr %BAMOffset77 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %BAMOffset77, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %add78 = add i32 %57, %54
  %conv79 = zext i32 %add78 to i64
  %bam_cache82 = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 7
  %58 = ptrtoint ptr %bam_cache82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bam_cache82, align 4
  %call83 = call i32 @mtd_write(ptr noundef %52, i64 noundef %conv79, i32 noundef %.lcssa, ptr noundef nonnull %retlen, ptr noundef %59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end91, label %do.end88

do.end88:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #14
  br label %cleanup

if.end91:                                         ; preds = %for.end
  %60 = ptrtoint ptr %mtd26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mtd26, align 4
  %62 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx2, align 4
  %add95 = add i32 %63, 20
  %conv96 = zext i32 %add95 to i64
  %call97 = call i32 @mtd_write(ptr noundef %61, i64 noundef %conv96, i32 noundef 2, ptr noundef nonnull %retlen, ptr noundef nonnull %srcunitswap) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %do.body106, label %do.end102

do.end102:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #14
  br label %cleanup

do.body106:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %EraseCount = getelementptr %struct.xfer_info_t, ptr %7, i32 %idxprom1, i32 1
  %64 = ptrtoint ptr %EraseCount to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %EraseCount, align 4
  %EraseCount107 = getelementptr %struct.eun_info_t, ptr %5, i32 %idxprom, i32 1
  %66 = ptrtoint ptr %EraseCount107 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %EraseCount107, align 4
  store i32 %67, ptr %EraseCount, align 4
  store i32 %65, ptr %EraseCount107, align 4
  %68 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx2, align 4
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx, align 4
  store i32 %71, ptr %arrayidx2, align 4
  store i32 %69, ptr %arrayidx, align 4
  %Free = getelementptr %struct.eun_info_t, ptr %5, i32 %idxprom, i32 2
  %72 = ptrtoint ptr %Free to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %Free, align 4
  %FreeTotal = getelementptr inbounds %struct.partition_t, ptr %part, i32 0, i32 3
  %74 = ptrtoint ptr %FreeTotal to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %FreeTotal, align 4
  %sub = sub i32 %free.0.lcssa, %73
  %add121 = add i32 %sub, %75
  store i32 %add121, ptr %FreeTotal, align 4
  store i32 %free.0.lcssa, ptr %Free, align 4
  %Deleted = getelementptr %struct.eun_info_t, ptr %5, i32 %idxprom, i32 3
  %76 = ptrtoint ptr %Deleted to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %Deleted, align 4
  %77 = ptrtoint ptr %bam_index to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %srcunit, ptr %bam_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body106, %do.end102, %do.end88, %do.end64, %do.end51, %do.end32, %do.end17
  %retval.0 = phi i32 [ %call11, %do.end17 ], [ %call27, %do.end32 ], [ %call46, %do.end51 ], [ %call59, %do.end64 ], [ %call83, %do.end88 ], [ %call97, %do.end102 ], [ 0, %do.body106 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %srcunitswap) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %unit) #10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_mtd_blktrans_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !91, !92, !93, !95, !96, !98, !99, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = !{ptr @__param_shuffle_freq, !1, !"__param_shuffle_freq", i1 false, i1 false}
!1 = !{!"../drivers/mtd/ftl.c", i32 81, i32 1}
!2 = !{ptr @__UNIQUE_ID_shuffle_freqtype234, !1, !"__UNIQUE_ID_shuffle_freqtype234", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_ftl__254_1059_ftl_tr_init6, !4, !"__initcall__kmod_ftl__254_1059_ftl_tr_init6", i1 false, i1 false}
!4 = !{!"../drivers/mtd/ftl.c", i32 1059, i32 1}
!5 = !{ptr @__exitcall_ftl_tr_exit, !4, !"__exitcall_ftl_tr_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_file255, !7, !"__UNIQUE_ID_file255", i1 false, i1 false}
!7 = !{!"../drivers/mtd/ftl.c", i32 1061, i32 1}
!8 = !{ptr @__UNIQUE_ID_license256, !7, !"__UNIQUE_ID_license256", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author257, !10, !"__UNIQUE_ID_author257", i1 false, i1 false}
!10 = !{!"../drivers/mtd/ftl.c", i32 1062, i32 1}
!11 = !{ptr @__UNIQUE_ID_description258, !12, !"__UNIQUE_ID_description258", i1 false, i1 false}
!12 = !{!"../drivers/mtd/ftl.c", i32 1063, i32 1}
!13 = !{ptr @__param_str_shuffle_freq, !1, !"__param_str_shuffle_freq", i1 false, i1 false}
!14 = !{ptr @shuffle_freq, !15, !"shuffle_freq", i1 false, i1 false}
!15 = !{!"../drivers/mtd/ftl.c", i32 80, i32 12}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/ftl.c", i32 1046, i32 11}
!18 = !{ptr @ftl_tr, !19, !"ftl_tr", i1 false, i1 false}
!19 = !{!"../drivers/mtd/ftl.c", i32 1045, i32 32}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/ftl.c", i32 756, i32 5}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ftl_read.__UNIQUE_ID_ddebug250, !21, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/ftl.c", i32 759, i32 2}
!27 = !{ptr @ftl_read._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ftl_read._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/ftl.c", i32 766, i32 6}
!31 = !{ptr @ftl_read._entry.5, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ftl_read._entry_ptr.7, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/ftl.c", i32 779, i32 3}
!35 = !{ptr @ftl_read._entry.8, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ftl_read._entry_ptr.10, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/ftl.c", i32 870, i32 5}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ftl_write.__UNIQUE_ID_ddebug252, !38, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!41 = !{ptr @ftl_write._entry, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/mtd/ftl.c", i32 873, i32 2}
!43 = !{ptr @ftl_write._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/ftl.c", i32 888, i32 6}
!46 = !{ptr @ftl_write._entry.13, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ftl_write._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @ftl_write.ne, !49, !"ne", i1 false, i1 false}
!49 = !{!"../drivers/mtd/ftl.c", i32 895, i32 17}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/ftl.c", i32 897, i32 3}
!52 = !{ptr @ftl_write._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ftl_write._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/ftl.c", i32 914, i32 6}
!56 = !{ptr @ftl_write._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ftl_write._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/ftl.c", i32 915, i32 6}
!60 = !{ptr @ftl_write._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ftl_write._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/ftl.c", i32 574, i32 5}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug238, !63, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/ftl.c", i32 575, i32 5}
!68 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug239, !67, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/ftl.c", i32 583, i32 3}
!71 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug240, !70, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/ftl.c", i32 588, i32 3}
!74 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug241, !73, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/ftl.c", i32 593, i32 3}
!77 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug242, !76, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/ftl.c", i32 598, i32 3}
!80 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug243, !79, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/ftl.c", i32 606, i32 7}
!83 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug244, !82, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/ftl.c", i32 611, i32 3}
!86 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug245, !85, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!87 = !{ptr @reclaim_block.ne, !88, !"ne", i1 false, i1 false}
!88 = !{!"../drivers/mtd/ftl.c", i32 615, i32 14}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/ftl.c", i32 617, i32 7}
!91 = !{ptr @reclaim_block._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @reclaim_block._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/ftl.c", i32 620, i32 7}
!95 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug246, !94, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/ftl.c", i32 630, i32 2}
!98 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug247, !97, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!99 = !{ptr @reclaim_block.ne.37, !100, !"ne", i1 false, i1 false}
!100 = !{!"../drivers/mtd/ftl.c", i32 645, i32 17}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/ftl.c", i32 647, i32 3}
!103 = !{ptr @reclaim_block._entry.38, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @reclaim_block._entry_ptr.40, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/ftl.c", i32 650, i32 3}
!107 = !{ptr @reclaim_block.__UNIQUE_ID_ddebug248, !106, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/ftl.c", i32 660, i32 2}
!110 = !{ptr @reclaim_block._entry.42, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @reclaim_block._entry_ptr.44, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mtd/ftl.c", i32 336, i32 5}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @erase_xfer.__UNIQUE_ID_ddebug235, !113, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/ftl.c", i32 355, i32 2}
!118 = !{ptr @erase_xfer._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @erase_xfer._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/ftl.c", i32 382, i32 5}
!122 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @prepare_xfer.__UNIQUE_ID_ddebug236, !121, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/ftl.c", i32 443, i32 5}
!126 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @copy_erase_unit.__UNIQUE_ID_ddebug237, !125, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/ftl.c", i32 460, i32 6}
!130 = !{ptr @copy_erase_unit._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @copy_erase_unit._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/ftl.c", i32 474, i32 2}
!134 = !{ptr @copy_erase_unit._entry.53, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @copy_erase_unit._entry_ptr.55, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mtd/ftl.c", i32 493, i32 3}
!138 = !{ptr @copy_erase_unit._entry.56, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @copy_erase_unit._entry_ptr.58, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mtd/ftl.c", i32 501, i32 3}
!142 = !{ptr @copy_erase_unit._entry.59, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @copy_erase_unit._entry_ptr.61, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mtd/ftl.c", i32 523, i32 2}
!146 = !{ptr @copy_erase_unit._entry.62, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @copy_erase_unit._entry_ptr.64, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mtd/ftl.c", i32 533, i32 2}
!150 = !{ptr @copy_erase_unit._entry.65, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @copy_erase_unit._entry_ptr.67, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/ftl.c", i32 718, i32 6}
!154 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @find_free._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @find_free._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/ftl.c", i32 733, i32 2}
!159 = !{ptr @find_free._entry.70, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @find_free._entry_ptr.72, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mtd/ftl.c", i32 736, i32 5}
!163 = !{ptr @find_free.__UNIQUE_ID_ddebug249, !162, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mtd/ftl.c", i32 805, i32 5}
!166 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @set_bam_entry.__UNIQUE_ID_ddebug251, !165, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mtd/ftl.c", i32 855, i32 2}
!170 = !{ptr @set_bam_entry._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @set_bam_entry._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mtd/ftl.c", i32 856, i32 2}
!174 = !{ptr @set_bam_entry._entry.77, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @set_bam_entry._entry_ptr.79, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mtd/ftl.c", i32 975, i32 2}
!178 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @ftl_discardsect.__UNIQUE_ID_ddebug253, !177, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/mtd/ftl.c", i32 1013, i32 3}
!182 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @ftl_add_mtd._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @ftl_add_mtd._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.84, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/mtd/ftl.c", i32 170, i32 36}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mtd/ftl.c", i32 174, i32 2}
!189 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @scan_header._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @scan_header._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/mtd/ftl.c", i32 180, i32 2}
!194 = !{ptr @scan_header._entry.87, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @scan_header._entry_ptr.89, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mtd/ftl.c", i32 184, i32 2}
!198 = !{ptr @scan_header._entry.90, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @scan_header._entry_ptr.92, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/mtd/ftl.c", i32 238, i32 3}
!202 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @build_maps._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @build_maps._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mtd/ftl.c", i32 259, i32 2}
!207 = !{ptr @build_maps._entry.95, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @build_maps._entry_ptr.97, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{i32 1, !"wchar_size", i32 2}
!210 = !{i32 1, !"min_enum_size", i32 4}
!211 = !{i32 8, !"branch-target-enforcement", i32 0}
!212 = !{i32 8, !"sign-return-address", i32 0}
!213 = !{i32 8, !"sign-return-address-all", i32 0}
!214 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!215 = !{i32 7, !"uwtable", i32 1}
!216 = !{i32 7, !"frame-pointer", i32 2}
!217 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!218 = !{i64 2148197705, i64 2148197710, i64 2148197723, i64 2148197767, i64 2148197801, i64 2148197822}
!219 = !{!"auto-init"}
!220 = !{!"branch_weights", i32 1, i32 2000}
