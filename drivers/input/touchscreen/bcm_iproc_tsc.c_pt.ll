; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/bcm_iproc_tsc.c_pt.bc'
source_filename = "../drivers/input/touchscreen/bcm_iproc_tsc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tsc_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
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
%struct.iproc_ts_priv = type { ptr, ptr, ptr, ptr, i32, %struct.tsc_param }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_bcm_iproc_tsc__245_525_iproc_ts_driver_init6 = internal global ptr @iproc_ts_driver_init, section ".initcall6.init", align 4
@iproc_ts_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iproc_ts_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iproc_ts_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iproc_ts_driver_exit = internal global ptr @iproc_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description246 = internal constant [51 x i8] c"bcm_iproc_tsc.description=IPROC Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [30 x i8] c"bcm_iproc_tsc.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [59 x i8] c"bcm_iproc_tsc.file=drivers/input/touchscreen/bcm_iproc_tsc\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [29 x i8] c"bcm_iproc_tsc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iproc-ts\00", [23 x i8] zeroinitializer }, align 32
@iproc_ts_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-touchscreen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ts_syscon\00", [22 x i8] zeroinitializer }, align 32
@iproc_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 439, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to map I/O memory:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iproc_ts_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/input/touchscreen/bcm_iproc_tsc.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iproc_ts_probe._entry_ptr = internal global ptr @iproc_ts_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsc_clk\00", [24 x i8] zeroinitializer }, align 32
@iproc_ts_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 447, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed getting clock tsc_clk: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@iproc_ts_probe._entry_ptr.10 = internal global ptr @iproc_ts_probe._entry.8, section ".printk_index", align 4
@iproc_ts_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 454, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"get_tsc_config failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@iproc_ts_probe._entry_ptr.13 = internal global ptr @iproc_ts_probe._entry.11, section ".printk_index", align 4
@iproc_ts_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@iproc_ts_probe._entry_ptr.16 = internal global ptr @iproc_ts_probe._entry.14, section ".printk_index", align 4
@iproc_ts_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 504, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@iproc_ts_probe._entry_ptr.19 = internal global ptr @iproc_ts_probe._entry.17, section ".printk_index", align 4
@iproc_default_config = internal constant { %struct.tsc_param, [52 x i8] } { %struct.tsc_param { i32 5, i32 40, i32 7, i32 10, i32 5, i32 1, i32 4095, i32 4095, i32 0, i32 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scanning_period\00", [16 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 356, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"scanning_period (%u) must be [1-256]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iproc_get_tsc_config\00", [43 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry_ptr = internal global ptr @iproc_get_tsc_config._entry, section ".printk_index", align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debounce_timeout\00", [47 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"debounce_timeout (%u) must be [0-255]\0A\00", [57 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry_ptr.26 = internal global ptr @iproc_get_tsc_config._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"settling_timeout\00", [47 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.4, i32 374, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"settling_timeout (%u) must be [0-11]\0A\00", [58 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry_ptr.30 = internal global ptr @iproc_get_tsc_config._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"touch_timeout\00", [18 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.4, i32 383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"touch_timeout (%u) must be [0-255]\0A\00", [60 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry_ptr.34 = internal global ptr @iproc_get_tsc_config._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"average_data\00", [19 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.22, ptr @.str.4, i32 391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"average_data (%u) must be [0-8]\0A\00", [63 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry_ptr.38 = internal global ptr @iproc_get_tsc_config._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fifo_threshold\00", [17 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.22, ptr @.str.4, i32 400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fifo_threshold (%u)) must be [0-31]\0A\00", [59 x i8] zeroinitializer }, align 32
@iproc_get_tsc_config._entry_ptr.42 = internal global ptr @iproc_get_tsc_config._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-size-x\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-size-y\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-fuzz-x\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-fuzz-y\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"touchscreen-inverted-x\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"touchscreen-inverted-y\00", [41 x i8] zeroinitializer }, align 32
@iproc_ts_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 280, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s clk_prepare_enable failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iproc_ts_start\00", [17 x i8] zeroinitializer }, align 32
@iproc_ts_start._entry_ptr = internal global ptr @iproc_ts_start._entry, section ".printk_index", align 4
@ts_reg_dump.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm_iproc_tsc\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ts_reg_dump\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%20s= 0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REGCTL1\00", [24 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REGCTL2\00", [24 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"INTERRUPT_THRES\00", [16 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"INTERRUPT_MASK\00", [17 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INTERRUPT_STATUS\00", [47 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CONTROLLER_STATUS\00", [46 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FIFO_DATA\00", [22 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ANALOG_CONTROL\00", [17 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AUX_DATA\00", [23 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DEBOUNCE_CNTR_STAT\00", [45 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SCAN_CNTR_STAT\00", [17 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"REM_CNTR_STAT\00", [18 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SETTLING_TIMER_STAT\00", [44 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPARE_REG\00", [22 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SOFT_BYPASS_CONTROL\00", [44 x i8] zeroinitializer }, align 32
@ts_reg_dump.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.4, ptr @.str.53, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SOFT_BYPASS_DATA\00", [47 x i8] zeroinitializer }, align 32
@iproc_touchscreen_interrupt.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.70, ptr @.str.4, ptr @.str.71, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iproc_touchscreen_interrupt\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pen up-down (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@iproc_touchscreen_interrupt.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.70, ptr @.str.4, ptr @.str.72, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xy (0x%x 0x%x)\0A\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"iproc_ts_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 517, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 520, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"iproc_ts_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 511, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 436, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 439, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 443, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 446, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 454, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 460, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 503, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"iproc_default_config\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 161, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 353, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 355, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 362, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 364, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 371, i32 31 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 373, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 380, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 382, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 389, i32 31 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 391, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 397, i32 31 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 399, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 407, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 408, i32 27 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 410, i32 27 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 412, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 416, i32 29 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 418, i32 29 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 279, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 176, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 177, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 178, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 179, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 180, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 181, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 182, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 183, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 184, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 185, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 186, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 187, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 188, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 189, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 190, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 191, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 223, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private constant [45 x i8] c"../drivers/input/touchscreen/bcm_iproc_tsc.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 259, i32 4 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_iproc_ts_driver_exit, ptr @__initcall__kmod_bcm_iproc_tsc__245_525_iproc_ts_driver_init6, ptr @iproc_get_tsc_config._entry, ptr @iproc_get_tsc_config._entry.24, ptr @iproc_get_tsc_config._entry.28, ptr @iproc_get_tsc_config._entry.32, ptr @iproc_get_tsc_config._entry.36, ptr @iproc_get_tsc_config._entry.40, ptr @iproc_get_tsc_config._entry_ptr, ptr @iproc_get_tsc_config._entry_ptr.26, ptr @iproc_get_tsc_config._entry_ptr.30, ptr @iproc_get_tsc_config._entry_ptr.34, ptr @iproc_get_tsc_config._entry_ptr.38, ptr @iproc_get_tsc_config._entry_ptr.42, ptr @iproc_ts_driver_exit, ptr @iproc_ts_probe._entry, ptr @iproc_ts_probe._entry.11, ptr @iproc_ts_probe._entry.14, ptr @iproc_ts_probe._entry.17, ptr @iproc_ts_probe._entry.8, ptr @iproc_ts_probe._entry_ptr, ptr @iproc_ts_probe._entry_ptr.10, ptr @iproc_ts_probe._entry_ptr.13, ptr @iproc_ts_probe._entry_ptr.16, ptr @iproc_ts_probe._entry_ptr.19, ptr @iproc_ts_start._entry, ptr @iproc_ts_start._entry_ptr, ptr @iproc_ts_driver, ptr @.str, ptr @iproc_ts_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @iproc_default_config, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_ts_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_ts_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_ts_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_ts_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_ts_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_ts_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_default_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_get_tsc_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_get_tsc_config._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_get_tsc_config._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_get_tsc_config._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_get_tsc_config._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_get_tsc_config._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_ts_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iproc_ts_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iproc_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @iproc_ts_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_ts_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %3) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  %tsc_clk = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %tsc_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %tsc_clk, align 4
  %cmp.i129 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %5) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %call.i, align 4
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !167
  %cfg_params.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5
  %10 = call ptr @memcpy(ptr %cfg_params.i, ptr @iproc_default_config, i32 44)
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end21.if.end31_crit_edge, label %if.end.i

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end.i:                                         ; preds = %if.end21
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.20, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #6
  %11 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i130 = icmp sgt i32 %11, -1
  br i1 %cmp.i130, label %if.then1.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then1.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %14 = add i32 %13, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %14)
  %15 = icmp ult i32 %14, -256
  br i1 %15, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %13) #9
  br label %do.end29

if.end5.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %cfg_params.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %cfg_params.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end5.i, %if.end.i.if.end7.i_crit_edge
  %call.i.i117.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.23, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #6
  %17 = call i32 @llvm.smin.i32(i32 %call.i.i117.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp9.i = icmp sgt i32 %17, -1
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.if.end18.i_crit_edge

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then10.i:                                      ; preds = %if.end7.i
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %19)
  %cmp11.i = icmp ugt i32 %19, 255
  br i1 %cmp11.i, label %do.end15.i, label %if.end16.i

do.end15.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %19) #9
  br label %do.end29

if.end16.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %debounce_timeout.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %debounce_timeout.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %debounce_timeout.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end16.i, %if.end7.i.if.end18.i_crit_edge
  %call.i.i118.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.27, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #6
  %21 = call i32 @llvm.smin.i32(i32 %call.i.i118.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp20.i = icmp sgt i32 %21, -1
  br i1 %cmp20.i, label %if.then21.i, label %if.end18.i.if.end29.i_crit_edge

if.end18.i.if.end29.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then21.i:                                      ; preds = %if.end18.i
  %22 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %23)
  %cmp22.i = icmp ugt i32 %23, 11
  br i1 %cmp22.i, label %do.end26.i, label %if.end27.i

do.end26.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %23) #9
  br label %do.end29

if.end27.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  %settling_timeout.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %settling_timeout.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %settling_timeout.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end27.i, %if.end18.i.if.end29.i_crit_edge
  %call.i.i119.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.31, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #6
  %25 = call i32 @llvm.smin.i32(i32 %call.i.i119.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp31.i = icmp sgt i32 %25, -1
  br i1 %cmp31.i, label %if.then32.i, label %if.end29.i.if.end40.i_crit_edge

if.end29.i.if.end40.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then32.i:                                      ; preds = %if.end29.i
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %27)
  %cmp33.i = icmp ugt i32 %27, 255
  br i1 %cmp33.i, label %do.end37.i, label %if.end38.i

do.end37.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %27) #9
  br label %do.end29

if.end38.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  %touch_timeout.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %touch_timeout.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %touch_timeout.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end38.i, %if.end29.i.if.end40.i_crit_edge
  %call.i.i120.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.35, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #6
  %29 = call i32 @llvm.smin.i32(i32 %call.i.i120.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp42.i = icmp sgt i32 %29, -1
  br i1 %cmp42.i, label %if.then43.i, label %if.end40.i.if.end51.i_crit_edge

if.end40.i.if.end51.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then43.i:                                      ; preds = %if.end40.i
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %31)
  %cmp44.i = icmp ugt i32 %31, 8
  br i1 %cmp44.i, label %do.end48.i, label %if.end49.i

do.end48.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %31) #9
  br label %do.end29

if.end49.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  %average_data.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 4
  %32 = ptrtoint ptr %average_data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %average_data.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end49.i, %if.end40.i.if.end51.i_crit_edge
  %call.i.i121.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.39, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #6
  %33 = call i32 @llvm.smin.i32(i32 %call.i.i121.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp53.i = icmp sgt i32 %33, -1
  br i1 %cmp53.i, label %if.then54.i, label %if.end51.i.if.end62.i_crit_edge

if.end51.i.if.end62.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.then54.i:                                      ; preds = %if.end51.i
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %35)
  %cmp55.i = icmp ugt i32 %35, 31
  br i1 %cmp55.i, label %do.end59.i, label %if.end60.i

do.end59.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %35) #9
  br label %do.end29

if.end60.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #8
  %fifo_threshold.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 5
  %36 = ptrtoint ptr %fifo_threshold.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %fifo_threshold.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.end60.i, %if.end51.i.if.end62.i_crit_edge
  %max_x.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 6
  %call.i.i122.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.43, ptr noundef %max_x.i, i32 noundef 1, i32 noundef 0) #6
  %max_y.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 7
  %call.i.i123.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.44, ptr noundef %max_y.i, i32 noundef 1, i32 noundef 0) #6
  %fuzz_x.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 8
  %call.i.i124.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.45, ptr noundef %fuzz_x.i, i32 noundef 1, i32 noundef 0) #6
  %fuzz_y.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 9
  %call.i.i125.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.46, ptr noundef %fuzz_y.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.47, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %invert_x.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 10
  %frombool.i = zext i1 %tobool.i.i to i8
  %37 = ptrtoint ptr %invert_x.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool.i, ptr %invert_x.i, align 4
  %call.i126.i = call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.48, ptr noundef null) #6
  %tobool.i127.i = icmp ne ptr %call.i126.i, null
  %invert_y.i = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 11
  %frombool75.i = zext i1 %tobool.i127.i to i8
  %38 = ptrtoint ptr %invert_y.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool75.i, ptr %invert_y.i, align 1
  br label %if.end31

do.end29:                                         ; preds = %do.end59.i, %do.end48.i, %do.end37.i, %do.end26.i, %do.end15.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef -22) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end62.i, %if.end21.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call33 = call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %idev41 = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %idev41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call33, ptr %idev41, align 4
  %pen_status = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 4
  %40 = ptrtoint ptr %pen_status to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %pen_status, align 4
  %41 = ptrtoint ptr %call33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str, ptr %call33, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %call33, i32 0, i32 40, i32 1
  %42 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev, ptr %parent, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call33, i32 0, i32 3
  %43 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 25, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call33, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call33, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call33, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %version, align 2
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call33, i32 0, i32 5
  %47 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 10, ptr %evbit, align 8
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call33, i32 0, i32 6, i32 10
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %49, 1024
  store i32 %or.i, ptr %add.ptr.i, align 4
  %max_x = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 6
  %50 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_x, align 4
  %fuzz_x = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 8
  %52 = ptrtoint ptr %fuzz_x to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fuzz_x, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call33, i32 noundef 0, i32 noundef 0, i32 noundef %51, i32 noundef %53, i32 noundef 0) #6
  %max_y = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 7
  %54 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_y, align 4
  %fuzz_y = getelementptr inbounds %struct.iproc_ts_priv, ptr %call.i, i32 0, i32 5, i32 9
  %56 = ptrtoint ptr %fuzz_y to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fuzz_y, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call33, i32 noundef 1, i32 noundef 0, i32 noundef %55, i32 noundef %57, i32 noundef 0) #6
  %open = getelementptr inbounds %struct.input_dev, ptr %call33, i32 0, i32 31
  %58 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @iproc_ts_start, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call33, i32 0, i32 32
  %59 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @iproc_ts_stop, ptr %close, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call33, i32 0, i32 40, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i131 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %61 = ptrtoint ptr %driver_data.i.i131 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i, ptr %driver_data.i.i131, align 4
  %call50 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp = icmp slt i32 %call50, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end52

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.end40
  %call.i132 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call50, ptr noundef nonnull @iproc_touchscreen_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool55.not = icmp eq i32 %call.i132, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %62 = ptrtoint ptr %idev41 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %idev41, align 4
  %call59 = call i32 @input_register_device(ptr noundef %63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end57.cleanup_crit_edge, label %do.end64

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call59) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %if.end57.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end38, %do.end29, %if.then14, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %5, %if.then14 ], [ -22, %do.end29 ], [ %call59, %do.end64 ], [ -12, %do.end38 ], [ -12, %entry.cleanup_crit_edge ], [ %call50, %if.end40.cleanup_crit_edge ], [ %call.i132, %if.end52.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_ts_start(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tsc_clk = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tsc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tsc_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 12, i32 noundef 5, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %cfg_params = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 5
  %fifo_threshold = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 5, i32 5
  %8 = ptrtoint ptr %fifo_threshold to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_threshold, align 4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 8, i32 noundef %9) #6
  %12 = ptrtoint ptr %cfg_params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_params, align 4
  %shl = shl i32 %13, 24
  %debounce_timeout = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %debounce_timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debounce_timeout, align 4
  %shl7 = shl i32 %15, 16
  %or8 = or i32 %shl7, %shl
  %settling_timeout = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %settling_timeout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %settling_timeout, align 4
  %shl10 = shl i32 %17, 8
  %or11 = or i32 %or8, %shl10
  %touch_timeout = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %touch_timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %touch_timeout, align 4
  %or14 = or i32 %or11, %19
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 0, i32 noundef %or14) #6
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 16, i32 noundef 5, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %average_data = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 5, i32 4
  %24 = ptrtoint ptr %average_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %average_data, align 4
  %shl20 = shl i32 %25, 8
  %or21 = or i32 %shl20, 65538
  %or23 = or i32 %shl20, 67390
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 4, i32 noundef %or23, i32 noundef %or21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call fastcc void @ts_reg_dump(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_ts_stop(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %tsc_clk = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tsc_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tsc_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_touchscreen_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %intr_status = alloca i32, align 4
  %raw_coordinate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %data, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intr_status) #6
  %2 = ptrtoint ptr %intr_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %intr_status, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_coordinate) #6
  %3 = ptrtoint ptr %raw_coordinate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %raw_coordinate, align 4, !annotation !167
  %regmap = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %intr_status) #6
  %6 = ptrtoint ptr %intr_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intr_status, align 4
  %and = and i32 %7, 5
  store i32 %and, ptr %intr_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_write(ptr noundef %9, i32 noundef 16, i32 noundef %and) #6
  %10 = ptrtoint ptr %intr_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intr_status, align 4
  %and4 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %if.then5

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %pen_status = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 4
  %call7 = call i32 @regmap_read(ptr noundef %13, i32 noundef 20, ptr noundef %pen_status) #6
  %14 = ptrtoint ptr %pen_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pen_status, align 4
  %and9 = and i32 %15, 1
  store i32 %and9, ptr %pen_status, align 4
  %idev = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %idev, align 4
  call void @input_event(ptr noundef %17, i32 noundef 1, i32 noundef 330, i32 noundef %and9) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_touchscreen_interrupt.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_touchscreen_interrupt, %if.then20)) #6
          to label %if.end24 [label %if.then20], !srcloc !168

