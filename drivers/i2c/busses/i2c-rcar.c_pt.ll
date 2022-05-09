; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-rcar.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-rcar.c"
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rcar_i2c_priv = type { i32, ptr, %struct.i2c_adapter, ptr, i32, ptr, %struct.wait_queue_head, i32, i32, i8, i32, ptr, ptr, ptr, ptr, %struct.scatterlist, i32, ptr, i8, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_rcar__299_1182_rcar_i2c_driver_init6 = internal global ptr @rcar_i2c_driver_init, section ".initcall6.init", align 4
@rcar_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_i2c_probe, ptr @rcar_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_i2c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_i2c_driver_exit = internal global ptr @rcar_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file300 = internal constant [42 x i8] c"i2c_rcar.file=drivers/i2c/busses/i2c-rcar\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [24 x i8] c"i2c_rcar.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [50 x i8] c"i2c_rcar.description=Renesas R-Car I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [69 x i8] c"i2c_rcar.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c-rcar\00", [23 x i8] zeroinitializer }, align 32
@rcar_i2c_dt_ids = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,i2c-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen1-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@rcar_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_i2c_suspend, ptr @rcar_i2c_resume, ptr @rcar_i2c_suspend, ptr @rcar_i2c_resume, ptr @rcar_i2c_suspend, ptr @rcar_i2c_resume, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rcar_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1033, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cannot get clock\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_i2c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/i2c/busses/i2c-rcar.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_i2c_probe._entry_ptr = internal global ptr @rcar_i2c_probe._entry, section ".printk_index", align 4
@rcar_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->wait\00", [20 x i8] zeroinitializer }, align 32
@rcar_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @rcar_i2c_master_xfer, ptr @rcar_i2c_master_xfer_atomic, ptr null, ptr null, ptr @rcar_i2c_func, ptr @rcar_reg_slave, ptr @rcar_unreg_slave }, [36 x i8] zeroinitializer }, align 32
@rcar_i2c_bri = internal global { %struct.i2c_bus_recovery_info, [44 x i8] } { %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @rcar_i2c_get_scl, ptr @rcar_i2c_set_scl, ptr null, ptr @rcar_i2c_set_sda, ptr @rcar_i2c_get_bus_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rcar_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 96, i32 0, i16 0, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"multi-master\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"smbus\00", [26 x i8] zeroinitializer }, align 32
@rcar_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1099, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cannot get irq %d\0A\00", [45 x i8] zeroinitializer }, align 32
@rcar_i2c_probe._entry_ptr.11 = internal global ptr @rcar_i2c_probe._entry.9, section ".printk_index", align 4
@rcar_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1117, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"probed\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rcar_i2c_probe._entry_ptr.15 = internal global ptr @rcar_i2c_probe._entry.12, section ".printk_index", align 4
@rcar_i2c_dma.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_rcar\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rcar_i2c_dma\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dma map failed, using PIO\0A\00", [37 x i8] zeroinitializer }, align 32
@rcar_i2c_dma.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.19, i8 0, i8 112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dma prep slave sg failed, using PIO\0A\00", [59 x i8] zeroinitializer }, align 32
@rcar_i2c_dma.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.20, i8 0, i8 115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"submitting dma failed, using PIO\0A\00", [62 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@rcar_i2c_master_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 857, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"error %d : %x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_i2c_master_xfer\00", [43 x i8] zeroinitializer }, align 32
@rcar_i2c_master_xfer._entry_ptr = internal global ptr @rcar_i2c_master_xfer._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcar_i2c_request_dma_chan\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"request_channel failed for %s (%ld)\0A\00", [59 x i8] zeroinitializer }, align 32
@rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 -72, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"slave_config failed for %s (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.28, ptr @.str.3, ptr @.str.31, i8 0, i8 -70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"got DMA channel for %s\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rcar_i2c_master_xfer_atomic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.32, ptr @.str.3, i32 919, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rcar_i2c_master_xfer_atomic\00", [36 x i8] zeroinitializer }, align 32
@rcar_i2c_master_xfer_atomic._entry_ptr = internal global ptr @rcar_i2c_master_xfer_atomic._entry, section ".printk_index", align 4
@__const.rcar_i2c_clock_calculate.t = private unnamed_addr constant %struct.i2c_timings { i32 100000, i32 200, i32 35, i32 50, i32 0, i32 0, i32 0, i32 0 }, align 4
@rcar_i2c_clock_calculate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device type error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_i2c_clock_calculate\00", [39 x i8] zeroinitializer }, align 32
@rcar_i2c_clock_calculate._entry_ptr = internal global ptr @rcar_i2c_clock_calculate._entry, section ".printk_index", align 4
@rcar_i2c_clock_calculate._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Input clock %lu too high\0A\00", [38 x i8] zeroinitializer }, align 32
@rcar_i2c_clock_calculate._entry_ptr.37 = internal global ptr @rcar_i2c_clock_calculate._entry.35, section ".printk_index", align 4
@rcar_i2c_clock_calculate._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"it is impossible to calculate best SCL\0A\00", [56 x i8] zeroinitializer }, align 32
@rcar_i2c_clock_calculate._entry_ptr.40 = internal global ptr @rcar_i2c_clock_calculate._entry.38, section ".printk_index", align 4
@rcar_i2c_clock_calculate.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.34, ptr @.str.3, ptr @.str.41, i8 0, i8 81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"clk %d/%d(%lu), round %u, CDF:0x%x, SCGD: 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@switch.table.rcar_i2c_clock_calculate = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 3, i32 3], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"rcar_i2c_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1172, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1174, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"rcar_i2c_dt_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 998, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"rcar_i2c_pm_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1163, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1033, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1042, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"rcar_i2c_algo\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 986, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"rcar_i2c_bri\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 203, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"rcar_i2c_quirks\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 994, i32 40 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1085, i32 42 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1090, i32 42 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1099, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1117, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 437, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 450, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 460, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 326, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 1169, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 857, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 716, i32 44 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 716, i32 51 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 721, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 738, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 744, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 919, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 264, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 286, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 320, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [33 x i8] c"../drivers/i2c/busses/i2c-rcar.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 324, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [38 x i8] c"switch.table.rcar_i2c_clock_calculate\00", align 1
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_rcar_i2c_driver_exit, ptr @__initcall__kmod_i2c_rcar__299_1182_rcar_i2c_driver_init6, ptr @rcar_i2c_clock_calculate._entry, ptr @rcar_i2c_clock_calculate._entry.35, ptr @rcar_i2c_clock_calculate._entry.38, ptr @rcar_i2c_clock_calculate._entry_ptr, ptr @rcar_i2c_clock_calculate._entry_ptr.37, ptr @rcar_i2c_clock_calculate._entry_ptr.40, ptr @rcar_i2c_driver_exit, ptr @rcar_i2c_master_xfer._entry, ptr @rcar_i2c_master_xfer._entry_ptr, ptr @rcar_i2c_master_xfer_atomic._entry, ptr @rcar_i2c_master_xfer_atomic._entry_ptr, ptr @rcar_i2c_probe._entry, ptr @rcar_i2c_probe._entry.12, ptr @rcar_i2c_probe._entry.9, ptr @rcar_i2c_probe._entry_ptr, ptr @rcar_i2c_probe._entry_ptr.11, ptr @rcar_i2c_probe._entry_ptr.15, ptr @rcar_i2c_driver, ptr @.str, ptr @rcar_i2c_dt_ids, ptr @rcar_i2c_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rcar_i2c_probe.__key, ptr @.str.6, ptr @rcar_i2c_algo, ptr @rcar_i2c_bri, ptr @rcar_i2c_quirks, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @switch.table.rcar_i2c_clock_calculate], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_dt_ids to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_bri to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_master_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_master_xfer_atomic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_clock_calculate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_clock_calculate._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_i2c_clock_calculate._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rcar_i2c_clock_calculate to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1504, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 8
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %res = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 12
  %call12 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef %res) #8
  %io = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %io, align 4
  %cmp.i182 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %6 = ptrtoint ptr %call19 to i32
  %devtype = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %devtype, align 4
  %wait = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.6, ptr noundef nonnull @rcar_i2c_probe.__key) #8
  %adap23 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 2
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 2, i32 11
  %10 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nr, align 4
  %algo = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rcar_i2c_algo, ptr %algo, align 8
  %class = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 256, ptr %class, align 4
  %retries = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 2, i32 8
  %13 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %retries, align 8
  %parent = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 2, i32 9, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev1, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %of_node26 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 2, i32 9, i32 27
  %17 = ptrtoint ptr %of_node26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %of_node26, align 8
  %bus_recovery_info = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 2, i32 16
  %18 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rcar_i2c_bri, ptr %bus_recovery_info, align 4
  %quirks = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 2, i32 17
  %19 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rcar_i2c_quirks, ptr %quirks, align 8
  %driver_data.i.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 2, i32 9, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 2, i32 12
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %call28 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %22, i32 noundef 48) #8
  %sg = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 15
  tail call void @sg_init_table(ptr noundef %sg, i32 noundef 1) #8
  %dma_direction = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 16
  %23 = ptrtoint ptr %dma_direction to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %dma_direction, align 4
  %dma_tx = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 13
  %24 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -517 to ptr), ptr %dma_tx, align 8
  %dma_rx = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 14
  %25 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -517 to ptr), ptr %dma_rx, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i183 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  %call31 = tail call fastcc i32 @rcar_i2c_clock_calculate(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.end18.out_pm_put_crit_edge, label %if.end33

if.end18.out_pm_put_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_pm_put

if.end33:                                         ; preds = %if.end18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !114
  %28 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp35 = icmp ult i32 %29, 2
  %spec.select = select i1 %cmp35, i32 65536, i32 0
  %spec.select181 = select i1 %cmp35, ptr @rcar_i2c_gen2_irq, ptr @rcar_i2c_gen3_irq
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp39 = icmp eq i32 %29, 2
  br i1 %cmp39, label %if.then40, label %if.end33.if.end54_crit_edge

if.end33.if.end54_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then40:                                        ; preds = %if.end33
  %call.i184 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rstc = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 17
  %30 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i184, ptr %rstc, align 8
  %cmp.i185 = icmp ugt ptr %call.i184, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then40.if.end54_crit_edge, label %if.then45

if.then40.if.end54_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then45:                                        ; preds = %if.then40
  %call47 = tail call i32 @reset_control_status(ptr noundef %call.i184) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.then45.if.end54_crit_edge

if.then45.if.end54_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then49:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -524 to ptr), ptr %rstc, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.then45.if.end54_crit_edge, %if.then40.if.end54_crit_edge, %if.end33.if.end54_crit_edge
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call.i186 = tail call ptr @of_find_property(ptr noundef %33, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i186, null
  br i1 %tobool.i.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i, align 8
  %or58 = or i32 %35, -2147483648
  store i32 %or58, ptr %call.i, align 8
  br label %if.end60

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call.i187 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #8
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then57
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %call.i188 = tail call ptr @of_find_property(ptr noundef %37, ptr noundef nonnull @.str.8, ptr noundef null) #8
  %tobool.i189.not = icmp eq ptr %call.i188, null
  br i1 %tobool.i189.not, label %if.end60.if.end66_crit_edge, label %if.then63

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call.i, align 8
  %or65 = or i32 %39, 268435456
  store i32 %or65, ptr %call.i, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end60.if.end66_crit_edge
  %call67 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.out_pm_disable_crit_edge, label %if.end70

if.end66.out_pm_disable_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_pm_disable

if.end70:                                         ; preds = %if.end66
  %irq = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 19
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call67, ptr %irq, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end70.dev_name.exit_crit_edge

if.end70.dev_name.exit_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end70.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %44, %if.end.i ], [ %42, %if.end70.dev_name.exit_crit_edge ]
  %call.i190 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call67, ptr noundef nonnull %spec.select181, ptr noundef null, i32 noundef %spec.select, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %cmp74 = icmp slt i32 %call.i190, 0
  br i1 %cmp74, label %do.end78, label %if.end80

