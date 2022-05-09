; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-omap.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-omap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.omap_i2c_bus_platform_data = type { i32, i32, i32, ptr }
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
%struct.omap_i2c_dev = type { ptr, ptr, i32, i32, %struct.completion, ptr, i32, ptr, i32, i32, i16, i16, ptr, ptr, i32, %struct.i2c_adapter, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_omap__296_1602_omap_i2c_init_driver4 = internal global ptr @omap_i2c_init_driver, section ".initcall4.init", align 4
@omap_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_i2c_probe, ptr @omap_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_i2c_exit_driver = internal global ptr @omap_i2c_exit_driver, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [55 x i8] c"i2c_omap.author=MontaVista Software, Inc. (and others)\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [45 x i8] c"i2c_omap.description=TI OMAP I2C bus adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [42 x i8] c"i2c_omap.file=drivers/i2c/busses/i2c-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [21 x i8] c"i2c_omap.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias301 = internal constant [33 x i8] c"i2c_omap.alias=platform:omap_i2c\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap_i2c\00", [23 x i8] zeroinitializer }, align 32
@omap_i2c_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2430-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2430_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2420_pdata }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@omap_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @omap_i2c_runtime_suspend, ptr @omap_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@reg_map_ip_v1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\00\01\02\03\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", [46 x i8] zeroinitializer }, align 32
@reg_map_ip_v2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\04,(44\90\94\98\9C\10\A4\A8\AC\B0\B4\B8\BC\C0\00\04$,0", [41 x i8] zeroinitializer }, align 32
@omap_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1483, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failure requesting irq %i\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_i2c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/i2c/busses/i2c-omap.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_i2c_probe._entry_ptr = internal global ptr @omap_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OMAP I2C adapter\00", [47 x i8] zeroinitializer }, align 32
@omap_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @omap_i2c_xfer_irq, ptr @omap_i2c_xfer_polling, ptr null, ptr null, ptr @omap_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 96, i32 0, i16 0, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@omap_i2c_bus_recovery_info = internal global { %struct.i2c_bus_recovery_info, [44 x i8] } { %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @omap_i2c_get_scl, ptr @omap_i2c_set_scl, ptr @omap_i2c_get_sda, ptr null, ptr null, ptr @omap_i2c_prepare_recovery, ptr @omap_i2c_unprepare_recovery, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@omap_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1505, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bus %d rev%d.%d at %d kHz\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_i2c_probe._entry_ptr.11 = internal global ptr @omap_i2c_probe._entry.8, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@omap_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 377, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not get fck: %i\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap_i2c_init\00", [18 x i8] zeroinitializer }, align 32
@omap_i2c_init._entry_ptr = internal global ptr @omap_i2c_init._entry, section ".printk_index", align 4
@omap_i2c_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 416, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@omap_i2c_init._entry_ptr.17 = internal global ptr @omap_i2c_init._entry.16, section ".printk_index", align 4
@omap_i2c_xfer_data.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 1, i8 17, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_omap\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_i2c_xfer_data\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IRQ (ISR = 0x%04x)\0A\00", [44 x i8] zeroinitializer }, align 32
@omap_i2c_xfer_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 1094, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Too much work in one IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_i2c_xfer_data._entry_ptr = internal global ptr @omap_i2c_xfer_data._entry, section ".printk_index", align 4
@omap_i2c_xfer_data._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.4, i32 1104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Arbitration lost\0A\00", [46 x i8] zeroinitializer }, align 32
@omap_i2c_xfer_data._entry_ptr.25 = internal global ptr @omap_i2c_xfer_data._entry.23, section ".printk_index", align 4
@omap_i2c_xfer_data._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.4, i32 1184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Receive overrun\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_i2c_xfer_data._entry_ptr.28 = internal global ptr @omap_i2c_xfer_data._entry.26, section ".printk_index", align 4
@omap_i2c_xfer_data._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.4, i32 1191, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Transmit underflow\0A\00", [44 x i8] zeroinitializer }, align 32
@omap_i2c_xfer_data._entry_ptr.31 = internal global ptr @omap_i2c_xfer_data._entry.29, section ".printk_index", align 4
@i2c_omap_errata_i207.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 -34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_omap_errata_i207\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RDR when bus is busy.\0A\00", [41 x i8] zeroinitializer }, align 32
@errata_omap3_i462._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.34, ptr @.str.4, i32 980, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"errata_omap3_i462\00", [46 x i8] zeroinitializer }, align 32
@errata_omap3_i462._entry_ptr = internal global ptr @errata_omap3_i462._entry, section ".printk_index", align 4
@errata_omap3_i462._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 992, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"timeout waiting on XUDF bit\0A\00", [35 x i8] zeroinitializer }, align 32
@errata_omap3_i462._entry_ptr.37 = internal global ptr @errata_omap3_i462._entry.35, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@omap_i2c_wait_for_bb_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 594, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout waiting for bus ready\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap_i2c_wait_for_bb_valid\00", [37 x i8] zeroinitializer }, align 32
@omap_i2c_wait_for_bb_valid._entry_ptr = internal global ptr @omap_i2c_wait_for_bb_valid._entry, section ".printk_index", align 4
@omap_i2c_xfer_msg.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 -89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_i2c_xfer_msg\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@omap_i2c_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 727, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"controller timed out waiting for start condition to finish\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_i2c_xfer_msg._entry_ptr = internal global ptr @omap_i2c_xfer_msg._entry, section ".printk_index", align 4
@omap_i2c_xfer_msg._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.40, ptr @.str.4, i32 755, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"controller timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@omap_i2c_xfer_msg._entry_ptr.45 = internal global ptr @omap_i2c_xfer_msg._entry.43, section ".printk_index", align 4
@omap_i2c_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 331, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"timeout waiting for controller reset\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_i2c_reset\00", [17 x i8] zeroinitializer }, align 32
@omap_i2c_reset._entry_ptr = internal global ptr @omap_i2c_reset._entry, section ".printk_index", align 4
@omap4_pdata = internal global { %struct.omap_i2c_bus_platform_data, [16 x i8] } { %struct.omap_i2c_bus_platform_data { i32 0, i32 2, i32 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@omap3_pdata = internal global { %struct.omap_i2c_bus_platform_data, [16 x i8] } { %struct.omap_i2c_bus_platform_data { i32 0, i32 1, i32 256, ptr null }, [16 x i8] zeroinitializer }, align 32
@omap2430_pdata = internal global { %struct.omap_i2c_bus_platform_data, [16 x i8] } { %struct.omap_i2c_bus_platform_data { i32 0, i32 1, i32 320, ptr null }, [16 x i8] zeroinitializer }, align 32
@omap2420_pdata = internal global { %struct.omap_i2c_bus_platform_data, [16 x i8] } { %struct.omap_i2c_bus_platform_data { i32 0, i32 1, i32 263, ptr null }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"omap_i2c_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1586, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1590, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"omap_i2c_of_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1248, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"omap_i2c_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1579, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1386, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"reg_map_ip_v1\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 216, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"reg_map_ip_v2\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 237, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1483, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1491, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"omap_i2c_algo\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1214, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"omap_i2c_quirks\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1220, i32 40 }
@___asan_gen_.96 = private unnamed_addr constant [27 x i8] c"omap_i2c_bus_recovery_info\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1344, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1504, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 87, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 374, i32 29 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 377, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 416, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1092, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1094, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1104, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1184, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1191, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 888, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 980, i32 5 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 992, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 594, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 667, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 726, i32 5 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 755, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 330, i32 5 }
@___asan_gen_.219 = private unnamed_addr constant [12 x i8] c"omap4_pdata\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1244, i32 42 }
@___asan_gen_.222 = private unnamed_addr constant [12 x i8] c"omap3_pdata\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1239, i32 42 }
@___asan_gen_.225 = private unnamed_addr constant [15 x i8] c"omap2430_pdata\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1233, i32 42 }
@___asan_gen_.228 = private unnamed_addr constant [15 x i8] c"omap2420_pdata\00", align 1
@___asan_gen_.229 = private constant [33 x i8] c"../drivers/i2c/busses/i2c-omap.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1225, i32 42 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_omap_i2c_exit_driver, ptr @__initcall__kmod_i2c_omap__296_1602_omap_i2c_init_driver4, ptr @errata_omap3_i462._entry, ptr @errata_omap3_i462._entry.35, ptr @errata_omap3_i462._entry_ptr, ptr @errata_omap3_i462._entry_ptr.37, ptr @omap_i2c_exit_driver, ptr @omap_i2c_init._entry, ptr @omap_i2c_init._entry.16, ptr @omap_i2c_init._entry_ptr, ptr @omap_i2c_init._entry_ptr.17, ptr @omap_i2c_probe._entry, ptr @omap_i2c_probe._entry.8, ptr @omap_i2c_probe._entry_ptr, ptr @omap_i2c_probe._entry_ptr.11, ptr @omap_i2c_reset._entry, ptr @omap_i2c_reset._entry_ptr, ptr @omap_i2c_wait_for_bb_valid._entry, ptr @omap_i2c_wait_for_bb_valid._entry_ptr, ptr @omap_i2c_xfer_data._entry, ptr @omap_i2c_xfer_data._entry.23, ptr @omap_i2c_xfer_data._entry.26, ptr @omap_i2c_xfer_data._entry.29, ptr @omap_i2c_xfer_data._entry_ptr, ptr @omap_i2c_xfer_data._entry_ptr.25, ptr @omap_i2c_xfer_data._entry_ptr.28, ptr @omap_i2c_xfer_data._entry_ptr.31, ptr @omap_i2c_xfer_msg._entry, ptr @omap_i2c_xfer_msg._entry.43, ptr @omap_i2c_xfer_msg._entry_ptr, ptr @omap_i2c_xfer_msg._entry_ptr.45, ptr @omap_i2c_driver, ptr @.str, ptr @omap_i2c_of_match, ptr @omap_i2c_pm_ops, ptr @.str.1, ptr @reg_map_ip_v1, ptr @reg_map_ip_v2, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @omap_i2c_algo, ptr @omap_i2c_quirks, ptr @omap_i2c_bus_recovery_info, ptr @.str.9, ptr @.str.10, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @omap4_pdata, ptr @omap3_pdata, ptr @omap2430_pdata, ptr @omap2420_pdata], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_map_ip_v1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_map_ip_v2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_bus_recovery_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_xfer_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_xfer_data._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_xfer_data._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_xfer_data._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @errata_omap3_i462._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @errata_omap3_i462._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_wait_for_bb_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_xfer_msg._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_i2c_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_i2c_init_driver() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_i2c_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_i2c_exit_driver() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1496, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call15 = tail call ptr @of_match_device(ptr noundef nonnull @omap_i2c_of_match, ptr noundef %dev) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #9
  %6 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100000, ptr %freq, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call15, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.omap_i2c_bus_platform_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %flags18 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %flags18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %flags18, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %freq, i32 noundef 1, i32 noundef 0) #9
  %12 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freq, align 4
  %div = udiv i32 %13, 1000
  %speed = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %speed, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #9
  br label %if.end27

if.else:                                          ; preds = %if.end13
  %cmp20.not = icmp eq ptr %1, null
  br i1 %cmp20.not, label %if.else.if.end27_crit_edge, label %if.then21

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %speed22 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %speed22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %speed22, align 4
  %flags23 = getelementptr inbounds %struct.omap_i2c_bus_platform_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags23, align 4
  %flags24 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %flags24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags24, align 8
  %set_mpu_wkup_lat = getelementptr inbounds %struct.omap_i2c_bus_platform_data, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %set_mpu_wkup_lat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_mpu_wkup_lat, align 4
  %set_mpu_wkup_lat25 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %set_mpu_wkup_lat25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %set_mpu_wkup_lat25, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.else.if.end27_crit_edge, %if.then17
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %call.i, align 8
  %irq30 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %irq30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call2, ptr %irq30, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %cmd_complete = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #9
  %flags31 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags31, align 8
  %shr = lshr i32 %29, 7
  %and = and i32 %shr, 3
  %reg_shift = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %reg_shift to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %reg_shift, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  call void @pm_runtime_enable(ptr noundef %32) #9
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %34, i32 noundef 1000) #9
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %36, i1 noundef zeroext true) #9
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 8
  %call.i280 = call i32 @__pm_runtime_resume(ptr noundef %38, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %cmp.i281 = icmp slt i32 %call.i280, 0
  br i1 %cmp.i281, label %if.then.i, label %if.end39

if.then.i:                                        ; preds = %if.end27
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !134
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !135
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.err_disable_pm_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.err_disable_pm_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_pm

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !136
  br label %err_disable_pm

if.end39:                                         ; preds = %if.end27
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %41, i32 4
  %42 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9, !srcloc !137
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %shr43 = lshr i16 %43, 14
  %scheme = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 10
  %44 = ptrtoint ptr %scheme to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %shr43, ptr %scheme, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %43)
  %cond = icmp ult i16 %43, 16384
  %regs = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 13
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @reg_map_ip_v1, ptr %regs, align 4
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %48 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %47) #9, !srcloc !137
  %49 = call i16 @llvm.bswap.i16(i16 %48) #9
  %conv48 = zext i16 %49 to i32
  %shr51 = lshr i16 %49, 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @reg_map_ip_v2, ptr %regs, align 4
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %53 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %52) #9, !srcloc !137
  %54 = call i16 @llvm.bswap.i16(i16 %53) #9
  %55 = zext i16 %42 to i32
  %56 = zext i16 %53 to i32
  %57 = shl nuw i32 %56, 16
  %58 = or i32 %57, %55
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %and60 = and i16 %54, 31
  %and62 = lshr i16 %54, 7
  %shr63 = and i16 %and62, 14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %.sink = phi i32 [ %conv48, %sw.bb ], [ %59, %sw.default ]
  %minor.0 = phi i16 [ %shr51, %sw.bb ], [ %and60, %sw.default ]
  %major.0 = phi i16 [ %shr51, %sw.bb ], [ %shr63, %sw.default ]
  %60 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 18
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink, ptr %60, align 4
  %errata = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 26
  %62 = add i32 %.sink, -54
  call void @__sanitizer_cov_trace_const_cmp4(i32 1346371532, i32 %62)
  %63 = icmp ult i32 %62, 1346371532
  %spec.store.select = zext i1 %63 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %.sink)
  %cmp79 = icmp ult i32 %.sink, 61
  %64 = or i16 %spec.store.select, 2
  %spec.select = select i1 %cmp79, i16 %64, i16 %spec.store.select
  %65 = ptrtoint ptr %errata to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %spec.select, ptr %errata, align 2
  %66 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags31, align 8
  %and88 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.then90, label %sw.epilog.if.end120_crit_edge

