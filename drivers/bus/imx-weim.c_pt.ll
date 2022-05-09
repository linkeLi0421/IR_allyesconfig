; ModuleID = '/llk/IR_all_yes/drivers/bus/imx-weim.c_pt.bc'
source_filename = "../drivers/bus/imx-weim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.imx_weim_devtype = type { i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.cs_timing_state = type { [6 x %struct.cs_timing] }
%struct.cs_timing = type { i8, [6 x i32] }
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

@__initcall__kmod_imx_weim__171_288_weim_driver_init6 = internal global ptr @weim_driver_init, section ".initcall6.init", align 4
@weim_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @weim_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @weim_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_weim_driver_exit = internal global ptr @weim_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author172 = internal constant [45 x i8] c"imx_weim.author=Freescale Semiconductor Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [48 x i8] c"imx_weim.description=i.MX EIM Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [35 x i8] c"imx_weim.file=drivers/bus/imx-weim\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [21 x i8] c"imx_weim.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx-weim\00", [23 x i8] zeroinitializer }, align 32
@weim_id_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-weim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx1_weim_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-weim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx27_weim_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx50-weim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx50_weim_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-weim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx50_weim_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-weim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx51_weim_devtype }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@weim_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Driver registered.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"weim_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/bus/imx-weim.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@weim_probe._entry_ptr = internal global ptr @weim_probe._entry, section ".printk_index", align 4
@imx50_weim_devtype = internal constant { %struct.imx_weim_devtype, [40 x i8] } { %struct.imx_weim_devtype { i32 4, i32 6, i32 24, i32 144, i32 1, i32 8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,burst-clk-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl,continuous-burst-clk\00", [39 x i8] zeroinitializer }, align 32
@weim_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 219, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"continuous burst clk not supported.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"weim_parse_dt\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@weim_parse_dt._entry_ptr = internal global ptr @weim_parse_dt._entry, section ".printk_index", align 4
@weim_parse_dt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 226, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"burst clk mode not supported.\0A\00", [33 x i8] zeroinitializer }, align 32
@weim_parse_dt._entry_ptr.13 = internal global ptr @weim_parse_dt._entry.11, section ".printk_index", align 4
@weim_parse_dt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.3, i32 235, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%pOF set timing failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@weim_parse_dt._entry_ptr.17 = internal global ptr @weim_parse_dt._entry.14, section ".printk_index", align 4
@weim_parse_dt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.3, i32 245, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%pOF fail to create devices.\0A\00", [34 x i8] zeroinitializer }, align 32
@weim_parse_dt._entry_ptr.20 = internal global ptr @weim_parse_dt._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,weim-cs-gpr\00", [16 x i8] zeroinitializer }, align 32
@imx_weim_gpr_setup.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx_weim\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_weim_gpr_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to find weim-cs-gpr\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ranges\00", [25 x i8] zeroinitializer }, align 32
@imx_weim_gpr_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.3, i32 126, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid 'ranges' configuration\0A\00", [32 x i8] zeroinitializer }, align 32
@imx_weim_gpr_setup._entry_ptr = internal global ptr @imx_weim_gpr_setup._entry, section ".printk_index", align 4
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,weim-cs-timing\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@weim_timing_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 174, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fsl,weim-cs-timing conflict on %pOF\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"weim_timing_setup\00", [46 x i8] zeroinitializer }, align 32
@weim_timing_setup._entry_ptr = internal global ptr @weim_timing_setup._entry, section ".printk_index", align 4
@imx1_weim_devtype = internal constant { %struct.imx_weim_devtype, [40 x i8] } { %struct.imx_weim_devtype { i32 6, i32 2, i32 8, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@imx27_weim_devtype = internal constant { %struct.imx_weim_devtype, [40 x i8] } { %struct.imx_weim_devtype { i32 6, i32 3, i32 16, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@imx51_weim_devtype = internal constant { %struct.imx_weim_devtype, [40 x i8] } { %struct.imx_weim_devtype { i32 6, i32 6, i32 24, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 27, i64 75, i64 585]
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"weim_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 281, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 283, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"weim_id_table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 67, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 276, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"imx50_weim_devtype\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 39, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 208, i32 47 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 214, i32 7 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 218, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 226, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 234, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 244, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 98, i32 44 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 100, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 104, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 126, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 146, i32 39 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 155, i32 49 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 174, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"imx1_weim_devtype\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 27, i32 38 }
@___asan_gen_.140 = private unnamed_addr constant [19 x i8] c"imx27_weim_devtype\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 33, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"imx51_weim_devtype\00", align 1
@___asan_gen_.144 = private constant [26 x i8] c"../drivers/bus/imx-weim.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 48, i32 38 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_weim_driver_exit, ptr @__initcall__kmod_imx_weim__171_288_weim_driver_init6, ptr @imx_weim_gpr_setup._entry, ptr @imx_weim_gpr_setup._entry_ptr, ptr @weim_driver_exit, ptr @weim_parse_dt._entry, ptr @weim_parse_dt._entry.11, ptr @weim_parse_dt._entry.14, ptr @weim_parse_dt._entry.18, ptr @weim_parse_dt._entry_ptr, ptr @weim_parse_dt._entry_ptr.13, ptr @weim_parse_dt._entry_ptr.17, ptr @weim_parse_dt._entry_ptr.20, ptr @weim_probe._entry, ptr @weim_probe._entry_ptr, ptr @weim_timing_setup._entry, ptr @weim_timing_setup._entry_ptr, ptr @weim_driver, ptr @.str, ptr @weim_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @imx50_weim_devtype, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @imx1_weim_devtype, ptr @imx27_weim_devtype, ptr @imx51_weim_devtype], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weim_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weim_id_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weim_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx50_weim_devtype to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weim_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weim_parse_dt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weim_parse_dt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weim_parse_dt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_weim_gpr_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @weim_timing_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx1_weim_devtype to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx27_weim_devtype to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx51_weim_devtype to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @weim_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @weim_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @weim_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @weim_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @weim_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cs_idx.i.i = alloca i32, align 4
  %value.i.i = alloca [6 x i32], align 4
  %ts.i = alloca %struct.cs_timing_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %cmp.i33 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %call5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end12, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call5) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end.i
  %call.i34 = tail call ptr @of_match_device(ptr noundef nonnull @weim_id_table, ptr noundef %dev) #7
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i34, i32 0, i32 3
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %ts.i) #7
  %4 = call ptr @memset(ptr %ts.i, i32 0, i32 168)
  %cmp.i35 = icmp eq ptr %3, @imx50_weim_devtype
  br i1 %cmp.i35, label %if.then.i, label %if.end12.if.end3.i_crit_edge

if.end12.if.end3.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end12
  %call1.i36 = tail call fastcc i32 @imx_weim_gpr_setup(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.if.then15_crit_edge

if.then.i.if.then15_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.end12.if.end3.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then.i.if.end3.i_crit_edge ], [ -1, %if.end12.if.end3.i_crit_edge ]
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end3.i.if.end34.i_crit_edge, label %if.then6.i

if.end3.i.if.end34.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then6.i:                                       ; preds = %if.end3.i
  %wcr_bcm.i = getelementptr inbounds %struct.imx_weim_devtype, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %wcr_bcm.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wcr_bcm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not.i = icmp eq i32 %8, 0
  br i1 %tobool7.not.i, label %do.end31.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then6.i
  %wcr_offset.i = getelementptr inbounds %struct.imx_weim_devtype, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %wcr_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wcr_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !86
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %13 = ptrtoint ptr %wcr_bcm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wcr_bcm.i, align 4
  %or.i = or i32 %14, %12
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call.i105.i = tail call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %tobool.i106.not.i = icmp eq ptr %call.i105.i, null
  br i1 %tobool.i106.not.i, label %if.then8.i.do.body23.i_crit_edge, label %if.then15.i

if.then8.i.do.body23.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

if.then15.i:                                      ; preds = %if.then8.i
  %wcr_cont_bclk.i = getelementptr inbounds %struct.imx_weim_devtype, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %wcr_cont_bclk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wcr_cont_bclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not.i = icmp eq i32 %18, 0
  br i1 %tobool16.not.i, label %do.end.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %or19.i = or i32 %18, %or.i
  br label %do.body23.i

do.end.i:                                         ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %if.then15

do.body23.i:                                      ; preds = %if.then17.i, %if.then8.i.do.body23.i_crit_edge
  %reg.0.i = phi i32 [ %or19.i, %if.then17.i ], [ %or.i, %if.then8.i.do.body23.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #7
  %20 = ptrtoint ptr %wcr_offset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wcr_offset.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %call1, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %19) #7, !srcloc !89
  br label %if.end34.i

do.end31.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %if.then15

if.end34.i:                                       ; preds = %do.body23.i, %if.end3.i.if.end34.i_crit_edge
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  %call37.i = tail call ptr @of_get_next_available_child(ptr noundef %23, ptr noundef null) #7
  %cmp38.not115.i = icmp eq ptr %call37.i, null
  br i1 %cmp38.not115.i, label %if.end34.i.if.end58.i_crit_edge, label %for.body.lr.ph.i

if.end34.i.if.end58.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

for.body.lr.ph.i:                                 ; preds = %if.end34.i
  %cs_regs_count.i.i = getelementptr inbounds %struct.imx_weim_devtype, ptr %3, i32 0, i32 1
  %cs_stride.i.i = getelementptr inbounds %struct.imx_weim_devtype, ptr %3, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.0117.i = phi ptr [ %call37.i, %for.body.lr.ph.i ], [ %call51.i, %for.inc.i.for.body.i_crit_edge ]
  %have_child.0116.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %have_child.1.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs_idx.i.i) #7
  %24 = ptrtoint ptr %cs_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %cs_idx.i.i, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %value.i.i) #7
  %25 = call ptr @memset(ptr %value.i.i, i32 255, i32 24)
  %26 = ptrtoint ptr %cs_regs_count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cs_regs_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %27)
  %cmp.i.i = icmp ugt i32 %27, 6
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end21.i.i, !prof !91

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 141, i32 noundef 9, ptr noundef null) #7
  br label %weim_timing_setup.exit.thread.i

