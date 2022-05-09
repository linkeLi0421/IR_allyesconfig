; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/block2mtd.c_pt.bc'
source_filename = "../drivers/mtd/devices/block2mtd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.block2mtd_dev = type { %struct.list_head, ptr, %struct.mtd_info, %struct.mutex }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.82 }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.82 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.73, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }

@__param_str_block2mtd = internal constant [20 x i8] c"block2mtd.block2mtd\00", align 1
@__param_ops_block2mtd = internal constant %struct.kernel_param_ops { i32 0, ptr @block2mtd_setup, ptr null, ptr null }, align 4
@__param_block2mtd = internal constant %struct.kernel_param { ptr @__param_str_block2mtd, ptr null, ptr @__param_ops_block2mtd, i16 128, i8 -1, i8 0, %union.anon.74 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_block2mtd285 = internal constant [84 x i8] c"block2mtd.parm=block2mtd:Device to use. \22block2mtd=<dev>[,[<erasesize>][,<label>]]\22\00", section ".modinfo", align 1
@__initcall__kmod_block2mtd__286_506_block2mtd_init7 = internal global ptr @block2mtd_init, section ".initcall7.init", align 4
@__exitcall_block2mtd_exit = internal global ptr @block2mtd_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file287 = internal constant [45 x i8] c"block2mtd.file=drivers/mtd/devices/block2mtd\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [22 x i8] c"block2mtd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author289 = internal constant [53 x i8] c"block2mtd.author=Joern Engel <joern@lazybastard.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [58 x i8] c"block2mtd.description=Emulate an MTD using a block device\00", section ".modinfo", align 1
@block2mtd_init_called = internal global { i1, [31 x i8] } zeroinitializer, align 32
@block2mtd_paramline = internal global { [92 x i8], [36 x i8] } zeroinitializer, align 32
@block2mtd_setup2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013block2mtd: parameter too long\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"block2mtd_setup2\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/devices/block2mtd.c\00", [32 x i8] zeroinitializer }, align 32
@block2mtd_setup2._entry_ptr = internal global ptr @block2mtd_setup2._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@block2mtd_setup2._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013block2mtd: too many arguments\0A\00", [63 x i8] zeroinitializer }, align 32
@block2mtd_setup2._entry_ptr.6 = internal global ptr @block2mtd_setup2._entry.4, section ".printk_index", align 4
@block2mtd_setup2._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013block2mtd: no argument\0A\00", [38 x i8] zeroinitializer }, align 32
@block2mtd_setup2._entry_ptr.9 = internal global ptr @block2mtd_setup2._entry.7, section ".printk_index", align 4
@block2mtd_setup2._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013block2mtd: device name too long\0A\00", [61 x i8] zeroinitializer }, align 32
@block2mtd_setup2._entry_ptr.12 = internal global ptr @block2mtd_setup2._entry.10, section ".printk_index", align 4
@block2mtd_setup2._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013block2mtd: illegal erase size\0A\00", [63 x i8] zeroinitializer }, align 32
@block2mtd_setup2._entry_ptr.15 = internal global ptr @block2mtd_setup2._entry.13, section ".printk_index", align 4
@block2mtd_setup2._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016block2mtd: Using custom MTD label '%s' for dev %s\0A\00", [43 x i8] zeroinitializer }, align 32
@block2mtd_setup2._entry_ptr.18 = internal global ptr @block2mtd_setup2._entry.16, section ".printk_index", align 4
@add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013block2mtd: error: cannot open device %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"add_device\00", [21 x i8] zeroinitializer }, align 32
@add_device._entry_ptr = internal global ptr @add_device._entry, section ".printk_index", align 4
@add_device._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013block2mtd: attempting to use an MTD device as a block device\0A\00", [32 x i8] zeroinitializer }, align 32
@add_device._entry_ptr.23 = internal global ptr @add_device._entry.21, section ".printk_index", align 4
@add_device._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013block2mtd: erasesize must be a divisor of device size\0A\00", [39 x i8] zeroinitializer }, align 32
@add_device._entry_ptr.26 = internal global ptr @add_device._entry.24, section ".printk_index", align 4
@add_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dev->write_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"block2mtd: %s\00", [18 x i8] zeroinitializer }, align 32
@blkmtd_device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @blkmtd_device_list, ptr @blkmtd_device_list }, [24 x i8] zeroinitializer }, align 32
@add_device._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016block2mtd: mtd%d: [%s] erase_size = %dKiB [%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@add_device._entry_ptr.31 = internal global ptr @add_device._entry.29, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@block2mtd_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013block2mtd: erase failed err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"block2mtd_erase\00", [16 x i8] zeroinitializer }, align 32
@block2mtd_erase._entry_ptr = internal global ptr @block2mtd_erase._entry, section ".printk_index", align 4
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@block2mtd_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016block2mtd: mtd%d: [%s] removed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"block2mtd_exit\00", [17 x i8] zeroinitializer }, align 32
@block2mtd_exit._entry_ptr = internal global ptr @block2mtd_exit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 71, i64 75, i64 77, i64 107]
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"block2mtd_init_called\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"block2mtd_paramline\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 382, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 398, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 406, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 409, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 414, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 420, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 428, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 435, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 265, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 271, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 276, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 280, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 285, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"blkmtd_device_list\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 47, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 312, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 98, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 788, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 260, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 717, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [35 x i8] c"../drivers/mtd/devices/block2mtd.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 498, i32 3 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_block2mtd285, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_license288, ptr @__exitcall_block2mtd_exit, ptr @__initcall__kmod_block2mtd__286_506_block2mtd_init7, ptr @__param_block2mtd, ptr @add_device._entry, ptr @add_device._entry.21, ptr @add_device._entry.24, ptr @add_device._entry.29, ptr @add_device._entry_ptr, ptr @add_device._entry_ptr.23, ptr @add_device._entry_ptr.26, ptr @add_device._entry_ptr.31, ptr @block2mtd_erase._entry, ptr @block2mtd_erase._entry_ptr, ptr @block2mtd_exit._entry, ptr @block2mtd_exit._entry_ptr, ptr @block2mtd_setup2._entry, ptr @block2mtd_setup2._entry.10, ptr @block2mtd_setup2._entry.13, ptr @block2mtd_setup2._entry.16, ptr @block2mtd_setup2._entry.4, ptr @block2mtd_setup2._entry.7, ptr @block2mtd_setup2._entry_ptr, ptr @block2mtd_setup2._entry_ptr.12, ptr @block2mtd_setup2._entry_ptr.15, ptr @block2mtd_setup2._entry_ptr.18, ptr @block2mtd_setup2._entry_ptr.6, ptr @block2mtd_setup2._entry_ptr.9, ptr @block2mtd_init_called, ptr @block2mtd_paramline, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @add_device.__key, ptr @.str.27, ptr @.str.28, ptr @blkmtd_device_list, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block2mtd_init_called to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block2mtd_paramline to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block2mtd_setup2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block2mtd_setup2._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block2mtd_setup2._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block2mtd_setup2._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block2mtd_setup2._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block2mtd_setup2._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_device._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_device._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkmtd_device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_device._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block2mtd_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block2mtd_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @block2mtd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %char0 = load i8, ptr @block2mtd_paramline, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool.not = icmp eq i8 %char0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @block2mtd_setup2(ptr noundef nonnull @block2mtd_paramline)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store i1 true, ptr @block2mtd_init_called, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @block2mtd_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @blkmtd_device_list, align 4
  %cmp.i.not22 = icmp eq ptr %0, @blkmtd_device_list
  br i1 %cmp.i.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %block2mtd_free_device.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.023 = phi ptr [ %next.024, %block2mtd_free_device.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %pos.023 to i32
  call void @__asan_load4_noabort(i32 %1)
  %next.024 = load ptr, ptr %pos.023, align 4
  %mtd = getelementptr inbounds %struct.block2mtd_dev, ptr %pos.023, i32 0, i32 2
  %priv.i = getelementptr inbounds %struct.block2mtd_dev, ptr %pos.023, i32 0, i32 2, i32 54
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %blkdev.i = getelementptr inbounds %struct.block2mtd_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blkdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %blkdev.i, align 8
  %call.i = tail call i32 @sync_blockdev(ptr noundef %5) #12
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef %mtd) #12
  %write_mutex = getelementptr inbounds %struct.block2mtd_dev, ptr %pos.023, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %write_mutex) #12
  %index = getelementptr inbounds %struct.block2mtd_dev, ptr %pos.023, i32 0, i32 2, i32 14
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %name = getelementptr inbounds %struct.block2mtd_dev, ptr %pos.023, i32 0, i32 2, i32 13
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %add.ptr7 = getelementptr i8, ptr %9, i32 11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %7, ptr noundef %add.ptr7) #15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.023) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.023, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %pos.023 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pos.023, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %16 = ptrtoint ptr %pos.023 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.023, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.023, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not.i = icmp eq ptr %pos.023, null
  br i1 %tobool.not.i, label %list_del.exit.block2mtd_free_device.exit_crit_edge, label %if.end.i