if.then20:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %pen_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pen_status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_touchscreen_interrupt.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %21) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then5, %if.end.if.end24_crit_edge
  %22 = xor i1 %tobool.not, true
  %23 = ptrtoint ptr %intr_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intr_status, align 4
  %and25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end85_crit_edge, label %for.cond.preheader

if.end24.if.end85_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

for.cond.preheader:                               ; preds = %if.end24
  %fifo_threshold = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 5, i32 5
  %25 = ptrtoint ptr %fifo_threshold to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fifo_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp28133.not = icmp eq i32 %26, 0
  br i1 %cmp28133.not, label %for.cond.preheader.if.end85_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end85_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %invert_x = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 5, i32 10
  %max_x = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 5, i32 6
  %invert_y = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 5, i32 11
  %max_y = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 5, i32 7
  %idev61 = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %needs_sync.1.off0135 = phi i1 [ %22, %for.body.lr.ph ], [ %needs_sync.2.off0, %for.inc.for.body_crit_edge ]
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call30 = call i32 @regmap_read(ptr noundef %28, i32 noundef 24, ptr noundef nonnull %raw_coordinate) #6
  %29 = ptrtoint ptr %raw_coordinate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %raw_coordinate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp31 = icmp eq i32 %30, -1
  br i1 %cmp31, label %for.body.for.inc_crit_edge, label %if.end33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end33:                                         ; preds = %for.body
  %shr35 = lshr i32 %30, 20
  %31 = trunc i32 %30 to i16
  %32 = lshr i16 %31, 4
  %33 = ptrtoint ptr %invert_x to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %invert_x, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool47.not = icmp eq i8 %34, 0
  br i1 %tobool47.not, label %if.end33.if.end52_crit_edge, label %if.then48

