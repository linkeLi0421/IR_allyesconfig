; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/imx6ul_tsc.c_pt.bc'
source_filename = "../drivers/input/touchscreen/imx6ul_tsc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.imx6ul_tsc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, %struct.completion }

@__initcall__kmod_imx6ul_tsc__227_565_imx6ul_tsc_driver_init6 = internal global ptr @imx6ul_tsc_driver_init, section ".initcall6.init", align 4
@imx6ul_tsc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx6ul_tsc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx6ul_tsc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx6ul_tsc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx6ul_tsc_driver_exit = internal global ptr @imx6ul_tsc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [56 x i8] c"imx6ul_tsc.author=Haibo Chen <haibo.chen@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [71 x i8] c"imx6ul_tsc.description=Freescale i.MX6UL Touchscreen controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [53 x i8] c"imx6ul_tsc.file=drivers/input/touchscreen/imx6ul_tsc\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [26 x i8] c"imx6ul_tsc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx6ul-tsc\00", [21 x i8] zeroinitializer }, align 32
@imx6ul_tsc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-tsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx6ul_tsc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx6ul_tsc_suspend, ptr @imx6ul_tsc_resume, ptr @imx6ul_tsc_suspend, ptr @imx6ul_tsc_resume, ptr @imx6ul_tsc_suspend, ptr @imx6ul_tsc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iMX6UL Touchscreen Controller\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xnur\00", [27 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 411, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to request GPIO tsc_X- (xnur): %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx6ul_tsc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/touchscreen/imx6ul_tsc.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry_ptr = internal global ptr @imx6ul_tsc_probe._entry, section ".printk_index", align 4
@imx6ul_tsc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 418, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to remap tsc memory: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry_ptr.10 = internal global ptr @imx6ul_tsc_probe._entry.8, section ".printk_index", align 4
@imx6ul_tsc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 425, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to remap adc memory: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry_ptr.13 = internal global ptr @imx6ul_tsc_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tsc\00", [28 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 432, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed getting tsc clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry_ptr.17 = internal global ptr @imx6ul_tsc_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 439, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed getting adc clock: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry_ptr.21 = internal global ptr @imx6ul_tsc_probe._entry.19, section ".printk_index", align 4
@imx6ul_tsc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 457, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed requesting tsc irq %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry_ptr.24 = internal global ptr @imx6ul_tsc_probe._entry.22, section ".printk_index", align 4
@imx6ul_tsc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 466, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed requesting adc irq %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry_ptr.27 = internal global ptr @imx6ul_tsc_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"measure-delay-time\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pre-charge-time\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"touchscreen-average-samples\00", [36 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 500, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"touchscreen-average-samples (%u) must be 1, 4, 8, 16 or 32\0A\00", [36 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry_ptr.33 = internal global ptr @imx6ul_tsc_probe._entry.31, section ".printk_index", align 4
@imx6ul_tsc_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 507, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@imx6ul_tsc_probe._entry_ptr.36 = internal global ptr @imx6ul_tsc_probe._entry.34, section ".printk_index", align 4
@imx6ul_tsc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 325, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Could not prepare or enable the adc clock: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx6ul_tsc_start\00", [47 x i8] zeroinitializer }, align 32
@imx6ul_tsc_start._entry_ptr = internal global ptr @imx6ul_tsc_start._entry, section ".printk_index", align 4
@imx6ul_tsc_start._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.5, i32 333, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Could not prepare or enable the tsc clock: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@imx6ul_tsc_start._entry_ptr.41 = internal global ptr @imx6ul_tsc_start._entry.39, section ".printk_index", align 4
@imx6ul_adc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 140, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Timeout for adc calibration\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx6ul_adc_init\00", [16 x i8] zeroinitializer }, align 32
@imx6ul_adc_init._entry_ptr = internal global ptr @imx6ul_adc_init._entry, section ".printk_index", align 4
@imx6ul_adc_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.5, i32 146, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADC calibration failed\0A\00", [40 x i8] zeroinitializer }, align 32
@imx6ul_adc_init._entry_ptr.46 = internal global ptr @imx6ul_adc_init._entry.44, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"imx6ul_tsc_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 557, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 559, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"imx6ul_tsc_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 551, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"imx6ul_tsc_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 548, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 391, i32 20 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 407, i32 46 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 410, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 418, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 425, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 429, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 432, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 436, i32 42 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 439, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 455, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 464, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 470, i32 33 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 475, i32 33 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 480, i32 33 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 498, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 506, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 323, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 331, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 140, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private constant [42 x i8] c"../drivers/input/touchscreen/imx6ul_tsc.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 146, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 87, i32 2 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_imx6ul_tsc_driver_exit, ptr @__initcall__kmod_imx6ul_tsc__227_565_imx6ul_tsc_driver_init6, ptr @imx6ul_adc_init._entry, ptr @imx6ul_adc_init._entry.44, ptr @imx6ul_adc_init._entry_ptr, ptr @imx6ul_adc_init._entry_ptr.46, ptr @imx6ul_tsc_driver_exit, ptr @imx6ul_tsc_probe._entry, ptr @imx6ul_tsc_probe._entry.11, ptr @imx6ul_tsc_probe._entry.15, ptr @imx6ul_tsc_probe._entry.19, ptr @imx6ul_tsc_probe._entry.22, ptr @imx6ul_tsc_probe._entry.25, ptr @imx6ul_tsc_probe._entry.31, ptr @imx6ul_tsc_probe._entry.34, ptr @imx6ul_tsc_probe._entry.8, ptr @imx6ul_tsc_probe._entry_ptr, ptr @imx6ul_tsc_probe._entry_ptr.10, ptr @imx6ul_tsc_probe._entry_ptr.13, ptr @imx6ul_tsc_probe._entry_ptr.17, ptr @imx6ul_tsc_probe._entry_ptr.21, ptr @imx6ul_tsc_probe._entry_ptr.24, ptr @imx6ul_tsc_probe._entry_ptr.27, ptr @imx6ul_tsc_probe._entry_ptr.33, ptr @imx6ul_tsc_probe._entry_ptr.36, ptr @imx6ul_tsc_start._entry, ptr @imx6ul_tsc_start._entry.39, ptr @imx6ul_tsc_start._entry_ptr, ptr @imx6ul_tsc_start._entry_ptr.41, ptr @imx6ul_tsc_driver, ptr @.str, ptr @imx6ul_tsc_match, ptr @imx6ul_tsc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @init_completion.__key, ptr @.str.47], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_tsc_start._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_adc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6ul_adc_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6ul_tsc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx6ul_tsc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx6ul_tsc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx6ul_tsc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6ul_tsc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %average_samples = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %average_samples) #6
  %2 = ptrtoint ptr %average_samples to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %average_samples, align 4, !annotation !102
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %call3, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 25, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 31
  %5 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @imx6ul_tsc_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 32
  %6 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @imx6ul_tsc_close, ptr %close, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call3, i32 noundef 1, i32 noundef 330) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call3, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call3, i32 0, i32 40, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %input = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %input, align 4
  %completion = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 11
  %10 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #6
  %call10 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 1) #6
  %xnur_gpio = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %xnur_gpio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %xnur_gpio, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %12) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %call18 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %tsc_regs = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %tsc_regs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %tsc_regs, align 4
  %cmp.i229 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %14) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %call29 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #6
  %adc_regs = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %adc_regs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call29, ptr %adc_regs, align 4
  %cmp.i230 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %16) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %call41 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #6
  %tsc_clk = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %tsc_clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call41, ptr %tsc_clk, align 4
  %cmp.i231 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %if.then44, label %if.end51

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %18) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  %call53 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #6
  %adc_clk = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %adc_clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call53, ptr %adc_clk, align 4
  %cmp.i232 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i232, label %if.then56, label %if.end63

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call53 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %20) #9
  br label %cleanup

