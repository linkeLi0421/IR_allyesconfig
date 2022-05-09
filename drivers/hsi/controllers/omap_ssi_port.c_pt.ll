; ModuleID = '/llk/IR_all_yes/drivers/hsi/controllers/omap_ssi_port.c_pt.bc'
source_filename = "../drivers/hsi/controllers/omap_ssi_port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.omap_ssi_controller = type { ptr, ptr, ptr, ptr, i32, %struct.tasklet_struct, [8 x %struct.gdd_trn], %struct.spinlock, %struct.notifier_block, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.gdd_trn = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.omap_ssi_port = type { ptr, ptr, i32, i32, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, [8 x %struct.list_head], [8 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.delayed_work, i32, i32, ptr, i8, i32, i32, %struct.work_struct, i32, %struct.omap_ssm_ctx, %struct.omap_ssm_ctx, i32, i32, ptr }
%struct.omap_ssm_ctx = type { i32, i32, i32, %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hsi_controller = type { %struct.device, ptr, i32, i32, ptr }
%struct.hsi_port = type { %struct.device, %struct.hsi_config, %struct.hsi_config, i32, i8, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, %struct.blocking_notifier_head }
%struct.hsi_config = type { i32, ptr, i32, i32, i32, %union.anon.67 }
%union.anon.67 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hsi_msg = type { %struct.list_head, ptr, %struct.sg_table, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.hsi_client = type { %struct.device, %struct.hsi_config, %struct.hsi_config, ptr, i8, %struct.notifier_block }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap_ssi_port\00", [18 x i8] zeroinitializer }, align 32
@omap_ssi_port_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-ssi-port\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@omap_ssi_port_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_ssi_port_runtime_suspend, ptr @omap_ssi_port_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ssi_port_pdriver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ssi_port_probe, ptr @ssi_port_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_ssi_port_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_ssi_port_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ssi_calculate_div.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap_ssi\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ssi_calculate_div\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/hsi/controllers/omap_ssi_port.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"TX div %d for fck_rate %lu Khz speed %d Kb/s\0A\00", [50 x i8] zeroinitializer }, align 32
@ssi_port_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 1, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssi_port_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init ssi port...\0A\00", [46 x i8] zeroinitializer }, align 32
@ssi_port_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 1139, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ssi controller not initialized!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssi_port_probe._entry_ptr = internal global ptr @ssi_port_probe._entry, section ".printk_index", align 4
@ssi_port_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.3, i32 1150, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"port id out of range!\0A\00", [41 x i8] zeroinitializer }, align 32
@ssi_port_probe._entry_ptr.12 = internal global ptr @ssi_port_probe._entry.10, section ".printk_index", align 4
@ssi_port_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.3, i32 1158, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"missing device tree data\0A\00", [38 x i8] zeroinitializer }, align 32
@ssi_port_probe._entry_ptr.15 = internal global ptr @ssi_port_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,ssi-cawake\00", [18 x i8] zeroinitializer }, align 32
@ssi_port_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.3, i32 1166, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't get cawake gpio (err=%d)!\0A\00", [60 x i8] zeroinitializer }, align 32
@ssi_port_probe._entry_ptr.19 = internal global ptr @ssi_port_probe._entry.17, section ".printk_index", align 4
@ssi_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&omap_port->errqueue_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@ssi_port_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&omap_port->errqueue_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@ssi_port_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&omap_port->work)\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@ssi_port_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&omap_port->lock\00", [47 x i8] zeroinitializer }, align 32
@ssi_port_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&omap_port->wk_lock\00", [44 x i8] zeroinitializer }, align 32
@ssi_port_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.5, ptr @.str.3, i32 1229, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ssi port %u successfully initialized\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ssi_port_probe._entry_ptr.34 = internal global ptr @ssi_port_probe._entry.31, section ".printk_index", align 4
@ssi_async.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi_async\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"msg status %d ttype %d ch %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ssi_start_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 225, ptr @.str.39, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ssi_start_dma called without runtime PM!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi_start_dma\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ssi_start_dma._entry_ptr = internal global ptr @ssi_start_dma._entry, section ".printk_index", align 4
@ssi_start_dma.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.40, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA map SG failed !\0A\00", [43 x i8] zeroinitializer }, align 32
@ssi_start_dma.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.40, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ssi_start_dma.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.41, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"lch %d cdsp %08x ccr %04x s_addr %08x d_addr %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@ssi_start_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 297, ptr @.str.39, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ssi_start_pio called without runtime PM!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi_start_pio\00", [18 x i8] zeroinitializer }, align 32
@ssi_start_pio._entry_ptr = internal global ptr @ssi_start_pio._entry, section ".printk_index", align 4
@ssi_start_pio.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Single %s transfer\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@ssi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 473, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid TX speed %d Mb/s (div %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi_setup\00", [22 x i8] zeroinitializer }, align 32
@ssi_setup._entry_ptr = internal global ptr @ssi_setup._entry, section ".printk_index", align 4
@ssi_flush_queue.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssi_flush_queue\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"flush queue: ch %d, msg %p len %d type %d ctxt %p\0A\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ssi_start_tx.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssi_start_tx\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Wake out high %d\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ssi_stop_tx.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ssi_stop_tx\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Wake out low %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ssi_port_get_iomem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 1102, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IO memory region missing (%s)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssi_port_get_iomem\00", [45 x i8] zeroinitializer }, align 32
@ssi_port_get_iomem._entry_ptr = internal global ptr @ssi_port_get_iomem._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@ssi_port_get_iomem._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 1109, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s IO memory region request failed\0A\00", [60 x i8] zeroinitializer }, align 32
@ssi_port_get_iomem._entry_ptr.59 = internal global ptr @ssi_port_get_iomem._entry.57, section ".printk_index", align 4
@ssi_port_get_iomem._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.3, i32 1114, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s IO remap failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ssi_port_get_iomem._entry_ptr.62 = internal global ptr @ssi_port_get_iomem._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SSI PORT\00", [23 x i8] zeroinitializer }, align 32
@ssi_port_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 1048, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Request IRQ %d failed (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssi_port_irq\00", [19 x i8] zeroinitializer }, align 32
@ssi_port_irq._entry_ptr = internal global ptr @ssi_port_irq._entry, section ".printk_index", align 4
@ssi_pio_complete.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssi_pio_complete\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ch %d ttype %d 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@ssi_break_complete.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssi_break_complete\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HWBREAK received\0A\00", [46 x i8] zeroinitializer }, align 32
@ssi_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 818, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SSI error: 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi_error\00", [22 x i8] zeroinitializer }, align 32
@ssi_error._entry_ptr = internal global ptr @ssi_error._entry, section ".printk_index", align 4
@ssi_error.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"spurious SSI error ignored!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SSI cawake\00", [21 x i8] zeroinitializer }, align 32
@ssi_wake_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 1072, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Request Wake in IRQ %d failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssi_wake_irq\00", [19 x i8] zeroinitializer }, align 32
@ssi_wake_irq._entry_ptr = internal global ptr @ssi_wake_irq._entry, section ".printk_index", align 4
@ssi_wake_irq._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.3, i32 1076, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Enable wake on the wakeline in irq %d failed %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ssi_wake_irq._entry_ptr.78 = internal global ptr @ssi_wake_irq._entry.76, section ".printk_index", align 4
@ssi_wake_thread.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssi_wake_thread\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Wake in high\0A\00", [18 x i8] zeroinitializer }, align 32
@ssi_wake_thread.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str.3, ptr @.str.81, i8 0, i8 -1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Wake in low\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@ssi_port_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ssi_port_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sst\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"divisor\00", [24 x i8] zeroinitializer }, align 32
@ssi_sst_div_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ssi_sst_div_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAWAKE\09\09: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WAKE\09\09: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MPU_ENABLE_IRQ%d\09: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MPU_STATUS_IRQ%d\09: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0ASST\0A===\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ID SST\09\09: 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MODE\09\09: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FRAMESIZE\09: 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DIVISOR\09\09: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CHANNELS\09: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ARBMODE\09\09: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TXSTATE\09\09: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BUFSTATE\09: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BREAK\09\09: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BUFFER_CH%d\09: 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0ASSR\0A===\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ID SSR\09\09: 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TIMEOUT\09\09: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RXSTATE\09\09: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ERROR\09\09: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ERRORACK\09: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@omap_ssi_port_runtime_suspend.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.107, ptr @.str.3, ptr @.str.108, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap_ssi_port_runtime_suspend\00", [34 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"port runtime suspend!\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_ssi_port_runtime_resume.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.109, ptr @.str.3, ptr @.str.110, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"omap_ssi_port_runtime_resume\00", [35 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port runtime resume!\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1402, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [23 x i8] c"omap_ssi_port_of_match\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1389, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"omap_ssi_port_pm_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1377, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"ssi_port_pdriver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1398, i32 24 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 427, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1136, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1139, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1150, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1158, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1163, i32 41 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1166, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1179, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1180, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1194, i32 31 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1198, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1211, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1212, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1229, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 412, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 225, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 234, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 265, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 297, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 309, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 472, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 444, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 602, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 623, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1102, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1108, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1114, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1045, i32 35 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1047, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 921, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 872, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 818, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 820, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1069, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1071, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1075, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1013, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1020, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 163, i32 22 }
@___asan_gen_.375 = private unnamed_addr constant [19 x i8] c"ssi_port_regs_fops\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 122, i32 1 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 164, i32 27 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 167, i32 29 }
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"ssi_sst_div_fops\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 58, i32 17 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 59, i32 16 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 61, i32 16 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 63, i32 16 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 67, i32 14 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 68, i32 16 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 70, i32 16 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 72, i32 16 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 74, i32 16 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 76, i32 16 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 78, i32 16 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 80, i32 16 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 82, i32 16 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 84, i32 16 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 87, i32 17 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 92, i32 14 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 93, i32 16 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 101, i32 16 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 103, i32 16 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 109, i32 16 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 111, i32 16 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 152, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1344, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.463 = private constant [43 x i8] c"../drivers/hsi/controllers/omap_ssi_port.c\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1362, i32 2 }
@llvm.compiler.used = appending global [133 x ptr] [ptr @ssi_error._entry, ptr @ssi_error._entry_ptr, ptr @ssi_port_get_iomem._entry, ptr @ssi_port_get_iomem._entry.57, ptr @ssi_port_get_iomem._entry.60, ptr @ssi_port_get_iomem._entry_ptr, ptr @ssi_port_get_iomem._entry_ptr.59, ptr @ssi_port_get_iomem._entry_ptr.62, ptr @ssi_port_irq._entry, ptr @ssi_port_irq._entry_ptr, ptr @ssi_port_probe._entry, ptr @ssi_port_probe._entry.10, ptr @ssi_port_probe._entry.13, ptr @ssi_port_probe._entry.17, ptr @ssi_port_probe._entry.31, ptr @ssi_port_probe._entry_ptr, ptr @ssi_port_probe._entry_ptr.12, ptr @ssi_port_probe._entry_ptr.15, ptr @ssi_port_probe._entry_ptr.19, ptr @ssi_port_probe._entry_ptr.34, ptr @ssi_setup._entry, ptr @ssi_setup._entry_ptr, ptr @ssi_start_dma._entry, ptr @ssi_start_dma._entry_ptr, ptr @ssi_start_pio._entry, ptr @ssi_start_pio._entry_ptr, ptr @ssi_wake_irq._entry, ptr @ssi_wake_irq._entry.76, ptr @ssi_wake_irq._entry_ptr, ptr @ssi_wake_irq._entry_ptr.78, ptr @.str, ptr @omap_ssi_port_of_match, ptr @omap_ssi_port_pm_ops, ptr @ssi_port_pdriver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @ssi_port_probe.__key, ptr @.str.20, ptr @ssi_port_probe.__key.21, ptr @.str.22, ptr @ssi_port_probe.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ssi_port_probe.__key.27, ptr @.str.28, ptr @ssi_port_probe.__key.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @ssi_port_regs_fops, ptr @.str.83, ptr @.str.84, ptr @ssi_sst_div_fops, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_ssi_port_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_ssi_port_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_pdriver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_start_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_start_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_get_iomem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_get_iomem._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_get_iomem._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_wake_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_wake_irq._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_port_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_sst_div_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_ssi_port_update_fclk(ptr noundef %ssi, ptr nocapture noundef %omap_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %ssi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fck_rate.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %fck_rate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fck_rate.i, align 4
  %shr.i = lshr i32 %3, 1
  %dec.i = add nsw i32 %shr.i, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_calculate_div.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_ssi_port_update_fclk, %if.then.i)) #5
          to label %ssi_calculate_div.exit [label %if.then.i], !srcloc !230

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %max_speed.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed.i, align 4
  %div.i = udiv i32 %dec.i, %5
  %6 = ptrtoint ptr %fck_rate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fck_rate.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_calculate_div.__UNIQUE_ID_ddebug240, ptr noundef %ssi, ptr noundef nonnull @.str.4, i32 noundef %div.i, i32 noundef %7, i32 noundef %5) #5
  br label %ssi_calculate_div.exit

ssi_calculate_div.exit:                           ; preds = %if.then.i, %entry
  %max_speed6.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %max_speed6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_speed6.i, align 4
  %div7.i = udiv i32 %dec.i, %9
  %divisor = getelementptr inbounds %struct.omap_ssi_port, ptr %omap_port, i32 0, i32 22, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div7.i, ptr %divisor, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %div7.i) #5
  %sst_base.i = getelementptr inbounds %struct.omap_ssi_port, ptr %omap_port, i32 0, i32 4
  %12 = ptrtoint ptr %sst_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sst_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #5, !srcloc !231
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_port_probe(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_port_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_port_probe, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !230

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_port_probe.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.6) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port7 = getelementptr inbounds %struct.hsi_controller, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %port7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port7, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %do.end.do.end14_crit_edge, label %lor.lhs.false

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

lor.lhs.false:                                    ; preds = %do.end
  %port9 = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 14
  %10 = ptrtoint ptr %port9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port9, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %lor.lhs.false.do.end14_crit_edge, label %for.cond.preheader

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

for.cond.preheader:                               ; preds = %lor.lhs.false
  %num_ports = getelementptr inbounds %struct.hsi_controller, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp234.not = icmp eq i32 %13, 0
  br i1 %cmp234.not, label %for.cond.preheader.do.end24_crit_edge, label %for.cond.preheader.land.rhs_crit_edge

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

for.cond.preheader.do.end24_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

do.end14:                                         ; preds = %lor.lhs.false.do.end14_crit_edge, %do.end.do.end14_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %port_id.0235 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %11, i32 %port_id.0235
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %if.end26, label %for.inc

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw i32 %port_id.0235, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.inc.do.end24_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.inc.do.end24_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