if.end33.if.end52_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then48:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_x, align 4
  %37 = trunc i32 %36 to i16
  %conv51 = sub i16 %37, %32
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end33.if.end52_crit_edge
  %x.0 = phi i16 [ %conv51, %if.then48 ], [ %32, %if.end33.if.end52_crit_edge ]
  %38 = ptrtoint ptr %invert_y to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %invert_y, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool54.not = icmp eq i8 %39, 0
  br i1 %tobool54.not, label %if.end52.if.end60_crit_edge, label %if.then55

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_y, align 4
  %sub58 = sub i32 %41, %shr35
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end52.if.end60_crit_edge
  %y.0 = phi i32 [ %sub58, %if.then55 ], [ %shr35, %if.end52.if.end60_crit_edge ]
  %42 = ptrtoint ptr %idev61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %idev61, align 4
  %conv62 = zext i16 %x.0 to i32
  call void @input_event(ptr noundef %43, i32 noundef 3, i32 noundef 0, i32 noundef %conv62) #6
  %44 = ptrtoint ptr %idev61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %idev61, align 4
  %conv64 = and i32 %y.0, 65535
  call void @input_event(ptr noundef %45, i32 noundef 3, i32 noundef 1, i32 noundef %conv64) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iproc_touchscreen_interrupt.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iproc_touchscreen_interrupt, %if.then77)) #6
          to label %for.inc [label %if.then77], !srcloc !168

