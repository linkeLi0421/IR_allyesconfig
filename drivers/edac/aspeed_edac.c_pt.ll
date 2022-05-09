; ModuleID = '/llk/IR_all_yes/drivers/edac/aspeed_edac.c_pt.bc'
source_filename = "../drivers/edac/aspeed_edac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.edac_mc_layer = type { i32, i32, i8 }
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
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.csrow_info = type { %struct.device, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.rank_info = type { i32, ptr, ptr, i32 }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }

@__initcall__kmod_aspeed_edac__243_394_aspeed_driver_init6 = internal global ptr @aspeed_driver_init, section ".initcall6.init", align 4
@aspeed_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_probe, ptr @aspeed_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_driver_exit = internal global ptr @aspeed_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file244 = internal constant [42 x i8] c"aspeed_edac.file=drivers/edac/aspeed_edac\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [24 x i8] c"aspeed_edac.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [59 x i8] c"aspeed_edac.author=Stefan Schaeckeler <sschaeck@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [51 x i8] c"aspeed_edac.description=Aspeed BMC SoC EDAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version248 = internal constant [24 x i8] c"aspeed_edac.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aspeed_edac\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aspeed-edac\00", [20 x i8] zeroinitializer }, align 32
@aspeed_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-sdram-edac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-sdram-edac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-sdram-edac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@aspeed_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aspeed_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @regmap_is_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @regmap_reg_read, ptr @regmap_reg_write, ptr null, i8 1, i32 92, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"aspeed_edac:293:(&aspeed_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@aspeed_regmap = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@aspeed_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 300, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ECC mode is not configured in u-boot\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aspeed_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/edac/aspeed_edac.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_probe._entry_ptr = internal global ptr @aspeed_probe._entry, section ".printk_index", align 4
@edac_op_state = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MIC\00", [28 x i8] zeroinitializer }, align 32
@aspeed_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 330, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to init csrows\0A\00", [41 x i8] zeroinitializer }, align 32
@aspeed_probe._entry_ptr.13 = internal global ptr @aspeed_probe._entry.11, section ".printk_index", align 4
@aspeed_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 339, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register with EDAC core\0A\00", [61 x i8] zeroinitializer }, align 32
@aspeed_probe._entry_ptr.16 = internal global ptr @aspeed_probe._entry.14, section ".printk_index", align 4
@aspeed_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 346, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed setting up irq\0A\00", [41 x i8] zeroinitializer }, align 32
@aspeed_probe._entry_ptr.19 = internal global ptr @aspeed_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@init_csrows._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 244, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dt: missing /memory node\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_csrows\00", [20 x i8] zeroinitializer }, align 32
@init_csrows._entry_ptr = internal global ptr @init_csrows._entry, section ".printk_index", align 4
@init_csrows._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.7, i32 253, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"dt: failed requesting resource for /memory node\0A\00", [47 x i8] zeroinitializer }, align 32
@init_csrows._entry_ptr.25 = internal global ptr @init_csrows._entry.23, section ".printk_index", align 4
@init_csrows.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.7, ptr @.str.26, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"dt: /memory node resources: first page %pR, PAGE_SHIFT macro=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@init_csrows.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.7, ptr @.str.27, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"initialized dimm with first_page=0x%lx and nr_pages=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@config_irq.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.7, ptr @.str.29, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"got irq %d\0A\00", [20 x i8] zeroinitializer }, align 32
@config_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.7, i32 218, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@config_irq._entry_ptr = internal global ptr @config_irq._entry, section ".printk_index", align 4
@mcr_isr.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.7, ptr @.str.32, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcr_isr\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"received edac interrupt w/ mcr register 50: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@mcr_isr.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.7, ptr @.str.33, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%d recoverable interrupts and %d unrecoverable interrupts\0A\00", [37 x i8] zeroinitializer }, align 32
@mcr_isr.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.7, ptr @.str.34, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"received edac interrupt, but did not find any ECC counters\0A\00", [36 x i8] zeroinitializer }, align 32
@mcr_isr.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.7, ptr @.str.35, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"edac interrupt handled. mcr reg 50 is now: 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"address(es) not available\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 80, i64 88, i64 92]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"aspeed_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 386, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 399, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 388, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"aspeed_of_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 377, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"aspeed_regmap_config\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 80, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 292, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"aspeed_regmap\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 38, i32 23 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 300, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 325, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 330, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 339, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 346, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 242, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 244, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 253, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 257, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 272, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 211, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 218, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 165, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 172, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 194, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 197, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 109, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [30 x i8] c"../drivers/edac/aspeed_edac.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 109, i32 39 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_version248, ptr @__exitcall_aspeed_driver_exit, ptr @__initcall__kmod_aspeed_edac__243_394_aspeed_driver_init6, ptr @__modver_attr, ptr @aspeed_driver_exit, ptr @aspeed_probe._entry, ptr @aspeed_probe._entry.11, ptr @aspeed_probe._entry.14, ptr @aspeed_probe._entry.17, ptr @aspeed_probe._entry_ptr, ptr @aspeed_probe._entry_ptr.13, ptr @aspeed_probe._entry_ptr.16, ptr @aspeed_probe._entry_ptr.19, ptr @config_irq._entry, ptr @config_irq._entry_ptr, ptr @init_csrows._entry, ptr @init_csrows._entry.23, ptr @init_csrows._entry_ptr, ptr @init_csrows._entry_ptr.25, ptr @aspeed_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @aspeed_of_match, ptr @aspeed_probe._key, ptr @aspeed_regmap_config, ptr @.str.4, ptr @aspeed_regmap, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_regmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_csrows._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_csrows._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %layers = alloca [2 x %struct.edac_mc_layer], align 4
  %reg04 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %layers) #7
  %0 = getelementptr inbounds i8, ptr %layers, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg04) #7
  %2 = ptrtoint ptr %reg04 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg04, align 4, !annotation !102
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef null, ptr noundef %call, ptr noundef nonnull @aspeed_regmap_config, ptr noundef nonnull @aspeed_probe._key, ptr noundef nonnull @.str.4) #7
  store ptr %call4, ptr @aspeed_regmap, align 4
  %cmp.i89 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @regmap_read(ptr noundef %call4, i32 noundef 4, ptr noundef nonnull %reg04) #7
  %5 = ptrtoint ptr %reg04 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg04, align 4
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  store i32 2, ptr @edac_op_state, align 4
  %7 = ptrtoint ptr %layers to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %layers, align 4
  %size = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %size, align 4
  %is_virt_csrow = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 2
  %9 = ptrtoint ptr %is_virt_csrow to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %is_virt_csrow, align 4
  %arrayidx15 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %arrayidx15, align 4
  %size18 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %size18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %size18, align 4
  %is_virt_csrow20 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %is_virt_csrow20 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %is_virt_csrow20, align 4
  %call21 = call ptr @edac_mc_alloc(i32 noundef 0, i32 noundef 2, ptr noundef nonnull %layers, i32 noundef 0) #7
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end12.cleanup_crit_edge, label %if.end24

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %pdev26 = getelementptr inbounds %struct.mem_ctl_info, ptr %call21, i32 0, i32 22
  %13 = ptrtoint ptr %pdev26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev1, ptr %pdev26, align 8
  %mtype_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call21, i32 0, i32 4
  %14 = ptrtoint ptr %mtype_cap to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 557056, ptr %mtype_cap, align 8
  %edac_ctl_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call21, i32 0, i32 5
  %15 = ptrtoint ptr %edac_ctl_cap to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32, ptr %edac_ctl_cap, align 4
  %edac_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call21, i32 0, i32 6
  %16 = ptrtoint ptr %edac_cap to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %edac_cap, align 8
  %scrub_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call21, i32 0, i32 7
  %17 = ptrtoint ptr %scrub_cap to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 128, ptr %scrub_cap, align 4
  %scrub_mode = getelementptr inbounds %struct.mem_ctl_info, ptr %call21, i32 0, i32 8
  %18 = ptrtoint ptr %scrub_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %scrub_mode, align 8
  %mod_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call21, i32 0, i32 23
  %19 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.3, ptr %mod_name, align 4
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call21, i32 0, i32 24
  %20 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.10, ptr %ctl_name, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.dev_name.exit_crit_edge

