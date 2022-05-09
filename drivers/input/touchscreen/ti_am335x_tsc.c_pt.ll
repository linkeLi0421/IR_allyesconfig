; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/ti_am335x_tsc.c_pt.bc'
source_filename = "../drivers/input/touchscreen/ti_am335x_tsc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ti_tscadc_dev = type { ptr, ptr, ptr, i32, ptr, i32, [2 x %struct.mfd_cell], i32, i32, i8, i8, %struct.wait_queue_head, %struct.spinlock, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.titsc = type { ptr, ptr, ptr, i32, i32, i32, i8, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_ti_am335x_tsc__352_563_ti_tsc_driver_init6 = internal global ptr @ti_tsc_driver_init, section ".initcall6.init", align 4
@ti_tsc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @titsc_probe, ptr @titsc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_tsc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @titsc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_tsc_driver_exit = internal global ptr @ti_tsc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description353 = internal constant [59 x i8] c"ti_am335x_tsc.description=TI touchscreen controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author354 = internal constant [50 x i8] c"ti_am335x_tsc.author=Rachna Patil <rachna@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [59 x i8] c"ti_am335x_tsc.file=drivers/input/touchscreen/ti_am335x_tsc\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [26 x i8] c"ti_am335x_tsc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TI-am335x-tsc\00", [18 x i8] zeroinitializer }, align 32
@ti_tsc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3359-tsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@titsc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @titsc_suspend, ptr @titsc_resume, ptr @titsc_suspend, ptr @titsc_resume, ptr @titsc_suspend, ptr @titsc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@titsc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate memory.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"titsc_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/input/touchscreen/ti_am335x_tsc.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@titsc_probe._entry_ptr = internal global ptr @titsc_probe._entry, section ".printk_index", align 4
@titsc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not find valid DT data.\0A\00", [33 x i8] zeroinitializer }, align 32
@titsc_probe._entry_ptr.8 = internal global ptr @titsc_probe._entry.6, section ".printk_index", align 4
@titsc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 446, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to allocate irq.\0A\00", [39 x i8] zeroinitializer }, align 32
@titsc_probe._entry_ptr.11 = internal global ptr @titsc_probe._entry.9, section ".printk_index", align 4
@titsc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"irq wake enable failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@titsc_probe._entry_ptr.14 = internal global ptr @titsc_probe._entry.12, section ".printk_index", align 4
@titsc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wrong i/p wire configuration\0A\00", [34 x i8] zeroinitializer }, align 32
@titsc_probe._entry_ptr.17 = internal global ptr @titsc_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ti-tsc\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,wires\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,x-plate-resistance\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,coordinate-readouts\00", [41 x i8] zeroinitializer }, align 32
@titsc_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 382, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"please use 'ti,coordinate-readouts' instead\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"titsc_parse_dt\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@titsc_parse_dt._entry_ptr = internal global ptr @titsc_parse_dt._entry, section ".printk_index", align 4
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,coordiante-readouts\00", [41 x i8] zeroinitializer }, align 32
@titsc_parse_dt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.3, i32 392, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid co-ordinate readouts, resetting it to 5\0A\00", [47 x i8] zeroinitializer }, align 32
@titsc_parse_dt._entry_ptr.28 = internal global ptr @titsc_parse_dt._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,charge-delay\00", [16 x i8] zeroinitializer }, align 32
@titsc_parse_dt._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.3, i32 404, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti,charge-delay not specified\0A\00", [33 x i8] zeroinitializer }, align 32
@titsc_parse_dt._entry_ptr.32 = internal global ptr @titsc_parse_dt._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,wire-config\00", [17 x i8] zeroinitializer }, align 32
@config_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32, i32 64, i32 128, i32 256], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 8]
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"ti_tsc_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 554, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 558, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"ti_tsc_dt_ids\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 548, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"titsc_pm_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 546, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 426, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 439, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 446, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 453, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 460, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 467, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 358, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 370, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 379, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 382, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 383, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 391, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 396, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 404, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 407, i32 42 }
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"config_pins\00", align 1
@___asan_gen_.140 = private constant [45 x i8] c"../drivers/input/touchscreen/ti_am335x_tsc.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 40, i32 18 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__exitcall_ti_tsc_driver_exit, ptr @__initcall__kmod_ti_am335x_tsc__352_563_ti_tsc_driver_init6, ptr @ti_tsc_driver_exit, ptr @titsc_parse_dt._entry, ptr @titsc_parse_dt._entry.26, ptr @titsc_parse_dt._entry.30, ptr @titsc_parse_dt._entry_ptr, ptr @titsc_parse_dt._entry_ptr.28, ptr @titsc_parse_dt._entry_ptr.32, ptr @titsc_probe._entry, ptr @titsc_probe._entry.12, ptr @titsc_probe._entry.15, ptr @titsc_probe._entry.6, ptr @titsc_probe._entry.9, ptr @titsc_probe._entry_ptr, ptr @titsc_probe._entry_ptr.11, ptr @titsc_probe._entry_ptr.14, ptr @titsc_probe._entry_ptr.17, ptr @titsc_probe._entry_ptr.8, ptr @ti_tsc_driver, ptr @.str, ptr @ti_tsc_dt_ids, ptr @titsc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @config_pins], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tsc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_tsc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @titsc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @titsc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @titsc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @titsc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @titsc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @titsc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @titsc_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @titsc_parse_dt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @titsc_parse_dt._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_tsc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_tsc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_tsc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_tsc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @titsc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 88) #11
  %call2 = tail call ptr @input_allocate_device() #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call2, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %err_free_mem

if.end:                                           ; preds = %entry
  %tsc = getelementptr inbounds %struct.ti_tscadc_dev, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %tsc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %tsc, align 8
  %mfd_tscadc = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %mfd_tscadc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %mfd_tscadc, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %call7.i.i, align 8
  %irq = getelementptr inbounds %struct.ti_tscadc_dev, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq4, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dev6 = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev5, ptr %dev6, align 8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.do.end12_crit_edge, label %if.end.i

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

if.end.i:                                         ; preds = %if.end
  %wires.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.19, ptr noundef %wires.i, i32 noundef 1, i32 noundef 0) #8
  %14 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.end.i.titsc_parse_dt.exit_crit_edge, label %if.end2.i

if.end.i.titsc_parse_dt.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %titsc_parse_dt.exit

if.end2.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %wires.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wires.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end2.i.do.end12_crit_edge [
    i32 4, label %if.end2.i.sw.epilog.i_crit_edge
    i32 5, label %if.end2.i.sw.epilog.i_crit_edge126
    i32 8, label %if.end2.i.sw.epilog.i_crit_edge127
  ]

if.end2.i.sw.epilog.i_crit_edge127:               ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end2.i.sw.epilog.i_crit_edge126:               ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end2.i.sw.epilog.i_crit_edge:                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end2.i.do.end12_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

sw.epilog.i:                                      ; preds = %if.end2.i.sw.epilog.i_crit_edge, %if.end2.i.sw.epilog.i_crit_edge126, %if.end2.i.sw.epilog.i_crit_edge127
  %x_plate_resistance.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 5
  %call.i.i78.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.20, ptr noundef %x_plate_resistance.i, i32 noundef 1, i32 noundef 0) #8
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i.i78.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78.i)
  %cmp5.i = icmp slt i32 %call.i.i78.i, 0
  br i1 %cmp5.i, label %sw.epilog.i.titsc_parse_dt.exit_crit_edge, label %if.end7.i

