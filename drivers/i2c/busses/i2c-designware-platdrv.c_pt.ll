; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-designware-platdrv.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-designware-platdrv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.dw_i2c_dev = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.i2c_adapter, i32, i32, i32, i32, i32, i32, %struct.i2c_timings, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32, %struct.i2c_bus_recovery_info, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__UNIQUE_ID_alias289 = internal constant [54 x i8] c"i2c_designware_platform.alias=platform:i2c_designware\00", section ".modinfo", align 1
@__initcall__kmod_i2c_designware_platform__290_429_dw_i2c_init_driver4 = internal global ptr @dw_i2c_init_driver, section ".initcall4.init", align 4
@dw_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_i2c_plat_probe, ptr @dw_i2c_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_i2c_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_i2c_exit_driver = internal global ptr @dw_i2c_exit_driver, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [64 x i8] c"i2c_designware_platform.author=Baruch Siach <baruch@tkos.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [72 x i8] c"i2c_designware_platform.description=Synopsys DesignWare I2C bus adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [72 x i8] c"i2c_designware_platform.file=drivers/i2c/busses/i2c-designware-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [36 x i8] c"i2c_designware_platform.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_designware\00", [17 x i8] zeroinitializer }, align 32
@dw_i2c_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,designware-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,ocelot-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 256 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"baikal,bt1-sys-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 512 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@dw_i2c_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @dw_i2c_plat_prepare, ptr @dw_i2c_plat_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_i2c_plat_suspend, ptr @dw_i2c_plat_resume, ptr @dw_i2c_plat_suspend, ptr @dw_i2c_plat_resume, ptr @dw_i2c_plat_suspend, ptr @dw_i2c_plat_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_i2c_plat_suspend, ptr @dw_i2c_plat_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/i2c/busses/i2c-designware-platdrv.c\00", [52 x i8] zeroinitializer }, align 32
@bt1_i2c_request_regs._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bt1_i2c_cfg = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @bt1_i2c_read, ptr @bt1_i2c_write, ptr null, i8 1, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"i2c_designware_platdrv:118:(&bt1_i2c_cfg)->lock\00", [48 x i8] zeroinitializer }, align 32
@i2c_dw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 359, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Wrong operation mode: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_dw_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/i2c/busses/i2c-designware-core.h\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_dw_probe._entry_ptr = internal global ptr @i2c_dw_probe._entry, section ".printk_index", align 4
@pm_suspend_global_flags = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"dw_i2c_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 414, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 418, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"dw_i2c_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 151, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"dw_i2c_dev_pm_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 399, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 259, i32 48 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 299, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"bt1_i2c_cfg\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 102, i32 29 }
@___asan_gen_.35 = private constant [47 x i8] c"../drivers/i2c/busses/i2c-designware-platdrv.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 118, i32 13 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [44 x i8] c"../drivers/i2c/busses/i2c-designware-core.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 359, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_dw_i2c_exit_driver, ptr @__initcall__kmod_i2c_designware_platform__290_429_dw_i2c_init_driver4, ptr @dw_i2c_exit_driver, ptr @i2c_dw_probe._entry, ptr @i2c_dw_probe._entry_ptr, ptr @dw_i2c_driver, ptr @.str, ptr @dw_i2c_of_match, ptr @dw_i2c_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @bt1_i2c_request_regs._key, ptr @bt1_i2c_cfg, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2c_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2c_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_i2c_request_regs._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt1_i2c_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2c_init_driver() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_i2c_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_i2c_exit_driver() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2c_plat_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %remainder.i222 = alloca i32, align 4
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1680, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @device_get_match_data(ptr noundef %dev1) #9
  %0 = ptrtoint ptr %call6 to i32
  %flags = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 24
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %flags, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 8
  %irq9 = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 23
  %3 = ptrtoint ptr %irq9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %irq9, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %and.i = and i32 %0, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i)
  %cond.i = icmp eq i32 %and.i, 512
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end4
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i.i, align 8
  %parent.i.i = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i, align 4
  %call.i.i = tail call ptr @syscon_node_to_regmap(ptr noundef %8) #9
  %sysmap.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %sysmap.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %sysmap.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %sw.bb.i.dw_i2c_plat_request_regs.exit_crit_edge, label %if.end.i.i