do.end24:                                         ; preds = %for.inc.do.end24_crit_edge, %for.cond.preheader.do.end24_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end26:                                         ; preds = %land.rhs
  %arrayidx28 = getelementptr ptr, ptr %9, i32 %port_id.0235
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %1, null
  br i1 %tobool29.not, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  %call37 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef 1) #5
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %18) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef 484, i32 noundef 3520) #5
  %tobool47.not = icmp eq ptr %call.i, null
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %if.end49

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %wake_gpio = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 16
  %19 = ptrtoint ptr %wake_gpio to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call37, ptr %wake_gpio, align 4
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %pdev, align 4
  %port_id51 = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 25
  %21 = ptrtoint ptr %port_id51 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %port_id.0235, ptr %port_id51, align 4
  %errqueue_work = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %errqueue_work, i32 noundef 0) #5
  %22 = ptrtoint ptr %errqueue_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %errqueue_work, align 4
  %lockdep_map = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.20, ptr noundef nonnull @ssi_port_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry60 = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %23 = ptrtoint ptr %entry60 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry60, ptr %entry60, align 4
  %prev.i = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry60, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 13, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ssi_process_errqueue, ptr %func, align 4
  %timer = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.22, ptr noundef nonnull @ssi_port_probe.__key.21) #5
  %work72 = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 20
  tail call void @__init_work(ptr noundef %work72, i32 noundef 0) #5
  %26 = ptrtoint ptr %work72 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %work72, align 4
  %lockdep_map78 = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map78, ptr noundef nonnull @.str.24, ptr noundef nonnull @ssi_port_probe.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry80 = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 20, i32 1
  %27 = ptrtoint ptr %entry80 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry80, ptr %entry80, align 4
  %prev.i210 = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 20, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry80, ptr %prev.i210, align 4
  %func82 = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 20, i32 2
  %29 = ptrtoint ptr %func82 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @start_tx_work, ptr %func82, align 4
  %async = getelementptr inbounds %struct.hsi_port, ptr %17, i32 0, i32 7
  %30 = ptrtoint ptr %async to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ssi_async, ptr %async, align 8
  %setup = getelementptr inbounds %struct.hsi_port, ptr %17, i32 0, i32 8
  %31 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ssi_setup, ptr %setup, align 4
  %flush = getelementptr inbounds %struct.hsi_port, ptr %17, i32 0, i32 9
  %32 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ssi_flush, ptr %flush, align 8
  %start_tx = getelementptr inbounds %struct.hsi_port, ptr %17, i32 0, i32 10
  %33 = ptrtoint ptr %start_tx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ssi_start_tx, ptr %start_tx, align 4
  %stop_tx = getelementptr inbounds %struct.hsi_port, ptr %17, i32 0, i32 11
  %34 = ptrtoint ptr %stop_tx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ssi_stop_tx, ptr %stop_tx, align 8
  %release = getelementptr inbounds %struct.hsi_port, ptr %17, i32 0, i32 12
  %35 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ssi_release, ptr %release, align 4
  %driver_data.i.i211 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i211 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i211, align 4
  %37 = ptrtoint ptr %port9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port9, align 4
  %arrayidx86 = getelementptr ptr, ptr %38, i32 %port_id.0235
  %39 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %arrayidx86, align 4
  %driver_data.i.i212 = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %driver_data.i.i212 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %17, ptr %driver_data.i.i212, align 4
  %sst_base = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 4
  %sst_dma = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 2
  %call87 = tail call fastcc i32 @ssi_port_get_iomem(ptr noundef %pd, ptr noundef nonnull @.str.25, ptr noundef %sst_base, ptr noundef %sst_dma)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.end49.cleanup_crit_edge, label %if.end90

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end90:                                         ; preds = %if.end49
  %ssr_base = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 5
  %ssr_dma = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 3
  %call91 = tail call fastcc i32 @ssi_port_get_iomem(ptr noundef %pd, ptr noundef nonnull @.str.26, ptr noundef %ssr_base, ptr noundef %ssr_dma)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.end90.cleanup_crit_edge, label %if.end94

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end94:                                         ; preds = %if.end90
  %41 = ptrtoint ptr %driver_data.i.i211 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i.i211, align 4
  %call1.i = tail call i32 @platform_get_irq(ptr noundef %pd, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i213 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i213, label %if.end94.cleanup_crit_edge, label %if.end.i

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end94
  %irq.i = getelementptr inbounds %struct.omap_ssi_port, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call1.i, ptr %irq.i, align 4
  %call3.i = tail call i32 @devm_request_threaded_irq(ptr noundef %17, i32 noundef %call1.i, ptr noundef null, ptr noundef nonnull @ssi_pio_thread, i32 noundef 8192, ptr noundef nonnull @.str.63, ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end98

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.64, i32 noundef %45, i32 noundef %call3.i) #8
  br label %cleanup

if.end98:                                         ; preds = %if.end.i
  %46 = ptrtoint ptr %driver_data.i.i211 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i211, align 4
  %wake_gpio.i = getelementptr inbounds %struct.omap_ssi_port, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %wake_gpio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wake_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i217

if.then.i:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  %wake_irq.i = getelementptr inbounds %struct.omap_ssi_port, ptr %47, i32 0, i32 15
  %50 = ptrtoint ptr %wake_irq.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %wake_irq.i, align 4
  br label %if.end102

if.end.i217:                                      ; preds = %if.end98
  %call2.i = tail call i32 @gpiod_to_irq(ptr noundef nonnull %49) #5
  %wake_irq3.i = getelementptr inbounds %struct.omap_ssi_port, ptr %47, i32 0, i32 15
  %51 = ptrtoint ptr %wake_irq3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call2.i, ptr %wake_irq3.i, align 4
  %call4.i = tail call i32 @devm_request_threaded_irq(ptr noundef %17, i32 noundef %call2.i, ptr noundef null, ptr noundef nonnull @ssi_wake_thread, i32 noundef 8195, ptr noundef nonnull @.str.73, ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i216 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i216, label %do.end.i218, label %if.end.i217.if.end7.i_crit_edge

if.end.i217.if.end7.i_crit_edge:                  ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

do.end.i218:                                      ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.74, i32 noundef %call2.i, i32 noundef %call4.i) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i218, %if.end.i217.if.end7.i_crit_edge
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %call2.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp9.i, label %ssi_wake_irq.exit, label %if.end7.i.if.end102_crit_edge

if.end7.i.if.end102_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

ssi_wake_irq.exit:                                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.77, i32 noundef %call2.i, i32 noundef %call.i.i) #8
  br label %cleanup

if.end102:                                        ; preds = %if.end7.i.if.end102_crit_edge, %if.then.i
  %arrayidx.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 0
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %arrayidx1.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 0
  %54 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %arrayidx1.i, ptr %arrayidx1.i, align 4
  %prev.i7.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx1.i, ptr %prev.i7.i, align 4
  %arrayidx.1.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 1
  %56 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %arrayidx.1.i, ptr %arrayidx.1.i, align 4
  %prev.i.1.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i.1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx.1.i, ptr %prev.i.1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 1
  %58 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %arrayidx1.1.i, ptr %arrayidx1.1.i, align 4
  %prev.i7.1.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i7.1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx1.1.i, ptr %prev.i7.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 2
  %60 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %arrayidx.2.i, ptr %arrayidx.2.i, align 4
  %prev.i.2.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 2, i32 1
  %61 = ptrtoint ptr %prev.i.2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx.2.i, ptr %prev.i.2.i, align 4
  %arrayidx1.2.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 2
  %62 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %arrayidx1.2.i, ptr %arrayidx1.2.i, align 4
  %prev.i7.2.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 2, i32 1
  %63 = ptrtoint ptr %prev.i7.2.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx1.2.i, ptr %prev.i7.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 3
  %64 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %arrayidx.3.i, ptr %arrayidx.3.i, align 4
  %prev.i.3.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 3, i32 1
  %65 = ptrtoint ptr %prev.i.3.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx.3.i, ptr %prev.i.3.i, align 4
  %arrayidx1.3.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 3
  %66 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %arrayidx1.3.i, ptr %arrayidx1.3.i, align 4
  %prev.i7.3.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 3, i32 1
  %67 = ptrtoint ptr %prev.i7.3.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx1.3.i, ptr %prev.i7.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 4
  %68 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %arrayidx.4.i, ptr %arrayidx.4.i, align 4
  %prev.i.4.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 4, i32 1
  %69 = ptrtoint ptr %prev.i.4.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx.4.i, ptr %prev.i.4.i, align 4
  %arrayidx1.4.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 4
  %70 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %arrayidx1.4.i, ptr %arrayidx1.4.i, align 4
  %prev.i7.4.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 4, i32 1
  %71 = ptrtoint ptr %prev.i7.4.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx1.4.i, ptr %prev.i7.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 5
  %72 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %arrayidx.5.i, ptr %arrayidx.5.i, align 4
  %prev.i.5.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 5, i32 1
  %73 = ptrtoint ptr %prev.i.5.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx.5.i, ptr %prev.i.5.i, align 4
  %arrayidx1.5.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 5
  %74 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %arrayidx1.5.i, ptr %arrayidx1.5.i, align 4
  %prev.i7.5.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 5, i32 1
  %75 = ptrtoint ptr %prev.i7.5.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx1.5.i, ptr %prev.i7.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 6
  %76 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %arrayidx.6.i, ptr %arrayidx.6.i, align 4
  %prev.i.6.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 6, i32 1
  %77 = ptrtoint ptr %prev.i.6.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx.6.i, ptr %prev.i.6.i, align 4
  %arrayidx1.6.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 6
  %78 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %arrayidx1.6.i, ptr %arrayidx1.6.i, align 4
  %prev.i7.6.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 6, i32 1
  %79 = ptrtoint ptr %prev.i7.6.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx1.6.i, ptr %prev.i7.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 7
  %80 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %arrayidx.7.i, ptr %arrayidx.7.i, align 4
  %prev.i.7.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 9, i32 7, i32 1
  %81 = ptrtoint ptr %prev.i.7.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %arrayidx.7.i, ptr %prev.i.7.i, align 4
  %arrayidx1.7.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 7
  %82 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %arrayidx1.7.i, ptr %arrayidx1.7.i, align 4
  %prev.i7.7.i = getelementptr %struct.omap_ssi_port, ptr %call.i, i32 0, i32 10, i32 7, i32 1
  %83 = ptrtoint ptr %prev.i7.7.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %arrayidx1.7.i, ptr %prev.i7.7.i, align 4
  %brkqueue.i = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 11
  %84 = ptrtoint ptr %brkqueue.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %brkqueue.i, ptr %brkqueue.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 11, i32 1
  %85 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %brkqueue.i, ptr %prev.i8.i, align 4
  %lock = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @ssi_port_probe.__key.27, i16 noundef signext 3) #5
  %wk_lock = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %wk_lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @ssi_port_probe.__key.29, i16 noundef signext 3) #5
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %17, ptr %call.i, align 4
  %87 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %88, i1 noundef zeroext true) #5
  %89 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdev, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %90, i32 noundef 250) #5
  %91 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev, align 4
  tail call void @pm_runtime_enable(ptr noundef %92) #5
  %dir = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 15
  %93 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dir, align 4
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %98, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end102.dev_name.exit.i_crit_edge

if.end102.dev_name.exit.i_crit_edge:              ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %96, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end102.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %100, %if.end.i.i ], [ %98, %if.end102.dev_name.exit.i_crit_edge ]
  %call2.i220 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i, ptr noundef %94) #5
  %tobool.not.i221 = icmp eq ptr %call2.i220, null
  br i1 %tobool.not.i221, label %dev_name.exit.i.if.then118_crit_edge, label %if.end.i223

dev_name.exit.i.if.then118_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then118

if.end.i223:                                      ; preds = %dev_name.exit.i
  %dir3.i = getelementptr inbounds %struct.omap_ssi_port, ptr %call.i, i32 0, i32 26
  %101 = ptrtoint ptr %dir3.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call2.i220, ptr %dir3.i, align 4
  %call4.i222 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.82, i16 noundef zeroext 292, ptr noundef nonnull %call2.i220, ptr noundef %96, ptr noundef nonnull @ssi_port_regs_fops) #5
  %call5.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.83, ptr noundef nonnull %call2.i220) #5
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i223.if.then118_crit_edge, label %if.end120

if.end.i223.if.then118_crit_edge:                 ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then118

if.then118:                                       ; preds = %if.end.i223.if.then118_crit_edge, %dev_name.exit.i.if.then118_crit_edge
  %102 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %103, i1 noundef zeroext true) #5
  br label %cleanup

if.end120:                                        ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.84, i16 noundef zeroext 420, ptr noundef nonnull %call5.i, ptr noundef %96, ptr noundef nonnull @ssi_sst_div_fops) #5
  tail call void @hsi_add_clients_from_dt(ptr noundef %17, ptr noundef nonnull %1) #5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %port_id.0235) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.then118, %ssi_wake_irq.exit, %do.end.i, %if.end94.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then39, %do.end33, %do.end24, %do.end14
  %retval.0 = phi i32 [ 0, %if.end120 ], [ -19, %do.end24 ], [ %18, %if.then39 ], [ %call87, %if.end49.cleanup_crit_edge ], [ %call91, %if.end90.cleanup_crit_edge ], [ %call.i.i, %ssi_wake_irq.exit ], [ -12, %if.then118 ], [ -22, %do.end33 ], [ -19, %do.end14 ], [ -12, %if.end45.cleanup_crit_edge ], [ %call3.i, %do.end.i ], [ %call1.i, %if.end94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_port_remove(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i19 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i19, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i.i20 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i20, align 4
  %dir.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 26
  %8 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %9) #5
  %errqueue_work = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 13
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %errqueue_work) #5
  tail call void @hsi_port_unregister_clients(ptr noundef %1) #5
  %async = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %async to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hsi_dummy_msg, ptr %async, align 8
  %setup = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @hsi_dummy_cl, ptr %setup, align 4
  %flush = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hsi_dummy_cl, ptr %flush, align 8
  %start_tx = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %start_tx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hsi_dummy_cl, ptr %start_tx, align 4
  %stop_tx = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %stop_tx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @hsi_dummy_cl, ptr %stop_tx, align 8
  %release = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hsi_dummy_cl, ptr %release, align 4
  %port4 = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 14
  %16 = ptrtoint ptr %port4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port4, align 4
  %port_id = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 25
  %18 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_id, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssi_process_errqueue(ptr noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %errqueue = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %errqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %errqueue, align 4
  %cmp.i.not15 = icmp eq ptr %1, %errqueue
  br i1 %cmp.i.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %head.016 = phi ptr [ %tmp.018, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %head.016 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.018 = load ptr, ptr %head.016, align 4
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %head.016, i32 0, i32 4
  %3 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %complete, align 4
  tail call void %4(ptr noundef %head.016) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head.016) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %head.016, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %head.016 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.016, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %head.016 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %head.016, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head.016, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %tmp.018, %errqueue
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @start_tx_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -384
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %pdev = getelementptr i8, ptr %work, i32 -380
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  tail call void @arm_heavy_mb() #5
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sys, align 4
  %num = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 8
  %mul = shl i32 %11, 4
  %add = add i32 %mul, 3080
  %add.ptr8 = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16777216) #5, !srcloc !231
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_async(ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cl = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %msg, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !233

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/controllers/omap_ssi_port.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 384, 0\0A.popsection", ""() #5, !srcloc !234
  unreachable

do.end9:                                          ; preds = %entry
  %nents = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ugt i32 %7, 1
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %if.end11

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %do.end9
  %break_frame = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 9
  %8 = ptrtoint ptr %break_frame to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %break_frame, align 4
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  %parent3.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %parent3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent3.i, align 8
  %driver_data.i.i54.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i54.i, align 4
  %pdev.i = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #5
  %16 = ptrtoint ptr %break_frame to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %break_frame, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %cmp.i = icmp slt i8 %bf.load.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then13
  %sst.i = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 22
  %17 = ptrtoint ptr %sst.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp9.not.i = icmp eq i32 %18, 2
  br i1 %cmp9.not.i, label %do.body.i, label %if.then.i.ssi_async_break.exit_crit_edge

if.then.i.ssi_async_break.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssi_async_break.exit

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %sst_base.i = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %sst_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sst_base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 16777216) #5, !srcloc !231
  %status.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %status.i, align 4
  %complete.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 4
  %22 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %complete.i, align 4
  tail call void %23(ptr noundef nonnull %msg) #5
  br label %ssi_async_break.exit

if.else.i:                                        ; preds = %if.then13
  %ssr.i = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 23
  %24 = ptrtoint ptr %ssr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp13.not.i = icmp eq i32 %25, 2
  br i1 %cmp13.not.i, label %if.end15.i, label %if.else.i.ssi_async_break.exit_crit_edge

if.else.i.ssi_async_break.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssi_async_break.exit

if.end15.i:                                       ; preds = %if.else.i
  %lock.i = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #5
  %sys.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %13, i32 0, i32 1
  %26 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sys.i, align 4
  %num.i = getelementptr inbounds %struct.hsi_port, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num.i, align 8
  %mul.i = shl i32 %29, 4
  %add.i = add i32 %mul.i, 2060
  %add.ptr17.i = getelementptr i8, ptr %27, i32 %add.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void @arm_heavy_mb() #5
  %31 = or i32 %30, 2
  %32 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sys.i, align 4
  %34 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num.i, align 8
  %mul26.i = shl i32 %35, 4
  %add27.i = add i32 %mul26.i, 2060
  %add.ptr29.i = getelementptr i8, ptr %33, i32 %add27.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %31) #5, !srcloc !231
  %status30.i = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %36 = ptrtoint ptr %status30.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %status30.i, align 4
  %brkqueue.i = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 11
  %prev.i.i = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %msg, ptr noundef %38, ptr noundef %brkqueue.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end15.i.list_add_tail.exit.i_crit_edge

if.end15.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %brkqueue.i, ptr %msg, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %msg, ptr %38, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end15.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #5
  br label %ssi_async_break.exit

ssi_async_break.exit:                             ; preds = %list_add_tail.exit.i, %if.else.i.ssi_async_break.exit_crit_edge, %do.body.i, %if.then.i.ssi_async_break.exit_crit_edge
  %err.0.i = phi i32 [ 0, %do.body.i ], [ 0, %list_add_tail.exit.i ], [ -22, %if.then.i.ssi_async_break.exit_crit_edge ], [ -22, %if.else.i.ssi_async_break.exit_crit_edge ]
  %43 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i, align 4
  %call.i55.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 12, i32 22
  %45 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store volatile i64 %call.i55.i, ptr %last_busy.i.i, align 8
  %46 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i, align 4
  %call.i56.i = tail call i32 @__pm_runtime_suspend(ptr noundef %47, i32 noundef 13) #5
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool19.not = icmp sgt i8 %bf.load, -1
  %channel41 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 8
  %48 = ptrtoint ptr %channel41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channel41, align 4
  br i1 %tobool19.not, label %do.body40, label %do.body21

