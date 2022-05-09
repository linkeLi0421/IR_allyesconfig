; ModuleID = '/llk/IR_all_yes/drivers/media/cec/platform/meson/ao-cec.c_pt.bc'
source_filename = "../drivers/media/cec/platform/meson/ao-cec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.meson_ao_cec_device = type { ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.cec_msg }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.73 }
%union.anon.73 = type { [16 x i32] }

@__initcall__kmod_ao_cec__258_726_meson_ao_cec_driver_init6 = internal global ptr @meson_ao_cec_driver_init, section ".initcall6.init", align 4
@meson_ao_cec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_ao_cec_probe, ptr @meson_ao_cec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_ao_cec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_ao_cec_driver_exit = internal global ptr @meson_ao_cec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description259 = internal constant [50 x i8] c"ao_cec.description=Meson AO CEC Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [55 x i8] c"ao_cec.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [52 x i8] c"ao_cec.file=drivers/media/cec/platform/meson/ao-cec\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [19 x i8] c"ao_cec.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"meson-ao-cec\00", [19 x i8] zeroinitializer }, align 32
@meson_ao_cec_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gx-ao-cec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@meson_ao_cec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ao_cec->cec_reg_lock\00", [42 x i8] zeroinitializer }, align 32
@meson_ao_cec_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @meson_ao_cec_adap_enable, ptr null, ptr null, ptr @meson_ao_cec_set_log_addr, ptr @meson_ao_cec_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"meson_ao_cec\00", [19 x i8] zeroinitializer }, align 32
@meson_ao_cec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 640, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq request failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson_ao_cec_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/cec/platform/meson/ao-cec.c\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_ao_cec_probe._entry_ptr = internal global ptr @meson_ao_cec_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@meson_ao_cec_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 646, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"core clock request failed\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_ao_cec_probe._entry_ptr.11 = internal global ptr @meson_ao_cec_probe._entry.9, section ".printk_index", align 4
@meson_ao_cec_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 653, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"core clock enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_ao_cec_probe._entry_ptr.14 = internal global ptr @meson_ao_cec_probe._entry.12, section ".printk_index", align 4
@meson_ao_cec_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 659, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"core clock set rate failed\0A\00", [36 x i8] zeroinitializer }, align 32
@meson_ao_cec_probe._entry_ptr.17 = internal global ptr @meson_ao_cec_probe._entry.15, section ".printk_index", align 4
@meson_ao_cec_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 694, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CEC controller registration failed\0A\00", [60 x i8] zeroinitializer }, align 32
@meson_ao_cec_probe._entry_ptr.20 = internal global ptr @meson_ao_cec_probe._entry.18, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_ao_cec_transmit.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ao_cec\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson_ao_cec_transmit\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: busy TX: aborting\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"meson_ao_cec_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 717, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 721, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"meson_ao_cec_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 711, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 616, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"meson_ao_cec_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 595, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 619, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 640, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 644, i32 42 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 646, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 653, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 659, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 694, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [45 x i8] c"../drivers/media/cec/platform/meson/ao-cec.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 527, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__exitcall_meson_ao_cec_driver_exit, ptr @__initcall__kmod_ao_cec__258_726_meson_ao_cec_driver_init6, ptr @meson_ao_cec_driver_exit, ptr @meson_ao_cec_probe._entry, ptr @meson_ao_cec_probe._entry.12, ptr @meson_ao_cec_probe._entry.15, ptr @meson_ao_cec_probe._entry.18, ptr @meson_ao_cec_probe._entry.9, ptr @meson_ao_cec_probe._entry_ptr, ptr @meson_ao_cec_probe._entry_ptr.11, ptr @meson_ao_cec_probe._entry_ptr.14, ptr @meson_ao_cec_probe._entry_ptr.17, ptr @meson_ao_cec_probe._entry_ptr.20, ptr @meson_ao_cec_driver, ptr @.str, ptr @meson_ao_cec_of_match, ptr @meson_ao_cec_probe.__key, ptr @.str.1, ptr @meson_ao_cec_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ao_cec_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_ao_cec_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_ao_cec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_ao_cec_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @cec_notifier_parse_hdmi_phandle(ptr noundef %dev) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 120, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %cec_reg_lock = getelementptr inbounds %struct.meson_ao_cec_device, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %cec_reg_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @meson_ao_cec_probe.__key, i16 noundef signext 3) #7
  %call8 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @meson_ao_cec_ops, ptr noundef nonnull %call.i, ptr noundef nonnull @.str.2, i32 noundef 286, i8 noundef zeroext 1) #7
  %adap = getelementptr inbounds %struct.meson_ao_cec_device, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %adap, align 4
  %cmp.i135 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then11, label %if.end14

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %do.body
  %3 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call8, align 8
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.meson_ao_cec_device, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call16, ptr %base, align 4
  %cmp.i136 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call16 to i32
  br label %out_probe_adapter

if.end22:                                         ; preds = %if.end14
  %call23 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %call25 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call23, ptr noundef nonnull @meson_ao_cec_irq, ptr noundef nonnull @meson_ao_cec_irq_thread, i32 noundef 0, ptr noundef null, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %out_probe_adapter

if.end32:                                         ; preds = %if.end22
  %call34 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  %core = getelementptr inbounds %struct.meson_ao_cec_device, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call34, ptr %core, align 8
  %cmp.i137 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 8
  %9 = ptrtoint ptr %8 to i32
  br label %out_probe_adapter

if.end44:                                         ; preds = %if.end32
  %call.i138 = tail call i32 @clk_prepare(ptr noundef %call34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool.not.i = icmp eq i32 %call.i138, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end44.do.end51_crit_edge

if.end44.do.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

if.end.i:                                         ; preds = %if.end44
  %call1.i = tail call i32 @clk_enable(ptr noundef %call34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end53, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call34) #7
  br label %do.end51

do.end51:                                         ; preds = %if.then3.i, %if.end44.do.end51_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i138, %if.end44.do.end51_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %out_probe_adapter

if.end53:                                         ; preds = %if.end.i
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 8
  %call55 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef 32768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %out_probe_clk

if.end62:                                         ; preds = %if.end53
  %call.i139 = tail call i32 @__device_reset(ptr noundef %dev, i1 noundef zeroext true) #7
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 4
  %call67 = tail call ptr @cec_notifier_cec_adap_register(ptr noundef %call, ptr noundef null, ptr noundef %15) #7
  %notify = getelementptr inbounds %struct.meson_ao_cec_device, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call67, ptr %notify, align 8
  %tobool69.not = icmp eq ptr %call67, null
  br i1 %tobool69.not, label %if.end62.out_probe_clk_crit_edge, label %if.end71

if.end62.out_probe_clk_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_probe_clk

if.end71:                                         ; preds = %if.end62
  %17 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap, align 4
  %call74 = tail call i32 @cec_register_adapter(ptr noundef %18, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp = icmp slt i32 %call74, 0
  br i1 %cmp, label %out_probe_notify, label %if.end76

if.end76:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 16777216) #7, !srcloc !63
  br label %cleanup

out_probe_notify:                                 ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %notify, align 8
  %23 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap, align 4
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %22, ptr noundef %24) #7
  br label %out_probe_clk

out_probe_clk:                                    ; preds = %out_probe_notify, %if.end62.out_probe_clk_crit_edge, %do.end60
  %ret.0 = phi i32 [ %call55, %do.end60 ], [ %call74, %out_probe_notify ], [ -12, %if.end62.out_probe_clk_crit_edge ]
  %25 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core, align 8
  tail call void @clk_disable(ptr noundef %26) #7
  tail call void @clk_unprepare(ptr noundef %26) #7
  br label %out_probe_adapter

out_probe_adapter:                                ; preds = %out_probe_clk, %do.end51, %do.end40, %do.end30, %if.then19
  %ret.1 = phi i32 [ %5, %if.then19 ], [ %call25, %do.end30 ], [ %9, %do.end40 ], [ %retval.0.i.ph, %do.end51 ], [ %ret.0, %out_probe_clk ]
  %27 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adap, align 4
  tail call void @cec_delete_adapter(ptr noundef %28) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %cleanup