sw.epilog.i.titsc_parse_dt.exit_crit_edge:        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %titsc_parse_dt.exit

if.end7.i:                                        ; preds = %sw.epilog.i
  %coordinate_readouts.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 7
  %call.i.i79.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.21, ptr noundef %coordinate_readouts.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79.i)
  %cmp9.i = icmp slt i32 %call.i.i79.i, 0
  br i1 %cmp9.i, label %if.end14.i, label %if.end7.i.if.end17.i_crit_edge

if.end7.i.if.end17.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.end14.i:                                       ; preds = %if.end7.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.22) #12
  %call.i.i80.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.25, ptr noundef %coordinate_readouts.i, i32 noundef 1, i32 noundef 0) #8
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i.i80.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80.i)
  %cmp15.i = icmp slt i32 %call.i.i80.i, 0
  br i1 %cmp15.i, label %if.end14.i.titsc_parse_dt.exit_crit_edge, label %if.end14.i.if.end17.i_crit_edge

if.end14.i.if.end17.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.end14.i.titsc_parse_dt.exit_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %titsc_parse_dt.exit

if.end17.i:                                       ; preds = %if.end14.i.if.end17.i_crit_edge, %if.end7.i.if.end17.i_crit_edge
  %20 = ptrtoint ptr %coordinate_readouts.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %coordinate_readouts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp19.i = icmp slt i32 %21, 1
  br i1 %cmp19.i, label %do.end23.i, label %if.end17.i.if.end26.i_crit_edge

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.27) #12
  %22 = ptrtoint ptr %coordinate_readouts.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %coordinate_readouts.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end23.i, %if.end17.i.if.end26.i_crit_edge
  %charge_delay.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 18
  %call.i.i81.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.29, ptr noundef %charge_delay.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81.i)
  %cmp28.i = icmp slt i32 %call.i.i81.i, 0
  br i1 %cmp28.i, label %do.end44.i, label %if.end26.i.if.end50.i_crit_edge

if.end26.i.if.end50.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

do.end44.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %charge_delay.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1024, ptr %charge_delay.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.31) #12
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %if.end26.i.if.end50.i_crit_edge
  %config_inp.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.33, ptr noundef %config_inp.i, i32 noundef 4, i32 noundef 0) #8
  %24 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  br label %titsc_parse_dt.exit

titsc_parse_dt.exit:                              ; preds = %if.end50.i, %if.end14.i.titsc_parse_dt.exit_crit_edge, %sw.epilog.i.titsc_parse_dt.exit_crit_edge, %if.end.i.titsc_parse_dt.exit_crit_edge
  %retval.0.i = phi i32 [ %24, %if.end50.i ], [ %14, %if.end.i.titsc_parse_dt.exit_crit_edge ], [ %18, %sw.epilog.i.titsc_parse_dt.exit_crit_edge ], [ %19, %if.end14.i.titsc_parse_dt.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool8.not, label %if.end14, label %titsc_parse_dt.exit.do.end12_crit_edge

titsc_parse_dt.exit.do.end12_crit_edge:           ; preds = %titsc_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.end12:                                         ; preds = %titsc_parse_dt.exit.do.end12_crit_edge, %if.end2.i.do.end12_crit_edge, %if.end.do.end12_crit_edge
  %retval.0.i123 = phi i32 [ %retval.0.i, %titsc_parse_dt.exit.do.end12_crit_edge ], [ -22, %if.end.do.end12_crit_edge ], [ -22, %if.end2.i.do.end12_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.7) #12
  br label %err_free_mem

if.end14:                                         ; preds = %titsc_parse_dt.exit
  %25 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq4, align 4
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %27 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %26, ptr noundef nonnull @titsc_irq, ptr noundef null, i32 noundef 128, ptr noundef %30, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.10) #12
  br label %err_free_mem

if.end24:                                         ; preds = %if.end14
  %call26 = tail call i32 @device_init_wakeup(ptr noundef %dev5, i1 noundef zeroext true) #8
  %31 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq4, align 4
  %call29 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %dev5, i32 noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end24.if.end36_crit_edge, label %do.end34

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.13) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %if.end24.if.end36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %mfd_tscadc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mfd_tscadc, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 117440512) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %mfd_tscadc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mfd_tscadc, align 4
  %tscadc_base.i113 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %tscadc_base.i113 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tscadc_base.i113, align 8
  %add.ptr.i114 = getelementptr i8, ptr %40, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 67108864) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %mfd_tscadc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mfd_tscadc, align 4
  %tscadc_base.i116 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %tscadc_base.i116 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tscadc_base.i116, align 8
  %add.ptr.i117 = getelementptr i8, ptr %44, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 33554432) #8, !srcloc !82
  %arrayidx.i = getelementptr %struct.titsc, ptr %call7.i.i, i32 0, i32 8, i32 0
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 8
  %and.i = lshr i32 %46, 4
  %shr.i = and i32 %and.i, 15
  %and4.i = and i32 %46, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i)
  %cmp7.i = icmp ugt i32 %shr.i, 7
  br i1 %cmp7.i, label %if.end36.do.end42_crit_edge, label %if.end28.i, !prof !83

if.end36.do.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

for.cond.i:                                       ; preds = %if.end28.i
  %arrayidx.1.i = getelementptr %struct.titsc, ptr %call7.i.i, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.1.i, align 4
  %and.1.i = lshr i32 %48, 4
  %shr.1.i = and i32 %and.1.i, 15
  %and4.1.i = and i32 %48, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.1.i)
  %cmp7.1.i = icmp ugt i32 %shr.1.i, 7
  br i1 %cmp7.1.i, label %for.cond.i.do.end42_crit_edge, label %if.end28.1.i, !prof !83

for.cond.i.do.end42_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

if.end28.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and4.1.i)
  %cmp31.1.i = icmp ugt i32 %and4.1.i, 4
  br i1 %cmp31.1.i, label %if.end28.1.i.do.end42_crit_edge, label %for.cond.1.i, !prof !83

if.end28.1.i.do.end42_crit_edge:                  ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

for.cond.1.i:                                     ; preds = %if.end28.1.i
  %arrayidx.2.i = getelementptr %struct.titsc, ptr %call7.i.i, i32 0, i32 8, i32 2
  %49 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.2.i, align 8
  %and.2.i = lshr i32 %50, 4
  %shr.2.i = and i32 %and.2.i, 15
  %and4.2.i = and i32 %50, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.2.i)
  %cmp7.2.i = icmp ugt i32 %shr.2.i, 7
  br i1 %cmp7.2.i, label %for.cond.1.i.do.end42_crit_edge, label %if.end28.2.i, !prof !83

for.cond.1.i.do.end42_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

if.end28.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and4.2.i)
  %cmp31.2.i = icmp ugt i32 %and4.2.i, 4
  br i1 %cmp31.2.i, label %if.end28.2.i.do.end42_crit_edge, label %for.cond.2.i, !prof !83

if.end28.2.i.do.end42_crit_edge:                  ; preds = %if.end28.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

