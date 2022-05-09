; ModuleID = '/llk/IR_all_yes/drivers/mfd/fsl-imx25-tsadc.c_pt.bc'
source_filename = "../drivers/mfd/fsl-imx25-tsadc.c"
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
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.mx25_tsadc = type { ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_fsl_imx25_tsadc__192_204_mx25_tsadc_driver_init6 = internal global ptr @mx25_tsadc_driver_init, section ".initcall6.init", align 4
@mx25_tsadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mx25_tsadc_probe, ptr @mx25_tsadc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mx25_tsadc_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mx25_tsadc_driver_exit = internal global ptr @mx25_tsadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description193 = internal constant [63 x i8] c"fsl_imx25_tsadc.description=MFD for ADC/TSC for Freescale mx25\00", section ".modinfo", align 1
@__UNIQUE_ID_author194 = internal constant [60 x i8] c"fsl_imx25_tsadc.author=Markus Pargmann <mpa@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file195 = internal constant [49 x i8] c"fsl_imx25_tsadc.file=drivers/mfd/fsl-imx25-tsadc\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [31 x i8] c"fsl_imx25_tsadc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias197 = internal constant [42 x i8] c"fsl_imx25_tsadc.alias=platform:mx25-tsadc\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mx25-tsadc\00", [21 x i8] zeroinitializer }, align 32
@mx25_tsadc_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-tsadc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mx25_tsadc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mx25_tsadc_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fsl_imx25_tsadc:141:(&mx25_tsadc_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@mx25_tsadc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 143, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mx25_tsadc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mfd/fsl-imx25-tsadc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mx25_tsadc_probe._entry_ptr = internal global ptr @mx25_tsadc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@mx25_tsadc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get ipg clock\0A\00", [39 x i8] zeroinitializer }, align 32
@mx25_tsadc_probe._entry_ptr.10 = internal global ptr @mx25_tsadc_probe._entry.8, section ".printk_index", align 4
@mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl_imx25_tsadc\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mx25_tsadc_setup_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Found master clock at %lu Hz\0A\00", [34 x i8] zeroinitializer }, align 32
@mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.4, ptr @.str.14, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Setting up ADC clock divider to %u\0A\00", [60 x i8] zeroinitializer }, align 32
@mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.4, ptr @.str.15, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Resulting ADC conversion clock at %lu Hz\0A\00", [54 x i8] zeroinitializer }, align 32
@mx25_tsadc_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @mx25_tsadc_domain_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mx25_tsadc_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 78, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to add irq domain\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mx25_tsadc_setup_irq\00", [43 x i8] zeroinitializer }, align 32
@mx25_tsadc_setup_irq._entry_ptr = internal global ptr @mx25_tsadc_setup_irq._entry, section ".printk_index", align 4
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"mx25_tsadc_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 196, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 198, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"mx25_tsadc_ids\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 190, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [25 x i8] c"mx25_tsadc_regmap_config\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 19, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 140, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 143, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 147, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 149, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 99, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 103, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 115, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"mx25_tsadc_domain_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 59, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [33 x i8] c"../drivers/mfd/fsl-imx25-tsadc.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 78, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias197, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__exitcall_mx25_tsadc_driver_exit, ptr @__initcall__kmod_fsl_imx25_tsadc__192_204_mx25_tsadc_driver_init6, ptr @mx25_tsadc_driver_exit, ptr @mx25_tsadc_probe._entry, ptr @mx25_tsadc_probe._entry.8, ptr @mx25_tsadc_probe._entry_ptr, ptr @mx25_tsadc_probe._entry_ptr.10, ptr @mx25_tsadc_setup_irq._entry, ptr @mx25_tsadc_setup_irq._entry_ptr, ptr @mx25_tsadc_driver, ptr @.str, ptr @mx25_tsadc_ids, ptr @mx25_tsadc_probe._key, ptr @mx25_tsadc_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @mx25_tsadc_domain_ops, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tsadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tsadc_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tsadc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tsadc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tsadc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tsadc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tsadc_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx25_tsadc_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_tsadc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mx25_tsadc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mx25_tsadc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mx25_tsadc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_tsadc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call3, ptr noundef nonnull @mx25_tsadc_regmap_config, ptr noundef nonnull @mx25_tsadc_probe._key, ptr noundef nonnull @.str.1) #5
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i68 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #5
  %clk = getelementptr inbounds %struct.mx25_tsadc, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %clk, align 4
  %cmp.i69 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  tail call fastcc void @mx25_tsadc_setup_clk(ptr noundef %pdev, ptr noundef nonnull %call.i)
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i72 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 768, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call.i74 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i74)
  %cmp.i75 = icmp slt i32 %call.i74, 1
  br i1 %cmp.i75, label %mx25_tsadc_setup_irq.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end24
  %tobool.not.i.i.i = icmp eq ptr %12, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = tail call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i.i, i32 noundef 2, i32 noundef 0, ptr noundef nonnull @mx25_tsadc_domain_ops, ptr noundef nonnull %call.i) #5
  %domain.i = getelementptr inbounds %struct.mx25_tsadc, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call1.i.i, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i, label %mx25_tsadc_setup_irq.exit.thread78, label %mx25_tsadc_setup_irq.exit.thread