sw.bb.i.dw_i2c_plat_request_regs.exit_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_i2c_plat_request_regs.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 8
  %call7.i.i = tail call ptr @__devm_regmap_init(ptr noundef %11, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @bt1_i2c_cfg, ptr noundef nonnull @bt1_i2c_request_regs._key, ptr noundef nonnull @.str.3) #9
  %map.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %map.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %map.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end.i.i.dw_i2c_plat_request_regs.exit_crit_edge, label %if.end.i.i.if.end13_crit_edge

if.end.i.i.if.end13_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.i.i.dw_i2c_plat_request_regs.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_i2c_plat_request_regs.exit

sw.default.i:                                     ; preds = %if.end4
  %call2.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2.i, ptr %base.i, align 4
  %cmp.i.i9.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i9.i, label %sw.default.i.dw_i2c_plat_request_regs.exit_crit_edge, label %sw.default.i.if.end13_crit_edge

sw.default.i.if.end13_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

sw.default.i.dw_i2c_plat_request_regs.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_i2c_plat_request_regs.exit

dw_i2c_plat_request_regs.exit:                    ; preds = %sw.default.i.dw_i2c_plat_request_regs.exit_crit_edge, %if.end.i.i.dw_i2c_plat_request_regs.exit_crit_edge, %sw.bb.i.dw_i2c_plat_request_regs.exit_crit_edge
  %ret.0.i.in = phi ptr [ %call2.i, %sw.default.i.dw_i2c_plat_request_regs.exit_crit_edge ], [ %call7.i.i, %if.end.i.i.dw_i2c_plat_request_regs.exit_crit_edge ], [ %call.i.i, %sw.bb.i.dw_i2c_plat_request_regs.exit_crit_edge ]
  %ret.0.i = ptrtoint ptr %ret.0.i.in to i32
  %tobool11.not = icmp eq ptr %ret.0.i.in, null
  br i1 %tobool11.not, label %dw_i2c_plat_request_regs.exit.if.end13_crit_edge, label %dw_i2c_plat_request_regs.exit.cleanup_crit_edge

dw_i2c_plat_request_regs.exit.cleanup_crit_edge:  ; preds = %dw_i2c_plat_request_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dw_i2c_plat_request_regs.exit.if.end13_crit_edge: ; preds = %dw_i2c_plat_request_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %dw_i2c_plat_request_regs.exit.if.end13_crit_edge, %sw.default.i.if.end13_crit_edge, %if.end.i.i.if.end13_crit_edge
  %call.i212 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %rst = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i212, ptr %rst, align 4
  %cmp.i = icmp ugt ptr %call.i212, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call.i212 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call23 = tail call i32 @reset_control_deassert(ptr noundef %call.i212) #9
  %timings = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 32
  tail call void @i2c_parse_fw_timings(ptr noundef %dev1, ptr noundef %timings, i1 noundef zeroext false) #9
  tail call void @i2c_dw_adjust_bus_speed(ptr noundef nonnull %call.i) #9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %tobool26.not = icmp eq ptr %17, null
  br i1 %tobool26.not, label %if.end21.if.end29_crit_edge, label %if.then27

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then27:                                        ; preds = %if.end21
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %flags.i213 = getelementptr inbounds %struct.dw_i2c_dev, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %flags.i213 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i213, align 4
  %and.i214 = and i32 %21, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i214)
  %cond.i215 = icmp eq i32 %and.i214, 256
  br i1 %cond.i215, label %sw.bb.i216, label %if.then27.if.end29_crit_edge

if.then27.if.end29_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

sw.bb.i216:                                       ; preds = %if.then27
  %call1.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #9
  %ext.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %ext.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call1.i, ptr %ext.i, align 8
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sw.bb.i216.if.end29_crit_edge, label %if.then.i