do.end78:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %46) #11
  br label %out_pm_disable

if.end80:                                         ; preds = %dev_name.exit
  %driver_data.i.i191 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i191 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i191, align 4
  %call81 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %adap23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end80.out_pm_disable_crit_edge, label %if.end84

if.end80.out_pm_disable_crit_edge:                ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_pm_disable

if.end84:                                         ; preds = %if.end80
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call.i, align 8
  %and = and i32 %49, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool86.not = icmp eq i32 %and, 0
  br i1 %tobool86.not, label %if.end84.do.end98_crit_edge, label %if.then87

if.end84.do.end98_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

if.then87:                                        ; preds = %if.end84
  %call88 = tail call ptr @i2c_new_slave_host_notify_device(ptr noundef %adap23) #8
  %host_notify_client = getelementptr inbounds %struct.rcar_i2c_priv, ptr %call.i, i32 0, i32 20
  %50 = ptrtoint ptr %host_notify_client to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call88, ptr %host_notify_client, align 4
  %cmp.i192 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then91, label %if.then87.do.end98_crit_edge

if.then87.do.end98_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

if.then91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %call88 to i32
  tail call void @i2c_del_adapter(ptr noundef %adap23) #8
  br label %out_pm_put

do.end98:                                         ; preds = %if.then87.do.end98_crit_edge, %if.end84.do.end98_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  br label %cleanup

out_pm_put:                                       ; preds = %if.then91, %if.end18.out_pm_put_crit_edge
  %ret.0 = phi i32 [ %call31, %if.end18.out_pm_put_crit_edge ], [ %51, %if.then91 ]
  %call.i193 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #8
  br label %out_pm_disable

out_pm_disable:                                   ; preds = %out_pm_put, %if.end80.out_pm_disable_crit_edge, %do.end78, %if.end66.out_pm_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_pm_put ], [ %call67, %if.end66.out_pm_disable_crit_edge ], [ %call.i190, %do.end78 ], [ %call81, %if.end80.out_pm_disable_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %out_pm_disable, %do.end98, %if.then15, %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end8 ], [ %5, %if.then15 ], [ %ret.1, %out_pm_disable ], [ 0, %do.end98 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_i2c_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %host_notify_client = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %host_notify_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_notify_client, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_free_slave_host_notify_device(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %adap = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adap) #8
  %dma_tx.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_tx.i, align 8
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef %5) #8
  %6 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -517 to ptr), ptr %dma_tx.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %dma_rx.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_rx.i, align 4
  %cmp.i15.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15.i, label %if.end.i.rcar_i2c_release_dma.exit_crit_edge, label %if.then5.i

if.end.i.rcar_i2c_release_dma.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_i2c_release_dma.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef %8) #8
  %9 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -517 to ptr), ptr %dma_rx.i, align 4
  br label %rcar_i2c_release_dma.exit

rcar_i2c_release_dma.exit:                        ; preds = %if.then5.i, %if.end.i.rcar_i2c_release_dma.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool3.not = icmp sgt i32 %11, -1
  br i1 %tobool3.not, label %rcar_i2c_release_dma.exit.if.end6_crit_edge, label %if.then4

rcar_i2c_release_dma.exit.if.end6_crit_edge:      ; preds = %rcar_i2c_release_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %rcar_i2c_release_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %rcar_i2c_release_dma.exit.if.end6_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_i2c_gen3_irq(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %atomic_xfer = getelementptr inbounds %struct.rcar_i2c_priv, ptr %ptr, i32 0, i32 18
  %4 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %atomic_xfer, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %9 = and i32 %8, %2
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %msr.0 = phi i32 [ %3, %entry.if.end_crit_edge ], [ %10, %if.then ]
  %11 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ptr, align 8
  %and2 = and i32 %12, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msr.0)
  %tobool4 = icmp ne i32 %msr.0, 0
  %spec.select = select i1 %tobool3.not, i1 %tobool4, i1 false, !prof !118
  br i1 %spec.select, label %if.then7, label %if.end.if.end8_crit_edge, !prof !118

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 -2013265920) #8, !srcloc !114
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @rcar_i2c_irq(ptr noundef %ptr, i32 noundef %msr.0)
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_i2c_clock_calculate(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %t = alloca %struct.i2c_timings, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 2, i32 9, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #8
  %2 = call ptr @memcpy(ptr %t, ptr @__const.rcar_i2c_clock_calculate.t, i32 32)
  call void @i2c_parse_fw_timings(ptr noundef %1, ptr noundef nonnull %t, i1 noundef zeroext false) #8
  %devtype = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 10
  %3 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33) #11
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rcar_i2c_clock_calculate, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %clk = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 5
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 8
  %call = call i32 @clk_get_rate(ptr noundef %8) #8
  %div = udiv i32 %call, 20000000
  %div.highbits = lshr i32 %div, %switch.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.highbits)
  %cmp.not = icmp eq i32 %div.highbits, 0
  br i1 %cmp.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %add = add nuw nsw i32 %div, 1
  %div6 = udiv i32 %call, %add
  %scl_fall_ns = getelementptr inbounds %struct.i2c_timings, ptr %t, i32 0, i32 2
  %9 = ptrtoint ptr %scl_fall_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scl_fall_ns, align 4
  %scl_rise_ns = getelementptr inbounds %struct.i2c_timings, ptr %t, i32 0, i32 1
  %11 = ptrtoint ptr %scl_rise_ns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scl_rise_ns, align 4
  %add7 = add i32 %12, %10
  %scl_int_delay_ns = getelementptr inbounds %struct.i2c_timings, ptr %t, i32 0, i32 3
  %13 = ptrtoint ptr %scl_int_delay_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scl_int_delay_ns, align 4
  %add8 = add i32 %add7, %14
  %add9 = add i32 %div6, 500000
  %div10 = udiv i32 %add9, 1000000
  %mul = mul i32 %add8, %div10
  %add11 = add i32 %mul, 500
  %div12 = udiv i32 %add11, 1000
  %add15 = add nuw nsw i32 %div12, 20
  %15 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %t, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %scgd.069 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul14 = shl nuw nsw i32 %scgd.069, 3
  %add16 = add nuw nsw i32 %add15, %mul14
  %div17 = udiv i32 %div6, %add16
  call void @__sanitizer_cov_trace_cmp4(i32 %div17, i32 %16)
  %cmp18.not = icmp ugt i32 %div17, %16
  br i1 %cmp18.not, label %for.inc, label %do.body24

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %scgd.069, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %do.end23, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end23:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39) #11
  br label %cleanup