list_del.exit.block2mtd_free_device.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %block2mtd_free_device.exit

if.end.i:                                         ; preds = %list_del.exit
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 8
  tail call void @kfree(ptr noundef %19) #12
  %blkdev.i19 = getelementptr inbounds %struct.block2mtd_dev, ptr %pos.023, i32 0, i32 1
  %20 = ptrtoint ptr %blkdev.i19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %blkdev.i19, align 8
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then2.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bd_inode.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping.i, align 8
  %call.i20 = tail call i32 @invalidate_mapping_pages(ptr noundef %25, i32 noundef 0, i32 noundef -1) #12
  %26 = ptrtoint ptr %blkdev.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %blkdev.i19, align 8
  tail call void @blkdev_put(ptr noundef %27, i32 noundef 131) #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %pos.023) #12
  br label %block2mtd_free_device.exit

block2mtd_free_device.exit:                       ; preds = %if.end5.i, %list_del.exit.block2mtd_free_device.exit_crit_edge
  %cmp.i.not = icmp eq ptr %next.024, @blkmtd_device_list
  br i1 %cmp.i.not, label %block2mtd_free_device.exit.for.end_crit_edge, label %block2mtd_free_device.exit.for.body_crit_edge

block2mtd_free_device.exit.for.body_crit_edge:    ; preds = %block2mtd_free_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

block2mtd_free_device.exit.for.end_crit_edge:     ; preds = %block2mtd_free_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %block2mtd_free_device.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @block2mtd_setup(ptr noundef %val, ptr nocapture noundef readnone %kp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @block2mtd_init_called, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @block2mtd_setup2(ptr noundef %val)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @strlcpy(ptr noundef nonnull @block2mtd_paramline, ptr noundef %val, i32 noundef 92) #12
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @block2mtd_setup2(ptr nocapture noundef readonly %val) unnamed_addr #1 align 64 {
entry:
  %endp.i = alloca ptr, align 4
  %buf = alloca [180 x i8], align 1
  %str = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 255, i32 180)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str) #12
  %1 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %str, align 4
  %call = call i32 @strnlen(ptr noundef %val, i32 noundef 180) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 179, i32 %call)
  %cmp = icmp ugt i32 %call, 179
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @strcpy(ptr noundef nonnull %buf, ptr noundef %val) #16
  %call.i = call ptr @strrchr(ptr noundef nonnull %buf, i32 noundef 10) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.kill_final_newline.exit_crit_edge, label %land.lhs.true.i

if.end.kill_final_newline.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %kill_final_newline.exit

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.kill_final_newline.exit_crit_edge