sw.epilog.if.end120_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then90:                                        ; preds = %sw.epilog
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %regs.i289 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 13
  %70 = ptrtoint ptr %regs.i289 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i289, align 4
  %arrayidx.i290 = getelementptr i8, ptr %71, i32 17
  %72 = ptrtoint ptr %arrayidx.i290 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i290, align 1
  %conv.i291 = zext i8 %73 to i32
  %74 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reg_shift, align 4
  %shl.i293 = shl i32 %conv.i291, %75
  %add.ptr.i294 = getelementptr i8, ptr %69, i32 %shl.i293
  %76 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i294) #9, !srcloc !137
  %77 = trunc i16 %76 to i8
  %78 = lshr i8 %77, 6
  %shl97 = shl nuw nsw i8 8, %78
  %fifo_size = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 17
  %79 = lshr exact i8 %shl97, 1
  %80 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %fifo_size, align 1
  %81 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %82)
  %cmp105 = icmp ult i32 %82, 64
  br i1 %cmp105, label %if.then107, label %if.then90.if.end108_crit_edge

if.then90.if.end108_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then107:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %b_hw = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 19
  %83 = ptrtoint ptr %b_hw to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load = load i8, ptr %b_hw, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %b_hw, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.then90.if.end108_crit_edge
  %set_mpu_wkup_lat109 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 7
  %84 = ptrtoint ptr %set_mpu_wkup_lat109 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_mpu_wkup_lat109, align 8
  %cmp110.not = icmp eq ptr %85, null
  br i1 %cmp110.not, label %if.end108.if.end120_crit_edge, label %if.then112

if.end108.if.end120_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %fifo_size, align 1
  %conv114 = zext i8 %87 to i32
  %mul = mul nuw nsw i32 %conv114, 1000000
  %speed115 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 8
  %88 = ptrtoint ptr %speed115 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %speed115, align 4
  %mul116 = mul i32 %89, 1000
  %div117279 = lshr exact i32 %mul116, 3
  %div118 = udiv i32 %mul, %div117279
  %latency = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 6
  %90 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %div118, ptr %latency, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then112, %if.end108.if.end120_crit_edge, %sw.epilog.if.end120_crit_edge
  %91 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %92)
  %cmp.i295 = icmp ugt i32 %92, 59
  br i1 %cmp.i295, label %if.then.i296, label %if.end120.if.end.i_crit_edge

if.end120.if.end.i_crit_edge:                     ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i296:                                     ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %westate.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 25
  %93 = ptrtoint ptr %westate.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 25455, ptr %westate.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i296, %if.end120.if.end.i_crit_edge
  %94 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags31, align 8
  %and.i = and i32 %95, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then1.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then1.i:                                       ; preds = %if.end.i
  %96 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call.i, align 8
  %call.i297 = call ptr @clk_get(ptr noundef %97, ptr noundef nonnull @.str.13) #9
  %cmp.i.i = icmp ugt ptr %call.i297, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end6.i

if.then3.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %call.i297 to i32
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.14, i32 noundef %98) #12
  br label %omap_i2c_init.exit

if.end6.i:                                        ; preds = %if.then1.i
  %call7.i = call i32 @clk_get_rate(ptr noundef %call.i297) #9
  call void @clk_put(ptr noundef %call.i297) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %call7.i)
  %cmp8.i = icmp ugt i32 %call7.i, 12000000
  br i1 %cmp8.i, label %if.then9.i, label %if.end6.i.if.end11.i_crit_edge

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.i = udiv i32 %call7.i, 12000000
  %conv.i298 = trunc i32 %div.i to i16
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %fclk_rate.0.i = phi i32 [ %call7.i, %if.then9.i ], [ %call7.i, %if.end6.i.if.end11.i_crit_edge ], [ 12000000, %if.end.i.if.end11.i_crit_edge ]
  %psc.0.i = phi i16 [ %conv.i298, %if.then9.i ], [ 0, %if.end6.i.if.end11.i_crit_edge ], [ 0, %if.end.i.if.end11.i_crit_edge ]
  %101 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags31, align 8
  %and13.i = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.else101.i

if.then15.i:                                      ; preds = %if.end11.i
  %speed.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 8
  %103 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 401, i32 %104)
  %cmp16.i = icmp ult i32 %104, 401
  %and19.i = and i32 %102, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %or.cond.i = select i1 %cmp16.i, i1 %tobool20.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %104)
  %cmp23.i = icmp ugt i32 %104, 100
  %..i = select i1 %cmp23.i, i32 9600, i32 4000
  %internal_clk.0.i = select i1 %or.cond.i, i32 %..i, i32 19200
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 8
  %call30.i = call ptr @clk_get(ptr noundef %106, ptr noundef nonnull @.str.13) #9
  %cmp.i3.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3.i, label %if.then32.i, label %if.end38.i

if.then32.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %call30.i to i32
  %108 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.14, i32 noundef %107) #12
  br label %omap_i2c_init.exit

if.end38.i:                                       ; preds = %if.then15.i
  %call39.i = call i32 @clk_get_rate(ptr noundef %call30.i) #9
  %div40.i = udiv i32 %call39.i, 1000
  call void @clk_put(ptr noundef %call30.i) #9
  %div41.i = udiv i32 %div40.i, %internal_clk.0.i
  %110 = trunc i32 %div41.i to i16
  %conv44.i = add nsw i16 %110, -1
  %111 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %112)
  %cmp46.i = icmp ugt i32 %112, 400
  br i1 %cmp46.i, label %if.then48.i, label %if.else66.i

if.then48.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  %div49.lhs.trunc.i = trunc i32 %internal_clk.0.i to i16
  %div494.i = udiv i16 %div49.lhs.trunc.i, 400
  %div49.zext.i = zext i16 %div494.i to i32
  %div505.i = udiv i16 %div49.lhs.trunc.i, 1200
  %div50.zext.i = zext i16 %div505.i to i32
  %sub51.i = sub nuw nsw i32 -7, %div50.zext.i
  %sub52.i = add nsw i32 %sub51.i, %div49.zext.i
  %sub55.i = add nsw i32 %div50.zext.i, -5
  %div58.i = udiv i32 %div40.i, %112
  %div59.lhs.trunc.i = trunc i32 %div58.i to i16
  %div596.i = udiv i16 %div59.lhs.trunc.i, 3
  %div59.zext.i = zext i16 %div596.i to i32
  %sub60.i = sub nsw i32 %div58.i, %div59.zext.i
  %sub61.i = shl nsw i32 %sub60.i, 8
  %phi.cast.i = add i32 %sub61.i, 16775424
  %phi.bo.i = and i32 %phi.cast.i, 16776960
  %sub64.i = shl nuw nsw i32 %div59.zext.i, 8
  %phi.cast1.i = add nuw nsw i32 %sub64.i, 16775936
  %phi.bo2.i = and i32 %phi.cast1.i, 16776960
  br label %if.end92.i

if.else66.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %112)
  %cmp68.i = icmp ugt i32 %112, 100
  %div73.lhs.trunc.i = trunc i32 %internal_clk.0.i to i16
  %div73.rhs.trunc.i = trunc i32 %112 to i16
  br i1 %cmp68.i, label %if.then70.i, label %if.else81.i

if.then70.i:                                      ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #11
  %div737.i = udiv i16 %div73.lhs.trunc.i, %div73.rhs.trunc.i
  %div73.zext.i = zext i16 %div737.i to i32
  %div74.lhs.trunc.i = trunc i16 %div737.i to i8
  %div748.i = udiv i8 %div74.lhs.trunc.i, 3
  %div74.zext.i = zext i8 %div748.i to i32
  %sub75.i = add nsw i32 %div73.zext.i, -7
  %sub76.i = sub nsw i32 %sub75.i, %div74.zext.i
  %sub79.i = add nsw i32 %div74.zext.i, -5
  br label %if.end92.i

if.else81.i:                                      ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #11
  %div83.rhs.trunc.i = shl nuw nsw i16 %div73.rhs.trunc.i, 1
  %div839.i = udiv i16 %div73.lhs.trunc.i, %div83.rhs.trunc.i
  %div83.zext.i = zext i16 %div839.i to i32
  %conv85.i = add nuw nsw i32 %div83.zext.i, 65529
  %conv90.i = add nuw nsw i32 %div83.zext.i, 65531
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else81.i, %if.then70.i, %if.then48.i
  %fsscll.0.i = phi i32 [ %sub52.i, %if.then48.i ], [ %sub76.i, %if.then70.i ], [ %conv85.i, %if.else81.i ]
  %fssclh.0.i = phi i32 [ %sub55.i, %if.then48.i ], [ %sub79.i, %if.then70.i ], [ %conv90.i, %if.else81.i ]
  %hsscll.0.i = phi i32 [ %phi.bo.i, %if.then48.i ], [ 0, %if.then70.i ], [ 0, %if.else81.i ]
  %hssclh.0.i = phi i32 [ %phi.bo2.i, %if.then48.i ], [ 0, %if.then70.i ], [ 0, %if.else81.i ]
  %or.i = or i32 %hsscll.0.i, %fsscll.0.i
  %conv95.i = trunc i32 %or.i to i16
  %or99.i = or i32 %hssclh.0.i, %fssclh.0.i
  %conv100.i = trunc i32 %or99.i to i16
  br label %if.end124.i

if.else101.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv102.i = zext i16 %psc.0.i to i32
  %113 = mul nuw nsw i32 %conv102.i, 1000
  %mul103.i = add nuw nsw i32 %113, 1000
  %div104.i = udiv i32 %fclk_rate.0.i, %mul103.i
  %114 = call i16 @llvm.umin.i16(i16 %psc.0.i, i16 2) #9
  %speed110.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 8
  %115 = ptrtoint ptr %speed110.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %speed110.i, align 4
  %mul111.i = shl i32 %116, 1
  %div112.i = udiv i32 %div104.i, %mul111.i
  %117 = trunc i32 %div112.i to i16
  %118 = add nuw nsw i16 %114, -7
  %conv116.i = add i16 %118, %117
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.else101.i, %if.end92.i
  %scll.0.i = phi i16 [ %conv116.i, %if.else101.i ], [ %conv95.i, %if.end92.i ]
  %sclh.0.i = phi i16 [ %conv116.i, %if.else101.i ], [ %conv100.i, %if.end92.i ]
  %psc.1.i = phi i16 [ %114, %if.else101.i ], [ %conv44.i, %if.end92.i ]
  %fifo_size.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 17
  %119 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %fifo_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool126.not.i = icmp eq i8 %120, 0
  %conv128.i = select i1 %tobool126.not.i, i16 31, i16 24607
  %iestate.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 20
  %121 = ptrtoint ptr %iestate.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv128.i, ptr %iestate.i, align 2
  %pscstate.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 21
  %122 = ptrtoint ptr %pscstate.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %psc.1.i, ptr %pscstate.i, align 4
  %scllstate.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 22
  %123 = ptrtoint ptr %scllstate.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %scll.0.i, ptr %scllstate.i, align 2
  %sclhstate.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 23
  %124 = ptrtoint ptr %sclhstate.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %sclh.0.i, ptr %sclhstate.i, align 8
  %125 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %126)
  %cmp130.i = icmp ult i32 %126, 61
  br i1 %cmp130.i, label %if.then132.i, label %if.end124.i.if.end133.i_crit_edge

if.end124.i.if.end133.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133.i

if.then132.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #11
  %bb_valid.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 19
  %127 = ptrtoint ptr %bb_valid.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load.i = load i8, ptr %bb_valid.i, align 8
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %bb_valid.i, align 8
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then132.i, %if.end124.i.if.end133.i_crit_edge
  call fastcc void @__omap_i2c_init(ptr noundef nonnull %call.i) #9
  br label %omap_i2c_init.exit

omap_i2c_init.exit:                               ; preds = %if.end133.i, %if.then32.i, %if.then3.i
  %128 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %129)
  %cmp123 = icmp ult i32 %129, 32
  %130 = ptrtoint ptr %irq30 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %irq30, align 8
  %132 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pdev, align 8
  br i1 %cmp123, label %if.then125, label %if.else129