do.body24:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_i2c_clock_calculate.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_i2c_clock_calculate, %do.end33)) #8
          to label %if.then29 [label %do.end33], !srcloc !119

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_i2c_clock_calculate.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %div17, i32 noundef %18, i32 noundef %call, i32 noundef %div12, i32 noundef %div, i32 noundef %scgd.069) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.body24
  %shl34 = shl i32 %scgd.069, %switch.load
  %or = or i32 %shl34, %div
  %icccr = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 8
  %19 = ptrtoint ptr %icccr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %icccr, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end23, %do.end5, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end5 ], [ 0, %do.end33 ], [ -5, %do.end23 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_i2c_gen2_irq(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptr, align 8
  %and = and i32 %1, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !118

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2013265920) #8, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %io.i16 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %ptr, i32 0, i32 1
  %4 = ptrtoint ptr %io.i16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #8, !srcloc !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %atomic_xfer = getelementptr inbounds %struct.rcar_i2c_priv, ptr %ptr, i32 0, i32 18
  %8 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %atomic_xfer, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %io.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io.i16, align 4
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %13 = and i32 %12, %6
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %msr.0 = phi i32 [ %7, %if.end.if.end8_crit_edge ], [ %14, %if.then5 ]
  %call9 = tail call fastcc i32 @rcar_i2c_irq(ptr noundef %ptr, i32 noundef %msr.0)
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_slave_host_notify_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_i2c_irq(ptr noundef %priv, i32 noundef %msr) unnamed_addr #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msr)
  %tobool.not = icmp eq i32 %msr, 0
  br i1 %tobool.not, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #8
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i, align 1, !annotation !120
  %io.i.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !115
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %and.i = and i32 %4, 255
  %5 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i) #8, !srcloc !115
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %and2.i = and i32 %and.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.then.rcar_i2c_slave_irq.exit_crit_edge, label %if.end.i

if.then.rcar_i2c_slave_irq.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_i2c_slave_irq.exit

if.end.i:                                         ; preds = %if.then
  %and3.i = and i32 %and2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then5.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then5.i:                                       ; preds = %if.end.i
  %and6.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %slave10.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 11
  %9 = ptrtoint ptr %slave10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave10.i, align 8
  %slave_cb.i69.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %slave_cb.i69.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slave_cb.i69.i, align 8
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 %12(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %value.i) #8
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value.i, align 1
  %conv.i = zext i8 %14 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  %15 = shl nuw i32 %conv.i, 24
  %16 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %17, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %15) #8, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %19, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 419430400) #8, !srcloc !114
  br label %if.end13.i

if.else.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i70.i = call i32 %12(ptr noundef %10, i32 noundef 1, ptr noundef nonnull %value.i) #8
  %20 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %21, i32 36
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.i) #8, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %24, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 318767104) #8, !srcloc !114
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then8.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %26, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 -301989888) #8, !srcloc !114
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end13.i, %if.end.i.if.end14.i_crit_edge
  %and15.i = and i32 %and2.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.then17.i

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %slave18.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 11
  %27 = ptrtoint ptr %slave18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slave18.i, align 8
  %slave_cb.i77.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %slave_cb.i77.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slave_cb.i77.i, align 8
  %call.i78.i = call i32 %30(ptr noundef %28, i32 noundef 4, ptr noundef nonnull %value.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 201326592) #8, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %34, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i, i32 16777216) #8, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %36, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 -285212672) #8, !srcloc !114
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end20.i_crit_edge
  %and21.i = and i32 %and2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end29.i_crit_edge, label %if.then23.i

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %38, i32 36
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85.i) #8, !srcloc !115
  %40 = lshr i32 %39, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %conv25.i = trunc i32 %40 to i8
  %41 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv25.i, ptr %value.i, align 1
  %slave26.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 11
  %42 = ptrtoint ptr %slave26.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %slave26.i, align 8
  %slave_cb.i86.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %slave_cb.i86.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %slave_cb.i86.i, align 8
  %call.i87.i = call i32 %45(ptr noundef %43, i32 noundef 3, ptr noundef nonnull %value.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  %46 = lshr i32 %call.i87.i, 7
  %or.i = and i32 %46, 16777216
  %47 = or i32 %or.i, 201326592
  %48 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %51, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 -50331648) #8, !srcloc !114
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end29.i_crit_edge
  %and30.i = and i32 %and2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.rcar_i2c_slave_irq.exit_crit_edge, label %if.then32.i

if.end29.i.rcar_i2c_slave_irq.exit_crit_edge:     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_i2c_slave_irq.exit

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %slave33.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 11
  %52 = ptrtoint ptr %slave33.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %slave33.i, align 8
  %slave_cb.i91.i = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %slave_cb.i91.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %slave_cb.i91.i, align 8
  %call.i92.i = call i32 %55(ptr noundef %53, i32 noundef 2, ptr noundef nonnull %value.i) #8
  %56 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %value.i, align 1
  %conv35.i = zext i8 %57 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  %58 = shl nuw i32 %conv35.i, 24
  %59 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %60, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i, i32 %58) #8, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %62, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96.i, i32 -150994944) #8, !srcloc !114
  br label %rcar_i2c_slave_irq.exit

rcar_i2c_slave_irq.exit:                          ; preds = %if.then32.i, %if.end29.i.rcar_i2c_slave_irq.exit_crit_edge, %if.then.rcar_i2c_slave_irq.exit_crit_edge
  %63 = xor i1 %tobool.not.i, true
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #8
  %. = zext i1 %63 to i32
  br label %return

if.end2:                                          ; preds = %entry
  %and = and i32 %msr, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %priv, align 8
  %or = or i32 %65, 12
  store i32 %or, ptr %priv, align 8
  br label %out

if.end5:                                          ; preds = %if.end2
  %and6 = and i32 %msr, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end14, label %if.then8

if.then8:                                         ; preds = %if.end5
  %atomic_xfer = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 18
  %66 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %atomic_xfer, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool9.not = icmp eq i8 %67, 0
  br i1 %tobool9.not, label %if.then10, label %if.then8.if.end11_crit_edge

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %68 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268435456) #8, !srcloc !114
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8.if.end11_crit_edge
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %priv, align 8
  %or13 = or i32 %71, 16
  store i32 %or13, ptr %priv, align 8
  br label %out

if.end14:                                         ; preds = %if.end5
  %and15 = and i32 %msr, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %msgs_left = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 4
  %72 = ptrtoint ptr %msgs_left to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msgs_left, align 4
  %dec = add i32 %73, -1
  store i32 %dec, ptr %msgs_left, align 4
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %priv, align 8
  %or19 = or i32 %75, 4
  store i32 %or19, ptr %priv, align 8
  br label %out

if.end20:                                         ; preds = %if.end14
  %msg = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 3
  %76 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %msg, align 8
  %flags21 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %flags21 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %flags21, align 2
  %80 = and i16 %79, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool23.not = icmp eq i16 %80, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end20
  %and.i1 = and i32 %msr, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1)
  %tobool.not.i2 = icmp eq i32 %and.i1, 0
  br i1 %tobool.not.i2, label %if.then24.out_crit_edge, label %if.end.i4

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i4:                                        ; preds = %if.then24
  %and2.i3 = and i32 %msr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i3)
  %tobool3.not.i = icmp eq i32 %and2.i3, 0
  br i1 %tobool3.not.i, label %if.else.i6, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call fastcc zeroext i1 @rcar_i2c_dma(ptr noundef %priv) #8
  br label %if.end12.i

if.else.i6:                                       ; preds = %if.end.i4
  %pos.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 7
  %81 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pos.i, align 8
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 2
  %83 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %len.i, align 4
  %conv.i5 = zext i16 %84 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %conv.i5)
  %cmp.i = icmp slt i32 %82, %conv.i5
  br i1 %cmp.i, label %if.then6.i, label %if.else.i6.if.end12.i_crit_edge