if.end21.i.i:                                     ; preds = %for.body.i
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %29)
  %cmp23.i.i = icmp ugt i32 %29, 6
  br i1 %cmp23.i.i, label %do.end39.i.i, label %if.end55.i.i, !prof !91

do.end39.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 143, i32 noundef 9, ptr noundef null) #7
  br label %weim_timing_setup.exit.thread.i

if.end55.i.i:                                     ; preds = %if.end21.i.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0117.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %value.i.i, i32 noundef %27, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool57.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool57.not.i.i, label %if.end59.i.i, label %weim_timing_setup.exit.i

if.end59.i.i:                                     ; preds = %if.end55.i.i
  %call60.i.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.0117.i, ptr noundef nonnull @.str.28, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i)
  %cmp61.i.i = icmp slt i32 %call60.i.i, 0
  br i1 %cmp61.i.i, label %if.end59.i.i.weim_timing_setup.exit.thread.i_crit_edge, label %if.end63.i.i

if.end59.i.i.weim_timing_setup.exit.thread.i_crit_edge: ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %weim_timing_setup.exit.thread.i

if.end63.i.i:                                     ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i)
  %tobool64.not.i.i = icmp eq i32 %call60.i.i, 0
  br i1 %tobool64.not.i.i, label %if.end63.i.i.weim_timing_setup.exit.thread.i_crit_edge, label %if.end63.i.i.for.body.i.i_crit_edge