land.lhs.true.i.kill_final_newline.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kill_final_newline.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call.i, align 1
  br label %kill_final_newline.exit

kill_final_newline.exit:                          ; preds = %if.then.i, %land.lhs.true.i.kill_final_newline.exit_crit_edge, %if.end.kill_final_newline.exit_crit_edge
  %call4 = call ptr @strsep(ptr noundef nonnull %str, ptr noundef nonnull @.str.3) #12
  %call4.1 = call ptr @strsep(ptr noundef nonnull %str, ptr noundef nonnull @.str.3) #12
  %call4.2 = call ptr @strsep(ptr noundef nonnull %str, ptr noundef nonnull @.str.3) #12
  %5 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %str, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %kill_final_newline.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %cleanup

if.end11:                                         ; preds = %kill_final_newline.exit
  %tobool13.not = icmp eq ptr %call4, null
  br i1 %tobool13.not, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call22 = call i32 @strlen(ptr noundef nonnull %call4) #16
  %7 = add i32 %call22, -80
  call void @__sanitizer_cov_trace_const_cmp4(i32 -81, i32 %7)
  %cmp23 = icmp ult i32 %7, -81
  br i1 %cmp23, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #15
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %tobool32.not = icmp eq ptr %call4.1, null
  br i1 %tobool32.not, label %if.end30.if.end47_crit_edge, label %land.lhs.true

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end30
  %8 = ptrtoint ptr %call4.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %char0 = load i8, ptr %call4.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool35.not = icmp eq i8 %char0, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end47_crit_edge, label %if.then36

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then36:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endp.i) #12
  %9 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %endp.i, align 4, !annotation !100
  %call.i.i = call i32 @simple_strtoul(ptr noundef nonnull %call4.1, ptr noundef nonnull %endp.i, i32 noundef 0) #12
  %10 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %endp.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %if.then36.ustrtoul.exit.i_crit_edge [
    i8 71, label %sw.bb.i.i
    i8 77, label %if.then36.sw.bb1.i.i_crit_edge
    i8 75, label %if.then36.sw.bb3.i.i_crit_edge
    i8 107, label %if.then36.sw.bb3.i.i_crit_edge11
  ]

if.then36.sw.bb3.i.i_crit_edge11:                 ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i.i

if.then36.sw.bb3.i.i_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i.i

if.then36.sw.bb1.i.i_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i.i

if.then36.ustrtoul.exit.i_crit_edge:              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %ustrtoul.exit.i

sw.bb.i.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i.i = shl i32 %call.i.i, 10
  br label %sw.bb1.i.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i.i, %if.then36.sw.bb1.i.i_crit_edge
  %result.0.i.i = phi i32 [ %call.i.i, %if.then36.sw.bb1.i.i_crit_edge ], [ %mul.i.i, %sw.bb.i.i ]
  %mul2.i.i = shl i32 %result.0.i.i, 10
  br label %sw.bb3.i.i

sw.bb3.i.i:                                       ; preds = %sw.bb1.i.i, %if.then36.sw.bb3.i.i_crit_edge, %if.then36.sw.bb3.i.i_crit_edge11
  %result.1.i.i = phi i32 [ %call.i.i, %if.then36.sw.bb3.i.i_crit_edge ], [ %call.i.i, %if.then36.sw.bb3.i.i_crit_edge11 ], [ %mul2.i.i, %sw.bb1.i.i ]
  %mul4.i.i = shl i32 %result.1.i.i, 10
  %arrayidx.i.i = getelementptr i8, ptr %11, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %16)
  %cmp.i.i = icmp eq i8 %16, 105
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb3.i.i.ustrtoul.exit.i_crit_edge

sw.bb3.i.i.ustrtoul.exit.i_crit_edge:             ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ustrtoul.exit.i

if.then.i.i:                                      ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx7.i.i = getelementptr i8, ptr %11, i32 2
  %17 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %18)
  %cmp9.i.i = icmp eq i8 %18, 66
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 3
  %arrayidx7.sink.i.i = select i1 %cmp9.i.i, ptr %add.ptr.i.i, ptr %arrayidx7.i.i
  %19 = ptrtoint ptr %endp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx7.sink.i.i, ptr %endp.i, align 4
  br label %ustrtoul.exit.i

ustrtoul.exit.i:                                  ; preds = %if.then.i.i, %sw.bb3.i.i.ustrtoul.exit.i_crit_edge, %if.then36.ustrtoul.exit.i_crit_edge
  %result.2.i.i = phi i32 [ %call.i.i, %if.then36.ustrtoul.exit.i_crit_edge ], [ %mul4.i.i, %sw.bb3.i.i.ustrtoul.exit.i_crit_edge ], [ %mul4.i.i, %if.then.i.i ]
  %20 = ptrtoint ptr %endp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %endp.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i1 = icmp eq i8 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endp.i) #12
  br i1 %tobool.not.i1, label %ustrtoul.exit.i.if.end47_crit_edge, label %do.end43

ustrtoul.exit.i.if.end47_crit_edge:               ; preds = %ustrtoul.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.end43:                                         ; preds = %ustrtoul.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  br label %cleanup

if.end47:                                         ; preds = %ustrtoul.exit.i.if.end47_crit_edge, %land.lhs.true.if.end47_crit_edge, %if.end30.if.end47_crit_edge
  %erase_size.1 = phi i32 [ 4096, %if.end30.if.end47_crit_edge ], [ 4096, %land.lhs.true.if.end47_crit_edge ], [ %result.2.i.i, %ustrtoul.exit.i.if.end47_crit_edge ]
  %tobool49.not = icmp eq ptr %call4.2, null
  br i1 %tobool49.not, label %if.end47.if.end.i4_crit_edge, label %if.then50

if.end47.if.end.i4_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i4

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %call4.2, ptr noundef nonnull %call4) #15
  br label %if.end.i4