if.else.i6.if.end12.i_crit_edge:                  ; preds = %if.else.i6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then6.i:                                       ; preds = %if.else.i6
  call void @__sanitizer_cov_trace_pc() #10
  %io.i.i7 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %85 = ptrtoint ptr %io.i.i7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %io.i.i7, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %86, i32 36
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8) #8, !srcloc !115
  %88 = lshr i32 %87, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %conv8.i = trunc i32 %88 to i8
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 3
  %89 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buf.i, align 4
  %91 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pos.i, align 8
  %arrayidx.i = getelementptr i8, ptr %90, i32 %92
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv8.i, ptr %arrayidx.i, align 1
  %94 = load i32, ptr %pos.i, align 8
  %inc.i = add i32 %94, 1
  store i32 %inc.i, ptr %pos.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then6.i, %if.else.i6.if.end12.i_crit_edge, %if.then4.i
  %pos13.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 7
  %95 = ptrtoint ptr %pos13.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pos13.i, align 8
  %add.i = add i32 %96, 1
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 2
  %97 = ptrtoint ptr %len14.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %len14.i, align 4
  %conv15.i = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv15.i)
  %cmp16.i = icmp eq i32 %add.i, %conv15.i
  br i1 %cmp16.i, label %if.then18.i, label %if.end12.i.if.end25.i_crit_edge

if.end12.i.if.end25.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then18.i:                                      ; preds = %if.end12.i
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %priv, align 8
  %and19.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %io.i57.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %101 = ptrtoint ptr %io.i57.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %io.i57.i, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %102, i32 4
  br i1 %tobool20.not.i, label %if.else22.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 -1979711488) #8, !srcloc !114
  br label %if.end25.i

if.else22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 -1996488704) #8, !srcloc !114
  %103 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %priv, align 8
  %or.i9 = or i32 %104, 536870912
  store i32 %or.i9, ptr %priv, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else22.i, %if.then21.i, %if.end12.i.if.end25.i_crit_edge
  %105 = ptrtoint ptr %pos13.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pos13.i, align 8
  %107 = ptrtoint ptr %len14.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %len14.i, align 4
  %conv28.i = zext i16 %108 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %conv28.i)
  %cmp29.i = icmp eq i32 %106, %conv28.i
  br i1 %cmp29.i, label %land.lhs.true.i, label %if.end25.i.if.else35.i_crit_edge

if.end25.i.if.else35.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else35.i

land.lhs.true.i:                                  ; preds = %if.end25.i
  %109 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %priv, align 8
  %and32.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %land.lhs.true.i.if.else35.i_crit_edge

land.lhs.true.i.if.else35.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else35.i

if.then34.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %msg, align 8
  %incdec.ptr.i.i = getelementptr %struct.i2c_msg, ptr %112, i32 1
  store ptr %incdec.ptr.i.i, ptr %msg, align 8
  %msgs_left.i.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 4
  %113 = ptrtoint ptr %msgs_left.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %msgs_left.i.i, align 4
  %dec.i.i = add i32 %114, -1
  store i32 %dec.i.i, ptr %msgs_left.i.i, align 4
  %and.i.i = and i32 %110, -268435456
  %115 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and.i.i, ptr %priv, align 8
  tail call fastcc void @rcar_i2c_prepare_msg(ptr noundef %priv) #8
  br label %out

if.else35.i:                                      ; preds = %land.lhs.true.i.if.else35.i_crit_edge, %if.end25.i.if.else35.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %io.i59.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %116 = ptrtoint ptr %io.i59.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %io.i59.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %117, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 2080374784) #8, !srcloc !114
  br label %out

if.else:                                          ; preds = %if.end20
  %and.i11 = and i32 %msr, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %if.else.out_crit_edge, label %if.end.i15

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i15:                                       ; preds = %if.else
  %pos.i13 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 7
  %118 = ptrtoint ptr %pos.i13 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pos.i13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp.i14 = icmp eq i32 %119, 1
  br i1 %cmp.i14, label %land.lhs.true.i17, label %if.end.i15.if.end3.i_crit_edge

if.end.i15.if.end3.i_crit_edge:                   ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

land.lhs.true.i17:                                ; preds = %if.end.i15
  %call.i16 = tail call fastcc zeroext i1 @rcar_i2c_dma(ptr noundef %priv) #8
  br i1 %call.i16, label %land.lhs.true.i17.out_crit_edge, label %land.lhs.true.i17.if.end3.i_crit_edge

land.lhs.true.i17.if.end3.i_crit_edge:            ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

land.lhs.true.i17.out_crit_edge:                  ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end3.i:                                        ; preds = %land.lhs.true.i17.if.end3.i_crit_edge, %if.end.i15.if.end3.i_crit_edge
  %120 = ptrtoint ptr %pos.i13 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pos.i13, align 8
  %len.i18 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 2
  %122 = ptrtoint ptr %len.i18 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %len.i18, align 4
  %conv.i19 = zext i16 %123 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %conv.i19)
  %cmp5.i = icmp slt i32 %121, %conv.i19
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i25

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf.i20 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 3
  %124 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %buf.i20, align 4
  %arrayidx.i21 = getelementptr i8, ptr %125, i32 %121
  %126 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i21, align 1
  %conv9.i = zext i8 %127 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %128 = shl nuw i32 %conv9.i, 24
  %io.i.i22 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %129 = ptrtoint ptr %io.i.i22 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %io.i.i22, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %130, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 %128) #8, !srcloc !114
  %131 = ptrtoint ptr %pos.i13 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pos.i13, align 8
  %inc.i24 = add i32 %132, 1
  store i32 %inc.i24, ptr %pos.i13, align 8
  br label %if.end16.i

if.else.i25:                                      ; preds = %if.end3.i
  %133 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %priv, align 8
  %and11.i = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %io.i28.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %135 = ptrtoint ptr %io.i28.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %io.i28.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %136, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 -1979711488) #8, !srcloc !114
  br label %if.end16.i

if.else14.i:                                      ; preds = %if.else.i25
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %msg, align 8
  %incdec.ptr.i.i26 = getelementptr %struct.i2c_msg, ptr %138, i32 1
  store ptr %incdec.ptr.i.i26, ptr %msg, align 8
  %msgs_left.i.i27 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 4
  %139 = ptrtoint ptr %msgs_left.i.i27 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %msgs_left.i.i27, align 4
  %dec.i.i28 = add i32 %140, -1
  store i32 %dec.i.i28, ptr %msgs_left.i.i27, align 4
  %and.i.i29 = and i32 %134, -268435456
  %141 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %and.i.i29, ptr %priv, align 8
  tail call fastcc void @rcar_i2c_prepare_msg(ptr noundef %priv) #8
  br label %out

if.end16.i:                                       ; preds = %if.then13.i, %if.then7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %io.i30.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %142 = ptrtoint ptr %io.i30.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %io.i30.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %143, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 1979711488) #8, !srcloc !114
  br label %out

out:                                              ; preds = %if.end16.i, %if.else14.i, %land.lhs.true.i17.out_crit_edge, %if.else.out_crit_edge, %if.else35.i, %if.then34.i, %if.then24.out_crit_edge, %if.then17, %if.end11, %if.then4
  %144 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %priv, align 8
  %and27 = and i32 %145, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %out.return_crit_edge, label %if.then29

out.return_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then29:                                        ; preds = %out
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %io.i30 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %146 = ptrtoint ptr %io.i30 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %io.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %147, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %148 = ptrtoint ptr %io.i30 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %io.i30, align 4
  %add.ptr.i33 = getelementptr i8, ptr %149, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #8, !srcloc !114
  %atomic_xfer30 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 18
  %150 = ptrtoint ptr %atomic_xfer30 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %atomic_xfer30, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool31.not = icmp eq i8 %151, 0
  br i1 %tobool31.not, label %if.then32, label %if.then29.return_crit_edge

if.then29.return_crit_edge:                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %wait = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %return