if.then77:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %dev79 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iproc_touchscreen_interrupt.__UNIQUE_ID_ddebug244, ptr noundef %dev79, ptr noundef nonnull @.str.72, i32 noundef %conv62, i32 noundef %conv64) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then77, %if.end60, %for.body.for.inc_crit_edge
  %needs_sync.2.off0 = phi i1 [ %needs_sync.1.off0135, %for.body.for.inc_crit_edge ], [ true, %if.then77 ], [ true, %if.end60 ]
  %inc = add nuw i32 %i.0134, 1
  %48 = ptrtoint ptr %fifo_threshold to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fifo_threshold, align 4
  %cmp28 = icmp ult i32 %inc, %49
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.if.end85_crit_edge

for.inc.if.end85_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end85:                                         ; preds = %for.inc.if.end85_crit_edge, %for.cond.preheader.if.end85_crit_edge, %if.end24.if.end85_crit_edge
  %needs_sync.3.off0 = phi i1 [ %22, %if.end24.if.end85_crit_edge ], [ %22, %for.cond.preheader.if.end85_crit_edge ], [ %needs_sync.2.off0, %for.inc.if.end85_crit_edge ]
  br i1 %needs_sync.3.off0, label %if.then87, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %idev88 = getelementptr inbounds %struct.iproc_ts_priv, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %idev88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %idev88, align 4
  call void @input_event(ptr noundef %51, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then87, %if.end85.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then87 ], [ 1, %if.end85.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_coordinate) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intr_status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ts_reg_dump(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  %val9 = alloca i32, align 4
  %val31 = alloca i32, align 4
  %val53 = alloca i32, align 4
  %val75 = alloca i32, align 4
  %val97 = alloca i32, align 4
  %val119 = alloca i32, align 4
  %val141 = alloca i32, align 4
  %val163 = alloca i32, align 4
  %val185 = alloca i32, align 4
  %val207 = alloca i32, align 4
  %val229 = alloca i32, align 4
  %val251 = alloca i32, align 4
  %val273 = alloca i32, align 4
  %val295 = alloca i32, align 4
  %val317 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !167
  %regmap = getelementptr inbounds %struct.iproc_ts_priv, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug227, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %6) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val9) #6
  %7 = ptrtoint ptr %val9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val9, align 4, !annotation !167
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_read(ptr noundef %9, i32 noundef 4, ptr noundef nonnull %val9) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then24)) #6
          to label %do.end27 [label %if.then24], !srcloc !168

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val9, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug228, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.55, i32 noundef %11) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val31) #6
  %12 = ptrtoint ptr %val31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val31, align 4, !annotation !167
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call33 = call i32 @regmap_read(ptr noundef %14, i32 noundef 8, ptr noundef nonnull %val31) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then46)) #6
          to label %do.end49 [label %if.then46], !srcloc !168