sw.bb.i216.if.end29_crit_edge:                    ; preds = %sw.bb.i216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then.i:                                        ; preds = %sw.bb.i216
  call void @__sanitizer_cov_trace_pc() #11
  %set_sda_hold_time.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %19, i32 0, i32 48
  %23 = ptrtoint ptr %set_sda_hold_time.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mscc_twi_set_sda_hold_time, ptr %set_sda_hold_time.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then.i, %sw.bb.i216.if.end29_crit_edge, %if.then27.if.end29_crit_edge, %if.end21.if.end29_crit_edge
  %call36 = tail call i32 @i2c_dw_validate_speed(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end29.exit_reset_crit_edge

if.end29.exit_reset_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_reset

if.end39:                                         ; preds = %if.end29
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 8
  %call.i217 = tail call zeroext i1 @i2c_detect_slave_mode(ptr noundef %25) #9
  br i1 %call.i217, label %if.then.i218, label %if.else.i

if.then.i218:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_dw_configure_slave(ptr noundef nonnull %call.i) #9
  br label %i2c_dw_configure.exit

if.else.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_dw_configure_master(ptr noundef nonnull %call.i) #9
  br label %i2c_dw_configure.exit

i2c_dw_configure.exit:                            ; preds = %if.else.i, %if.then.i218
  %call45 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %pclk = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call45, ptr %pclk, align 8
  %cmp.i219 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then48, label %if.end51

if.then48:                                        ; preds = %i2c_dw_configure.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call45 to i32
  br label %exit_reset

if.end51:                                         ; preds = %i2c_dw_configure.exit
  %call53 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call53, ptr %clk, align 4
  %call54 = tail call i32 @i2c_dw_prepare_clk(ptr noundef nonnull %call.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %if.end51.if.end78_crit_edge

if.end51.if.end78_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then56:                                        ; preds = %if.end51
  %get_clk_rate_khz = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 10
  %29 = ptrtoint ptr %get_clk_rate_khz to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @i2c_dw_get_clk_rate_khz, ptr %get_clk_rate_khz, align 4
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 4
  %call.i220 = tail call i32 @clk_get_rate(ptr noundef %31) #9
  %div.i = udiv i32 %call.i220, 1000
  %conv = zext i32 %div.i to i64
  %sda_hold_time = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 33
  %32 = ptrtoint ptr %sda_hold_time to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sda_hold_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool59.not = icmp eq i32 %33, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then56.if.end78_crit_edge

if.then56.if.end78_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

land.lhs.true:                                    ; preds = %if.then56
  %sda_hold_ns = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 32, i32 5
  %34 = ptrtoint ptr %sda_hold_ns to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sda_hold_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool60.not = icmp eq i32 %35, 0
  br i1 %tobool60.not, label %land.lhs.true.if.end78_crit_edge, label %if.then61

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then61:                                        ; preds = %land.lhs.true
  %conv63 = zext i32 %35 to i64
  %mul = mul nuw nsw i64 %conv63, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul)
  %cmp64.not = icmp eq i64 %mul, 0
  br i1 %cmp64.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i64 %mul, 500000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #9
  %36 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %remainder.i, align 4, !annotation !51
  %call.i221 = call i64 @div_s64_rem(i64 noundef %add, i32 noundef 1000000, ptr noundef nonnull %remainder.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #9
  %extract.t233 = trunc i64 %call.i221 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i222) #9
  %37 = ptrtoint ptr %remainder.i222 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %remainder.i222, align 4, !annotation !51
  %call.i223 = call i64 @div_s64_rem(i64 noundef -500000, i32 noundef 1000000, ptr noundef nonnull %remainder.i222) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i222) #9
  %extract.t232 = trunc i64 %call.i223 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %call.i223.sink.off0 = phi i32 [ %extract.t232, %cond.false ], [ %extract.t233, %cond.true ]
  %38 = ptrtoint ptr %sda_hold_time to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call.i223.sink.off0, ptr %sda_hold_time, align 8
  br label %if.end78

if.end78:                                         ; preds = %cond.end, %land.lhs.true.if.end78_crit_edge, %if.then56.if.end78_crit_edge, %if.end51.if.end78_crit_edge
  %adapter = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 25
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 25, i32 1
  %40 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 256, ptr %class, align 4
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 8
  %of_node85 = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 25, i32 9, i32 27
  %43 = ptrtoint ptr %of_node85 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %of_node85, align 8
  %nr = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 25, i32 11
  %44 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %nr, align 4
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %and = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool87.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool87.not, i32 14, i32 10
  %47 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %spec.select, ptr %47, align 8
  %is_prepared.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 1
  %49 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i = load i16, ptr %is_prepared.i, align 4
  %50 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %bf.cast.not.i = icmp eq i16 %50, 0
  br i1 %bf.cast.not.i, label %if.then.i225, label %if.end78.device_enable_async_suspend.exit_crit_edge