if.end.i4:                                        ; preds = %if.then50, %if.end47.if.end.i4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 1520) #17
  %tobool1.not.i3 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i3, label %if.end.i4.cleanup_crit_edge, label %if.end3.i

if.end.i4.cleanup_crit_edge:                      ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i4
  %call4.i = call ptr @blkdev_get_by_path(ptr noundef nonnull %call4, i32 noundef 131, ptr noundef nonnull %call7.i.i.i) #12
  %cmp.i2.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i, label %if.end8.peel.i, label %if.end3.i.if.end17.i_crit_edge

if.end3.i.if.end17.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.end8.peel.i:                                   ; preds = %if.end3.i
  call void @wait_for_device_probe() #12
  %call9.peel.i = call i32 @name_to_dev_t(ptr noundef nonnull %call4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.peel.i)
  %tobool10.not.peel.i = icmp eq i32 %call9.peel.i, 0
  br i1 %tobool10.not.peel.i, label %if.end8.peel.i.cleanup.peel.i_crit_edge, label %if.end12.peel.i

if.end8.peel.i.cleanup.peel.i_crit_edge:          ; preds = %if.end8.peel.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.peel.i

if.end12.peel.i:                                  ; preds = %if.end8.peel.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.peel.i = call ptr @blkdev_get_by_dev(i32 noundef %call9.peel.i, i32 noundef 131, ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup.peel.i

cleanup.peel.i:                                   ; preds = %if.end12.peel.i, %if.end8.peel.i.cleanup.peel.i_crit_edge
  %bdev.1.peel.i = phi ptr [ %call13.peel.i, %if.end12.peel.i ], [ %call4.i, %if.end8.peel.i.cleanup.peel.i_crit_edge ]
  %cmp.i.peel.i = icmp ugt ptr %bdev.1.peel.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.peel.i, label %if.end8.i, label %cleanup.peel.i.if.end17.i_crit_edge

cleanup.peel.i.if.end17.i_crit_edge:              ; preds = %cleanup.peel.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.end8.i:                                        ; preds = %cleanup.peel.i
  call void @msleep(i32 noundef 1000) #12
  call void @wait_for_device_probe() #12
  %call9.i = call i32 @name_to_dev_t(ptr noundef nonnull %call4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.cleanup.i_crit_edge, label %if.end12.i

if.end8.i.cleanup.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i = call ptr @blkdev_get_by_dev(i32 noundef %call9.i, i32 noundef 131, ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end12.i, %if.end8.i.cleanup.i_crit_edge
  %bdev.1.i = phi ptr [ %call13.i, %if.end12.i ], [ %bdev.1.peel.i, %if.end8.i.cleanup.i_crit_edge ]
  %cmp.i.i5 = icmp ugt ptr %bdev.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i5, label %if.end8.i.1, label %cleanup.i.for.end.i_crit_edge, !llvm.loop !101

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end8.i.1:                                      ; preds = %cleanup.i
  call void @msleep(i32 noundef 1000) #12
  call void @wait_for_device_probe() #12
  %call9.i.1 = call i32 @name_to_dev_t(ptr noundef nonnull %call4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.1)
  %tobool10.not.i.1 = icmp eq i32 %call9.i.1, 0
  br i1 %tobool10.not.i.1, label %if.end8.i.1.cleanup.i.1_crit_edge, label %if.end12.i.1

if.end8.i.1.cleanup.i.1_crit_edge:                ; preds = %if.end8.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.1

if.end12.i.1:                                     ; preds = %if.end8.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.1 = call ptr @blkdev_get_by_dev(i32 noundef %call9.i.1, i32 noundef 131, ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup.i.1

cleanup.i.1:                                      ; preds = %if.end12.i.1, %if.end8.i.1.cleanup.i.1_crit_edge
  %bdev.1.i.1 = phi ptr [ %call13.i.1, %if.end12.i.1 ], [ %bdev.1.i, %if.end8.i.1.cleanup.i.1_crit_edge ]
  %cmp.i.i5.1 = icmp ugt ptr %bdev.1.i.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i5.1, label %if.end8.i.2, label %cleanup.i.1.for.end.i_crit_edge, !llvm.loop !101

cleanup.i.1.for.end.i_crit_edge:                  ; preds = %cleanup.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end8.i.2:                                      ; preds = %cleanup.i.1
  call void @msleep(i32 noundef 1000) #12
  call void @wait_for_device_probe() #12
  %call9.i.2 = call i32 @name_to_dev_t(ptr noundef nonnull %call4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.2)
  %tobool10.not.i.2 = icmp eq i32 %call9.i.2, 0
  br i1 %tobool10.not.i.2, label %if.end8.i.2.cleanup.i.2_crit_edge, label %if.end12.i.2

if.end8.i.2.cleanup.i.2_crit_edge:                ; preds = %if.end8.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.2

if.end12.i.2:                                     ; preds = %if.end8.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %call13.i.2 = call ptr @blkdev_get_by_dev(i32 noundef %call9.i.2, i32 noundef 131, ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup.i.2

cleanup.i.2:                                      ; preds = %if.end12.i.2, %if.end8.i.2.cleanup.i.2_crit_edge
  %bdev.1.i.2 = phi ptr [ %call13.i.2, %if.end12.i.2 ], [ %bdev.1.i.1, %if.end8.i.2.cleanup.i.2_crit_edge ]
  %cmp.i.i5.2 = icmp ugt ptr %bdev.1.i.2, inttoptr (i32 -4096 to ptr)
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.2, %cleanup.i.1.for.end.i_crit_edge, %cleanup.i.for.end.i_crit_edge
  %bdev.1.i.lcssa = phi ptr [ %bdev.1.i, %cleanup.i.for.end.i_crit_edge ], [ %bdev.1.i.1, %cleanup.i.1.for.end.i_crit_edge ], [ %bdev.1.i.2, %cleanup.i.2 ]
  %cmp.i.i5.lcssa = phi i1 [ %cmp.i.i5, %cleanup.i.for.end.i_crit_edge ], [ %cmp.i.i5.1, %cleanup.i.1.for.end.i_crit_edge ], [ %cmp.i.i5.2, %cleanup.i.2 ]
  br i1 %cmp.i.i5.lcssa, label %do.end.i, label %for.end.i.if.end17.i_crit_edge

for.end.i.if.end17.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %call4) #15
  br label %if.end.i.i

if.end17.i:                                       ; preds = %for.end.i.if.end17.i_crit_edge, %cleanup.peel.i.if.end17.i_crit_edge, %if.end3.i.if.end17.i_crit_edge
  %bdev.0.lcssa10.i = phi ptr [ %bdev.1.i.lcssa, %for.end.i.if.end17.i_crit_edge ], [ %bdev.1.peel.i, %cleanup.peel.i.if.end17.i_crit_edge ], [ %call4.i, %if.end3.i.if.end17.i_crit_edge ]
  %blkdev.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %blkdev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %bdev.0.lcssa10.i, ptr %blkdev.i, align 8
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %bdev.0.lcssa10.i, i32 0, i32 5
  %26 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bd_dev.i, align 4
  %shr.mask.i = and i32 %27, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 32505856, i32 %shr.mask.i)
  %cmp18.i = icmp eq i32 %shr.mask.i, 32505856
  br i1 %cmp18.i, label %do.end22.i, label %if.end25.i

do.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  br label %if.end.i.i

if.end25.i:                                       ; preds = %if.end17.i
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %bdev.0.lcssa10.i, i32 0, i32 7
  %28 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bd_inode.i, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_size.i, align 8
  %conv.i = trunc i64 %31 to i32
  %rem.i = srem i32 %conv.i, %erase_size.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool27.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool27.not.i, label %do.body35.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  br label %if.end.i.i

do.body35.i:                                      ; preds = %if.end25.i
  %write_mutex.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %write_mutex.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @add_device.__key) #12
  br i1 %tobool49.not, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #14
  %call40.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.28, ptr noundef nonnull %call4) #12
  br label %if.end42.i

if.else.i:                                        ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #14
  %call41.i = call noalias ptr @kstrdup(ptr noundef nonnull %call4.2, i32 noundef 3264) #12
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i, %if.then39.i
  %name.0.i = phi ptr [ %call41.i, %if.else.i ], [ %call40.i, %if.then39.i ]
  %tobool43.not.i = icmp eq ptr %name.0.i, null
  br i1 %tobool43.not.i, label %if.end42.i.err_destroy_mutex.i_crit_edge, label %if.end45.i

if.end42.i.err_destroy_mutex.i_crit_edge:         ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_destroy_mutex.i

if.end45.i:                                       ; preds = %if.end42.i
  %mtd.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2
  %name46.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 13
  %32 = ptrtoint ptr %name46.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %name.0.i, ptr %name46.i, align 8
  %33 = ptrtoint ptr %blkdev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %blkdev.i, align 8
  %bd_inode48.i = getelementptr inbounds %struct.block_device, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %bd_inode48.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bd_inode48.i, align 4
  %i_size49.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %i_size49.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size49.i, align 8
  %and.i = and i64 %38, -4096
  %size.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %and.i, ptr %size.i, align 8
  %erasesize.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %erase_size.1, ptr %erasesize.i, align 8
  %writesize.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %writesize.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %writesize.i, align 4
  %writebufsize.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %writebufsize.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4096, ptr %writebufsize.i, align 8
  %43 = ptrtoint ptr %mtd.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %mtd.i, align 8
  %flags.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 7168, ptr %flags.i, align 4
  %_erase.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 21
  %45 = ptrtoint ptr %_erase.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @block2mtd_erase, ptr %_erase.i, align 8
  %_write.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 25
  %46 = ptrtoint ptr %_write.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @block2mtd_write, ptr %_write.i, align 8
  %_sync.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 37
  %47 = ptrtoint ptr %_sync.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @block2mtd_sync, ptr %_sync.i, align 8
  %_read.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 24
  %48 = ptrtoint ptr %_read.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @block2mtd_read, ptr %_read.i, align 4
  %priv.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 54
  %49 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i.i, ptr %priv.i, align 8
  %owner.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 55
  %50 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %owner.i, align 4
  %call63.i = call i32 @mtd_device_parse_register(ptr noundef %mtd.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %if.end45.i.err_destroy_mutex.i_crit_edge

if.end45.i.err_destroy_mutex.i_crit_edge:         ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_destroy_mutex.i

if.end66.i:                                       ; preds = %if.end45.i
  %51 = load ptr, ptr @blkmtd_device_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @blkmtd_device_list, ptr noundef %51) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end66.i.list_add.exit.i_crit_edge

if.end66.i.list_add.exit.i_crit_edge:             ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %53 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @blkmtd_device_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %call7.i.i.i, ptr @blkmtd_device_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end66.i.list_add.exit.i_crit_edge
  %index.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 14
  %55 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index.i, align 4
  br i1 %tobool49.not, label %cond.false.i, label %list_add.exit.i.cond.end.i_crit_edge

list_add.exit.i.cond.end.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %name46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name46.i, align 8
  %add.ptr.i = getelementptr i8, ptr %58, i32 11
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %list_add.exit.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %add.ptr.i, %cond.false.i ], [ %call4.2, %list_add.exit.i.cond.end.i_crit_edge ]
  %59 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %erasesize.i, align 8
  %shr77.i = lshr i32 %60, 10
  %call80.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %56, ptr noundef %cond.i, i32 noundef %shr77.i, i32 noundef %60) #15
  br label %cleanup