if.end24.dev_name.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end24.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %24, %if.end.i ], [ %22, %if.end24.dev_name.exit_crit_edge ]
  %dev_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call21, i32 0, i32 25
  %25 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i, ptr %dev_name, align 4
  %call29 = call fastcc i32 @init_csrows(ptr noundef nonnull %call21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %probe_exit02

if.end36:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call21, ptr %driver_data.i.i, align 4
  %call37 = call i32 @edac_mc_add_mc_with_groups(ptr noundef nonnull %call21, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  br label %probe_exit02

if.end44:                                         ; preds = %if.end36
  %call45 = call fastcc i32 @config_irq(ptr noundef nonnull %call21, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %do.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  %call54 = call ptr @edac_mc_del_mc(ptr noundef %dev1) #7
  br label %probe_exit02

probe_exit02:                                     ; preds = %do.end50, %do.end42, %do.end34
  %rc.0 = phi i32 [ %call29, %do.end34 ], [ %call37, %do.end42 ], [ %call45, %do.end50 ]
  call void @edac_mc_free(ptr noundef nonnull %call21) #7
  br label %cleanup

cleanup:                                          ; preds = %probe_exit02, %if.end44.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end, %if.then6, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %4, %if.then6 ], [ %rc.0, %probe_exit02 ], [ -1, %do.end ], [ -12, %if.end12.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg04) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %layers) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @aspeed_regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 80, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @edac_mc_del_mc(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @edac_mc_free(ptr noundef nonnull %call1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_alloc(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_csrows(ptr nocapture noundef readonly %mci) unnamed_addr #2 align 64 {
entry:
  %r = alloca %struct.resource, align 4
  %reg04 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 14
  %0 = ptrtoint ptr %csrows to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csrows, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #7
  %4 = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 1
  %5 = call ptr @memset(ptr %r, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg04) #7
  %6 = ptrtoint ptr %reg04 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg04, align 4, !annotation !102
  %call = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.20) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 22
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_address_to_resource(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %r) #7
  call void @of_node_put(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev7 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 22
  %9 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev7, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.24) #10
  br label %cleanup

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_csrows.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_csrows, %if.then14)) #7
          to label %do.end18 [label %if.then14], !srcloc !103

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %pdev15 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 22
  %11 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev15, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_csrows.__UNIQUE_ID_ddebug241, ptr noundef %12, ptr noundef nonnull @.str.26, ptr noundef nonnull %r, i32 noundef 12) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body9
  %13 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r, align 4
  %shr = lshr i32 %14, 12
  %first_page = getelementptr inbounds %struct.csrow_info, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %first_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr, ptr %first_page, align 8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 4
  %sub.i = sub i32 1, %14
  %add.i = add i32 %sub.i, %17
  %shr20 = lshr i32 %add.i, 12
  %add = add nsw i32 %shr, -1
  %sub = add nsw i32 %add, %shr20
  %last_page = getelementptr inbounds %struct.csrow_info, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %last_page to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %last_page, align 4
  %19 = load ptr, ptr @aspeed_regmap, align 4
  %call22 = call i32 @regmap_read(ptr noundef %19, i32 noundef 4, ptr noundef nonnull %reg04) #7
  %20 = ptrtoint ptr %reg04 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg04, align 4
  %and = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool23.not, i32 15, i32 19
  %channels = getelementptr inbounds %struct.csrow_info, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channels, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %dimm25 = getelementptr inbounds %struct.rank_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dimm25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dimm25, align 4
  %mtype = getelementptr inbounds %struct.dimm_info, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %mtype to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond, ptr %mtype, align 4
  %edac_mode = getelementptr inbounds %struct.dimm_info, ptr %27, i32 0, i32 8
  %29 = ptrtoint ptr %edac_mode to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %edac_mode, align 8
  %nr_channels = getelementptr inbounds %struct.csrow_info, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_channels, align 4
  %div = udiv i32 %shr20, %31
  %nr_pages26 = getelementptr inbounds %struct.dimm_info, ptr %27, i32 0, i32 9
  %32 = ptrtoint ptr %nr_pages26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div, ptr %nr_pages26, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_csrows.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_csrows, %if.then39)) #7
          to label %cleanup [label %if.then39], !srcloc !103

