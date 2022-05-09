; ModuleID = '/llk/IR_all_yes/drivers/media/rc/meson-ir-tx.c_pt.bc'
source_filename = "../drivers/media/rc/meson-ir-tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.meson_irtx = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, %struct.completion, i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }

@__initcall__kmod_meson_ir_tx__234_402_meson_irtx_pd_init6 = internal global ptr @meson_irtx_pd_init, section ".initcall6.init", align 4
@meson_irtx_pd = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @meson_irtx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_irtx_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_irtx_pd_exit = internal global ptr @meson_irtx_pd_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [43 x i8] c"meson_ir_tx.description=Meson IR TX driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [68 x i8] c"meson_ir_tx.author=Viktor Prutyanov <viktor.prutyanov@phystech.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [46 x i8] c"meson_ir_tx.file=drivers/media/rc/meson-ir-tx\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [24 x i8] c"meson_ir_tx.license=GPL\00", section ".modinfo", align 1
@meson_irtx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 327, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no irq resource found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"meson_irtx_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/rc/meson-ir-tx.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_irtx_probe._entry_ptr = internal global ptr @meson_irtx_probe._entry, section ".printk_index", align 4
@meson_irtx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ir->lock\00", [22 x i8] zeroinitializer }, align 32
@meson_irtx_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 339, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"modulator clock setup failed\0A\00", [34 x i8] zeroinitializer }, align 32
@meson_irtx_probe._entry_ptr.8 = internal global ptr @meson_irtx_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"meson-ir-tx\00", [20 x i8] zeroinitializer }, align 32
@meson_irtx_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 349, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq request failed\0A\00", [44 x i8] zeroinitializer }, align 32
@meson_irtx_probe._entry_ptr.12 = internal global ptr @meson_irtx_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Meson IR TX\00", [20 x i8] zeroinitializer }, align 32
@meson_irtx_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rc_dev registration failed\0A\00", [36 x i8] zeroinitializer }, align 32
@meson_irtx_probe._entry_ptr.16 = internal global ptr @meson_irtx_probe._entry.14, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@meson_irtx_mod_clock_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 303, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"F_clk = %luHz\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"meson_irtx_mod_clock_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@meson_irtx_mod_clock_probe._entry_ptr = internal global ptr @meson_irtx_mod_clock_probe._entry, section ".printk_index", align 4
@meson_irtx_set_mod.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"meson_ir_tx\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson_irtx_set_mod\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"F_mod = %uHz, T_mod = %luns, duty_cycle = %u%%\0A\00", [48 x i8] zeroinitializer }, align 32
@meson_irtx_transmit.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meson_irtx_transmit\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TX buffer filled, length = %u\0A\00", [33 x i8] zeroinitializer }, align 32
@meson_irtx_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-ir-tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"meson_irtx_pd\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 394, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 327, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 335, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 339, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 347, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 349, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 358, i32 20 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 367, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 87, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 291, i32 32 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 303, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 85, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 262, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"meson_irtx_dt_match\00", align 1
@___asan_gen_.115 = private constant [34 x i8] c"../drivers/media/rc/meson-ir-tx.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 386, i32 34 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_meson_irtx_pd_exit, ptr @__initcall__kmod_meson_ir_tx__234_402_meson_irtx_pd_init6, ptr @meson_irtx_mod_clock_probe._entry, ptr @meson_irtx_mod_clock_probe._entry_ptr, ptr @meson_irtx_pd_exit, ptr @meson_irtx_probe._entry, ptr @meson_irtx_probe._entry.10, ptr @meson_irtx_probe._entry.14, ptr @meson_irtx_probe._entry.6, ptr @meson_irtx_probe._entry_ptr, ptr @meson_irtx_probe._entry_ptr.12, ptr @meson_irtx_probe._entry_ptr.16, ptr @meson_irtx_probe._entry_ptr.8, ptr @meson_irtx_pd, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @meson_irtx_probe.__key, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @meson_irtx_dt_match], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_irtx_pd to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_irtx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_irtx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_irtx_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_irtx_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_irtx_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_irtx_mod_clock_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_irtx_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_irtx_pd_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @meson_irtx_pd, ptr noundef nonnull @meson_irtx_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_irtx_pd_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_irtx_pd) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_irtx_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %reg_base = getelementptr inbounds %struct.meson_irtx, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %reg_base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %carrier = getelementptr inbounds %struct.meson_irtx, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %carrier to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 38000, ptr %carrier, align 4
  %duty_cycle = getelementptr inbounds %struct.meson_irtx, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 50, ptr %duty_cycle, align 4
  %completion = getelementptr inbounds %struct.meson_irtx, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.meson_irtx, ptr %call.i, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #6
  %lock = getelementptr inbounds %struct.meson_irtx, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @meson_irtx_probe.__key, i16 noundef signext 3) #6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end11.do.end22_crit_edge, label %if.end.i