cleanup:                                          ; preds = %out_probe_adapter, %if.end76, %if.then11, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %2, %if.then11 ], [ %ret.1, %out_probe_adapter ], [ 0, %if.end76 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 8
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %notify = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notify, align 8
  %adap = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 4
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %5, ptr noundef %7) #7
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 4
  tail call void @cec_unregister_adapter(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_parse_hdmi_phandle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.meson_ao_cec_device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %. = select i1 %tobool.not, i32 0, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %ret.i3 = alloca i32, align 4
  %reg.i = alloca i8, align 1
  %byte.i = alloca i8, align 1
  %stat.i = alloca i8, align 1
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.meson_ao_cec_device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !64
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat.i) #7
  %4 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %stat.i, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #7
  %5 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ret.i, align 4
  call fastcc void @meson_ao_cec_read(ptr noundef %data, i32 noundef 147, ptr noundef nonnull %stat.i, ptr noundef nonnull %ret.i) #7
  %6 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.meson_ao_cec_irq_tx.exit_crit_edge

if.then.meson_ao_cec_irq_tx.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_ao_cec_irq_tx.exit

if.end.i:                                         ; preds = %if.then
  %8 = ptrtoint ptr %stat.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stat.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %10 = icmp ult i8 %9, 3
  %switch.cast = zext i8 %9 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 66056, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %tx_status.0.i = select i1 %10, i8 %switch.masked, i8 4
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #7, !srcloc !63
  %13 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool41.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool41.not.i.i, label %do.body45.i.i, label %if.end.i.meson_ao_cec_irq_tx.exit_crit_edge

if.end.i.meson_ao_cec_irq_tx.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_ao_cec_irq_tx.exit

do.body45.i.i:                                    ; preds = %if.end.i
  %cec_reg_lock.i.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %data, i32 0, i32 3
  %call48.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i.i) #7
  %call.i.i.i = call i64 @ktime_get() #7
  %add.i.i.i.i = add i64 %call.i.i.i, 5000000
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %do.body45.i.i
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 4
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !64
  %18 = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %if.end6.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %call3.i.i.i = call i64 @ktime_get() #7
  %cmp3.i.i.i.i = icmp sgt i64 %call3.i.i.i, %add.i.i.i.i
  br i1 %cmp3.i.i.i.i, label %meson_ao_cec_write.exit.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i

meson_ao_cec_write.exit.i:                        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i.i, i32 noundef %call48.i.i) #7
  %19 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -110, ptr %ret.i, align 4
  br label %meson_ao_cec_irq_tx.exit

if.end6.i:                                        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 285212928) #7, !srcloc !63
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i.i, i32 noundef %call48.i.i) #7
  %22 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ret.i, align 4
  br label %meson_ao_cec_irq_tx.exit

meson_ao_cec_irq_tx.exit:                         ; preds = %if.end6.i, %meson_ao_cec_write.exit.i, %if.end.i.meson_ao_cec_irq_tx.exit_crit_edge, %if.then.meson_ao_cec_irq_tx.exit_crit_edge
  %.sink20.i = phi i8 [ %tx_status.0.i, %if.end6.i ], [ 16, %if.end.i.meson_ao_cec_irq_tx.exit_crit_edge ], [ 16, %meson_ao_cec_write.exit.i ], [ 16, %if.then.meson_ao_cec_irq_tx.exit_crit_edge ]
  %adap8.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %data, i32 0, i32 5
  %23 = ptrtoint ptr %adap8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap8.i, align 4
  %call.i15.i = call i64 @ktime_get() #7
  call void @cec_transmit_attempt_done_ts(ptr noundef %24, i8 noundef zeroext %.sink20.i, i64 noundef %call.i15.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat.i) #7
  br label %if.end

if.end:                                           ; preds = %meson_ao_cec_irq_tx.exit, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i3) #7
  %25 = ptrtoint ptr %ret.i3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ret.i3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #7
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %reg.i, align 1, !annotation !65
  call fastcc void @meson_ao_cec_read(ptr noundef %data, i32 noundef 145, ptr noundef nonnull %reg.i, ptr noundef nonnull %ret.i3) #7
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp.not.i = icmp eq i8 %28, 2
  br i1 %cmp.not.i, label %if.end.i4, label %if.end.rx_out.i_crit_edge

if.end.rx_out.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx_out.i

if.end.i4:                                        ; preds = %if.end
  call fastcc void @meson_ao_cec_read(ptr noundef %data, i32 noundef 146, ptr noundef nonnull %reg.i, ptr noundef nonnull %ret.i3) #7
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reg.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp3.not.i = icmp eq i8 %30, 1
  br i1 %cmp3.not.i, label %for.body.preheader.i, label %if.end.i4.rx_out.i_crit_edge

if.end.i4.rx_out.i_crit_edge:                     ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx_out.i

for.body.preheader.i:                             ; preds = %if.end.i4
  call fastcc void @meson_ao_cec_read(ptr noundef %data, i32 noundef 144, ptr noundef nonnull %reg.i, ptr noundef nonnull %ret.i3) #7
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %reg.i, align 1
  %conv7.i = zext i8 %32 to i32
  %add.i = add nuw nsw i32 %conv7.i, 1
  %len.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %data, i32 0, i32 6, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %32)
  %cmp10.i = icmp ugt i8 %32, 15
  %spec.select.i = select i1 %cmp10.i, i32 16, i32 %add.i
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select.i, ptr %len.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0107.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #7
  %34 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %byte.i, align 1, !annotation !65
  %add20.i = add i32 %i.0107.i, 128
  call fastcc void @meson_ao_cec_read(ptr noundef %data, i32 noundef %add20.i, ptr noundef nonnull %byte.i, ptr noundef nonnull %ret.i3) #7
  %35 = ptrtoint ptr %byte.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %byte.i, align 1
  %arrayidx.i = getelementptr %struct.meson_ao_cec_device, ptr %data, i32 0, i32 6, i32 6, i32 %i.0107.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #7
  %inc.i = add nuw i32 %i.0107.i, 1
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 8
  %cmp18.i = icmp ult i32 %inc.i, %39
  br i1 %cmp18.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %40 = ptrtoint ptr %ret.i3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ret.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i5 = icmp eq i32 %41, 0
  br i1 %tobool.not.i5, label %if.end23.i, label %for.end.i.rx_out.i_crit_edge

for.end.i.rx_out.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx_out.i

if.end23.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_msg.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %data, i32 0, i32 6
  %adap.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %data, i32 0, i32 5
  %42 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adap.i, align 4
  %call.i.i = call i64 @ktime_get() #7
  call void @cec_received_msg_ts(ptr noundef %43, ptr noundef %rx_msg.i, i64 noundef %call.i.i) #7
  br label %rx_out.i

rx_out.i:                                         ; preds = %if.end23.i, %for.end.i.rx_out.i_crit_edge, %if.end.i4.rx_out.i_crit_edge, %if.end.rx_out.i_crit_edge
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr.i7 = getelementptr i8, ptr %45, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 67108864) #7, !srcloc !63
  %46 = ptrtoint ptr %ret.i3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ret.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool41.not.i.i8 = icmp eq i32 %47, 0
  br i1 %tobool41.not.i.i8, label %do.body45.i.i13, label %rx_out.i.meson_ao_cec_write.exit60.thread.i_crit_edge

rx_out.i.meson_ao_cec_write.exit60.thread.i_crit_edge: ; preds = %rx_out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_ao_cec_write.exit60.thread.i

do.body45.i.i13:                                  ; preds = %rx_out.i
  %cec_reg_lock.i.i9 = getelementptr inbounds %struct.meson_ao_cec_device, ptr %data, i32 0, i32 3
  %call48.i.i10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i.i9) #7
  %call.i.i.i11 = call i64 @ktime_get() #7
  %add.i.i.i.i12 = add i64 %call.i.i.i11, 5000000
  br label %while.cond.i.i.i16

while.cond.i.i.i16:                               ; preds = %while.body.i.i.i19.while.cond.i.i.i16_crit_edge, %do.body45.i.i13
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i14 = getelementptr i8, ptr %49, i32 4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i14) #7, !srcloc !64
  %51 = and i32 %50, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i.i15 = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i.i15, label %do.body45.i49.i, label %while.body.i.i.i19