if.then125:                                       ; preds = %omap_i2c_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i299 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %131, ptr noundef null, ptr noundef null, i32 noundef 16384, ptr noundef %133, ptr noundef nonnull %call.i) #9
  br label %if.end134

if.else129:                                       ; preds = %omap_i2c_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call133 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %131, ptr noundef nonnull @omap_i2c_isr, ptr noundef nonnull @omap_i2c_isr_thread, i32 noundef 24576, ptr noundef %133, ptr noundef nonnull %call.i) #9
  br label %if.end134

if.end134:                                        ; preds = %if.else129, %if.then125
  %r.0 = phi i32 [ %call.i299, %if.then125 ], [ %call133, %if.else129 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool135.not = icmp eq i32 %r.0, 0
  br i1 %tobool135.not, label %if.end139, label %do.end

do.end:                                           ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call.i, align 8
  %136 = ptrtoint ptr %irq30 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %irq30, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.2, i32 noundef %137) #12
  br label %err_unuse_clocks

if.end139:                                        ; preds = %if.end134
  %adapter = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 15
  %driver_data.i.i300 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 15, i32 9, i32 8
  %138 = ptrtoint ptr %driver_data.i.i300 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call.i, ptr %driver_data.i.i300, align 4
  %139 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 15, i32 1
  %140 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 256, ptr %class, align 4
  %name140 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 15, i32 12
  %call141 = call i32 @strlcpy(ptr noundef %name140, ptr noundef nonnull @.str.7, i32 noundef 48) #9
  %algo = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 15, i32 2
  %141 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @omap_i2c_algo, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 15, i32 17
  %142 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @omap_i2c_quirks, ptr %quirks, align 8
  %parent = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 15, i32 9, i32 1
  %143 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %dev, ptr %parent, align 8
  %144 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %of_node, align 8
  %of_node147 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 15, i32 9, i32 27
  %146 = ptrtoint ptr %of_node147 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %of_node147, align 8
  %bus_recovery_info = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 15, i32 16
  %147 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @omap_i2c_bus_recovery_info, ptr %bus_recovery_info, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %148 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 15, i32 11
  %150 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %nr, align 4
  %call148 = call i32 @i2c_add_numbered_adapter(ptr noundef %adapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %do.end154, label %if.end139.err_unuse_clocks_crit_edge

if.end139.err_unuse_clocks_crit_edge:             ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unuse_clocks

do.end154:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %call.i, align 8
  %153 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %nr, align 4
  %conv157 = zext i16 %major.0 to i32
  %conv158 = zext i16 %minor.0 to i32
  %speed159 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 8
  %155 = ptrtoint ptr %speed159 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %speed159, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %152, ptr noundef nonnull @.str.9, i32 noundef %154, i32 noundef %conv157, i32 noundef %conv158, i32 noundef %156) #12
  %157 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %call.i, align 8
  %call.i301 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %158, i32 0, i32 12, i32 22
  %159 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store volatile i64 %call.i301, ptr %last_busy.i, align 8
  %160 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call.i, align 8
  %call.i302 = call i32 @__pm_runtime_suspend(ptr noundef %161, i32 noundef 13) #9
  br label %cleanup

err_unuse_clocks:                                 ; preds = %if.end139.err_unuse_clocks_crit_edge, %do.end
  %r.1 = phi i32 [ %r.0, %do.end ], [ %call148, %if.end139.err_unuse_clocks_crit_edge ]
  %162 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base, align 4
  %regs.i304 = getelementptr inbounds %struct.omap_i2c_dev, ptr %call.i, i32 0, i32 13
  %164 = ptrtoint ptr %regs.i304 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i304, align 4
  %arrayidx.i305 = getelementptr i8, ptr %165, i32 10
  %166 = ptrtoint ptr %arrayidx.i305 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx.i305, align 1
  %conv.i306 = zext i8 %167 to i32
  %168 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %reg_shift, align 4
  %shl.i308 = shl i32 %conv.i306, %169
  %add.ptr.i309 = getelementptr i8, ptr %163, i32 %shl.i308
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i309, i16 0) #9, !srcloc !138
  %170 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %call.i, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %171, i1 noundef zeroext false) #9
  %172 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %call.i, align 8
  %call.i310 = call i32 @__pm_runtime_idle(ptr noundef %173, i32 noundef 4) #9
  br label %err_disable_pm

err_disable_pm:                                   ; preds = %err_unuse_clocks, %do.end11.i.i.i.i.i, %if.then.i.err_disable_pm_crit_edge
  %r.2 = phi i32 [ %r.1, %err_unuse_clocks ], [ %call.i280, %if.then.i.err_disable_pm_crit_edge ], [ %call.i280, %do.end11.i.i.i.i.i ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pm, %do.end154, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then10 ], [ %r.2, %err_disable_pm ], [ 0, %do.end154 ], [ %call2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_i2c_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 15
  tail call void @i2c_del_adapter(ptr noundef %adapter) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !135
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !136
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %6, i32 10
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %10
  %add.ptr.i = getelementptr i8, ptr %4, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !138
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #9
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_i2c_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %dev_id, i32 0, i32 13
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %dev_id, i32 0, i32 3
  %6 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %7
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !137
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %arrayidx.i7 = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i7, align 1
  %conv.i8 = zext i8 %14 to i32
  %15 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_shift.i, align 4
  %shl.i10 = shl i32 %conv.i8, %16
  %add.ptr.i11 = getelementptr i8, ptr %10, i32 %shl.i10
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i11) #9, !srcloc !137
  %18 = and i16 %17, %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_i2c_isr_thread(i32 noundef %this_irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_i2c_xfer_data(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp.not = icmp eq i32 %call, -11
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %call to i16
  %cmd_err.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %cmd_err.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmd_err.i, align 2
  %or4.i = or i16 %1, %conv
  store i16 %or4.i, ptr %cmd_err.i, align 2
  %cmd_complete.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %dev_id, i32 0, i32 4
  tail call void @complete(ptr noundef %cmd_complete.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__omap_i2c_init(ptr noundef readonly %omap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 13
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 10
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 3
  %6 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %7
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #9, !srcloc !138
  %pscstate = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 21
  %8 = ptrtoint ptr %pscstate to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pscstate, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %arrayidx.i19 = getelementptr i8, ptr %14, i32 13
  %15 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i19, align 1
  %conv.i20 = zext i8 %16 to i32
  %17 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_shift.i, align 4
  %shl.i22 = shl i32 %conv.i20, %18
  %add.ptr.i23 = getelementptr i8, ptr %12, i32 %shl.i22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23, i16 %10) #9, !srcloc !138
  %scllstate = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 22
  %19 = ptrtoint ptr %scllstate to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %scllstate, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %arrayidx.i26 = getelementptr i8, ptr %25, i32 14
  %26 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i26, align 1
  %conv.i27 = zext i8 %27 to i32
  %28 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg_shift.i, align 4
  %shl.i29 = shl i32 %conv.i27, %29
  %add.ptr.i30 = getelementptr i8, ptr %23, i32 %shl.i29
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i30, i16 %21) #9, !srcloc !138
  %sclhstate = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 23
  %30 = ptrtoint ptr %sclhstate to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sclhstate, align 8
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #9
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %arrayidx.i33 = getelementptr i8, ptr %36, i32 15
  %37 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i33, align 1
  %conv.i34 = zext i8 %38 to i32
  %39 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_shift.i, align 4
  %shl.i36 = shl i32 %conv.i34, %40
  %add.ptr.i37 = getelementptr i8, ptr %34, i32 %shl.i36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i37, i16 %32) #9, !srcloc !138
  %rev = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 18
  %41 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %42)
  %cmp = icmp ugt i32 %42, 59
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %westate = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 25
  %43 = ptrtoint ptr %westate to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %westate, align 4
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #9
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %arrayidx.i40 = getelementptr i8, ptr %49, i32 4
  %50 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i40, align 1
  %conv.i41 = zext i8 %51 to i32
  %52 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg_shift.i, align 4
  %shl.i43 = shl i32 %conv.i41, %53
  %add.ptr.i44 = getelementptr i8, ptr %47, i32 %shl.i43
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i44, i16 %45) #9, !srcloc !138
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %arrayidx.i47 = getelementptr i8, ptr %57, i32 10
  %58 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i47, align 1
  %conv.i48 = zext i8 %59 to i32
  %60 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reg_shift.i, align 4
  %shl.i50 = shl i32 %conv.i48, %61
  %add.ptr.i51 = getelementptr i8, ptr %55, i32 %shl.i50
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i51, i16 128) #9, !srcloc !138
  %iestate = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 20
  %62 = ptrtoint ptr %iestate to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %iestate, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not = icmp eq i16 %63, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #9
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %67 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i, align 4
  %arrayidx.i54 = getelementptr i8, ptr %68, i32 1
  %69 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i54, align 1
  %conv.i55 = zext i8 %70 to i32
  %71 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reg_shift.i, align 4
  %shl.i57 = shl i32 %conv.i55, %72
  %add.ptr.i58 = getelementptr i8, ptr %66, i32 %shl.i57
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i58, i16 %64) #9, !srcloc !138
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_i2c_xfer_data(ptr noundef %omap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 1
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 13
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 3
  %receiver = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 19
  %fifo_size = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 17
  %buf_len = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 14
  %errata = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 26
  %buf.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 12
  %flags.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 9
  %threshold = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %err.0 = phi i32 [ 0, %entry ], [ %err.2, %do.body.backedge ]
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.backedge ]
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %6 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %7
  %add.ptr.i = getelementptr i8, ptr %1, i32 %shl.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !137
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %arrayidx.i206 = getelementptr i8, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i206, align 1
  %conv.i207 = zext i8 %14 to i32
  %15 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_shift.i, align 4
  %shl.i209 = shl i32 %conv.i207, %16
  %add.ptr.i210 = getelementptr i8, ptr %10, i32 %shl.i209
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i210) #9, !srcloc !137
  %18 = and i16 %17, %8
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %receiver to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %receiver, align 8
  %21 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  %stat.0.v = select i1 %tobool.not, i16 -8201, i16 -16401
  %stat.0 = and i16 %stat.0.v, %19
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %stat.0)
  %tobool10.not = icmp eq i16 %stat.0, 0
  br i1 %tobool10.not, label %do.body.do.end142_crit_edge, label %do.body13

do.body.do.end142_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end142

do.body13:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_i2c_xfer_data.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_i2c_xfer_data, %do.end)) #9
          to label %if.then19 [label %do.end], !srcloc !139

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %omap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %omap, align 8
  %conv20 = zext i16 %stat.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_i2c_xfer_data.__UNIQUE_ID_ddebug295, ptr noundef %23, ptr noundef nonnull @.str.20, i32 noundef %conv20) #9
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body13
  %inc = add nuw nsw i32 %count.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %count.0)
  %cmp = icmp eq i32 %count.0, 100
  br i1 %cmp, label %do.end26, label %if.end28

do.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %omap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %omap, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.21) #12
  br label %do.end142

if.end28:                                         ; preds = %do.end
  %conv29 = zext i16 %stat.0 to i32
  %and30 = and i32 %conv29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end33_crit_edge, label %if.then32

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %err.0, 2
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %29, i32 2
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %31 to i32
  %32 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i = shl i32 %conv.i.i, %33
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %shl.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 512) #9, !srcloc !138
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28.if.end33_crit_edge
  %err.1 = phi i32 [ %or, %if.then32 ], [ %err.0, %if.end28.if.end33_crit_edge ]
  %and35 = and i32 %conv29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end43_crit_edge, label %do.end40

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %omap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %omap, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.24) #12
  %or42 = or i32 %err.1, 1
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i213 = getelementptr i8, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx.i.i213 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i213, align 1
  %conv.i.i214 = zext i8 %41 to i32
  %42 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i216 = shl i32 %conv.i.i214, %43
  %add.ptr.i.i217 = getelementptr i8, ptr %37, i32 %shl.i.i216
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i217, i16 256) #9, !srcloc !138
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.end33.if.end43_crit_edge
  %err.2 = phi i32 [ %or42, %do.end40 ], [ %err.1, %if.end33.if.end43_crit_edge ]
  %and45 = and i32 %conv29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end48_crit_edge, label %if.then47

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i220 = getelementptr i8, ptr %47, i32 2
  %48 = ptrtoint ptr %arrayidx.i.i220 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.i220, align 1
  %conv.i.i221 = zext i8 %49 to i32
  %50 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i223 = shl i32 %conv.i.i221, %51
  %add.ptr.i.i224 = getelementptr i8, ptr %45, i32 %shl.i.i223
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i224, i16 1024) #9, !srcloc !138
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end43.if.end48_crit_edge
  %and50 = and i32 %conv29, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i227 = getelementptr i8, ptr %55, i32 2
  %56 = ptrtoint ptr %arrayidx.i.i227 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i.i227, align 1
  %conv.i.i228 = zext i8 %57 to i32
  %58 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i230 = shl i32 %conv.i.i228, %59
  %add.ptr.i.i231 = getelementptr i8, ptr %53, i32 %shl.i.i230
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i231, i16 7264) #9, !srcloc !138
  br label %do.end142

if.end53:                                         ; preds = %if.end48
  %and55 = and i32 %conv29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end71, label %if.then57