if.then39:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %pdev40 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 22
  %33 = ptrtoint ptr %pdev40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev40, align 8
  %35 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %first_page, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_csrows.__UNIQUE_ID_ddebug242, ptr noundef %34, ptr noundef nonnull @.str.27, i32 noundef %36, i32 noundef %shr20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.end18, %do.end6, %do.end
  %retval.0 = phi i32 [ %call1, %do.end6 ], [ -19, %do.end ], [ 0, %if.then39 ], [ 0, %do.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg04) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_add_mc_with_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @config_irq(ptr noundef %ctx, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_irq.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@config_irq, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !103

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_irq.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev6, i32 noundef %call, ptr noundef nonnull @mcr_isr, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.30, i32 noundef %call) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @aspeed_regmap, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 80, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end12 ], [ 0, %if.end14 ], [ %call, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_del_mc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @regmap_is_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 80, label %entry.return_crit_edge1
    i32 88, label %entry.return_crit_edge2
    i32 92, label %entry.return_crit_edge3
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 %reg
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !104
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context, i32 151216380) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %add.ptr4 = getelementptr i8, ptr %context, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %0) #7, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context, i32 -151216381) #7, !srcloc !107
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr_isr(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  %reg50 = alloca i32, align 4
  %reg5c = alloca i32, align 4
  %reg58 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg50) #7
  %0 = ptrtoint ptr %reg50 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg50, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg5c) #7
  %1 = ptrtoint ptr %reg5c to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg5c, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg58) #7
  %2 = ptrtoint ptr %reg58 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg58, align 4, !annotation !102
  %3 = load ptr, ptr @aspeed_regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 80, ptr noundef nonnull %reg50) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr_isr.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr_isr, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !103

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.mem_ctl_info, ptr %arg, i32 0, i32 22
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %6 = ptrtoint ptr %reg50 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg50, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr_isr.__UNIQUE_ID_ddebug236, ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %reg50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg50, align 4
  %and = lshr i32 %9, 16
  %conv = trunc i32 %and to i8
  %and4 = lshr i32 %9, 12
  %10 = trunc i32 %and4 to i8
  %conv6 = and i8 %10, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr_isr.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr_isr, %if.then19)) #7
          to label %do.end25 [label %if.then19], !srcloc !103

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev20 = getelementptr inbounds %struct.mem_ctl_info, ptr %arg, i32 0, i32 22
  %11 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev20, align 8
  %conv21 = and i32 %and, 255
  %conv22 = zext i8 %conv6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr_isr.__UNIQUE_ID_ddebug237, ptr noundef %12, ptr noundef nonnull @.str.33, i32 noundef %conv21, i32 noundef %conv22) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.end
  %13 = load ptr, ptr @aspeed_regmap, align 4
  %call26 = call i32 @regmap_read(ptr noundef %13, i32 noundef 88, ptr noundef nonnull %reg58) #7
  %14 = ptrtoint ptr %reg58 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg58, align 4
  %16 = load ptr, ptr @aspeed_regmap, align 4
  %call27 = call i32 @regmap_read(ptr noundef %16, i32 noundef 92, ptr noundef nonnull %reg5c) #7
  %17 = ptrtoint ptr %reg5c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg5c, align 4
  %19 = load ptr, ptr @aspeed_regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 80, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = load ptr, ptr @aspeed_regmap, align 4
  %call.i87 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 80, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %csrows.i = getelementptr inbounds %struct.mem_ctl_info, ptr %arg, i32 0, i32 14
  %21 = ptrtoint ptr %csrows.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %csrows.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %conv, label %if.then2.i [
    i8 0, label %count_rec.exit.thread
    i8 1, label %do.end25.count_rec.exit_crit_edge
  ]