do.body21:                                        ; preds = %if.end15
  %channels = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 22, i32 1
  %50 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp22.not = icmp ult i32 %49, %51
  br i1 %cmp22.not, label %do.end38, label %do.body30, !prof !239

do.body30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/controllers/omap_ssi_port.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 393, 0\0A.popsection", ""() #5, !srcloc !240
  unreachable

do.end38:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.omap_ssi_port, ptr %5, i32 0, i32 9, i32 %49
  br label %if.end62

do.body40:                                        ; preds = %if.end15
  %channels42 = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 23, i32 1
  %52 = ptrtoint ptr %channels42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channels42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %53)
  %cmp43.not = icmp ult i32 %49, %53
  br i1 %cmp43.not, label %do.end59, label %do.body51, !prof !239

do.body51:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/controllers/omap_ssi_port.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #5, !srcloc !241
  unreachable

do.end59:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx61 = getelementptr %struct.omap_ssi_port, ptr %5, i32 0, i32 10, i32 %49
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %do.end38
  %queue.0 = phi ptr [ %arrayidx, %do.end38 ], [ %arrayidx61, %do.end59 ]
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %54 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %status, align 4
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 1
  %55 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %56, i32 noundef 4) #5
  %lock = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %prev.i = getelementptr inbounds %struct.list_head, ptr %queue.0, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i, align 4
  %call.i.i126 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %msg, ptr noundef %58, ptr noundef %queue.0) #5
  br i1 %call.i.i126, label %if.end.i.i, label %if.end62.list_add_tail.exit_crit_edge

if.end62.list_add_tail.exit_crit_edge:            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg, ptr %prev.i, align 4
  %60 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %queue.0, ptr %msg, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %msg, ptr %58, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end62.list_add_tail.exit_crit_edge
  %call64 = tail call fastcc i32 @ssi_start_transfer(ptr noundef %queue.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %list_add_tail.exit.if.end69_crit_edge

list_add_tail.exit.if.end69_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then66:                                        ; preds = %list_add_tail.exit
  %call.i.i127 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %msg) #5
  br i1 %call.i.i127, label %if.end.i.i129, label %if.then66.list_del.exit_crit_edge

if.then66.list_del.exit_crit_edge:                ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i129:                                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i128 = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i128 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i128, align 4
  %65 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %msg, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i129, %if.then66.list_del.exit_crit_edge
  %69 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 256 to ptr), ptr %msg, align 4
  %prev.i130 = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i130, align 4
  %71 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4, ptr %status, align 4
  br label %if.end69

if.end69:                                         ; preds = %list_del.exit, %list_add_tail.exit.if.end69_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %72 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev, align 4
  %call.i131 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 12, i32 22
  %74 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store volatile i64 %call.i131, ptr %last_busy.i, align 8
  %75 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev, align 4
  %call.i132 = tail call i32 @__pm_runtime_suspend(ptr noundef %76, i32 noundef 13) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_async.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_async, %if.then84)) #5
          to label %cleanup [label %if.then84], !srcloc !230

if.then84:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %status, align 4
  %79 = ptrtoint ptr %break_frame to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load88 = load i8, ptr %break_frame, align 4
  %bf.lshr89 = lshr i8 %bf.load88, 7
  %bf.cast90 = zext i8 %bf.lshr89 to i32
  %channel91 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 8
  %80 = ptrtoint ptr %channel91 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %channel91, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_async.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.36, i32 noundef %78, i32 noundef %bf.cast90, i32 noundef %81) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %if.end69, %ssi_async_break.exit, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i, %ssi_async_break.exit ], [ -38, %do.end9.cleanup_crit_edge ], [ %call64, %if.then84 ], [ %call64, %if.end69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_setup(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %parent3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent3, align 8
  %driver_data.i.i133 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i133 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i133, align 4
  %sst_base = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %sst_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sst_base, align 4
  %ssr_base = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %ssr_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ssr_base, align 4
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #5
  %lock = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %tx_cfg = getelementptr inbounds %struct.hsi_client, ptr %cl, i32 0, i32 1
  %speed = getelementptr inbounds %struct.hsi_client, ptr %cl, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %max_speed = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 11
  %16 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_speed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %driver_data.i.i133 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i133, align 4
  %fck_rate.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %fck_rate.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fck_rate.i, align 4
  %shr.i = lshr i32 %20, 1
  %dec.i = add nsw i32 %shr.i, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_calculate_div.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_setup, %if.then.i)) #5
          to label %ssi_calculate_div.exit [label %if.then.i], !srcloc !230

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %max_speed.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %18, i32 0, i32 11
  %21 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_speed.i, align 4
  %div.i = udiv i32 %dec.i, %22
  %23 = ptrtoint ptr %fck_rate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fck_rate.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_calculate_div.__UNIQUE_ID_ddebug240, ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %div.i, i32 noundef %24, i32 noundef %22) #5
  br label %ssi_calculate_div.exit

ssi_calculate_div.exit:                           ; preds = %if.then.i, %if.end
  %max_speed6.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %18, i32 0, i32 11
  %25 = ptrtoint ptr %max_speed6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_speed6.i, align 4
  %div7.i = udiv i32 %dec.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %div7.i)
  %cmp = icmp ugt i32 %div7.i, 127
  br i1 %cmp, label %do.end, label %if.end15

do.end:                                           ; preds = %ssi_calculate_div.exit
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %cl, ptr noundef nonnull @.str.47, i32 noundef %28, i32 noundef %div7.i) #8
  br label %out

if.end15:                                         ; preds = %ssi_calculate_div.exit
  %add.ptr16 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #5, !srcloc !231
  %add.ptr17 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #5, !srcloc !231
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  %add.ptr22 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 520093696) #5, !srcloc !231
  %30 = tail call i32 @llvm.bswap.i32(i32 %div7.i)
  %add.ptr23 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %30) #5, !srcloc !231
  %num_hw_channels = getelementptr inbounds %struct.hsi_client, ptr %cl, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %num_hw_channels to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_hw_channels, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %add.ptr25 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %33) #5, !srcloc !231
  %34 = getelementptr inbounds %struct.hsi_client, ptr %cl, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %add.ptr27 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %37) #5, !srcloc !231
  %38 = ptrtoint ptr %tx_cfg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_cfg, align 8
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %40) #5, !srcloc !231
  %add.ptr30 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 520093696) #5, !srcloc !231
  %rx_cfg = getelementptr inbounds %struct.hsi_client, ptr %cl, i32 0, i32 2
  %num_hw_channels31 = getelementptr inbounds %struct.hsi_client, ptr %cl, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %num_hw_channels31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_hw_channels31, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %add.ptr32 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %43) #5, !srcloc !231
  %add.ptr33 = getelementptr i8, ptr %11, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 0) #5, !srcloc !231
  %ssr34 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 23
  %44 = ptrtoint ptr %ssr34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ssr34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp36 = icmp eq i32 %45, 2
  br i1 %cmp36, label %land.lhs.true, label %if.end15.if.end41_crit_edge

if.end15.if.end41_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end15
  %46 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_cfg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp39.not = icmp eq i32 %47, 2
  br i1 %cmp39.not, label %land.lhs.true.if.end41_crit_edge, label %if.then40

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %brkqueue = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 11
  tail call fastcc void @ssi_flush_queue(ptr noundef %brkqueue, ptr noundef %cl)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %land.lhs.true.if.end41_crit_edge, %if.end15.if.end41_crit_edge
  %48 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_cfg, align 8
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %50) #5, !srcloc !231
  %51 = ptrtoint ptr %num_hw_channels31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_hw_channels31, align 4
  %53 = ptrtoint ptr %num_hw_channels to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_hw_channels, align 4
  %55 = tail call i32 @llvm.umax.i32(i32 %52, i32 %54)
  %channels = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 8
  %56 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %channels, align 4
  %sst51 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 22
  %57 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 22, i32 3
  %divisor = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 22, i32 3, i32 0, i32 1
  %58 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div7.i, ptr %divisor, align 4
  %frame_size = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 22, i32 2
  %59 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 31, ptr %frame_size, align 4
  %60 = ptrtoint ptr %num_hw_channels to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_hw_channels, align 4
  %channels56 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 22, i32 1
  %62 = ptrtoint ptr %channels56 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %channels56, align 4
  %63 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %34, align 4
  %65 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %57, align 4
  %66 = ptrtoint ptr %tx_cfg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_cfg, align 8
  %68 = ptrtoint ptr %sst51 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %sst51, align 4
  %frame_size64 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 23, i32 2
  %69 = ptrtoint ptr %frame_size64 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 31, ptr %frame_size64, align 4
  %70 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 23, i32 3
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %70, align 4
  %72 = ptrtoint ptr %num_hw_channels31 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_hw_channels31, align 4
  %channels69 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 23, i32 1
  %74 = ptrtoint ptr %channels69 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %channels69, align 4
  %75 = ptrtoint ptr %rx_cfg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_cfg, align 8
  %77 = ptrtoint ptr %ssr34 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %ssr34, align 4
  br label %out

out:                                              ; preds = %if.end41, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ 0, %if.end41 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %78 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev, align 4
  %call.i134 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 12, i32 22
  %80 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store volatile i64 %call.i134, ptr %last_busy.i, align 8
  %81 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev, align 4
  %call.i135 = tail call i32 @__pm_runtime_suspend(ptr noundef %82, i32 noundef 13) #5
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_flush(ptr nocapture noundef readonly %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %parent3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent3, align 8
  %driver_data.i.i114 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i114 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i114, align 4
  %sst_base = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %sst_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sst_base, align 4
  %ssr_base = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %ssr_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ssr_base, align 4
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #5
  %lock = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %call9 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %15) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #5
  %gdd = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0119 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.omap_ssi_controller, ptr %7, i32 0, i32 6, i32 %i.0119
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %cl12 = getelementptr inbounds %struct.hsi_msg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cl12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cl12, align 4
  %parent14 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %parent14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent14, align 8
  %cmp17.not = icmp eq ptr %1, %22
  br i1 %cmp17.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %23 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gdd, align 4
  %mul = shl nuw nsw i32 %i.0119, 6
  %add = add nuw nsw i32 %mul, 2050
  %add.ptr18 = getelementptr i8, ptr %24, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 0) #5, !srcloc !243
  %ttype = getelementptr inbounds %struct.hsi_msg, ptr %18, i32 0, i32 9
  %25 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp19 = icmp sgt i8 %bf.load, -1
  br i1 %cmp19, label %if.then20, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %call.i115 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end.if.end23_crit_edge
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %add.ptr27 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #5, !srcloc !231
  %add.ptr28 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #5, !srcloc !231
  %add.ptr29 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #5, !srcloc !231
  %add.ptr30 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #5, !srcloc !231
  %add.ptr31 = getelementptr i8, ptr %11, i32 32
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  %add.ptr35 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %29) #5, !srcloc !231
  %add.ptr36 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #5, !srcloc !231
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 1
  %30 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sys, align 4
  %num = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num, align 8
  %mul37 = shl i32 %33, 4
  %add38 = add i32 %mul37, 2060
  %add.ptr40 = getelementptr i8, ptr %31, i32 %add38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #5, !srcloc !231
  %34 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sys, align 4
  %36 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num, align 8
  %mul43 = shl i32 %37, 4
  %add44 = add i32 %mul43, 2056
  %add.ptr46 = getelementptr i8, ptr %35, i32 %add44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 16777215) #5, !srcloc !231
  %38 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sys, align 4
  %add.ptr48 = getelementptr i8, ptr %39, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #5, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sys, align 4
  %add.ptr50 = getelementptr i8, ptr %41, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 -16777216) #5, !srcloc !231
  %channels = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 8
  %42 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp52121.not = icmp eq i32 %43, 0
  br i1 %cmp52121.not, label %for.end.for.end66_crit_edge, label %for.end.for.body53_crit_edge

for.end.for.body53_crit_edge:                     ; preds = %for.end
  br label %for.body53

for.end.for.end66_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end66

for.body53:                                       ; preds = %if.end60.for.body53_crit_edge, %for.end.for.body53_crit_edge
  %i.1122 = phi i32 [ %inc65, %if.end60.for.body53_crit_edge ], [ 0, %for.end.for.body53_crit_edge ]
  %arrayidx54 = getelementptr %struct.omap_ssi_port, ptr %3, i32 0, i32 9, i32 %i.1122
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %arrayidx54, align 4
  %cmp.i.not = icmp eq ptr %45, %arrayidx54
  br i1 %cmp.i.not, label %for.body53.if.end60_crit_edge, label %if.then57

for.body53.if.end60_crit_edge:                    ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then57:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 4
  %call.i116 = tail call i32 @__pm_runtime_suspend(ptr noundef %47, i32 noundef 13) #5
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %for.body53.if.end60_crit_edge
  tail call fastcc void @ssi_flush_queue(ptr noundef %arrayidx54, ptr noundef null)
  %arrayidx63 = getelementptr %struct.omap_ssi_port, ptr %3, i32 0, i32 10, i32 %i.1122
  tail call fastcc void @ssi_flush_queue(ptr noundef %arrayidx63, ptr noundef null)
  %inc65 = add nuw i32 %i.1122, 1
  %48 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channels, align 4
  %cmp52 = icmp ult i32 %inc65, %49
  br i1 %cmp52, label %if.end60.for.body53_crit_edge, label %if.end60.for.end66_crit_edge

if.end60.for.end66_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end66

if.end60.for.body53_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body53

for.end66:                                        ; preds = %if.end60.for.end66_crit_edge, %for.end.for.end66_crit_edge
  %brkqueue = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 11
  tail call fastcc void @ssi_flush_queue(ptr noundef %brkqueue, ptr noundef null)
  %50 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev, align 4
  %call68 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %51) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %52 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev, align 4
  %call.i117 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 12, i32 22
  %54 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store volatile i64 %call.i117, ptr %last_busy.i, align 8
  %55 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev, align 4
  %call.i118 = tail call i32 @__pm_runtime_suspend(ptr noundef %56, i32 noundef 13) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_start_tx(ptr nocapture noundef readonly %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_start_tx.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_start_tx, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !230

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wk_refcount = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %wk_refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wk_refcount, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_start_tx.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %wk_lock = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %wk_lock) #5
  %wk_refcount6 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %wk_refcount6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wk_refcount6, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %wk_refcount6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %wk_lock) #5
  br i1 %tobool7.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %work = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_stop_tx(ptr nocapture noundef readonly %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %parent3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent3, align 8
  %driver_data.i.i58 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i58 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i58, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_stop_tx.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_stop_tx, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !230

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wk_refcount = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %wk_refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wk_refcount, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_stop_tx.__UNIQUE_ID_ddebug245, ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef %9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %wk_lock = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %wk_lock) #5
  %wk_refcount13 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %wk_refcount13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wk_refcount13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %do.body24, label %do.end32, !prof !233

do.body24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/hsi/controllers/omap_ssi_port.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 626, 0\0A.popsection", ""() #5, !srcloc !246
  unreachable

do.end32:                                         ; preds = %do.end
  %dec = add i32 %11, -1
  %12 = ptrtoint ptr %wk_refcount13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec, ptr %wk_refcount13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool34.not = icmp eq i32 %dec, 0
  br i1 %tobool34.not, label %do.body38, label %if.then35

if.then35:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %wk_lock) #5
  br label %cleanup