if.end63.i.i.for.body.i.i_crit_edge:              ; preds = %if.end63.i.i
  br label %for.body.i.i

if.end63.i.i.weim_timing_setup.exit.thread.i_crit_edge: ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %weim_timing_setup.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc109.i.i.for.body.i.i_crit_edge, %if.end63.i.i.for.body.i.i_crit_edge
  %reg_idx.0147.i.i = phi i32 [ %inc110.i.i, %for.inc109.i.i.for.body.i.i_crit_edge ], [ 0, %if.end63.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul i32 %reg_idx.0147.i.i, 3
  %call68.i.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0117.i, ptr noundef nonnull @.str.28, i32 noundef %mul.i.i, ptr noundef nonnull %cs_idx.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i.i)
  %tobool69.not.i.i = icmp eq i32 %call68.i.i, 0
  br i1 %tobool69.not.i.i, label %if.end71.i.i, label %for.body.i.i.weim_timing_setup.exit.thread112.i_crit_edge

for.body.i.i.weim_timing_setup.exit.thread112.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %weim_timing_setup.exit.thread112.i

if.end71.i.i:                                     ; preds = %for.body.i.i
  %30 = ptrtoint ptr %cs_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cs_idx.i.i, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp73.not.i.i = icmp ult i32 %31, %33
  br i1 %cmp73.not.i.i, label %if.end75.i.i, label %if.end71.i.i.weim_timing_setup.exit.thread.i_crit_edge