if.then46:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %val31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val31, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug229, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.56, i32 noundef %16) #6
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %do.end27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val31) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val53) #6
  %17 = ptrtoint ptr %val53 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val53, align 4, !annotation !167
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call55 = call i32 @regmap_read(ptr noundef %19, i32 noundef 12, ptr noundef nonnull %val53) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then68)) #6
          to label %do.end71 [label %if.then68], !srcloc !168

if.then68:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %val53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val53, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug230, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.57, i32 noundef %21) #6
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %do.end49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val53) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val75) #6
  %22 = ptrtoint ptr %val75 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val75, align 4, !annotation !167
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call77 = call i32 @regmap_read(ptr noundef %24, i32 noundef 16, ptr noundef nonnull %val75) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then90)) #6
          to label %do.end93 [label %if.then90], !srcloc !168

if.then90:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %val75 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val75, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug231, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.58, i32 noundef %26) #6
  br label %do.end93

do.end93:                                         ; preds = %if.then90, %do.end71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val75) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val97) #6
  %27 = ptrtoint ptr %val97 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val97, align 4, !annotation !167
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call99 = call i32 @regmap_read(ptr noundef %29, i32 noundef 20, ptr noundef nonnull %val97) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then112)) #6
          to label %do.end115 [label %if.then112], !srcloc !168