for.cond.2.i:                                     ; preds = %if.end28.2.i
  %arrayidx.3.i = getelementptr %struct.titsc, ptr %call7.i.i, i32 0, i32 8, i32 3
  %51 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.3.i, align 4
  %and.3.i = lshr i32 %52, 4
  %shr.3.i = and i32 %and.3.i, 15
  %and4.3.i = and i32 %52, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.3.i)
  %cmp7.3.i = icmp ugt i32 %shr.3.i, 7
  br i1 %cmp7.3.i, label %for.cond.2.i.do.end42_crit_edge, label %if.end28.3.i, !prof !83

for.cond.2.i.do.end42_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

if.end28.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and4.3.i)
  %cmp31.3.i = icmp ugt i32 %and4.3.i, 4
  br i1 %cmp31.3.i, label %if.end28.3.i.do.end42_crit_edge, label %for.cond.3.i, !prof !83

if.end28.3.i.do.end42_crit_edge:                  ; preds = %if.end28.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

for.cond.3.i:                                     ; preds = %if.end28.3.i
  %bit_yn.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 12
  %inp_yn.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 16
  %bit_yp.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 11
  %inp_yp.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 15
  %bit_xn.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 10
  %inp_xn.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 14
  %bit_xp.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 9
  %inp_xp.i = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 13
  %arrayidx69.i = getelementptr [4 x i32], ptr @config_pins, i32 0, i32 %and4.i
  %53 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx69.i, align 4
  %55 = zext i32 %and4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %and4.i, label %for.cond.3.i.for.inc77.i_crit_edge [
    i32 0, label %for.cond.3.i.for.inc77.sink.split.i_crit_edge
    i32 1, label %sw.bb73.i
    i32 2, label %sw.bb74.i
    i32 3, label %sw.bb75.i
  ]

for.cond.3.i.for.inc77.sink.split.i_crit_edge:    ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.sink.split.i

for.cond.3.i.for.inc77.i_crit_edge:               ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.i

if.end28.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and4.i)
  %cmp31.i = icmp ugt i32 %and4.i, 4
  br i1 %cmp31.i, label %if.end28.i.do.end42_crit_edge, label %for.cond.i, !prof !83

if.end28.i.do.end42_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

sw.bb73.i:                                        ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.sink.split.i

sw.bb74.i:                                        ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.sink.split.i

sw.bb75.i:                                        ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.sink.split.i

for.inc77.sink.split.i:                           ; preds = %sw.bb75.i, %sw.bb74.i, %sw.bb73.i, %for.cond.3.i.for.inc77.sink.split.i_crit_edge
  %bit_yn.sink.i = phi ptr [ %bit_yn.i, %sw.bb75.i ], [ %bit_yp.i, %sw.bb74.i ], [ %bit_xn.i, %sw.bb73.i ], [ %bit_xp.i, %for.cond.3.i.for.inc77.sink.split.i_crit_edge ]
  %inp_yn.sink.i = phi ptr [ %inp_yn.i, %sw.bb75.i ], [ %inp_yp.i, %sw.bb74.i ], [ %inp_xn.i, %sw.bb73.i ], [ %inp_xp.i, %for.cond.3.i.for.inc77.sink.split.i_crit_edge ]
  %56 = ptrtoint ptr %bit_yn.sink.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %bit_yn.sink.i, align 4
  %57 = ptrtoint ptr %inp_yn.sink.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shr.i, ptr %inp_yn.sink.i, align 4
  br label %for.inc77.i

for.inc77.i:                                      ; preds = %for.inc77.sink.split.i, %for.cond.3.i.for.inc77.i_crit_edge
  %arrayidx69.1.i = getelementptr [4 x i32], ptr @config_pins, i32 0, i32 %and4.1.i
  %58 = ptrtoint ptr %arrayidx69.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx69.1.i, align 4
  %60 = zext i32 %and4.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %and4.1.i, label %for.inc77.i.for.inc77.1.i_crit_edge [
    i32 0, label %sw.bb.1.i
    i32 1, label %sw.bb73.1.i
    i32 2, label %sw.bb74.1.i
    i32 3, label %for.inc77.i.for.inc77.1.sink.split.i_crit_edge
  ]

for.inc77.i.for.inc77.1.sink.split.i_crit_edge:   ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.1.sink.split.i

for.inc77.i.for.inc77.1.i_crit_edge:              ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.1.i

sw.bb74.1.i:                                      ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.1.sink.split.i

sw.bb73.1.i:                                      ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.1.sink.split.i

sw.bb.1.i:                                        ; preds = %for.inc77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.1.sink.split.i

for.inc77.1.sink.split.i:                         ; preds = %sw.bb.1.i, %sw.bb73.1.i, %sw.bb74.1.i, %for.inc77.i.for.inc77.1.sink.split.i_crit_edge
  %bit_xp.sink.i = phi ptr [ %bit_xp.i, %sw.bb.1.i ], [ %bit_xn.i, %sw.bb73.1.i ], [ %bit_yp.i, %sw.bb74.1.i ], [ %bit_yn.i, %for.inc77.i.for.inc77.1.sink.split.i_crit_edge ]
  %inp_xp.sink.i = phi ptr [ %inp_xp.i, %sw.bb.1.i ], [ %inp_xn.i, %sw.bb73.1.i ], [ %inp_yp.i, %sw.bb74.1.i ], [ %inp_yn.i, %for.inc77.i.for.inc77.1.sink.split.i_crit_edge ]
  %61 = ptrtoint ptr %bit_xp.sink.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %59, ptr %bit_xp.sink.i, align 4
  %62 = ptrtoint ptr %inp_xp.sink.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shr.1.i, ptr %inp_xp.sink.i, align 4
  br label %for.inc77.1.i

for.inc77.1.i:                                    ; preds = %for.inc77.1.sink.split.i, %for.inc77.i.for.inc77.1.i_crit_edge
  %arrayidx69.2.i = getelementptr [4 x i32], ptr @config_pins, i32 0, i32 %and4.2.i
  %63 = ptrtoint ptr %arrayidx69.2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx69.2.i, align 4
  %65 = zext i32 %and4.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %and4.2.i, label %for.inc77.1.i.for.inc77.2.i_crit_edge [
    i32 0, label %sw.bb.2.i
    i32 1, label %sw.bb73.2.i
    i32 2, label %sw.bb74.2.i
    i32 3, label %for.inc77.1.i.for.inc77.2.sink.split.i_crit_edge
  ]

for.inc77.1.i.for.inc77.2.sink.split.i_crit_edge: ; preds = %for.inc77.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.2.sink.split.i

for.inc77.1.i.for.inc77.2.i_crit_edge:            ; preds = %for.inc77.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.2.i

sw.bb74.2.i:                                      ; preds = %for.inc77.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.2.sink.split.i

sw.bb73.2.i:                                      ; preds = %for.inc77.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.2.sink.split.i

sw.bb.2.i:                                        ; preds = %for.inc77.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc77.2.sink.split.i