do.end25.count_rec.exit_crit_edge:                ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %count_rec.exit

if.then2.i:                                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  %26 = trunc i32 %and to i16
  %conv.i = and i16 %26, 255
  %sub.i = add nsw i16 %conv.i, -1
  call void @edac_mc_handle_error(i32 noundef 0, ptr noundef %arg, i16 noundef zeroext %sub.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #7
  br label %count_rec.exit

count_rec.exit:                                   ; preds = %if.then2.i, %do.end25.count_rec.exit_crit_edge
  %shr.i = lshr i32 %18, 12
  %and.i = and i32 %18, 4095
  %first_page.i = getelementptr inbounds %struct.csrow_info, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %first_page.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %first_page.i, align 8
  %add.i = add i32 %28, %shr.i
  call void @edac_mc_handle_error(i32 noundef 0, ptr noundef %arg, i16 noundef zeroext 1, i32 noundef %add.i, i32 noundef %and.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6)
  %tobool.not.i = icmp eq i8 %conv6, 0
  br i1 %tobool.not.i, label %count_rec.exit.if.end50_crit_edge, label %count_rec.exit.if.end.i_crit_edge

count_rec.exit.if.end.i_crit_edge:                ; preds = %count_rec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

count_rec.exit.if.end50_crit_edge:                ; preds = %count_rec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

count_rec.exit.thread:                            ; preds = %do.end25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv6)
  %tobool.not.i102 = icmp eq i8 %conv6, 0
  br i1 %tobool.not.i102, label %do.body33, label %count_rec.exit.thread.if.end.i_crit_edge