if.then112:                                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %val97 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val97, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug232, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.59, i32 noundef %31) #6
  br label %do.end115

do.end115:                                        ; preds = %if.then112, %do.end93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val97) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val119) #6
  %32 = ptrtoint ptr %val119 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val119, align 4, !annotation !167
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call121 = call i32 @regmap_read(ptr noundef %34, i32 noundef 24, ptr noundef nonnull %val119) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then134)) #6
          to label %do.end137 [label %if.then134], !srcloc !168

if.then134:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %val119 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val119, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug233, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.60, i32 noundef %36) #6
  br label %do.end137

do.end137:                                        ; preds = %if.then134, %do.end115
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val119) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val141) #6
  %37 = ptrtoint ptr %val141 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %val141, align 4, !annotation !167
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call143 = call i32 @regmap_read(ptr noundef %39, i32 noundef 28, ptr noundef nonnull %val141) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then156)) #6
          to label %do.end159 [label %if.then156], !srcloc !168

if.then156:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %val141 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val141, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug234, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.61, i32 noundef %41) #6
  br label %do.end159

do.end159:                                        ; preds = %if.then156, %do.end137
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val141) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val163) #6
  %42 = ptrtoint ptr %val163 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %val163, align 4, !annotation !167
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call165 = call i32 @regmap_read(ptr noundef %44, i32 noundef 32, ptr noundef nonnull %val163) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then178)) #6
          to label %do.end181 [label %if.then178], !srcloc !168