if.end71.i.i.weim_timing_setup.exit.thread.i_crit_edge: ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %weim_timing_setup.exit.thread.i

if.end75.i.i:                                     ; preds = %if.end71.i.i
  %arrayidx.i.i = getelementptr [6 x %struct.cs_timing], ptr %ts.i, i32 0, i32 %31
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool76.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool76.not.i.i, label %if.end87thread-pre-split.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end75.i.i
  %regs.i.i = getelementptr [6 x %struct.cs_timing], ptr %ts.i, i32 0, i32 %31, i32 1
  %36 = ptrtoint ptr %cs_regs_count.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cs_regs_count.i.i, align 4
  %mul80.i.i = shl i32 %37, 2
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %value.i.i, ptr %regs.i.i, i32 %mul80.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool82.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool82.not.i.i, label %land.lhs.true.i.i.if.end87.i.i_crit_edge, label %do.end86.i.i

land.lhs.true.i.i.if.end87.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i.i

do.end86.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull %child.0117.i) #10
  br label %weim_timing_setup.exit.thread.i

if.end87thread-pre-split.i.i:                     ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %cs_regs_count.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i.i = load i32, ptr %cs_regs_count.i.i, align 4
  br label %if.end87.i.i

if.end87.i.i:                                     ; preds = %if.end87thread-pre-split.i.i, %land.lhs.true.i.i.if.end87.i.i_crit_edge
  %39 = phi i32 [ %.pr.i.i, %if.end87thread-pre-split.i.i ], [ %37, %land.lhs.true.i.i.if.end87.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp90144.not.i.i = icmp eq i32 %39, 0
  br i1 %cmp90144.not.i.i, label %if.end87.i.i.for.end.i.i_crit_edge, label %if.end87.i.i.do.body92.i.i_crit_edge

if.end87.i.i.do.body92.i.i_crit_edge:             ; preds = %if.end87.i.i
  br label %do.body92.i.i

if.end87.i.i.for.end.i.i_crit_edge:               ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

do.body92.i.i:                                    ; preds = %do.body92.i.i.do.body92.i.i_crit_edge, %if.end87.i.i.do.body92.i.i_crit_edge
  %i.0145.i.i = phi i32 [ %inc.i.i, %do.body92.i.i.do.body92.i.i_crit_edge ], [ 0, %if.end87.i.i.do.body92.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @arm_heavy_mb() #7
  %arrayidx95.i.i = getelementptr [6 x i32], ptr %value.i.i, i32 0, i32 %i.0145.i.i
  %40 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx95.i.i, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #7
  %43 = ptrtoint ptr %cs_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cs_idx.i.i, align 4
  %45 = ptrtoint ptr %cs_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cs_stride.i.i, align 4
  %mul96.i.i = mul i32 %46, %44
  %add.ptr.i.i = getelementptr i8, ptr %call1, i32 %mul96.i.i
  %mul97.i.i = shl i32 %i.0145.i.i, 2
  %add.ptr98.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul97.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i.i, i32 %42) #7, !srcloc !89
  %inc.i.i = add nuw i32 %i.0145.i.i, 1
  %47 = ptrtoint ptr %cs_regs_count.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cs_regs_count.i.i, align 4
  %cmp90.i.i = icmp ult i32 %inc.i.i, %48
  br i1 %cmp90.i.i, label %do.body92.i.i.do.body92.i.i_crit_edge, label %do.body92.i.i.for.end.i.i_crit_edge

do.body92.i.i.for.end.i.i_crit_edge:              ; preds = %do.body92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

do.body92.i.i.do.body92.i.i_crit_edge:            ; preds = %do.body92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body92.i.i

for.end.i.i:                                      ; preds = %do.body92.i.i.for.end.i.i_crit_edge, %if.end87.i.i.for.end.i.i_crit_edge
  br i1 %tobool76.not.i.i, label %if.then101.i.i, label %for.end.i.i.for.inc109.i.i_crit_edge

for.end.i.i.for.inc109.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc109.i.i

if.then101.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %arrayidx.i.i, align 4
  %regs103.i.i = getelementptr [6 x %struct.cs_timing], ptr %ts.i, i32 0, i32 %31, i32 1
  %50 = ptrtoint ptr %cs_regs_count.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cs_regs_count.i.i, align 4
  %mul107.i.i = shl i32 %51, 2
  %52 = call ptr @memcpy(ptr %regs103.i.i, ptr %value.i.i, i32 %mul107.i.i)
  br label %for.inc109.i.i

for.inc109.i.i:                                   ; preds = %if.then101.i.i, %for.end.i.i.for.inc109.i.i_crit_edge
  %inc110.i.i = add nuw nsw i32 %reg_idx.0147.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc110.i.i, %call60.i.i
  br i1 %exitcond.not.i.i, label %for.inc109.i.i.weim_timing_setup.exit.thread112.i_crit_edge, label %for.inc109.i.i.for.body.i.i_crit_edge

for.inc109.i.i.for.body.i.i_crit_edge:            ; preds = %for.inc109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc109.i.i.weim_timing_setup.exit.thread112.i_crit_edge: ; preds = %for.inc109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %weim_timing_setup.exit.thread112.i

weim_timing_setup.exit.thread.i:                  ; preds = %do.end86.i.i, %if.end71.i.i.weim_timing_setup.exit.thread.i_crit_edge, %if.end63.i.i.weim_timing_setup.exit.thread.i_crit_edge, %if.end59.i.i.weim_timing_setup.exit.thread.i_crit_edge, %do.end39.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %if.end63.i.i.weim_timing_setup.exit.thread.i_crit_edge ], [ %call60.i.i, %if.end59.i.i.weim_timing_setup.exit.thread.i_crit_edge ], [ -22, %do.end86.i.i ], [ -22, %do.end39.i.i ], [ -22, %do.end.i.i ], [ -22, %if.end71.i.i.weim_timing_setup.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %value.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs_idx.i.i) #7
  br label %do.end45.i