do.body38:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  tail call void @arm_heavy_mb() #5
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sys, align 4
  %num = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num, align 8
  %mul = shl i32 %16, 4
  %add = add i32 %mul, 3076
  %add.ptr41 = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 16777216) #5, !srcloc !231
  tail call void @_raw_spin_unlock_bh(ptr noundef %wk_lock) #5
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %call.i59 = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body38, %if.then35
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_release(ptr noundef %cl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %parent3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent3, align 8
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #5
  %lock = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %driver_data.i.i39.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i39.i, align 4
  %gdd.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %9, i32 0, i32 2
  %pdev.i = getelementptr inbounds %struct.omap_ssi_port, ptr %13, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %val.043.i = phi i32 [ 0, %entry ], [ %val.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.041.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.omap_ssi_controller, ptr %9, i32 0, i32 6, i32 %i.041.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %cl4.i = getelementptr inbounds %struct.hsi_msg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %cl4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cl4.i, align 4
  %cmp5.not.i = icmp eq ptr %17, %cl
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %18 = ptrtoint ptr %gdd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gdd.i, align 4
  %mul.i = shl nuw nsw i32 %i.041.i, 6
  %add.i = add nuw nsw i32 %mul.i, 2050
  %add.ptr6.i = getelementptr i8, ptr %19, i32 %add.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i, i16 0) #5, !srcloc !243
  %shl.i = shl nuw nsw i32 1, %i.041.i
  %or.i = or i32 %shl.i, %val.043.i
  %ttype.i = getelementptr inbounds %struct.hsi_msg, ptr %15, i32 0, i32 9
  %20 = ptrtoint ptr %ttype.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %ttype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %cmp7.i = icmp sgt i8 %bf.load.i, -1
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 12, i32 22
  %23 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 4
  %call.i40.i = tail call i32 @__pm_runtime_suspend(ptr noundef %25, i32 noundef 13) #5
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i.if.end11.i_crit_edge
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %val.1.i = phi i32 [ %val.043.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %or.i, %if.end11.i ], [ %val.043.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %ssi_cleanup_gdd.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

ssi_cleanup_gdd.exit:                             ; preds = %for.inc.i
  %sys.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %9, i32 0, i32 1
  %27 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sys.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %28, i32 2052
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #5, !srcloc !236
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %neg.i = xor i32 %val.1.i, -1
  %and.i = and i32 %30, %neg.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %32 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sys.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %33, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %31) #5, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !248
  tail call void @arm_heavy_mb() #5
  %34 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #5
  %35 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sys.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %36, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %34) #5, !srcloc !231
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 8
  %driver_data.i.i.i61 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i.i61, align 4
  %parent3.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %parent3.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent3.i, align 8
  %driver_data.i.i165.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i165.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i165.i, align 4
  %brkqueue.i = getelementptr inbounds %struct.omap_ssi_port, ptr %40, i32 0, i32 11
  tail call fastcc void @ssi_flush_queue(ptr noundef %brkqueue.i, ptr noundef %cl) #5
  %45 = ptrtoint ptr %brkqueue.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %brkqueue.i, align 4
  %cmp.i.not.i = icmp eq ptr %46, %brkqueue.i
  %spec.select.i = select i1 %cmp.i.not.i, i32 50331648, i32 16777216
  %channels.i = getelementptr inbounds %struct.omap_ssi_port, ptr %40, i32 0, i32 8
  %47 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp173.not.i = icmp eq i32 %48, 0
  br i1 %cmp173.not.i, label %ssi_cleanup_gdd.exit.ssi_cleanup_queues.exit_crit_edge, label %for.body.lr.ph.i

ssi_cleanup_gdd.exit.ssi_cleanup_queues.exit_crit_edge: ; preds = %ssi_cleanup_gdd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssi_cleanup_queues.exit

for.body.lr.ph.i:                                 ; preds = %ssi_cleanup_gdd.exit
  %pdev.i62 = getelementptr inbounds %struct.omap_ssi_port, ptr %40, i32 0, i32 1
  br label %for.body.i64

for.cond32.preheader.i:                           ; preds = %for.inc.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp34178.not.i = icmp eq i32 %61, 0
  br i1 %cmp34178.not.i, label %for.cond32.preheader.i.ssi_cleanup_queues.exit_crit_edge, label %for.cond32.preheader.i.for.body35.i_crit_edge

for.cond32.preheader.i.for.body35.i_crit_edge:    ; preds = %for.cond32.preheader.i
  br label %for.body35.i

for.cond32.preheader.i.ssi_cleanup_queues.exit_crit_edge: ; preds = %for.cond32.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssi_cleanup_queues.exit

for.body.i64:                                     ; preds = %for.inc.i69.for.body.i64_crit_edge, %for.body.lr.ph.i
  %i.0176.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i68, %for.inc.i69.for.body.i64_crit_edge ]
  %txbufstate.0175.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %txbufstate.2.i, %for.inc.i69.for.body.i64_crit_edge ]
  %status.1174.i = phi i32 [ %spec.select.i, %for.body.lr.ph.i ], [ %status.3.i, %for.inc.i69.for.body.i64_crit_edge ]
  %arrayidx.i63 = getelementptr %struct.omap_ssi_port, ptr %40, i32 0, i32 9, i32 %i.0176.i
  %49 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %arrayidx.i63, align 4
  %cmp.i166.not.i = icmp eq ptr %50, %arrayidx.i63
  br i1 %cmp.i166.not.i, label %for.body.i64.for.inc.i69_crit_edge, label %if.end13.i

for.body.i64.for.inc.i69_crit_edge:               ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i69

if.end13.i:                                       ; preds = %for.body.i64
  %cl19.i = getelementptr inbounds %struct.hsi_msg, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %cl19.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cl19.i, align 4
  %cmp20.i = icmp eq ptr %52, %cl
  br i1 %cmp20.i, label %land.lhs.true.i, label %if.end13.i.if.end29.i_crit_edge

if.end13.i.if.end29.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.end13.i
  %status21.i = getelementptr inbounds %struct.hsi_msg, ptr %50, i32 0, i32 6
  %53 = ptrtoint ptr %status21.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %status21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp22.i = icmp eq i32 %54, 2
  br i1 %cmp22.i, label %if.then23.i, label %land.lhs.true.i.if.end29.i_crit_edge

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i65 = shl nuw i32 1, %i.0176.i
  %or24.i = or i32 %shl.i65, %txbufstate.0175.i
  %or26.i = or i32 %status.1174.i, %shl.i65
  %55 = ptrtoint ptr %pdev.i62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i62, align 4
  %call.i.i66 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i67 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 12, i32 22
  %57 = ptrtoint ptr %last_busy.i.i67 to i32
  call void @__asan_store8_noabort(i32 %57)
  store volatile i64 %call.i.i66, ptr %last_busy.i.i67, align 8
  %58 = ptrtoint ptr %pdev.i62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev.i62, align 4
  %call.i168.i = tail call i32 @__pm_runtime_suspend(ptr noundef %59, i32 noundef 13) #5
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then23.i, %land.lhs.true.i.if.end29.i_crit_edge, %if.end13.i.if.end29.i_crit_edge
  %status.2.i = phi i32 [ %or26.i, %if.then23.i ], [ %status.1174.i, %land.lhs.true.i.if.end29.i_crit_edge ], [ %status.1174.i, %if.end13.i.if.end29.i_crit_edge ]
  %txbufstate.1.i = phi i32 [ %or24.i, %if.then23.i ], [ %txbufstate.0175.i, %land.lhs.true.i.if.end29.i_crit_edge ], [ %txbufstate.0175.i, %if.end13.i.if.end29.i_crit_edge ]
  tail call fastcc void @ssi_flush_queue(ptr noundef %arrayidx.i63, ptr noundef %cl) #5
  br label %for.inc.i69

for.inc.i69:                                      ; preds = %if.end29.i, %for.body.i64.for.inc.i69_crit_edge
  %status.3.i = phi i32 [ %status.1174.i, %for.body.i64.for.inc.i69_crit_edge ], [ %status.2.i, %if.end29.i ]
  %txbufstate.2.i = phi i32 [ %txbufstate.0175.i, %for.body.i64.for.inc.i69_crit_edge ], [ %txbufstate.1.i, %if.end29.i ]
  %inc.i68 = add nuw i32 %i.0176.i, 1
  %60 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i68, %61
  br i1 %cmp.i, label %for.inc.i69.for.body.i64_crit_edge, label %for.cond32.preheader.i

for.inc.i69.for.body.i64_crit_edge:               ; preds = %for.inc.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i64

for.body35.i:                                     ; preds = %for.inc66.i.for.body35.i_crit_edge, %for.cond32.preheader.i.for.body35.i_crit_edge
  %i.1181.i = phi i32 [ %inc67.i, %for.inc66.i.for.body35.i_crit_edge ], [ 0, %for.cond32.preheader.i.for.body35.i_crit_edge ]
  %rxbufstate.0180.i = phi i32 [ %rxbufstate.2.i, %for.inc66.i.for.body35.i_crit_edge ], [ 0, %for.cond32.preheader.i.for.body35.i_crit_edge ]
  %status.4179.i = phi i32 [ %status.6.i, %for.inc66.i.for.body35.i_crit_edge ], [ %status.3.i, %for.cond32.preheader.i.for.body35.i_crit_edge ]
  %arrayidx36.i = getelementptr %struct.omap_ssi_port, ptr %40, i32 0, i32 10, i32 %i.1181.i
  %62 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %arrayidx36.i, align 4
  %cmp.i169.not.i = icmp eq ptr %63, %arrayidx36.i
  br i1 %cmp.i169.not.i, label %for.body35.i.for.inc66.i_crit_edge, label %if.end40.i

for.body35.i.for.inc66.i_crit_edge:               ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc66.i

if.end40.i:                                       ; preds = %for.body35.i
  %cl47.i = getelementptr inbounds %struct.hsi_msg, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %cl47.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cl47.i, align 4
  %cmp48.i = icmp eq ptr %65, %cl
  br i1 %cmp48.i, label %land.lhs.true49.i, label %if.end40.i.if.end57.i_crit_edge

if.end40.i.if.end57.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.i

land.lhs.true49.i:                                ; preds = %if.end40.i
  %status50.i = getelementptr inbounds %struct.hsi_msg, ptr %63, i32 0, i32 6
  %66 = ptrtoint ptr %status50.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %status50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp51.i = icmp eq i32 %67, 2
  br i1 %cmp51.i, label %if.then52.i, label %land.lhs.true49.i.if.end57.i_crit_edge

land.lhs.true49.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.i

if.then52.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl53.i = shl nuw i32 1, %i.1181.i
  %or54.i = or i32 %shl53.i, %rxbufstate.0180.i
  %add.i70 = add i32 %i.1181.i, 8
  %shl55.i = shl nuw i32 1, %add.i70
  %or56.i = or i32 %shl55.i, %status.4179.i
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then52.i, %land.lhs.true49.i.if.end57.i_crit_edge, %if.end40.i.if.end57.i_crit_edge
  %status.5.i = phi i32 [ %or56.i, %if.then52.i ], [ %status.4179.i, %land.lhs.true49.i.if.end57.i_crit_edge ], [ %status.4179.i, %if.end40.i.if.end57.i_crit_edge ]
  %rxbufstate.1.i = phi i32 [ %or54.i, %if.then52.i ], [ %rxbufstate.0180.i, %land.lhs.true49.i.if.end57.i_crit_edge ], [ %rxbufstate.0180.i, %if.end40.i.if.end57.i_crit_edge ]
  tail call fastcc void @ssi_flush_queue(ptr noundef %arrayidx36.i, ptr noundef %cl) #5
  %68 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %arrayidx36.i, align 4
  %cmp.i171.not.i = icmp eq ptr %69, %arrayidx36.i
  %and.i71 = and i32 %status.5.i, -16777217
  %spec.select164.i = select i1 %cmp.i171.not.i, i32 %status.5.i, i32 %and.i71
  br label %for.inc66.i

for.inc66.i:                                      ; preds = %if.end57.i, %for.body35.i.for.inc66.i_crit_edge
  %status.6.i = phi i32 [ %status.4179.i, %for.body35.i.for.inc66.i_crit_edge ], [ %spec.select164.i, %if.end57.i ]
  %rxbufstate.2.i = phi i32 [ %rxbufstate.0180.i, %for.body35.i.for.inc66.i_crit_edge ], [ %rxbufstate.1.i, %if.end57.i ]
  %inc67.i = add nuw i32 %i.1181.i, 1
  %70 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %channels.i, align 4
  %cmp34.i = icmp ult i32 %inc67.i, %71
  br i1 %cmp34.i, label %for.inc66.i.for.body35.i_crit_edge, label %for.inc66.i.ssi_cleanup_queues.exit_crit_edge

for.inc66.i.ssi_cleanup_queues.exit_crit_edge:    ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssi_cleanup_queues.exit

for.inc66.i.for.body35.i_crit_edge:               ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body35.i

ssi_cleanup_queues.exit:                          ; preds = %for.inc66.i.ssi_cleanup_queues.exit_crit_edge, %for.cond32.preheader.i.ssi_cleanup_queues.exit_crit_edge, %ssi_cleanup_gdd.exit.ssi_cleanup_queues.exit_crit_edge
  %txbufstate.0.lcssa187.i = phi i32 [ %txbufstate.2.i, %for.cond32.preheader.i.ssi_cleanup_queues.exit_crit_edge ], [ 0, %ssi_cleanup_gdd.exit.ssi_cleanup_queues.exit_crit_edge ], [ %txbufstate.2.i, %for.inc66.i.ssi_cleanup_queues.exit_crit_edge ]
  %status.4.lcssa.i = phi i32 [ %status.3.i, %for.cond32.preheader.i.ssi_cleanup_queues.exit_crit_edge ], [ %spec.select.i, %ssi_cleanup_gdd.exit.ssi_cleanup_queues.exit_crit_edge ], [ %status.6.i, %for.inc66.i.ssi_cleanup_queues.exit_crit_edge ]
  %rxbufstate.0.lcssa.i = phi i32 [ 0, %for.cond32.preheader.i.ssi_cleanup_queues.exit_crit_edge ], [ 0, %ssi_cleanup_gdd.exit.ssi_cleanup_queues.exit_crit_edge ], [ %rxbufstate.2.i, %for.inc66.i.ssi_cleanup_queues.exit_crit_edge ]
  %sst_base.i = getelementptr inbounds %struct.omap_ssi_port, ptr %40, i32 0, i32 4
  %72 = ptrtoint ptr %sst_base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sst_base.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %73, i32 16
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #5, !srcloc !236
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  %neg.i72 = xor i32 %txbufstate.0.lcssa187.i, -1
  %and73.i = and i32 %75, %neg.i72
  %76 = tail call i32 @llvm.bswap.i32(i32 %and73.i) #5
  %77 = ptrtoint ptr %sst_base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sst_base.i, align 4
  %add.ptr75.i = getelementptr i8, ptr %78, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i, i32 %76) #5, !srcloc !231
  %ssr_base.i = getelementptr inbounds %struct.omap_ssi_port, ptr %40, i32 0, i32 5
  %79 = ptrtoint ptr %ssr_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ssr_base.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %80, i32 16
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #5, !srcloc !236
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !250
  %neg82.i = xor i32 %rxbufstate.0.lcssa.i, -1
  %and83.i = and i32 %82, %neg82.i
  %83 = tail call i32 @llvm.bswap.i32(i32 %and83.i) #5
  %84 = ptrtoint ptr %ssr_base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ssr_base.i, align 4
  %add.ptr85.i = getelementptr i8, ptr %85, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 %83) #5, !srcloc !231
  %sys.i73 = getelementptr inbounds %struct.omap_ssi_controller, ptr %44, i32 0, i32 1
  %86 = ptrtoint ptr %sys.i73 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sys.i73, align 4
  %num.i = getelementptr inbounds %struct.hsi_port, ptr %38, i32 0, i32 3
  %88 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num.i, align 8
  %mul.i74 = shl i32 %89, 4
  %add88.i = add i32 %mul.i74, 2060
  %add.ptr90.i = getelementptr i8, ptr %87, i32 %add88.i
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90.i) #5, !srcloc !236
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !251
  %neg94.i = xor i32 %status.4.lcssa.i, -1
  %and95.i = and i32 %91, %neg94.i
  %92 = tail call i32 @llvm.bswap.i32(i32 %and95.i) #5
  %93 = ptrtoint ptr %sys.i73 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sys.i73, align 4
  %95 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num.i, align 8
  %mul98.i = shl i32 %96, 4
  %add99.i = add i32 %mul98.i, 2060
  %add.ptr101.i = getelementptr i8, ptr %94, i32 %add99.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i, i32 %92) #5, !srcloc !231
  %97 = tail call i32 @llvm.bswap.i32(i32 %status.4.lcssa.i) #5
  %98 = ptrtoint ptr %sys.i73 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sys.i73, align 4
  %100 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num.i, align 8
  %mul104.i = shl i32 %101, 4
  %add105.i = add i32 %mul104.i, 2056
  %add.ptr107.i = getelementptr i8, ptr %99, i32 %add105.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107.i, i32 %97) #5, !srcloc !231
  %claimed = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 5
  %102 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %claimed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp = icmp slt i32 %103, 2
  br i1 %cmp, label %if.then, label %ssi_cleanup_queues.exit.if.end40_crit_edge