if.end11.do.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

if.end.i:                                         ; preds = %if.end11
  %call.i83 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.18) #6
  %cmp.i.i = icmp ugt ptr %call.i83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.do.end22_crit_edge, label %lor.lhs.false.i

if.end.i.do.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call.i83) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.do.end22_crit_edge

lor.lhs.false.i.do.end22_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

if.end.i.i:                                       ; preds = %lor.lhs.false.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call.i83) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end6.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call.i83) #6
  br label %do.end22

if.end6.i:                                        ; preds = %if.end.i.i
  %call7.i = tail call i32 @clk_get_rate(ptr noundef %call.i83) #6
  %div.i = udiv i32 %call7.i, 3
  %clk_rate.i = getelementptr inbounds %struct.meson_irtx, ptr %call.i, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %call7.i)
  %cmp.i84 = icmp ult i32 %call7.i, 3000000
  %spec.store.select = select i1 %cmp.i84, i32 1000000, i32 %div.i
  %10 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.store.select, ptr %clk_rate.i, align 4
  %spec.select = select i1 %cmp.i84, i32 2, i32 1
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.19, i32 noundef %spec.store.select) #9
  tail call fastcc void @meson_irtx_setup(ptr noundef nonnull %call.i, i32 noundef %spec.select)
  %call.i85 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call9, ptr noundef nonnull @meson_irtx_irqhandler, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool25.not = icmp eq i32 %call.i85, 0
  br i1 %tobool25.not, label %if.end30, label %do.end29

do.end22:                                         ; preds = %if.then3.i.i, %lor.lhs.false.i.do.end22_crit_edge, %if.end.i.do.end22_crit_edge, %if.end11.do.end22_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

do.end29:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end6.i
  %call31 = tail call ptr @rc_allocate_device(i32 noundef 2) #6
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call31, i32 0, i32 6
  %13 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.9, ptr %driver_name, align 8
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call31, i32 0, i32 3
  %14 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.13, ptr %device_name, align 8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call31, i32 0, i32 24
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %priv, align 4
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %call31, i32 0, i32 54
  %16 = ptrtoint ptr %tx_ir to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @meson_irtx_transmit, ptr %tx_ir, align 8
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %call31, i32 0, i32 51
  %17 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @meson_irtx_set_carrier, ptr %s_tx_carrier, align 4
  %s_tx_duty_cycle = getelementptr inbounds %struct.rc_dev, ptr %call31, i32 0, i32 52
  %18 = ptrtoint ptr %s_tx_duty_cycle to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @meson_irtx_set_duty_cycle, ptr %s_tx_duty_cycle, align 8
  %call35 = tail call i32 @rc_register_device(ptr noundef nonnull %call31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  tail call void @rc_free_device(ptr noundef nonnull %call31) #6
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call31, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end40, %if.end30.cleanup_crit_edge, %do.end29, %do.end22, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ -19, %do.end ], [ -19, %do.end22 ], [ %call.i85, %do.end29 ], [ %call35, %do.end40 ], [ 0, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_irtx_setup(ptr nocapture noundef readonly %ir, i32 noundef %clk_nr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %shl = shl i32 %clk_nr, 12
  %or = or i32 %shl, 4
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %reg_base = getelementptr inbounds %struct.meson_irtx, ptr %ir, i32 0, i32 1
  %1 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #6, !srcloc !71
  %clk_rate.i = getelementptr inbounds %struct.meson_irtx, ptr %ir, i32 0, i32 9
  %3 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk_rate.i, align 4
  %carrier.i = getelementptr inbounds %struct.meson_irtx, ptr %ir, i32 0, i32 5
  %5 = ptrtoint ptr %carrier.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %carrier.i, align 4
  %div35.i = lshr i32 %6, 1
  %add.i = add i32 %div35.i, %4
  %div1.i = udiv i32 %add.i, %6
  %duty_cycle.i = getelementptr inbounds %struct.meson_irtx, ptr %ir, i32 0, i32 6
  %7 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %duty_cycle.i, align 4
  %mul.i = mul i32 %8, %div1.i
  %add6.i = add i32 %mul.i, 50
  %div7.i = udiv i32 %add6.i, 100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_irtx_set_mod.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_irtx_setup, %if.then.i)) #6
          to label %meson_irtx_set_mod.exit [label %if.then.i], !srcloc !72

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ir, align 4
  %11 = ptrtoint ptr %carrier.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %carrier.i, align 4
  %13 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_rate.i, align 4
  %div13.i = udiv i32 1000000000, %14
  %mul14.i = mul i32 %div13.i, %div1.i
  %mul15.i = mul nuw i32 %div7.i, 100
  %div16.i = udiv i32 %mul15.i, %div1.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_irtx_set_mod.__UNIQUE_ID_ddebug232, ptr noundef %10, ptr noundef nonnull @.str.24, i32 noundef %12, i32 noundef %mul14.i, i32 noundef %div16.i) #6
  br label %meson_irtx_set_mod.exit