err_destroy_mutex.i:                              ; preds = %if.end45.i.err_destroy_mutex.i_crit_edge, %if.end42.i.err_destroy_mutex.i_crit_edge
  call void @mutex_destroy(ptr noundef %write_mutex.i) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %err_destroy_mutex.i, %do.end31.i, %do.end22.i, %do.end.i
  %name.i.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 2, i32 13
  %61 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name.i.i, align 8
  call void @kfree(ptr noundef %62) #12
  %blkdev.i.i = getelementptr inbounds %struct.block2mtd_dev, ptr %call7.i.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %blkdev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %blkdev.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %64, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.block2mtd_free_device.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.block2mtd_free_device.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %block2mtd_free_device.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bd_inode.i.i = getelementptr inbounds %struct.block_device, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %bd_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bd_inode.i.i, align 4
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_mapping.i.i, align 8
  %call.i.i6 = call i32 @invalidate_mapping_pages(ptr noundef %68, i32 noundef 0, i32 noundef -1) #12
  %69 = ptrtoint ptr %blkdev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %blkdev.i.i, align 8
  call void @blkdev_put(ptr noundef %70, i32 noundef 131) #12
  br label %block2mtd_free_device.exit.i

block2mtd_free_device.exit.i:                     ; preds = %if.then2.i.i, %if.end.i.i.block2mtd_free_device.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %block2mtd_free_device.exit.i, %cond.end.i, %if.end.i4.cleanup_crit_edge, %do.end43, %do.end27, %do.end17, %do.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str) #12
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %buf) #12
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_dev_t(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @block2mtd_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %instr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %instr, align 8
  %len1 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len1, align 8
  %conv2 = trunc i64 %5 to i32
  %write_mutex = getelementptr inbounds %struct.block2mtd_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %write_mutex, i32 noundef 0) #12
  %conv3 = and i64 %3, 4294967295
  %call = tail call fastcc i32 @_block2mtd_erase(ptr noundef %1, i64 noundef %conv3, i32 noundef %conv2)
  tail call void @mutex_unlock(ptr noundef %write_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @block2mtd_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr noundef %retlen, ptr nocapture noundef readonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write_mutex = getelementptr inbounds %struct.block2mtd_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %write_mutex, i32 noundef 0) #12
  %call = tail call fastcc i32 @_block2mtd_write(ptr noundef %1, ptr noundef %buf, i64 noundef %to, i32 noundef %len, ptr noundef %retlen)
  tail call void @mutex_unlock(ptr noundef %write_mutex) #12
  %2 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @block2mtd_sync(ptr nocapture noundef readonly %mtd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %blkdev = getelementptr inbounds %struct.block2mtd_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %blkdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blkdev, align 8
  %call = tail call i32 @sync_blockdev(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @block2mtd_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not34 = icmp eq i32 %len, 0
  br i1 %tobool.not34, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %0 = trunc i64 %from to i32
  %conv1 = and i32 %0, 4095
  %1 = lshr i64 %from, 12
  %conv = trunc i64 %1 to i32
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %blkdev = getelementptr inbounds %struct.block2mtd_dev, ptr %3, i32 0, i32 1
  %tobool9.not = icmp eq ptr %retlen, null
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %offset.038 = phi i32 [ %conv1, %while.body.lr.ph ], [ 0, %if.end12.while.body_crit_edge ]
  %index.037 = phi i32 [ %conv, %while.body.lr.ph ], [ %inc, %if.end12.while.body_crit_edge ]
  %buf.addr.036 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr13, %if.end12.while.body_crit_edge ]
  %len.addr.035 = phi i32 [ %len, %while.body.lr.ph ], [ %sub3, %if.end12.while.body_crit_edge ]
  %add = add i32 %offset.038, %len.addr.035
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp ugt i32 %add, 4096
  %sub = sub nuw nsw i32 4096, %offset.038
  %cpylen.0 = select i1 %cmp, i32 %sub, i32 %len.addr.035
  %sub3 = sub i32 %len.addr.035, %cpylen.0
  %4 = ptrtoint ptr %blkdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %blkdev, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %9, i32 noundef %index.037, ptr noundef null, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %call8 = tail call ptr @page_address(ptr noundef %call.i.i) #12
  %add.ptr = getelementptr i8, ptr %call8, i32 %offset.038
  %11 = call ptr @memcpy(ptr %buf.addr.036, ptr %add.ptr, i32 %cpylen.0)
  %12 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !103

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %17 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !104

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.37) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@block2mtd_read, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !109

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %16, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %16) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  br i1 %tobool9.not, label %put_page.exit.if.end12_crit_edge, label %if.then10