if.end78.device_enable_async_suspend.exit_crit_edge: ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %device_enable_async_suspend.exit

if.then.i225:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set.i = or i16 %bf.load.i, 16384
  %51 = ptrtoint ptr %is_prepared.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %bf.set.i, ptr %is_prepared.i, align 4
  br label %device_enable_async_suspend.exit

device_enable_async_suspend.exit:                 ; preds = %if.then.i225, %if.end78.device_enable_async_suspend.exit_crit_edge
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %52 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load.i226 = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i226)
  %tobool.not.i = icmp ult i16 %bf.load.i226, 8192
  br i1 %tobool.not.i, label %do.end106, label %device_enable_async_suspend.exit.if.end112_crit_edge, !prof !52

device_enable_async_suspend.exit.if.end112_crit_edge: ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

do.end106:                                        ; preds = %device_enable_async_suspend.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 299, i32 noundef 9, ptr noundef null) #9
  br label %if.end112

if.end112:                                        ; preds = %do.end106, %device_enable_async_suspend.exit.if.end112_crit_edge
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #9
  %call.i227 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #9
  %shared_with_punit = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 44
  %53 = ptrtoint ptr %shared_with_punit to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %shared_with_punit, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool124.not = icmp eq i8 %54, 0
  br i1 %tobool124.not, label %if.end112.if.end127_crit_edge, label %if.then125