mx25_tsadc_setup_irq.exit.thread78:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  br label %cleanup

mx25_tsadc_setup_irq.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call.i74, ptr noundef nonnull @mx25_tsadc_irq_handler, ptr noundef nonnull %call.i) #5
  br label %if.end36

mx25_tsadc_setup_irq.exit:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool34.not = icmp eq i32 %call.i74, 0
  br i1 %tobool34.not, label %mx25_tsadc_setup_irq.exit.if.end36_crit_edge, label %mx25_tsadc_setup_irq.exit.cleanup_crit_edge

mx25_tsadc_setup_irq.exit.cleanup_crit_edge:      ; preds = %mx25_tsadc_setup_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mx25_tsadc_setup_irq.exit.if.end36_crit_edge:     ; preds = %mx25_tsadc_setup_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end36:                                         ; preds = %mx25_tsadc_setup_irq.exit.if.end36_crit_edge, %mx25_tsadc_setup_irq.exit.thread
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call37 = tail call i32 @devm_of_platform_populate(ptr noundef %dev1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %mx25_tsadc_setup_irq.exit.cleanup_crit_edge, %mx25_tsadc_setup_irq.exit.thread78, %do.end21, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then5 ], [ %4, %do.end ], [ %8, %do.end21 ], [ %call37, %if.end36 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i74, %mx25_tsadc_setup_irq.exit.cleanup_crit_edge ], [ -12, %mx25_tsadc_setup_irq.exit.thread78 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_tsadc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call1, ptr noundef null, ptr noundef null) #5
  %domain = getelementptr inbounds %struct.mx25_tsadc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mx25_tsadc_setup_clk(ptr noundef %pdev, ptr nocapture noundef readonly %tsadc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx25_tsadc_setup_clk, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %clk = getelementptr inbounds %struct.mx25_tsadc, ptr %tsadc, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %1) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug187, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %clk4 = getelementptr inbounds %struct.mx25_tsadc, ptr %tsadc, i32 0, i32 2
  %2 = ptrtoint ptr %clk4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk4, align 4
  %call5 = tail call i32 @clk_get_rate(ptr noundef %3) #5
  %sub = add i32 %call5, 1749999
  %div = udiv i32 %sub, 1750000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx25_tsadc_setup_clk, %if.then18)) #5
          to label %do.end22 [label %if.then18], !srcloc !64

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug188, ptr noundef %dev19, ptr noundef nonnull @.str.14, i32 noundef %div) #5
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %do.end
  %sub23 = add nsw i32 %div, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub23)
  %cmp = icmp ult i32 %sub23, 8
  %div2460 = lshr i32 %sub23, 1
  %cond = select i1 %cmp, i32 4, i32 %div2460
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx25_tsadc_setup_clk, %if.then38)) #5
          to label %do.end46 [label %if.then38], !srcloc !64