put_page.exit.if.end12_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retlen, align 4
  %add11 = add i32 %22, %cpylen.0
  store i32 %add11, ptr %retlen, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %put_page.exit.if.end12_crit_edge
  %add.ptr13 = getelementptr i8, ptr %buf.addr.036, i32 %cpylen.0
  %inc = add i32 %index.037, 1
  %tobool.not = icmp eq i32 %sub3, 0
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then5 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_block2mtd_erase(ptr nocapture noundef readonly %dev, i64 noundef %to, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %blkdev = getelementptr inbounds %struct.block2mtd_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %blkdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkdev, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %tobool.not43 = icmp ult i32 %len, 4096
  br i1 %tobool.not43, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %shr1 = lshr i32 %len, 12
  %6 = lshr i64 %to, 12
  %conv = trunc i64 %6 to i32
  br label %while.body

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %while.body.preheader
  %pages.045 = phi i32 [ %dec, %put_page.exit.while.body_crit_edge ], [ %shr1, %while.body.preheader ]
  %index.044 = phi i32 [ %inc, %put_page.exit.while.body_crit_edge ], [ %conv, %while.body.preheader ]
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %5, i32 noundef %index.044, ptr noundef null, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %while.body
  %call4 = tail call ptr @page_address(ptr noundef %call.i.i) #12
  %add.ptr = getelementptr i8, ptr %call4, i32 4096
  %call5 = tail call ptr @page_address(ptr noundef %call.i.i) #12
  %cmp41 = icmp ult ptr %call5, %add.ptr
  br i1 %cmp41, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr i32, ptr %p.042, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %p.042 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %call5, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %p.042 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p.042, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp7.not = icmp eq i32 %9, -1
  br i1 %cmp7.not, label %for.cond, label %if.then9

if.then9:                                         ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.34, i32 noundef 788) #12
  %10 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !103

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !103

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.35) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !110
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %14, i32 noundef 4) #12
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %14, align 4
  %and.i.i4.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %14, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #12, !srcloc !111
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !112
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %14) #12
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call10 = tail call ptr @page_address(ptr noundef %call.i.i) #12
  %22 = call ptr @memset(ptr %call10, i32 255, i32 4096)
  %call11 = tail call zeroext i1 @set_page_dirty(ptr noundef %call.i.i) #12
  tail call void @unlock_page(ptr noundef %call.i.i) #12
  tail call void @balance_dirty_pages_ratelimited(ptr noundef %5) #12
  br label %for.end