if.end112.if.end127_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then125:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %55 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !54
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end112.if.end127_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %call129 = call fastcc i32 @i2c_dw_probe(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end127.cleanup_crit_edge, label %exit_probe

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

exit_probe:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @dw_i2c_plat_pm_cleanup(ptr noundef nonnull %call.i)
  br label %exit_reset

exit_reset:                                       ; preds = %exit_probe, %if.then48, %if.end29.exit_reset_crit_edge
  %ret.0 = phi i32 [ %call36, %if.end29.exit_reset_crit_edge ], [ %27, %if.then48 ], [ %call129, %exit_probe ]
  %56 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rst, align 4
  %call134 = call i32 @reset_control_assert(ptr noundef %57) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_reset, %if.end127.cleanup_crit_edge, %if.then18, %dw_i2c_plat_request_regs.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then18 ], [ %ret.0, %exit_reset ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.0.i, %dw_i2c_plat_request_regs.exit.cleanup_crit_edge ], [ 0, %if.end127.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2c_plat_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #9
  %adapter = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 25
  tail call void @i2c_del_adapter(ptr noundef %adapter) #9
  %disable = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 8
  tail call void %3(ptr noundef %1) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #9
  %call.i14 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #9
  %shared_with_punit.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 44
  %6 = ptrtoint ptr %shared_with_punit.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shared_with_punit.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.dw_i2c_plat_pm_cleanup.exit_crit_edge, label %if.then.i

entry.dw_i2c_plat_pm_cleanup.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_i2c_plat_pm_cleanup.exit

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !56
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.dw_i2c_plat_pm_cleanup.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.dw_i2c_plat_pm_cleanup.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_i2c_plat_pm_cleanup.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  br label %dw_i2c_plat_pm_cleanup.exit

dw_i2c_plat_pm_cleanup.exit:                      ; preds = %do.end11.i.i.i.i.i, %if.then.i.dw_i2c_plat_pm_cleanup.exit_crit_edge, %entry.dw_i2c_plat_pm_cleanup.exit_crit_edge
  %rst = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rst, align 4
  %call6 = tail call i32 @reset_control_assert(ptr noundef %12) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_adjust_bus_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_validate_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_prepare_clk(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dw_get_clk_rate_khz(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #9
  %div = udiv i32 %call, 1000
  ret i32 %div
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_dw_probe(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %mode = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @i2c_dw_probe_slave(ptr noundef %dev) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @i2c_dw_probe_master(ptr noundef %dev) #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %1) #12
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_i2c_plat_pm_cleanup(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #9
  %shared_with_punit = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 44
  %2 = ptrtoint ptr %shared_with_punit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shared_with_punit, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !56
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.if.end_crit_edge, label %do.end11.i.i.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt1_i2c_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sysmap = getelementptr inbounds %struct.dw_i2c_dev, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %sysmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysmap, align 8
  %and = and i32 %reg, 255
  %or = or i32 %and, -2147483648
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 256, i32 noundef %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %sysmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysmap, align 8
  %call2 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef 264, ptr noundef %val) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt1_i2c_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sysmap = getelementptr inbounds %struct.dw_i2c_dev, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %sysmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysmap, align 8
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 260, i32 noundef %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %sysmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysmap, align 8
  %and = and i32 %reg, 255
  %or = or i32 %and, -2147483392
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 256, i32 noundef %or) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_twi_set_sda_hold_time(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !58
  tail call void @arm_heavy_mb() #9
  %sda_hold_time = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 33
  %0 = ptrtoint ptr %sda_hold_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sda_hold_time, align 8
  %shl = shl i32 %1, 1
  %or = or i32 %shl, 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %ext = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #9, !srcloc !59
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @i2c_detect_slave_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_configure_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_configure_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_probe_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_probe_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_i2c_plat_prepare(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_i2c_plat_complete(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %land.lhs.true, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %pm_runtime_suspended.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_suspend_global_flags to i32))
  %3 = load i32, ptr @pm_suspend_global_flags, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2c_plat_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %suspended = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspended, align 8
  %shared_with_punit = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 44
  %3 = ptrtoint ptr %shared_with_punit to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shared_with_punit, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %disable = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 45
  %5 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disable, align 8
  tail call void %6(ptr noundef %1) #9
  %call1 = tail call i32 @i2c_dw_prepare_clk(ptr noundef %1, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2c_plat_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %shared_with_punit = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %shared_with_punit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shared_with_punit, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @i2c_dw_prepare_clk(ptr noundef %1, i1 noundef zeroext true) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %init = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 47
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 8
  %call2 = tail call i32 %5(ptr noundef %1) #9
  %suspended = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 51
  %6 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %suspended, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__UNIQUE_ID_alias289, !1, !"__UNIQUE_ID_alias289", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 412, i32 1}
!2 = !{ptr @__initcall__kmod_i2c_designware_platform__290_429_dw_i2c_init_driver4, !3, !"__initcall__kmod_i2c_designware_platform__290_429_dw_i2c_init_driver4", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 429, i32 1}
!4 = !{ptr @__exitcall_dw_i2c_exit_driver, !5, !"__exitcall_dw_i2c_exit_driver", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 435, i32 1}
!6 = !{ptr @__UNIQUE_ID_author291, !7, !"__UNIQUE_ID_author291", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 437, i32 1}
!8 = !{ptr @__UNIQUE_ID_description292, !9, !"__UNIQUE_ID_description292", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 438, i32 1}
!10 = !{ptr @__UNIQUE_ID_file293, !11, !"__UNIQUE_ID_file293", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 439, i32 1}
!12 = !{ptr @__UNIQUE_ID_license294, !11, !"__UNIQUE_ID_license294", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 418, i32 11}
!15 = !{ptr @dw_i2c_driver, !16, !"dw_i2c_driver", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 414, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 259, i32 48}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 299, i32 2}
!21 = !{ptr @bt1_i2c_request_regs._key, !22, !"_key", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 118, i32 13}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bt1_i2c_cfg, !25, !"bt1_i2c_cfg", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 102, i32 29}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 198, i32 12}
!28 = distinct !{null, !29, !"dw_i2c_hwmon_class_dmi", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 196, i32 35}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-designware-core.h", i32 359, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @i2c_dw_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @i2c_dw_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dw_i2c_of_match, !39, !"dw_i2c_of_match", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 151, i32 34}
!40 = !{ptr @dw_i2c_dev_pm_ops, !41, !"dw_i2c_dev_pm_ops", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-designware-platdrv.c", i32 399, i32 32}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i8 0, i8 2}
!54 = !{i64 2148312058, i64 2148312084, i64 2148312113, i64 2148312147, i64 2148312178, i64 2148312201}
!55 = !{i64 2148311477}
!56 = !{i64 796300, i64 796325, i64 796347, i64 796363, i64 796375, i64 796395, i64 796419, i64 796435, i64 796447}
!57 = !{i64 2148311665}
!58 = !{i64 2155808168}
!59 = !{i64 6938155}
