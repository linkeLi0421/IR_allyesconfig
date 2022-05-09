; ModuleID = '/llk/IR_all_yes/drivers/soc/ti/pruss.c_pt.bc'
source_filename = "../drivers/soc/ti/pruss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pruss_private_data = type { i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.pruss = type { ptr, ptr, ptr, [3 x %struct.pruss_mem_region], ptr, ptr }
%struct.pruss_mem_region = type { ptr, i32, i32 }

@__initcall__kmod_pruss__232_354_pruss_driver_init6 = internal global ptr @pruss_driver_init, section ".initcall6.init", align 4
@pruss_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pruss_probe, ptr @pruss_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pruss_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pruss_driver_exit = internal global ptr @pruss_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [40 x i8] c"pruss.author=Suman Anna <s-anna@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [44 x i8] c"pruss.description=PRU-ICSS Subsystem Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [32 x i8] c"pruss.file=drivers/soc/ti/pruss\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [21 x i8] c"pruss.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pruss\00", [26 x i8] zeroinitializer }, align 32
@pruss_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3356-pruss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4376-pruss0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am437x_pruss0_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4376-pruss1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am437x_pruss1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am5728-pruss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,k2g-pruss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-icssg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am65x_j721e_pruss_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-icssg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am65x_j721e_pruss_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am642-icssg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am65x_j721e_pruss_data }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dram0\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dram1\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shrdram2\00", [23 x i8] zeroinitializer }, align 32
@__const.pruss_probe.mem_names = private unnamed_addr constant [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3], align 4
@pruss_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 226, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set the DMA coherent mask\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pruss_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/soc/ti/pruss.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr = internal global ptr @pruss_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"memories\00", [23 x i8] zeroinitializer }, align 32
@pruss_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 238, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%pOF is missing its 'memories' node\0A\00", [59 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr.12 = internal global ptr @pruss_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@pruss_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 266, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to parse and map memory resource %d %s\0A\00", [49 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr.16 = internal global ptr @pruss_probe._entry.14, section ".printk_index", align 4
@pruss_probe.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.17, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"memory %8s: pa %pa size 0x%zx va %pK\0A\00", [58 x i8] zeroinitializer }, align 32
@pruss_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 284, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't enable module\0A\00", [40 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr.20 = internal global ptr @pruss_probe._entry.18, section ".printk_index", align 4
@pruss_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 295, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register child devices\0A\00", [62 x i8] zeroinitializer }, align 32
@pruss_probe._entry_ptr.23 = internal global ptr @pruss_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@pruss_cfg_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 173, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%pOF is missing its 'cfg' node\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pruss_cfg_of_init\00", [46 x i8] zeroinitializer }, align 32
@pruss_cfg_of_init._entry_ptr = internal global ptr @pruss_cfg_of_init._entry, section ".printk_index", align 4
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%pOFn@%llx\00", [21 x i8] zeroinitializer }, align 32
@regmap_conf = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@pruss_cfg_of_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pruss:193:(&regmap_conf)->lock\00", [33 x i8] zeroinitializer }, align 32
@pruss_cfg_of_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.6, i32 197, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"regmap_init_mmio failed for cfg, ret = %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@pruss_cfg_of_init._entry_ptr.31 = internal global ptr @pruss_cfg_of_init._entry.29, section ".printk_index", align 4
@pruss_cfg_of_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.26, ptr @.str.6, i32 204, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pruss_clk_init failed, ret = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pruss_cfg_of_init._entry_ptr.34 = internal global ptr @pruss_cfg_of_init._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@pruss_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 132, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%pOF is missing its 'clocks' node\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pruss_clk_init\00", [17 x i8] zeroinitializer }, align 32
@pruss_clk_init._entry_ptr = internal global ptr @pruss_clk_init._entry, section ".printk_index", align 4
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"coreclk-mux\00", [20 x i8] zeroinitializer }, align 32
@pruss_clk_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.6, i32 140, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to setup coreclk-mux\0A\00", [35 x i8] zeroinitializer }, align 32
@pruss_clk_init._entry_ptr.41 = internal global ptr @pruss_clk_init._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iepclk-mux\00", [21 x i8] zeroinitializer }, align 32
@pruss_clk_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.6, i32 148, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to setup iepclk-mux\0A\00", [36 x i8] zeroinitializer }, align 32
@pruss_clk_init._entry_ptr.45 = internal global ptr @pruss_clk_init._entry.43, section ".printk_index", align 4
@pruss_clk_mux_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 56, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%pOF is missing its '%s' node\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pruss_clk_mux_setup\00", [44 x i8] zeroinitializer }, align 32
@pruss_clk_mux_setup._entry_ptr = internal global ptr @pruss_clk_mux_setup._entry, section ".printk_index", align 4
@pruss_clk_mux_setup._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.6, i32 62, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mux-clock %pOF must have parents\0A\00", [62 x i8] zeroinitializer }, align 32
@pruss_clk_mux_setup._entry_ptr.50 = internal global ptr @pruss_clk_mux_setup._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s.%pOFn\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@pruss_clk_mux_setup._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.6, i32 99, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to add clkmux unregister action %d\00", [54 x i8] zeroinitializer }, align 32
@pruss_clk_mux_setup._entry_ptr.55 = internal global ptr @pruss_clk_mux_setup._entry.53, section ".printk_index", align 4
@pruss_clk_mux_setup._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.47, ptr @.str.6, i32 110, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to add clkmux free action %d\00", [60 x i8] zeroinitializer }, align 32
@pruss_clk_mux_setup._entry_ptr.58 = internal global ptr @pruss_clk_mux_setup._entry.56, section ".printk_index", align 4
@am437x_pruss0_data = internal constant { %struct.pruss_private_data, [30 x i8] } { %struct.pruss_private_data { i8 1, i8 0 }, [30 x i8] zeroinitializer }, align 32
@am437x_pruss1_data = internal constant { %struct.pruss_private_data, [30 x i8] } zeroinitializer, align 32
@am65x_j721e_pruss_data = internal constant { %struct.pruss_private_data, [30 x i8] } { %struct.pruss_private_data { i8 0, i8 1 }, [30 x i8] zeroinitializer }, align 32
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"pruss_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 346, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 348, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"pruss_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 333, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 220, i32 43 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 220, i32 52 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 220, i32 61 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 226, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 236, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 238, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 250, i32 43 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 265, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 273, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 284, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 295, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 171, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 173, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 188, i32 43 }
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"regmap_conf\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 158, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 192, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 196, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 204, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 130, i32 43 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 132, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 138, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 140, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 145, i32 55 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 148, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 55, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 62, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 76, i32 49 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 83, i32 41 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 99, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 110, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"am437x_pruss0_data\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 325, i32 40 }
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"am437x_pruss1_data\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 321, i32 40 }
@___asan_gen_.233 = private unnamed_addr constant [23 x i8] c"am65x_j721e_pruss_data\00", align 1
@___asan_gen_.234 = private constant [26 x i8] c"../drivers/soc/ti/pruss.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 329, i32 40 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_pruss_driver_exit, ptr @__initcall__kmod_pruss__232_354_pruss_driver_init6, ptr @pruss_cfg_of_init._entry, ptr @pruss_cfg_of_init._entry.29, ptr @pruss_cfg_of_init._entry.32, ptr @pruss_cfg_of_init._entry_ptr, ptr @pruss_cfg_of_init._entry_ptr.31, ptr @pruss_cfg_of_init._entry_ptr.34, ptr @pruss_clk_init._entry, ptr @pruss_clk_init._entry.39, ptr @pruss_clk_init._entry.43, ptr @pruss_clk_init._entry_ptr, ptr @pruss_clk_init._entry_ptr.41, ptr @pruss_clk_init._entry_ptr.45, ptr @pruss_clk_mux_setup._entry, ptr @pruss_clk_mux_setup._entry.48, ptr @pruss_clk_mux_setup._entry.53, ptr @pruss_clk_mux_setup._entry.56, ptr @pruss_clk_mux_setup._entry_ptr, ptr @pruss_clk_mux_setup._entry_ptr.50, ptr @pruss_clk_mux_setup._entry_ptr.55, ptr @pruss_clk_mux_setup._entry_ptr.58, ptr @pruss_driver_exit, ptr @pruss_probe._entry, ptr @pruss_probe._entry.10, ptr @pruss_probe._entry.14, ptr @pruss_probe._entry.18, ptr @pruss_probe._entry.21, ptr @pruss_probe._entry_ptr, ptr @pruss_probe._entry_ptr.12, ptr @pruss_probe._entry_ptr.16, ptr @pruss_probe._entry_ptr.20, ptr @pruss_probe._entry_ptr.23, ptr @pruss_driver, ptr @.str, ptr @pruss_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @regmap_conf, ptr @pruss_cfg_of_init._key, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @am437x_pruss0_data, ptr @am437x_pruss1_data, ptr @am65x_j721e_pruss_data], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_cfg_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_cfg_of_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_cfg_of_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_cfg_of_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_clk_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_clk_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_clk_mux_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_clk_mux_setup._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_clk_mux_setup._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_clk_mux_setup._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am437x_pruss0_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am437x_pruss1_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am65x_j721e_pruss_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pruss_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pruss_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @pruss_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i154 = phi ptr [ %1, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %call4 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end:                                           ; preds = %dev_of_node.exit
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i, align 4
  %call10 = tail call ptr @of_get_child_by_name(ptr noundef %retval.0.i154, ptr noundef nonnull @.str.9) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %tobool17.not = icmp eq ptr %call3, null
  br label %for.body

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef null) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0183 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool17.not, label %for.body.if.end22_crit_edge, label %land.lhs.true

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call3, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool18.not = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0183)
  %cmp20 = icmp eq i32 %i.0183, 2
  %or.cond = select i1 %tobool18.not, i1 %cmp20, i1 false
  br i1 %or.cond, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %arrayidx = getelementptr [3 x ptr], ptr @__const.pruss_probe.mem_names, i32 0, i32 %i.0183
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call23 = call i32 @of_property_match_string(ptr noundef nonnull %call10, ptr noundef nonnull @.str.13, ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %call10) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call27 = call i32 @of_address_to_resource(ptr noundef nonnull %call10, i32 noundef %call23, ptr noundef nonnull %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %call10) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %res, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %call32 = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %10, i32 noundef %add.i) #8
  %arrayidx33 = getelementptr %struct.pruss, ptr %call.i, i32 0, i32 3, i32 %i.0183
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call32, ptr %arrayidx33, align 4
  %tobool37.not = icmp eq ptr %call32, null
  br i1 %tobool37.not, label %do.end41, label %if.end43