count_rec.exit.thread.if.end.i_crit_edge:         ; preds = %count_rec.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %count_rec.exit.thread.if.end.i_crit_edge, %count_rec.exit.if.end.i_crit_edge
  %29 = ptrtoint ptr %csrows.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csrows.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %shr.i89 = lshr i32 %15, 12
  %and.i90 = and i32 %15, 4095
  %first_page.i91 = getelementptr inbounds %struct.csrow_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %first_page.i91 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %first_page.i91, align 8
  %add.i92 = add i32 %34, %shr.i89
  call void @edac_mc_handle_error(i32 noundef 1, ptr noundef %arg, i16 noundef zeroext 1, i32 noundef %add.i92, i32 noundef %and.i90, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv6)
  %cmp.not.i = icmp eq i8 %conv6, 1
  br i1 %cmp.not.i, label %if.end.i.if.end50_crit_edge, label %if.then2.i95

if.end.i.if.end50_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then2.i95:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i93 = zext i8 %conv6 to i16
  %sub.i94 = add nsw i16 %conv.i93, -1
  call void @edac_mc_handle_error(i32 noundef 1, ptr noundef %arg, i16 noundef zeroext %sub.i94, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #7
  br label %if.end50

do.body33:                                        ; preds = %count_rec.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr_isr.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr_isr, %if.then45)) #7
          to label %if.end50 [label %if.then45], !srcloc !103

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %pdev46 = getelementptr inbounds %struct.mem_ctl_info, ptr %arg, i32 0, i32 22
  %35 = ptrtoint ptr %pdev46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev46, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr_isr.__UNIQUE_ID_ddebug238, ptr noundef %36, ptr noundef nonnull @.str.34) #7
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %do.body33, %if.then2.i95, %if.end.i.if.end50_crit_edge, %count_rec.exit.if.end50_crit_edge
  %37 = load ptr, ptr @aspeed_regmap, align 4
  %call51 = call i32 @regmap_read(ptr noundef %37, i32 noundef 80, ptr noundef nonnull %reg50) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr_isr.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr_isr, %if.then64)) #7
          to label %do.end68 [label %if.then64], !srcloc !103

if.then64:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %pdev65 = getelementptr inbounds %struct.mem_ctl_info, ptr %arg, i32 0, i32 22
  %38 = ptrtoint ptr %pdev65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev65, align 8
  %40 = ptrtoint ptr %reg50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg50, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr_isr.__UNIQUE_ID_ddebug239, ptr noundef %39, ptr noundef nonnull @.str.35, i32 noundef %41) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %if.end50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg58) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg5c) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg50) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_handle_error(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !86, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_aspeed_edac__243_394_aspeed_driver_init6, !1, !"__initcall__kmod_aspeed_edac__243_394_aspeed_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/edac/aspeed_edac.c", i32 394, i32 1}