if.end63:                                         ; preds = %if.end51
  %call64 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp = icmp slt i32 %call64, 0
  br i1 %cmp, label %if.end63.cleanup_crit_edge, label %if.end66

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %if.end63
  %call67 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.cleanup_crit_edge, label %if.end70

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end70.dev_name.exit_crit_edge

if.end70.dev_name.exit_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end70.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %if.end70.dev_name.exit_crit_edge ]
  %call74 = tail call i32 @devm_request_threaded_irq(ptr noundef %22, i32 noundef %call64, ptr noundef null, ptr noundef nonnull @tsc_irq_fn, i32 noundef 8192, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end81, label %do.end79

do.end79:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call64, i32 noundef %call74) #9
  br label %cleanup

if.end81:                                         ; preds = %dev_name.exit
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i234 = icmp eq ptr %30, null
  br i1 %tobool.not.i234, label %if.end.i235, label %if.end81.dev_name.exit237_crit_edge

if.end81.dev_name.exit237_crit_edge:              ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit237

if.end.i235:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  br label %dev_name.exit237

dev_name.exit237:                                 ; preds = %if.end.i235, %if.end81.dev_name.exit237_crit_edge
  %retval.0.i236 = phi ptr [ %32, %if.end.i235 ], [ %30, %if.end81.dev_name.exit237_crit_edge ]
  %call.i238 = tail call i32 @devm_request_threaded_irq(ptr noundef %28, i32 noundef %call67, ptr noundef nonnull @adc_irq_fn, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i236, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool86.not = icmp eq i32 %call.i238, 0
  br i1 %tobool86.not, label %if.end92, label %do.end90

do.end90:                                         ; preds = %dev_name.exit237
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call67, i32 noundef %call.i238) #9
  br label %cleanup