weim_timing_setup.exit.thread112.i:               ; preds = %for.inc109.i.i.weim_timing_setup.exit.thread112.i_crit_edge, %for.body.i.i.weim_timing_setup.exit.thread112.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %value.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs_idx.i.i) #7
  br label %for.inc.i

weim_timing_setup.exit.i:                         ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %value.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs_idx.i.i) #7
  br label %do.end45.i

do.end45.i:                                       ; preds = %weim_timing_setup.exit.i, %weim_timing_setup.exit.thread.i
  %retval.0.i109.i = phi i32 [ %retval.0.i.ph.i, %weim_timing_setup.exit.thread.i ], [ %call.i.i.i, %weim_timing_setup.exit.i ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull %child.0117.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end45.i, %weim_timing_setup.exit.thread112.i
  %retval.0.i110.i = phi i32 [ %retval.0.i109.i, %do.end45.i ], [ 0, %weim_timing_setup.exit.thread112.i ]
  %have_child.1.i = phi i32 [ %have_child.0116.i, %do.end45.i ], [ 1, %weim_timing_setup.exit.thread112.i ]
  %53 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node.i, align 8
  %call51.i = call ptr @of_get_next_available_child(ptr noundef %54, ptr noundef nonnull %child.0117.i) #7
  %cmp38.not.i = icmp eq ptr %call51.i, null
  br i1 %cmp38.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have_child.1.i)
  %tobool52.not.i = icmp eq i32 %have_child.1.i, 0
  br i1 %tobool52.not.i, label %for.end.i.if.end58.i_crit_edge, label %if.then53.i

for.end.i.if.end58.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

if.then53.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node.i, align 8
  %call57.i = call i32 @of_platform_default_populate(ptr noundef %56, ptr noundef null, ptr noundef %dev) #7
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then53.i, %for.end.i.if.end58.i_crit_edge, %if.end34.i.if.end58.i_crit_edge
  %ret.2.i = phi i32 [ %call57.i, %if.then53.i ], [ %retval.0.i110.i, %for.end.i.if.end58.i_crit_edge ], [ %ret.0.i, %if.end34.i.if.end58.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool59.not.i = icmp eq i32 %ret.2.i, 0
  br i1 %tobool59.not.i, label %do.end, label %do.end63.i

do.end63.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %58) #10
  br label %if.then15