while.body.i.i.i19:                               ; preds = %while.cond.i.i.i16
  %call3.i.i.i17 = call i64 @ktime_get() #7
  %cmp3.i.i.i.i18 = icmp sgt i64 %call3.i.i.i17, %add.i.i.i.i12
  br i1 %cmp3.i.i.i.i18, label %meson_ao_cec_write.exit.i20, label %while.body.i.i.i19.while.cond.i.i.i16_crit_edge

while.body.i.i.i19.while.cond.i.i.i16_crit_edge:  ; preds = %while.body.i.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i.i16

meson_ao_cec_write.exit.i20:                      ; preds = %while.body.i.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i.i9, i32 noundef %call48.i.i10) #7
  %52 = ptrtoint ptr %ret.i3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -110, ptr %ret.i3, align 4
  br label %meson_ao_cec_write.exit60.thread.i

do.body45.i49.i:                                  ; preds = %while.cond.i.i.i16
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %54, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 335610112) #7, !srcloc !63
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i.i9, i32 noundef %call48.i.i10) #7
  %55 = ptrtoint ptr %ret.i3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %ret.i3, align 4
  %call48.i45.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i.i9) #7
  %call.i.i46.i = call i64 @ktime_get() #7
  %add.i.i.i47.i = add i64 %call.i.i46.i, 5000000
  br label %while.cond.i.i52.i

while.cond.i.i52.i:                               ; preds = %while.body.i.i55.i.while.cond.i.i52.i_crit_edge, %do.body45.i49.i
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr.i.i50.i = getelementptr i8, ptr %57, i32 4
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50.i) #7, !srcloc !64
  %59 = and i32 %58, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i51.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i51.i, label %do.body45.i67.i, label %while.body.i.i55.i

while.body.i.i55.i:                               ; preds = %while.cond.i.i52.i
  %call3.i.i53.i = call i64 @ktime_get() #7
  %cmp3.i.i.i54.i = icmp sgt i64 %call3.i.i53.i, %add.i.i.i47.i
  br i1 %cmp3.i.i.i54.i, label %meson_ao_cec_write.exit78.thread.i, label %while.body.i.i55.i.while.cond.i.i52.i_crit_edge

while.body.i.i55.i.while.cond.i.i52.i_crit_edge:  ; preds = %while.body.i.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i52.i

meson_ao_cec_write.exit60.thread.i:               ; preds = %meson_ao_cec_write.exit.i20, %rx_out.i.meson_ao_cec_write.exit60.thread.i_crit_edge
  %60 = ptrtoint ptr %ret.i3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr.i = load i32, ptr %ret.i3, align 4
  br label %meson_ao_cec_write.exit78.i

meson_ao_cec_write.exit78.thread.i:               ; preds = %while.body.i.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i.i9, i32 noundef %call48.i45.i) #7
  br label %meson_ao_cec_irq_rx.exit

do.body45.i67.i:                                  ; preds = %while.cond.i.i52.i
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %62, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 335544576) #7, !srcloc !63
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i.i9, i32 noundef %call48.i45.i) #7
  %63 = ptrtoint ptr %ret.i3 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %ret.i3, align 4
  %call48.i63.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i.i9) #7
  %call.i.i64.i = call i64 @ktime_get() #7
  %add.i.i.i65.i = add i64 %call.i.i64.i, 5000000
  br label %while.cond.i.i70.i

while.cond.i.i70.i:                               ; preds = %while.body.i.i73.i.while.cond.i.i70.i_crit_edge, %do.body45.i67.i
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr.i.i68.i = getelementptr i8, ptr %65, i32 4
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68.i) #7, !srcloc !64
  %67 = and i32 %66, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i69.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i69.i, label %if.end56.i75.i, label %while.body.i.i73.i

while.body.i.i73.i:                               ; preds = %while.cond.i.i70.i
  %call3.i.i71.i = call i64 @ktime_get() #7
  %cmp3.i.i.i72.i = icmp sgt i64 %call3.i.i71.i, %add.i.i.i65.i
  br i1 %cmp3.i.i.i72.i, label %while.body.i.i73.i.write_out.i77.i_crit_edge, label %while.body.i.i73.i.while.cond.i.i70.i_crit_edge

while.body.i.i73.i.while.cond.i.i70.i_crit_edge:  ; preds = %while.body.i.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i70.i

while.body.i.i73.i.write_out.i77.i_crit_edge:     ; preds = %while.body.i.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_out.i77.i

if.end56.i75.i:                                   ; preds = %while.cond.i.i70.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %69, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 352387328) #7, !srcloc !63
  br label %write_out.i77.i

write_out.i77.i:                                  ; preds = %if.end56.i75.i, %while.body.i.i73.i.write_out.i77.i_crit_edge
  %retval.0.i76.i76.i = phi i32 [ 0, %if.end56.i75.i ], [ -110, %while.body.i.i73.i.write_out.i77.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i.i9, i32 noundef %call48.i63.i) #7
  %70 = ptrtoint ptr %ret.i3 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i76.i76.i, ptr %ret.i3, align 4
  br label %meson_ao_cec_write.exit78.i

meson_ao_cec_write.exit78.i:                      ; preds = %write_out.i77.i, %meson_ao_cec_write.exit60.thread.i
  %71 = phi i32 [ %.pr.i, %meson_ao_cec_write.exit60.thread.i ], [ %retval.0.i76.i76.i, %write_out.i77.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool41.not.i79.i = icmp eq i32 %71, 0
  br i1 %tobool41.not.i79.i, label %do.body45.i85.i, label %meson_ao_cec_write.exit78.i.meson_ao_cec_irq_rx.exit_crit_edge

meson_ao_cec_write.exit78.i.meson_ao_cec_irq_rx.exit_crit_edge: ; preds = %meson_ao_cec_write.exit78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_ao_cec_irq_rx.exit

do.body45.i85.i:                                  ; preds = %meson_ao_cec_write.exit78.i
  %cec_reg_lock.i80.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %data, i32 0, i32 3
  %call48.i81.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i80.i) #7
  %call.i.i82.i = call i64 @ktime_get() #7
  %add.i.i.i83.i = add i64 %call.i.i82.i, 5000000
  br label %while.cond.i.i88.i

while.cond.i.i88.i:                               ; preds = %while.body.i.i91.i.while.cond.i.i88.i_crit_edge, %do.body45.i85.i
  %72 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base, align 4
  %add.ptr.i.i86.i = getelementptr i8, ptr %73, i32 4
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i86.i) #7, !srcloc !64
  %75 = and i32 %74, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i.i87.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i.i87.i, label %if.end56.i93.i, label %while.body.i.i91.i

while.body.i.i91.i:                               ; preds = %while.cond.i.i88.i
  %call3.i.i89.i = call i64 @ktime_get() #7
  %cmp3.i.i.i90.i = icmp sgt i64 %call3.i.i89.i, %add.i.i.i83.i
  br i1 %cmp3.i.i.i90.i, label %while.body.i.i91.i.write_out.i95.i_crit_edge, label %while.body.i.i91.i.while.cond.i.i88.i_crit_edge

while.body.i.i91.i.while.cond.i.i88.i_crit_edge:  ; preds = %while.body.i.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i88.i

while.body.i.i91.i.write_out.i95.i_crit_edge:     ; preds = %while.body.i.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_out.i95.i

if.end56.i93.i:                                   ; preds = %while.cond.i.i88.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %77, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 352321792) #7, !srcloc !63
  br label %write_out.i95.i

write_out.i95.i:                                  ; preds = %if.end56.i93.i, %while.body.i.i91.i.write_out.i95.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i80.i, i32 noundef %call48.i81.i) #7
  br label %meson_ao_cec_irq_rx.exit