for.end:                                          ; preds = %lock_page.exit, %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %23 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i31 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %and.i.i31, 0
  br i1 %tobool.not.i.i32, label %if.end.i.i35, label %if.then.i.i34, !prof !103

if.then.i.i34:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i33 = add i32 %25, -1
  br label %_compound_head.exit.i37

if.end.i.i35:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i37

_compound_head.exit.i37:                          ; preds = %if.end.i.i35, %if.then.i.i34
  %retval.0.i.i36 = phi i32 [ %sub.i.i33, %if.then.i.i34 ], [ %26, %if.end.i.i35 ]
  %27 = inttoptr i32 %retval.0.i.i36 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !104

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i37
  call void @__sanitizer_cov_trace_pc() #14
  %30 = inttoptr i32 %retval.0.i.i36 to ptr
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.37) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i37
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@_block2mtd_erase, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !109

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %27, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %27) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %dec = add nsw i32 %pages.045, -1
  %inc = add i32 %index.044, 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %put_page.exit.cleanup_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

put_page.exit.cleanup_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %put_page.exit.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %put_page.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_block2mtd_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf, i64 noundef %to, i32 noundef %len, ptr noundef %retlen) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %blkdev = getelementptr inbounds %struct.block2mtd_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %blkdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkdev, align 8
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not58 = icmp eq i32 %len, 0
  br i1 %tobool.not58, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %6 = trunc i64 %to to i32
  %conv1 = and i32 %6, 4095
  %7 = lshr i64 %to, 12
  %conv = trunc i64 %7 to i32
  %tobool16.not = icmp eq ptr %retlen, null
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.lr.ph
  %offset.062 = phi i32 [ %conv1, %while.body.lr.ph ], [ 0, %if.end19.while.body_crit_edge ]
  %index.061 = phi i32 [ %conv, %while.body.lr.ph ], [ %inc, %if.end19.while.body_crit_edge ]
  %len.addr.060 = phi i32 [ %len, %while.body.lr.ph ], [ %sub3, %if.end19.while.body_crit_edge ]
  %buf.addr.059 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr20, %if.end19.while.body_crit_edge ]
  %add = add i32 %offset.062, %len.addr.060
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp ugt i32 %add, 4096
  %sub = sub nuw nsw i32 4096, %offset.062
  %cpylen.0 = select i1 %cmp, i32 %sub, i32 %len.addr.060
  %sub3 = sub i32 %len.addr.060, %cpylen.0
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %5, i32 noundef %index.061, ptr noundef null, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %call8 = tail call ptr @page_address(ptr noundef %call.i.i) #12
  %add.ptr = getelementptr i8, ptr %call8, i32 %offset.062
  %bcmp = tail call i32 @bcmp(ptr %add.ptr, ptr %buf.addr.059, i32 %cpylen.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %if.end7.if.end15_crit_edge, label %if.then11

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.end7
  tail call void @__might_sleep(ptr noundef nonnull @.str.34, i32 noundef 788) #12
  %9 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !103

if.then.i.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !103

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.35) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !110
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #12
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %13, align 4
  %and.i.i4.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #12, !srcloc !111
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !112
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %13) #12
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call12 = tail call ptr @page_address(ptr noundef %call.i.i) #12
  %add.ptr13 = getelementptr i8, ptr %call12, i32 %offset.062
  %21 = call ptr @memcpy(ptr %add.ptr13, ptr %buf.addr.059, i32 %cpylen.0)
  %call14 = tail call zeroext i1 @set_page_dirty(ptr noundef %call.i.i) #12
  tail call void @unlock_page(ptr noundef %call.i.i) #12
  tail call void @balance_dirty_pages_ratelimited(ptr noundef %5) #12
  br label %if.end15

if.end15:                                         ; preds = %lock_page.exit, %if.end7.if.end15_crit_edge
  %22 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i48 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48)
  %tobool.not.i.i49 = icmp eq i32 %and.i.i48, 0
  br i1 %tobool.not.i.i49, label %if.end.i.i52, label %if.then.i.i51, !prof !103

if.then.i.i51:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i50 = add i32 %24, -1
  br label %_compound_head.exit.i54

if.end.i.i52:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i54

_compound_head.exit.i54:                          ; preds = %if.end.i.i52, %if.then.i.i51
  %retval.0.i.i53 = phi i32 [ %sub.i.i50, %if.then.i.i51 ], [ %25, %if.end.i.i52 ]
  %26 = inttoptr i32 %retval.0.i.i53 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %27 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !104

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i54
  call void @__sanitizer_cov_trace_pc() #14
  %29 = inttoptr i32 %retval.0.i.i53 to ptr
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.37) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i54
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@_block2mtd_write, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !109

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %26, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %26) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  br i1 %tobool16.not, label %put_page.exit.if.end19_crit_edge, label %if.then17