ssi_cleanup_queues.exit.if.end40_crit_edge:       ; preds = %ssi_cleanup_queues.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then:                                          ; preds = %ssi_cleanup_queues.exit
  %flags = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 18
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev, align 4
  %call.i75 = tail call i32 @__pm_runtime_idle(ptr noundef %105, i32 noundef 4) #5
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %106 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev, align 4
  %call.i76 = tail call i32 @__pm_runtime_resume(ptr noundef %107, i32 noundef 5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  tail call void @arm_heavy_mb() #5
  %sst_base.i77 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 4
  %108 = ptrtoint ptr %sst_base.i77 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sst_base.i77, align 4
  %add.ptr.i = getelementptr i8, ptr %109, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  tail call void @arm_heavy_mb() #5
  %ssr_base.i78 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 5
  %110 = ptrtoint ptr %ssr_base.i78 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ssr_base.i78, align 4
  %add.ptr3.i = getelementptr i8, ptr %111, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #5, !srcloc !231
  %112 = ptrtoint ptr %ssr_base.i78 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ssr_base.i78, align 4
  %add.ptr5.i = getelementptr i8, ptr %113, i32 4
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  %sst = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 22
  %115 = ptrtoint ptr %sst to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %sst, align 4
  %ssr = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 23
  %116 = ptrtoint ptr %ssr to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %ssr, align 4
  %117 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pdev, align 4
  %call.i79 = tail call i32 @__pm_runtime_idle(ptr noundef %118, i32 noundef 5) #5
  %wk_refcount = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 19
  %119 = ptrtoint ptr %wk_refcount to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %wk_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp17.not = icmp eq i32 %120, 0
  br i1 %cmp17.not, label %if.end.if.end40_crit_edge, label %do.end, !prof !239

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 795, i32 noundef 9, ptr noundef null) #5
  br label %if.end40

if.end40:                                         ; preds = %do.end, %if.end.if.end40_crit_edge, %ssi_cleanup_queues.exit.if.end40_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %121 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pdev, align 4
  %call.i80 = tail call i32 @__pm_runtime_idle(ptr noundef %122, i32 noundef 4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssi_port_get_iomem(ptr noundef %pd, ptr noundef %name, ptr nocapture noundef writeonly %pbase, ptr noundef writeonly %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @platform_get_resource_byname(ptr noundef %pd, i32 noundef 512, ptr noundef %name) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef %name) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end.dev_name.exit_crit_edge ]
  %call5 = tail call ptr @__devm_request_region(ptr noundef %1, ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef %retval.0.i) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name12 = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 2
  %10 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.58, ptr noundef %11) #8
  br label %cleanup

if.end13:                                         ; preds = %dev_name.exit
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call1, align 4
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %sub.i50 = sub i32 1, %13
  %add.i51 = add i32 %sub.i50, %15
  %call17 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %13, i32 noundef %add.i51) #5
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %name24 = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 2
  %16 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.61, ptr noundef %17) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %18 = ptrtoint ptr %pbase to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call17, ptr %pbase, align 4
  %tobool26.not = icmp eq ptr %phy, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call1, align 4
  %21 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %phy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %do.end22, %do.end10, %do.end
  %retval.0 = phi i32 [ -6, %do.end22 ], [ -6, %do.end10 ], [ -6, %do.end ], [ 0, %if.then27 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsi_add_clients_from_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssi_start_transfer(ptr noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.hsi_msg, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %nents = getelementptr inbounds %struct.hsi_msg, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end2.if.else_crit_edge, label %land.lhs.true

if.end2.if.else_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end2
  %sgt = getelementptr inbounds %struct.hsi_msg, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgt, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp5 = icmp ugt i32 %9, 4
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %cl.i = getelementptr inbounds %struct.hsi_msg, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 8
  %parent3.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent3.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.omap_ssi_controller, ptr %17, i32 0, i32 6, i32 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then6.if.then10_crit_edge, label %for.inc.i

if.then6.if.then10_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

for.inc.i:                                        ; preds = %if.then6
  %arrayidx.1.i = getelementptr %struct.omap_ssi_controller, ptr %17, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %21, null
  br i1 %tobool.not.1.i, label %for.inc.i.if.then10_crit_edge, label %for.inc.1.i

for.inc.i.if.then10_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.omap_ssi_controller, ptr %17, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %23, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.then10_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then10_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.omap_ssi_controller, ptr %17, i32 0, i32 6, i32 3
  %24 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %25, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.if.then10_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then10_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.omap_ssi_controller, ptr %17, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %27, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.if.then10_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then10_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr %struct.omap_ssi_controller, ptr %17, i32 0, i32 6, i32 5
  %28 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %29, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.if.then10_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then10_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr %struct.omap_ssi_controller, ptr %17, i32 0, i32 6, i32 6
  %30 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %31, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.if.then10_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then10_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr %struct.omap_ssi_controller, ptr %17, i32 0, i32 6, i32 7
  %32 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.7.i, align 4
  %tobool.not.7.i = icmp eq ptr %33, null
  br i1 %tobool.not.7.i, label %for.inc.6.i.if.then10_crit_edge, label %for.inc.6.i.if.else_crit_edge

for.inc.6.i.if.else_crit_edge:                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

for.inc.6.i.if.then10_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %for.inc.6.i.if.then10_crit_edge, %for.inc.5.i.if.then10_crit_edge, %for.inc.4.i.if.then10_crit_edge, %for.inc.3.i.if.then10_crit_edge, %for.inc.2.i.if.then10_crit_edge, %for.inc.1.i.if.then10_crit_edge, %for.inc.i.if.then10_crit_edge, %if.then6.if.then10_crit_edge
  %lch.025.lcssa.i = phi i32 [ 0, %if.then6.if.then10_crit_edge ], [ 1, %for.inc.i.if.then10_crit_edge ], [ 2, %for.inc.1.i.if.then10_crit_edge ], [ 3, %for.inc.2.i.if.then10_crit_edge ], [ 4, %for.inc.3.i.if.then10_crit_edge ], [ 5, %for.inc.4.i.if.then10_crit_edge ], [ 6, %for.inc.5.i.if.then10_crit_edge ], [ 7, %for.inc.6.i.if.then10_crit_edge ]
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %if.then6.if.then10_crit_edge ], [ %arrayidx.1.i, %for.inc.i.if.then10_crit_edge ], [ %arrayidx.2.i, %for.inc.1.i.if.then10_crit_edge ], [ %arrayidx.3.i, %for.inc.2.i.if.then10_crit_edge ], [ %arrayidx.4.i, %for.inc.3.i.if.then10_crit_edge ], [ %arrayidx.5.i, %for.inc.4.i.if.then10_crit_edge ], [ %arrayidx.6.i, %for.inc.5.i.if.then10_crit_edge ], [ %arrayidx.7.i, %for.inc.6.i.if.then10_crit_edge ]
  %34 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %1, ptr %arrayidx.lcssa.i, align 4
  %35 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sgt, align 4
  %sg.i = getelementptr %struct.omap_ssi_controller, ptr %17, i32 0, i32 6, i32 %lch.025.lcssa.i, i32 1
  %37 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %sg.i, align 4
  %call11 = tail call fastcc i32 @ssi_start_dma(ptr noundef %1, i32 noundef %lch.025.lcssa.i)
  br label %cleanup

if.else:                                          ; preds = %for.inc.6.i.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end2.if.else_crit_edge
  %call12 = tail call fastcc i32 @ssi_start_pio(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then10 ], [ %call12, %if.else ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssi_start_dma(ptr nocapture noundef %msg, i32 noundef %lch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cl = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %parent3 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent3, align 8
  %driver_data.i.i211 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i211 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i211, align 4
  %gdd7 = getelementptr inbounds %struct.omap_ssi_controller, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %gdd7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gdd7, align 4
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 5) #5
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 18
  %16 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %pm_runtime_active.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pm_runtime_active.exit:                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 15
  %18 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end_crit_edge, label %do.end

pm_runtime_active.exit.if.end_crit_edge:          ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.37) #8
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %call.i212 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #5
  br label %cleanup

if.end:                                           ; preds = %pm_runtime_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ttype = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 9
  %21 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp = icmp sgt i8 %bf.load, -1
  %sgt = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2
  %22 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgt, align 4
  %nents = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nents, align 4
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  %call18 = tail call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %23, i32 noundef %25, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.body21, label %if.end33

do.body21:                                        ; preds = %if.then15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_start_dma.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_start_dma, %if.then26)) #5
          to label %do.end30 [label %if.then26], !srcloc !230

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_start_dma.__UNIQUE_ID_ddebug235, ptr noundef %7, ptr noundef nonnull @.str.40) #5
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body21
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %call.i213 = tail call i32 @__pm_runtime_suspend(ptr noundef %27, i32 noundef 13) #5
  br label %cleanup

if.end33:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %channel = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 8
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel, align 4
  %add = add i32 %29, 16
  %num = getelementptr inbounds %struct.hsi_port, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num, align 8
  %mul = shl i32 %31, 3
  %add34 = add i32 %add, %mul
  %32 = trunc i32 %add34 to i16
  %ssr_dma = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 3
  %33 = ptrtoint ptr %ssr_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ssr_dma, align 4
  %mul38 = shl i32 %29, 2
  %add39 = add i32 %mul38, 128
  %add40 = add i32 %add39, %34
  %35 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sgt, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_address, align 4
  br label %do.body89

if.else:                                          ; preds = %if.end
  %call48 = tail call i32 @dma_map_sg_attrs(ptr noundef %7, ptr noundef %23, i32 noundef %25, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.body52, label %if.end71

do.body52:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_start_dma.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_start_dma, %if.then64)) #5
          to label %do.end68 [label %if.then64], !srcloc !230

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_start_dma.__UNIQUE_ID_ddebug236, ptr noundef %7, ptr noundef nonnull @.str.40) #5
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body52
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %call.i214 = tail call i32 @__pm_runtime_suspend(ptr noundef %40, i32 noundef 13) #5
  br label %cleanup

if.end71:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %channel72 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 8
  %41 = ptrtoint ptr %channel72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channel72, align 4
  %add73 = add i32 %42, 1
  %num74 = getelementptr inbounds %struct.hsi_port, ptr %3, i32 0, i32 3
  %43 = ptrtoint ptr %num74 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num74, align 8
  %mul75 = shl i32 %44, 3
  %add76 = add i32 %add73, %mul75
  %45 = trunc i32 %add76 to i16
  %46 = and i16 %45, 15
  %47 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sgt, align 4
  %dma_address83 = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %dma_address83 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_address83, align 4
  %sst_dma = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 2
  %51 = ptrtoint ptr %sst_dma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sst_dma, align 4
  %mul85 = shl i32 %42, 2
  %add86 = add i32 %mul85, 128
  %add87 = add i32 %add86, %52
  br label %do.body89

do.body89:                                        ; preds = %if.end71, %if.end33
  %d_addr.0 = phi i32 [ %38, %if.end33 ], [ %add87, %if.end71 ]
  %s_addr.0 = phi i32 [ %add40, %if.end33 ], [ %50, %if.end71 ]
  %ccr.0.in = phi i16 [ %32, %if.end33 ], [ %46, %if.end71 ]
  %csdp.0 = phi i16 [ -28634, %if.end33 ], [ 4898, %if.end71 ]
  %ccr.0 = or i16 %ccr.0.in, 4224
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_start_dma.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_start_dma, %if.then101)) #5
          to label %do.end107 [label %if.then101], !srcloc !230

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  %conv103 = zext i16 %csdp.0 to i32
  %conv104 = zext i16 %ccr.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_start_dma.__UNIQUE_ID_ddebug237, ptr noundef %7, ptr noundef nonnull @.str.41, i32 noundef %lch, i32 noundef %conv103, i32 noundef %conv104, i32 noundef %s_addr.0, i32 noundef %d_addr.0) #5
  br label %do.end107

do.end107:                                        ; preds = %if.then101, %do.body89
  %53 = tail call i16 @llvm.bswap.i16(i16 %csdp.0)
  %mul108 = shl i32 %lch, 6
  %add109 = add i32 %mul108, 2048
  %add.ptr110 = getelementptr i8, ptr %11, i32 %add109
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr110, i16 %53) #5, !srcloc !243
  %add112 = add i32 %mul108, 2052
  %add.ptr113 = getelementptr i8, ptr %11, i32 %add112
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr113, i16 8448) #5, !srcloc !243
  %54 = tail call i32 @llvm.bswap.i32(i32 %d_addr.0)
  %add115 = add i32 %mul108, 2060
  %add.ptr116 = getelementptr i8, ptr %11, i32 %add115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 %54) #5, !srcloc !231
  %55 = tail call i32 @llvm.bswap.i32(i32 %s_addr.0)
  %add118 = add i32 %mul108, 2056
  %add.ptr119 = getelementptr i8, ptr %11, i32 %add118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %55) #5, !srcloc !231
  %sgt120 = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 2
  %56 = ptrtoint ptr %sgt120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sgt120, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length, align 4
  %sub = add i32 %59, 262143
  %shr = lshr i32 %sub, 2
  %60 = trunc i32 %shr to i16
  %conv123 = add i16 %60, 1
  %61 = tail call i16 @llvm.bswap.i16(i16 %conv123)
  %add125 = add i32 %mul108, 2064
  %add.ptr126 = getelementptr i8, ptr %11, i32 %add125
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr126, i16 %61) #5, !srcloc !243
  %lock = getelementptr inbounds %struct.omap_ssi_controller, ptr %9, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %9, i32 0, i32 1
  %62 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sys, align 4
  %add.ptr127 = getelementptr i8, ptr %63, i32 2052
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127) #5, !srcloc !236
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !255
  %shl = shl nuw i32 1, %lch
  %or131 = or i32 %65, %shl
  %66 = tail call i32 @llvm.bswap.i32(i32 %or131)
  %67 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sys, align 4
  %add.ptr133 = getelementptr i8, ptr %68, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 %66) #5, !srcloc !231
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !256
  tail call void @arm_heavy_mb() #5
  %69 = tail call i16 @llvm.bswap.i16(i16 %ccr.0)
  %add139 = add i32 %mul108, 2050
  %add.ptr140 = getelementptr i8, ptr %11, i32 %add139
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr140, i16 %69) #5, !srcloc !243
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %70 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %do.end68, %do.end30, %do.end
  %retval.0 = phi i32 [ %call18, %do.end30 ], [ 0, %do.end107 ], [ %call48, %do.end68 ], [ -121, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssi_start_pio(ptr nocapture noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cl = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %parent3 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent3, align 8
  %driver_data.i.i73 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i73 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i73, align 4
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 5) #5
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 18
  %14 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %pm_runtime_active.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pm_runtime_active.exit:                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 12, i32 15
  %16 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end_crit_edge, label %do.end

pm_runtime_active.exit.if.end_crit_edge:          ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.42) #8
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %call.i74 = tail call i32 @__pm_runtime_suspend(ptr noundef %18, i32 noundef 13) #5
  br label %cleanup

if.end:                                           ; preds = %pm_runtime_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ttype = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 9
  %19 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp = icmp slt i8 %bf.load, 0
  %channel = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 8
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel, align 4
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %21
  %call.i75 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 5) #5
  br label %do.body19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %21, 8
  %shl17 = shl nuw i32 1, %add
  %or = or i32 %shl17, 16777216
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then13
  %val.0 = phi i32 [ %shl, %if.then13 ], [ %or, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_start_pio.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_start_pio, %if.then24)) #5
          to label %do.end33 [label %if.then24], !srcloc !230

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load27 = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load27)
  %tobool30.not = icmp sgt i8 %bf.load27, -1
  %cond = select i1 %tobool30.not, ptr @.str.46, ptr @.str.45
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_start_pio.__UNIQUE_ID_ddebug238, ptr noundef %3, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond) #5
  br label %do.end33

do.end33:                                         ; preds = %if.then24, %do.body19
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %9, i32 0, i32 1
  %23 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sys, align 4
  %num = getelementptr inbounds %struct.hsi_port, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num, align 8
  %mul = shl i32 %26, 4
  %add34 = add i32 %mul, 2060
  %add.ptr36 = getelementptr i8, ptr %24, i32 %add34
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #5, !srcloc !236
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !257
  %or40 = or i32 %28, %val.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !258
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %or40)
  %30 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sys, align 4
  %32 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num, align 8
  %mul46 = shl i32 %33, 4
  %add47 = add i32 %mul46, 2060
  %add.ptr49 = getelementptr i8, ptr %31, i32 %add47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %29) #5, !srcloc !231
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 4
  %call.i76 = tail call i32 @__pm_runtime_suspend(ptr noundef %35, i32 noundef 13) #5
  %actual_len = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 7
  %36 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %actual_len, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg, i32 0, i32 6
  %37 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end
  %retval.0 = phi i32 [ 0, %do.end33 ], [ -121, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssi_flush_queue(ptr noundef readonly %queue, ptr noundef readnone %cl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %cmp.i.not35 = icmp eq ptr %1, %queue
  br i1 %cmp.i.not35, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool3.not = icmp eq ptr %cl, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.036 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.039, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %node.036 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.039 = load ptr, ptr %node.036, align 4
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %cl4 = getelementptr inbounds %struct.hsi_msg, ptr %node.036, i32 0, i32 1
  %3 = ptrtoint ptr %cl4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cl4, align 4
  %cmp.not = icmp eq ptr %4, %cl
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.036) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.036, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %node.036 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node.036, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %node.036 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %node.036, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.036, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_flush_queue.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_flush_queue, %if.then11)) #5
          to label %do.end [label %if.then11], !srcloc !230