return:                                           ; preds = %if.then32, %if.then29.return_crit_edge, %out.return_crit_edge, %rcar_i2c_slave_irq.exit
  %retval.0 = phi i32 [ %., %rcar_i2c_slave_irq.exit ], [ 1, %if.then29.return_crit_edge ], [ 1, %if.then32 ], [ 1, %out.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rcar_i2c_dma(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 2, i32 9, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %msg2 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %msg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg2, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %dma_rx = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 14
  %dma_tx = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 13
  %cond7.in = select i1 %tobool.not, ptr %dma_tx, ptr %dma_rx
  %7 = ptrtoint ptr %cond7.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond7 = load ptr, ptr %cond7.in, align 4
  %atomic_xfer = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 18
  %8 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %atomic_xfer, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp ne i8 %9, 0
  %cmp.i = icmp ugt ptr %cond7, inttoptr (i32 -4096 to ptr)
  %or.cond = select i1 %tobool8.not, i1 true, i1 %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false11:                                  ; preds = %entry
  %len12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %len12 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len12, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %11)
  %cmp = icmp ult i16 %11, 8
  %12 = and i16 %5, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool19.not = icmp eq i16 %12, 0
  %or.cond176 = select i1 %cmp, i1 true, i1 %tobool19.not
  br i1 %or.cond176, label %lor.lhs.false11.cleanup_crit_edge, label %lor.lhs.false20

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false11
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false20
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %priv, align 8
  %and24 = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then27.critedge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %buf29 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %buf29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf29, align 4
  br label %if.end39

if.else:                                          ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #10
  %buf34 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %buf34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf34, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 1
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then27.critedge
  %.sink = phi i32 [ -1, %if.else ], [ -2, %if.then27.critedge ]
  %buf.0 = phi ptr [ %add.ptr, %if.else ], [ %16, %if.then27.critedge ]
  %conv37 = zext i16 %11 to i32
  %sub38 = add nsw i32 %.sink, %conv37
  %19 = ptrtoint ptr %cond7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cond7, align 4
  %dev40 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev40, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf.0) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end39
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !118

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %22) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %26, %if.end.i.i ], [ %24, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %22, ptr noundef %buf.0, i32 noundef %sub38) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %buf.0 to i32
  %sub.i = add i32 %28, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %27, i32 %shr.i
  %and.i = and i32 %28, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub38, i32 noundef %cond, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i162 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %29 = ptrtoint ptr %cond7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond7, align 4
  %dev43 = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev43, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %32, i32 noundef %retval.0.i162) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i162)
  %cmp.i163 = icmp eq i32 %retval.0.i162, -1
  br i1 %cmp.i163, label %do.body, label %if.end55

do.body:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_i2c_dma.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_i2c_dma, %cleanup)) #8
          to label %if.then53 [label %cleanup], !srcloc !119

if.then53:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_i2c_dma.__UNIQUE_ID_ddebug292, ptr noundef %1, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end55:                                         ; preds = %dma_map_single_attrs.exit
  %sg = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 15
  %dma_length = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 15, i32 4
  %33 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub38, ptr %dma_length, align 8
  %dma_address = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 15, i32 3
  %34 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i162, ptr %dma_address, align 4
  %dma_direction = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 16
  %35 = ptrtoint ptr %dma_direction to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond, ptr %dma_direction, align 4
  %tobool.not.i = icmp eq ptr %cond7, null
  br i1 %tobool.not.i, label %if.end55.do.body64_crit_edge, label %lor.lhs.false.i

if.end55.do.body64_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

lor.lhs.false.i:                                  ; preds = %if.end55
  %36 = ptrtoint ptr %cond7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cond7, align 4
  %tobool1.not.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.body64_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.body64_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 39
  %38 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %39, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.body64_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.body64_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i164 = tail call ptr %39(ptr noundef nonnull %cond7, ptr noundef %sg, i32 noundef 1, i32 noundef %cond, i32 noundef 3, ptr noundef null) #8
  %tobool62.not = icmp eq ptr %call.i164, null
  br i1 %tobool62.not, label %dmaengine_prep_slave_sg.exit.do.body64_crit_edge, label %if.end82

dmaengine_prep_slave_sg.exit.do.body64_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

do.body64:                                        ; preds = %dmaengine_prep_slave_sg.exit.do.body64_crit_edge, %lor.lhs.false2.i.do.body64_crit_edge, %lor.lhs.false.i.do.body64_crit_edge, %if.end55.do.body64_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_i2c_dma.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_i2c_dma, %do.end81)) #8
          to label %if.then78 [label %do.end81], !srcloc !119

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_i2c_dma.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.19) #8
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %do.body64
  tail call fastcc void @rcar_i2c_cleanup_dma(ptr noundef %priv, i1 noundef zeroext false)
  br label %cleanup

if.end82:                                         ; preds = %dmaengine_prep_slave_sg.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i164, i32 0, i32 6
  %40 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rcar_i2c_dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i164, i32 0, i32 8
  %41 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %priv, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i164, i32 0, i32 4
  %42 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_submit.i, align 4
  %call.i166 = tail call i32 %43(ptr noundef nonnull %call.i164) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i166)
  %tobool85.not = icmp sgt i32 %call.i166, -1
  br i1 %tobool85.not, label %if.end105, label %do.body87

do.body87:                                        ; preds = %if.end82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_i2c_dma.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_i2c_dma, %do.end104)) #8
          to label %if.then101 [label %do.end104], !srcloc !119

if.then101:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_i2c_dma.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.20) #8
  br label %do.end104

do.end104:                                        ; preds = %if.then101, %do.body87
  tail call fastcc void @rcar_i2c_cleanup_dma(ptr noundef %priv, i1 noundef zeroext false)
  br label %cleanup

if.end105:                                        ; preds = %if.end82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %io.i168 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %44 = ptrtoint ptr %io.i168 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io.i168, align 4
  %add.ptr.i169 = getelementptr i8, ptr %45, i32 60
  br i1 %tobool.not, label %if.else108, label %if.then107

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 33554432) #8, !srcloc !114
  br label %if.end109

if.else108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 16777216) #8, !srcloc !114
  br label %if.end109

if.end109:                                        ; preds = %if.else108, %if.then107
  %46 = ptrtoint ptr %cond7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cond7, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 50
  %48 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %49(ptr noundef nonnull %cond7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %do.end104, %do.end81, %if.then53, %do.body, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end104 ], [ true, %if.end109 ], [ false, %do.end81 ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %lor.lhs.false11.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then53 ], [ false, %do.body ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_i2c_cleanup_dma(ptr nocapture noundef %priv, i1 noundef zeroext %terminate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_direction = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %dma_direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %dma_rx = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 14
  %dma_tx = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 13
  %cond.in = select i1 %cmp, ptr %dma_rx, ptr %dma_tx
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  br i1 %terminate, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cond, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %dmaengine_terminate_async.exit.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

dmaengine_terminate_async.exit.i:                 ; preds = %if.then
  %call.i.i = tail call i32 %6(ptr noundef %cond) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.if.end_crit_edge

dmaengine_terminate_async.exit.i.if.end_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 1169) #8
  %7 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cond, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 48
  %9 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %10, null
  br i1 %tobool.not.i1.i, label %if.end.i.if.end_crit_edge, label %if.then.i2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %10(ptr noundef %cond) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i2.i, %if.end.i.if.end_crit_edge, %dmaengine_terminate_async.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cond, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dma_address = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 15, i32 3
  %15 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 15, i32 4
  %17 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_length, align 8
  %19 = ptrtoint ptr %dma_direction to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_direction, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef 0) #8
  %devtype = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 10
  %21 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp3 = icmp eq i32 %22, 2
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %23 = ptrtoint ptr %dma_direction to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp5 = icmp eq i32 %24, 2
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %priv, align 8
  %or = or i32 %26, 1073741824
  store i32 %or, ptr %priv, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %27 = ptrtoint ptr %dma_direction to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %dma_direction, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %28 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_i2c_dma_callback(ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_length = getelementptr inbounds %struct.rcar_i2c_priv, ptr %data, i32 0, i32 15, i32 4
  %0 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_length, align 8
  %pos = getelementptr inbounds %struct.rcar_i2c_priv, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 8
  %add = add i32 %3, %1
  store i32 %add, ptr %pos, align 8
  %dma_direction.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %data, i32 0, i32 16
  %4 = ptrtoint ptr %dma_direction.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  %dma_rx.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %data, i32 0, i32 14
  %dma_tx.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %data, i32 0, i32 13
  %cond.in.i = select i1 %cmp.i, ptr %dma_rx.i, ptr %dma_tx.i
  %6 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %7 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cond.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %dma_address.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %data, i32 0, i32 15, i32 3
  %11 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_address.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %12, i32 noundef %1, i32 noundef %5, i32 noundef 0) #8
  %devtype.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %data, i32 0, i32 10
  %13 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp3.i = icmp eq i32 %14, 2
  br i1 %cmp3.i, label %land.lhs.true.i, label %entry.rcar_i2c_cleanup_dma.exit_crit_edge

entry.rcar_i2c_cleanup_dma.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_i2c_cleanup_dma.exit

land.lhs.true.i:                                  ; preds = %entry
  %15 = ptrtoint ptr %dma_direction.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp5.i = icmp eq i32 %16, 2
  br i1 %cmp5.i, label %if.then6.i, label %land.lhs.true.i.rcar_i2c_cleanup_dma.exit_crit_edge

land.lhs.true.i.rcar_i2c_cleanup_dma.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_i2c_cleanup_dma.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 8
  %or.i = or i32 %18, 1073741824
  store i32 %or.i, ptr %data, align 8
  br label %rcar_i2c_cleanup_dma.exit