put_page.exit.if.end19_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %retlen, align 4
  %add18 = add i32 %32, %cpylen.0
  store i32 %add18, ptr %retlen, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %put_page.exit.if.end19_crit_edge
  %add.ptr20 = getelementptr i8, ptr %buf.addr.059, i32 %cpylen.0
  %inc = add i32 %index.061, 1
  %tobool.not = icmp eq i32 %sub3, 0
  br i1 %tobool.not, label %if.end19.cleanup_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then5 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !19, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !68, !69, !71, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__param_block2mtd, !1, !"__param_block2mtd", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/block2mtd.c", i32 471, i32 1}
!2 = !{ptr @__UNIQUE_ID_block2mtd285, !3, !"__UNIQUE_ID_block2mtd285", i1 false, i1 false}
!3 = !{!"../drivers/mtd/devices/block2mtd.c", i32 472, i32 1}
!4 = !{ptr @__initcall__kmod_block2mtd__286_506_block2mtd_init7, !5, !"__initcall__kmod_block2mtd__286_506_block2mtd_init7", i1 false, i1 false}
!5 = !{!"../drivers/mtd/devices/block2mtd.c", i32 506, i32 1}
!6 = !{ptr @__exitcall_block2mtd_exit, !7, !"__exitcall_block2mtd_exit", i1 false, i1 false}
!7 = !{!"../drivers/mtd/devices/block2mtd.c", i32 507, i32 1}
!8 = !{ptr @__UNIQUE_ID_file287, !9, !"__UNIQUE_ID_file287", i1 false, i1 false}
!9 = !{!"../drivers/mtd/devices/block2mtd.c", i32 509, i32 1}
!10 = !{ptr @__UNIQUE_ID_license288, !9, !"__UNIQUE_ID_license288", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author289, !12, !"__UNIQUE_ID_author289", i1 false, i1 false}
!12 = !{!"../drivers/mtd/devices/block2mtd.c", i32 510, i32 1}
!13 = !{ptr @__UNIQUE_ID_description290, !14, !"__UNIQUE_ID_description290", i1 false, i1 false}
!14 = !{!"../drivers/mtd/devices/block2mtd.c", i32 511, i32 1}
!15 = !{ptr @__param_str_block2mtd, !1, !"__param_str_block2mtd", i1 false, i1 false}
!16 = !{ptr @__param_ops_block2mtd, !1, !"__param_ops_block2mtd", i1 false, i1 false}
!17 = distinct !{null, !18, !"block2mtd_init_called", i1 false, i1 false}
!18 = !{!"../drivers/mtd/devices/block2mtd.c", i32 380, i32 12}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/devices/block2mtd.c", i32 398, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @block2mtd_setup2._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @block2mtd_setup2._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/devices/block2mtd.c", i32 406, i32 27}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/devices/block2mtd.c", i32 409, i32 3}
!29 = !{ptr @block2mtd_setup2._entry.4, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @block2mtd_setup2._entry_ptr.6, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/devices/block2mtd.c", i32 414, i32 3}
!33 = !{ptr @block2mtd_setup2._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @block2mtd_setup2._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/devices/block2mtd.c", i32 420, i32 3}
!37 = !{ptr @block2mtd_setup2._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @block2mtd_setup2._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/devices/block2mtd.c", i32 428, i32 4}
!41 = !{ptr @block2mtd_setup2._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @block2mtd_setup2._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/devices/block2mtd.c", i32 435, i32 3}
!45 = !{ptr @block2mtd_setup2._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @block2mtd_setup2._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/devices/block2mtd.c", i32 265, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @add_device._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @add_device._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/devices/block2mtd.c", i32 271, i32 3}
!54 = !{ptr @add_device._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @add_device._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/devices/block2mtd.c", i32 276, i32 3}
!58 = !{ptr @add_device._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @add_device._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @add_device.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/mtd/devices/block2mtd.c", i32 280, i32 2}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/devices/block2mtd.c", i32 285, i32 32}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/devices/block2mtd.c", i32 312, i32 2}
!67 = !{ptr @add_device._entry.29, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @add_device._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/devices/block2mtd.c", i32 98, i32 3}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @block2mtd_erase._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @block2mtd_erase._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/mm.h", i32 717, i32 2}
!82 = !{ptr @blkmtd_device_list, !83, !"blkmtd_device_list", i1 false, i1 false}
!83 = !{!"../drivers/mtd/devices/block2mtd.c", i32 47, i32 8}
!84 = !{ptr @block2mtd_paramline, !85, !"block2mtd_paramline", i1 false, i1 false}
!85 = !{!"../drivers/mtd/devices/block2mtd.c", i32 382, i32 13}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/devices/block2mtd.c", i32 498, i32 3}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @block2mtd_exit._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @block2mtd_exit._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"auto-init"}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.peeled.count", i32 1}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{!"branch_weights", i32 1, i32 2000}
!105 = !{i64 2153432471, i64 2153432954, i64 2153432508, i64 2153432564, i64 2153432598, i64 2153432622, i64 2153432663, i64 2153432684, i64 2153432712, i64 2153432746}
!106 = !{i64 2148438186}
!107 = !{i64 2148352895, i64 2148352927, i64 2148352956, i64 2148352990, i64 2148353021, i64 2148353044}
!108 = !{i64 2148438415}
!109 = !{i64 2148963087, i64 2148963092, i64 2148963105, i64 2148963149, i64 2148963183, i64 2148963204}
!110 = !{i64 2150171665, i64 2150172156, i64 2150171702, i64 2150171758, i64 2150171792, i64 2150171816, i64 2150171857, i64 2150171878, i64 2150171906, i64 2150171940}
!111 = !{i64 2148358568, i64 2148358600, i64 2148358629, i64 2148358663, i64 2148358694, i64 2148358717}
!112 = !{i64 2148447673}