if.then15:                                        ; preds = %do.end63.i, %do.end31.i, %do.end.i, %if.then.i.if.then15_crit_edge
  %retval.0.i38.ph = phi i32 [ %ret.2.i, %do.end63.i ], [ %call1.i36, %if.then.i.if.then15_crit_edge ], [ -22, %do.end31.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %ts.i) #7
  call void @clk_disable(ptr noundef %call5) #7
  call void @clk_unprepare(ptr noundef %call5) #7
  br label %cleanup

do.end:                                           ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %ts.i) #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then15, %if.then3.i, %if.end9.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then7 ], [ 0, %do.end ], [ %retval.0.i38.ph, %if.then15 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_weim_gpr_setup(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !90
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.21) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_weim_gpr_setup.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_weim_gpr_setup, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !94

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_weim_gpr_setup.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.24) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef null) #7
  %call9 = call ptr @of_prop_next_u32(ptr noundef %call8, ptr noundef null, ptr noundef nonnull %val) #7
  %tobool10.not64 = icmp eq ptr %call9, null
  br i1 %tobool10.not64, label %if.end7.do.end37_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.do.end37_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.068 = phi i32 [ %inc, %if.end18.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %cs.067 = phi i32 [ %cs.1, %if.end18.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %gprval.066 = phi i32 [ %gprval.1, %if.end18.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %p.065 = phi ptr [ %call19, %if.end18.for.body_crit_edge ], [ %call9, %if.end7.for.body_crit_edge ]
  %rem = srem i32 %i.068, 4
  %3 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem, label %for.body.if.end18_crit_edge [
    i32 0, label %if.then11
    i32 3, label %land.lhs.true
  ]

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  br label %if.end18

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end18_crit_edge, label %if.then15

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %div62 = lshr i32 %7, 25
  %or = or i32 %div62, 1
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %val, align 4
  %mul = mul i32 %cs.067, 3
  %shl = shl i32 %or, %mul
  %or16 = or i32 %shl, %gprval.066
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true.if.end18_crit_edge, %if.then11, %for.body.if.end18_crit_edge
  %gprval.1 = phi i32 [ %gprval.066, %if.then11 ], [ %or16, %if.then15 ], [ %gprval.066, %land.lhs.true.if.end18_crit_edge ], [ %gprval.066, %for.body.if.end18_crit_edge ]
  %cs.1 = phi i32 [ %5, %if.then11 ], [ %cs.067, %if.then15 ], [ %cs.067, %land.lhs.true.if.end18_crit_edge ], [ %cs.067, %for.body.if.end18_crit_edge ]
  %inc = add i32 %i.068, 1
  %call19 = call ptr @of_prop_next_u32(ptr noundef %call8, ptr noundef nonnull %p.065, ptr noundef nonnull %val) #7
  %tobool10.not = icmp eq ptr %call19, null
  br i1 %tobool10.not, label %for.end, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp20 = icmp ne i32 %inc, 0
  %9 = and i32 %inc, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool22.not = icmp eq i32 %9, 0
  %or.cond = and i1 %cmp20, %tobool22.not
  br i1 %or.cond, label %for.body27.preheader, label %for.end.do.end37_crit_edge

for.end.do.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

for.body27.preheader:                             ; preds = %for.end
  %10 = zext i32 %gprval.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %gprval.1, label %for.body27.preheader.do.end37_crit_edge [
    i32 5, label %for.body27.preheader.if.then29_crit_edge
    i32 27, label %for.body27.preheader.if.then29_crit_edge76
    i32 75, label %for.body27.preheader.if.then29_crit_edge77
    i32 585, label %for.body27.preheader.if.then29_crit_edge78
  ]

for.body27.preheader.if.then29_crit_edge78:       ; preds = %for.body27.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

for.body27.preheader.if.then29_crit_edge77:       ; preds = %for.body27.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

for.body27.preheader.if.then29_crit_edge76:       ; preds = %for.body27.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

for.body27.preheader.if.then29_crit_edge:         ; preds = %for.body27.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

for.body27.preheader.do.end37_crit_edge:          ; preds = %for.body27.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

if.then29:                                        ; preds = %for.body27.preheader.if.then29_crit_edge, %for.body27.preheader.if.then29_crit_edge76, %for.body27.preheader.if.then29_crit_edge77, %for.body27.preheader.if.then29_crit_edge78
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 4, i32 noundef 4095, i32 noundef %gprval.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

do.end37:                                         ; preds = %for.body27.preheader.do.end37_crit_edge, %for.end.do.end37_crit_edge, %if.end7.do.end37_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.then29, %if.then5, %do.body
  %retval.0 = phi i32 [ -22, %do.end37 ], [ 0, %if.then29 ], [ 0, %if.then5 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_imx_weim__171_288_weim_driver_init6, !1, !"__initcall__kmod_imx_weim__171_288_weim_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bus/imx-weim.c", i32 288, i32 1}
!2 = !{ptr @__exitcall_weim_driver_exit, !1, !"__exitcall_weim_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author172, !4, !"__UNIQUE_ID_author172", i1 false, i1 false}
!4 = !{!"../drivers/bus/imx-weim.c", i32 290, i32 1}
!5 = !{ptr @__UNIQUE_ID_description173, !6, !"__UNIQUE_ID_description173", i1 false, i1 false}
!6 = !{!"../drivers/bus/imx-weim.c", i32 291, i32 1}
!7 = !{ptr @__UNIQUE_ID_file174, !8, !"__UNIQUE_ID_file174", i1 false, i1 false}
!8 = !{!"../drivers/bus/imx-weim.c", i32 292, i32 1}
!9 = !{ptr @__UNIQUE_ID_license175, !8, !"__UNIQUE_ID_license175", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bus/imx-weim.c", i32 283, i32 12}
!12 = !{ptr @weim_driver, !13, !"weim_driver", i1 false, i1 false}
!13 = !{!"../drivers/bus/imx-weim.c", i32 281, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bus/imx-weim.c", i32 276, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @weim_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @weim_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bus/imx-weim.c", i32 208, i32 47}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bus/imx-weim.c", i32 214, i32 7}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bus/imx-weim.c", i32 218, i32 6}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @weim_parse_dt._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @weim_parse_dt._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bus/imx-weim.c", i32 226, i32 4}
!34 = !{ptr @weim_parse_dt._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @weim_parse_dt._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bus/imx-weim.c", i32 234, i32 4}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @weim_parse_dt._entry.14, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @weim_parse_dt._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bus/imx-weim.c", i32 244, i32 3}
!43 = !{ptr @weim_parse_dt._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @weim_parse_dt._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @imx50_weim_devtype, !46, !"imx50_weim_devtype", i1 false, i1 false}
!46 = !{!"../drivers/bus/imx-weim.c", i32 39, i32 38}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/bus/imx-weim.c", i32 98, i32 44}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bus/imx-weim.c", i32 100, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @imx_weim_gpr_setup.__UNIQUE_ID_ddebug170, !50, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bus/imx-weim.c", i32 104, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bus/imx-weim.c", i32 126, i32 2}
!58 = !{ptr @imx_weim_gpr_setup._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @imx_weim_gpr_setup._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bus/imx-weim.c", i32 146, i32 39}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bus/imx-weim.c", i32 155, i32 49}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bus/imx-weim.c", i32 174, i32 4}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @weim_timing_setup._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @weim_timing_setup._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @weim_id_table, !70, !"weim_id_table", i1 false, i1 false}
!70 = !{!"../drivers/bus/imx-weim.c", i32 67, i32 34}
!71 = !{ptr @imx1_weim_devtype, !72, !"imx1_weim_devtype", i1 false, i1 false}
!72 = !{!"../drivers/bus/imx-weim.c", i32 27, i32 38}
!73 = !{ptr @imx27_weim_devtype, !74, !"imx27_weim_devtype", i1 false, i1 false}
!74 = !{!"../drivers/bus/imx-weim.c", i32 33, i32 38}
!75 = !{ptr @imx51_weim_devtype, !76, !"imx51_weim_devtype", i1 false, i1 false}
!76 = !{!"../drivers/bus/imx-weim.c", i32 48, i32 38}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 4072793}
!87 = !{i64 2152647307}
!88 = !{i64 2152649240}
!89 = !{i64 4072375}
!90 = !{!"auto-init"}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i8 0, i8 2}
!93 = !{i64 2152646570}
!94 = !{i64 2148958625, i64 2148958630, i64 2148958643, i64 2148958687, i64 2148958721, i64 2148958742}