for.inc77.2.sink.split.i:                         ; preds = %sw.bb.2.i, %sw.bb73.2.i, %sw.bb74.2.i, %for.inc77.1.i.for.inc77.2.sink.split.i_crit_edge
  %bit_xp.sink117.i = phi ptr [ %bit_xp.i, %sw.bb.2.i ], [ %bit_xn.i, %sw.bb73.2.i ], [ %bit_yp.i, %sw.bb74.2.i ], [ %bit_yn.i, %for.inc77.1.i.for.inc77.2.sink.split.i_crit_edge ]
  %inp_xp.sink116.i = phi ptr [ %inp_xp.i, %sw.bb.2.i ], [ %inp_xn.i, %sw.bb73.2.i ], [ %inp_yp.i, %sw.bb74.2.i ], [ %inp_yn.i, %for.inc77.1.i.for.inc77.2.sink.split.i_crit_edge ]
  %66 = ptrtoint ptr %bit_xp.sink117.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %64, ptr %bit_xp.sink117.i, align 4
  %67 = ptrtoint ptr %inp_xp.sink116.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shr.2.i, ptr %inp_xp.sink116.i, align 4
  br label %for.inc77.2.i

for.inc77.2.i:                                    ; preds = %for.inc77.2.sink.split.i, %for.inc77.1.i.for.inc77.2.i_crit_edge
  %arrayidx69.3.i = getelementptr [4 x i32], ptr @config_pins, i32 0, i32 %and4.3.i
  %68 = ptrtoint ptr %arrayidx69.3.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx69.3.i, align 4
  %70 = zext i32 %and4.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and4.3.i, label %for.inc77.2.i.if.end44_crit_edge [
    i32 0, label %sw.bb.3.i
    i32 1, label %sw.bb73.3.i
    i32 2, label %sw.bb74.3.i
    i32 3, label %sw.bb75.3.i
  ]

for.inc77.2.i.if.end44_crit_edge:                 ; preds = %for.inc77.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

sw.bb75.3.i:                                      ; preds = %for.inc77.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %bit_yn.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %69, ptr %bit_yn.i, align 4
  %72 = ptrtoint ptr %inp_yn.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shr.3.i, ptr %inp_yn.i, align 4
  br label %if.end44

sw.bb74.3.i:                                      ; preds = %for.inc77.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %bit_yp.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %69, ptr %bit_yp.i, align 8
  %74 = ptrtoint ptr %inp_yp.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shr.3.i, ptr %inp_yp.i, align 8
  br label %if.end44

sw.bb73.3.i:                                      ; preds = %for.inc77.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %bit_xn.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %69, ptr %bit_xn.i, align 4
  %76 = ptrtoint ptr %inp_xn.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shr.3.i, ptr %inp_xn.i, align 4
  br label %if.end44

sw.bb.3.i:                                        ; preds = %for.inc77.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %bit_xp.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %69, ptr %bit_xp.i, align 8
  %78 = ptrtoint ptr %inp_xp.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %shr.3.i, ptr %inp_xp.i, align 8
  br label %if.end44

do.end42:                                         ; preds = %if.end28.i.do.end42_crit_edge, %if.end28.3.i.do.end42_crit_edge, %for.cond.2.i.do.end42_crit_edge, %if.end28.2.i.do.end42_crit_edge, %for.cond.1.i.do.end42_crit_edge, %if.end28.1.i.do.end42_crit_edge, %for.cond.i.do.end42_crit_edge, %if.end36.do.end42_crit_edge
  %.sink = phi i32 [ 87, %for.cond.2.i.do.end42_crit_edge ], [ 87, %for.cond.1.i.do.end42_crit_edge ], [ 87, %for.cond.i.do.end42_crit_edge ], [ 87, %if.end36.do.end42_crit_edge ], [ 89, %if.end28.i.do.end42_crit_edge ], [ 89, %if.end28.3.i.do.end42_crit_edge ], [ 89, %if.end28.2.i.do.end42_crit_edge ], [ 89, %if.end28.1.i.do.end42_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.16) #12
  br label %err_free_irq

if.end44:                                         ; preds = %sw.bb.3.i, %sw.bb73.3.i, %sw.bb74.3.i, %sw.bb75.3.i, %for.inc77.2.i.if.end44_crit_edge
  tail call fastcc void @titsc_step_config(ptr noundef nonnull %call7.i.i)
  %coordinate_readouts = getelementptr inbounds %struct.titsc, ptr %call7.i.i, i32 0, i32 7
  %79 = ptrtoint ptr %coordinate_readouts to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %coordinate_readouts, align 4
  %mul = shl i32 %80, 1
  %sub = or i32 %mul, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %81 = tail call i32 @llvm.bswap.i32(i32 %sub) #8
  %82 = ptrtoint ptr %mfd_tscadc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mfd_tscadc, align 4
  %tscadc_base.i119 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %tscadc_base.i119 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tscadc_base.i119, align 8
  %add.ptr.i120 = getelementptr i8, ptr %85, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %81) #8, !srcloc !82
  %86 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.18, ptr %call2, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 1
  %87 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %dev5, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 5
  %88 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 10, ptr %evbit, align 8
  %arrayidx48 = getelementptr %struct.input_dev, ptr %call2, i32 0, i32 6, i32 10
  %89 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1024, ptr %arrayidx48, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 24, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #8
  %call49 = tail call i32 @input_register_device(ptr noundef nonnull %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end44.err_free_irq_crit_edge

if.end44.err_free_irq_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

if.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %90 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_free_irq:                                     ; preds = %if.end44.err_free_irq_crit_edge, %do.end42
  %err.0 = phi i32 [ -22, %do.end42 ], [ %call49, %if.end44.err_free_irq_crit_edge ]
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev5) #8
  %call55 = tail call i32 @device_init_wakeup(ptr noundef %dev5, i1 noundef zeroext false) #8
  %91 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq4, align 4
  %call57 = tail call ptr @free_irq(i32 noundef %92, ptr noundef nonnull %call7.i.i) #8
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_irq, %do.end22, %do.end12, %do.end
  %err.1 = phi i32 [ %retval.0.i123, %do.end12 ], [ %call.i, %do.end22 ], [ %err.0, %err_free_irq ], [ -12, %do.end ]
  tail call void @input_free_device(ptr noundef %call2) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_mem, %if.end52
  %retval.0 = phi i32 [ %err.1, %err_free_mem ], [ 0, %if.end52 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @titsc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev) #8
  %call2 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #8
  %irq = getelementptr inbounds %struct.titsc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #8
  %coordinate_readouts = getelementptr inbounds %struct.titsc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %coordinate_readouts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %coordinate_readouts, align 4
  %mul = shl i32 %5, 1
  %add = add i32 %mul, 2
  %notmask = shl nsw i32 -1, %add
  %sub = xor i32 %notmask, -1
  %mfd_tscadc = getelementptr inbounds %struct.titsc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mfd_tscadc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mfd_tscadc, align 4
  tail call void @am335x_tsc_se_clr(ptr noundef %7, i32 noundef %sub) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %9) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @titsc_irq(i32 noundef %irq, ptr nocapture noundef %dev) #2 align 64 {