do.end41:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %i.0183, ptr noundef %8) #11
  call void @of_node_put(ptr noundef nonnull %call10) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end30
  %14 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %res, align 4
  %pa = getelementptr %struct.pruss, ptr %call.i, i32 0, i32 3, i32 %i.0183, i32 1
  %16 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pa, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %2, align 4
  %sub.i156 = sub i32 1, %15
  %add.i157 = add i32 %sub.i156, %18
  %size = getelementptr %struct.pruss, ptr %call.i, i32 0, i32 3, i32 %i.0183, i32 2
  %19 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i157, ptr %size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pruss_probe.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pruss_probe, %if.then55)) #8
          to label %for.inc [label %if.then55], !srcloc !131

if.then55:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %22 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx33, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pruss_probe.__UNIQUE_ID_ddebug231, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %8, ptr noundef %pa, i32 noundef %21, ptr noundef %23) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %if.end43
  %inc = add nuw nsw i32 %i.0183, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  call void @of_node_put(ptr noundef nonnull %call10) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i158 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %cmp70 = icmp slt i32 %call.i158, 0
  br i1 %cmp70, label %do.end74, label %if.end75

do.end74:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  br label %rpm_disable

if.end75:                                         ; preds = %for.end
  br i1 %tobool.not.i, label %if.end75.dev_of_node.exit.i_crit_edge, label %if.end.i.i