if.then11:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %channel = getelementptr inbounds %struct.hsi_msg, ptr %node.036, i32 0, i32 8
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 4
  %sgt = getelementptr inbounds %struct.hsi_msg, ptr %node.036, i32 0, i32 2
  %15 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sgt, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  %ttype = getelementptr inbounds %struct.hsi_msg, ptr %node.036, i32 0, i32 9
  %19 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %ttype, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %context = getelementptr inbounds %struct.hsi_msg, ptr %node.036, i32 0, i32 3
  %20 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ssi_flush_queue.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.50, i32 noundef %14, ptr noundef %node.036, i32 noundef %18, i32 noundef %bf.cast, ptr noundef %21) #5
  br label %do.end

do.end:                                           ; preds = %if.then11, %list_del.exit
  %destructor = getelementptr inbounds %struct.hsi_msg, ptr %node.036, i32 0, i32 5
  %22 = ptrtoint ptr %destructor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %destructor, align 4
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %23(ptr noundef %node.036) #5
  br label %for.inc

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hsi_free_msg(ptr noundef %node.036) #5
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then14, %land.lhs.true.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %tmp.039, %queue
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsi_free_msg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_pio_thread(i32 noundef %irq, ptr noundef %ssi_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %ssi_port, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ssi_port, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i88 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i88 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i88, align 4
  %sys2 = getelementptr inbounds %struct.omap_ssi_controller, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sys2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sys2, align 4
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #5
  %num = getelementptr inbounds %struct.hsi_port, ptr %ssi_port, i32 0, i32 3
  %channels = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %if.end34.do.body_crit_edge, %entry
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 8
  %mul = shl i32 %11, 4
  %add = add i32 %mul, 2056
  %add.ptr5 = getelementptr i8, ptr %7, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !259
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num, align 8
  %mul12 = shl i32 %14, 4
  %add13 = add i32 %mul12, 2060
  %add.ptr15 = getelementptr i8, ptr %7, i32 %add13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !260
  %16 = and i32 %15, %12
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp91.not = icmp eq i32 %19, 0
  br i1 %cmp91.not, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %ch.092 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %ch.092
  %and19 = and i32 %shl, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.omap_ssi_port, ptr %3, i32 0, i32 9, i32 %ch.092
  tail call fastcc void @ssi_pio_complete(ptr noundef %ssi_port, ptr noundef %arrayidx)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %add20 = add i32 %ch.092, 8
  %shl21 = shl nuw i32 1, %add20
  %and22 = and i32 %shl21, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end.for.inc_crit_edge, label %if.then24

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx25 = getelementptr %struct.omap_ssi_port, ptr %3, i32 0, i32 10, i32 %ch.092
  tail call fastcc void @ssi_pio_complete(ptr noundef %ssi_port, ptr noundef %arrayidx25)
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %ch.092, 1
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body.for.end_crit_edge
  %and27 = and i32 %17, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %for.end.if.end30_crit_edge, label %if.then29

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ssi_break_complete(ptr noundef %ssi_port)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.end.if.end30_crit_edge
  %and31 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %if.then33

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ssi_error(ptr noundef %ssi_port)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %22 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num, align 8
  %mul38 = shl i32 %23, 4
  %add39 = add i32 %mul38, 2056
  %add.ptr41 = getelementptr i8, ptr %7, i32 %add39
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !261
  %25 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num, align 8
  %mul48 = shl i32 %26, 4
  %add49 = add i32 %mul48, 2060
  %add.ptr51 = getelementptr i8, ptr %7, i32 %add49
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %28 = and i32 %27, %24
  %tobool56.not = icmp eq i32 %28, 0
  br i1 %tobool56.not, label %do.end, label %if.end34.do.body_crit_edge

if.end34.do.body_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 4
  %call.i89 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 12, i32 22
  %31 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store volatile i64 %call.i89, ptr %last_busy.i, align 8
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 4
  %call.i90 = tail call i32 @__pm_runtime_suspend(ptr noundef %33, i32 noundef 13) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssi_pio_complete(ptr noundef %port, ptr noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i170 = getelementptr inbounds %struct.device, ptr %port, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i170 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i170, align 4
  %lock = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue, align 4
  %sgt = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 2
  %nents = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %10 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sgt, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %actual_len = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 7
  %14 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %actual_len, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 6
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %ttype = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 9
  %16 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp = icmp slt i8 %bf.load, 0
  %channel = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 8
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel, align 4
  %add = add i32 %18, 8
  %.pn = select i1 %cmp, i32 %18, i32 %add
  %val.0 = shl nuw i32 1, %.pn
  %status11 = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 6
  %19 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp12 = icmp eq i32 %20, 2
  br i1 %cmp12, label %if.then13, label %if.end.if.end83_crit_edge

if.end.if.end83_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then13:                                        ; preds = %if.end
  %21 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sgt, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %and.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !239

do.body2.i.i:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !263
  unreachable

sg_virt.exit:                                     ; preds = %if.then13
  %and.i.i = and i32 %24, -4
  %25 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %25) #5
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %22, i32 0, i32 1
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %27
  %actual_len17 = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 7
  %28 = ptrtoint ptr %actual_len17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %actual_len17, align 4
  %add.ptr18 = getelementptr i8, ptr %add.ptr.i, i32 %29
  %30 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load20 = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load20)
  %cmp23 = icmp slt i8 %bf.load20, 0
  br i1 %cmp23, label %do.body, label %if.else28

do.body:                                          ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr18, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %sst_base = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 4
  %34 = ptrtoint ptr %sst_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sst_base, align 4
  %channel25 = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 8
  %36 = ptrtoint ptr %channel25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel25, align 4
  %mul = shl i32 %37, 2
  %add26 = add i32 %mul, 128
  %add.ptr27 = getelementptr i8, ptr %35, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %33) #5, !srcloc !231
  br label %do.body37

if.else28:                                        ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %ssr_base = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 5
  %38 = ptrtoint ptr %ssr_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ssr_base, align 4
  %channel29 = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 8
  %40 = ptrtoint ptr %channel29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channel29, align 4
  %mul30 = shl i32 %41, 2
  %add31 = add i32 %mul30, 128
  %add.ptr32 = getelementptr i8, ptr %39, i32 %add31
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #5, !srcloc !236
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !265
  %44 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %add.ptr18, align 4
  br label %do.body37

do.body37:                                        ; preds = %if.else28, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_pio_complete.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_pio_complete, %if.then43)) #5
          to label %do.end52 [label %if.then43], !srcloc !230

if.then43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %channel45 = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 8
  %45 = ptrtoint ptr %channel45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel45, align 4
  %47 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load47 = load i8, ptr %ttype, align 4
  %bf.lshr48 = lshr i8 %bf.load47, 7
  %bf.cast49 = zext i8 %bf.lshr48 to i32
  %48 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_pio_complete.__UNIQUE_ID_ddebug248, ptr noundef %port, ptr noundef nonnull @.str.67, i32 noundef %46, i32 noundef %bf.cast49, i32 noundef %49) #5
  br label %do.end52

do.end52:                                         ; preds = %if.then43, %do.body37
  %50 = ptrtoint ptr %actual_len17 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %actual_len17, align 4
  %add54 = add i32 %51, 4
  store i32 %add54, ptr %actual_len17, align 4
  %52 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sgt, align 4
  %length58 = getelementptr inbounds %struct.scatterlist, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %length58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add54, i32 %55)
  %cmp59.not = icmp ult i32 %add54, %55
  br i1 %cmp59.not, label %if.end62, label %if.end62.thread

if.end62.thread:                                  ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %status11 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %status11, align 4
  br label %land.lhs.true

if.end62:                                         ; preds = %do.end52
  %57 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load i32, ptr %status11, align 4
  %58 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr, label %if.end62.if.end83_crit_edge [
    i32 2, label %if.end62.do.body74_crit_edge
    i32 0, label %if.end62.land.lhs.true_crit_edge
  ]

if.end62.land.lhs.true_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end62.do.body74_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

if.end62.if.end83_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end62.land.lhs.true_crit_edge, %if.end62.thread
  %59 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load69 = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load69)
  %cmp72 = icmp slt i8 %bf.load69, 0
  br i1 %cmp72, label %land.lhs.true.do.body74_crit_edge, label %land.lhs.true.if.end83_crit_edge

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

land.lhs.true.do.body74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

do.body74:                                        ; preds = %land.lhs.true.do.body74_crit_edge, %if.end62.do.body74_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !266
  tail call void @arm_heavy_mb() #5
  %60 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 1
  %61 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sys, align 4
  %num = getelementptr inbounds %struct.hsi_port, ptr %port, i32 0, i32 3
  %63 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num, align 8
  %mul77 = shl i32 %64, 4
  %add78 = add i32 %mul77, 2056
  %add.ptr80 = getelementptr i8, ptr %62, i32 %add78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %60) #5, !srcloc !231
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %cleanup

if.end83:                                         ; preds = %land.lhs.true.if.end83_crit_edge, %if.end62.if.end83_crit_edge, %if.end.if.end83_crit_edge
  %sys86 = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 1
  %65 = ptrtoint ptr %sys86 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sys86, align 4
  %num87 = getelementptr inbounds %struct.hsi_port, ptr %port, i32 0, i32 3
  %67 = ptrtoint ptr %num87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num87, align 8
  %mul88 = shl i32 %68, 4
  %add89 = add i32 %mul88, 2060
  %add.ptr91 = getelementptr i8, ptr %66, i32 %add89
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #5, !srcloc !236
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !267
  %71 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load96 = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load96)
  %cmp99 = icmp slt i8 %bf.load96, 0
  br i1 %cmp99, label %if.then100, label %if.end83.if.end103_crit_edge

if.end83.if.end103_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then100:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %5, i32 0, i32 1
  %72 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 12, i32 22
  %74 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %75 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev, align 4
  %call.i171 = tail call i32 @__pm_runtime_suspend(ptr noundef %76, i32 noundef 13) #5
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end83.if.end103_crit_edge
  %neg = xor i32 %val.0, -1
  %and = and i32 %70, %neg
  %77 = tail call i32 @llvm.bswap.i32(i32 %and)
  %78 = ptrtoint ptr %sys86 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sys86, align 4
  %80 = ptrtoint ptr %num87 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num87, align 8
  %mul106 = shl i32 %81, 4
  %add107 = add i32 %mul106, 2060
  %add.ptr109 = getelementptr i8, ptr %79, i32 %add107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %77) #5, !srcloc !231
  %82 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %83 = ptrtoint ptr %sys86 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sys86, align 4
  %85 = ptrtoint ptr %num87 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num87, align 8
  %mul112 = shl i32 %86, 4
  %add113 = add i32 %mul112, 2056
  %add.ptr115 = getelementptr i8, ptr %84, i32 %add113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %82) #5, !srcloc !231
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end103.list_del.exit_crit_edge

if.end103.list_del.exit_crit_edge:                ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i, align 4
  %89 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev1.i.i.i, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %90, ptr %88, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end103.list_del.exit_crit_edge
  %93 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %7, i32 0, i32 4
  %95 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %complete, align 4
  tail call void %96(ptr noundef %7) #5
  tail call fastcc void @ssi_transfer(ptr noundef %5, ptr noundef %queue)
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %do.body74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssi_break_complete(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i69 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i69 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i69, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_break_complete.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_break_complete, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !230

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_break_complete.__UNIQUE_ID_ddebug247, ptr noundef %port, ptr noundef nonnull @.str.69) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.omap_ssi_port, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sys, align 4
  %num = getelementptr inbounds %struct.hsi_port, ptr %port, i32 0, i32 3
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 8
  %mul = shl i32 %9, 4
  %add = add i32 %mul, 2060
  %add.ptr9 = getelementptr i8, ptr %7, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !268
  %11 = and i32 %10, -3
  %12 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sys, align 4
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num, align 8
  %mul15 = shl i32 %15, 4
  %add16 = add i32 %mul15, 2060
  %add.ptr18 = getelementptr i8, ptr %13, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %11) #5, !srcloc !231
  %ssr_base = getelementptr inbounds %struct.omap_ssi_port, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %ssr_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ssr_base, align 4
  %add.ptr19 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #5, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !269
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sys, align 4
  %20 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num, align 8
  %mul25 = shl i32 %21, 4
  %add26 = add i32 %mul25, 2056
  %add.ptr28 = getelementptr i8, ptr %19, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 2) #5, !srcloc !231
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %brkqueue = getelementptr inbounds %struct.omap_ssi_port, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %brkqueue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %brkqueue, align 4
  %cmp.not71 = icmp eq ptr %23, %brkqueue
  br i1 %cmp.not71, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %msg.072 = phi ptr [ %tmp2.0, %list_del.exit.for.body_crit_edge ], [ %23, %do.end.for.body_crit_edge ]
  %24 = ptrtoint ptr %msg.072 to i32
  call void @__asan_load4_noabort(i32 %24)
  %tmp2.0 = load ptr, ptr %msg.072, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %msg.072, i32 0, i32 6
  %25 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %status, align 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.072) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %msg.072, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %msg.072 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %msg.072, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %32 = ptrtoint ptr %msg.072 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.072, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %msg.072, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %msg.072, i32 0, i32 4
  %34 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %complete, align 4
  tail call void %35(ptr noundef %msg.072) #5
  %cmp.not = icmp eq ptr %tmp2.0, %brkqueue
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssi_error(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i137 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i137 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i137, align 4
  %ssr_base = getelementptr inbounds %struct.omap_ssi_port, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ssr_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ssr_base, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !236
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !270
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %port, ptr noundef nonnull @.str.70, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body8, label %if.end18

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_error.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_error, %if.then14)) #5
          to label %cleanup [label %if.then14], !srcloc !230

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_error.__UNIQUE_ID_ddebug246, ptr noundef %port, ptr noundef nonnull @.str.72) #5
  br label %cleanup