entry:
  %yvals.i = alloca [7 x i32], align 4
  %xvals.i = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mfd_tscadc.i = getelementptr inbounds %struct.titsc, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !84
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pen_down = getelementptr inbounds %struct.titsc, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %pen_down to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %pen_down, align 4
  %dev1 = getelementptr inbounds %struct.titsc, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  tail call void @pm_stay_awake(ptr noundef %10) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irqclr.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and2 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end12_crit_edge, label %if.then4

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %11 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i86 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %tscadc_base.i86 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tscadc_base.i86, align 8
  %add.ptr.i87 = getelementptr i8, ptr %14, i32 68
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %15)
  %cmp = icmp eq i32 %15, 268435456
  %pen_down7 = getelementptr inbounds %struct.titsc, ptr %dev, i32 0, i32 6
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %pen_down7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %pen_down7, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %dev8 = getelementptr inbounds %struct.titsc, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev8, align 4
  tail call void @pm_relax(ptr noundef %18) #8
  br label %if.end10

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %pen_down7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %pen_down7, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %or11 = or i32 %irqclr.0, 512
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end.if.end12_crit_edge
  %irqclr.1 = phi i32 [ %or11, %if.end10 ], [ %irqclr.0, %if.end.if.end12_crit_edge ]
  %and13 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %20 = or i32 %irqclr.1, %and13
  %and18 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end33, label %if.then20

if.then20:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %yvals.i) #8
  %21 = call ptr @memset(ptr %yvals.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xvals.i) #8
  %coordinate_readouts.i = getelementptr inbounds %struct.titsc, ptr %dev, i32 0, i32 7
  %22 = call ptr @memset(ptr %xvals.i, i32 255, i32 28)
  %23 = ptrtoint ptr %coordinate_readouts.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %coordinate_readouts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp90.not.i = icmp eq i32 %24, 0
  br i1 %cmp90.not.i, label %if.then20.for.end.i_crit_edge, label %if.then20.for.body.i_crit_edge

if.then20.for.body.i_crit_edge:                   ; preds = %if.then20
  br label %for.body.i

if.then20.for.end.i_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then20.for.body.i_crit_edge
  %i.091.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then20.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %tscadc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tscadc_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 256
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %arrayidx.i = getelementptr [7 x i32], ptr %yvals.i, i32 0, i32 %i.091.i
  %30 = and i32 %29, -15794176
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.091.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then20.for.end.i_crit_edge
  %33 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i82.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %tscadc_base.i82.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tscadc_base.i82.i, align 8
  %add.ptr.i83.i = getelementptr i8, ptr %36, i32 256
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83.i) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %38 = and i32 %37, -15794176
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  %40 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i85.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %tscadc_base.i85.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tscadc_base.i85.i, align 8
  %add.ptr.i86.i = getelementptr i8, ptr %43, i32 256
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86.i) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %45 = and i32 %44, -15794176
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  br i1 %cmp90.not.i, label %for.end.i.for.end25.i_crit_edge, label %for.end.i.for.body8.i_crit_edge

for.end.i.for.body8.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body8.i

for.end.i.for.end25.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.end.i.for.body8.i_crit_edge
  %i.193.i = phi i32 [ %inc14.i, %for.body8.i.for.body8.i_crit_edge ], [ 0, %for.end.i.for.body8.i_crit_edge ]
  %47 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i88.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %tscadc_base.i88.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tscadc_base.i88.i, align 8
  %add.ptr.i89.i = getelementptr i8, ptr %50, i32 256
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89.i) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %arrayidx10.i = getelementptr [7 x i32], ptr %xvals.i, i32 0, i32 %i.193.i
  %52 = and i32 %51, -15794176
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  %54 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx10.i, align 4
  %inc14.i = add nuw i32 %i.193.i, 1
  %exitcond105.not.i = icmp eq i32 %inc14.i, %24
  br i1 %exitcond105.not.i, label %for.end15.i, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.i

for.end15.i:                                      ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp16.i = icmp ult i32 %24, 4
  br i1 %cmp16.i, label %for.body19.i, label %for.body30.preheader.i

for.body19.i:                                     ; preds = %for.end15.i
  %55 = ptrtoint ptr %yvals.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %yvals.i, align 4
  %57 = ptrtoint ptr %xvals.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %xvals.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %exitcond107.not.i = icmp eq i32 %24, 1
  br i1 %exitcond107.not.i, label %for.body19.i.for.end25.i_crit_edge, label %for.body19.i.1

for.body19.i.for.end25.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25.i

for.body19.i.1:                                   ; preds = %for.body19.i
  %arrayidx20.i.1 = getelementptr inbounds [7 x i32], ptr %yvals.i, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx20.i.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx20.i.1, align 4
  %add.i.1 = add i32 %60, %56
  %arrayidx21.i.1 = getelementptr inbounds [7 x i32], ptr %xvals.i, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx21.i.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx21.i.1, align 4
  %add22.i.1 = add i32 %62, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %exitcond107.not.i.1 = icmp eq i32 %24, 2
  br i1 %exitcond107.not.i.1, label %for.body19.i.1.for.end25.i_crit_edge, label %for.body19.i.2

for.body19.i.1.for.end25.i_crit_edge:             ; preds = %for.body19.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25.i

for.body19.i.2:                                   ; preds = %for.body19.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx20.i.2 = getelementptr inbounds [7 x i32], ptr %yvals.i, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx20.i.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx20.i.2, align 4
  %add.i.2 = add i32 %64, %add.i.1
  %arrayidx21.i.2 = getelementptr inbounds [7 x i32], ptr %xvals.i, i32 0, i32 2
  %65 = ptrtoint ptr %arrayidx21.i.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx21.i.2, align 4
  %add22.i.2 = add i32 %66, %add22.i.1
  br label %for.end25.i

for.end25.i:                                      ; preds = %for.body19.i.2, %for.body19.i.1.for.end25.i_crit_edge, %for.body19.i.for.end25.i_crit_edge, %for.end.i.for.end25.i_crit_edge
  %xsum.0.lcssa.i = phi i32 [ 0, %for.end.i.for.end25.i_crit_edge ], [ %58, %for.body19.i.for.end25.i_crit_edge ], [ %add22.i.1, %for.body19.i.1.for.end25.i_crit_edge ], [ %add22.i.2, %for.body19.i.2 ]
  %ysum.0.lcssa.i = phi i32 [ 0, %for.end.i.for.end25.i_crit_edge ], [ %56, %for.body19.i.for.end25.i_crit_edge ], [ %add.i.1, %for.body19.i.1.for.end25.i_crit_edge ], [ %add.i.2, %for.body19.i.2 ]
  %div.i = udiv i32 %ysum.0.lcssa.i, %24
  %div26.i = udiv i32 %xsum.0.lcssa.i, %24
  br label %titsc_read_coordinates.exit

for.body30.preheader.i:                           ; preds = %for.end15.i
  call void @sort(ptr noundef nonnull %yvals.i, i32 noundef %24, i32 noundef 4, ptr noundef nonnull @titsc_cmp_coord, ptr noundef null) #8
  call void @sort(ptr noundef nonnull %xvals.i, i32 noundef %24, i32 noundef 4, ptr noundef nonnull @titsc_cmp_coord, ptr noundef null) #8
  %67 = add i32 %24, -2
  br label %for.body30.i