rcar_i2c_cleanup_dma.exit:                        ; preds = %if.then6.i, %land.lhs.true.i.rcar_i2c_cleanup_dma.exit_crit_edge, %entry.rcar_i2c_cleanup_dma.exit_crit_edge
  %19 = ptrtoint ptr %dma_direction.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %dma_direction.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %io.i.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !114
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_i2c_prepare_msg(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %pos = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 7
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pos, align 8
  %msgs_left = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %msgs_left to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msgs_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %priv, align 8
  %or = or i32 %9, 1
  store i32 %or, ptr %priv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv.i = zext i16 %11 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = and i16 %13, 1
  %15 = zext i16 %14 to i32
  %shl.i.masked = and i32 %shl.i, 254
  %conv5 = or i32 %shl.i.masked, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %16 = shl nuw i32 %conv5, 24
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %17 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #8, !srcloc !114
  %atomic_xfer = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 18
  %19 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %atomic_xfer, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool6.not = icmp eq i8 %20, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %tobool.not, i32 2030043136, i32 1929379840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %cond) #8, !srcloc !114
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %priv, align 8
  %and11 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 0) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 -1996488704) #8, !srcloc !114
  br label %if.end22

if.else:                                          ; preds = %if.end9
  %and15 = and i32 %24, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else20, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and19 = and i32 %24, -536870913
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and19, ptr %priv, align 8
  br label %if.end21

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 -1996488704) #8, !srcloc !114
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %33, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 0) #8, !srcloc !114
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 2, i32 9, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %atomic_xfer = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %atomic_xfer, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %call4 = tail call fastcc i32 @rcar_i2c_bus_barrier(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %devtype = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp5 = icmp eq i32 %6, 2
  br i1 %cmp5, label %if.then6, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  %or = or i32 %8, 1073741824
  store i32 %or, ptr %1, align 8
  %rstc = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rstc, align 8
  %cmp.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6.if.end15_crit_edge, label %if.then8

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %if.then6
  %call.i148 = tail call i32 @reset_control_reset(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool.not.i = icmp eq i32 %call.i148, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end.i:                                         ; preds = %if.then8
  %call1.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call1.i, 100000
  %11 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rstc, align 8
  %call433.i = tail call i32 @reset_control_status(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call433.i)
  %cmp34.i = icmp eq i32 %call433.i, 0
  br i1 %cmp34.i, label %if.end.i.if.then11_crit_edge, label %if.end.i.land.lhs.true.i_crit_edge

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  br label %land.lhs.true.i

if.end.i.if.then11_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.i.land.lhs.true.i_crit_edge
  %call8.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call8.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call8.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then11.i, label %cond.false.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rstc, align 8
  %call13.i = tail call i32 @reset_control_status(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %phi.cmp.i = icmp eq i32 %call13.i, 0
  br i1 %phi.cmp.i, label %if.then11.i.if.then11_crit_edge, label %if.then11.i.if.end15_crit_edge

if.then11.i.if.end15_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11.i.if.then11_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #8
  %16 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rstc, align 8
  %call4.i = tail call i32 @reset_control_status(ptr noundef %17) #8
  %cmp.i149 = icmp eq i32 %call4.i, 0
  br i1 %cmp.i149, label %cond.false.i.if.then11_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

cond.false.i.if.then11_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %cond.false.i.if.then11_crit_edge, %if.then11.i.if.then11_crit_edge, %if.end.i.if.then11_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 8
  %and = and i32 %19, -1073741825
  store i32 %and, ptr %1, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then11.i.if.end15_crit_edge, %if.then8.if.end15_crit_edge, %if.then6.if.end15_crit_edge, %if.end.if.end15_crit_edge
  tail call fastcc void @rcar_i2c_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp16160 = icmp sgt i32 %num, 0
  br i1 %cmp16160, label %for.body.lr.ph, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end15
  %dma_rx.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 14
  %dma_tx.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 13
  %res.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %rcar_i2c_request_dma.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rcar_i2c_request_dma.exit.for.body_crit_edge ]
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0161, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags.i, align 2
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i150 = icmp eq i16 %22, 0
  %cond.in.i = select i1 %tobool.not.i150, ptr %dma_tx.i, ptr %dma_rx.i
  %23 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %cmp.not.i = icmp eq ptr %cond.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %if.end.i152, label %for.body.rcar_i2c_request_dma.exit_crit_edge

for.body.rcar_i2c_request_dma.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_i2c_request_dma.exit

if.end.i152:                                      ; preds = %for.body
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 8
  %cond7.i = select i1 %tobool.not.i150, i32 1, i32 2
  %26 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %res.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add.i = add i32 %29, 36
  %call8.i151 = tail call fastcc ptr @rcar_i2c_request_dma_chan(ptr noundef %25, i32 noundef %cond7.i, i32 noundef %add.i) #8
  br i1 %tobool.not.i150, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i151, ptr %dma_rx.i, align 4
  br label %rcar_i2c_request_dma.exit

if.else.i:                                        ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i151, ptr %dma_tx.i, align 8
  br label %rcar_i2c_request_dma.exit

rcar_i2c_request_dma.exit:                        ; preds = %if.else.i, %if.then10.i, %for.body.rcar_i2c_request_dma.exit_crit_edge
  %inc = add nuw nsw i32 %i.0161, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %rcar_i2c_request_dma.exit.for.end_crit_edge, label %rcar_i2c_request_dma.exit.for.body_crit_edge

rcar_i2c_request_dma.exit.for.body_crit_edge:     ; preds = %rcar_i2c_request_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

rcar_i2c_request_dma.exit.for.end_crit_edge:      ; preds = %rcar_i2c_request_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %rcar_i2c_request_dma.exit.for.end_crit_edge, %if.end15.for.end_crit_edge
  %msg = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msgs, ptr %msg, align 8
  %msgs_left = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %msgs_left to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %num, ptr %msgs_left, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 8
  %and18 = and i32 %35, -268435456
  %or19 = or i32 %and18, 2
  store i32 %or19, ptr %1, align 8
  tail call fastcc void @rcar_i2c_prepare_msg(ptr noundef %1)
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  %36 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timeout, align 4
  %mul = mul i32 %37, %num
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 837) #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 8
  %and25 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool.not = icmp eq i32 %and25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool27.not = icmp eq i32 %mul, 0
  %spec.store.select = select i1 %tobool27.not, i32 1, i32 %mul
  %__ret.0 = select i1 %tobool.not, i32 %mul, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool31.not = icmp eq i32 %__ret.0, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %40 = select i1 %not.tobool.not, i1 true, i1 %tobool31.not
  br i1 %40, label %for.end.if.end63_crit_edge, label %if.then33

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then33:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %41 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %42 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %timeout, align 4
  %mul36 = mul i32 %43, %num
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wait = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 6
  %call38162 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 8
  %and41163 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41163)
  %tobool42.not164 = icmp eq i32 %and41163, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul36)
  %tobool46.not165 = icmp eq i32 %mul36, 0
  %spec.store.select99166 = select i1 %tobool46.not165, i32 1, i32 %mul36
  %__ret34.1167 = select i1 %tobool42.not164, i32 %mul36, i32 %spec.store.select99166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret34.1167)
  %tobool52.not168 = icmp eq i32 %__ret34.1167, 0
  %not.tobool42.not169 = xor i1 %tobool42.not164, true
  %46 = select i1 %not.tobool42.not169, i1 true, i1 %tobool52.not168
  br i1 %46, label %if.then33.for.end60_crit_edge, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  br label %cleanup

if.then33.for.end60_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then33.cleanup_crit_edge
  %__ret34.1170 = phi i32 [ %__ret34.1, %cleanup.cleanup_crit_edge ], [ %__ret34.1167, %if.then33.cleanup_crit_edge ]
  %call59 = call i32 @schedule_timeout(i32 noundef %__ret34.1170) #8
  %call38 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %1, align 8
  %and41 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool46.not = icmp eq i32 %call59, 0
  %spec.store.select99 = select i1 %tobool46.not, i32 1, i32 %call59
  %__ret34.1 = select i1 %tobool42.not, i32 %call59, i32 %spec.store.select99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret34.1)
  %tobool52.not = icmp eq i32 %__ret34.1, 0
  %not.tobool42.not = xor i1 %tobool42.not, true
  %49 = select i1 %not.tobool42.not, i1 true, i1 %tobool52.not
  br i1 %49, label %cleanup.for.end60_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end60_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60