if.end92:                                         ; preds = %dev_name.exit237
  %measure_delay_time = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 7
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef %measure_delay_time, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool94.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool94.not, label %if.end92.if.end97_crit_edge, label %if.then95

if.end92.if.end97_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %measure_delay_time to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65535, ptr %measure_delay_time, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end92.if.end97_crit_edge
  %pre_charge_time = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 8
  %call.i.i239 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %pre_charge_time, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i239)
  %tobool99.not = icmp sgt i32 %call.i.i239, -1
  br i1 %tobool99.not, label %if.end97.if.end102_crit_edge, label %if.then100

if.end97.if.end102_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %pre_charge_time to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4095, ptr %pre_charge_time, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.end97.if.end102_crit_edge
  %call.i.i240 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull %average_samples, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i240)
  %tobool104.not = icmp sgt i32 %call.i.i240, -1
  br i1 %tobool104.not, label %if.end106, label %if.end106.thread

if.end106.thread:                                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %average_samples to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %average_samples, align 4
  br label %sw.bb

if.end106:                                        ; preds = %if.end102
  %36 = ptrtoint ptr %average_samples to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %average_samples, align 4
  %37 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr, label %do.end119 [
    i32 1, label %if.end106.sw.bb_crit_edge
    i32 4, label %if.end106.sw.bb107_crit_edge
    i32 8, label %if.end106.sw.bb107_crit_edge242
    i32 16, label %if.end106.sw.bb107_crit_edge243
    i32 32, label %if.end106.sw.bb107_crit_edge244
  ]

if.end106.sw.bb107_crit_edge244:                  ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107

if.end106.sw.bb107_crit_edge243:                  ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107

if.end106.sw.bb107_crit_edge242:                  ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107

if.end106.sw.bb107_crit_edge:                     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107

if.end106.sw.bb_crit_edge:                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end106.sw.bb_crit_edge, %if.end106.thread
  %average_enable = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 9
  %38 = ptrtoint ptr %average_enable to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %average_enable, align 4
  br label %sw.epilog