if.end75.dev_of_node.exit.i_crit_edge:            ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit.i

if.end.i.i:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %25 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i.i, align 8
  br label %dev_of_node.exit.i

dev_of_node.exit.i:                               ; preds = %if.end.i.i, %if.end75.dev_of_node.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %26, %if.end.i.i ], [ null, %if.end75.dev_of_node.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #8
  %27 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %28 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %call1.i = call ptr @of_get_child_by_name(ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.24) #8
  %tobool.not.i159 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i159, label %pruss_cfg_of_init.exit.thread, label %if.end.i160

pruss_cfg_of_init.exit.thread:                    ; preds = %dev_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  br label %rpm_put

if.end.i160:                                      ; preds = %dev_of_node.exit.i
  %call2.i = call i32 @of_address_to_resource(ptr noundef nonnull %call1.i, i32 noundef 0, ptr noundef nonnull %res.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i160.pruss_cfg_of_init.exit.thread167_crit_edge

if.end.i160.pruss_cfg_of_init.exit.thread167_crit_edge: ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %pruss_cfg_of_init.exit.thread167

if.end5.i:                                        ; preds = %if.end.i160
  %29 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %res.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %27, align 4
  %sub.i.i = sub i32 1, %30
  %add.i.i = add i32 %sub.i.i, %32
  %call7.i = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %30, i32 noundef %add.i.i) #8
  %cfg_base.i = getelementptr inbounds %struct.pruss, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %cfg_base.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i, ptr %cfg_base.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %if.end5.i.pruss_cfg_of_init.exit.thread167_crit_edge, label %if.end11.i

if.end5.i.pruss_cfg_of_init.exit.thread167_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pruss_cfg_of_init.exit.thread167

if.end11.i:                                       ; preds = %if.end5.i
  %34 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %res.i, align 4
  %conv.i = zext i32 %35 to i64
  %call13.i = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, ptr noundef nonnull %call1.i, i64 noundef %conv.i) #8
  store ptr %call13.i, ptr @regmap_conf, align 4
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %27, align 4
  %38 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %res.i, align 4
  %add.i59.i = add i32 %37, -3
  %sub.i161 = sub i32 %add.i59.i, %39
  store i32 %sub.i161, ptr getelementptr inbounds (%struct.regmap_config, ptr @regmap_conf, i32 0, i32 19), align 4
  %40 = ptrtoint ptr %cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg_base.i, align 4
  %call16.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %41, ptr noundef nonnull @regmap_conf, ptr noundef nonnull @pruss_cfg_of_init._key, ptr noundef nonnull @.str.28) #8
  %cfg_regmap.i = getelementptr inbounds %struct.pruss, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %cfg_regmap.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call16.i, ptr %cfg_regmap.i, align 4
  %43 = load ptr, ptr @regmap_conf, align 4
  call void @kfree(ptr noundef %43) #8
  %44 = ptrtoint ptr %cfg_regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg_regmap.i, align 4
  %cmp.i.i = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end22.i, label %if.end27.i