meson_ao_cec_irq_rx.exit:                         ; preds = %write_out.i95.i, %meson_ao_cec_write.exit78.i.meson_ao_cec_irq_rx.exit_crit_edge, %meson_ao_cec_write.exit78.thread.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i3) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_cec_adap_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_cec_adap_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %base.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !64
  %5 = and i32 %4, -100663297
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %5) #7, !srcloc !63
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !64
  %11 = or i32 %10, 16777216
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #7, !srcloc !63
  br i1 %enable, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !64
  %17 = and i32 %16, -100663297
  %18 = or i32 %17, 33554432
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 21474800) #7
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !64
  %25 = and i32 %24, -16777217
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !63
  %call34 = tail call fastcc i32 @meson_ao_cec_clear(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end
  %call38 = tail call fastcc i32 @meson_ao_cec_arbit_bit_time_set(ptr noundef %1, i32 noundef 3, i32 noundef 280)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %call42 = tail call fastcc i32 @meson_ao_cec_arbit_bit_time_set(ptr noundef %1, i32 noundef 5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %call46 = tail call fastcc i32 @meson_ao_cec_arbit_bit_time_set(ptr noundef %1, i32 noundef 7, i32 noundef 682)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #7, !srcloc !64
  %31 = or i32 %30, 100663296
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr2.i71 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i71, i32 %31) #7, !srcloc !63
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ 0, %entry.cleanup_crit_edge ], [ %call34, %if.end.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_set_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %logical_addr) #2 align 64 {
do.body45.i:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %cec_reg_lock.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 3
  %call48.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i = tail call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call.i.i, 5000000
  %base.i.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %do.body45.i
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !64
  %5 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.end, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call3.i.i = tail call i64 @ktime_get() #7
  %cmp3.i.i.i = icmp sgt i64 %call3.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %while.body.i.i.cleanup.sink.split_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.cleanup.sink.split_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %while.cond.i.i
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 369099008) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i) #7
  %call = tail call fastcc i32 @meson_ao_cec_clear(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %logical_addr)
  %cmp = icmp eq i8 %logical_addr, -1
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %do.body45.i28

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body45.i28:                                    ; preds = %if.end3
  %8 = and i8 %logical_addr, 15
  %conv36.i = zext i8 %8 to i32
  %shl37.i = shl nuw nsw i32 %conv36.i, 8
  %or39.i = or i32 %shl37.i, 65558
  %call48.i24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i25 = tail call i64 @ktime_get() #7
  %add.i.i.i26 = add i64 %call.i.i25, 5000000
  br label %while.cond.i.i31

while.cond.i.i31:                                 ; preds = %while.body.i.i34.while.cond.i.i31_crit_edge, %do.body45.i28
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #7, !srcloc !64
  %12 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i30 = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i30, label %do.body45.i50, label %while.body.i.i34

while.body.i.i34:                                 ; preds = %while.cond.i.i31
  %call3.i.i32 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i33 = icmp sgt i64 %call3.i.i32, %add.i.i.i26
  br i1 %cmp3.i.i.i33, label %while.body.i.i34.cleanup.sink.split_crit_edge, label %while.body.i.i34.while.cond.i.i31_crit_edge

while.body.i.i34.while.cond.i.i31_crit_edge:      ; preds = %while.body.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i31

while.body.i.i34.cleanup.sink.split_crit_edge:    ; preds = %while.body.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body45.i50:                                    ; preds = %while.cond.i.i31
  %13 = tail call i32 @llvm.bswap.i32(i32 %or39.i) #7
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %13) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i24) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #7
  %17 = or i8 %8, 16
  %conv36.i40 = zext i8 %17 to i32
  %shl37.i41 = shl nuw nsw i32 %conv36.i40, 8
  %or39.i43 = or i32 %shl37.i41, 65558
  %call48.i46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i47 = tail call i64 @ktime_get() #7
  %add.i.i.i48 = add i64 %call.i.i47, 5000000
  br label %while.cond.i.i53

while.cond.i.i53:                                 ; preds = %while.body.i.i56.while.cond.i.i53_crit_edge, %do.body45.i50
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51) #7, !srcloc !64
  %21 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i52 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i52, label %if.end56.i58, label %while.body.i.i56

while.body.i.i56:                                 ; preds = %while.cond.i.i53
  %call3.i.i54 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i55 = icmp sgt i64 %call3.i.i54, %add.i.i.i48
  br i1 %cmp3.i.i.i55, label %while.body.i.i56.cleanup.sink.split_crit_edge, label %while.body.i.i56.while.cond.i.i53_crit_edge

while.body.i.i56.while.cond.i.i53_crit_edge:      ; preds = %while.body.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i53

while.body.i.i56.cleanup.sink.split_crit_edge:    ; preds = %while.body.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end56.i58:                                     ; preds = %while.cond.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %or39.i43) #7
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %22) #7, !srcloc !63
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end56.i58, %while.body.i.i56.cleanup.sink.split_crit_edge, %while.body.i.i34.cleanup.sink.split_crit_edge, %while.body.i.i.cleanup.sink.split_crit_edge
  %call48.i24.sink = phi i32 [ %call48.i46, %if.end56.i58 ], [ %call48.i46, %while.body.i.i56.cleanup.sink.split_crit_edge ], [ %call48.i24, %while.body.i.i34.cleanup.sink.split_crit_edge ], [ %call48.i, %while.body.i.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end56.i58 ], [ -110, %while.body.i.i56.cleanup.sink.split_crit_edge ], [ -110, %while.body.i.i34.cleanup.sink.split_crit_edge ], [ -110, %while.body.i.i.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i24.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_ao_cec_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #7
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ret, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #7
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %reg, align 1, !annotation !65
  call fastcc void @meson_ao_cec_read(ptr noundef %1, i32 noundef 147, ptr noundef nonnull %reg, ptr noundef nonnull %ret)
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %do.body, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_ao_cec_transmit.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_ao_cec_transmit, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !66

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_ao_cec_transmit.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool41.not.i = icmp eq i32 %11, 0
  br i1 %tobool41.not.i, label %do.body45.i, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body45.i:                                      ; preds = %do.end
  %cec_reg_lock.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 3
  %call48.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i = call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call.i.i, 5000000
  %base.i.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %do.body45.i
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !64
  %15 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %if.end56.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call3.i.i = call i64 @ktime_get() #7
  %cmp3.i.i.i = icmp sgt i64 %call3.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %while.body.i.i.write_out.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.write_out.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_out.i

if.end56.i:                                       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 285344000) #7, !srcloc !63
  br label %write_out.i

write_out.i:                                      ; preds = %if.end56.i, %while.body.i.i.write_out.i_crit_edge
  %retval.0.i76.i = phi i32 [ 0, %if.end56.i ], [ -110, %while.body.i.i.write_out.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i) #7
  %18 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i76.i, ptr %ret, align 4
  br label %if.end8

if.end8:                                          ; preds = %write_out.i, %do.end.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp994.not = icmp eq i32 %20, 0
  br i1 %cmp994.not, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %cec_reg_lock.i29 = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 3
  %base.i.i33 = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 1
  br label %do.end12.i

do.end12.i:                                       ; preds = %meson_ao_cec_write.exit45.do.end12.i_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %meson_ao_cec_write.exit45.do.end12.i_crit_edge ]
  %arrayidx = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %i.095
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %and13.i = and i32 %i.095, 255
  %conv36.i = zext i8 %22 to i32
  %shl37.i = shl nuw nsw i32 %conv36.i, 8
  %or.i = or i32 %shl37.i, %and13.i
  %or39.i = or i32 %or.i, 65536
  %23 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool41.not.i28 = icmp eq i32 %24, 0
  br i1 %tobool41.not.i28, label %do.body45.i34, label %do.end12.i.meson_ao_cec_write.exit45_crit_edge

do.end12.i.meson_ao_cec_write.exit45_crit_edge:   ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_ao_cec_write.exit45

do.body45.i34:                                    ; preds = %do.end12.i
  %call48.i30 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i29) #7
  %call.i.i31 = call i64 @ktime_get() #7
  %add.i.i.i32 = add i64 %call.i.i31, 5000000
  br label %while.cond.i.i37

while.cond.i.i37:                                 ; preds = %while.body.i.i40.while.cond.i.i37_crit_edge, %do.body45.i34
  %25 = ptrtoint ptr %base.i.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i33, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %26, i32 4
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #7, !srcloc !64
  %28 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i36 = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i36, label %if.end56.i42, label %while.body.i.i40