if.end18:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.omap_ssi_controller, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %gdd = getelementptr inbounds %struct.omap_ssi_controller, ptr %5, i32 0, i32 2
  %arrayidx = getelementptr %struct.omap_ssi_controller, ptr %5, i32 0, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.end18.for.inc_crit_edge, label %land.lhs.true

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end18
  %ttype = getelementptr inbounds %struct.hsi_msg, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp21 = icmp sgt i8 %bf.load, -1
  br i1 %cmp21, label %if.then22, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gdd, align 4
  %add.ptr23 = getelementptr i8, ptr %14, i32 2050
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23, i16 0) #5, !srcloc !243
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %land.lhs.true.for.inc_crit_edge, %if.end18.for.inc_crit_edge
  %val.1 = phi i32 [ 1, %if.then22 ], [ 0, %land.lhs.true.for.inc_crit_edge ], [ 0, %if.end18.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.omap_ssi_controller, ptr %5, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool20.not.1 = icmp eq ptr %17, null
  br i1 %tobool20.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %ttype.1 = getelementptr inbounds %struct.hsi_msg, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %ttype.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.1 = load i8, ptr %ttype.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %cmp21.1 = icmp sgt i8 %bf.load.1, -1
  br i1 %cmp21.1, label %if.then22.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then22.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gdd, align 4
  %add.ptr23.1 = getelementptr i8, ptr %20, i32 2114
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.1, i16 0) #5, !srcloc !243
  %or.1 = or i32 %val.1, 2
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then22.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %val.1.1 = phi i32 [ %or.1, %if.then22.1 ], [ %val.1, %land.lhs.true.1.for.inc.1_crit_edge ], [ %val.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.omap_ssi_controller, ptr %5, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2, align 4
  %tobool20.not.2 = icmp eq ptr %23, null
  br i1 %tobool20.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %ttype.2 = getelementptr inbounds %struct.hsi_msg, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %ttype.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.2 = load i8, ptr %ttype.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.2)
  %cmp21.2 = icmp sgt i8 %bf.load.2, -1
  br i1 %cmp21.2, label %if.then22.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then22.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gdd, align 4
  %add.ptr23.2 = getelementptr i8, ptr %26, i32 2178
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.2, i16 0) #5, !srcloc !243
  %or.2 = or i32 %val.1.1, 4
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then22.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %val.1.2 = phi i32 [ %or.2, %if.then22.2 ], [ %val.1.1, %land.lhs.true.2.for.inc.2_crit_edge ], [ %val.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.omap_ssi_controller, ptr %5, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.3, align 4
  %tobool20.not.3 = icmp eq ptr %29, null
  br i1 %tobool20.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %ttype.3 = getelementptr inbounds %struct.hsi_msg, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %ttype.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.3 = load i8, ptr %ttype.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.3)
  %cmp21.3 = icmp sgt i8 %bf.load.3, -1
  br i1 %cmp21.3, label %if.then22.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then22.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gdd, align 4
  %add.ptr23.3 = getelementptr i8, ptr %32, i32 2242
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.3, i16 0) #5, !srcloc !243
  %or.3 = or i32 %val.1.2, 8
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then22.3, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %val.1.3 = phi i32 [ %or.3, %if.then22.3 ], [ %val.1.2, %land.lhs.true.3.for.inc.3_crit_edge ], [ %val.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.omap_ssi_controller, ptr %5, i32 0, i32 6, i32 4
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.4, align 4
  %tobool20.not.4 = icmp eq ptr %35, null
  br i1 %tobool20.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %ttype.4 = getelementptr inbounds %struct.hsi_msg, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %ttype.4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.4 = load i8, ptr %ttype.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.4)
  %cmp21.4 = icmp sgt i8 %bf.load.4, -1
  br i1 %cmp21.4, label %if.then22.4, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then22.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gdd, align 4
  %add.ptr23.4 = getelementptr i8, ptr %38, i32 2306
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.4, i16 0) #5, !srcloc !243
  %or.4 = or i32 %val.1.3, 16
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then22.4, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %val.1.4 = phi i32 [ %or.4, %if.then22.4 ], [ %val.1.3, %land.lhs.true.4.for.inc.4_crit_edge ], [ %val.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.omap_ssi_controller, ptr %5, i32 0, i32 6, i32 5
  %40 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.5, align 4
  %tobool20.not.5 = icmp eq ptr %41, null
  br i1 %tobool20.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %ttype.5 = getelementptr inbounds %struct.hsi_msg, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %ttype.5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.5 = load i8, ptr %ttype.5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.5)
  %cmp21.5 = icmp sgt i8 %bf.load.5, -1
  br i1 %cmp21.5, label %if.then22.5, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then22.5:                                      ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gdd, align 4
  %add.ptr23.5 = getelementptr i8, ptr %44, i32 2370
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.5, i16 0) #5, !srcloc !243
  %or.5 = or i32 %val.1.4, 32
  %45 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then22.5, %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %val.1.5 = phi i32 [ %or.5, %if.then22.5 ], [ %val.1.4, %land.lhs.true.5.for.inc.5_crit_edge ], [ %val.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %arrayidx.6 = getelementptr %struct.omap_ssi_controller, ptr %5, i32 0, i32 6, i32 6
  %46 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.6, align 4
  %tobool20.not.6 = icmp eq ptr %47, null
  br i1 %tobool20.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %ttype.6 = getelementptr inbounds %struct.hsi_msg, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %ttype.6 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.6 = load i8, ptr %ttype.6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.6)
  %cmp21.6 = icmp sgt i8 %bf.load.6, -1
  br i1 %cmp21.6, label %if.then22.6, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.then22.6:                                      ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gdd, align 4
  %add.ptr23.6 = getelementptr i8, ptr %50, i32 2434
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.6, i16 0) #5, !srcloc !243
  %or.6 = or i32 %val.1.5, 64
  %51 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then22.6, %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %val.1.6 = phi i32 [ %or.6, %if.then22.6 ], [ %val.1.5, %land.lhs.true.6.for.inc.6_crit_edge ], [ %val.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx.7 = getelementptr %struct.omap_ssi_controller, ptr %5, i32 0, i32 6, i32 7
  %52 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.7, align 4
  %tobool20.not.7 = icmp eq ptr %53, null
  br i1 %tobool20.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %ttype.7 = getelementptr inbounds %struct.hsi_msg, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %ttype.7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.7 = load i8, ptr %ttype.7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.7)
  %cmp21.7 = icmp sgt i8 %bf.load.7, -1
  br i1 %cmp21.7, label %if.then22.7, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

if.then22.7:                                      ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gdd, align 4
  %add.ptr23.7 = getelementptr i8, ptr %56, i32 2498
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.7, i16 0) #5, !srcloc !243
  %or.7 = or i32 %val.1.6, 128
  %57 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then22.7, %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %val.1.7 = phi i32 [ %or.7, %if.then22.7 ], [ %val.1.6, %land.lhs.true.7.for.inc.7_crit_edge ], [ %val.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %5, i32 0, i32 1
  %58 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sys, align 4
  %add.ptr30 = getelementptr i8, ptr %59, i32 2052
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #5, !srcloc !236
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !271
  %neg = xor i32 %val.1.7, -1
  %and = and i32 %61, %neg
  %62 = tail call i32 @llvm.bswap.i32(i32 %and)
  %63 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sys, align 4
  %add.ptr35 = getelementptr i8, ptr %64, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %62) #5, !srcloc !231
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  %lock37 = getelementptr inbounds %struct.omap_ssi_port, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock37) #5
  %65 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sys, align 4
  %num = getelementptr inbounds %struct.hsi_port, ptr %port, i32 0, i32 3
  %67 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num, align 8
  %mul41 = shl i32 %68, 4
  %add42 = add i32 %mul41, 2060
  %add.ptr44 = getelementptr i8, ptr %66, i32 %add42
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !272
  %70 = and i32 %69, -16711682
  %71 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sys, align 4
  %73 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num, align 8
  %mul51 = shl i32 %74, 4
  %add52 = add i32 %mul51, 2060
  %add.ptr54 = getelementptr i8, ptr %72, i32 %add52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %70) #5, !srcloc !231
  %75 = ptrtoint ptr %ssr_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ssr_base, align 4
  %add.ptr56 = getelementptr i8, ptr %76, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %8) #5, !srcloc !231
  %77 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sys, align 4
  %79 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num, align 8
  %mul59 = shl i32 %80, 4
  %add60 = add i32 %mul59, 2056
  %add.ptr62 = getelementptr i8, ptr %78, i32 %add60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 1) #5, !srcloc !231
  %channels = getelementptr inbounds %struct.omap_ssi_port, ptr %1, i32 0, i32 8
  %81 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp64142.not = icmp eq i32 %82, 0
  br i1 %cmp64142.not, label %for.inc.7.for.end82_crit_edge, label %for.inc.7.for.body65_crit_edge

for.inc.7.for.body65_crit_edge:                   ; preds = %for.inc.7
  br label %for.body65

for.inc.7.for.end82_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end82

for.body65:                                       ; preds = %for.inc80.for.body65_crit_edge, %for.inc.7.for.body65_crit_edge
  %i.1143 = phi i32 [ %inc81, %for.inc80.for.body65_crit_edge ], [ 0, %for.inc.7.for.body65_crit_edge ]
  %arrayidx66 = getelementptr %struct.omap_ssi_port, ptr %1, i32 0, i32 10, i32 %i.1143
  %83 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %arrayidx66, align 4
  %cmp.i.not = icmp eq ptr %84, %arrayidx66
  br i1 %cmp.i.not, label %for.body65.for.inc80_crit_edge, label %if.end70

for.body65.for.inc80_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc80

if.end70:                                         ; preds = %for.body65
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %84) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end70.list_del.exit_crit_edge

if.end70.list_del.exit_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end70.list_del.exit_crit_edge
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 256 to ptr), ptr %84, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %84, i32 0, i32 6
  %93 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 4, ptr %status, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock37) #5
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %84, i32 0, i32 4
  %94 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %complete, align 4
  tail call void %95(ptr noundef %84) #5
  tail call fastcc void @ssi_transfer(ptr noundef %1, ptr noundef %arrayidx66)
  tail call void @_raw_spin_lock(ptr noundef %lock37) #5
  br label %for.inc80

for.inc80:                                        ; preds = %list_del.exit, %for.body65.for.inc80_crit_edge
  %inc81 = add nuw i32 %i.1143, 1
  %96 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %channels, align 4
  %cmp64 = icmp ult i32 %inc81, %97
  br i1 %cmp64, label %for.inc80.for.body65_crit_edge, label %for.inc80.for.end82_crit_edge

for.inc80.for.end82_crit_edge:                    ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end82

for.inc80.for.body65_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body65

for.end82:                                        ; preds = %for.inc80.for.end82_crit_edge, %for.inc.7.for.end82_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock37) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end82, %if.then14, %do.body8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssi_transfer(ptr noundef %omap_port, ptr noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %omap_port, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 5) #5
  %lock = getelementptr inbounds %struct.omap_ssi_port, ptr %omap_port, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %call123 = tail call fastcc i32 @ssi_start_transfer(ptr noundef %queue)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp224 = icmp slt i32 %call123, 0
  br i1 %cmp224, label %entry.if.then_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

if.then:                                          ; preds = %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %status = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %status, align 4
  %actual_len = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %actual_len, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %complete = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %complete, align 4
  tail call void %15(ptr noundef %3) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %call1 = tail call fastcc i32 @ssi_start_transfer(ptr noundef %queue)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.if.then_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %call.i21 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i21, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %call.i22 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_wake_thread(i32 noundef %irq, ptr noundef %ssi_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %ssi_port, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ssi_port, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i81 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i81 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i81, align 4
  %wake_gpio.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %wake_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wake_gpio.i, align 4
  %call1.i = tail call i32 @gpiod_get_value(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %do.body22, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 18
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #5
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_wake_thread.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_wake_thread, %if.then12)) #5
          to label %do.end [label %if.then12], !srcloc !230

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_wake_thread.__UNIQUE_ID_ddebug249, ptr noundef %1, ptr noundef nonnull @.str.80) #5
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %wktest = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %wktest to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %wktest, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %do.end.if.end20_crit_edge, label %do.body16

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

do.body16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !273
  tail call void @arm_heavy_mb() #5
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sys, align 4
  %num = getelementptr inbounds %struct.hsi_port, ptr %ssi_port, i32 0, i32 3
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num, align 8
  %mul = shl i32 %14, 4
  %add = add i32 %mul, 3080
  %add.ptr19 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 16777216) #5, !srcloc !231
  br label %if.end20

if.end20:                                         ; preds = %do.body16, %do.end.if.end20_crit_edge
  %call21 = tail call i32 @hsi_event(ptr noundef %ssi_port, i32 noundef 0) #5
  br label %if.end62

do.body22:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_wake_thread.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_wake_thread, %if.then34)) #5
          to label %do.end38 [label %if.then34], !srcloc !230

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_wake_thread.__UNIQUE_ID_ddebug250, ptr noundef %1, ptr noundef nonnull @.str.81) #5
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body22
  %wktest39 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 17
  %15 = ptrtoint ptr %wktest39 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load40 = load i8, ptr %wktest39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load40)
  %bf.cast42.not = icmp sgt i8 %bf.load40, -1
  br i1 %bf.cast42.not, label %do.end38.if.end52_crit_edge, label %do.body44

do.end38.if.end52_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.body44:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !274
  tail call void @arm_heavy_mb() #5
  %sys47 = getelementptr inbounds %struct.omap_ssi_controller, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %sys47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sys47, align 4
  %num48 = getelementptr inbounds %struct.hsi_port, ptr %ssi_port, i32 0, i32 3
  %18 = ptrtoint ptr %num48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num48, align 8
  %mul49 = shl i32 %19, 4
  %add50 = add i32 %mul49, 3076
  %add.ptr51 = getelementptr i8, ptr %17, i32 %add50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 16777216) #5, !srcloc !231
  br label %if.end52

if.end52:                                         ; preds = %do.body44, %do.end38.if.end52_crit_edge
  %call53 = tail call i32 @hsi_event(ptr noundef %ssi_port, i32 noundef 1) #5
  %flags54 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 18
  %call55 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags54) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end52.if.end62_crit_edge, label %if.then57

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %pdev58 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev58, align 4
  %call.i82 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i82, ptr %last_busy.i, align 8
  %23 = ptrtoint ptr %pdev58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev58, align 4
  %call.i83 = tail call i32 @__pm_runtime_suspend(ptr noundef %24, i32 noundef 13) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.end52.if.end62_crit_edge, %if.end20
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_port_regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ssi_port_regs_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_port_regs_show(ptr noundef %m, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i.i236 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i236 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i236, align 4
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sys, align 4
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #5
  %wake_irq = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %wake_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wake_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp sgt i32 %13, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %wake_gpio.i = getelementptr inbounds %struct.omap_ssi_port, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %wake_gpio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wake_gpio.i, align 4
  %call1.i = tail call i32 @gpiod_get_value(ptr noundef %17) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.85, i32 noundef %call1.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num, align 8
  %mul = shl i32 %19, 4
  %add = add i32 %mul, 3072
  %add.ptr4 = getelementptr i8, ptr %9, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !236
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !275
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.86, i32 noundef %21) #5
  %22 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num, align 8
  %mul11 = shl i32 %23, 4
  %add12 = add i32 %mul11, 2060
  %add.ptr14 = getelementptr i8, ptr %9, i32 %add12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !236
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !276
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.87, i32 noundef 0, i32 noundef %25) #5
  %26 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num, align 8
  %mul21 = shl i32 %27, 4
  %add22 = add i32 %mul21, 2056
  %add.ptr24 = getelementptr i8, ptr %9, i32 %add22
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #5, !srcloc !236
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !277
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.88, i32 noundef 0, i32 noundef %29) #5
  %sst_base = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %sst_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sst_base, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.89) #5
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !236
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !278
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.90, i32 noundef %33) #5
  %add.ptr36 = getelementptr i8, ptr %31, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #5, !srcloc !236
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !279
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.91, i32 noundef %35) #5
  %add.ptr42 = getelementptr i8, ptr %31, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #5, !srcloc !236
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !280
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.92, i32 noundef %37) #5
  %add.ptr48 = getelementptr i8, ptr %31, i32 24
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #5, !srcloc !236
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !281
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef %39) #5
  %add.ptr54 = getelementptr i8, ptr %31, i32 36
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #5, !srcloc !236
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !282
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.94, i32 noundef %41) #5
  %add.ptr60 = getelementptr i8, ptr %31, i32 40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #5, !srcloc !236
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !283
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.95, i32 noundef %43) #5
  %add.ptr66 = getelementptr i8, ptr %31, i32 12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #5, !srcloc !236
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !284
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.96, i32 noundef %45) #5
  %add.ptr72 = getelementptr i8, ptr %31, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #5, !srcloc !236
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !285
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.97, i32 noundef %47) #5
  %add.ptr78 = getelementptr i8, ptr %31, i32 32
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #5, !srcloc !236
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !286
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.98, i32 noundef %49) #5
  %channels = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 8
  %50 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp82238.not = icmp eq i32 %51, 0
  br i1 %cmp82238.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %ch.0239 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %mul85 = shl i32 %ch.0239, 2
  %add86 = add i32 %mul85, 128
  %add.ptr87 = getelementptr i8, ptr %31, i32 %add86
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #5, !srcloc !236
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !287
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.99, i32 noundef %ch.0239, i32 noundef %53) #5
  %inc = add nuw i32 %ch.0239, 1
  %54 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %channels, align 4
  %cmp82 = icmp ult i32 %inc, %55
  br i1 %cmp82, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %ssr_base = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 5
  %56 = ptrtoint ptr %ssr_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ssr_base, align 4
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.100) #5
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !236
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !288
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, i32 noundef %59) #5
  %add.ptr99 = getelementptr i8, ptr %57, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #5, !srcloc !236
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !289
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.91, i32 noundef %61) #5
  %add.ptr105 = getelementptr i8, ptr %57, i32 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #5, !srcloc !236
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !290
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.92, i32 noundef %63) #5
  %add.ptr111 = getelementptr i8, ptr %57, i32 40
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #5, !srcloc !236
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !291
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.94, i32 noundef %65) #5
  %add.ptr117 = getelementptr i8, ptr %57, i32 52
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #5, !srcloc !236
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !292
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, i32 noundef %67) #5
  %add.ptr123 = getelementptr i8, ptr %57, i32 12
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #5, !srcloc !236
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !293
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.103, i32 noundef %69) #5
  %add.ptr129 = getelementptr i8, ptr %57, i32 16
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #5, !srcloc !236
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !294
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.97, i32 noundef %71) #5
  %add.ptr135 = getelementptr i8, ptr %57, i32 28
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #5, !srcloc !236
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !295
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.98, i32 noundef %73) #5
  %add.ptr141 = getelementptr i8, ptr %57, i32 32
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #5, !srcloc !236
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !296
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.104, i32 noundef %75) #5
  %add.ptr147 = getelementptr i8, ptr %57, i32 36
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147) #5, !srcloc !236
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !297
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.105, i32 noundef %77) #5
  %78 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp153240.not = icmp eq i32 %79, 0
  br i1 %cmp153240.not, label %for.end.for.end165_crit_edge, label %for.end.for.body154_crit_edge