do.end22.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %45 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %46) #11
  %47 = ptrtoint ptr %cfg_regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg_regmap.i, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %pruss_cfg_of_init.exit

if.end27.i:                                       ; preds = %if.end11.i
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %call.i.i = call ptr @of_device_get_match_data(ptr noundef %51) #8
  %call2.i.i = call ptr @of_get_child_by_name(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.35) #8
  %tobool.not.i60.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i60.i, label %pruss_clk_init.exit.thread.i, label %if.end.i61.i

pruss_clk_init.exit.thread.i:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.36, ptr noundef nonnull %call1.i) #11
  br label %do.end33.i

if.end.i61.i:                                     ; preds = %if.end27.i
  %tobool3.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i61.i.if.end13.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i61.i.if.end13.i.i_crit_edge:              ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i61.i
  %has_core_mux_clock.i.i = getelementptr inbounds %struct.pruss_private_data, ptr %call.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %has_core_mux_clock.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %has_core_mux_clock.i.i, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool4.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end13.i.i_crit_edge, label %if.then5.i.i

land.lhs.true.i.i.if.end13.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  %call6.i.i = call fastcc i32 @pruss_clk_mux_setup(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.38, ptr noundef nonnull %call2.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then5.i.i.if.end13.i.i_crit_edge, label %if.then5.i.i.pruss_clk_init.exit.i_crit_edge

if.then5.i.i.pruss_clk_init.exit.i_crit_edge:     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pruss_clk_init.exit.i

if.then5.i.i.if.end13.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then5.i.i.if.end13.i.i_crit_edge, %land.lhs.true.i.i.if.end13.i.i_crit_edge, %if.end.i61.i.if.end13.i.i_crit_edge
  %call14.i.i = call fastcc i32 @pruss_clk_mux_setup(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.42, ptr noundef nonnull %call2.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %pruss_cfg_of_init.exit.thread170, label %if.end13.i.i.pruss_clk_init.exit.i_crit_edge

if.end13.i.i.pruss_clk_init.exit.i_crit_edge:     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pruss_clk_init.exit.i

pruss_cfg_of_init.exit.thread170:                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %call2.i.i) #8
  call void @of_node_put(ptr noundef nonnull %call1.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  br label %if.end79

pruss_clk_init.exit.i:                            ; preds = %if.end13.i.i.pruss_clk_init.exit.i_crit_edge, %if.then5.i.i.pruss_clk_init.exit.i_crit_edge
  %.str.44.sink.i.i = phi ptr [ @.str.40, %if.then5.i.i.pruss_clk_init.exit.i_crit_edge ], [ @.str.44, %if.end13.i.i.pruss_clk_init.exit.i_crit_edge ]
  %ret.0.ph.i.i = phi i32 [ %call6.i.i, %if.then5.i.i.pruss_clk_init.exit.i_crit_edge ], [ %call14.i.i, %if.end13.i.i.pruss_clk_init.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull %.str.44.sink.i.i) #11
  call void @of_node_put(ptr noundef nonnull %call2.i.i) #8
  br label %do.end33.i

do.end33.i:                                       ; preds = %pruss_clk_init.exit.i, %pruss_clk_init.exit.thread.i
  %retval.0.i6265.i = phi i32 [ -19, %pruss_clk_init.exit.thread.i ], [ %ret.0.ph.i.i, %pruss_clk_init.exit.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i6265.i) #11
  br label %pruss_cfg_of_init.exit

pruss_cfg_of_init.exit.thread167:                 ; preds = %if.end5.i.pruss_cfg_of_init.exit.thread167_crit_edge, %if.end.i160.pruss_cfg_of_init.exit.thread167_crit_edge
  call void @of_node_put(ptr noundef nonnull %call1.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  br label %rpm_put

pruss_cfg_of_init.exit:                           ; preds = %do.end33.i, %do.end22.i
  %ret.0.i = phi i32 [ %49, %do.end22.i ], [ %retval.0.i6265.i, %do.end33.i ]
  call void @of_node_put(ptr noundef nonnull %call1.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp77 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp77, label %pruss_cfg_of_init.exit.rpm_put_crit_edge, label %pruss_cfg_of_init.exit.if.end79_crit_edge

pruss_cfg_of_init.exit.if.end79_crit_edge:        ; preds = %pruss_cfg_of_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

pruss_cfg_of_init.exit.rpm_put_crit_edge:         ; preds = %pruss_cfg_of_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

if.end79:                                         ; preds = %pruss_cfg_of_init.exit.if.end79_crit_edge, %pruss_cfg_of_init.exit.thread170
  %call80 = call i32 @devm_of_platform_populate(ptr noundef %dev1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %do.end85

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #11
  br label %rpm_put

rpm_put:                                          ; preds = %do.end85, %pruss_cfg_of_init.exit.rpm_put_crit_edge, %pruss_cfg_of_init.exit.thread167, %pruss_cfg_of_init.exit.thread
  %ret.0 = phi i32 [ %ret.0.i, %pruss_cfg_of_init.exit.rpm_put_crit_edge ], [ %call80, %do.end85 ], [ -19, %pruss_cfg_of_init.exit.thread ], [ -12, %pruss_cfg_of_init.exit.thread167 ]
  %call.i163 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #8
  br label %rpm_disable

rpm_disable:                                      ; preds = %rpm_put, %do.end74
  %ret.1 = phi i32 [ %call.i158, %do.end74 ], [ %ret.0, %rpm_put ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %rpm_disable, %if.end79.cleanup_crit_edge, %do.end41, %if.then29, %if.then25, %do.end15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call23, %if.then25 ], [ -22, %if.then29 ], [ -12, %do.end41 ], [ %ret.1, %rpm_disable ], [ -19, %do.end15 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @devm_of_platform_depopulate(ptr noundef %dev1) #8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !133
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pruss_clk_mux_setup(ptr nocapture noundef readonly %pruss, ptr noundef %mux_name, ptr noundef %clks_np) unnamed_addr #2 align 64 {
entry:
  %reg_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pruss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pruss, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_offset) #8
  %2 = ptrtoint ptr %reg_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_offset, align 4, !annotation !135
  %call = tail call ptr @of_get_child_by_name(ptr noundef %clks_np, ptr noundef %mux_name) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef %clks_np, ptr noundef %mux_name) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_clk_get_parent_count(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull %call) #11
  br label %put_clk_mux_np

if.end7:                                          ; preds = %if.end
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call2, i32 4) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end7.put_clk_mux_np_crit_edge, label %devm_kcalloc.exit, !prof !136

if.end7.put_clk_mux_np_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_clk_mux_np

devm_kcalloc.exit:                                ; preds = %if.end7
  %5 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %5, i32 noundef 3520) #8
  %tobool9.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not, label %devm_kcalloc.exit.put_clk_mux_np_crit_edge, label %if.end11

devm_kcalloc.exit.put_clk_mux_np_crit_edge:       ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_clk_mux_np

if.end11:                                         ; preds = %devm_kcalloc.exit
  %call12 = tail call i32 @of_clk_parent_fill(ptr noundef nonnull %call, ptr noundef nonnull %call5.i.i, i32 noundef %call2) #8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.dev_name.exit_crit_edge

if.end11.dev_name.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end11.dev_name.exit_crit_edge ]
  %call14 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.51, ptr noundef %retval.0.i, ptr noundef nonnull %call) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %dev_name.exit.put_clk_mux_np_crit_edge, label %if.end17