while.body.i.i40:                                 ; preds = %while.cond.i.i37
  %call3.i.i38 = call i64 @ktime_get() #7
  %cmp3.i.i.i39 = icmp sgt i64 %call3.i.i38, %add.i.i.i32
  br i1 %cmp3.i.i.i39, label %while.body.i.i40.write_out.i44_crit_edge, label %while.body.i.i40.while.cond.i.i37_crit_edge

while.body.i.i40.while.cond.i.i37_crit_edge:      ; preds = %while.body.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i37

while.body.i.i40.write_out.i44_crit_edge:         ; preds = %while.body.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_out.i44

if.end56.i42:                                     ; preds = %while.cond.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  %29 = call i32 @llvm.bswap.i32(i32 %or39.i) #7
  %30 = ptrtoint ptr %base.i.i33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i33, align 4
  %add.ptr.i41 = getelementptr i8, ptr %31, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %29) #7, !srcloc !63
  br label %write_out.i44

write_out.i44:                                    ; preds = %if.end56.i42, %while.body.i.i40.write_out.i44_crit_edge
  %retval.0.i76.i43 = phi i32 [ 0, %if.end56.i42 ], [ -110, %while.body.i.i40.write_out.i44_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i29, i32 noundef %call48.i30) #7
  %32 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i76.i43, ptr %ret, align 4
  br label %meson_ao_cec_write.exit45

meson_ao_cec_write.exit45:                        ; preds = %write_out.i44, %do.end12.i.meson_ao_cec_write.exit45_crit_edge
  %inc = add nuw i32 %i.095, 1
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 8
  %cmp9 = icmp ult i32 %inc, %34
  br i1 %cmp9, label %meson_ao_cec_write.exit45.do.end12.i_crit_edge, label %for.end.loopexit

meson_ao_cec_write.exit45.do.end12.i_crit_edge:   ; preds = %meson_ao_cec_write.exit45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

for.end.loopexit:                                 ; preds = %meson_ao_cec_write.exit45
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = shl i32 %34, 8
  %phi.bo97 = add i32 %phi.bo, 65280
  %phi.bo98 = and i32 %phi.bo97, 65280
  %phi.bo99 = or i32 %phi.bo98, 65552
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end8.for.end_crit_edge
  %.lcssa = phi i32 [ 130832, %if.end8.for.end_crit_edge ], [ %phi.bo99, %for.end.loopexit ]
  %35 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool41.not.i51 = icmp eq i32 %36, 0
  br i1 %tobool41.not.i51, label %do.body45.i57, label %for.end.meson_ao_cec_write.exit87_crit_edge

for.end.meson_ao_cec_write.exit87_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %meson_ao_cec_write.exit87

do.body45.i57:                                    ; preds = %for.end
  %cec_reg_lock.i52 = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 3
  %call48.i53 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i52) #7
  %call.i.i54 = call i64 @ktime_get() #7
  %add.i.i.i55 = add i64 %call.i.i54, 5000000
  %base.i.i56 = getelementptr inbounds %struct.meson_ao_cec_device, ptr %1, i32 0, i32 1
  br label %while.cond.i.i60

while.cond.i.i60:                                 ; preds = %while.body.i.i63.while.cond.i.i60_crit_edge, %do.body45.i57
  %37 = ptrtoint ptr %base.i.i56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i56, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %38, i32 4
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58) #7, !srcloc !64
  %40 = and i32 %39, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i59 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i59, label %do.body45.i76, label %while.body.i.i63

while.body.i.i63:                                 ; preds = %while.cond.i.i60
  %call3.i.i61 = call i64 @ktime_get() #7
  %cmp3.i.i.i62 = icmp sgt i64 %call3.i.i61, %add.i.i.i55
  br i1 %cmp3.i.i.i62, label %meson_ao_cec_write.exit68, label %while.body.i.i63.while.cond.i.i60_crit_edge

while.body.i.i63.while.cond.i.i60_crit_edge:      ; preds = %while.body.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i60

meson_ao_cec_write.exit68:                        ; preds = %while.body.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i52, i32 noundef %call48.i53) #7
  %41 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -110, ptr %ret, align 4
  br label %meson_ao_cec_write.exit87

do.body45.i76:                                    ; preds = %while.cond.i.i60
  %42 = call i32 @llvm.bswap.i32(i32 %.lcssa) #7
  %43 = ptrtoint ptr %base.i.i56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i56, align 4
  %add.ptr.i64 = getelementptr i8, ptr %44, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %42) #7, !srcloc !63
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i52, i32 noundef %call48.i53) #7
  %45 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %ret, align 4
  %call48.i72 = call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i52) #7
  %call.i.i73 = call i64 @ktime_get() #7
  %add.i.i.i74 = add i64 %call.i.i73, 5000000
  br label %while.cond.i.i79

while.cond.i.i79:                                 ; preds = %while.body.i.i82.while.cond.i.i79_crit_edge, %do.body45.i76
  %46 = ptrtoint ptr %base.i.i56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i56, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %47, i32 4
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i77) #7, !srcloc !64
  %49 = and i32 %48, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i78 = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i78, label %if.end56.i84, label %while.body.i.i82

while.body.i.i82:                                 ; preds = %while.cond.i.i79
  %call3.i.i80 = call i64 @ktime_get() #7
  %cmp3.i.i.i81 = icmp sgt i64 %call3.i.i80, %add.i.i.i74
  br i1 %cmp3.i.i.i81, label %while.body.i.i82.write_out.i86_crit_edge, label %while.body.i.i82.while.cond.i.i79_crit_edge

while.body.i.i82.while.cond.i.i79_crit_edge:      ; preds = %while.body.i.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i79

while.body.i.i82.write_out.i86_crit_edge:         ; preds = %while.body.i.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_out.i86

if.end56.i84:                                     ; preds = %while.cond.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %base.i.i56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i56, align 4
  %add.ptr.i83 = getelementptr i8, ptr %51, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 285278464) #7, !srcloc !63
  br label %write_out.i86

write_out.i86:                                    ; preds = %if.end56.i84, %while.body.i.i82.write_out.i86_crit_edge
  %retval.0.i76.i85 = phi i32 [ 0, %if.end56.i84 ], [ -110, %while.body.i.i82.write_out.i86_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i52, i32 noundef %call48.i72) #7
  %52 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i76.i85, ptr %ret, align 4
  br label %meson_ao_cec_write.exit87

meson_ao_cec_write.exit87:                        ; preds = %write_out.i86, %meson_ao_cec_write.exit68, %for.end.meson_ao_cec_write.exit87_crit_edge
  %53 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %meson_ao_cec_write.exit87, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %54, %meson_ao_cec_write.exit87 ], [ %5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_ao_cec_clear(ptr noundef %ao_cec) unnamed_addr #6 align 64 {
do.body45.i:
  call void @__sanitizer_cov_trace_pc() #9
  %cec_reg_lock.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %ao_cec, i32 0, i32 3
  %call48.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i = tail call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call.i.i, 5000000
  %base.i.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %ao_cec, i32 0, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %do.body45.i
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !64
  %3 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %do.body45.i18, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call3.i.i = tail call i64 @ktime_get() #7
  %cmp3.i.i.i = icmp sgt i64 %call3.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %while.body.i.i.cleanup_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body45.i18:                                    ; preds = %while.cond.i.i
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 335675648) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i) #7
  %call48.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i15 = tail call i64 @ktime_get() #7
  %add.i.i.i16 = add i64 %call.i.i15, 5000000
  br label %while.cond.i.i21

while.cond.i.i21:                                 ; preds = %while.body.i.i24.while.cond.i.i21_crit_edge, %do.body45.i18
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19) #7, !srcloc !64
  %9 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i20 = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i20, label %do.body45.i36, label %while.body.i.i24

while.body.i.i24:                                 ; preds = %while.cond.i.i21
  %call3.i.i22 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i23 = icmp sgt i64 %call3.i.i22, %add.i.i.i16
  br i1 %cmp3.i.i.i23, label %while.body.i.i24.cleanup_crit_edge, label %while.body.i.i24.while.cond.i.i21_crit_edge

while.body.i.i24.while.cond.i.i21_crit_edge:      ; preds = %while.body.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i21