for.end60:                                        ; preds = %cleanup.for.end60_crit_edge, %if.then33.for.end60_crit_edge
  %__ret34.1.lcssa = phi i32 [ %__ret34.1167, %if.then33.for.end60_crit_edge ], [ %__ret34.1, %cleanup.for.end60_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end63

if.end63:                                         ; preds = %for.end60, %for.end.if.end63_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %for.end.if.end63_crit_edge ], [ %__ret34.1.lcssa, %for.end60 ]
  %dma_direction = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 16
  %50 = ptrtoint ptr %dma_direction to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp65.not = icmp eq i32 %51, 3
  br i1 %cmp65.not, label %if.end63.if.end67_crit_edge, label %if.then66

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rcar_i2c_cleanup_dma(ptr noundef %1, i1 noundef zeroext true)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end63.if.end67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool68.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool68.not, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rcar_i2c_init(ptr noundef %1)
  br label %out

if.else:                                          ; preds = %if.end67
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %1, align 8
  %and71 = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.else74, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else74:                                        ; preds = %if.else
  %and76 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else79, label %if.else74.out_crit_edge

if.else74.out_crit_edge:                          ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else79:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %msgs_left to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msgs_left, align 4
  %sub = sub i32 %num, %55
  br label %out

out:                                              ; preds = %if.else79, %if.else74.out_crit_edge, %if.else.out_crit_edge, %if.then69, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call4, %entry.out_crit_edge ], [ %sub, %if.else79 ], [ -110, %if.then69 ], [ -6, %if.else.out_crit_edge ], [ -11, %if.else74.out_crit_edge ]
  %call.i153 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp85 = icmp sgt i32 %ret.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %ret.0)
  %cmp87.not = icmp eq i32 %ret.0, -6
  %or.cond = or i1 %cmp85, %cmp87.not
  br i1 %or.cond, label %out.if.end93_crit_edge, label %do.end91

out.if.end93_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

do.end91:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %ret.0, i32 noundef %57) #11
  br label %if.end93

if.end93:                                         ; preds = %do.end91, %out.if.end93_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_i2c_master_xfer_atomic(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 2, i32 9, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %atomic_xfer = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %atomic_xfer, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %call4 = tail call fastcc i32 @rcar_i2c_bus_barrier(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  tail call fastcc void @rcar_i2c_init(ptr noundef %1)
  %msg = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msgs, ptr %msg, align 8
  %msgs_left = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %msgs_left to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %num, ptr %msgs_left, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  %and = and i32 %8, -268435456
  %or = or i32 %and, 2
  store i32 %or, ptr %1, align 8
  tail call fastcc void @rcar_i2c_prepare_msg(ptr noundef %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout, align 4
  %mul = mul i32 %11, %num
  %add = add i32 %mul, %9
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 1
  %devtype = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %if.end20.do.body_crit_edge, %if.end
  %12 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !115
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msg, align 8
  %flags8 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags8, align 2
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not = icmp eq i16 %20, 0
  %cond = select i1 %tobool.not, i32 121, i32 115
  %and11 = and i32 %cond, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body.if.end20_crit_edge, label %if.then13

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then13:                                        ; preds = %do.body
  %21 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp14 = icmp ult i32 %22, 2
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then13
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 8
  %and.i = and i32 %24, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then16.if.end.i_crit_edge, !prof !118

if.then16.if.end.i_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2013265920) #8, !srcloc !114
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then16.if.end.i_crit_edge
  %27 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %28, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #8, !srcloc !115
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %31 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %atomic_xfer, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool4.not.i = icmp eq i8 %32, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end20.sink.split_crit_edge

if.end.i.if.end20.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %34, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %36 = and i32 %35, %29
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #8
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.then13
  %38 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io.i, align 4
  %add.ptr.i.i88 = getelementptr i8, ptr %39, i32 12
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88) #8, !srcloc !115
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %42 = ptrtoint ptr %atomic_xfer to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %atomic_xfer, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i90 = icmp eq i8 %43, 0
  br i1 %tobool.not.i90, label %if.then.i91, label %if.else.if.end.i93_crit_edge

if.else.if.end.i93_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i93

if.then.i91:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %45, i32 20
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %47 = and i32 %46, %40
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  br label %if.end.i93

if.end.i93:                                       ; preds = %if.then.i91, %if.else.if.end.i93_crit_edge
  %msr.0.i92 = phi i32 [ %41, %if.else.if.end.i93_crit_edge ], [ %48, %if.then.i91 ]
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %1, align 8
  %and2.i = and i32 %50, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msr.0.i92)
  %tobool4.i = icmp ne i32 %msr.0.i92, 0
  %spec.select.i = select i1 %tobool3.not.i, i1 %tobool4.i, i1 false, !prof !118
  br i1 %spec.select.i, label %if.then7.i, label %if.end.i93.if.end20.sink.split_crit_edge, !prof !118

if.end.i93.if.end20.sink.split_crit_edge:         ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

if.then7.i:                                       ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 -2013265920) #8, !srcloc !114
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then7.i, %if.end.i93.if.end20.sink.split_crit_edge, %if.then5.i, %if.end.i.if.end20.sink.split_crit_edge
  %msr.0.i.sink = phi i32 [ %30, %if.end.i.if.end20.sink.split_crit_edge ], [ %37, %if.then5.i ], [ %msr.0.i92, %if.end.i93.if.end20.sink.split_crit_edge ], [ %msr.0.i92, %if.then7.i ]
  %call9.i = tail call fastcc i32 @rcar_i2c_irq(ptr noundef %1, i32 noundef %msr.0.i.sink) #8
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %do.body.if.end20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp21 = icmp sgt i32 %sub, -1
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 8
  %and24 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp ne i32 %and24, 0
  %cmp21.not = xor i1 %cmp21, true
  %brmerge = select i1 %tobool25.not, i1 true, i1 %cmp21.not
  br i1 %brmerge, label %do.end, label %if.end20.do.body_crit_edge

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end20
  br i1 %cmp21, label %if.else30, label %if.then29

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rcar_i2c_init(ptr noundef %1)
  br label %out

if.else30:                                        ; preds = %do.end
  %and32 = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else35, label %if.else30.out_crit_edge

if.else30.out_crit_edge:                          ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else35:                                        ; preds = %if.else30
  %and37 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else40, label %if.else35.out_crit_edge

if.else35.out_crit_edge:                          ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else40:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %msgs_left to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msgs_left, align 4
  %sub42 = sub i32 %num, %57
  br label %out

out:                                              ; preds = %if.else40, %if.else35.out_crit_edge, %if.else30.out_crit_edge, %if.then29, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call4, %entry.out_crit_edge ], [ %sub42, %if.else40 ], [ -110, %if.then29 ], [ -6, %if.else30.out_crit_edge ], [ -11, %if.else35.out_crit_edge ]
  %call.i95 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp47 = icmp sgt i32 %ret.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %ret.0)
  %cmp49.not = icmp eq i32 %ret.0, -6
  %or.cond = or i1 %cmp47, %cmp49.not
  br i1 %or.cond, label %out.if.end56_crit_edge, label %do.end54

out.if.end56_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.end54:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %ret.0, i32 noundef %59) #11
  br label %if.end56

if.end56:                                         ; preds = %do.end54, %out.if.end56_crit_edge
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_i2c_func(ptr nocapture noundef readonly %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and = and i32 %3, 268435456
  %4 = or i32 %and, 251527209
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_reg_slave(ptr noundef %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave1 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %slave, align 8
  %8 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 2, i32 9, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #8
  %11 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %slave, ptr %slave1, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr, align 2
  %conv7 = zext i16 %13 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv7) #8
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 0) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 16777216) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 201326592) #8, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_unreg_slave(ptr nocapture noundef readonly %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave1 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !121

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 950, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 0) #8, !srcloc !114
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 134217728) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 0) #8, !srcloc !114
  %18 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %slave1, align 8
  %parent = getelementptr inbounds %struct.rcar_i2c_priv, ptr %3, i32 0, i32 2, i32 9, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_i2c_bus_barrier(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 2
  %timeout = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 2, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %conv = sext i32 %1 to i64
  %call = tail call i64 @ktime_get() #8
  %mul.i = mul nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 230) #8
  %io = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  %add.ptr50 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %5 = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not52 = icmp eq i32 %5, 0
  br i1 %tobool.not52, label %entry.if.end37_crit_edge, label %if.end12.lr.ph

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end12.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool13.not = icmp eq i32 %1, 0
  br label %if.end12

if.end12:                                         ; preds = %if.then28.if.end12_crit_edge, %if.end12.lr.ph
  br i1 %tobool13.not, label %if.end12.if.then28_crit_edge, label %land.lhs.true

if.end12.if.then28_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

land.lhs.true:                                    ; preds = %if.end12
  %call14 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.then28_crit_edge

land.lhs.true.if.then28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %land.lhs.true.if.then28_crit_edge, %if.end12.if.then28_crit_edge
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %6 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %9 = and i32 %8, 536870912
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then28.if.end37_crit_edge, label %if.then28.if.end12_crit_edge

