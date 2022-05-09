; ModuleID = '/llk/IR_all_yes/drivers/net/wwan/mhi_wwan_ctrl.c_pt.bc'
source_filename = "../drivers/net/wwan/mhi_wwan_ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mhi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mhi_device_id = type { [32 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wwan_port_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mhi_device = type { ptr, ptr, ptr, ptr, ptr, %struct.device, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.mhi_wwan_dev = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.work_struct, i32 }
%struct.mhi_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], ptr, ptr, ptr, %struct.mutex, %struct.rwlock_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.mhi_link_info, %struct.work_struct, ptr, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mhi_link_info = type { i32, i32 }
%struct.mhi_result = type { ptr, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__initcall__kmod_mhi_wwan_ctrl__339_280_mhi_wwan_ctrl_driver_init6 = internal global ptr @mhi_wwan_ctrl_driver_init, section ".initcall6.init", align 4
@mhi_wwan_ctrl_driver = internal global { %struct.mhi_driver, [60 x i8] } { %struct.mhi_driver { ptr @mhi_wwan_ctrl_match_table, ptr @mhi_wwan_ctrl_probe, ptr @mhi_wwan_ctrl_remove, ptr @mhi_ul_xfer_cb, ptr @mhi_dl_xfer_cb, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [60 x i8] zeroinitializer }, align 32
@__exitcall_mhi_wwan_ctrl_driver_exit = internal global ptr @mhi_wwan_ctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file340 = internal constant [50 x i8] c"mhi_wwan_ctrl.file=drivers/net/wwan/mhi_wwan_ctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [29 x i8] c"mhi_wwan_ctrl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [47 x i8] c"mhi_wwan_ctrl.description=MHI WWAN CTRL Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author343 = internal constant [60 x i8] c"mhi_wwan_ctrl.author=Loic Poulain <loic.poulain@linaro.org>\00", section ".modinfo", align 1
@mhi_wwan_ctrl_match_table = internal constant { [6 x %struct.mhi_device_id], [40 x i8] } { [6 x %struct.mhi_device_id] [%struct.mhi_device_id { [32 x i8] c"DUN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.mhi_device_id { [32 x i8] c"MBIM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.mhi_device_id { [32 x i8] c"QMI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.mhi_device_id { [32 x i8] c"DIAG\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.mhi_device_id { [32 x i8] c"FIREHOSE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.mhi_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mhi_wwan_ctrl\00", [18 x i8] zeroinitializer }, align 32
@mhi_wwan_ctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&mhiwwan->rx_refill)\00", [57 x i8] zeroinitializer }, align 32
@mhi_wwan_ctrl_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mhiwwan->tx_lock\00", [46 x i8] zeroinitializer }, align 32
@mhi_wwan_ctrl_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mhiwwan->rx_lock\00", [46 x i8] zeroinitializer }, align 32
@wwan_pops = internal constant { %struct.wwan_port_ops, [44 x i8] } { %struct.wwan_port_ops { ptr @mhi_wwan_ctrl_start, ptr @mhi_wwan_ctrl_stop, ptr @mhi_wwan_ctrl_tx, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mhi_wwan_ctrl_refill_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 100, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to queue buffer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mhi_wwan_ctrl_refill_work\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/wwan/mhi_wwan_ctrl.c\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mhi_wwan_ctrl_refill_work._entry_ptr = internal global ptr @mhi_wwan_ctrl_refill_work._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mhi_ul_xfer_cb.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.8, ptr @.str.12, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mhi_ul_xfer_cb\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: status: %d xfer_len: %zu\0A\00", [34 x i8] zeroinitializer }, align 32
@mhi_dl_xfer_cb.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.8, ptr @.str.14, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mhi_dl_xfer_cb\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: status: %d receive_len: %zu\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967221]
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"mhi_wwan_ctrl_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 269, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"mhi_wwan_ctrl_match_table\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 259, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 276, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 227, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 228, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 229, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"wwan_pops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 163, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 100, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 176, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [36 x i8] c"../drivers/net/wwan/mhi_wwan_ctrl.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 196, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_mhi_wwan_ctrl_driver_exit, ptr @__initcall__kmod_mhi_wwan_ctrl__339_280_mhi_wwan_ctrl_driver_init6, ptr @mhi_wwan_ctrl_driver_exit, ptr @mhi_wwan_ctrl_refill_work._entry, ptr @mhi_wwan_ctrl_refill_work._entry_ptr, ptr @mhi_wwan_ctrl_driver, ptr @mhi_wwan_ctrl_match_table, ptr @.str, ptr @mhi_wwan_ctrl_probe.__key, ptr @.str.1, ptr @mhi_wwan_ctrl_probe.__key.2, ptr @.str.3, ptr @mhi_wwan_ctrl_probe.__key.4, ptr @.str.5, ptr @wwan_pops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_wwan_ctrl_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_wwan_ctrl_match_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_wwan_ctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_wwan_ctrl_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_wwan_ctrl_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wwan_pops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhi_wwan_ctrl_refill_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_wwan_ctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__mhi_driver_register(ptr noundef nonnull @mhi_wwan_ctrl_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mhi_wwan_ctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mhi_driver_unregister(ptr noundef nonnull @mhi_wwan_ctrl_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mhi_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_wwan_ctrl_probe(ptr noundef %mhi_dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mhi_cntrl = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 2
  %0 = ptrtoint ptr %mhi_cntrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mhi_cntrl, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 152) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mhi_dev, ptr %call7.i.i, align 8
  %mtu = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32768, ptr %mtu, align 4
  %rx_refill = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %rx_refill, i32 noundef 0) #5
  %5 = ptrtoint ptr %rx_refill to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %rx_refill, align 8
  %lockdep_map = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call7.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @mhi_wwan_ctrl_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry5 = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call7.i.i, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry5, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call7.i.i, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mhi_wwan_ctrl_refill_work, ptr %func, align 4
  %tx_lock = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @mhi_wwan_ctrl_probe.__key.2, i16 noundef signext 3) #5
  %rx_lock = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mhi_wwan_ctrl_probe.__key.4, i16 noundef signext 3) #5
  %dl_chan = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 4
  %9 = ptrtoint ptr %dl_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dl_chan, align 8
  %tobool15.not = icmp eq ptr %10, null
  br i1 %tobool15.not, label %if.end.if.end17_crit_edge, label %if.then16

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call7.i.i, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge
  %ul_chan = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 3
  %11 = ptrtoint ptr %ul_chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ul_chan, align 4
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %flags20 = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call7.i.i, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags20) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %driver_data.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %mhi_dev22 = getelementptr inbounds %struct.mhi_controller, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %mhi_dev22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mhi_dev22, align 4
  %dev23 = getelementptr inbounds %struct.mhi_device, ptr %15, i32 0, i32 5
  %driver_data = getelementptr inbounds %struct.mhi_device_id, ptr %id, i32 0, i32 1
  %16 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_data, align 4
  %call24 = tail call ptr @wwan_create_port(ptr noundef %dev23, i32 noundef %17, ptr noundef nonnull @wwan_pops, ptr noundef nonnull %call7.i.i) #5
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %18 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %wwan_port = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %wwan_port to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call24, ptr %wwan_port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then26 ], [ 0, %if.end28 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_wwan_ctrl_remove(ptr nocapture noundef readonly %mhi_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wwan_port = getelementptr inbounds %struct.mhi_wwan_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wwan_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wwan_port, align 4
  tail call void @wwan_remove_port(ptr noundef %3) #5
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_ul_xfer_cb(ptr noundef %mhi_dev, ptr nocapture noundef readonly %mhi_result) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wwan_port = getelementptr inbounds %struct.mhi_wwan_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wwan_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wwan_port, align 4
  %4 = ptrtoint ptr %mhi_result to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mhi_result, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhi_ul_xfer_cb.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhi_ul_xfer_cb, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !52

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5
  %transaction_status = getelementptr inbounds %struct.mhi_result, ptr %mhi_result, i32 0, i32 3
  %6 = ptrtoint ptr %transaction_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transaction_status, align 4
  %bytes_xferd = getelementptr inbounds %struct.mhi_result, ptr %mhi_result, i32 0, i32 1
  %8 = ptrtoint ptr %bytes_xferd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes_xferd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhi_ul_xfer_cb.__UNIQUE_ID_ddebug337, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %7, i32 noundef %9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @consume_skb(ptr noundef %5) #5
  %tx_lock = getelementptr inbounds %struct.mhi_wwan_dev, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call6 = tail call zeroext i1 @mhi_queue_is_full(ptr noundef %11, i32 noundef 1) #5
  br i1 %call6, label %do.end.if.end8_crit_edge, label %if.then7

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wwan_port_txon(ptr noundef %3) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_dl_xfer_cb(ptr noundef %mhi_dev, ptr nocapture noundef readonly %mhi_result) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wwan_port = getelementptr inbounds %struct.mhi_wwan_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wwan_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wwan_port, align 4
  %4 = ptrtoint ptr %mhi_result to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mhi_result, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhi_dl_xfer_cb.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhi_dl_xfer_cb, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !52

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mhi_device, ptr %mhi_dev, i32 0, i32 5
  %transaction_status = getelementptr inbounds %struct.mhi_result, ptr %mhi_result, i32 0, i32 3
  %6 = ptrtoint ptr %transaction_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transaction_status, align 4
  %bytes_xferd = getelementptr inbounds %struct.mhi_result, ptr %mhi_result, i32 0, i32 1
  %8 = ptrtoint ptr %bytes_xferd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes_xferd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhi_dl_xfer_cb.__UNIQUE_ID_ddebug338, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef %7, i32 noundef %9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %transaction_status5 = getelementptr inbounds %struct.mhi_result, ptr %mhi_result, i32 0, i32 3
  %10 = ptrtoint ptr %transaction_status5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transaction_status5, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.then8 [
    i32 0, label %do.end.if.end9_crit_edge
    i32 -75, label %do.end.if.end9_crit_edge23
  ]

do.end.if.end9_crit_edge23:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #5
  br label %cleanup

if.end9:                                          ; preds = %do.end.if.end9_crit_edge, %do.end.if.end9_crit_edge23
  %bytes_xferd10 = getelementptr inbounds %struct.mhi_result, ptr %mhi_result, i32 0, i32 1
  %13 = ptrtoint ptr %bytes_xferd10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytes_xferd10, align 4
  %call11 = tail call ptr @skb_put(ptr noundef %5, i32 noundef %14) #5
  tail call void @wwan_port_rx(ptr noundef %3, ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_wwan_ctrl_refill_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %rx_lock.i = getelementptr i8, ptr %work, i32 -44
  %rx_budget.i = getelementptr i8, ptr %work, i32 44
  %flags.i = getelementptr i8, ptr %work, i32 -96
  %mtu = getelementptr i8, ptr %work, i32 -92
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #5
  %2 = ptrtoint ptr %rx_budget.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_budget.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %mhi_wwan_rx_budget_dec.exit.thread, label %mhi_wwan_rx_budget_dec.exit

mhi_wwan_rx_budget_dec.exit.thread:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #5
  br label %while.end

mhi_wwan_rx_budget_dec.exit:                      ; preds = %while.cond
  %dec.i = add i32 %3, -1
  %4 = ptrtoint ptr %rx_budget.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec.i, ptr %rx_budget.i, align 4
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i.not = icmp eq i32 %7, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #5
  br i1 %tobool2.not.i.not, label %mhi_wwan_rx_budget_dec.exit.while.end_crit_edge, label %while.body

mhi_wwan_rx_budget_dec.exit.while.end_crit_edge:  ; preds = %mhi_wwan_rx_budget_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %mhi_wwan_rx_budget_dec.exit
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %9, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #5
  %10 = ptrtoint ptr %rx_budget.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_budget.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %rx_budget.i, align 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i22 = icmp eq i32 %14, 0
  br i1 %tobool.not.i22, label %if.then.mhi_wwan_rx_budget_inc.exit_crit_edge, label %if.then.i23

if.then.mhi_wwan_rx_budget_inc.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %mhi_wwan_rx_budget_inc.exit

if.then.i23:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work) #5
  br label %mhi_wwan_rx_budget_inc.exit

mhi_wwan_rx_budget_inc.exit:                      ; preds = %if.then.i23, %if.then.mhi_wwan_rx_budget_inc.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #5
  br label %while.end

if.end:                                           ; preds = %while.body
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @__mhi_skb_destructor, ptr %destructor, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i, align 4
  %destructor_arg = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %destructor_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %destructor_arg, align 4
  %20 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mtu, align 4
  %call5 = tail call i32 @mhi_queue_skb(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %call.i, i32 noundef %21, i32 noundef 2) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.while.cond_crit_edge, label %do.end

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mhi_device, ptr %1, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #5
  br label %while.end

while.end:                                        ; preds = %do.end, %mhi_wwan_rx_budget_inc.exit, %mhi_wwan_rx_budget_dec.exit.while.end_crit_edge, %mhi_wwan_rx_budget_dec.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wwan_create_port(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__mhi_skb_destructor(ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %destructor_arg = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %destructor_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destructor_arg, align 4
  %rx_lock.i = getelementptr inbounds %struct.mhi_wwan_dev, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock.i) #5
  %rx_budget.i = getelementptr inbounds %struct.mhi_wwan_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %rx_budget.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_budget.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %rx_budget.i, align 4
  %flags.i = getelementptr inbounds %struct.mhi_wwan_dev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.mhi_wwan_rx_budget_inc.exit_crit_edge, label %if.then.i

entry.mhi_wwan_rx_budget_inc.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mhi_wwan_rx_budget_inc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rx_refill.i = getelementptr inbounds %struct.mhi_wwan_dev, ptr %3, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %rx_refill.i) #5
  br label %mhi_wwan_rx_budget_inc.exit

mhi_wwan_rx_budget_inc.exit:                      ; preds = %if.then.i, %entry.mhi_wwan_rx_budget_inc.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_queue_skb(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_wwan_ctrl_start(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %port) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call1 = tail call i32 @mhi_prepare_for_transfer(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call3 = tail call i32 @mhi_get_free_desc_count(ptr noundef %3, i32 noundef 2) #5
  %rx_budget = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %rx_budget to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %rx_budget, align 4
  %flags = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #5
  %rx_refill = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call, i32 0, i32 6
  tail call void @mhi_wwan_ctrl_refill_work(ptr noundef %rx_refill)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhi_wwan_ctrl_stop(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %port) #5
  %rx_lock = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %rx_lock) #5
  %flags = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %rx_lock) #5
  %rx_refill = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call, i32 0, i32 6
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %rx_refill) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  tail call void @mhi_unprepare_from_transfer(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhi_wwan_ctrl_tx(ptr noundef %port, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wwan_port_get_drvdata(ptr noundef %port) #5
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %mtu = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tx_lock = getelementptr inbounds %struct.mhi_wwan_dev, ptr %call, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #5
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call5 = tail call i32 @mhi_queue_skb(ptr noundef %8, i32 noundef 1, ptr noundef %skb, i32 noundef %10, i32 noundef 2) #5
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %call7 = tail call zeroext i1 @mhi_queue_is_full(ptr noundef %12, i32 noundef 1) #5
  br i1 %call7, label %if.then8, label %if.end3.if.end9_crit_edge

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wwan_port_txoff(ptr noundef %port) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end3.if.end9_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end9 ], [ -90, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wwan_port_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_prepare_for_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mhi_get_free_desc_count(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mhi_unprepare_from_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mhi_queue_is_full(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_port_txoff(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_remove_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_port_txon(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wwan_port_rx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_mhi_wwan_ctrl__339_280_mhi_wwan_ctrl_driver_init6, !1, !"__initcall__kmod_mhi_wwan_ctrl__339_280_mhi_wwan_ctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 280, i32 1}
!2 = !{ptr @__exitcall_mhi_wwan_ctrl_driver_exit, !1, !"__exitcall_mhi_wwan_ctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file340, !4, !"__UNIQUE_ID_file340", i1 false, i1 false}
!4 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 282, i32 1}
!5 = !{ptr @__UNIQUE_ID_license341, !4, !"__UNIQUE_ID_license341", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description342, !7, !"__UNIQUE_ID_description342", i1 false, i1 false}
!7 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 283, i32 1}
!8 = !{ptr @__UNIQUE_ID_author343, !9, !"__UNIQUE_ID_author343", i1 false, i1 false}
!9 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 284, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 276, i32 11}
!12 = !{ptr @mhi_wwan_ctrl_driver, !13, !"mhi_wwan_ctrl_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 269, i32 26}
!14 = !{ptr @mhi_wwan_ctrl_match_table, !15, !"mhi_wwan_ctrl_match_table", i1 false, i1 false}
!15 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 259, i32 35}
!16 = !{ptr @mhi_wwan_ctrl_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 227, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mhi_wwan_ctrl_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 228, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mhi_wwan_ctrl_probe.__key.4, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 229, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 100, i32 4}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mhi_wwan_ctrl_refill_work._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @mhi_wwan_ctrl_refill_work._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @wwan_pops, !34, !"wwan_pops", i1 false, i1 false}
!34 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 163, i32 35}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 176, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mhi_ul_xfer_cb.__UNIQUE_ID_ddebug337, !36, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wwan/mhi_wwan_ctrl.c", i32 196, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mhi_dl_xfer_cb.__UNIQUE_ID_ddebug338, !40, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148697368, i64 2148697373, i64 2148697386, i64 2148697430, i64 2148697464, i64 2148697485}
