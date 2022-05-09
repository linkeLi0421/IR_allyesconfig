; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/fsl-imx25-tcq.c_pt.bc'
source_filename = "../drivers/input/touchscreen/fsl-imx25-tcq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mx25_tcq_priv = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.mx25_tsadc = type { ptr, ptr, ptr }

@__initcall__kmod_fsl_imx25_tcq__230_584_mx25_tcq_driver_init6 = internal global ptr @mx25_tcq_driver_init, section ".initcall6.init", align 4
@mx25_tcq_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mx25_tcq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mx25_tcq_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mx25_tcq_driver_exit = internal global ptr @mx25_tcq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [61 x i8] c"fsl_imx25_tcq.description=TS input driver for Freescale mx25\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [58 x i8] c"fsl_imx25_tcq.author=Markus Pargmann <mpa@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [59 x i8] c"fsl_imx25_tcq.file=drivers/input/touchscreen/fsl-imx25-tcq\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [29 x i8] c"fsl_imx25_tcq.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mx25-tcq\00", [23 x i8] zeroinitializer }, align 32
@mx25_tcq_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-tcq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mx25_tcq_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mx25_tcq_regconfig = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 92, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fsl_imx25_tcq:522:(&mx25_tcq_regconfig)->lock\00", [50 x i8] zeroinitializer }, align 32
@mx25_tcq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 524, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mx25_tcq_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/input/touchscreen/fsl-imx25-tcq.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mx25_tcq_probe._entry_ptr = internal global ptr @mx25_tcq_probe._entry, section ".printk_index", align 4
@mx25_tcq_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 534, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@mx25_tcq_probe._entry_ptr.9 = internal global ptr @mx25_tcq_probe._entry.7, section ".printk_index", align 4
@mx25_tcq_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mx25-tcq\00", [23 x i8] zeroinitializer }, align 32
@mx25_tcq_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 564, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed requesting IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@mx25_tcq_probe._entry_ptr.12 = internal global ptr @mx25_tcq_probe._entry.10, section ".printk_index", align 4
@mx25_tcq_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 570, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@mx25_tcq_probe._entry_ptr.15 = internal global ptr @mx25_tcq_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl,wires\00", [22 x i8] zeroinitializer }, align 32
@mx25_tcq_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 447, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to find fsl,wires properties\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mx25_tcq_parse_dt\00", [46 x i8] zeroinitializer }, align 32
@mx25_tcq_parse_dt._entry_ptr = internal global ptr @mx25_tcq_parse_dt._entry, section ".printk_index", align 4
@mx25_tcq_parse_dt._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 454, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%u-wire mode not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@mx25_tcq_parse_dt._entry_ptr.21 = internal global ptr @mx25_tcq_parse_dt._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,pen-threshold\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,settling-time-ns\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,pen-debounce-ns\00", [44 x i8] zeroinitializer }, align 32
@mx25_tcq_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable ipg clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mx25_tcq_open\00", [18 x i8] zeroinitializer }, align 32
@mx25_tcq_open._entry_ptr = internal global ptr @mx25_tcq_open._entry, section ".printk_index", align 4
@mx25_tcq_open._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 480, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to init tcq\0A\00", [44 x i8] zeroinitializer }, align 32
@mx25_tcq_open._entry_ptr.29 = internal global ptr @mx25_tcq_open._entry.27, section ".printk_index", align 4
@mx25_tcq_create_event_for_4wire.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl_imx25_tcq\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mx25_tcq_create_event_for_4wire\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Dropped samples because of invalid index %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"mx25_tcq_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 577, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 579, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"mx25_tcq_ids\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 49, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"mx25_tcq_regconfig\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 41, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 522, i32 15 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 524, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 534, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"mx25_tcq_name\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 20, i32 19 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 564, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 570, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 445, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 447, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 454, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 459, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 460, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 461, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 474, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 480, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [45 x i8] c"../drivers/input/touchscreen/fsl-imx25-tcq.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 264, i32 4 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_mx25_tcq_driver_exit, ptr @__initcall__kmod_fsl_imx25_tcq__230_584_mx25_tcq_driver_init6, ptr @mx25_tcq_driver_exit, ptr @mx25_tcq_open._entry, ptr @mx25_tcq_open._entry.27, ptr @mx25_tcq_open._entry_ptr, ptr @mx25_tcq_open._entry_ptr.29, ptr @mx25_tcq_parse_dt._entry, ptr @mx25_tcq_parse_dt._entry.19, ptr @mx25_tcq_parse_dt._entry_ptr, ptr @mx25_tcq_parse_dt._entry_ptr.21, ptr @mx25_tcq_probe._entry, ptr @mx25_tcq_probe._entry.10, ptr @mx25_tcq_probe._entry.13, ptr @mx25_tcq_probe._entry.7, ptr @mx25_tcq_probe._entry_ptr, ptr @mx25_tcq_probe._entry_ptr.12, ptr @mx25_tcq_probe._entry_ptr.15, ptr @mx25_tcq_probe._entry_ptr.9, ptr @mx25_tcq_driver, ptr @.str, ptr @mx25_tcq_ids, ptr @mx25_tcq_probe._key, ptr @mx25_tcq_regconfig, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @mx25_tcq_name, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_regconfig to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_parse_dt._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tcq_open._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_tcq_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mx25_tcq_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mx25_tcq_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mx25_tcq_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_tcq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %wires.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.mx25_tcq_priv, ptr %call.i, i32 0, i32 11
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev3, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wires.i) #6
  %8 = ptrtoint ptr %wires.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %wires.i, align 4, !annotation !83
  %pen_threshold.i = getelementptr inbounds %struct.mx25_tcq_priv, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %pen_threshold.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 500, ptr %pen_threshold.i, align 4
  %sample_count.i = getelementptr inbounds %struct.mx25_tcq_priv, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %sample_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %sample_count.i, align 4
  %pen_debounce.i = getelementptr inbounds %struct.mx25_tcq_priv, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %pen_debounce.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1000000, ptr %pen_debounce.i, align 4
  %settling_time.i = getelementptr inbounds %struct.mx25_tcq_priv, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %settling_time.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 250000, ptr %settling_time.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.16, ptr noundef nonnull %wires.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  br label %mx25_tcq_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %wires.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wires.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.i113 = icmp eq i32 %14, 4
  br i1 %cmp.i113, label %if.end12, label %do.end5.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %14) #9
  br label %mx25_tcq_parse_dt.exit.thread