meson_irtx_set_mod.exit:                          ; preds = %if.then.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %sub20.i = shl i32 %div7.i, 16
  %shl.i = add i32 %sub20.i, -65536
  %15 = xor i32 %div7.i, -1
  %sub21.i = add i32 %div1.i, %15
  %or.i = or i32 %shl.i, %sub21.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %17 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %22 = and i32 %21, -67108865
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base, align 4
  %add.ptr12 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 536936448) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %30 = or i32 %29, 16777216
  %31 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #6, !srcloc !71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_irtx_irqhandler(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %reg_base = getelementptr inbounds %struct.meson_irtx, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %3 = and i32 %2, -257
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #6, !srcloc !71
  %completion = getelementptr inbounds %struct.meson_irtx, ptr %data, i32 0, i32 8
  %call4 = tail call zeroext i1 @completion_done(ptr noundef %completion) #6
  br i1 %call4, label %entry.cleanup_crit_edge, label %do.body6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body6:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.meson_irtx, ptr %data, i32 0, i32 7
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %buf_head = getelementptr inbounds %struct.meson_irtx, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %buf_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_head, align 4
  %buf_len = getelementptr inbounds %struct.meson_irtx, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp14 = icmp ult i32 %7, %9
  br i1 %cmp14, label %do.body.lr.ph.i, label %if.else

do.body.lr.ph.i:                                  ; preds = %do.body6
  %buf.i = getelementptr inbounds %struct.meson_irtx, ptr %data, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %nr.012.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc4.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf.i, align 4
  %12 = ptrtoint ptr %buf_head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_head, align 4
  %arrayidx.i = getelementptr i32, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %17 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !71
  %19 = ptrtoint ptr %buf_head to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_head, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %buf_head, align 4
  %inc4.i = add nuw nsw i32 %nr.012.i, 1
  %21 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %22)
  %cmp.i = icmp ult i32 %inc.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %nr.012.i)
  %cmp1.i = icmp ult i32 %nr.012.i, 95
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.if.end18_crit_edge

do.body.i.if.end18_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else:                                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @complete(ptr noundef %completion) #6
  br label %if.end18

if.end18:                                         ; preds = %if.else, %do.body.i.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_irtx_transmit(ptr nocapture noundef readonly %rc, ptr nocapture noundef readonly %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.not.i = icmp eq i32 %len, 0
  br i1 %cmp9.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %carrier.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 5
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw i32 %i.010.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %len)
  %cmp.i66 = icmp ult i32 %inc.i, %len
  %exitcond.not.i = icmp eq i32 %inc.i, %len
  br i1 %exitcond.not.i, label %for.cond.i.meson_irtx_check_buf.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.meson_irtx_check_buf.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_irtx_check_buf.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cmp11.i = phi i1 [ true, %for.body.lr.ph.i ], [ %cmp.i66, %for.cond.i.for.body.i_crit_edge ]
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %rem.i = and i32 %i.010.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %carrier.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %carrier.i, align 4
  %div.i = udiv i32 1000000, %3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %max_tb_us.0.i = phi i32 [ %div.i, %if.then.i ], [ 100, %for.body.i.if.end.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %buf, i32 %i.010.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl nuw nsw i32 %max_tb_us.0.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul.i)
  %cmp2.not.i = icmp ult i32 %5, %mul.i
  br i1 %cmp2.not.i, label %for.cond.i, label %if.end.i.meson_irtx_check_buf.exit_crit_edge