sw.bb107:                                         ; preds = %if.end106.sw.bb107_crit_edge, %if.end106.sw.bb107_crit_edge242, %if.end106.sw.bb107_crit_edge243, %if.end106.sw.bb107_crit_edge244
  %average_enable108 = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 9
  %39 = ptrtoint ptr %average_enable108 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %average_enable108, align 4
  %40 = call i32 @llvm.ctlz.i32(i32 %.pr, i1 true) #6, !range !103
  %sub115 = sub nsw i32 29, %40
  br label %sw.epilog

do.end119:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %.pr) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb107, %sw.bb
  %sub115.sink = phi i32 [ %sub115, %sw.bb107 ], [ 0, %sw.bb ]
  %average_select116 = getelementptr inbounds %struct.imx6ul_tsc, ptr %call.i, i32 0, i32 10
  %41 = ptrtoint ptr %average_select116 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub115.sink, ptr %average_select116, align 4
  %42 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input, align 4
  %call122 = call i32 @input_register_device(ptr noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end129, label %do.end127

do.end127:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call122) #9
  br label %cleanup

if.end129:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i241 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %driver_data.i.i241 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %driver_data.i.i241, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %do.end127, %do.end119, %do.end90, %do.end79, %if.end66.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.then56, %if.then44, %if.then32, %if.then21, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then13 ], [ %14, %if.then21 ], [ %16, %if.then32 ], [ %18, %if.then44 ], [ %20, %if.then56 ], [ %call74, %do.end79 ], [ %call.i238, %do.end90 ], [ -22, %do.end119 ], [ %call122, %do.end127 ], [ 0, %if.end129 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call64, %if.end63.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %average_samples) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6ul_tsc_open(ptr nocapture noundef readonly %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @imx6ul_tsc_start(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx6ul_tsc_close(ptr nocapture noundef readonly %input_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input_dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tsc_regs.i.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tsc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tsc_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %5 = or i32 %4, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %tsc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tsc_regs.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %5) #6, !srcloc !107
  %adc_regs.i.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adc_regs.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %11 = or i32 %10, 520093696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adc_regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !107
  %tsc_clk.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %tsc_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tsc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  %adc_clk.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %adc_clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsc_irq_fn(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tsc_regs = getelementptr inbounds %struct.imx6ul_tsc, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %tsc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tsc_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %tsc_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tsc_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 285212672) #6, !srcloc !107
  %5 = ptrtoint ptr %tsc_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tsc_regs, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %8 = or i32 %7, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %tsc_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tsc_regs, align 4
  %add.ptr15 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %8) #6, !srcloc !107
  %11 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %tsc_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tsc_regs, align 4
  %add.ptr19 = getelementptr i8, ptr %13, i32 48
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #6, !srcloc !104
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %shr = lshr i32 %15, 16
  %and23 = and i32 %shr, 4095
  %and24 = and i32 %15, 4095
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %16, 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.body.i.if.then28_crit_edge, label %if.end.i

do.body.i.if.then28_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end.i:                                         ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #6
  %18 = ptrtoint ptr %tsc_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tsc_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 128
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %21 = and i32 %20, 28672
  %cmp3.not.i = icmp eq i32 %21, 8192
  br i1 %cmp3.not.i, label %lor.lhs.false, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

lor.lhs.false:                                    ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #6
  %xnur_gpio = getelementptr inbounds %struct.imx6ul_tsc, ptr %dev_id, i32 0, i32 6
  %22 = ptrtoint ptr %xnur_gpio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xnur_gpio, align 4
  %call26 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else, label %lor.lhs.false.if.then28_crit_edge

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false.if.then28_crit_edge, %do.body.i.if.then28_crit_edge
  %input = getelementptr inbounds %struct.imx6ul_tsc, ptr %dev_id, i32 0, i32 1
  %24 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  %26 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 0, i32 noundef %and23) #6
  %28 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %29, i32 noundef 3, i32 noundef 1, i32 noundef %and24) #6
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %input31 = getelementptr inbounds %struct.imx6ul_tsc, ptr %dev_id, i32 0, i32 1
  %30 = ptrtoint ptr %input31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input31, align 4
  tail call void @input_event(ptr noundef %31, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then28
  %input32 = getelementptr inbounds %struct.imx6ul_tsc, ptr %dev_id, i32 0, i32 1
  %32 = ptrtoint ptr %input32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input32, align 4
  tail call void @input_event(ptr noundef %33, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end33

if.end33:                                         ; preds = %if.end, %entry.if.end33_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_irq_fn(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adc_regs = getelementptr inbounds %struct.imx6ul_tsc, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %adc_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adc_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %adc_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adc_regs, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %completion = getelementptr inbounds %struct.imx6ul_tsc, ptr %dev_id, i32 0, i32 11
  tail call void @complete(ptr noundef %completion) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx6ul_tsc_start(ptr noundef %tsc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adc_clk = getelementptr inbounds %struct.imx6ul_tsc, ptr %tsc, i32 0, i32 5
  %0 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adc_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %2 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tsc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %tsc_clk = getelementptr inbounds %struct.imx6ul_tsc, ptr %tsc, i32 0, i32 4
  %4 = ptrtoint ptr %tsc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tsc_clk, align 4
  %call.i27 = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i28, label %if.end.i31, label %if.end.do.end6_crit_edge

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

if.end.i31:                                       ; preds = %if.end
  %call1.i29 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool2.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool2.not.i30, label %if.end8, label %if.then3.i32

if.then3.i32:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end6

do.end6:                                          ; preds = %if.then3.i32, %if.end.do.end6_crit_edge
  %retval.0.i33.ph = phi i32 [ %call1.i29, %if.then3.i32 ], [ %call.i27, %if.end.do.end6_crit_edge ]
  %6 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tsc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i33.ph) #9
  br label %disable_adc_clk

if.end8:                                          ; preds = %if.end.i31
  %completion.i.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %tsc, i32 0, i32 11
  %8 = ptrtoint ptr %completion.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %completion.i.i, align 4
  %adc_regs.i.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %tsc, i32 0, i32 3
  %9 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adc_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %12 = and i32 %11, -2130706433
  %13 = or i32 %12, 1744830464
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %average_enable.i.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %tsc, i32 0, i32 9
  %15 = ptrtoint ptr %average_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %average_enable.i.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %if.end8.if.end.i.i_crit_edge, label %if.then.i.i

if.end8.if.end.i.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %and4.i.i = and i32 %14, -49176
  %average_select.i.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %tsc, i32 0, i32 10
  %17 = ptrtoint ptr %average_select.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %average_select.i.i, align 4
  %shl.i.i = shl i32 %18, 14
  %or5.i.i = or i32 %shl.i.i, %and4.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end8.if.end.i.i_crit_edge
  %adc_cfg.0.i.i = phi i32 [ %or5.i.i, %if.then.i.i ], [ %14, %if.end8.if.end.i.i_crit_edge ]
  %and6.i.i = and i32 %adc_cfg.0.i.i, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %and6.i.i) #6
  %20 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adc_regs.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %19) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adc_regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 -1627389952) #6, !srcloc !107
  %24 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adc_regs.i.i, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %25, i32 48
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i.i) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %27 = or i32 %26, -2147483648
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %29 = ptrtoint ptr %average_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %average_enable.i.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool25.not.i.i = icmp eq i8 %30, 0
  %or27.i.i = or i32 %28, 32
  %spec.select.i.i = select i1 %tobool25.not.i.i, i32 %28, i32 %or27.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #6
  %32 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adc_regs.i.i, align 4
  %add.ptr33.i.i = getelementptr i8, ptr %33, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i, i32 %31) #6, !srcloc !107
  %call36.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i.i, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %cmp.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.disable_tsc_clk_crit_edge, label %if.end41.i.i