mx25_tcq_parse_dt.exit.thread:                    ; preds = %do.end5.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end5.i ], [ %call.i.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wires.i) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end.i
  %mode.i = getelementptr inbounds %struct.mx25_tcq_priv, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %mode.i, align 4
  %call.i.i29.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.22, ptr noundef %pen_threshold.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i30.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef %settling_time.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i31.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef %pen_debounce.i, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wires.i) #6
  %call13 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call4, ptr noundef nonnull @mx25_tcq_regconfig, ptr noundef nonnull @mx25_tcq_probe._key, ptr noundef nonnull @.str.1) #6
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i114 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call20 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.mx25_tcq_priv, ptr %call.i, i32 0, i32 10
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call20, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp = icmp slt i32 %call20, 1
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %call25 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #6
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %21 = ptrtoint ptr %call25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mx25_tcq_name, ptr %call25, align 8
  call void @input_set_capability(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 330) #6
  call void @input_set_abs_params(ptr noundef nonnull %call25, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  call void @input_set_abs_params(ptr noundef nonnull %call25, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #6
  %id = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 3
  %22 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 25, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 31
  %23 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mx25_tcq_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 32
  %24 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mx25_tcq_close, ptr %close, align 4
  %idev32 = getelementptr inbounds %struct.mx25_tcq_priv, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %idev32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call25, ptr %idev32, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call25, i32 0, i32 40, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %core_regs = getelementptr inbounds %struct.mx25_tcq_priv, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %core_regs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %core_regs, align 4
  %tobool35.not = icmp eq ptr %28, null
  br i1 %tobool35.not, label %if.end31.cleanup_crit_edge, label %if.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %clk = getelementptr inbounds %struct.mx25_tsadc, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 4
  %clk38 = getelementptr inbounds %struct.mx25_tcq_priv, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %clk38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %clk38, align 4
  %tobool40.not = icmp eq ptr %31, null
  br i1 %tobool40.not, label %if.end37.cleanup_crit_edge, label %if.end42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %driver_data.i.i115 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i115 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i115, align 4
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %call45 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %35, ptr noundef nonnull @mx25_tcq_irq, ptr noundef nonnull @mx25_tcq_irq_thread, i32 noundef 0, ptr noundef %37, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end42
  %call52 = call i32 @input_register_device(ptr noundef nonnull %call25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end51.cleanup_crit_edge, label %do.end57

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %if.end51.cleanup_crit_edge, %do.end50, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end30, %if.end19.cleanup_crit_edge, %do.end, %mx25_tcq_parse_dt.exit.thread, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then6 ], [ %19, %do.end ], [ %call45, %do.end50 ], [ %call52, %do.end57 ], [ -12, %do.end30 ], [ -12, %entry.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ], [ -22, %if.end37.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ], [ %retval.0.i.ph, %mx25_tcq_parse_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_tcq_open(ptr noundef %idev) #2 align 64 {
entry:
  %tgcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40
  %driver_data.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.mx25_tcq_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tgcr.i) #6
  %4 = ptrtoint ptr %tgcr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tgcr.i, align 4, !annotation !83
  %core_regs.i = getelementptr inbounds %struct.mx25_tcq_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %core_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core_regs.i, align 4
  %call.i21 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %tgcr.i) #6
  %7 = ptrtoint ptr %tgcr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tgcr.i, align 4
  %shr.i = lshr i32 %8, 16
  %and.i = and i32 %shr.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 4
  %phi.bo1.i = mul nuw nsw i32 %and.i, 2000000
  %phi.bo.i = or i32 %phi.bo1.i, 2
  %cond.i = select i1 %cmp.i, i32 8000002, i32 %phi.bo.i
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call2.i = call i32 @clk_get_rate(ptr noundef %10) #6
  %div.i = udiv i32 %call2.i, 1000
  %add3.i = add nuw nsw i32 %div.i, 1
  %div4.i = udiv i32 %cond.i, %add3.i
  %pen_debounce.i = getelementptr inbounds %struct.mx25_tcq_priv, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %pen_debounce.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pen_debounce.i, align 4
  %mul5.i = shl nuw nsw i32 %div4.i, 3
  %settling_time.i = getelementptr inbounds %struct.mx25_tcq_priv, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %settling_time.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %settling_time.i, align 4
  %add11.i = add nsw i32 %mul5.i, -1
  %sub12.i = add i32 %add11.i, %14
  %div14.i = udiv i32 %sub12.i, %mul5.i
  %sub15.i = add i32 %div14.i, -1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call16.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 4, i32 noundef 196608) #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 4, i32 noundef 196608, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %19 = call i32 @llvm.umin.i32(i32 %sub15.i, i32 255) #6
  %shl.i.i.i = shl nuw i32 %19, 24
  %or.i.i.i = or i32 %shl.i.i.i, 1054092
  %or2.i.i.i = or i32 %shl.i.i.i, 22414
  %20 = ptrtoint ptr %core_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core_regs.i, align 4
  %call.i.i.i = call i32 @regmap_write(ptr noundef %21, i32 noundef 8, i32 noundef %or.i.i.i) #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call3.i.i.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 64, i32 noundef %or.i.i.i) #6
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call5.i.i.i = call i32 @regmap_write(ptr noundef %25, i32 noundef 68, i32 noundef %or2.i.i.i) #6
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %sample_count.i.i.i = getelementptr inbounds %struct.mx25_tcq_priv, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %sample_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sample_count.i.i.i, align 4
  %sub.i.i.i = shl i32 %29, 16
  %shl7.i.i.i = add i32 %sub.i.i.i, -65536
  %or8.i.i.i = or i32 %shl.i.i.i, %shl7.i.i.i
  %or10.i.i.i = or i32 %or8.i.i.i, 7312
  %call11.i.i.i = call i32 @regmap_write(ptr noundef %27, i32 noundef 72, i32 noundef %or10.i.i.i) #6
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %sample_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sample_count.i.i.i, align 4
  %sub14.i.i.i = shl i32 %33, 16
  %shl15.i.i.i = add i32 %sub14.i.i.i, -65536
  %or16.i.i.i = or i32 %shl.i.i.i, %shl15.i.i.i
  %or18.i.i.i = or i32 %or16.i.i.i, 17924
  %call19.i.i.i = call i32 @regmap_write(ptr noundef %31, i32 noundef 76, i32 noundef %or18.i.i.i) #6
  %34 = ptrtoint ptr %core_regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core_regs.i, align 4
  %or21.i.i.i = or i32 %shl.i.i.i, 1070990
  %call22.i.i.i = call i32 @regmap_write(ptr noundef %35, i32 noundef 8, i32 noundef %or21.i.i.i) #6
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i2.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 32, i32 noundef 1061392) #6
  %38 = ptrtoint ptr %sample_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sample_count.i.i.i, align 4
  %mul.i.i = shl i32 %39, 1
  %add.i.i = add i32 %mul.i.i, 2
  %expected_samples.i.i = getelementptr inbounds %struct.mx25_tcq_priv, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %expected_samples.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i.i, ptr %expected_samples.i.i, align 4
  %sub.i = add i32 %add11.i, %12
  %div8.i = udiv i32 %sub.i, %mul5.i
  %sub9.i = add i32 %div8.i, -1
  %41 = call i32 @llvm.umin.i32(i32 %sub9.i, i32 127) #6
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %sub28.i = shl i32 %add.i.i, 8
  %or.i = add i32 %sub28.i, -176
  %call.i3.i = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 4, i32 noundef 4080, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %44 = ptrtoint ptr %core_regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %core_regs.i, align 4
  %shl32.i = shl nuw i32 %41, 25
  %call.i4.i = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 0, i32 noundef -33554432, i32 noundef %shl32.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %46 = ptrtoint ptr %core_regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %core_regs.i, align 4
  %call.i5.i = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 0, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %48 = ptrtoint ptr %core_regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core_regs.i, align 4
  %call.i6.i = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 0, i32 noundef 8388608, i32 noundef 8388608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i7.i = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 4, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i8.i = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 4, i32 noundef 61448, i32 noundef 57352, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tgcr.i) #6
  call fastcc void @mx25_tcq_re_enable_touch_detection(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx25_tcq_close(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef 262144, i32 noundef 262144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 12, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %clk = getelementptr inbounds %struct.mx25_tcq_priv, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_tcq_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #6
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat, align 4, !annotation !83
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %stat) #6
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stat, align 4
  %and = and i32 %4, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @mx25_tcq_re_enable_touch_detection(ptr noundef %dev_id)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat, align 4
  %and1 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 4, i32 noundef 262144, i32 noundef 262144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  %call.i.i17 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 4, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  %call.i.i18 = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 12, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %13 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stat, align 4
  %and5 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %call.i.i19 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 12, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %ret.0 = phi i32 [ 2, %if.then7 ], [ 1, %if.end4.if.end8_crit_edge ]
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_id, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 8, i32 noundef 113, i32 noundef 113, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_tcq_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %sample_buf = alloca [16 x i32], align 4
  %stats = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sample_buf) #6
  %0 = call ptr @memset(ptr %sample_buf, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stats) #6
  %1 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %stats, align 4, !annotation !83
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 8, ptr noundef nonnull %stats) #6
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats, align 4
  %shr = lshr i32 %5, 8
  %and = and i32 %shr, 31
  %sample_count = getelementptr inbounds %struct.mx25_tcq_priv, ptr %dev_id, i32 0, i32 5
  %6 = ptrtoint ptr %sample_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sample_count, align 4
  %rem = urem i32 %and, %7
  %sub = sub nsw i32 %and, %rem
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %rem)
  %tobool.not = icmp eq i32 %and, %rem
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %arrayidx = getelementptr [16 x i32], ptr %sample_buf, i32 0, i32 %i.017
  %call2 = call i32 @regmap_read(ptr noundef %9, i32 noundef 0, ptr noundef %arrayidx) #6
  %inc = add i32 %i.017, 1
  %cmp.not = icmp eq i32 %inc, %sub
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @mx25_tcq_create_event_for_4wire(ptr noundef %dev_id, ptr noundef nonnull %sample_buf, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stats) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sample_buf) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mx25_tcq_re_enable_touch_detection(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %tcqcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %core_regs = getelementptr inbounds %struct.mx25_tcq_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_regs, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 8, i32 noundef 1054092) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcqcr.i) #6
  %4 = ptrtoint ptr %tcqcr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tcqcr.i, align 4, !annotation !83
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 4, ptr noundef nonnull %tcqcr.i) #6
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %call.i.i12 = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 4, i32 noundef 131072, i32 noundef 131072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %call.i10.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 4, i32 noundef 131072, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %13 = ptrtoint ptr %tcqcr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tcqcr.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 4, i32 noundef %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcqcr.i) #6
  %15 = ptrtoint ptr %core_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core_regs, align 4
  %call2 = call i32 @regmap_write(ptr noundef %16, i32 noundef 8, i32 noundef 1070990) #6
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %call.i13 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 8, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %call.i14 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 12, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %call.i.i15 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 4, i32 noundef 262144, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mx25_tcq_create_event_for_4wire(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %sample_buf, i32 noundef %samples) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples)
  %cmp84.not = icmp eq i32 %samples, 0
  br i1 %cmp84.not, label %entry.cleanup32_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %x_pos.089 = phi i32 [ %x_pos.2.ph, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %y_pos.088 = phi i32 [ %y_pos.2.ph, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.087 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %touch_post.086 = phi i32 [ %touch_post.2.ph, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %touch_pre.085 = phi i32 [ %touch_pre.2.ph, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sample_buf, i32 %i.087
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 15
  %shr = lshr i32 %1, 4
  %and2 = and i32 %shr, 4095
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.body [
    i32 1, label %for.body.for.inc_crit_edge
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 5, label %sw.bb5
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb4:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx25_tcq_create_event_for_4wire.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx25_tcq_create_event_for_4wire, %if.then)) #6
          to label %cleanup32 [label %if.then], !srcloc !84

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mx25_tcq_priv, ptr %priv, i32 0, i32 11
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx25_tcq_create_event_for_4wire.__UNIQUE_ID_ddebug227, ptr noundef %4, ptr noundef nonnull @.str.32, i32 noundef %and) #6
  br label %cleanup32

for.inc:                                          ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %for.body.for.inc_crit_edge
  %touch_pre.2.ph = phi i32 [ %and2, %for.body.for.inc_crit_edge ], [ %touch_pre.085, %sw.bb3 ], [ %touch_pre.085, %sw.bb4 ], [ %touch_pre.085, %sw.bb5 ]
  %touch_post.2.ph = phi i32 [ %touch_post.086, %for.body.for.inc_crit_edge ], [ %touch_post.086, %sw.bb3 ], [ %touch_post.086, %sw.bb4 ], [ %and2, %sw.bb5 ]
  %y_pos.2.ph = phi i32 [ %y_pos.088, %for.body.for.inc_crit_edge ], [ %y_pos.088, %sw.bb3 ], [ %and2, %sw.bb4 ], [ %y_pos.088, %sw.bb5 ]
  %x_pos.2.ph = phi i32 [ %x_pos.089, %for.body.for.inc_crit_edge ], [ %and2, %sw.bb3 ], [ %x_pos.089, %sw.bb4 ], [ %x_pos.089, %sw.bb5 ]
  %inc = add nuw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %samples
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %cmp84.not, label %for.end.cleanup32_crit_edge, label %if.then10

for.end.cleanup32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.then10:                                        ; preds = %for.end
  %pen_threshold = getelementptr inbounds %struct.mx25_tcq_priv, ptr %priv, i32 0, i32 4
  %5 = ptrtoint ptr %pen_threshold to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pen_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %touch_pre.2.ph, i32 %6)
  %cmp11 = icmp ult i32 %touch_pre.2.ph, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %touch_post.2.ph, i32 %6)
  %cmp13 = icmp ult i32 %touch_post.2.ph, %6
  %or.cond = select i1 %cmp11, i1 %cmp13, i1 false
  br i1 %or.cond, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %sample_count = getelementptr inbounds %struct.mx25_tcq_priv, ptr %priv, i32 0, i32 5
  %7 = ptrtoint ptr %sample_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sample_count, align 4
  %div = udiv i32 %x_pos.2.ph, %8
  %div16 = udiv i32 %y_pos.2.ph, %8
  %idev = getelementptr inbounds %struct.mx25_tcq_priv, ptr %priv, i32 0, i32 2
  %9 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %idev, align 4
  tail call void @input_event(ptr noundef %10, i32 noundef 3, i32 noundef 0, i32 noundef %div) #6
  %11 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %idev, align 4
  tail call void @input_event(ptr noundef %12, i32 noundef 3, i32 noundef 1, i32 noundef %div16) #6
  %13 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %idev, align 4
  tail call void @input_event(ptr noundef %14, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  %15 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %idev, align 4
  tail call void @input_event(ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 12, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup32

if.else:                                          ; preds = %if.then10
  %or.cond68 = select i1 %cmp11, i1 true, i1 %cmp13
  br i1 %or.cond68, label %if.else28, label %if.then25

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %idev26 = getelementptr inbounds %struct.mx25_tcq_priv, ptr %priv, i32 0, i32 2
  %19 = ptrtoint ptr %idev26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %idev26, align 4
  tail call void @input_event(ptr noundef %20, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  %21 = ptrtoint ptr %idev26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %idev26, align 4
  tail call void @input_event(ptr noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  tail call fastcc void @mx25_tcq_re_enable_touch_detection(ptr noundef %priv)
  br label %cleanup32

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %call.i.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 12, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup32

cleanup32:                                        ; preds = %if.else28, %if.then25, %if.then14, %for.end.cleanup32_crit_edge, %if.then, %do.body, %entry.cleanup32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_fsl_imx25_tcq__230_584_mx25_tcq_driver_init6, !1, !"__initcall__kmod_fsl_imx25_tcq__230_584_mx25_tcq_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 584, i32 1}
!2 = !{ptr @__exitcall_mx25_tcq_driver_exit, !1, !"__exitcall_mx25_tcq_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description231, !4, !"__UNIQUE_ID_description231", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 586, i32 1}
!5 = !{ptr @__UNIQUE_ID_author232, !6, !"__UNIQUE_ID_author232", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 587, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 588, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 579, i32 11}
!12 = !{ptr @mx25_tcq_driver, !13, !"mx25_tcq_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 577, i32 31}
!14 = !{ptr @mx25_tcq_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 522, i32 15}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 524, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mx25_tcq_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mx25_tcq_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 534, i32 3}
!27 = !{ptr @mx25_tcq_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mx25_tcq_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 564, i32 3}
!31 = !{ptr @mx25_tcq_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mx25_tcq_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 570, i32 3}
!35 = !{ptr @mx25_tcq_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mx25_tcq_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 445, i32 35}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 447, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mx25_tcq_parse_dt._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mx25_tcq_parse_dt._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 454, i32 3}
!46 = !{ptr @mx25_tcq_parse_dt._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mx25_tcq_parse_dt._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 459, i32 27}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 460, i32 27}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 461, i32 27}
!54 = !{ptr @mx25_tcq_regconfig, !55, !"mx25_tcq_regconfig", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 41, i32 29}
!56 = !{ptr @mx25_tcq_name, !57, !"mx25_tcq_name", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 20, i32 19}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 474, i32 3}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mx25_tcq_open._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mx25_tcq_open._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 480, i32 3}
!65 = !{ptr @mx25_tcq_open._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mx25_tcq_open._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 264, i32 4}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mx25_tcq_create_event_for_4wire.__UNIQUE_ID_ddebug227, !68, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!72 = !{ptr @mx25_tcq_ids, !73, !"mx25_tcq_ids", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/fsl-imx25-tcq.c", i32 49, i32 34}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{i64 2148735350, i64 2148735355, i64 2148735368, i64 2148735412, i64 2148735446, i64 2148735467}