if.end.i.meson_irtx_check_buf.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_irtx_check_buf.exit

meson_irtx_check_buf.exit:                        ; preds = %if.end.i.meson_irtx_check_buf.exit_crit_edge, %for.cond.i.meson_irtx_check_buf.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i66, %for.cond.i.meson_irtx_check_buf.exit_crit_edge ], [ %cmp11.i, %if.end.i.meson_irtx_check_buf.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %meson_irtx_check_buf.exit.cleanup_crit_edge, label %meson_irtx_check_buf.exit.if.end_crit_edge

meson_irtx_check_buf.exit.if.end_crit_edge:       ; preds = %meson_irtx_check_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

meson_irtx_check_buf.exit.cleanup_crit_edge:      ; preds = %meson_irtx_check_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %meson_irtx_check_buf.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %len, i32 4) #6
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !83

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end3

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end7.i
  br i1 %cmp9.not.i, label %if.end3.meson_irtx_fill_buf.exit_crit_edge, label %for.body.lr.ph.i69

if.end3.meson_irtx_fill_buf.exit_crit_edge:       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_irtx_fill_buf.exit

for.body.lr.ph.i69:                               ; preds = %if.end3
  %carrier.i.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 5
  br label %for.body.i73

for.body.i73:                                     ; preds = %for.inc.i.for.body.i73_crit_edge, %for.body.lr.ph.i69
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i69 ], [ %inc.i76, %for.inc.i.for.body.i73_crit_edge ]
  %rem.i70 = and i32 %i.020.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i70)
  %cmp1.i71 = icmp eq i32 %rem.i70, 0
  %arrayidx.i72 = getelementptr i32, ptr %buf, i32 %i.020.i
  %9 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i72, align 4
  br i1 %cmp1.i71, label %if.then.i74, label %if.else.i

if.then.i74:                                      ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %carrier.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %carrier.i.i, align 4
  %div11.i.i = lshr i32 %12, 1
  %add.i.i = add nuw i32 %div11.i.i, 1000000
  %div1.i.i = udiv i32 %add.i.i, %12
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %10)
  %cmp.i.i75 = icmp ult i32 %10, 1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 10241, i32 %10)
  %cmp1.i.i = icmp ult i32 %10, 10241
  %spec.select.i.i = select i1 %cmp1.i.i, i32 10, i32 100
  %spec.select2.i.i = select i1 %cmp1.i.i, i32 66560, i32 67584
  %tb_us.0.i.i = select i1 %cmp.i.i75, i32 1, i32 %spec.select.i.i
  %tb.0.i.i = select i1 %cmp.i.i75, i32 65536, i32 %spec.select2.i.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i74
  %div1.i.sink22.i = phi i32 [ %div1.i.i, %if.then.i74 ], [ %tb_us.0.i.i, %if.else.i ]
  %.sink.i = phi i32 [ 72704, %if.then.i74 ], [ %tb.0.i.i, %if.else.i ]
  %div512.i.i = lshr i32 %div1.i.sink22.i, 1
  %add6.i.i = add i32 %div512.i.i, %10
  %div7.i.i = udiv i32 %add6.i.i, %div1.i.sink22.i
  %sub.i.i = add i32 %div7.i.i, 1023
  %and.i.i = and i32 %sub.i.i, 1023
  %or8.i.i = or i32 %and.i.i, %.sink.i
  %13 = getelementptr i32, ptr %call8.i, i32 %i.020.i
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or8.i.i, ptr %13, align 4
  %inc.i76 = add nuw i32 %i.020.i, 1
  %exitcond.not.i77 = icmp eq i32 %inc.i76, %len
  br i1 %exitcond.not.i77, label %for.inc.i.meson_irtx_fill_buf.exit_crit_edge, label %for.inc.i.for.body.i73_crit_edge

for.inc.i.for.body.i73_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i73

for.inc.i.meson_irtx_fill_buf.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_irtx_fill_buf.exit

meson_irtx_fill_buf.exit:                         ; preds = %for.inc.i.meson_irtx_fill_buf.exit_crit_edge, %if.end3.meson_irtx_fill_buf.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_irtx_transmit.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_irtx_transmit, %if.then8)) #6
          to label %do.body11 [label %if.then8], !srcloc !72