while.body.i.i24.cleanup_crit_edge:               ; preds = %while.body.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body45.i36:                                    ; preds = %while.cond.i.i21
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 285344000) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i14) #7
  %call48.i32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i33 = tail call i64 @ktime_get() #7
  %add.i.i.i34 = add i64 %call.i.i33, 5000000
  br label %while.cond.i.i39

while.cond.i.i39:                                 ; preds = %while.body.i.i42.while.cond.i.i39_crit_edge, %do.body45.i36
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37) #7, !srcloc !64
  %15 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i38 = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i38, label %do.body45.i54, label %while.body.i.i42

while.body.i.i42:                                 ; preds = %while.cond.i.i39
  %call3.i.i40 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i41 = icmp sgt i64 %call3.i.i40, %add.i.i.i34
  br i1 %cmp3.i.i.i41, label %while.body.i.i42.cleanup_crit_edge, label %while.body.i.i42.while.cond.i.i39_crit_edge

while.body.i.i42.while.cond.i.i39_crit_edge:      ; preds = %while.body.i.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i39

while.body.i.i42.cleanup_crit_edge:               ; preds = %while.body.i.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body45.i54:                                    ; preds = %while.cond.i.i39
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 352387328) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i32) #7
  %call48.i50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i51 = tail call i64 @ktime_get() #7
  %add.i.i.i52 = add i64 %call.i.i51, 5000000
  br label %while.cond.i.i57

while.cond.i.i57:                                 ; preds = %while.body.i.i60.while.cond.i.i57_crit_edge, %do.body45.i54
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #7, !srcloc !64
  %21 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i56 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i56, label %do.body45.i72, label %while.body.i.i60

while.body.i.i60:                                 ; preds = %while.cond.i.i57
  %call3.i.i58 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i59 = icmp sgt i64 %call3.i.i58, %add.i.i.i52
  br i1 %cmp3.i.i.i59, label %while.body.i.i60.cleanup_crit_edge, label %while.body.i.i60.while.cond.i.i57_crit_edge

while.body.i.i60.while.cond.i.i57_crit_edge:      ; preds = %while.body.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i57

while.body.i.i60.cleanup_crit_edge:               ; preds = %while.body.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body45.i72:                                    ; preds = %while.cond.i.i57
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 318832896) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i50) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 21474800) #7
  %call48.i68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i69 = tail call i64 @ktime_get() #7
  %add.i.i.i70 = add i64 %call.i.i69, 5000000
  br label %while.cond.i.i75

while.cond.i.i75:                                 ; preds = %while.body.i.i78.while.cond.i.i75_crit_edge, %do.body45.i72
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i73 = getelementptr i8, ptr %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73) #7, !srcloc !64
  %28 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i74 = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i74, label %do.body45.i90, label %while.body.i.i78

while.body.i.i78:                                 ; preds = %while.cond.i.i75
  %call3.i.i76 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i77 = icmp sgt i64 %call3.i.i76, %add.i.i.i70
  br i1 %cmp3.i.i.i77, label %while.body.i.i78.cleanup_crit_edge, label %while.body.i.i78.while.cond.i.i75_crit_edge

while.body.i.i78.while.cond.i.i75_crit_edge:      ; preds = %while.body.i.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i75

while.body.i.i78.cleanup_crit_edge:               ; preds = %while.body.i.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body45.i90:                                    ; preds = %while.cond.i.i75
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 352321792) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i68) #7
  %call48.i86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i87 = tail call i64 @ktime_get() #7
  %add.i.i.i88 = add i64 %call.i.i87, 5000000
  br label %while.cond.i.i93

while.cond.i.i93:                                 ; preds = %while.body.i.i96.while.cond.i.i93_crit_edge, %do.body45.i90
  %31 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i91 = getelementptr i8, ptr %32, i32 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i91) #7, !srcloc !64
  %34 = and i32 %33, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i92 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i92, label %do.body45.i108, label %while.body.i.i96

while.body.i.i96:                                 ; preds = %while.cond.i.i93
  %call3.i.i94 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i95 = icmp sgt i64 %call3.i.i94, %add.i.i.i88
  br i1 %cmp3.i.i.i95, label %while.body.i.i96.cleanup_crit_edge, label %while.body.i.i96.while.cond.i.i93_crit_edge

while.body.i.i96.while.cond.i.i93_crit_edge:      ; preds = %while.body.i.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i93

while.body.i.i96.cleanup_crit_edge:               ; preds = %while.body.i.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body45.i108:                                   ; preds = %while.cond.i.i93
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 318767360) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i86) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 21474800) #7
  %call48.i104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i105 = tail call i64 @ktime_get() #7
  %add.i.i.i106 = add i64 %call.i.i105, 5000000
  br label %while.cond.i.i111

while.cond.i.i111:                                ; preds = %while.body.i.i114.while.cond.i.i111_crit_edge, %do.body45.i108
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i109 = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i109) #7, !srcloc !64
  %41 = and i32 %40, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i110 = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i110, label %do.body45.i126, label %while.body.i.i114

while.body.i.i114:                                ; preds = %while.cond.i.i111
  %call3.i.i112 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i113 = icmp sgt i64 %call3.i.i112, %add.i.i.i106
  br i1 %cmp3.i.i.i113, label %while.body.i.i114.cleanup_crit_edge, label %while.body.i.i114.while.cond.i.i111_crit_edge

while.body.i.i114.while.cond.i.i111_crit_edge:    ; preds = %while.body.i.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i111

while.body.i.i114.cleanup_crit_edge:              ; preds = %while.body.i.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body45.i126:                                   ; preds = %while.cond.i.i111
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 335544576) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i104) #7
  %call48.i122 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i123 = tail call i64 @ktime_get() #7
  %add.i.i.i124 = add i64 %call.i.i123, 5000000
  br label %while.cond.i.i129

while.cond.i.i129:                                ; preds = %while.body.i.i132.while.cond.i.i129_crit_edge, %do.body45.i126
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i127 = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i127) #7, !srcloc !64
  %47 = and i32 %46, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i128 = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i128, label %if.end56.i134, label %while.body.i.i132

while.body.i.i132:                                ; preds = %while.cond.i.i129
  %call3.i.i130 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i131 = icmp sgt i64 %call3.i.i130, %add.i.i.i124
  br i1 %cmp3.i.i.i131, label %while.body.i.i132.cleanup_crit_edge, label %while.body.i.i132.while.cond.i.i129_crit_edge

while.body.i.i132.while.cond.i.i129_crit_edge:    ; preds = %while.body.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i129

while.body.i.i132.cleanup_crit_edge:              ; preds = %while.body.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56.i134:                                    ; preds = %while.cond.i.i129
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 285212928) #7, !srcloc !63
  br label %cleanup

cleanup:                                          ; preds = %if.end56.i134, %while.body.i.i132.cleanup_crit_edge, %while.body.i.i114.cleanup_crit_edge, %while.body.i.i96.cleanup_crit_edge, %while.body.i.i78.cleanup_crit_edge, %while.body.i.i60.cleanup_crit_edge, %while.body.i.i42.cleanup_crit_edge, %while.body.i.i24.cleanup_crit_edge, %while.body.i.i.cleanup_crit_edge
  %call48.i.sink = phi i32 [ %call48.i122, %if.end56.i134 ], [ %call48.i122, %while.body.i.i132.cleanup_crit_edge ], [ %call48.i104, %while.body.i.i114.cleanup_crit_edge ], [ %call48.i86, %while.body.i.i96.cleanup_crit_edge ], [ %call48.i68, %while.body.i.i78.cleanup_crit_edge ], [ %call48.i50, %while.body.i.i60.cleanup_crit_edge ], [ %call48.i32, %while.body.i.i42.cleanup_crit_edge ], [ %call48.i14, %while.body.i.i24.cleanup_crit_edge ], [ %call48.i, %while.body.i.i.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.end56.i134 ], [ -110, %while.body.i.i132.cleanup_crit_edge ], [ -110, %while.body.i.i114.cleanup_crit_edge ], [ -110, %while.body.i.i96.cleanup_crit_edge ], [ -110, %while.body.i.i78.cleanup_crit_edge ], [ -110, %while.body.i.i60.cleanup_crit_edge ], [ -110, %while.body.i.i42.cleanup_crit_edge ], [ -110, %while.body.i.i24.cleanup_crit_edge ], [ -110, %while.body.i.i.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i.sink) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_ao_cec_arbit_bit_time_set(ptr noundef %ao_cec, i32 noundef %bit_set, i32 noundef %time_set) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %bit_set to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bit_set, label %entry.sw.epilog_crit_edge [
    i32 3, label %do.body45.i
    i32 5, label %do.body45.i57
    i32 7, label %do.body45.i101
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body45.i:                                      ; preds = %entry
  %conv36.i = shl i32 %time_set, 8
  %shl37.i = and i32 %conv36.i, 65280
  %or39.i = or i32 %shl37.i, 65604
  %cec_reg_lock.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %ao_cec, i32 0, i32 3
  %call48.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i = tail call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call.i.i, 5000000
  %base.i.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %ao_cec, i32 0, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %do.body45.i
  %1 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !64
  %4 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %do.body45.i35, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call3.i.i = tail call i64 @ktime_get() #7
  %cmp3.i.i.i = icmp sgt i64 %call3.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %meson_ao_cec_write.exit, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

meson_ao_cec_write.exit:                          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i) #7
  br label %sw.epilog