if.then57:                                        ; preds = %if.end53
  %60 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %fifo_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool58.not = icmp eq i8 %61, 0
  br i1 %tobool58.not, label %if.then57.if.end61_crit_edge, label %if.then59

if.then57.if.end61_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then59:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf_len, align 8
  %conv60 = trunc i32 %63 to i8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then57.if.end61_crit_edge
  %num_bytes.0 = phi i8 [ %conv60, %if.then59 ], [ 1, %if.then57.if.end61_crit_edge ]
  %64 = ptrtoint ptr %errata to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %errata, align 2
  %66 = and i16 %65, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool64.not = icmp eq i16 %66, 0
  br i1 %tobool64.not, label %if.end61.if.end70_crit_edge, label %if.then65

if.end61.if.end70_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then65:                                        ; preds = %if.end61
  %67 = and i16 %stat.0, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i = icmp eq i16 %67, 0
  br i1 %tobool.not.i, label %if.then65.i2c_omap_errata_i207.exit_crit_edge, label %if.then.i

if.then65.i2c_omap_errata_i207.exit_crit_edge:    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_omap_errata_i207.exit

if.then.i:                                        ; preds = %if.then65
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %71, i32 2
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %73 to i32
  %74 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i.i = shl i32 %conv.i.i.i, %75
  %add.ptr.i.i.i = getelementptr i8, ptr %69, i32 %shl.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 32) #9, !srcloc !138
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %78 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i232 = getelementptr i8, ptr %79, i32 2
  %80 = ptrtoint ptr %arrayidx.i.i232 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i232, align 1
  %conv.i.i233 = zext i8 %81 to i32
  %82 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i234 = shl i32 %conv.i.i233, %83
  %add.ptr.i.i235 = getelementptr i8, ptr %77, i32 %shl.i.i234
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i235) #9, !srcloc !137
  %85 = and i16 %84, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool3.not.i = icmp eq i16 %85, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.i2c_omap_errata_i207.exit_crit_edge

if.then.i.i2c_omap_errata_i207.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_omap_errata_i207.exit

if.then4.i:                                       ; preds = %if.then.i
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %88 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i, align 4
  %arrayidx.i25.i = getelementptr i8, ptr %89, i32 2
  %90 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i25.i, align 1
  %conv.i26.i = zext i8 %91 to i32
  %92 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %reg_shift.i, align 4
  %shl.i28.i = shl i32 %conv.i26.i, %93
  %add.ptr.i29.i = getelementptr i8, ptr %87, i32 %shl.i28.i
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i29.i) #9, !srcloc !137
  %95 = and i16 %94, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool8.not.i = icmp eq i16 %95, 0
  br i1 %tobool8.not.i, label %if.then4.i.i2c_omap_errata_i207.exit_crit_edge, label %if.then9.i

if.then4.i.i2c_omap_errata_i207.exit_crit_edge:   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_omap_errata_i207.exit

if.then9.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 4
  %98 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i32.i = getelementptr i8, ptr %99, i32 2
  %100 = ptrtoint ptr %arrayidx.i.i32.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.i32.i, align 1
  %conv.i.i33.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i35.i = shl i32 %conv.i.i33.i, %103
  %add.ptr.i.i36.i = getelementptr i8, ptr %97, i32 %shl.i.i35.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i36.i, i16 32) #9, !srcloc !138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_omap_errata_i207.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_i2c_xfer_data, %i2c_omap_errata_i207.exit)) #9
          to label %if.then15.i [label %i2c_omap_errata_i207.exit], !srcloc !139

if.then15.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %omap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %omap, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_omap_errata_i207.__UNIQUE_ID_ddebug294, ptr noundef %105, ptr noundef nonnull @.str.33) #9
  br label %i2c_omap_errata_i207.exit

i2c_omap_errata_i207.exit:                        ; preds = %if.then15.i, %if.then9.i, %if.then4.i.i2c_omap_errata_i207.exit_crit_edge, %if.then.i.i2c_omap_errata_i207.exit_crit_edge, %if.then65.i2c_omap_errata_i207.exit_crit_edge
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 4
  %108 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i, align 4
  %arrayidx.i238 = getelementptr i8, ptr %109, i32 17
  %110 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i238, align 1
  %conv.i239 = zext i8 %111 to i32
  %112 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %reg_shift.i, align 4
  %shl.i241 = shl i32 %conv.i239, %113
  %add.ptr.i242 = getelementptr i8, ptr %107, i32 %shl.i241
  %114 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i242) #9, !srcloc !137
  %115 = trunc i16 %114 to i8
  %conv69 = and i8 %115, 63
  br label %if.end70

if.end70:                                         ; preds = %i2c_omap_errata_i207.exit, %if.end61.if.end70_crit_edge
  %num_bytes.1 = phi i8 [ %conv69, %i2c_omap_errata_i207.exit ], [ %num_bytes.0, %if.end61.if.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_bytes.1)
  %tobool.not3.i = icmp eq i8 %num_bytes.1, 0
  br i1 %tobool.not3.i, label %if.end70.omap_i2c_receive_data.exit_crit_edge, label %if.end70.while.body.i_crit_edge

if.end70.while.body.i_crit_edge:                  ; preds = %if.end70
  br label %while.body.i

if.end70.omap_i2c_receive_data.exit_crit_edge:    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_i2c_receive_data.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end70.while.body.i_crit_edge
  %dec4.in.i = phi i8 [ %dec4.i, %if.end.i.while.body.i_crit_edge ], [ %num_bytes.1, %if.end70.while.body.i_crit_edge ]
  %dec4.i = add i8 %dec4.in.i, -1
  %116 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i, align 4
  %118 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i246 = getelementptr i8, ptr %119, i32 8
  %120 = ptrtoint ptr %arrayidx.i.i246 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i.i246, align 1
  %conv.i.i247 = zext i8 %121 to i32
  %122 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i248 = shl i32 %conv.i.i247, %123
  %add.ptr.i.i249 = getelementptr i8, ptr %117, i32 %shl.i.i248
  %124 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i249) #9, !srcloc !137
  %125 = tail call i16 @llvm.bswap.i16(i16 %124) #9
  %conv.i250 = trunc i16 %125 to i8
  %126 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %buf.i, align 8
  %incdec.ptr.i = getelementptr i8, ptr %127, i32 1
  store ptr %incdec.ptr.i, ptr %buf.i, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv.i250, ptr %127, align 1
  %129 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %buf_len, align 8
  %dec1.i = add i32 %130, -1
  store i32 %dec1.i, ptr %buf_len, align 8
  %131 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %132, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i251

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i251:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %133 = lshr i16 %125, 8
  %conv4.i = trunc i16 %133 to i8
  %134 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %buf.i, align 8
  %incdec.ptr6.i = getelementptr i8, ptr %135, i32 1
  store ptr %incdec.ptr6.i, ptr %buf.i, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv4.i, ptr %135, align 1
  %137 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %buf_len, align 8
  %dec8.i = add i32 %138, -1
  store i32 %dec8.i, ptr %buf_len, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i251, %while.body.i.if.end.i_crit_edge
  %tobool.not.i252 = icmp eq i8 %dec4.i, 0
  br i1 %tobool.not.i252, label %if.end.i.omap_i2c_receive_data.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.omap_i2c_receive_data.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_i2c_receive_data.exit

omap_i2c_receive_data.exit:                       ; preds = %if.end.i.omap_i2c_receive_data.exit_crit_edge, %if.end70.omap_i2c_receive_data.exit_crit_edge
  %139 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i, align 4
  %141 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i255 = getelementptr i8, ptr %142, i32 2
  %143 = ptrtoint ptr %arrayidx.i.i255 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i.i255, align 1
  %conv.i.i256 = zext i8 %144 to i32
  %145 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i258 = shl i32 %conv.i.i256, %146
  %add.ptr.i.i259 = getelementptr i8, ptr %140, i32 %shl.i.i258
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i259, i16 32) #9, !srcloc !138
  br label %do.body.backedge

if.end71:                                         ; preds = %if.end53
  %and73 = and i32 %conv29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end81, label %if.then75

if.then75:                                        ; preds = %if.end71
  %147 = ptrtoint ptr %threshold to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %threshold, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool77.not = icmp eq i8 %148, 0
  %spec.select = select i1 %tobool77.not, i8 1, i8 %148
  br label %while.body.i278

while.body.i278:                                  ; preds = %if.end.i284.while.body.i278_crit_edge, %if.then75
  %dec4.in.i267 = phi i8 [ %spec.select, %if.then75 ], [ %dec4.i268, %if.end.i284.while.body.i278_crit_edge ]
  %dec4.i268 = add i8 %dec4.in.i267, -1
  %149 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i, align 4
  %151 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i269 = getelementptr i8, ptr %152, i32 8
  %153 = ptrtoint ptr %arrayidx.i.i269 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.i.i269, align 1
  %conv.i.i270 = zext i8 %154 to i32
  %155 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i271 = shl i32 %conv.i.i270, %156
  %add.ptr.i.i272 = getelementptr i8, ptr %150, i32 %shl.i.i271
  %157 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i272) #9, !srcloc !137
  %158 = tail call i16 @llvm.bswap.i16(i16 %157) #9
  %conv.i273 = trunc i16 %158 to i8
  %159 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %buf.i, align 8
  %incdec.ptr.i274 = getelementptr i8, ptr %160, i32 1
  store ptr %incdec.ptr.i274, ptr %buf.i, align 8
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv.i273, ptr %160, align 1
  %162 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %buf_len, align 8
  %dec1.i275 = add i32 %163, -1
  store i32 %dec1.i275, ptr %buf_len, align 8
  %164 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %flags.i, align 8
  %and.i276 = and i32 %165, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i276)
  %tobool2.not.i277 = icmp eq i32 %and.i276, 0
  br i1 %tobool2.not.i277, label %while.body.i278.if.end.i284_crit_edge, label %if.then.i282

while.body.i278.if.end.i284_crit_edge:            ; preds = %while.body.i278
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i284

if.then.i282:                                     ; preds = %while.body.i278
  call void @__sanitizer_cov_trace_pc() #11
  %166 = lshr i16 %158, 8
  %conv4.i279 = trunc i16 %166 to i8
  %167 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %buf.i, align 8
  %incdec.ptr6.i280 = getelementptr i8, ptr %168, i32 1
  store ptr %incdec.ptr6.i280, ptr %buf.i, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv4.i279, ptr %168, align 1
  %170 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %buf_len, align 8
  %dec8.i281 = add i32 %171, -1
  store i32 %dec8.i281, ptr %buf_len, align 8
  br label %if.end.i284

if.end.i284:                                      ; preds = %if.then.i282, %while.body.i278.if.end.i284_crit_edge
  %tobool.not.i283 = icmp eq i8 %dec4.i268, 0
  br i1 %tobool.not.i283, label %omap_i2c_receive_data.exit285, label %if.end.i284.while.body.i278_crit_edge

if.end.i284.while.body.i278_crit_edge:            ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i278

omap_i2c_receive_data.exit285:                    ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base.i, align 4
  %174 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i288 = getelementptr i8, ptr %175, i32 2
  %176 = ptrtoint ptr %arrayidx.i.i288 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.i.i288, align 1
  %conv.i.i289 = zext i8 %177 to i32
  %178 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i291 = shl i32 %conv.i.i289, %179
  %add.ptr.i.i292 = getelementptr i8, ptr %173, i32 %shl.i.i291
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i292, i16 2048) #9, !srcloc !138
  br label %do.body.backedge

if.end81:                                         ; preds = %if.end71
  %and83 = and i32 %conv29, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end99, label %if.then85

if.then85:                                        ; preds = %if.end81
  %180 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %fifo_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool88.not = icmp eq i8 %181, 0
  br i1 %tobool88.not, label %if.then85.if.end92_crit_edge, label %if.then89

if.then85.if.end92_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then89:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  %182 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %buf_len, align 8
  %conv91 = trunc i32 %183 to i8
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.then85.if.end92_crit_edge
  %num_bytes86.0 = phi i8 [ %conv91, %if.then89 ], [ 1, %if.then85.if.end92_crit_edge ]
  %call93 = tail call fastcc i32 @omap_i2c_transmit_data(ptr noundef %omap, i8 noundef zeroext %num_bytes86.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.end92.do.end142_crit_edge, label %cleanup

if.end92.do.end142_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end142

cleanup:                                          ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %base.i, align 4
  %186 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i295 = getelementptr i8, ptr %187, i32 2
  %188 = ptrtoint ptr %arrayidx.i.i295 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx.i.i295, align 1
  %conv.i.i296 = zext i8 %189 to i32
  %190 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i298 = shl i32 %conv.i.i296, %191
  %add.ptr.i.i299 = getelementptr i8, ptr %185, i32 %shl.i.i298
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i299, i16 64) #9, !srcloc !138
  br label %do.body.backedge

if.end99:                                         ; preds = %if.end81
  %and101 = and i32 %conv29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end119, label %if.then103

if.then103:                                       ; preds = %if.end99
  %192 = ptrtoint ptr %threshold to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %threshold, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool107.not = icmp eq i8 %193, 0
  %spec.select202 = select i1 %tobool107.not, i8 1, i8 %193
  %call111 = tail call fastcc i32 @omap_i2c_transmit_data(ptr noundef %omap, i8 noundef zeroext %spec.select202)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then103.do.end142_crit_edge, label %cleanup116

if.then103.do.end142_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end142