if.then8:                                         ; preds = %meson_irtx_fill_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_irtx_transmit.__UNIQUE_ID_ddebug233, ptr noundef %16, ptr noundef nonnull @.str.26, i32 noundef %len) #6
  br label %do.body11

do.body11:                                        ; preds = %if.then8, %meson_irtx_fill_buf.exit
  %lock = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 7
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %buf1.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i, ptr %buf1.i, align 4
  %buf_len.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %len, ptr %buf_len.i, align 4
  %buf_head.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %buf_head.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %buf_head.i, align 4
  %completion = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %completion, align 4
  br i1 %cmp9.not.i, label %do.body11.meson_irtx_send_buffer.exit_crit_edge, label %do.body.lr.ph.i

do.body11.meson_irtx_send_buffer.exit_crit_edge:  ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_irtx_send_buffer.exit

do.body.lr.ph.i:                                  ; preds = %do.body11
  %reg_base.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %nr.012.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc4.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf1.i, align 4
  %23 = ptrtoint ptr %buf_head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf_head.i, align 4
  %arrayidx.i81 = getelementptr i32, ptr %22, i32 %24
  %25 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i81, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %28 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #6, !srcloc !71
  %30 = ptrtoint ptr %buf_head.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_head.i, align 4
  %inc.i82 = add i32 %31, 1
  store i32 %inc.i82, ptr %buf_head.i, align 4
  %inc4.i = add nuw nsw i32 %nr.012.i, 1
  %32 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i82, i32 %33)
  %cmp.i83 = icmp ult i32 %inc.i82, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %nr.012.i)
  %cmp1.i84 = icmp ult i32 %nr.012.i, 95
  %or.cond.i = select i1 %cmp.i83, i1 %cmp1.i84, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.meson_irtx_send_buffer.exit_crit_edge

do.body.i.meson_irtx_send_buffer.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_irtx_send_buffer.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

meson_irtx_send_buffer.exit:                      ; preds = %do.body.i.meson_irtx_send_buffer.exit_crit_edge, %do.body11.meson_irtx_send_buffer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #6
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 500000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 50
  %call22 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef %spec.select.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  %spec.select = select i1 %tobool23.not, i32 -110, i32 %len
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %34 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf1.i, align 4
  tail call void @kfree(ptr noundef %35) #6
  %36 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %buf1.i, align 4
  %37 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %buf_len.i, align 4
  %38 = ptrtoint ptr %buf_head.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %buf_head.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #6
  br label %cleanup

cleanup:                                          ; preds = %meson_irtx_send_buffer.exit, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %meson_irtx_check_buf.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %meson_irtx_send_buffer.exit ], [ -22, %meson_irtx_check_buf.exit.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_irtx_set_carrier(ptr nocapture noundef readonly %rc, i32 noundef %carrier) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %carrier)
  %cmp = icmp eq i32 %carrier, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %carrier1 = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %carrier1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %carrier, ptr %carrier1, align 4
  %clk_rate.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk_rate.i, align 4
  %div35.i = lshr i32 %carrier, 1
  %add.i = add i32 %4, %div35.i
  %div1.i = udiv i32 %add.i, %carrier
  %duty_cycle.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %duty_cycle.i, align 4
  %mul.i = mul i32 %6, %div1.i
  %add6.i = add i32 %mul.i, 50
  %div7.i = udiv i32 %add6.i, 100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_irtx_set_mod.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_irtx_set_carrier, %if.then.i)) #6
          to label %meson_irtx_set_mod.exit [label %if.then.i], !srcloc !72

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %carrier1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %carrier1, align 4
  %11 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_rate.i, align 4
  %div13.i = udiv i32 1000000000, %12
  %mul14.i = mul i32 %div13.i, %div1.i
  %mul15.i = mul nuw i32 %div7.i, 100
  %div16.i = udiv i32 %mul15.i, %div1.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_irtx_set_mod.__UNIQUE_ID_ddebug232, ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef %10, i32 noundef %mul14.i, i32 noundef %div16.i) #6
  br label %meson_irtx_set_mod.exit