if.then178:                                       ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %val163 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val163, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug235, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.62, i32 noundef %46) #6
  br label %do.end181

do.end181:                                        ; preds = %if.then178, %do.end159
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val163) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val185) #6
  %47 = ptrtoint ptr %val185 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %val185, align 4, !annotation !167
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call187 = call i32 @regmap_read(ptr noundef %49, i32 noundef 36, ptr noundef nonnull %val185) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then200)) #6
          to label %do.end203 [label %if.then200], !srcloc !168

if.then200:                                       ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %val185 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val185, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug236, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.63, i32 noundef %51) #6
  br label %do.end203

do.end203:                                        ; preds = %if.then200, %do.end181
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val185) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val207) #6
  %52 = ptrtoint ptr %val207 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %val207, align 4, !annotation !167
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call209 = call i32 @regmap_read(ptr noundef %54, i32 noundef 40, ptr noundef nonnull %val207) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then222)) #6
          to label %do.end225 [label %if.then222], !srcloc !168

if.then222:                                       ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %val207 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val207, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.64, i32 noundef %56) #6
  br label %do.end225

do.end225:                                        ; preds = %if.then222, %do.end203
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val207) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val229) #6
  %57 = ptrtoint ptr %val229 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %val229, align 4, !annotation !167
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call231 = call i32 @regmap_read(ptr noundef %59, i32 noundef 44, ptr noundef nonnull %val229) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then244)) #6
          to label %do.end247 [label %if.then244], !srcloc !168

if.then244:                                       ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %val229 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val229, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug238, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.65, i32 noundef %61) #6
  br label %do.end247

do.end247:                                        ; preds = %if.then244, %do.end225
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val229) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val251) #6
  %62 = ptrtoint ptr %val251 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %val251, align 4, !annotation !167
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call253 = call i32 @regmap_read(ptr noundef %64, i32 noundef 48, ptr noundef nonnull %val251) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then266)) #6
          to label %do.end269 [label %if.then266], !srcloc !168

if.then266:                                       ; preds = %do.end247
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %val251 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val251, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug239, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.66, i32 noundef %66) #6
  br label %do.end269

do.end269:                                        ; preds = %if.then266, %do.end247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val251) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val273) #6
  %67 = ptrtoint ptr %val273 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %val273, align 4, !annotation !167
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call275 = call i32 @regmap_read(ptr noundef %69, i32 noundef 52, ptr noundef nonnull %val273) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then288)) #6
          to label %do.end291 [label %if.then288], !srcloc !168

if.then288:                                       ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %val273 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val273, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug240, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.67, i32 noundef %71) #6
  br label %do.end291

do.end291:                                        ; preds = %if.then288, %do.end269
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val273) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val295) #6
  %72 = ptrtoint ptr %val295 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %val295, align 4, !annotation !167
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %call297 = call i32 @regmap_read(ptr noundef %74, i32 noundef 56, ptr noundef nonnull %val295) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then310)) #6
          to label %do.end313 [label %if.then310], !srcloc !168

if.then310:                                       ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %val295 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val295, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug241, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.68, i32 noundef %76) #6
  br label %do.end313

do.end313:                                        ; preds = %if.then310, %do.end291
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val295) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val317) #6
  %77 = ptrtoint ptr %val317 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %val317, align 4, !annotation !167
  %78 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap, align 4
  %call319 = call i32 @regmap_read(ptr noundef %79, i32 noundef 60, ptr noundef nonnull %val317) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts_reg_dump.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts_reg_dump, %if.then332)) #6
          to label %do.end335 [label %if.then332], !srcloc !168