cleanup116:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  %194 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base.i, align 4
  %196 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i302 = getelementptr i8, ptr %197, i32 2
  %198 = ptrtoint ptr %arrayidx.i.i302 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx.i.i302, align 1
  %conv.i.i303 = zext i8 %199 to i32
  %200 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i305 = shl i32 %conv.i.i303, %201
  %add.ptr.i.i306 = getelementptr i8, ptr %195, i32 %shl.i.i305
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i306, i16 4096) #9, !srcloc !138
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.end129.do.body.backedge_crit_edge, %cleanup116, %cleanup, %omap_i2c_receive_data.exit285, %omap_i2c_receive_data.exit
  br label %do.body

if.end119:                                        ; preds = %if.end99
  %and121 = and i32 %conv29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end129, label %do.end126

do.end126:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %202 = ptrtoint ptr %omap to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %omap, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %203, ptr noundef nonnull @.str.27) #12
  %or128 = or i32 %err.2, 2048
  %204 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %base.i, align 4
  %206 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i309 = getelementptr i8, ptr %207, i32 2
  %208 = ptrtoint ptr %arrayidx.i.i309 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx.i.i309, align 1
  %conv.i.i310 = zext i8 %209 to i32
  %210 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i312 = shl i32 %conv.i.i310, %211
  %add.ptr.i.i313 = getelementptr i8, ptr %205, i32 %shl.i.i312
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i313, i16 8) #9, !srcloc !138
  br label %do.end142

if.end129:                                        ; preds = %if.end119
  %and131 = and i32 %conv29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end129.do.body.backedge_crit_edge, label %do.end136

if.end129.do.body.backedge_crit_edge:             ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.backedge

do.end136:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %212 = ptrtoint ptr %omap to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %omap, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.30) #12
  %or138 = or i32 %err.2, 1024
  %214 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base.i, align 4
  %216 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i316 = getelementptr i8, ptr %217, i32 2
  %218 = ptrtoint ptr %arrayidx.i.i316 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx.i.i316, align 1
  %conv.i.i317 = zext i8 %219 to i32
  %220 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i319 = shl i32 %conv.i.i317, %221
  %add.ptr.i.i320 = getelementptr i8, ptr %215, i32 %shl.i.i319
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i320, i16 4) #9, !srcloc !138
  br label %do.end142

do.end142:                                        ; preds = %do.end136, %do.end126, %if.then103.do.end142_crit_edge, %if.end92.do.end142_crit_edge, %if.then52, %do.end26, %do.body.do.end142_crit_edge
  %err.3 = phi i32 [ %err.0, %do.end26 ], [ %err.2, %if.then52 ], [ %or128, %do.end126 ], [ %or138, %do.end136 ], [ %err.2, %if.then103.do.end142_crit_edge ], [ %err.2, %if.end92.do.end142_crit_edge ], [ -11, %do.body.do.end142_crit_edge ]
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_i2c_transmit_data(ptr nocapture noundef %omap, i8 noundef zeroext %num_bytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_bytes)
  %tobool.not8 = icmp eq i8 %num_bytes, 0
  br i1 %tobool.not8, label %entry.cleanup18_crit_edge, label %while.body.lr.ph

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup18

while.body.lr.ph:                                 ; preds = %entry
  %buf = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 12
  %buf_len = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 14
  %flags = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 9
  %errata = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 26
  %base.i.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 1
  %regs.i.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 13
  %reg_shift.i.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %dec10.in = phi i8 [ %num_bytes, %while.body.lr.ph ], [ %dec10, %if.end17.while.body_crit_edge ]
  %dec10 = add i8 %dec10.in, -1
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 8
  %incdec.ptr = getelementptr i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %buf, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i16
  %4 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_len, align 8
  %dec1 = add i32 %5, -1
  store i32 %dec1, ptr %buf_len, align 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr4 = getelementptr i8, ptr %1, i32 2
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %incdec.ptr4, ptr %buf, align 8
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr, align 1
  %conv5 = zext i8 %10 to i16
  %shl = shl nuw i16 %conv5, 8
  %or = or i16 %shl, %conv
  %dec9 = add i32 %5, -2
  %11 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dec9, ptr %buf_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %w.0 = phi i16 [ %or, %if.then ], [ %conv, %while.body.if.end_crit_edge ]
  %12 = ptrtoint ptr %errata to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %errata, align 2
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool12.not = icmp eq i16 %14, 0
  br i1 %tobool12.not, label %if.end.if.end17_crit_edge, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  br label %do.body.i

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body.i:                                        ; preds = %do.end27.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %timeout.0.i = phi i32 [ %dec.i, %do.end27.i.do.body.i_crit_edge ], [ 10000, %if.end.do.body.i_crit_edge ]
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %18, i32 2
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i.i = shl i32 %conv.i.i, %22
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %shl.i.i
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !137
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #9
  %conv.i = zext i16 %24 to i32
  %and.i = and i32 %conv.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.if.end17_crit_edge

do.body.i.if.end17_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end.i:                                         ; preds = %do.body.i
  %and2.i = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.end27.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %27 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i.i.i = shl i32 %conv.i.i.i, %32
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %shl.i.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 4160) #9, !srcloc !138
  %and6.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then4.i.if.end11.i_crit_edge, label %if.then8.i

if.then4.i.if.end11.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_err.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 11
  %33 = ptrtoint ptr %cmd_err.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cmd_err.i, align 2
  %35 = or i16 %34, 2
  store i16 %35, ptr %cmd_err.i, align 2
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i56.i = getelementptr i8, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx.i.i56.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i56.i, align 1
  %conv.i.i57.i = zext i8 %41 to i32
  %42 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i.i59.i = shl i32 %conv.i.i57.i, %43
  %add.ptr.i.i60.i = getelementptr i8, ptr %37, i32 %shl.i.i59.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i60.i, i16 512) #9, !srcloc !138
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.then4.i.if.end11.i_crit_edge
  %and13.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.cleanup18_crit_edge, label %do.end.i

if.end11.i.cleanup18_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup18

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %omap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %omap, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.24) #12
  %cmd_err17.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 11
  %46 = ptrtoint ptr %cmd_err17.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cmd_err17.i, align 2
  %48 = or i16 %47, 1
  store i16 %48, ptr %cmd_err17.i, align 2
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i63.i = getelementptr i8, ptr %52, i32 2
  %53 = ptrtoint ptr %arrayidx.i.i63.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i63.i, align 1
  %conv.i.i64.i = zext i8 %54 to i32
  %55 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i.i66.i = shl i32 %conv.i.i64.i, %56
  %add.ptr.i.i67.i = getelementptr i8, ptr %50, i32 %shl.i.i66.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i67.i, i16 256) #9, !srcloc !138
  br label %cleanup18

do.end27.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !141
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool33.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool33.not.i, label %do.end39.i, label %do.end27.i.do.body.i_crit_edge

do.end27.i.do.body.i_crit_edge:                   ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end39.i:                                       ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %omap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %omap, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.36) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end39.i, %do.body.i.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %59 = tail call i16 @llvm.bswap.i16(i16 %w.0) #9
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %62 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %63, i32 8
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i, align 1
  %conv.i1 = zext i8 %65 to i32
  %66 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i = shl i32 %conv.i1, %67
  %add.ptr.i = getelementptr i8, ptr %61, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %59) #9, !srcloc !138
  %tobool.not = icmp eq i8 %dec10, 0
  br i1 %tobool.not, label %if.end17.cleanup18_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end17.cleanup18_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup18

cleanup18:                                        ; preds = %if.end17.cleanup18_crit_edge, %do.end.i, %if.end11.i.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.3 = phi i32 [ -5, %do.end.i ], [ -5, %if.end11.i.cleanup18_crit_edge ], [ 0, %entry.cleanup18_crit_edge ], [ 0, %if.end17.cleanup18_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_i2c_xfer_irq(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_i2c_xfer_common(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_i2c_xfer_polling(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @omap_i2c_xfer_common(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_i2c_func(ptr nocapture noundef readnone %adap) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251527181
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_i2c_xfer_common(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num, i1 noundef zeroext %polling) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %bb_valid.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %bb_valid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %bb_valid.i, align 8
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %6, 100
  %base.i.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 1
  %regs.i.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %reg_shift.i.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i52.i = getelementptr i8, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i52.i, align 1
  %conv.i53.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i54.i = shl i32 %conv.i53.i, %14
  %add.ptr.i55.i = getelementptr i8, ptr %8, i32 %shl.i54.i
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i55.i) #9, !srcloc !137
  %16 = and i16 %15, 17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool2.not56.i = icmp eq i16 %16, 0
  br i1 %tobool2.not56.i, label %if.end.i.if.end4.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end27.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %bus_free.058.i = phi i32 [ %bus_free.2.i, %if.end27.i.if.end4.i_crit_edge ], [ 0, %if.end.i.if.end4.i_crit_edge ]
  %bus_free_timeout.057.i = phi i32 [ %bus_free_timeout.2.i, %if.end27.i.if.end4.i_crit_edge ], [ 0, %if.end.i.if.end4.i_crit_edge ]
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i43.i = getelementptr i8, ptr %20, i32 16
  %21 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i43.i, align 1
  %conv.i44.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i46.i = shl i32 %conv.i44.i, %24
  %add.ptr.i47.i = getelementptr i8, ptr %18, i32 %shl.i46.i
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i47.i) #9, !srcloc !137
  %26 = and i16 %25, 16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 16385, i16 %26)
  %.not.i = icmp eq i16 %26, 16385
  br i1 %.not.i, label %if.then12.i, label %if.end4.i.if.end21.i_crit_edge

if.end4.i.if.end21.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then12.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bus_free.058.i)
  %tobool13.not.i = icmp eq i32 %bus_free.058.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.then12.i.if.end17.i_crit_edge

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add16.i = add i32 %27, 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.then12.i.if.end17.i_crit_edge
  %bus_free_timeout.1.i = phi i32 [ %bus_free_timeout.057.i, %if.then12.i.if.end17.i_crit_edge ], [ %add16.i, %if.then14.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %bus_free_timeout.1.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end17.i.while.end.i_crit_edge, label %if.end17.i.if.end21.i_crit_edge

if.end17.i.if.end21.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.end17.i.while.end.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end21.i:                                       ; preds = %if.end17.i.if.end21.i_crit_edge, %if.end4.i.if.end21.i_crit_edge
  %bus_free_timeout.2.i = phi i32 [ %bus_free_timeout.1.i, %if.end17.i.if.end21.i_crit_edge ], [ %bus_free_timeout.057.i, %if.end4.i.if.end21.i_crit_edge ]
  %bus_free.2.i = phi i32 [ 1, %if.end17.i.if.end21.i_crit_edge ], [ 0, %if.end4.i.if.end21.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub22.i = sub i32 %add.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22.i)
  %cmp23.i = icmp slt i32 %sub22.i, 0
  br i1 %cmp23.i, label %do.end.i, label %if.end27.i

do.end.i:                                         ; preds = %if.end21.i
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.38) #12
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %35, i32 16
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %37 to i32
  %38 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i.i.i = shl i32 %conv.i.i.i, %39
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 %shl.i.i.i
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #9, !srcloc !137
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #9
  %conv.i48.i = zext i16 %41 to i32
  %and.i.i = and i32 %conv.i48.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %42 = and i32 %conv.i48.i, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %42)
  %.not.i.i = icmp eq i32 %42, 320
  %brmerge.i.i = or i1 %.not.i.i, %tobool.not.i.i
  %.mux.i.i = select i1 %.not.i.i, i32 0, i32 -16
  br i1 %brmerge.i.i, label %do.end.i.omap_i2c_wait_for_bb_valid.exit_crit_edge, label %if.end8.i.i

do.end.i.omap_i2c_wait_for_bb_valid.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_i2c_wait_for_bb_valid.exit

if.end8.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %adapter.i.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 15
  %call9.i.i = tail call i32 @i2c_recover_bus(ptr noundef %adapter.i.i) #9
  br label %omap_i2c_wait_for_bb_valid.exit

if.end27.i:                                       ; preds = %if.end21.i
  tail call void @msleep(i32 noundef 1) #9
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %46, i32 2
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %48 to i32
  %49 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i.i = shl i32 %conv.i.i, %50
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %shl.i.i
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !137
  %52 = and i16 %51, 17
  %tobool2.not.i = icmp eq i16 %52, 0
  br i1 %tobool2.not.i, label %if.end27.i.if.end4.i_crit_edge, label %if.end27.i.while.end.i_crit_edge

if.end27.i.while.end.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end27.i.if.end4.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

while.end.i:                                      ; preds = %if.end27.i.while.end.i_crit_edge, %if.end17.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %53 = ptrtoint ptr %bb_valid.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load29.i = load i8, ptr %bb_valid.i, align 8
  %bf.set.i = or i8 %bf.load29.i, 64
  store i8 %bf.set.i, ptr %bb_valid.i, align 8
  br label %if.end5