if.end.i.i.disable_tsc_clk_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_tsc_clk

if.end41.i.i:                                     ; preds = %if.end.i.i
  %34 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adc_regs.i.i, align 4
  %add.ptr45.i.i = getelementptr i8, ptr %35, i32 52
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i.i) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %37 = and i32 %36, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool50.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool50.not.i.i, label %imx6ul_tsc_init.exit, label %if.end41.i.i.disable_tsc_clk_crit_edge

if.end41.i.i.disable_tsc_clk_crit_edge:           ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_tsc_clk

imx6ul_tsc_init.exit:                             ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adc_regs.i.i, align 4
  %add.ptr60.i.i = getelementptr i8, ptr %39, i32 44
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i.i) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %41 = or i32 %40, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adc_regs.i.i, align 4
  %add.ptr69.i.i = getelementptr i8, ptr %43, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i.i, i32 %41) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adc_regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adc_regs.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 67108864) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %48 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adc_regs.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 0) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adc_regs.i.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %51, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 16777216) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adc_regs.i.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 0) #6, !srcloc !107
  %measure_delay_time.i.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %tsc, i32 0, i32 7
  %54 = ptrtoint ptr %measure_delay_time.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %measure_delay_time.i.i, align 4
  %shl.i5.i = shl i32 %55, 8
  %or1.i.i = or i32 %shl.i5.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i) #6
  %tsc_regs.i.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %tsc, i32 0, i32 2
  %57 = ptrtoint ptr %tsc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tsc_regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %tsc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tsc_regs.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %60, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 64) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %pre_charge_time.i.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %tsc, i32 0, i32 8
  %61 = ptrtoint ptr %pre_charge_time.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pre_charge_time.i.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #6
  %64 = ptrtoint ptr %tsc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tsc_regs.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %65, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 %63) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %66 = ptrtoint ptr %tsc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tsc_regs.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %67, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 16777216) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %tsc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tsc_regs.i.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %69, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 16842752) #6, !srcloc !107
  %70 = ptrtoint ptr %tsc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tsc_regs.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %71, i32 32
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  %73 = and i32 %72, -1048833
  %74 = or i32 %73, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %75 = ptrtoint ptr %tsc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tsc_regs.i.i, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %76, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %74) #6, !srcloc !107
  br label %cleanup