if.then332:                                       ; preds = %do.end313
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %val317 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val317, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts_reg_dump.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.69, i32 noundef %81) #6
  br label %do.end335

do.end335:                                        ; preds = %if.then332, %do.end313
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val317) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !153, !155, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__initcall__kmod_bcm_iproc_tsc__245_525_iproc_ts_driver_init6, !1, !"__initcall__kmod_bcm_iproc_tsc__245_525_iproc_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 525, i32 1}
!2 = !{ptr @__exitcall_iproc_ts_driver_exit, !1, !"__exitcall_iproc_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description246, !4, !"__UNIQUE_ID_description246", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 527, i32 1}
!5 = !{ptr @__UNIQUE_ID_author247, !6, !"__UNIQUE_ID_author247", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 528, i32 1}
!7 = !{ptr @__UNIQUE_ID_file248, !8, !"__UNIQUE_ID_file248", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 529, i32 1}
!9 = !{ptr @__UNIQUE_ID_license249, !8, !"__UNIQUE_ID_license249", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 520, i32 11}
!12 = !{ptr @iproc_ts_driver, !13, !"iproc_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 517, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 436, i32 8}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 439, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @iproc_ts_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @iproc_ts_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 443, i32 43}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 446, i32 3}
!28 = !{ptr @iproc_ts_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @iproc_ts_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 454, i32 3}
!32 = !{ptr @iproc_ts_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @iproc_ts_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 460, i32 3}
!36 = !{ptr @iproc_ts_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @iproc_ts_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 503, i32 3}
!40 = !{ptr @iproc_ts_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @iproc_ts_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 353, i32 31}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 355, i32 4}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @iproc_get_tsc_config._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @iproc_get_tsc_config._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 362, i32 31}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 364, i32 4}
!53 = !{ptr @iproc_get_tsc_config._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @iproc_get_tsc_config._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 371, i32 31}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 373, i32 4}
!59 = !{ptr @iproc_get_tsc_config._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @iproc_get_tsc_config._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 380, i32 31}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 382, i32 4}
!65 = !{ptr @iproc_get_tsc_config._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @iproc_get_tsc_config._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 389, i32 31}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 391, i32 4}
!71 = !{ptr @iproc_get_tsc_config._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @iproc_get_tsc_config._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 397, i32 31}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 399, i32 4}
!77 = !{ptr @iproc_get_tsc_config._entry.40, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @iproc_get_tsc_config._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 407, i32 27}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 408, i32 27}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 410, i32 27}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 412, i32 27}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 416, i32 29}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 418, i32 29}
!91 = !{ptr @iproc_default_config, !92, !"iproc_default_config", i1 false, i1 false}
!92 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 161, i32 31}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 279, i32 3}
!95 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @iproc_ts_start._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @iproc_ts_start._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 176, i32 2}
!100 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug227, !99, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!103 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug228, !105, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!105 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 177, i32 2}
!106 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug229, !108, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!108 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 178, i32 2}
!109 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug230, !111, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!111 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 179, i32 2}
!112 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug231, !114, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!114 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 180, i32 2}
!115 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug232, !117, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!117 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 181, i32 2}
!118 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug233, !120, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!120 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 182, i32 2}
!121 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug234, !123, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!123 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 183, i32 2}
!124 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug235, !126, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!126 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 184, i32 2}
!127 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug236, !129, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!129 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 185, i32 2}
!130 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug237, !132, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!132 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 186, i32 2}
!133 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug238, !135, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!135 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 187, i32 2}
!136 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug239, !138, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!138 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 188, i32 2}
!139 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug240, !141, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!141 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 189, i32 2}
!142 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug241, !144, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!144 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 190, i32 2}
!145 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ts_reg_dump.__UNIQUE_ID_ddebug242, !147, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!147 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 191, i32 2}
!148 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 223, i32 3}
!151 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @iproc_touchscreen_interrupt.__UNIQUE_ID_ddebug243, !150, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 259, i32 4}
!155 = !{ptr @iproc_touchscreen_interrupt.__UNIQUE_ID_ddebug244, !154, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!156 = !{ptr @iproc_ts_of_match, !157, !"iproc_ts_of_match", i1 false, i1 false}
!157 = !{!"../drivers/input/touchscreen/bcm_iproc_tsc.c", i32 511, i32 34}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{!"auto-init"}
!168 = !{i64 2148965371, i64 2148965376, i64 2148965389, i64 2148965433, i64 2148965467, i64 2148965488}
!169 = !{i8 0, i8 2}