omap_i2c_wait_for_bb_valid.exit:                  ; preds = %if.end8.i.i, %do.end.i.omap_i2c_wait_for_bb_valid.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i.i, %if.end8.i.i ], [ %.mux.i.i, %do.end.i.omap_i2c_wait_for_bb_valid.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp3 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp3, label %omap_i2c_wait_for_bb_valid.exit.out_crit_edge, label %omap_i2c_wait_for_bb_valid.exit.if.end5_crit_edge

omap_i2c_wait_for_bb_valid.exit.if.end5_crit_edge: ; preds = %omap_i2c_wait_for_bb_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

omap_i2c_wait_for_bb_valid.exit.out_crit_edge:    ; preds = %omap_i2c_wait_for_bb_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %omap_i2c_wait_for_bb_valid.exit.if.end5_crit_edge, %while.end.i, %if.end.if.end5_crit_edge
  %call6 = tail call fastcc i32 @omap_i2c_wait_for_bb(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %if.end5
  %set_mpu_wkup_lat = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %set_mpu_wkup_lat to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_mpu_wkup_lat, align 8
  %cmp10.not = icmp eq ptr %55, null
  br i1 %cmp10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  %latency = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 6
  %58 = ptrtoint ptr %latency to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %latency, align 4
  tail call void %55(ptr noundef %57, i32 noundef %59) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp1565 = icmp sgt i32 %num, 0
  br i1 %cmp1565, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %sub = add nsw i32 %num, -1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.cond.for.end.thread_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.066
  call void @__sanitizer_cov_trace_cmp4(i32 %i.066, i32 %sub)
  %cmp16 = icmp eq i32 %i.066, %sub
  %conv = zext i1 %cmp16 to i32
  %call17 = tail call fastcc i32 @omap_i2c_xfer_msg(ptr noundef %adap, ptr noundef %arrayidx, i32 noundef %conv, i1 noundef zeroext %polling)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %for.cond, label %for.body.for.end.thread70_crit_edge

for.body.for.end.thread70_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread70

for.end:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp22 = icmp eq i32 %call6, 0
  br i1 %cmp22, label %for.end.for.end.thread_crit_edge, label %for.end.for.end.thread70_crit_edge

for.end.for.end.thread70_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread70

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %for.cond.for.end.thread_crit_edge
  br label %for.end.thread70

for.end.thread70:                                 ; preds = %for.end.thread, %for.end.for.end.thread70_crit_edge, %for.body.for.end.thread70_crit_edge
  %60 = phi i32 [ %num, %for.end.thread ], [ %call6, %for.end.for.end.thread70_crit_edge ], [ %call17, %for.body.for.end.thread70_crit_edge ]
  %call26 = tail call fastcc i32 @omap_i2c_wait_for_bb(ptr noundef %1)
  %61 = ptrtoint ptr %set_mpu_wkup_lat to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_mpu_wkup_lat, align 8
  %cmp28.not = icmp eq ptr %62, null
  br i1 %cmp28.not, label %for.end.thread70.out_crit_edge, label %if.then30

for.end.thread70.out_crit_edge:                   ; preds = %for.end.thread70
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then30:                                        ; preds = %for.end.thread70
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 8
  tail call void %62(ptr noundef %64, i32 noundef -1) #9
  br label %out

out:                                              ; preds = %if.then30, %for.end.thread70.out_crit_edge, %if.end5.out_crit_edge, %omap_i2c_wait_for_bb_valid.exit.out_crit_edge, %entry.out_crit_edge
  %r.3 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %retval.0.i, %omap_i2c_wait_for_bb_valid.exit.out_crit_edge ], [ %call6, %if.end5.out_crit_edge ], [ %60, %if.then30 ], [ %60, %for.end.thread70.out_crit_edge ]
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %call.i61 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 12, i32 22
  %67 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store volatile i64 %call.i61, ptr %last_busy.i, align 8
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %call.i62 = tail call i32 @__pm_runtime_suspend(ptr noundef %69, i32 noundef 13) #9
  ret i32 %r.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_i2c_wait_for_bb(ptr noundef %omap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 1
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 13
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 3
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %arrayidx.i9 = getelementptr i8, ptr %4, i32 2
  %5 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i9, align 1
  %conv.i10 = zext i8 %6 to i32
  %7 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_shift.i, align 4
  %shl.i11 = shl i32 %conv.i10, %8
  %add.ptr.i12 = getelementptr i8, ptr %2, i32 %shl.i11
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i12) #9, !srcloc !137
  %10 = and i16 %9, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not13 = icmp eq i16 %10, 0
  br i1 %tobool.not13, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %15, i32 16
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i = shl i32 %conv.i.i, %19
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %shl.i.i
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !137
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #9
  %conv.i5 = zext i16 %21 to i32
  %and.i = and i32 %conv.i5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %22 = and i32 %conv.i5, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %22)
  %.not.i = icmp eq i32 %22, 320
  %brmerge.i = or i1 %.not.i, %tobool.not.i
  %.mux.i = select i1 %.not.i, i32 0, i32 -16
  br i1 %brmerge.i, label %if.then.cleanup_crit_edge, label %if.end8.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %adapter.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 15
  %call9.i = tail call i32 @i2c_recover_bus(ptr noundef %adapter.i) #9
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @msleep(i32 noundef 1) #9
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %26, i32 2
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %30
  %add.ptr.i = getelementptr i8, ptr %24, i32 %shl.i
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !137
  %32 = and i16 %31, 16
  %tobool.not = icmp eq i16 %32, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end8.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9.i, %if.end8.i ], [ %.mux.i, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_i2c_xfer_msg(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %stop, i1 noundef zeroext %polling) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_i2c_xfer_msg.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_i2c_xfer_msg, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msg, align 4
  %conv = zext i16 %5 to i32
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 4
  %conv6 = zext i16 %7 to i32
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %conv7 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_i2c_xfer_msg.__UNIQUE_ID_ddebug293, ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %stop) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags8, align 2
  %receiver = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 19
  %12 = trunc i16 %11 to i8
  %13 = ptrtoint ptr %receiver to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %receiver, align 8
  %14 = shl i8 %12, 5
  %bf.shl = and i8 %14, 32
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %receiver, align 8
  %len15 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.omap_i2c_resize_fifo.exit_crit_edge

do.end.omap_i2c_resize_fifo.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_i2c_resize_fifo.exit

if.end.i:                                         ; preds = %do.end
  %bf.clear19 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear19)
  %tobool20.not = icmp eq i8 %bf.clear19, 0
  %17 = ptrtoint ptr %len15 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len15, align 4
  %conv16 = trunc i16 %18 to i8
  %19 = tail call i8 @llvm.umax.i8(i8 %conv16, i8 1) #9
  %fifo_size.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fifo_size.i, align 1
  %22 = tail call i8 @llvm.umin.i8(i8 %19, i8 %21) #9
  %threshold.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 16
  %23 = ptrtoint ptr %threshold.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %threshold.i, align 8
  %base.i.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %27, i32 6
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %29 to i32
  %reg_shift.i.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i.i = shl i32 %conv.i.i, %31
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %shl.i.i
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #9, !srcloc !137
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #9
  br i1 %tobool20.not, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = and i16 %33, -32513
  %35 = ptrtoint ptr %threshold.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %threshold.i, align 8
  %conv24.i = zext i8 %36 to i16
  %sub.i = shl nuw i16 %conv24.i, 8
  %shl.i = add i16 %sub.i, -256
  %or.i = or i16 %34, %shl.i
  %or26.i = or i16 %or.i, 16384
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = and i16 %33, -128
  %38 = ptrtoint ptr %threshold.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %threshold.i, align 8
  %conv32.i = zext i8 %39 to i16
  %sub33.i = add nsw i16 %conv32.i, -1
  %or34.i = or i16 %37, %sub33.i
  %or36.i = or i16 %or34.i, 64
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i, %if.then19.i
  %buf.0.i = phi i16 [ %or26.i, %if.then19.i ], [ %or36.i, %if.else.i ]
  %40 = tail call i16 @llvm.bswap.i16(i16 %buf.0.i) #9
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 4
  %43 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i.i, align 4
  %arrayidx.i74.i = getelementptr i8, ptr %44, i32 6
  %45 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i74.i, align 1
  %conv.i75.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i77.i = shl i32 %conv.i75.i, %48
  %add.ptr.i78.i = getelementptr i8, ptr %42, i32 %shl.i77.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i78.i, i16 %40) #9, !srcloc !138
  %rev.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 18
  %49 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %50)
  %cmp39.i = icmp ult i32 %50, 64
  br i1 %cmp39.i, label %if.then41.i, label %if.end38.i.if.end42.i_crit_edge

if.end38.i.if.end42.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %receiver to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %receiver, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %receiver, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %if.end38.i.if.end42.i_crit_edge
  %set_mpu_wkup_lat.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %set_mpu_wkup_lat.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_mpu_wkup_lat.i, align 8
  %cmp43.not.i = icmp eq ptr %53, null
  br i1 %cmp43.not.i, label %if.end42.i.omap_i2c_resize_fifo.exit_crit_edge, label %if.then45.i

if.end42.i.omap_i2c_resize_fifo.exit_crit_edge:   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_i2c_resize_fifo.exit

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %threshold.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %threshold.i, align 8
  %conv47.i = zext i8 %55 to i32
  %mul.i = mul nuw nsw i32 %conv47.i, 1000000
  %speed.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %speed.i, align 4
  %mul48.i = mul i32 %57, 1000
  %div71.i = lshr exact i32 %mul48.i, 3
  %div49.i = udiv i32 %mul.i, %div71.i
  %latency.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 6
  %58 = ptrtoint ptr %latency.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div49.i, ptr %latency.i, align 4
  br label %omap_i2c_resize_fifo.exit

omap_i2c_resize_fifo.exit:                        ; preds = %if.then45.i, %if.end42.i.omap_i2c_resize_fifo.exit_crit_edge, %do.end.omap_i2c_resize_fifo.exit_crit_edge
  %59 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %msg, align 4
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #9
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %65, i32 12
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %67 to i32
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %reg_shift.i, align 4
  %shl.i244 = shl i32 %conv.i, %69
  %add.ptr.i = getelementptr i8, ptr %63, i32 %shl.i244
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %61) #9, !srcloc !138
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %70 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buf, align 4
  %buf22 = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 12
  %72 = ptrtoint ptr %buf22 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %buf22, align 8
  %73 = ptrtoint ptr %len15 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %len15, align 4
  %conv24 = zext i16 %74 to i32
  %buf_len = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 14
  %75 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv24, ptr %buf_len, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !142
  %76 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %buf_len, align 8
  %conv26 = trunc i32 %77 to i16
  %78 = tail call i16 @llvm.bswap.i16(i16 %conv26) #9
  %79 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i, align 4
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %arrayidx.i247 = getelementptr i8, ptr %82, i32 7
  %83 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i247, align 1
  %conv.i248 = zext i8 %84 to i32
  %85 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %reg_shift.i, align 4
  %shl.i250 = shl i32 %conv.i248, %86
  %add.ptr.i251 = getelementptr i8, ptr %80, i32 %shl.i250
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i251, i16 %78) #9, !srcloc !138
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 4
  %89 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i, align 4
  %arrayidx.i254 = getelementptr i8, ptr %90, i32 6
  %91 = ptrtoint ptr %arrayidx.i254 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i254, align 1
  %conv.i255 = zext i8 %92 to i32
  %93 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reg_shift.i, align 4
  %shl.i257 = shl i32 %conv.i255, %94
  %add.ptr.i258 = getelementptr i8, ptr %88, i32 %shl.i257
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i258) #9, !srcloc !137
  %96 = or i16 %95, 16448
  %97 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i, align 4
  %99 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i, align 4
  %arrayidx.i261 = getelementptr i8, ptr %100, i32 6
  %101 = ptrtoint ptr %arrayidx.i261 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i261, align 1
  %conv.i262 = zext i8 %102 to i32
  %103 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reg_shift.i, align 4
  %shl.i264 = shl i32 %conv.i262, %104
  %add.ptr.i265 = getelementptr i8, ptr %98, i32 %shl.i264
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i265, i16 %96) #9, !srcloc !138
  br i1 %polling, label %omap_i2c_resize_fifo.exit.if.end32_crit_edge, label %if.then31

omap_i2c_resize_fifo.exit.if.end32_crit_edge:     ; preds = %omap_i2c_resize_fifo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then31:                                        ; preds = %omap_i2c_resize_fifo.exit
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_complete = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 4
  %105 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %cmd_complete, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %omap_i2c_resize_fifo.exit.if.end32_crit_edge
  %cmd_err = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 11
  %106 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %cmd_err, align 2
  %speed = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 8
  %107 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %108)
  %cmp = icmp ugt i32 %108, 400
  %spec.select = select i1 %cmp, i16 -27647, i16 -31743
  %109 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %flags8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %110)
  %tobool42.not = icmp sgt i16 %110, -1
  %111 = shl i16 %110, 4
  %112 = and i16 %111, 256
  %113 = or i16 %112, %spec.select
  %114 = shl i16 %110, 9
  %115 = and i16 %114, 512
  %116 = or i16 %113, %115
  %117 = xor i16 %116, 512
  %118 = ptrtoint ptr %receiver to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load63 = load i8, ptr %receiver, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load63)
  %tobool66.not = icmp slt i8 %bf.load63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stop)
  %tobool67.not317 = icmp eq i32 %stop, 0
  %tobool67.not = and i1 %tobool67.not317, %tobool42.not
  %or.cond = select i1 %tobool66.not, i1 true, i1 %tobool67.not
  %119 = or i16 %117, 2
  %w.3 = select i1 %or.cond, i16 %117, i16 %119
  %120 = tail call i16 @llvm.bswap.i16(i16 %w.3) #9
  %121 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i, align 4
  %123 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs.i, align 4
  %arrayidx.i268 = getelementptr i8, ptr %124, i32 10
  %125 = ptrtoint ptr %arrayidx.i268 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i268, align 1
  %conv.i269 = zext i8 %126 to i32
  %127 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %reg_shift.i, align 4
  %shl.i271 = shl i32 %conv.i269, %128
  %add.ptr.i272 = getelementptr i8, ptr %122, i32 %shl.i271
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i272, i16 %120) #9, !srcloc !138
  %129 = ptrtoint ptr %receiver to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load74 = load i8, ptr %receiver, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load74)
  %tobool77.not = icmp sgt i8 %bf.load74, -1
  %or.cond241 = select i1 %tobool77.not, i1 true, i1 %tobool67.not
  br i1 %or.cond241, label %if.end32.if.end111_crit_edge, label %if.then80