for.body30.i:                                     ; preds = %for.body30.i.for.body30.i_crit_edge, %for.body30.preheader.i
  %ysum.197.i = phi i32 [ %add32.i, %for.body30.i.for.body30.i_crit_edge ], [ 0, %for.body30.preheader.i ]
  %xsum.196.i = phi i32 [ %add34.i, %for.body30.i.for.body30.i_crit_edge ], [ 0, %for.body30.preheader.i ]
  %i.395.i = phi i32 [ %inc36.i, %for.body30.i.for.body30.i_crit_edge ], [ 1, %for.body30.preheader.i ]
  %arrayidx31.i = getelementptr [7 x i32], ptr %yvals.i, i32 0, i32 %i.395.i
  %68 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx31.i, align 4
  %add32.i = add i32 %69, %ysum.197.i
  %arrayidx33.i = getelementptr [7 x i32], ptr %xvals.i, i32 0, i32 %i.395.i
  %70 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx33.i, align 4
  %add34.i = add i32 %71, %xsum.196.i
  %inc36.i = add nuw i32 %i.395.i, 1
  %exitcond106.not.i = icmp eq i32 %i.395.i, %67
  br i1 %exitcond106.not.i, label %for.end37.i, label %for.body30.i.for.body30.i_crit_edge

for.body30.i.for.body30.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30.i

for.end37.i:                                      ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  %div39.i = udiv i32 %add32.i, %67
  %div41.i = udiv i32 %add34.i, %67
  br label %titsc_read_coordinates.exit

titsc_read_coordinates.exit:                      ; preds = %for.end37.i, %for.end25.i
  %xsum.2.i = phi i32 [ %div26.i, %for.end25.i ], [ %div41.i, %for.end37.i ]
  %ysum.2.i = phi i32 [ %div.i, %for.end25.i ], [ %div39.i, %for.end37.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xvals.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %yvals.i) #8
  %pen_down21 = getelementptr inbounds %struct.titsc, ptr %dev, i32 0, i32 6
  %72 = ptrtoint ptr %pen_down21 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pen_down21, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool22.not = icmp eq i8 %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp23.not = icmp eq i32 %38, 0
  %or.cond = select i1 %tobool22.not, i1 true, i1 %cmp23.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp25.not = icmp eq i32 %45, 0
  %or.cond94 = select i1 %or.cond, i1 true, i1 %cmp25.not
  br i1 %or.cond94, label %titsc_read_coordinates.exit.if.end33.thread_crit_edge, label %if.then26

titsc_read_coordinates.exit.if.end33.thread_crit_edge: ; preds = %titsc_read_coordinates.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.thread

if.then26:                                        ; preds = %titsc_read_coordinates.exit
  %sub = sub nsw i32 %39, %46
  %mul = mul i32 %xsum.2.i, %sub
  %x_plate_resistance = getelementptr inbounds %struct.titsc, ptr %dev, i32 0, i32 5
  %74 = ptrtoint ptr %x_plate_resistance to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %x_plate_resistance, align 4
  %mul27 = mul i32 %mul, %75
  %div = udiv i32 %mul27, %46
  %add = add i32 %div, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %add)
  %cmp28 = icmp ult i32 %add, 16777216
  br i1 %cmp28, label %if.then29, label %if.then26.if.end33.thread_crit_edge

if.then26.if.end33.thread_crit_edge:              ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.thread

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %add, 12
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %xsum.2.i) #8
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %ysum.2.i) #8
  call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 24, i32 noundef %shr) #8
  call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef 1) #8
  call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %if.end33.thread

if.end33.thread:                                  ; preds = %if.then29, %if.then26.if.end33.thread_crit_edge, %titsc_read_coordinates.exit.if.end33.thread_crit_edge
  %or32 = or i32 %20, 4
  br label %if.then35

if.end33:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool34.not = icmp eq i32 %20, 0
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %if.end33.if.then35_crit_edge

if.end33.if.then35_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %if.end33.if.then35_crit_edge, %if.end33.thread
  %irqclr.393 = phi i32 [ %or32, %if.end33.thread ], [ %20, %if.end33.if.then35_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @arm_heavy_mb() #8
  %76 = call i32 @llvm.bswap.i32(i32 %irqclr.393) #8
  %77 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i89 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %tscadc_base.i89 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tscadc_base.i89, align 8
  %add.ptr.i90 = getelementptr i8, ptr %80, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %76) #8, !srcloc !82
  br i1 %tobool14.not, label %if.then35.cleanup_crit_edge, label %if.then38

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mfd_tscadc.i, align 4
  %step_mask = getelementptr inbounds %struct.titsc, ptr %dev, i32 0, i32 17
  %83 = ptrtoint ptr %step_mask to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %step_mask, align 4
  call void @am335x_tsc_se_set_cache(ptr noundef %82, i32 noundef %84) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.then35.cleanup_crit_edge, %if.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then38 ], [ 1, %if.then35.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @titsc_step_config(ptr noundef %ts_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bit_xp = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 9
  %0 = ptrtoint ptr %bit_xp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit_xp, align 4
  %or46 = or i32 %1, 262162
  %wires = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 4
  %2 = ptrtoint ptr %wires to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wires, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 4, label %do.end62
    i32 5, label %sw.bb68
    i32 8, label %do.end113
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end62:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inp_yp = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 15
  %5 = ptrtoint ptr %inp_yp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inp_yp, align 4
  %shl = shl i32 %6, 19
  %and65 = and i32 %shl, 7864320
  %bit_xn = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 10
  %7 = ptrtoint ptr %bit_xn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit_xn, align 4
  %or66 = or i32 %and65, %or46
  %or67 = or i32 %or66, %8
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bit_yn = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 12
  %9 = ptrtoint ptr %bit_yn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bit_yn, align 4
  %bit_xn86 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 10
  %11 = ptrtoint ptr %bit_xn86 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bit_xn86, align 4
  %bit_yp = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 11
  %13 = ptrtoint ptr %bit_yp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bit_yp, align 4
  %or85 = or i32 %1, %10
  %or87 = or i32 %or85, %12
  %or88 = or i32 %or87, %14
  %or89 = or i32 %or88, 2359314
  br label %sw.epilog

do.end113:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inp_yp98 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 15
  %15 = ptrtoint ptr %inp_yp98 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inp_yp98, align 4
  %shl116 = shl i32 %16, 19
  %and117 = and i32 %shl116, 7864320
  %bit_xn118 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 10
  %17 = ptrtoint ptr %bit_xn118 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bit_xn118, align 4
  %or119 = or i32 %and117, %or46
  %or120 = or i32 %or119, %18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end113, %sw.bb68, %do.end62, %entry.sw.epilog_crit_edge
  %config.0 = phi i32 [ %or46, %entry.sw.epilog_crit_edge ], [ %or120, %do.end113 ], [ %or89, %sw.bb68 ], [ %or67, %do.end62 ]
  %coordinate_readouts = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 7
  %19 = ptrtoint ptr %coordinate_readouts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %coordinate_readouts, align 4
  %mul = shl i32 %20, 1
  %add = add i32 %mul, 2
  %sub = sub i32 14, %mul
  %sub123 = sub i32 16, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub123)
  %cmp660 = icmp slt i32 %sub123, 16
  br i1 %cmp660, label %for.body.lr.ph, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %21 = tail call i32 @llvm.bswap.i32(i32 %config.0) #8
  %mfd_tscadc.i = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0662 = phi i32 [ %sub123, %for.body.lr.ph ], [ %inc147, %for.body.for.body_crit_edge ]
  %n.0661 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul124 = shl i32 %i.0662, 3
  %add125 = add i32 %mul124, 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %25, i32 %add125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #8, !srcloc !82
  %add127 = add i32 %mul124, 104
  %inc = add nuw i32 %n.0661, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0661)
  %cmp128 = icmp eq i32 %n.0661, 0
  %spec.select = select i1 %cmp128, i32 -1744830464, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i631 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %tscadc_base.i631 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tscadc_base.i631, align 8
  %add.ptr.i632 = getelementptr i8, ptr %29, i32 %add127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i632, i32 %spec.select) #8, !srcloc !82
  %inc147 = add nsw i32 %i.0662, 1
  %exitcond.not = icmp eq i32 %inc, %20
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %bit_yn181 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 12
  %30 = ptrtoint ptr %bit_yn181 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bit_yn181, align 4
  %or199 = or i32 %31, 262162
  %32 = ptrtoint ptr %wires to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wires, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %33, label %for.end.sw.epilog284_crit_edge [
    i32 4, label %do.end224
    i32 5, label %sw.bb231
    i32 8, label %do.end277
  ]