for.end.for.body154_crit_edge:                    ; preds = %for.end
  br label %for.body154

for.end.for.end165_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end165

for.body154:                                      ; preds = %for.body154.for.body154_crit_edge, %for.end.for.body154_crit_edge
  %ch.1241 = phi i32 [ %inc164, %for.body154.for.body154_crit_edge ], [ 0, %for.end.for.body154_crit_edge ]
  %mul157 = shl i32 %ch.1241, 2
  %add158 = add i32 %mul157, 128
  %add.ptr159 = getelementptr i8, ptr %57, i32 %add158
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr159) #5, !srcloc !236
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !298
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.99, i32 noundef %ch.1241, i32 noundef %81) #5
  %inc164 = add nuw i32 %ch.1241, 1
  %82 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %channels, align 4
  %cmp153 = icmp ult i32 %inc164, %83
  br i1 %cmp153, label %for.body154.for.body154_crit_edge, label %for.body154.for.end165_crit_edge

for.body154.for.end165_crit_edge:                 ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end165

for.body154.for.body154_crit_edge:                ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body154

for.end165:                                       ; preds = %for.body154.for.end165_crit_edge, %for.end.for.end165_crit_edge
  %84 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev, align 4
  %call.i237 = tail call i32 @__pm_runtime_suspend(ptr noundef %85, i32 noundef 13) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_sst_div_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ssi_div_get, ptr noundef nonnull @ssi_div_set, ptr noundef nonnull @.str.106) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_div_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  %sst_base = getelementptr inbounds %struct.omap_ssi_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sst_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sst_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !236
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !299
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %val, align 8
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %call.i8 = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_div_set(ptr nocapture noundef readonly %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 127, i64 %val)
  %cmp = icmp ugt i64 %val, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !300
  tail call void @arm_heavy_mb() #5
  %conv = trunc i64 %val to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %sst_base = getelementptr inbounds %struct.omap_ssi_port, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %sst_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sst_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #5, !srcloc !231
  %divisor = getelementptr inbounds %struct.omap_ssi_port, ptr %1, i32 0, i32 22, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %divisor, align 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %call.i11 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsi_port_unregister_clients(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hsi_dummy_msg(ptr nocapture noundef readnone %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hsi_dummy_cl(ptr nocapture noundef readnone %cl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_ssi_port_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i.i22 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i22, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_ssi_port_runtime_suspend.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_ssi_port_runtime_suspend, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !230

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_ssi_port_runtime_suspend.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.108) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  tail call void @arm_heavy_mb() #5
  %sst_base.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %sst_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sst_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  tail call void @arm_heavy_mb() #5
  %ssr_base.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %ssr_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ssr_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #5, !srcloc !231
  %12 = ptrtoint ptr %ssr_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ssr_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  %get_loss = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 13
  %15 = ptrtoint ptr %get_loss to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_loss, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %do.end.if.end14_crit_edge, label %if.then9

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent12 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %parent12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent12, align 8
  %call13 = tail call i32 %16(ptr noundef %18) #5
  %loss_count = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 24
  %19 = ptrtoint ptr %loss_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call13, ptr %loss_count, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %do.end.if.end14_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i, align 4
  %sys.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sys.i, align 4
  %num.i = getelementptr inbounds %struct.hsi_port, ptr %21, i32 0, i32 3
  %28 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num.i, align 8
  %mul.i = shl i32 %29, 4
  %add.i = add i32 %mul.i, 2060
  %add.ptr5.i23 = getelementptr i8, ptr %27, i32 %add.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i23) #5, !srcloc !236
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !301
  %sys_mpu_enable.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 21
  %32 = ptrtoint ptr %sys_mpu_enable.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sys_mpu_enable.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_ssi_port_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i.i24 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i24, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_ssi_port_runtime_resume.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_ssi_port_runtime_resume, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !230

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_ssi_port_runtime_resume.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.110) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %get_loss = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %get_loss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_loss, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %do.end.if.end13_crit_edge, label %land.lhs.true

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %do.end
  %loss_count = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 24
  %10 = ptrtoint ptr %loss_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %loss_count, align 4
  %parent10 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %parent10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent10, align 8
  %call11 = tail call i32 %9(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call11)
  %cmp = icmp eq i32 %11, %call11
  br i1 %cmp, label %land.lhs.true.mode_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true.mode_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %mode

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i, align 4
  %sys_mpu_enable.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 21
  %20 = ptrtoint ptr %sys_mpu_enable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sys_mpu_enable.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %sys.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sys.i, align 4
  %num.i = getelementptr inbounds %struct.hsi_port, ptr %15, i32 0, i32 3
  %25 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num.i, align 8
  %mul.i = shl i32 %26, 4
  %add.i = add i32 %mul.i, 2060
  %add.ptr5.i = getelementptr i8, ptr %24, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %22) #5, !srcloc !231
  %sst_base.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %sst_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sst_base.i, align 4
  %frame_size.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 22, i32 2
  %29 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %frame_size.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %add.ptr6.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %31) #5, !srcloc !231
  %channels.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 22, i32 1
  %32 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channels.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  %add.ptr8.i = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %34) #5, !srcloc !231
  %35 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 22, i32 3
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %add.ptr10.i = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %38) #5, !srcloc !231
  %ssr_base.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 5
  %39 = ptrtoint ptr %ssr_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ssr_base.i, align 4
  %frame_size11.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 23, i32 2
  %41 = ptrtoint ptr %frame_size11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %frame_size11.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %add.ptr12.i = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %43) #5, !srcloc !231
  %channels14.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 23, i32 1
  %44 = ptrtoint ptr %channels14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channels14.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  %add.ptr15.i = getelementptr i8, ptr %40, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %46) #5, !srcloc !231
  %47 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 23, i32 3
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  %add.ptr17.i = getelementptr i8, ptr %40, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %50) #5, !srcloc !231
  br label %mode

mode:                                             ; preds = %if.end13, %land.lhs.true.mode_crit_edge
  %divisor.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 22, i32 3, i32 0, i32 1
  %51 = ptrtoint ptr %divisor.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %divisor.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  %sst_base.i25 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 4
  %54 = ptrtoint ptr %sst_base.i25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sst_base.i25, align 4
  %add.ptr.i = getelementptr i8, ptr %55, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %53) #5, !srcloc !231
  %sst.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 22
  %56 = ptrtoint ptr %sst.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sst.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #5
  %59 = ptrtoint ptr %sst_base.i25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sst_base.i25, align 4
  %add.ptr.i27 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %58) #5, !srcloc !231
  %ssr.i = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 23
  %61 = ptrtoint ptr %ssr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ssr.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  %ssr_base.i28 = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 5
  %64 = ptrtoint ptr %ssr_base.i28 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ssr_base.i28, align 4
  %add.ptr3.i = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %63) #5, !srcloc !231
  %66 = ptrtoint ptr %ssr_base.i28 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ssr_base.i28, align 4
  %add.ptr5.i29 = getelementptr i8, ptr %67, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i29) #5, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !302
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !211, !213, !215, !216, !217, !219, !220}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1402, i32 11}
!2 = !{ptr @ssi_port_pdriver, !3, !"ssi_port_pdriver", i1 false, i1 false}
!3 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1398, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 427, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ssi_calculate_div.__UNIQUE_ID_ddebug240, !5, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1136, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ssi_port_probe.__UNIQUE_ID_ddebug251, !11, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1139, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ssi_port_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @ssi_port_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1150, i32 3}
!22 = !{ptr @ssi_port_probe._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ssi_port_probe._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1158, i32 3}
!26 = !{ptr @ssi_port_probe._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ssi_port_probe._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1163, i32 41}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1166, i32 3}
!32 = !{ptr @ssi_port_probe._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ssi_port_probe._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ssi_port_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1179, i32 2}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ssi_port_probe.__key.21, !35, !"__key", i1 false, i1 false}
!38 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ssi_port_probe.__key.23, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1180, i32 2}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1194, i32 31}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1198, i32 31}
!46 = !{ptr @ssi_port_probe.__key.27, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1211, i32 2}
!48 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ssi_port_probe.__key.29, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1212, i32 2}
!51 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1229, i32 2}
!54 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ssi_port_probe._entry.31, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ssi_port_probe._entry_ptr.34, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 412, i32 2}
!59 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ssi_async.__UNIQUE_ID_ddebug239, !58, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 225, i32 3}
!63 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ssi_start_dma._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @ssi_start_dma._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 234, i32 4}
!69 = !{ptr @ssi_start_dma.__UNIQUE_ID_ddebug235, !68, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!70 = !{ptr @ssi_start_dma.__UNIQUE_ID_ddebug236, !71, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!71 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 251, i32 4}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 265, i32 2}
!74 = !{ptr @ssi_start_dma.__UNIQUE_ID_ddebug237, !73, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 297, i32 3}
!77 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ssi_start_pio._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ssi_start_pio._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 309, i32 2}
!82 = !{ptr @ssi_start_pio.__UNIQUE_ID_ddebug238, !81, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!83 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 472, i32 3}
!87 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ssi_setup._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ssi_setup._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 444, i32 3}
!92 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ssi_flush_queue.__UNIQUE_ID_ddebug241, !91, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 602, i32 2}
!96 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ssi_start_tx.__UNIQUE_ID_ddebug244, !95, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 623, i32 2}
!100 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ssi_stop_tx.__UNIQUE_ID_ddebug245, !99, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1102, i32 3}
!104 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ssi_port_get_iomem._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @ssi_port_get_iomem._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1108, i32 3}
!109 = !{ptr @ssi_port_get_iomem._entry.57, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ssi_port_get_iomem._entry_ptr.59, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1114, i32 3}
!113 = !{ptr @ssi_port_get_iomem._entry.60, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @ssi_port_get_iomem._entry_ptr.62, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1045, i32 35}
!117 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1047, i32 3}
!119 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ssi_port_irq._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @ssi_port_irq._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 921, i32 3}
!124 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ssi_pio_complete.__UNIQUE_ID_ddebug248, !123, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 872, i32 2}
!128 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ssi_break_complete.__UNIQUE_ID_ddebug247, !127, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!130 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 818, i32 2}
!132 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ssi_error._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @ssi_error._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 820, i32 3}
!137 = !{ptr @ssi_error.__UNIQUE_ID_ddebug246, !136, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1069, i32 3}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1071, i32 3}
!142 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @ssi_wake_irq._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @ssi_wake_irq._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1075, i32 3}
!147 = !{ptr @ssi_wake_irq._entry.76, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @ssi_wake_irq._entry_ptr.78, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1013, i32 3}
!151 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ssi_wake_thread.__UNIQUE_ID_ddebug249, !150, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1020, i32 3}
!155 = !{ptr @ssi_wake_thread.__UNIQUE_ID_ddebug250, !154, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!156 = !{ptr @.str.82, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 163, i32 22}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 164, i32 27}
!160 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 167, i32 29}
!162 = !{ptr @ssi_port_regs_fops, !163, !"ssi_port_regs_fops", i1 false, i1 false}
!163 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 122, i32 1}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 58, i32 17}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 59, i32 16}
!168 = !{ptr @.str.87, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 61, i32 16}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 63, i32 16}
!172 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 67, i32 14}
!174 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 68, i32 16}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 70, i32 16}
!178 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 72, i32 16}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 74, i32 16}
!182 = !{ptr @.str.94, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 76, i32 16}
!184 = !{ptr @.str.95, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 78, i32 16}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 80, i32 16}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 82, i32 16}
!190 = !{ptr @.str.98, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 84, i32 16}
!192 = !{ptr @.str.99, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 87, i32 17}
!194 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 92, i32 14}
!196 = !{ptr @.str.101, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 93, i32 16}
!198 = !{ptr @.str.102, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 101, i32 16}
!200 = !{ptr @.str.103, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 103, i32 16}
!202 = !{ptr @.str.104, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 109, i32 16}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 111, i32 16}
!206 = !{ptr @ssi_sst_div_fops, !207, !"ssi_sst_div_fops", i1 false, i1 false}
!207 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 152, i32 1}
!208 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @omap_ssi_port_of_match, !210, !"omap_ssi_port_of_match", i1 false, i1 false}
!210 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1389, i32 34}
!211 = !{ptr @omap_ssi_port_pm_ops, !212, !"omap_ssi_port_pm_ops", i1 false, i1 false}
!212 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1377, i32 32}
!213 = !{ptr @.str.107, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1344, i32 2}
!215 = !{ptr @.str.108, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @omap_ssi_port_runtime_suspend.__UNIQUE_ID_ddebug252, !214, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!217 = !{ptr @.str.109, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hsi/controllers/omap_ssi_port.c", i32 1362, i32 2}
!219 = !{ptr @.str.110, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @omap_ssi_port_runtime_resume.__UNIQUE_ID_ddebug253, !218, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{i64 2148382490, i64 2148382495, i64 2148382508, i64 2148382552, i64 2148382586, i64 2148382607}
!231 = !{i64 6294890}
!232 = !{i64 2154388343}
!233 = !{!"branch_weights", i32 1, i32 2000}
!234 = !{i64 2154353270, i64 2154353774, i64 2154353307, i64 2154353363, i64 2154353397, i64 2154353421, i64 2154353462, i64 2154353483, i64 2154353511, i64 2154353545}
!235 = !{i64 2154349916}
!236 = !{i64 6295308}
!237 = !{i64 2154350817}
!238 = !{i64 2154351150}
!239 = !{!"branch_weights", i32 2000, i32 1}
!240 = !{i64 2154354967, i64 2154355471, i64 2154355004, i64 2154355060, i64 2154355094, i64 2154355118, i64 2154355159, i64 2154355180, i64 2154355208, i64 2154355242}
!241 = !{i64 2154356661, i64 2154357165, i64 2154356698, i64 2154356754, i64 2154356788, i64 2154356812, i64 2154356853, i64 2154356874, i64 2154356902, i64 2154356936}
!242 = !{i64 2154372635}
!243 = !{i64 6294270}
!244 = !{i64 2154382558}
!245 = !{i64 2154383865}
!246 = !{i64 2154397928, i64 2154398432, i64 2154397965, i64 2154398021, i64 2154398055, i64 2154398079, i64 2154398120, i64 2154398141, i64 2154398169, i64 2154398203}
!247 = !{i64 2154399501}
!248 = !{i64 2154416467}
!249 = !{i64 2154411857}
!250 = !{i64 2154412573}
!251 = !{i64 2154413480}
!252 = !{i64 2154416870}
!253 = !{i64 2154417277}
!254 = !{i64 2154417973}
!255 = !{i64 2154332210}
!256 = !{i64 2154332680}
!257 = !{i64 2154344826}
!258 = !{i64 2154345137}
!259 = !{i64 2154452081}
!260 = !{i64 2154452759}
!261 = !{i64 2154453503}
!262 = !{i64 2154454181}
!263 = !{i64 2153856574, i64 2153857066, i64 2153856611, i64 2153856667, i64 2153856701, i64 2153856725, i64 2153856766, i64 2153856787, i64 2153856815, i64 2153856849}
!264 = !{i64 2154444855}
!265 = !{i64 2154445737}
!266 = !{i64 2154448476}
!267 = !{i64 2154449414}
!268 = !{i64 2154435798}
!269 = !{i64 2154436590}
!270 = !{i64 2154423494}
!271 = !{i64 2154428146}
!272 = !{i64 2154429051}
!273 = !{i64 2154458274}
!274 = !{i64 2154460993}
!275 = !{i64 2154297687}
!276 = !{i64 2154298369}
!277 = !{i64 2154299051}
!278 = !{i64 2154299503}
!279 = !{i64 2154299955}
!280 = !{i64 2154300407}
!281 = !{i64 2154300874}
!282 = !{i64 2154301341}
!283 = !{i64 2154301808}
!284 = !{i64 2154302270}
!285 = !{i64 2154302737}
!286 = !{i64 2154303204}
!287 = !{i64 2154303762}
!288 = !{i64 2154304214}
!289 = !{i64 2154304666}
!290 = !{i64 2154305118}
!291 = !{i64 2154305585}
!292 = !{i64 2154306052}
!293 = !{i64 2154306514}
!294 = !{i64 2154306981}
!295 = !{i64 2154307448}
!296 = !{i64 2154307915}
!297 = !{i64 2154308382}
!298 = !{i64 2154308940}
!299 = !{i64 2154310002}
!300 = !{i64 2154310233}
!301 = !{i64 2154490431}
!302 = !{i64 2154495910}