if.end32.if.end111_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then80:                                        ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %130 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %130, 100
  %131 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base.i, align 4
  %133 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i, align 4
  %arrayidx.i275 = getelementptr i8, ptr %134, i32 10
  %135 = ptrtoint ptr %arrayidx.i275 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i275, align 1
  %conv.i276 = zext i8 %136 to i32
  %137 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %reg_shift.i, align 4
  %shl.i278 = shl i32 %conv.i276, %138
  %add.ptr.i279 = getelementptr i8, ptr %132, i32 %shl.i278
  %139 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i279) #9, !srcloc !137
  %140 = and i16 %139, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool85.not318 = icmp eq i16 %140, 0
  br i1 %tobool85.not318, label %if.then80.while.end_crit_edge, label %if.then80.while.body_crit_edge

if.then80.while.body_crit_edge:                   ; preds = %if.then80
  br label %while.body

if.then80.while.end_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %do.end99.while.body_crit_edge, %if.then80.while.body_crit_edge
  %141 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i, align 4
  %143 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs.i, align 4
  %arrayidx.i282 = getelementptr i8, ptr %144, i32 10
  %145 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.i282, align 1
  %conv.i283 = zext i8 %146 to i32
  %147 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %reg_shift.i, align 4
  %shl.i285 = shl i32 %conv.i283, %148
  %add.ptr.i286 = getelementptr i8, ptr %142, i32 %shl.i285
  %149 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i286) #9, !srcloc !137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %150 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp87 = icmp slt i32 %sub, 0
  br i1 %cmp87, label %do.end92, label %do.end99

do.end92:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.42) #12
  br label %cleanup177

do.end99:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !143
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !144
  %153 = and i16 %149, 256
  %tobool85.not = icmp eq i16 %153, 0
  br i1 %tobool85.not, label %do.end99.while.end_crit_edge, label %do.end99.while.body_crit_edge

do.end99.while.body_crit_edge:                    ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end99.while.end_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end99.while.end_crit_edge, %if.then80.while.end_crit_edge
  %154 = and i16 %119, -26878
  %155 = tail call i16 @llvm.bswap.i16(i16 %154) #9
  %156 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i, align 4
  %158 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs.i, align 4
  %arrayidx.i289 = getelementptr i8, ptr %159, i32 10
  %160 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.i289, align 1
  %conv.i290 = zext i8 %161 to i32
  %162 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %reg_shift.i, align 4
  %shl.i292 = shl i32 %conv.i290, %163
  %add.ptr.i293 = getelementptr i8, ptr %157, i32 %shl.i292
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i293, i16 %155) #9, !srcloc !138
  br label %if.end111

if.end111:                                        ; preds = %while.end, %if.end32.if.end111_crit_edge
  br i1 %polling, label %if.end111.do.body117_crit_edge, label %if.then113

if.end111.do.body117_crit_edge:                   ; preds = %if.end111
  br label %do.body117

if.then113:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_complete114 = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 4
  %call116 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete114, i32 noundef 100) #9
  br label %if.end126

do.body117:                                       ; preds = %omap_i2c_wait.exit.do.body117_crit_edge, %if.end111.do.body117_crit_edge
  %164 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base.i, align 4
  %166 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i296 = getelementptr i8, ptr %167, i32 1
  %168 = ptrtoint ptr %arrayidx.i.i296 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i.i296, align 1
  %conv.i.i297 = zext i8 %169 to i32
  %170 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i299 = shl i32 %conv.i.i297, %171
  %add.ptr.i.i300 = getelementptr i8, ptr %165, i32 %shl.i.i299
  %172 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i300) #9, !srcloc !137
  %173 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %base.i, align 4
  %175 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs.i, align 4
  %arrayidx.i9.i = getelementptr i8, ptr %176, i32 2
  %177 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx.i9.i, align 1
  %conv.i10.i = zext i8 %178 to i32
  %179 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %reg_shift.i, align 4
  %shl.i12.i = shl i32 %conv.i10.i, %180
  %add.ptr.i13.i = getelementptr i8, ptr %174, i32 %shl.i12.i
  %181 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i13.i) #9, !srcloc !137
  %182 = and i16 %181, %172
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %tobool.not.i301 = icmp eq i16 %182, 0
  br i1 %tobool.not.i301, label %do.body.i.1, label %do.body117.omap_i2c_wait.exit_crit_edge

do.body117.omap_i2c_wait.exit_crit_edge:          ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_i2c_wait.exit

do.body.i.1:                                      ; preds = %do.body117
  %183 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base.i, align 4
  %185 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs.i, align 4
  %arrayidx.i9.i.1 = getelementptr i8, ptr %186, i32 2
  %187 = ptrtoint ptr %arrayidx.i9.i.1 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx.i9.i.1, align 1
  %conv.i10.i.1 = zext i8 %188 to i32
  %189 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %reg_shift.i, align 4
  %shl.i12.i.1 = shl i32 %conv.i10.i.1, %190
  %add.ptr.i13.i.1 = getelementptr i8, ptr %184, i32 %shl.i12.i.1
  %191 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i13.i.1) #9, !srcloc !137
  %192 = and i16 %191, %172
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %192)
  %tobool.not.i301.1 = icmp eq i16 %192, 0
  br i1 %tobool.not.i301.1, label %do.body.i.2, label %do.body.i.1.omap_i2c_wait.exit_crit_edge

do.body.i.1.omap_i2c_wait.exit_crit_edge:         ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_i2c_wait.exit

do.body.i.2:                                      ; preds = %do.body.i.1
  %193 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %base.i, align 4
  %195 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regs.i, align 4
  %arrayidx.i9.i.2 = getelementptr i8, ptr %196, i32 2
  %197 = ptrtoint ptr %arrayidx.i9.i.2 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.i9.i.2, align 1
  %conv.i10.i.2 = zext i8 %198 to i32
  %199 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %reg_shift.i, align 4
  %shl.i12.i.2 = shl i32 %conv.i10.i.2, %200
  %add.ptr.i13.i.2 = getelementptr i8, ptr %194, i32 %shl.i12.i.2
  %201 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i13.i.2) #9, !srcloc !137
  %202 = and i16 %201, %172
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %202)
  %tobool.not.i301.2 = icmp eq i16 %202, 0
  br i1 %tobool.not.i301.2, label %do.body.i.3, label %do.body.i.2.omap_i2c_wait.exit_crit_edge

do.body.i.2.omap_i2c_wait.exit_crit_edge:         ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_i2c_wait.exit

do.body.i.3:                                      ; preds = %do.body.i.2
  %203 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %base.i, align 4
  %205 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs.i, align 4
  %arrayidx.i9.i.3 = getelementptr i8, ptr %206, i32 2
  %207 = ptrtoint ptr %arrayidx.i9.i.3 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx.i9.i.3, align 1
  %conv.i10.i.3 = zext i8 %208 to i32
  %209 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %reg_shift.i, align 4
  %shl.i12.i.3 = shl i32 %conv.i10.i.3, %210
  %add.ptr.i13.i.3 = getelementptr i8, ptr %204, i32 %shl.i12.i.3
  %211 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i13.i.3) #9, !srcloc !137
  %212 = and i16 %211, %172
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %tobool.not.i301.3 = icmp eq i16 %212, 0
  br i1 %tobool.not.i301.3, label %do.body.i.4, label %do.body.i.3.omap_i2c_wait.exit_crit_edge

do.body.i.3.omap_i2c_wait.exit_crit_edge:         ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_i2c_wait.exit

do.body.i.4:                                      ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #11
  %213 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %base.i, align 4
  %215 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regs.i, align 4
  %arrayidx.i9.i.4 = getelementptr i8, ptr %216, i32 2
  %217 = ptrtoint ptr %arrayidx.i9.i.4 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx.i9.i.4, align 1
  %conv.i10.i.4 = zext i8 %218 to i32
  %219 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %reg_shift.i, align 4
  %shl.i12.i.4 = shl i32 %conv.i10.i.4, %220
  %add.ptr.i13.i.4 = getelementptr i8, ptr %214, i32 %shl.i12.i.4
  %221 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i13.i.4) #9, !srcloc !137
  br label %omap_i2c_wait.exit

omap_i2c_wait.exit:                               ; preds = %do.body.i.4, %do.body.i.3.omap_i2c_wait.exit_crit_edge, %do.body.i.2.omap_i2c_wait.exit_crit_edge, %do.body.i.1.omap_i2c_wait.exit_crit_edge, %do.body117.omap_i2c_wait.exit_crit_edge
  %call118 = tail call fastcc i32 @omap_i2c_xfer_data(ptr noundef %1)
  %cmp120 = icmp eq i32 %call118, -11
  br i1 %cmp120, label %omap_i2c_wait.exit.do.body117_crit_edge, label %do.end122

omap_i2c_wait.exit.do.body117_crit_edge:          ; preds = %omap_i2c_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body117

do.end122:                                        ; preds = %omap_i2c_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool123.not = icmp eq i32 %call118, 0
  %lnot.ext125 = zext i1 %tobool123.not to i32
  br label %if.end126

if.end126:                                        ; preds = %do.end122, %if.then113
  %timeout.0 = phi i32 [ %lnot.ext125, %do.end122 ], [ %call116, %if.then113 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp127 = icmp eq i32 %timeout.0, 0
  br i1 %cmp127, label %do.end132, label %if.end135

do.end132:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %223, ptr noundef nonnull @.str.44) #12
  tail call fastcc void @omap_i2c_reset(ptr noundef %1)
  tail call fastcc void @__omap_i2c_init(ptr noundef %1)
  br label %cleanup177

if.end135:                                        ; preds = %if.end126
  %224 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %cmd_err, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %225)
  %tobool137.not = icmp eq i16 %225, 0
  br i1 %tobool137.not, label %if.end135.cleanup177_crit_edge, label %if.end147, !prof !145

if.end135.cleanup177_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup177

if.end147:                                        ; preds = %if.end135
  %conv149 = zext i16 %225 to i32
  %and150 = and i32 %conv149, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end154, label %if.then152

if.then152:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @omap_i2c_reset(ptr noundef %1)
  tail call fastcc void @__omap_i2c_init(ptr noundef %1)
  br label %cleanup177

if.end154:                                        ; preds = %if.end147
  %and157 = and i32 %conv149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %if.end160, label %if.end154.cleanup177_crit_edge

if.end154.cleanup177_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup177

if.end160:                                        ; preds = %if.end154
  %and163 = and i32 %conv149, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.end160.cleanup177_crit_edge, label %if.then165

if.end160.cleanup177_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup177

if.then165:                                       ; preds = %if.end160
  %226 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %flags8, align 2
  %228 = and i16 %227, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %tobool169.not = icmp eq i16 %228, 0
  br i1 %tobool169.not, label %if.end171, label %if.then165.cleanup177_crit_edge

if.then165.cleanup177_crit_edge:                  ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup177

if.end171:                                        ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #11
  %229 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %base.i, align 4
  %231 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs.i, align 4
  %arrayidx.i304 = getelementptr i8, ptr %232, i32 10
  %233 = ptrtoint ptr %arrayidx.i304 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx.i304, align 1
  %conv.i305 = zext i8 %234 to i32
  %235 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %reg_shift.i, align 4
  %shl.i307 = shl i32 %conv.i305, %236
  %add.ptr.i308 = getelementptr i8, ptr %230, i32 %shl.i307
  %237 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i308) #9, !srcloc !137
  %238 = or i16 %237, 512
  %239 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %base.i, align 4
  %241 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %regs.i, align 4
  %arrayidx.i311 = getelementptr i8, ptr %242, i32 10
  %243 = ptrtoint ptr %arrayidx.i311 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx.i311, align 1
  %conv.i312 = zext i8 %244 to i32
  %245 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %reg_shift.i, align 4
  %shl.i314 = shl i32 %conv.i312, %246
  %add.ptr.i315 = getelementptr i8, ptr %240, i32 %shl.i314
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i315, i16 %238) #9, !srcloc !138
  br label %cleanup177