for.end.sw.epilog284_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog284

do.end224:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %inp_xp = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 13
  %35 = ptrtoint ptr %inp_xp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inp_xp, align 4
  %bit_yp202 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 11
  %37 = ptrtoint ptr %bit_yp202 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bit_yp202, align 4
  %shl227 = shl i32 %36, 19
  %and228 = and i32 %shl227, 7864320
  %or229 = or i32 %and228, %or199
  %or230 = or i32 %or229, %38
  br label %sw.epilog284

sw.bb231:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %bit_xp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bit_xp, align 4
  %or251 = or i32 %31, %40
  %or252 = or i32 %or251, 2360850
  br label %sw.epilog284

do.end277:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %inp_xp262 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 13
  %41 = ptrtoint ptr %inp_xp262 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %inp_xp262, align 4
  %bit_yp254 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 11
  %43 = ptrtoint ptr %bit_yp254 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bit_yp254, align 4
  %shl280 = shl i32 %42, 19
  %and281 = and i32 %shl280, 7864320
  %or282 = or i32 %and281, %or199
  %or283 = or i32 %or282, %44
  br label %sw.epilog284

sw.epilog284:                                     ; preds = %do.end277, %sw.bb231, %do.end224, %for.end.sw.epilog284_crit_edge
  %config.1 = phi i32 [ %or199, %for.end.sw.epilog284_crit_edge ], [ %or283, %do.end277 ], [ %or252, %sw.bb231 ], [ %or230, %do.end224 ]
  %45 = ptrtoint ptr %coordinate_readouts to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %coordinate_readouts, align 4
  %add286 = add i32 %46, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add286)
  %cmp288663 = icmp slt i32 %sub, %add286
  br i1 %cmp288663, label %for.body289.lr.ph, label %sw.epilog284.for.end318_crit_edge

sw.epilog284.for.end318_crit_edge:                ; preds = %sw.epilog284
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end318

for.body289.lr.ph:                                ; preds = %sw.epilog284
  %47 = tail call i32 @llvm.bswap.i32(i32 %config.1) #8
  %mfd_tscadc.i633 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 1
  br label %for.body289

for.body289:                                      ; preds = %for.body289.for.body289_crit_edge, %for.body289.lr.ph
  %i.1665 = phi i32 [ %sub, %for.body289.lr.ph ], [ %inc317, %for.body289.for.body289_crit_edge ]
  %n.1664 = phi i32 [ 0, %for.body289.lr.ph ], [ %inc294, %for.body289.for.body289_crit_edge ]
  %mul290 = shl i32 %i.1665, 3
  %add291 = add i32 %mul290, 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %mfd_tscadc.i633 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mfd_tscadc.i633, align 4
  %tscadc_base.i634 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %tscadc_base.i634 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tscadc_base.i634, align 8
  %add.ptr.i635 = getelementptr i8, ptr %51, i32 %add291
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i635, i32 %47) #8, !srcloc !82
  %add293 = add i32 %mul290, 104
  %inc294 = add i32 %n.1664, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1664)
  %cmp295 = icmp eq i32 %n.1664, 0
  %spec.select625 = select i1 %cmp295, i32 -1744830464, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %mfd_tscadc.i633 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mfd_tscadc.i633, align 4
  %tscadc_base.i637 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %tscadc_base.i637 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tscadc_base.i637, align 8
  %add.ptr.i638 = getelementptr i8, ptr %55, i32 %add293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i638, i32 %spec.select625) #8, !srcloc !82
  %inc317 = add nsw i32 %i.1665, 1
  %exitcond669.not = icmp eq i32 %inc294, %46
  br i1 %exitcond669.not, label %for.body289.for.end318_crit_edge, label %for.body289.for.body289_crit_edge

for.body289.for.body289_crit_edge:                ; preds = %for.body289
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body289

for.body289.for.end318_crit_edge:                 ; preds = %for.body289
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end318

for.end318:                                       ; preds = %for.body289.for.end318_crit_edge, %sw.epilog284.for.end318_crit_edge
  %mfd_tscadc.i639 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 1
  %56 = ptrtoint ptr %mfd_tscadc.i639 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mfd_tscadc.i639, align 4
  %tscadc_base.i640 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %tscadc_base.i640 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tscadc_base.i640, align 8
  %add.ptr.i641 = getelementptr i8, ptr %59, i32 88
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i641) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %mfd_tscadc.i639 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mfd_tscadc.i639, align 4
  %tscadc_base.i643 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %tscadc_base.i643 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tscadc_base.i643, align 8
  %add.ptr.i644 = getelementptr i8, ptr %64, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i644, i32 %60) #8, !srcloc !82
  %charge_delay = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 18
  %65 = ptrtoint ptr %charge_delay to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %charge_delay, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #8
  %68 = ptrtoint ptr %mfd_tscadc.i639 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mfd_tscadc.i639, align 4
  %tscadc_base.i646 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %tscadc_base.i646 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tscadc_base.i646, align 8
  %add.ptr.i647 = getelementptr i8, ptr %71, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i647, i32 %67) #8, !srcloc !82
  %inp_xp380 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 13
  %72 = ptrtoint ptr %inp_xp380 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %inp_xp380, align 4
  %bit_yp352 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 11
  %74 = ptrtoint ptr %bit_yp352 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bit_yp352, align 4
  %bit_xn354 = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 10
  %76 = ptrtoint ptr %bit_xn354 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bit_xn354, align 4
  %shl398 = shl i32 %73, 19
  %and399 = and i32 %shl398, 7864320
  %or353 = or i32 %and399, %75
  %or372 = or i32 %or353, %77
  %or400 = or i32 %or372, 262162
  %mul401 = shl i32 %add286, 3
  %add402 = add i32 %mul401, 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %78 = tail call i32 @llvm.bswap.i32(i32 %or400) #8
  %79 = ptrtoint ptr %mfd_tscadc.i639 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mfd_tscadc.i639, align 4
  %tscadc_base.i649 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %tscadc_base.i649 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tscadc_base.i649, align 8
  %add.ptr.i650 = getelementptr i8, ptr %82, i32 %add402
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i650, i32 %78) #8, !srcloc !82
  %add404 = add i32 %mul401, 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %mfd_tscadc.i639 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mfd_tscadc.i639, align 4
  %tscadc_base.i652 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %tscadc_base.i652 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tscadc_base.i652, align 8
  %add.ptr.i653 = getelementptr i8, ptr %86, i32 %add404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i653, i32 -1744830464) #8, !srcloc !82
  %inp_yn = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 16
  %87 = ptrtoint ptr %inp_yn to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %inp_yn, align 4
  %89 = ptrtoint ptr %bit_yp352 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bit_yp352, align 4
  %91 = ptrtoint ptr %bit_xn354 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bit_xn354, align 4
  %shl500 = shl i32 %88, 19
  %and501 = and i32 %shl500, 7864320
  %or456 = or i32 %and501, %90
  %or475 = or i32 %or456, %92
  %or502 = or i32 %or475, 262162
  %add504 = add i32 %mul401, 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %93 = tail call i32 @llvm.bswap.i32(i32 %or502) #8
  %94 = ptrtoint ptr %mfd_tscadc.i639 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mfd_tscadc.i639, align 4
  %tscadc_base.i655 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %tscadc_base.i655 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tscadc_base.i655, align 8
  %add.ptr.i656 = getelementptr i8, ptr %97, i32 %add504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i656, i32 %93) #8, !srcloc !82
  %add506 = add i32 %mul401, 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %98 = ptrtoint ptr %mfd_tscadc.i639 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mfd_tscadc.i639, align 4
  %tscadc_base.i658 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %tscadc_base.i658 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tscadc_base.i658, align 8
  %add.ptr.i659 = getelementptr i8, ptr %101, i32 %add506
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i659, i32 -1744830464) #8, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp524666 = icmp sgt i32 %add, 0
  br i1 %cmp524666, label %for.end318.for.body525_crit_edge, label %for.end318.for.end532_crit_edge