do.body45.i35:                                    ; preds = %while.cond.i.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %or39.i) #7
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i) #7
  %conv2154 = and i32 %time_set, 1792
  %or39.i28155 = or i32 %conv2154, 65605
  %call48.i31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i) #7
  %call.i.i32 = tail call i64 @ktime_get() #7
  %add.i.i.i33 = add i64 %call.i.i32, 5000000
  br label %while.cond.i.i38

while.cond.i.i38:                                 ; preds = %while.body.i.i41.while.cond.i.i38_crit_edge, %do.body45.i35
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #7, !srcloc !64
  %11 = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i37 = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i37, label %if.end56.i43, label %while.body.i.i41

while.body.i.i41:                                 ; preds = %while.cond.i.i38
  %call3.i.i39 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i40 = icmp sgt i64 %call3.i.i39, %add.i.i.i33
  br i1 %cmp3.i.i.i40, label %while.body.i.i41.write_out.i45_crit_edge, label %while.body.i.i41.while.cond.i.i38_crit_edge

while.body.i.i41.while.cond.i.i38_crit_edge:      ; preds = %while.body.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i38

while.body.i.i41.write_out.i45_crit_edge:         ; preds = %while.body.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_out.i45

if.end56.i43:                                     ; preds = %while.cond.i.i38
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %or39.i28155) #7
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %12) #7, !srcloc !63
  br label %write_out.i45

write_out.i45:                                    ; preds = %if.end56.i43, %while.body.i.i41.write_out.i45_crit_edge
  %retval.0.i76.i44 = phi i32 [ 0, %if.end56.i43 ], [ -110, %while.body.i.i41.write_out.i45_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i, i32 noundef %call48.i31) #7
  br label %sw.epilog

do.body45.i57:                                    ; preds = %entry
  %conv36.i47 = shl i32 %time_set, 8
  %shl37.i48 = and i32 %conv36.i47, 65280
  %or39.i50 = or i32 %shl37.i48, 65602
  %cec_reg_lock.i52 = getelementptr inbounds %struct.meson_ao_cec_device, ptr %ao_cec, i32 0, i32 3
  %call48.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i52) #7
  %call.i.i54 = tail call i64 @ktime_get() #7
  %add.i.i.i55 = add i64 %call.i.i54, 5000000
  %base.i.i56 = getelementptr inbounds %struct.meson_ao_cec_device, ptr %ao_cec, i32 0, i32 1
  br label %while.cond.i.i60

while.cond.i.i60:                                 ; preds = %while.body.i.i63.while.cond.i.i60_crit_edge, %do.body45.i57
  %15 = ptrtoint ptr %base.i.i56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i56, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58) #7, !srcloc !64
  %18 = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i59 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i59, label %do.body45.i79, label %while.body.i.i63

while.body.i.i63:                                 ; preds = %while.cond.i.i60
  %call3.i.i61 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i62 = icmp sgt i64 %call3.i.i61, %add.i.i.i55
  br i1 %cmp3.i.i.i62, label %meson_ao_cec_write.exit68, label %while.body.i.i63.while.cond.i.i60_crit_edge

while.body.i.i63.while.cond.i.i60_crit_edge:      ; preds = %while.body.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i60

meson_ao_cec_write.exit68:                        ; preds = %while.body.i.i63
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i52, i32 noundef %call48.i53) #7
  br label %sw.epilog

do.body45.i79:                                    ; preds = %while.cond.i.i60
  %19 = tail call i32 @llvm.bswap.i32(i32 %or39.i50) #7
  %20 = ptrtoint ptr %base.i.i56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i56, align 4
  %add.ptr.i64 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %19) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i52, i32 noundef %call48.i53) #7
  %conv8158 = and i32 %time_set, 1792
  %or39.i72159 = or i32 %conv8158, 65603
  %call48.i75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i52) #7
  %call.i.i76 = tail call i64 @ktime_get() #7
  %add.i.i.i77 = add i64 %call.i.i76, 5000000
  br label %while.cond.i.i82

while.cond.i.i82:                                 ; preds = %while.body.i.i85.while.cond.i.i82_crit_edge, %do.body45.i79
  %22 = ptrtoint ptr %base.i.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i56, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i80) #7, !srcloc !64
  %25 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i81 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i81, label %if.end56.i87, label %while.body.i.i85

while.body.i.i85:                                 ; preds = %while.cond.i.i82
  %call3.i.i83 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i84 = icmp sgt i64 %call3.i.i83, %add.i.i.i77
  br i1 %cmp3.i.i.i84, label %while.body.i.i85.write_out.i89_crit_edge, label %while.body.i.i85.while.cond.i.i82_crit_edge

while.body.i.i85.while.cond.i.i82_crit_edge:      ; preds = %while.body.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i82

while.body.i.i85.write_out.i89_crit_edge:         ; preds = %while.body.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_out.i89

if.end56.i87:                                     ; preds = %while.cond.i.i82
  call void @__sanitizer_cov_trace_pc() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %or39.i72159) #7
  %27 = ptrtoint ptr %base.i.i56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i56, align 4
  %add.ptr.i86 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %26) #7, !srcloc !63
  br label %write_out.i89

write_out.i89:                                    ; preds = %if.end56.i87, %while.body.i.i85.write_out.i89_crit_edge
  %retval.0.i76.i88 = phi i32 [ 0, %if.end56.i87 ], [ -110, %while.body.i.i85.write_out.i89_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i52, i32 noundef %call48.i75) #7
  br label %sw.epilog

do.body45.i101:                                   ; preds = %entry
  %conv36.i91 = shl i32 %time_set, 8
  %shl37.i92 = and i32 %conv36.i91, 65280
  %or39.i94 = or i32 %shl37.i92, 65600
  %cec_reg_lock.i96 = getelementptr inbounds %struct.meson_ao_cec_device, ptr %ao_cec, i32 0, i32 3
  %call48.i97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i96) #7
  %call.i.i98 = tail call i64 @ktime_get() #7
  %add.i.i.i99 = add i64 %call.i.i98, 5000000
  %base.i.i100 = getelementptr inbounds %struct.meson_ao_cec_device, ptr %ao_cec, i32 0, i32 1
  br label %while.cond.i.i104

while.cond.i.i104:                                ; preds = %while.body.i.i107.while.cond.i.i104_crit_edge, %do.body45.i101
  %29 = ptrtoint ptr %base.i.i100 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i100, align 4
  %add.ptr.i.i102 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i102) #7, !srcloc !64
  %32 = and i32 %31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i103 = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i103, label %do.body45.i123, label %while.body.i.i107

while.body.i.i107:                                ; preds = %while.cond.i.i104
  %call3.i.i105 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i106 = icmp sgt i64 %call3.i.i105, %add.i.i.i99
  br i1 %cmp3.i.i.i106, label %meson_ao_cec_write.exit112, label %while.body.i.i107.while.cond.i.i104_crit_edge