if.then38:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  %dev39 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %4 = ptrtoint ptr %clk4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk4, align 4
  %call41 = tail call i32 @clk_get_rate(ptr noundef %5) #5
  %mul = shl nuw i32 %cond, 1
  %add42 = add i32 %mul, 2
  %div43 = udiv i32 %call41, %add42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug191, ptr noundef %dev39, ptr noundef nonnull @.str.15, i32 noundef %div43) #5
  br label %do.end46

do.end46:                                         ; preds = %if.then38, %do.end22
  %6 = ptrtoint ptr %tsadc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tsadc, align 4
  %shl = shl i32 %cond, 16
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 2031616, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mx25_tsadc_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4, !annotation !65
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %8(ptr noundef %irq_data.i) #5
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %10(ptr noundef %irq_data4.i) #5
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %12(ptr noundef %irq_data4.i) #5
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %14, i32 noundef 4, ptr noundef nonnull %status) #5
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %chained_irq_enter.exit.if.end_crit_edge, label %if.then

chained_irq_enter.exit.if.end_crit_edge:          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #7
  %domain = getelementptr inbounds %struct.mx25_tsadc, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %domain, align 4
  %call3 = call i32 @generic_handle_domain_irq(ptr noundef %18, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %chained_irq_enter.exit.if.end_crit_edge
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %and4 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %domain7 = getelementptr inbounds %struct.mx25_tsadc, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %domain7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %domain7, align 4
  %call8 = call i32 @generic_handle_domain_irq(ptr noundef %22, i32 noundef 0) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %23 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i17 = icmp eq ptr %24, null
  br i1 %tobool.not.i17, label %if.else.i18, label %if.end9.chained_irq_exit.exit_crit_edge

if.end9.chained_irq_exit.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_exit.exit

if.else.i18:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i18, %if.end9.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %26, %if.else.i18 ], [ %24, %if.end9.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mx25_tsadc_domain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #5
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 2048, i32 noundef 1024) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_fsl_imx25_tsadc__192_204_mx25_tsadc_driver_init6, !1, !"__initcall__kmod_fsl_imx25_tsadc__192_204_mx25_tsadc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 204, i32 1}
!2 = !{ptr @__exitcall_mx25_tsadc_driver_exit, !1, !"__exitcall_mx25_tsadc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description193, !4, !"__UNIQUE_ID_description193", i1 false, i1 false}
!4 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 206, i32 1}
!5 = !{ptr @__UNIQUE_ID_author194, !6, !"__UNIQUE_ID_author194", i1 false, i1 false}
!6 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 207, i32 1}
!7 = !{ptr @__UNIQUE_ID_file195, !8, !"__UNIQUE_ID_file195", i1 false, i1 false}
!8 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 208, i32 1}
!9 = !{ptr @__UNIQUE_ID_license196, !8, !"__UNIQUE_ID_license196", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias197, !11, !"__UNIQUE_ID_alias197", i1 false, i1 false}
!11 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 209, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 198, i32 11}
!14 = !{ptr @mx25_tsadc_driver, !15, !"mx25_tsadc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 196, i32 31}
!16 = !{ptr @mx25_tsadc_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 140, i32 16}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 143, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mx25_tsadc_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mx25_tsadc_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 147, i32 33}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 149, i32 3}
!31 = !{ptr @mx25_tsadc_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mx25_tsadc_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @mx25_tsadc_regmap_config, !34, !"mx25_tsadc_regmap_config", i1 false, i1 false}
!34 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 19, i32 29}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 99, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug187, !36, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 103, i32 2}
!42 = !{ptr @mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug188, !41, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 115, i32 2}
!45 = !{ptr @mx25_tsadc_setup_clk.__UNIQUE_ID_ddebug191, !44, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 78, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mx25_tsadc_setup_irq._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mx25_tsadc_setup_irq._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mx25_tsadc_domain_ops, !52, !"mx25_tsadc_domain_ops", i1 false, i1 false}
!52 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 59, i32 36}
!53 = !{ptr @mx25_tsadc_ids, !54, !"mx25_tsadc_ids", i1 false, i1 false}
!54 = !{!"../drivers/mfd/fsl-imx25-tsadc.c", i32 190, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148725369, i64 2148725374, i64 2148725387, i64 2148725431, i64 2148725465, i64 2148725486}
!65 = !{!"auto-init"}