disable_tsc_clk:                                  ; preds = %if.end41.i.i.disable_tsc_clk_crit_edge, %if.end.i.i.disable_tsc_clk_crit_edge
  %.str.45.sink = phi ptr [ @.str.42, %if.end.i.i.disable_tsc_clk_crit_edge ], [ @.str.45, %if.end41.i.i.disable_tsc_clk_crit_edge ]
  %retval.0.i36.ph = phi i32 [ -110, %if.end.i.i.disable_tsc_clk_crit_edge ], [ -22, %if.end41.i.i.disable_tsc_clk_crit_edge ]
  %77 = ptrtoint ptr %tsc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tsc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull %.str.45.sink) #9
  %79 = ptrtoint ptr %tsc_clk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tsc_clk, align 4
  tail call void @clk_disable(ptr noundef %80) #6
  tail call void @clk_unprepare(ptr noundef %80) #6
  br label %disable_adc_clk

disable_adc_clk:                                  ; preds = %disable_tsc_clk, %do.end6
  %err.0 = phi i32 [ %retval.0.i33.ph, %do.end6 ], [ %retval.0.i36.ph, %disable_tsc_clk ]
  %81 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adc_clk, align 4
  tail call void @clk_disable(ptr noundef %82) #6
  tail call void @clk_unprepare(ptr noundef %82) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_adc_clk, %imx6ul_tsc_init.exit, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %err.0, %disable_adc_clk ], [ 0, %imx6ul_tsc_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6ul_tsc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.imx6ul_tsc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call1 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tsc_regs.i.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tsc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tsc_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %7 = or i32 %6, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %tsc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tsc_regs.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %7) #6, !srcloc !107
  %adc_regs.i.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adc_regs.i.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %13 = or i32 %12, 520093696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %adc_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adc_regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !107
  %tsc_clk.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %tsc_clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tsc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  %adc_clk.i = getelementptr inbounds %struct.imx6ul_tsc, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %adc_clk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adc_clk.i, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6ul_tsc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.imx6ul_tsc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc i32 @imx6ul_tsc_start(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_imx6ul_tsc__227_565_imx6ul_tsc_driver_init6, !1, !"__initcall__kmod_imx6ul_tsc__227_565_imx6ul_tsc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 565, i32 1}
!2 = !{ptr @__exitcall_imx6ul_tsc_driver_exit, !1, !"__exitcall_imx6ul_tsc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 567, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 568, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 569, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 559, i32 11}
!12 = !{ptr @imx6ul_tsc_driver, !13, !"imx6ul_tsc_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 557, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 391, i32 20}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 407, i32 46}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 410, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @imx6ul_tsc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx6ul_tsc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 418, i32 3}
!28 = !{ptr @imx6ul_tsc_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @imx6ul_tsc_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 425, i32 3}
!32 = !{ptr @imx6ul_tsc_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @imx6ul_tsc_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 429, i32 42}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 432, i32 3}
!38 = !{ptr @imx6ul_tsc_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @imx6ul_tsc_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 436, i32 42}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 439, i32 3}
!44 = !{ptr @imx6ul_tsc_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @imx6ul_tsc_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 455, i32 3}
!48 = !{ptr @imx6ul_tsc_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @imx6ul_tsc_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 464, i32 3}
!52 = !{ptr @imx6ul_tsc_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx6ul_tsc_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 470, i32 33}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 475, i32 33}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 480, i32 33}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 498, i32 3}
!62 = !{ptr @imx6ul_tsc_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @imx6ul_tsc_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 506, i32 3}
!66 = !{ptr @imx6ul_tsc_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @imx6ul_tsc_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 323, i32 3}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @imx6ul_tsc_start._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @imx6ul_tsc_start._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 331, i32 3}
!75 = !{ptr @imx6ul_tsc_start._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @imx6ul_tsc_start._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 140, i32 3}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @imx6ul_adc_init._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @imx6ul_adc_init._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 146, i32 3}
!84 = !{ptr @imx6ul_adc_init._entry.44, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @imx6ul_adc_init._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @init_completion.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../include/linux/completion.h", i32 87, i32 2}
!88 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @imx6ul_tsc_match, !90, !"imx6ul_tsc_match", i1 false, i1 false}
!90 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 551, i32 34}
!91 = !{ptr @imx6ul_tsc_pm_ops, !92, !"imx6ul_tsc_pm_ops", i1 false, i1 false}
!92 = !{!"../drivers/input/touchscreen/imx6ul_tsc.c", i32 548, i32 8}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{i32 0, i32 33}
!104 = !{i64 6221825}
!105 = !{i64 2153973061}
!106 = !{i64 2153973300}
!107 = !{i64 6221407}
!108 = !{i64 2153973996}
!109 = !{i64 2153974227}
!110 = !{i64 2153975773}
!111 = !{i64 2153976023}
!112 = !{i64 2153976743}
!113 = !{i64 2153976979}
!114 = !{i64 2153977670}
!115 = !{i64 2153975266}
!116 = !{i64 2153978195}
!117 = !{i64 2153978698}
!118 = !{i64 2153960640}
!119 = !{i8 0, i8 2}
!120 = !{i64 2153960969}
!121 = !{i64 2153961400}
!122 = !{i64 2153962090}
!123 = !{i64 2153962337}
!124 = !{i64 2153964700}
!125 = !{i64 2153966812}
!126 = !{i64 2153967050}
!127 = !{i64 2153967477}
!128 = !{i64 2153967909}
!129 = !{i64 2153968336}
!130 = !{i64 2153968768}
!131 = !{i64 2153969195}
!132 = !{i64 2153969632}
!133 = !{i64 2153970082}
!134 = !{i64 2153970523}
!135 = !{i64 2153970978}
!136 = !{i64 2153971406}
!137 = !{i64 2153972126}
!138 = !{i64 2153972374}