meson_irtx_set_mod.exit:                          ; preds = %if.then.i, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %sub20.i = shl i32 %div7.i, 16
  %shl.i = add i32 %sub20.i, -65536
  %13 = xor i32 %div7.i, -1
  %sub21.i = add i32 %div1.i, %13
  %or.i = or i32 %shl.i, %sub21.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %reg_base.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #6, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %meson_irtx_set_mod.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %meson_irtx_set_mod.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_irtx_set_duty_cycle(ptr nocapture noundef readonly %rc, i32 noundef %duty_cycle) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %duty_cycle1 = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %duty_cycle1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %duty_cycle, ptr %duty_cycle1, align 4
  %clk_rate.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk_rate.i, align 4
  %carrier.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %carrier.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %carrier.i, align 4
  %div35.i = lshr i32 %6, 1
  %add.i = add i32 %div35.i, %4
  %div1.i = udiv i32 %add.i, %6
  %mul.i = mul i32 %div1.i, %duty_cycle
  %add6.i = add i32 %mul.i, 50
  %div7.i = udiv i32 %add6.i, 100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_irtx_set_mod.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_irtx_set_duty_cycle, %if.then.i)) #6
          to label %meson_irtx_set_mod.exit [label %if.then.i], !srcloc !72

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %carrier.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %carrier.i, align 4
  %11 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_rate.i, align 4
  %div13.i = udiv i32 1000000000, %12
  %mul14.i = mul i32 %div13.i, %div1.i
  %mul15.i = mul nuw i32 %div7.i, 100
  %div16.i = udiv i32 %mul15.i, %div1.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_irtx_set_mod.__UNIQUE_ID_ddebug232, ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef %10, i32 noundef %mul14.i, i32 noundef %div16.i) #6
  br label %meson_irtx_set_mod.exit

meson_irtx_set_mod.exit:                          ; preds = %if.then.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %sub20.i = shl i32 %div7.i, 16
  %shl.i = add i32 %sub20.i, -65536
  %13 = xor i32 %div7.i, -1
  %sub21.i = add i32 %div1.i, %13
  %or.i = or i32 %shl.i, %sub21.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %reg_base.i = getelementptr inbounds %struct.meson_irtx, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #6, !srcloc !71
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_irtx_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rc_unregister_device(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !23, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_meson_ir_tx__234_402_meson_irtx_pd_init6, !1, !"__initcall__kmod_meson_ir_tx__234_402_meson_irtx_pd_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 402, i32 1}
!2 = !{ptr @__exitcall_meson_irtx_pd_exit, !1, !"__exitcall_meson_irtx_pd_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description235, !4, !"__UNIQUE_ID_description235", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 404, i32 1}
!5 = !{ptr @__UNIQUE_ID_author236, !6, !"__UNIQUE_ID_author236", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 405, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 406, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 327, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @meson_irtx_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @meson_irtx_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @meson_irtx_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 335, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 339, i32 3}
!23 = !{ptr @meson_irtx_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @meson_irtx_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 347, i32 11}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 349, i32 3}
!29 = !{ptr @meson_irtx_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @meson_irtx_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 358, i32 20}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 367, i32 3}
!35 = !{ptr @meson_irtx_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @meson_irtx_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @init_completion.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/completion.h", i32 87, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 291, i32 32}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 303, i32 2}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @meson_irtx_mod_clock_probe._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @meson_irtx_mod_clock_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 85, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @meson_irtx_set_mod.__UNIQUE_ID_ddebug232, !49, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 262, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @meson_irtx_transmit.__UNIQUE_ID_ddebug233, !54, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!57 = !{ptr @meson_irtx_pd, !58, !"meson_irtx_pd", i1 false, i1 false}
!58 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 394, i32 31}
!59 = !{ptr @meson_irtx_dt_match, !60, !"meson_irtx_dt_match", i1 false, i1 false}
!60 = !{!"../drivers/media/rc/meson-ir-tx.c", i32 386, i32 34}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2154385578}
!71 = !{i64 4994159}
!72 = !{i64 2148285088, i64 2148285093, i64 2148285106, i64 2148285150, i64 2148285184, i64 2148285205}
!73 = !{i64 2154384775}
!74 = !{i64 2154387069}
!75 = !{i64 4994577}
!76 = !{i64 2154388032}
!77 = !{i64 2154388409}
!78 = !{i64 2154389742}
!79 = !{i64 2154390701}
!80 = !{i64 2154393733}
!81 = !{i64 2154394698}
!82 = !{i64 2154392409}
!83 = !{!"branch_weights", i32 1, i32 2000}