while.body.i.i107.while.cond.i.i104_crit_edge:    ; preds = %while.body.i.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i104

meson_ao_cec_write.exit112:                       ; preds = %while.body.i.i107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i96, i32 noundef %call48.i97) #7
  br label %sw.epilog

do.body45.i123:                                   ; preds = %while.cond.i.i104
  %33 = tail call i32 @llvm.bswap.i32(i32 %or39.i94) #7
  %34 = ptrtoint ptr %base.i.i100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i100, align 4
  %add.ptr.i108 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %33) #7, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i96, i32 noundef %call48.i97) #7
  %conv14162 = and i32 %time_set, 1792
  %or39.i116163 = or i32 %conv14162, 65601
  %call48.i119 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock.i96) #7
  %call.i.i120 = tail call i64 @ktime_get() #7
  %add.i.i.i121 = add i64 %call.i.i120, 5000000
  br label %while.cond.i.i126

while.cond.i.i126:                                ; preds = %while.body.i.i129.while.cond.i.i126_crit_edge, %do.body45.i123
  %36 = ptrtoint ptr %base.i.i100 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i100, align 4
  %add.ptr.i.i124 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i124) #7, !srcloc !64
  %39 = and i32 %38, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i125 = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i125, label %if.end56.i131, label %while.body.i.i129

while.body.i.i129:                                ; preds = %while.cond.i.i126
  %call3.i.i127 = tail call i64 @ktime_get() #7
  %cmp3.i.i.i128 = icmp sgt i64 %call3.i.i127, %add.i.i.i121
  br i1 %cmp3.i.i.i128, label %while.body.i.i129.write_out.i133_crit_edge, label %while.body.i.i129.while.cond.i.i126_crit_edge

while.body.i.i129.while.cond.i.i126_crit_edge:    ; preds = %while.body.i.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i126

while.body.i.i129.write_out.i133_crit_edge:       ; preds = %while.body.i.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_out.i133

if.end56.i131:                                    ; preds = %while.cond.i.i126
  call void @__sanitizer_cov_trace_pc() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %or39.i116163) #7
  %41 = ptrtoint ptr %base.i.i100 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i100, align 4
  %add.ptr.i130 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %40) #7, !srcloc !63
  br label %write_out.i133

write_out.i133:                                   ; preds = %if.end56.i131, %while.body.i.i129.write_out.i133_crit_edge
  %retval.0.i76.i132 = phi i32 [ 0, %if.end56.i131 ], [ -110, %while.body.i.i129.write_out.i133_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock.i96, i32 noundef %call48.i119) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %write_out.i133, %meson_ao_cec_write.exit112, %write_out.i89, %meson_ao_cec_write.exit68, %write_out.i45, %meson_ao_cec_write.exit, %entry.sw.epilog_crit_edge
  %ret.6 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %retval.0.i76.i44, %write_out.i45 ], [ -110, %meson_ao_cec_write.exit ], [ %retval.0.i76.i88, %write_out.i89 ], [ -110, %meson_ao_cec_write.exit68 ], [ %retval.0.i76.i132, %write_out.i133 ], [ -110, %meson_ao_cec_write.exit112 ]
  ret i32 %ret.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_ao_cec_read(ptr noundef %ao_cec, i32 noundef %address, ptr nocapture noundef writeonly %data, ptr noundef %res) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool14.not = icmp eq ptr %res, null
  br i1 %tobool14.not, label %entry.do.body19_crit_edge, label %land.lhs.true

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool15.not = icmp eq i32 %1, 0
  br i1 %tobool15.not, label %land.lhs.true.do.body19_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.do.body19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

do.body19:                                        ; preds = %land.lhs.true.do.body19_crit_edge, %entry.do.body19_crit_edge
  %cec_reg_lock = getelementptr inbounds %struct.meson_ao_cec_device, ptr %ao_cec, i32 0, i32 3
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cec_reg_lock) #7
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 5000000
  %base.i = getelementptr inbounds %struct.meson_ao_cec_device, ptr %ao_cec, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.body19
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !64
  %5 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end29, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %call3.i = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call3.i, %add.i.i
  br i1 %cmp3.i.i, label %while.body.i.read_out_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.body.i.read_out_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_out

if.end29:                                         ; preds = %while.cond.i
  %and13 = shl i32 %address, 24
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and13) #7, !srcloc !63
  %call.i74 = tail call i64 @ktime_get() #7
  %add.i.i75 = add i64 %call.i74, 5000000
  br label %while.cond.i79

while.cond.i79:                                   ; preds = %while.body.i82.while.cond.i79_crit_edge, %if.end29
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #7, !srcloc !64
  %11 = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i78 = icmp eq i32 %11, 0
  br i1 %tobool.not.i78, label %do.end48, label %while.body.i82

while.body.i82:                                   ; preds = %while.cond.i79
  %call3.i80 = tail call i64 @ktime_get() #7
  %cmp3.i.i81 = icmp sgt i64 %call3.i80, %add.i.i75
  br i1 %cmp3.i.i81, label %while.body.i82.read_out_crit_edge, label %while.body.i82.while.cond.i79_crit_edge

while.body.i82.while.cond.i79_crit_edge:          ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i79

while.body.i82.read_out_crit_edge:                ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_out

do.end48:                                         ; preds = %while.cond.i79
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr51 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #7, !srcloc !64
  %conv55 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv55, ptr %data, align 1
  br label %read_out

read_out:                                         ; preds = %do.end48, %while.body.i82.read_out_crit_edge, %while.body.i.read_out_crit_edge
  %ret.0 = phi i32 [ 0, %do.end48 ], [ -110, %while.body.i82.read_out_crit_edge ], [ -110, %while.body.i.read_out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cec_reg_lock, i32 noundef %call21) #7
  br i1 %tobool14.not, label %read_out.cleanup_crit_edge, label %if.then58

read_out.cleanup_crit_edge:                       ; preds = %read_out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then58:                                        ; preds = %read_out
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %ret.0, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %read_out.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_ao_cec__258_726_meson_ao_cec_driver_init6, !1, !"__initcall__kmod_ao_cec__258_726_meson_ao_cec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 726, i32 1}
!2 = !{ptr @__exitcall_meson_ao_cec_driver_exit, !1, !"__exitcall_meson_ao_cec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description259, !4, !"__UNIQUE_ID_description259", i1 false, i1 false}
!4 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 728, i32 1}
!5 = !{ptr @__UNIQUE_ID_author260, !6, !"__UNIQUE_ID_author260", i1 false, i1 false}
!6 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 729, i32 1}
!7 = !{ptr @__UNIQUE_ID_file261, !8, !"__UNIQUE_ID_file261", i1 false, i1 false}
!8 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 730, i32 1}
!9 = !{ptr @__UNIQUE_ID_license262, !8, !"__UNIQUE_ID_license262", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 721, i32 11}
!12 = !{ptr @meson_ao_cec_driver, !13, !"meson_ao_cec_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 717, i32 31}
!14 = !{ptr @meson_ao_cec_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 616, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 619, i32 10}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 640, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @meson_ao_cec_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @meson_ao_cec_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 644, i32 42}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 646, i32 3}
!31 = !{ptr @meson_ao_cec_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @meson_ao_cec_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 653, i32 3}
!35 = !{ptr @meson_ao_cec_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @meson_ao_cec_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 659, i32 3}
!39 = !{ptr @meson_ao_cec_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @meson_ao_cec_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 694, i32 2}
!43 = !{ptr @meson_ao_cec_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @meson_ao_cec_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @meson_ao_cec_ops, !46, !"meson_ao_cec_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 595, i32 34}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 527, i32 3}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @meson_ao_cec_transmit.__UNIQUE_ID_ddebug252, !48, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!52 = !{ptr @meson_ao_cec_of_match, !53, !"meson_ao_cec_of_match", i1 false, i1 false}
!53 = !{!"../drivers/media/cec/platform/meson/ao-cec.c", i32 711, i32 34}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 4846272}
!64 = !{i64 4846690}
!65 = !{!"auto-init"}
!66 = !{i64 2148769896, i64 2148769901, i64 2148769914, i64 2148769958, i64 2148769992, i64 2148770013}