dev_name.exit.put_clk_mux_np_crit_edge:           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_clk_mux_np

if.end17:                                         ; preds = %dev_name.exit
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.52, ptr noundef nonnull %reg_offset, i32 noundef 1, i32 noundef 0) #8
  %10 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool19.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool19.not, label %if.end21, label %if.end17.put_clk_mux_np_crit_edge

if.end17.put_clk_mux_np_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_clk_mux_np

if.end21:                                         ; preds = %if.end17
  %cfg_base = getelementptr inbounds %struct.pruss, ptr %pruss, i32 0, i32 1
  %11 = ptrtoint ptr %cfg_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg_base, align 4
  %13 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_offset, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %conv = trunc i32 %call2 to i8
  %call22 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull %call14, ptr noundef nonnull %call5.i.i, i8 noundef zeroext %conv, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call22 to i32
  br label %put_clk_mux_np

if.end26:                                         ; preds = %if.end21
  %call.i = call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @clk_unregister_mux, ptr noundef %call22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i1 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i1, label %if.end33, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unregister_mux(ptr noundef %call22) #8, !callees !137
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef %call.i) #11
  br label %put_clk_mux_np

if.end33:                                         ; preds = %if.end26
  %call34 = call i32 @of_clk_add_provider(ptr noundef nonnull %call, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.put_clk_mux_np_crit_edge

if.end33.put_clk_mux_np_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_clk_mux_np

if.end37:                                         ; preds = %if.end33
  %call.i3 = call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @pruss_of_free_clk_provider, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %if.end37.cleanup_crit_edge, label %do.end43

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_clk_del_provider(ptr noundef nonnull %call) #8
  call void @of_node_put(ptr noundef nonnull %call) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef %call.i3) #11
  br label %put_clk_mux_np