!2 = !{ptr @__exitcall_aspeed_driver_exit, !1, !"__exitcall_aspeed_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file244, !4, !"__UNIQUE_ID_file244", i1 false, i1 false}
!4 = !{!"../drivers/edac/aspeed_edac.c", i32 396, i32 1}
!5 = !{ptr @__UNIQUE_ID_license245, !4, !"__UNIQUE_ID_license245", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author246, !7, !"__UNIQUE_ID_author246", i1 false, i1 false}
!7 = !{!"../drivers/edac/aspeed_edac.c", i32 397, i32 1}
!8 = !{ptr @__UNIQUE_ID_description247, !9, !"__UNIQUE_ID_description247", i1 false, i1 false}
!9 = !{!"../drivers/edac/aspeed_edac.c", i32 398, i32 1}
!10 = !{ptr @__UNIQUE_ID_version248, !11, !"__UNIQUE_ID_version248", i1 false, i1 false}
!11 = !{!"../drivers/edac/aspeed_edac.c", i32 399, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/edac/aspeed_edac.c", i32 388, i32 11}
!18 = !{ptr @aspeed_driver, !19, !"aspeed_driver", i1 false, i1 false}
!19 = !{!"../drivers/edac/aspeed_edac.c", i32 386, i32 31}
!20 = !{ptr @aspeed_probe._key, !21, !"_key", i1 false, i1 false}
!21 = !{!"../drivers/edac/aspeed_edac.c", i32 292, i32 18}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/edac/aspeed_edac.c", i32 300, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @aspeed_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @aspeed_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/edac/aspeed_edac.c", i32 325, i32 18}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/edac/aspeed_edac.c", i32 330, i32 3}
!35 = !{ptr @aspeed_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @aspeed_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/edac/aspeed_edac.c", i32 339, i32 3}
!39 = !{ptr @aspeed_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @aspeed_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/edac/aspeed_edac.c", i32 346, i32 3}
!43 = !{ptr @aspeed_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @aspeed_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @aspeed_regmap_config, !46, !"aspeed_regmap_config", i1 false, i1 false}
!46 = !{!"../drivers/edac/aspeed_edac.c", i32 80, i32 35}
!47 = !{ptr @aspeed_regmap, !48, !"aspeed_regmap", i1 false, i1 false}
!48 = !{!"../drivers/edac/aspeed_edac.c", i32 38, i32 23}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/edac/aspeed_edac.c", i32 242, i32 34}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/edac/aspeed_edac.c", i32 244, i32 3}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @init_csrows._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @init_csrows._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/edac/aspeed_edac.c", i32 253, i32 3}
!58 = !{ptr @init_csrows._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @init_csrows._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/edac/aspeed_edac.c", i32 257, i32 2}
!62 = !{ptr @init_csrows.__UNIQUE_ID_ddebug241, !61, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/edac/aspeed_edac.c", i32 272, i32 2}
!65 = !{ptr @init_csrows.__UNIQUE_ID_ddebug242, !64, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/edac/aspeed_edac.c", i32 211, i32 2}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @config_irq.__UNIQUE_ID_ddebug240, !67, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/edac/aspeed_edac.c", i32 218, i32 3}
!72 = !{ptr @config_irq._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @config_irq._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/edac/aspeed_edac.c", i32 165, i32 2}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mcr_isr.__UNIQUE_ID_ddebug236, !75, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/edac/aspeed_edac.c", i32 172, i32 2}
!80 = !{ptr @mcr_isr.__UNIQUE_ID_ddebug237, !79, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/edac/aspeed_edac.c", i32 194, i32 3}
!83 = !{ptr @mcr_isr.__UNIQUE_ID_ddebug238, !82, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/edac/aspeed_edac.c", i32 197, i32 2}
!86 = !{ptr @mcr_isr.__UNIQUE_ID_ddebug239, !85, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/edac/aspeed_edac.c", i32 109, i32 10}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/edac/aspeed_edac.c", i32 109, i32 39}
!91 = !{ptr @aspeed_of_match, !92, !"aspeed_of_match", i1 false, i1 false}
!92 = !{!"../drivers/edac/aspeed_edac.c", i32 377, i32 34}
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
!103 = !{i64 2148722774, i64 2148722779, i64 2148722792, i64 2148722836, i64 2148722870, i64 2148722891}
!104 = !{i64 5657945}
!105 = !{i64 2154739632}
!106 = !{i64 2154738180}
!107 = !{i64 5657527}
!108 = !{i64 2154738577}
!109 = !{i64 2154738978}