for.end318.for.end532_crit_edge:                  ; preds = %for.end318
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end532

for.end318.for.body525_crit_edge:                 ; preds = %for.end318
  br label %for.body525

for.body525:                                      ; preds = %for.body525.for.body525_crit_edge, %for.end318.for.body525_crit_edge
  %i.2668 = phi i32 [ %inc531, %for.body525.for.body525_crit_edge ], [ 0, %for.end318.for.body525_crit_edge ]
  %stepenable.0667 = phi i32 [ %or529, %for.body525.for.body525_crit_edge ], [ 1, %for.end318.for.body525_crit_edge ]
  %102 = sub i32 %i.2668, %mul
  %add527 = add i32 %102, 15
  %shl528 = shl nuw i32 1, %add527
  %or529 = or i32 %shl528, %stepenable.0667
  %inc531 = add nuw nsw i32 %i.2668, 1
  %exitcond670.not = icmp eq i32 %inc531, %add
  br i1 %exitcond670.not, label %for.body525.for.end532_crit_edge, label %for.body525.for.body525_crit_edge

for.body525.for.body525_crit_edge:                ; preds = %for.body525
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body525

for.body525.for.end532_crit_edge:                 ; preds = %for.body525
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end532

for.end532:                                       ; preds = %for.body525.for.end532_crit_edge, %for.end318.for.end532_crit_edge
  %stepenable.0.lcssa = phi i32 [ 1, %for.end318.for.end532_crit_edge ], [ %or529, %for.body525.for.end532_crit_edge ]
  %step_mask = getelementptr inbounds %struct.titsc, ptr %ts_dev, i32 0, i32 17
  %103 = ptrtoint ptr %step_mask to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %stepenable.0.lcssa, ptr %step_mask, align 4
  %104 = ptrtoint ptr %mfd_tscadc.i639 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mfd_tscadc.i639, align 4
  tail call void @am335x_tsc_se_set_cache(ptr noundef %105, i32 noundef %stepenable.0.lcssa) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_stay_awake(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_relax(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @am335x_tsc_se_set_cache(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @titsc_cmp_coord(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @am335x_tsc_se_clr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @titsc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %mfd_tscadc.i = getelementptr inbounds %struct.titsc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 117440512) #8, !srcloc !82
  %9 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i8 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tscadc_base.i8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tscadc_base.i8, align 8
  %add.ptr.i9 = getelementptr i8, ptr %12, i32 44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #8, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %14 = or i32 %13, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i11 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %tscadc_base.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tscadc_base.i11, align 8
  %add.ptr.i12 = getelementptr i8, ptr %18, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %14) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i14 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %tscadc_base.i14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tscadc_base.i14, align 8
  %add.ptr.i15 = getelementptr i8, ptr %22, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 16777216) #8, !srcloc !82
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @titsc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %mfd_tscadc.i = getelementptr inbounds %struct.titsc, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %mfd_tscadc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mfd_tscadc.i, align 4
  %tscadc_base.i9 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tscadc_base.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tscadc_base.i9, align 8
  %add.ptr.i10 = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 16777216) #8, !srcloc !82
  tail call void @pm_relax(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @titsc_step_config(ptr noundef %1)
  %coordinate_readouts = getelementptr inbounds %struct.titsc, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %coordinate_readouts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %coordinate_readouts, align 4
  %mul = shl i32 %14, 1
  %sub = or i32 %mul, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %sub) #8
  %mfd_tscadc.i11 = getelementptr inbounds %struct.titsc, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %mfd_tscadc.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mfd_tscadc.i11, align 4
  %tscadc_base.i12 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %tscadc_base.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tscadc_base.i12, align 8
  %add.ptr.i13 = getelementptr i8, ptr %19, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %15) #8, !srcloc !82
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_ti_am335x_tsc__352_563_ti_tsc_driver_init6, !1, !"__initcall__kmod_ti_am335x_tsc__352_563_ti_tsc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 563, i32 1}
!2 = !{ptr @__exitcall_ti_tsc_driver_exit, !1, !"__exitcall_ti_tsc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description353, !4, !"__UNIQUE_ID_description353", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 565, i32 1}
!5 = !{ptr @__UNIQUE_ID_author354, !6, !"__UNIQUE_ID_author354", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 566, i32 1}
!7 = !{ptr @__UNIQUE_ID_file355, !8, !"__UNIQUE_ID_file355", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 567, i32 1}
!9 = !{ptr @__UNIQUE_ID_license356, !8, !"__UNIQUE_ID_license356", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 558, i32 13}
!12 = !{ptr @ti_tsc_driver, !13, !"ti_tsc_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 554, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 426, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @titsc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @titsc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 439, i32 3}
!24 = !{ptr @titsc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @titsc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 446, i32 3}
!28 = !{ptr @titsc_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @titsc_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 453, i32 3}
!32 = !{ptr @titsc_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @titsc_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 460, i32 3}
!36 = !{ptr @titsc_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @titsc_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 467, i32 20}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 358, i32 35}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 370, i32 35}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 379, i32 35}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 382, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @titsc_parse_dt._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @titsc_parse_dt._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 383, i32 36}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 391, i32 3}
!56 = !{ptr @titsc_parse_dt._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @titsc_parse_dt._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 396, i32 35}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 404, i32 3}
!62 = !{ptr @titsc_parse_dt._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @titsc_parse_dt._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 407, i32 42}
!66 = !{ptr @config_pins, !67, !"config_pins", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 40, i32 18}
!68 = !{ptr @ti_tsc_dt_ids, !69, !"ti_tsc_dt_ids", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 548, i32 34}
!70 = !{ptr @titsc_pm_ops, !71, !"titsc_pm_ops", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/ti_am335x_tsc.c", i32 546, i32 8}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2154028181}
!82 = !{i64 6103079}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 6103497}
!85 = !{i64 2154027950}
!86 = !{i8 0, i8 2}