put_clk_mux_np:                                   ; preds = %do.end43, %if.end33.put_clk_mux_np_crit_edge, %do.end32, %if.then24, %if.end17.put_clk_mux_np_crit_edge, %dev_name.exit.put_clk_mux_np_crit_edge, %devm_kcalloc.exit.put_clk_mux_np_crit_edge, %if.end7.put_clk_mux_np_crit_edge, %do.end6
  %ret.0 = phi i32 [ -22, %do.end6 ], [ %10, %if.end17.put_clk_mux_np_crit_edge ], [ %15, %if.then24 ], [ %call.i, %do.end32 ], [ %call34, %if.end33.put_clk_mux_np_crit_edge ], [ %call.i3, %do.end43 ], [ -12, %devm_kcalloc.exit.put_clk_mux_np_crit_edge ], [ -12, %dev_name.exit.put_clk_mux_np_crit_edge ], [ -12, %if.end7.put_clk_mux_np_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %put_clk_mux_np, %if.end37.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %put_clk_mux_np ], [ -19, %do.end ], [ 0, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_offset) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_mux(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pruss_of_free_clk_provider(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @of_clk_del_provider(ptr noundef %data) #8
  tail call void @of_node_put(ptr noundef %data) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_of_platform_depopulate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !78, !79, !80, !82, !84, !85, !86, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !108, !109, !111, !112, !113, !115, !117, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__initcall__kmod_pruss__232_354_pruss_driver_init6, !1, !"__initcall__kmod_pruss__232_354_pruss_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/ti/pruss.c", i32 354, i32 1}
!2 = !{ptr @__exitcall_pruss_driver_exit, !1, !"__exitcall_pruss_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/soc/ti/pruss.c", i32 356, i32 1}
!5 = !{ptr @__UNIQUE_ID_description234, !6, !"__UNIQUE_ID_description234", i1 false, i1 false}
!6 = !{!"../drivers/soc/ti/pruss.c", i32 357, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/soc/ti/pruss.c", i32 358, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/ti/pruss.c", i32 348, i32 11}
!12 = !{ptr @pruss_driver, !13, !"pruss_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/ti/pruss.c", i32 346, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/ti/pruss.c", i32 220, i32 43}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/ti/pruss.c", i32 220, i32 52}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/ti/pruss.c", i32 220, i32 61}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/ti/pruss.c", i32 226, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pruss_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @pruss_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/ti/pruss.c", i32 236, i32 35}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/ti/pruss.c", i32 238, i32 3}
!32 = !{ptr @pruss_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pruss_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/ti/pruss.c", i32 250, i32 43}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soc/ti/pruss.c", i32 265, i32 4}
!38 = !{ptr @pruss_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pruss_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/ti/pruss.c", i32 273, i32 3}
!42 = !{ptr @pruss_probe.__UNIQUE_ID_ddebug231, !41, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/ti/pruss.c", i32 284, i32 3}
!45 = !{ptr @pruss_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @pruss_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/ti/pruss.c", i32 295, i32 3}
!49 = !{ptr @pruss_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pruss_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/ti/pruss.c", i32 171, i32 35}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/ti/pruss.c", i32 173, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @pruss_cfg_of_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @pruss_cfg_of_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/ti/pruss.c", i32 188, i32 43}
!60 = !{ptr @pruss_cfg_of_init._key, !61, !"_key", i1 false, i1 false}
!61 = !{!"../drivers/soc/ti/pruss.c", i32 192, i32 22}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/ti/pruss.c", i32 196, i32 3}
!65 = !{ptr @pruss_cfg_of_init._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pruss_cfg_of_init._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/ti/pruss.c", i32 204, i32 3}
!69 = !{ptr @pruss_cfg_of_init._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @pruss_cfg_of_init._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @regmap_conf, !72, !"regmap_conf", i1 false, i1 false}
!72 = !{!"../drivers/soc/ti/pruss.c", i32 158, i32 29}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soc/ti/pruss.c", i32 130, i32 43}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/ti/pruss.c", i32 132, i32 3}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @pruss_clk_init._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @pruss_clk_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/soc/ti/pruss.c", i32 138, i32 8}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/soc/ti/pruss.c", i32 140, i32 4}
!84 = !{ptr @pruss_clk_init._entry.39, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @pruss_clk_init._entry_ptr.41, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/soc/ti/pruss.c", i32 145, i32 55}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/soc/ti/pruss.c", i32 148, i32 3}
!90 = !{ptr @pruss_clk_init._entry.43, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @pruss_clk_init._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/soc/ti/pruss.c", i32 55, i32 3}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @pruss_clk_mux_setup._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @pruss_clk_mux_setup._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/soc/ti/pruss.c", i32 62, i32 3}
!99 = !{ptr @pruss_clk_mux_setup._entry.48, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @pruss_clk_mux_setup._entry_ptr.50, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/soc/ti/pruss.c", i32 76, i32 49}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/soc/ti/pruss.c", i32 83, i32 41}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/soc/ti/pruss.c", i32 99, i32 3}
!107 = !{ptr @pruss_clk_mux_setup._entry.53, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @pruss_clk_mux_setup._entry_ptr.55, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/soc/ti/pruss.c", i32 110, i32 3}
!111 = !{ptr @pruss_clk_mux_setup._entry.56, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @pruss_clk_mux_setup._entry_ptr.58, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @pruss_of_match, !114, !"pruss_of_match", i1 false, i1 false}
!114 = !{!"../drivers/soc/ti/pruss.c", i32 333, i32 34}
!115 = !{ptr @am437x_pruss0_data, !116, !"am437x_pruss0_data", i1 false, i1 false}
!116 = !{!"../drivers/soc/ti/pruss.c", i32 325, i32 40}
!117 = !{ptr @am437x_pruss1_data, !118, !"am437x_pruss1_data", i1 false, i1 false}
!118 = !{!"../drivers/soc/ti/pruss.c", i32 321, i32 40}
!119 = !{ptr @am65x_j721e_pruss_data, !120, !"am65x_j721e_pruss_data", i1 false, i1 false}
!120 = !{!"../drivers/soc/ti/pruss.c", i32 329, i32 40}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{i8 0, i8 2}
!131 = !{i64 2148923557, i64 2148923562, i64 2148923575, i64 2148923619, i64 2148923653, i64 2148923674}
!132 = !{i64 2148273993}
!133 = !{i64 758816, i64 758841, i64 758863, i64 758879, i64 758891, i64 758911, i64 758935, i64 758951, i64 758963}
!134 = !{i64 2148274181}
!135 = !{!"auto-init"}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{ptr @clk_unregister_mux, ptr @pruss_of_free_clk_provider}