if.then28.if.end12_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.end:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io, align 4
  %add.ptr22 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %13 = and i32 %12, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool32.not = icmp eq i32 %13, 0
  br i1 %tobool32.not, label %for.end.if.end37_crit_edge, label %if.then34

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %recovery_icmcr = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 9
  %14 = ptrtoint ptr %recovery_icmcr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -16, ptr %recovery_icmcr, align 8
  %call36 = tail call i32 @i2c_recover_bus(ptr noundef %adap) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %for.end.if.end37_crit_edge, %if.then28.if.end37_crit_edge, %entry.if.end37_crit_edge
  %ret.0 = phi i32 [ %call36, %if.then34 ], [ 0, %for.end.if.end37_crit_edge ], [ 0, %entry.if.end37_crit_edge ], [ 0, %if.then28.if.end37_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_i2c_init(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 -2147483648) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 0) #8, !srcloc !114
  %icccr = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 8
  %6 = ptrtoint ptr %icccr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %icccr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %9 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %8) #8, !srcloc !114
  %devtype = getelementptr inbounds %struct.rcar_i2c_priv, ptr %priv, i32 0, i32 10
  %11 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp eq i32 %12, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 251658240) #8, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rcar_i2c_request_dma_chan(ptr noundef %dev, i32 noundef %dir, i32 noundef %port_addr) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %cond = select i1 %cmp, ptr @.str.26, ptr @.str.27
  %call = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull %cond) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_i2c_request_dma_chan, %cleanup)) #8
          to label %if.then6 [label %cleanup], !srcloc !119

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond, i32 noundef %0) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %cfg, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 44)
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dir, ptr %cfg, align 4
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %port_addr, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  br label %if.end11

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %5 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %port_addr, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  %src_addr_width.sink = phi ptr [ %src_addr_width, %if.else ], [ %dst_addr_width, %if.then10 ]
  %6 = ptrtoint ptr %src_addr_width.sink to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %src_addr_width.sink, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end11.do.body15_crit_edge, label %dmaengine_slave_config.exit

if.end11.do.body15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

dmaengine_slave_config.exit:                      ; preds = %if.end11
  %call.i = call i32 %10(ptr noundef %call, ptr noundef nonnull %cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %do.body35, label %dmaengine_slave_config.exit.do.body15_crit_edge

dmaengine_slave_config.exit.do.body15_crit_edge:  ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

do.body15:                                        ; preds = %dmaengine_slave_config.exit.do.body15_crit_edge, %if.end11.do.body15_crit_edge
  %retval.0.i7882 = phi i32 [ %call.i, %dmaengine_slave_config.exit.do.body15_crit_edge ], [ -38, %if.end11.do.body15_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_i2c_request_dma_chan, %do.end32)) #8
          to label %if.then29 [label %do.end32], !srcloc !119

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond, i32 noundef %retval.0.i7882) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body15
  call void @dma_release_channel(ptr noundef %call) #8
  %11 = inttoptr i32 %retval.0.i7882 to ptr
  br label %cleanup

do.body35:                                        ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_i2c_request_dma_chan, %cleanup)) #8
          to label %if.then49 [label %cleanup], !srcloc !119

if.then49:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.body35, %do.end32, %if.then6, %do.body
  %retval.0 = phi ptr [ %11, %do.end32 ], [ %call, %if.then6 ], [ %call, %if.then49 ], [ %call, %do.body ], [ %call, %do.body35 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_i2c_get_scl(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !115
  %5 = lshr i32 %4, 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %and.lobit = and i32 %5, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_i2c_set_scl(ptr nocapture noundef readonly %adap, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %recovery_icmcr2 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %recovery_icmcr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %recovery_icmcr2, align 8
  %4 = and i8 %3, -65
  %masksel = select i1 %tobool.not, i8 0, i8 64
  %.sink = or i8 %4, %masksel
  store i8 %.sink, ptr %recovery_icmcr2, align 8
  %conv6 = zext i8 %.sink to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %5 = shl nuw i32 %conv6, 24
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #8, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_i2c_set_sda(ptr nocapture noundef readonly %adap, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %recovery_icmcr2 = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %recovery_icmcr2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %recovery_icmcr2, align 8
  %4 = and i8 %3, -33
  %masksel = select i1 %tobool.not, i8 0, i8 32
  %.sink = or i8 %4, %masksel
  store i8 %.sink, ptr %recovery_icmcr2, align 8
  %conv6 = zext i8 %.sink to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %5 = shl nuw i32 %conv6, 24
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #8, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_i2c_get_bus_free(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !115
  %5 = lshr i32 %4, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %and.lobit = and i32 %5, 1
  %6 = xor i32 %and.lobit, 1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_free_slave_host_notify_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adap = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 2
  %lock_ops.i.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adap, i32 noundef 1) #8
  %locked_flags.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 2, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %locked_flags.i) #8
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %adap, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adap = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 2
  %lock_ops.i.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adap, i32 noundef 1) #8
  %locked_flags.i = getelementptr inbounds %struct.rcar_i2c_priv, ptr %1, i32 0, i32 2, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %locked_flags.i) #8
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %adap, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_i2c_rcar__299_1182_rcar_i2c_driver_init6, !1, !"__initcall__kmod_i2c_rcar__299_1182_rcar_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1182, i32 1}
!2 = !{ptr @__exitcall_rcar_i2c_driver_exit, !1, !"__exitcall_rcar_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file300, !4, !"__UNIQUE_ID_file300", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1184, i32 1}
!5 = !{ptr @__UNIQUE_ID_license301, !4, !"__UNIQUE_ID_license301", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description302, !7, !"__UNIQUE_ID_description302", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1185, i32 1}
!8 = !{ptr @__UNIQUE_ID_author303, !9, !"__UNIQUE_ID_author303", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1186, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1174, i32 11}
!12 = !{ptr @rcar_i2c_driver, !13, !"rcar_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1172, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1033, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rcar_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rcar_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @rcar_i2c_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1042, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1085, i32 42}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1090, i32 42}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1099, i32 3}
!31 = !{ptr @rcar_i2c_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rcar_i2c_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1117, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rcar_i2c_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rcar_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 437, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rcar_i2c_dma.__UNIQUE_ID_ddebug292, !39, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 450, i32 3}
!45 = !{ptr @rcar_i2c_dma.__UNIQUE_ID_ddebug293, !44, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 460, i32 3}
!48 = !{ptr @rcar_i2c_dma.__UNIQUE_ID_ddebug294, !47, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!55 = !{ptr @rcar_i2c_algo, !56, !"rcar_i2c_algo", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 986, i32 35}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 857, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rcar_i2c_master_xfer._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @rcar_i2c_master_xfer._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 716, i32 44}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 716, i32 51}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 721, i32 3}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug295, !67, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 738, i32 3}
!72 = !{ptr @rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug296, !71, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 744, i32 2}
!75 = !{ptr @rcar_i2c_request_dma_chan.__UNIQUE_ID_ddebug297, !74, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 919, i32 3}
!78 = !{ptr @rcar_i2c_master_xfer_atomic._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rcar_i2c_master_xfer_atomic._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @rcar_i2c_bri, !81, !"rcar_i2c_bri", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 203, i32 37}
!82 = !{ptr @rcar_i2c_quirks, !83, !"rcar_i2c_quirks", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 994, i32 40}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 264, i32 3}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rcar_i2c_clock_calculate._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @rcar_i2c_clock_calculate._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 286, i32 3}
!91 = !{ptr @rcar_i2c_clock_calculate._entry.35, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @rcar_i2c_clock_calculate._entry_ptr.37, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 320, i32 2}
!95 = !{ptr @rcar_i2c_clock_calculate._entry.38, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @rcar_i2c_clock_calculate._entry_ptr.40, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 324, i32 2}
!99 = !{ptr @rcar_i2c_clock_calculate.__UNIQUE_ID_ddebug291, !98, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!100 = !{ptr @rcar_i2c_dt_ids, !101, !"rcar_i2c_dt_ids", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 998, i32 34}
!102 = !{ptr @rcar_i2c_pm_ops, !103, !"rcar_i2c_pm_ops", i1 false, i1 false}
!103 = !{!"../drivers/i2c/busses/i2c-rcar.c", i32 1163, i32 32}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 2155841776}
!114 = !{i64 6335510}
!115 = !{i64 6335928}
!116 = !{i64 2155842422}
!117 = !{i8 0, i8 2}
!118 = !{!"branch_weights", i32 2000, i32 1}
!119 = !{i64 2148750920, i64 2148750925, i64 2148750938, i64 2148750982, i64 2148751016, i64 2148751037}
!120 = !{!"auto-init"}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{i64 2155844158}
!123 = !{i64 2155844636}