cleanup177:                                       ; preds = %if.end171, %if.then165.cleanup177_crit_edge, %if.end160.cleanup177_crit_edge, %if.end154.cleanup177_crit_edge, %if.then152, %if.end135.cleanup177_crit_edge, %do.end132, %do.end92
  %retval.1 = phi i32 [ -110, %do.end132 ], [ -5, %if.then152 ], [ -121, %if.end171 ], [ -110, %do.end92 ], [ 0, %if.end135.cleanup177_crit_edge ], [ -11, %if.end154.cleanup177_crit_edge ], [ 0, %if.then165.cleanup177_crit_edge ], [ -5, %if.end160.cleanup177_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_i2c_reset(ptr noundef %omap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 18
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp ugt i32 %1, 31
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 13
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 9
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 3
  %8 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %9
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !137
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %arrayidx.i3 = getelementptr i8, ptr %14, i32 10
  %15 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i3, align 1
  %conv.i4 = zext i8 %16 to i32
  %17 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_shift.i, align 4
  %shl.i6 = shl i32 %conv.i4, %18
  %add.ptr.i7 = getelementptr i8, ptr %12, i32 %shl.i6
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i7) #9, !srcloc !137
  %20 = and i16 %19, -129
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %arrayidx.i10 = getelementptr i8, ptr %24, i32 10
  %25 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i10, align 1
  %conv.i11 = zext i8 %26 to i32
  %27 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_shift.i, align 4
  %shl.i13 = shl i32 %conv.i11, %28
  %add.ptr.i14 = getelementptr i8, ptr %22, i32 %shl.i13
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i14, i16 %20) #9, !srcloc !138
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %arrayidx.i17 = getelementptr i8, ptr %32, i32 9
  %33 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i17, align 1
  %conv.i18 = zext i8 %34 to i32
  %35 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_shift.i, align 4
  %shl.i20 = shl i32 %conv.i18, %36
  %add.ptr.i21 = getelementptr i8, ptr %30, i32 %shl.i20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21, i16 512) #9, !srcloc !138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %37, 100
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %arrayidx.i24 = getelementptr i8, ptr %41, i32 10
  %42 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i24, align 1
  %conv.i25 = zext i8 %43 to i32
  %44 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg_shift.i, align 4
  %shl.i27 = shl i32 %conv.i25, %45
  %add.ptr.i28 = getelementptr i8, ptr %39, i32 %shl.i27
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i28, i16 128) #9, !srcloc !138
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %arrayidx.i3143 = getelementptr i8, ptr %49, i32 5
  %50 = ptrtoint ptr %arrayidx.i3143 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i3143, align 1
  %conv.i3244 = zext i8 %51 to i32
  %52 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg_shift.i, align 4
  %shl.i3445 = shl i32 %conv.i3244, %53
  %add.ptr.i3546 = getelementptr i8, ptr %47, i32 %shl.i3445
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i3546) #9, !srcloc !137
  %55 = and i16 %54, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not47 = icmp eq i16 %55, 0
  br i1 %tobool.not47, label %if.then.while.body_crit_edge, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %if.then.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp7 = icmp slt i32 %sub, 0
  br i1 %cmp7, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %omap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %omap, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.46) #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @msleep(i32 noundef 1) #9
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %arrayidx.i31 = getelementptr i8, ptr %62, i32 5
  %63 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i31, align 1
  %conv.i32 = zext i8 %64 to i32
  %65 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg_shift.i, align 4
  %shl.i34 = shl i32 %conv.i32, %66
  %add.ptr.i35 = getelementptr i8, ptr %60, i32 %shl.i34
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i35) #9, !srcloc !137
  %68 = and i16 %67, 256
  %tobool.not = icmp eq i16 %68, 0
  br i1 %tobool.not, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then.while.end_crit_edge
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 4
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  %arrayidx.i38 = getelementptr i8, ptr %72, i32 9
  %73 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i38, align 1
  %conv.i39 = zext i8 %74 to i32
  %75 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reg_shift.i, align 4
  %shl.i41 = shl i32 %conv.i39, %76
  %add.ptr.i42 = getelementptr i8, ptr %70, i32 %shl.i41
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i42, i16 %10) #9, !srcloc !138
  %77 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %78)
  %cmp11 = icmp ugt i32 %78, 60
  br i1 %cmp11, label %if.then13, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %bb_valid = getelementptr inbounds %struct.omap_i2c_dev, ptr %omap, i32 0, i32 19
  %79 = ptrtoint ptr %bb_valid to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load = load i8, ptr %bb_valid, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %bb_valid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %while.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_i2c_get_scl(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 16
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %9
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !137
  %11 = shl i16 %10, 8
  %12 = and i16 %11, 256
  %and = zext i16 %12 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_i2c_set_scl(ptr nocapture noundef readonly %adap, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 16
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %9
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %11 = and i16 %10, -1025
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %masksel = select i1 %tobool.not, i16 0, i16 4
  %reg.0 = or i16 %12, %masksel
  %13 = tail call i16 @llvm.bswap.i16(i16 %reg.0) #9
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %arrayidx.i8 = getelementptr i8, ptr %17, i32 16
  %18 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i8, align 1
  %conv.i9 = zext i8 %19 to i32
  %20 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_shift.i, align 4
  %shl.i11 = shl i32 %conv.i9, %21
  %add.ptr.i12 = getelementptr i8, ptr %15, i32 %shl.i11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i12, i16 %13) #9, !srcloc !138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_i2c_get_sda(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 16
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %9
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !137
  %11 = lshr i16 %10, 8
  %12 = and i16 %11, 64
  %and = zext i16 %12 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_i2c_prepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 16
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %9
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !137
  %11 = or i16 %10, 1456
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %arrayidx.i13 = getelementptr i8, ptr %15, i32 16
  %16 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i13, align 1
  %conv.i14 = zext i8 %17 to i32
  %18 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_shift.i, align 4
  %shl.i16 = shl i32 %conv.i14, %19
  %add.ptr.i17 = getelementptr i8, ptr %13, i32 %shl.i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i17, i16 %11) #9, !srcloc !138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_i2c_unprepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 16
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %9
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !137
  %11 = and i16 %10, -1457
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %arrayidx.i13 = getelementptr i8, ptr %15, i32 16
  %16 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i13, align 1
  %conv.i14 = zext i8 %17 to i32
  %18 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_shift.i, align 4
  %shl.i16 = shl i32 %conv.i14, %19
  %add.ptr.i17 = getelementptr i8, ptr %13, i32 %shl.i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i17, i16 %11) #9, !srcloc !138
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_i2c_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %regs.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %reg_shift.i = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 %conv.i, %9
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !137
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  %iestate = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %iestate to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %iestate, align 2
  %scheme = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %scheme to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %scheme, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp = icmp eq i16 %14, 0
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i24 = getelementptr i8, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i24, align 1
  %conv.i25 = zext i8 %20 to i32
  %21 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_shift.i, align 4
  %shl.i27 = shl i32 %conv.i25, %22
  %add.ptr.i28 = getelementptr i8, ptr %16, i32 %shl.i27
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i28, i16 0) #9, !srcloc !138
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i31 = getelementptr i8, ptr %18, i32 22
  %23 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i31, align 1
  %conv.i32 = zext i8 %24 to i32
  %25 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_shift.i, align 4
  %shl.i34 = shl i32 %conv.i32, %26
  %add.ptr.i35 = getelementptr i8, ptr %16, i32 %shl.i34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i35, i16 -145) #9, !srcloc !138
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rev = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 18
  %27 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %28)
  %cmp3 = icmp ult i32 %28, 32
  br i1 %cmp3, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %arrayidx.i38 = getelementptr i8, ptr %32, i32 3
  %33 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i38, align 1
  %conv.i39 = zext i8 %34 to i32
  %35 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_shift.i, align 4
  %shl.i41 = shl i32 %conv.i39, %36
  %add.ptr.i42 = getelementptr i8, ptr %30, i32 %shl.i41
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i42) #9, !srcloc !137
  br label %if.end10

if.else7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %iestate to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %iestate, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #9
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %arrayidx.i45 = getelementptr i8, ptr %44, i32 2
  %45 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i45, align 1
  %conv.i46 = zext i8 %46 to i32
  %47 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg_shift.i, align 4
  %shl.i48 = shl i32 %conv.i46, %48
  %add.ptr.i49 = getelementptr i8, ptr %42, i32 %shl.i48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i49, i16 %40) #9, !srcloc !138
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %arrayidx.i52 = getelementptr i8, ptr %52, i32 2
  %53 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i52, align 1
  %conv.i53 = zext i8 %54 to i32
  %55 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg_shift.i, align 4
  %shl.i55 = shl i32 %conv.i53, %56
  %add.ptr.i56 = getelementptr i8, ptr %50, i32 %shl.i55
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i56) #9, !srcloc !137
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %if.then5
  %call11 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_i2c_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #9
  %regs = getelementptr inbounds %struct.omap_i2c_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__omap_i2c_init(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_i2c_omap__296_1602_omap_i2c_init_driver4, !1, !"__initcall__kmod_i2c_omap__296_1602_omap_i2c_init_driver4", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1602, i32 1}
!2 = !{ptr @__exitcall_omap_i2c_exit_driver, !3, !"__exitcall_omap_i2c_exit_driver", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1608, i32 1}
!4 = !{ptr @__UNIQUE_ID_author297, !5, !"__UNIQUE_ID_author297", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1610, i32 1}
!6 = !{ptr @__UNIQUE_ID_description298, !7, !"__UNIQUE_ID_description298", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1611, i32 1}
!8 = !{ptr @__UNIQUE_ID_file299, !9, !"__UNIQUE_ID_file299", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1612, i32 1}
!10 = !{ptr @__UNIQUE_ID_license300, !9, !"__UNIQUE_ID_license300", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias301, !12, !"__UNIQUE_ID_alias301", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1613, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1590, i32 11}
!15 = !{ptr @omap_i2c_driver, !16, !"omap_i2c_driver", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1586, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1386, i32 30}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1483, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @omap_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @omap_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1491, i32 22}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1504, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @omap_i2c_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @omap_i2c_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @init_completion.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/completion.h", i32 87, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @reg_map_ip_v1, !38, !"reg_map_ip_v1", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 216, i32 17}
!39 = !{ptr @reg_map_ip_v2, !40, !"reg_map_ip_v2", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 237, i32 17}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 374, i32 29}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 377, i32 4}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @omap_i2c_init._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @omap_i2c_init._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @omap_i2c_init._entry.16, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 416, i32 4}
!50 = !{ptr @omap_i2c_init._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1092, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @omap_i2c_xfer_data.__UNIQUE_ID_ddebug295, !52, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1094, i32 4}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @omap_i2c_xfer_data._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @omap_i2c_xfer_data._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1104, i32 4}
!63 = !{ptr @omap_i2c_xfer_data._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @omap_i2c_xfer_data._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1184, i32 4}
!67 = !{ptr @omap_i2c_xfer_data._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @omap_i2c_xfer_data._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1191, i32 4}
!71 = !{ptr @omap_i2c_xfer_data._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @omap_i2c_xfer_data._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 888, i32 5}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @i2c_omap_errata_i207.__UNIQUE_ID_ddebug294, !74, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 980, i32 5}
!79 = !{ptr @errata_omap3_i462._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @errata_omap3_i462._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 992, i32 3}
!83 = !{ptr @errata_omap3_i462._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @errata_omap3_i462._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @omap_i2c_algo, !86, !"omap_i2c_algo", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1214, i32 35}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 594, i32 4}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @omap_i2c_wait_for_bb_valid._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @omap_i2c_wait_for_bb_valid._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 667, i32 2}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @omap_i2c_xfer_msg.__UNIQUE_ID_ddebug293, !93, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 726, i32 5}
!98 = !{ptr @omap_i2c_xfer_msg._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @omap_i2c_xfer_msg._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 755, i32 3}
!102 = !{ptr @omap_i2c_xfer_msg._entry.43, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @omap_i2c_xfer_msg._entry_ptr.45, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 330, i32 5}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @omap_i2c_reset._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @omap_i2c_reset._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @omap_i2c_quirks, !110, !"omap_i2c_quirks", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1220, i32 40}
!111 = !{ptr @omap_i2c_bus_recovery_info, !112, !"omap_i2c_bus_recovery_info", i1 false, i1 false}
!112 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1344, i32 37}
!113 = !{ptr @omap_i2c_of_match, !114, !"omap_i2c_of_match", i1 false, i1 false}
!114 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1248, i32 34}
!115 = !{ptr @omap4_pdata, !116, !"omap4_pdata", i1 false, i1 false}
!116 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1244, i32 42}
!117 = !{ptr @omap3_pdata, !118, !"omap3_pdata", i1 false, i1 false}
!118 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1239, i32 42}
!119 = !{ptr @omap2430_pdata, !120, !"omap2430_pdata", i1 false, i1 false}
!120 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1233, i32 42}
!121 = !{ptr @omap2420_pdata, !122, !"omap2420_pdata", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1225, i32 42}
!123 = !{ptr @omap_i2c_pm_ops, !124, !"omap_i2c_pm_ops", i1 false, i1 false}
!124 = !{!"../drivers/i2c/busses/i2c-omap.c", i32 1579, i32 32}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 2148380502}
!135 = !{i64 866122, i64 866147, i64 866169, i64 866185, i64 866197, i64 866217, i64 866241, i64 866257, i64 866269}
!136 = !{i64 2148380690}
!137 = !{i64 6871481}
!138 = !{i64 6871281}
!139 = !{i64 2148994460, i64 2148994465, i64 2148994478, i64 2148994522, i64 2148994556, i64 2148994577}
!140 = !{i64 2155710289}
!141 = !{i64 2155710131}
!142 = !{i64 2155700392}
!143 = !{i64 2155703087}
!144 = !{i64 2155702929}
!145 = !{!"branch_weights", i32 2000, i32 1}
