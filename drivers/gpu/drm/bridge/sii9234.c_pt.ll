; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/sii9234.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/sii9234.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.sii9234 = type { [4 x ptr], %struct.drm_bridge, ptr, ptr, i32, [4 x %struct.regulator_bulk_data], %struct.mutex, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_sii9234__319_971_sii9234_driver_init6 = internal global ptr @sii9234_driver_init, section ".initcall6.init", align 4
@sii9234_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sii9234_probe, ptr @sii9234_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sii9234_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sii9234_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sii9234_driver_exit = internal global ptr @sii9234_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file320 = internal constant [44 x i8] c"sii9234.file=drivers/gpu/drm/bridge/sii9234\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [20 x i8] c"sii9234.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sii9234\00", [24 x i8] zeroinitializer }, align 32
@sii9234_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sil,sii9234\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sii9234_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"SII9234\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sii9234_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@sii9234_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 905, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I2C adapter lacks SMBUS feature\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sii9234_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/bridge/sii9234.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sii9234_probe._entry_ptr = internal global ptr @sii9234_probe._entry, section ".printk_index", align 4
@sii9234_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 910, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no irq provided\0A\00", [47 x i8] zeroinitializer }, align 32
@sii9234_probe._entry_ptr.9 = internal global ptr @sii9234_probe._entry.7, section ".printk_index", align 4
@sii9234_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 920, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to install IRQ handler\0A\00", [33 x i8] zeroinitializer }, align 32
@sii9234_probe._entry_ptr.12 = internal global ptr @sii9234_probe._entry.10, section ".printk_index", align 4
@sii9234_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr null, ptr null, ptr @sii9234_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sii9234_irq_thread.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sii9234_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@sii9234_irq_thread.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.4, ptr @.str.15, i8 0, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"irq %02x/%02x %02x/%02x %02x/%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@sii9234_irq_thread.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.4, ptr @.str.16, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"try to reset after failure\0A\00", [36 x i8] zeroinitializer }, align 32
@sii9234_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.4, i32 806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"discovery failed, no power for MHL?\0A\00", [59 x i8] zeroinitializer }, align 32
@sii9234_irq_thread._entry_ptr = internal global ptr @sii9234_irq_thread._entry, section ".printk_index", align 4
@sii9234_readb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"readb: %4s[0x%02x]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sii9234_readb\00", [18 x i8] zeroinitializer }, align 32
@sii9234_readb._entry_ptr = internal global ptr @sii9234_readb._entry, section ".printk_index", align 4
@sii9234_readb._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 268, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sii9234_readb._entry_ptr.21 = internal global ptr @sii9234_readb._entry.20, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MHL\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TPI\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CBUS\00", [27 x i8] zeroinitializer }, align 32
@sii9234_rgnd_ready_irq.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sii9234_rgnd_ready_irq\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RGND_READY_INT\0A\00", [16 x i8] zeroinitializer }, align 32
@sii9234_rgnd_ready_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 638, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sii9234_reset() failed\0A\00", [40 x i8] zeroinitializer }, align 32
@sii9234_rgnd_ready_irq._entry_ptr = internal global ptr @sii9234_rgnd_ready_irq._entry, section ".printk_index", align 4
@sii9234_rgnd_ready_irq._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.4, i32 654, ptr @.str.31, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RGND is not 1k\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sii9234_rgnd_ready_irq._entry_ptr.32 = internal global ptr @sii9234_rgnd_ready_irq._entry.29, section ".printk_index", align 4
@sii9234_rgnd_ready_irq.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.33, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RGND 1K!!\0A\00", [21 x i8] zeroinitializer }, align 32
@sii9234_rsen_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 713, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RSEN_HIGH without RGND_1K\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sii9234_rsen_change\00", [44 x i8] zeroinitializer }, align 32
@sii9234_rsen_change._entry_ptr = internal global ptr @sii9234_rsen_change._entry, section ".printk_index", align 4
@sii9234_rsen_change.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MHL cable connected.. RSEN High\0A\00", [63 x i8] zeroinitializer }, align 32
@sii9234_rsen_change.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.37, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RSEN lost\0A\00", [21 x i8] zeroinitializer }, align 32
@sii9234_rsen_change.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.38, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_stat: %x\0A\00", [18 x i8] zeroinitializer }, align 32
@sii9234_rsen_change.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.39, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RSEN recovery\0A\00", [17 x i8] zeroinitializer }, align 32
@sii9234_rsen_change.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.40, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RSEN Really LOW\0A\00", [47 x i8] zeroinitializer }, align 32
@sii9234_mhl_established.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sii9234_mhl_established\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mhl est interrupt\0A\00", [45 x i8] zeroinitializer }, align 32
@sii9234_writeb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"writeb: %4s[0x%02x] <- 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sii9234_writeb\00", [17 x i8] zeroinitializer }, align 32
@sii9234_writeb._entry_ptr = internal global ptr @sii9234_writeb._entry, section ".printk_index", align 4
@sii9234_goto_d3.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sii9234_goto_d3\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sii9234: detection started d3\0A\00", [33 x i8] zeroinitializer }, align 32
@sii9234_goto_d3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 565, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s failed\0A\00", [21 x i8] zeroinitializer }, align 32
@sii9234_goto_d3._entry_ptr = internal global ptr @sii9234_goto_d3._entry, section ".printk_index", align 4
@sii9234_writebm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"writebm: %4s[0x%02x] <- 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sii9234_writebm\00", [16 x i8] zeroinitializer }, align 32
@sii9234_writebm._entry_ptr = internal global ptr @sii9234_writebm._entry, section ".printk_index", align 4
@sii9234_writebm._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sii9234_writebm._entry_ptr.51 = internal global ptr @sii9234_writebm._entry.50, section ".printk_index", align 4
@sii9234_writebm._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sii9234_writebm._entry_ptr.53 = internal global ptr @sii9234_writebm._entry.52, section ".printk_index", align 4
@sii9234_init_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 823, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"not DT device\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sii9234_init_resources\00", [41 x i8] zeroinitializer }, align 32
@sii9234_init_resources._entry_ptr = internal global ptr @sii9234_init_resources._entry, section ".printk_index", align 4
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@sii9234_init_resources._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.4, i32 829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get reset gpio from DT\0A\00", [62 x i8] zeroinitializer }, align 32
@sii9234_init_resources._entry_ptr.59 = internal global ptr @sii9234_init_resources._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"avcc12\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"avcc33\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iovcc18\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cvcc12\00", [25 x i8] zeroinitializer }, align 32
@sii9234_init_resources._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.55, ptr @.str.4, i32 840, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regulator_bulk failed\0A\00", [41 x i8] zeroinitializer }, align 32
@sii9234_init_resources._entry_ptr.66 = internal global ptr @sii9234_init_resources._entry.64, section ".printk_index", align 4
@sii9234_init_resources._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.55, ptr @.str.4, i32 849, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create TPI client\0A\00", [35 x i8] zeroinitializer }, align 32
@sii9234_init_resources._entry_ptr.69 = internal global ptr @sii9234_init_resources._entry.67, section ".printk_index", align 4
@sii9234_init_resources._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.55, ptr @.str.4, i32 856, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to create HDMI RX client\0A\00", [63 x i8] zeroinitializer }, align 32
@sii9234_init_resources._entry_ptr.72 = internal global ptr @sii9234_init_resources._entry.70, section ".printk_index", align 4
@sii9234_init_resources._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.55, ptr @.str.4, i32 863, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create CBUS client\0A\00", [34 x i8] zeroinitializer }, align 32
@sii9234_init_resources._entry_ptr.75 = internal global ptr @sii9234_init_resources._entry.73, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"sii9234_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 961, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 963, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"sii9234_dt_match\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 949, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [11 x i8] c"sii9234_id\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 955, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 902, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 905, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 910, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 920, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [21 x i8] c"sii9234_bridge_funcs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 885, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 758, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 772, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 800, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 806, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 259, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 267, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 188, i32 14 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 189, i32 14 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 190, i32 15 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 191, i32 15 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 633, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 638, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 654, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 657, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 713, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 721, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 724, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 736, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 739, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 742, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 670, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 205, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 550, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 565, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 223, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 231, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 241, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 823, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 827, i32 45 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 829, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 833, i32 28 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 834, i32 28 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 835, i32 28 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 836, i32 28 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 840, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 849, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 856, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private constant [36 x i8] c"../drivers/gpu/drm/bridge/sii9234.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 863, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_file320, ptr @__UNIQUE_ID_license321, ptr @__exitcall_sii9234_driver_exit, ptr @__initcall__kmod_sii9234__319_971_sii9234_driver_init6, ptr @sii9234_driver_exit, ptr @sii9234_goto_d3._entry, ptr @sii9234_goto_d3._entry_ptr, ptr @sii9234_init_resources._entry, ptr @sii9234_init_resources._entry.57, ptr @sii9234_init_resources._entry.64, ptr @sii9234_init_resources._entry.67, ptr @sii9234_init_resources._entry.70, ptr @sii9234_init_resources._entry.73, ptr @sii9234_init_resources._entry_ptr, ptr @sii9234_init_resources._entry_ptr.59, ptr @sii9234_init_resources._entry_ptr.66, ptr @sii9234_init_resources._entry_ptr.69, ptr @sii9234_init_resources._entry_ptr.72, ptr @sii9234_init_resources._entry_ptr.75, ptr @sii9234_irq_thread._entry, ptr @sii9234_irq_thread._entry_ptr, ptr @sii9234_probe._entry, ptr @sii9234_probe._entry.10, ptr @sii9234_probe._entry.7, ptr @sii9234_probe._entry_ptr, ptr @sii9234_probe._entry_ptr.12, ptr @sii9234_probe._entry_ptr.9, ptr @sii9234_readb._entry, ptr @sii9234_readb._entry.20, ptr @sii9234_readb._entry_ptr, ptr @sii9234_readb._entry_ptr.21, ptr @sii9234_rgnd_ready_irq._entry, ptr @sii9234_rgnd_ready_irq._entry.29, ptr @sii9234_rgnd_ready_irq._entry_ptr, ptr @sii9234_rgnd_ready_irq._entry_ptr.32, ptr @sii9234_rsen_change._entry, ptr @sii9234_rsen_change._entry_ptr, ptr @sii9234_writeb._entry, ptr @sii9234_writeb._entry_ptr, ptr @sii9234_writebm._entry, ptr @sii9234_writebm._entry.50, ptr @sii9234_writebm._entry.52, ptr @sii9234_writebm._entry_ptr, ptr @sii9234_writebm._entry_ptr.51, ptr @sii9234_writebm._entry_ptr.53, ptr @sii9234_driver, ptr @.str, ptr @sii9234_dt_match, ptr @sii9234_id, ptr @sii9234_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @sii9234_bridge_funcs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_readb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_readb._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_rgnd_ready_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_rgnd_ready_irq._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_rsen_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_writeb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_goto_d3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_writebm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_writebm._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_writebm._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_init_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_init_resources._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_init_resources._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_init_resources._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_init_resources._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii9234_init_resources._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sii9234_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sii9234_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sii9234_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @sii9234_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii9234_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 452, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.sii9234, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev2, ptr %dev3, align 4
  %lock = getelementptr inbounds %struct.sii9234, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sii9234_probe.__key) #5
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  tail call void @irq_modify_status(i32 noundef %8, i32 noundef 0, i32 noundef 4096) #5
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call19 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev2, i32 noundef %10, ptr noundef null, ptr noundef nonnull @sii9234_irq_thread, i32 noundef 8196, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end23, label %if.end24

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %11 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter1, align 8
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.54) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end24
  %call.i59 = tail call ptr @devm_gpiod_get(ptr noundef %14, ptr noundef nonnull @.str.56, i32 noundef 3) #5
  %gpio_reset.i = getelementptr inbounds %struct.sii9234, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i59, ptr %gpio_reset.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end9.i, label %if.end13.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.58) #8
  %20 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpio_reset.i, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %sii9234_init_resources.exit

if.end13.i:                                       ; preds = %if.end.i
  %supplies.i = getelementptr inbounds %struct.sii9234, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %supplies.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.60, ptr %supplies.i, align 4
  %arrayidx15.i = getelementptr %struct.sii9234, ptr %call.i, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.61, ptr %arrayidx15.i, align 4
  %arrayidx18.i = getelementptr %struct.sii9234, ptr %call.i, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.62, ptr %arrayidx18.i, align 4
  %arrayidx21.i = getelementptr %struct.sii9234, ptr %call.i, i32 0, i32 5, i32 3
  %26 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.63, ptr %arrayidx21.i, align 4
  %27 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev3, align 4
  %call25.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %28, i32 noundef 4, ptr noundef %supplies.i) #5
  %29 = zext i32 %call25.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call25.i, label %do.end31.i [
    i32 0, label %if.end34.i
    i32 -517, label %if.end13.i.cleanup_crit_edge
  ]

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end31.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.65) #8
  br label %sii9234_init_resources.exit

if.end34.i:                                       ; preds = %if.end13.i
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %client, ptr %call.i, align 4
  %call38.i = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev2, ptr noundef %12, i16 noundef zeroext 61) #5
  %arrayidx40.i = getelementptr [4 x ptr], ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call38.i, ptr %arrayidx40.i, align 4
  %cmp.i120.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120.i, label %do.end47.i, label %if.end52.i

do.end47.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.68) #8
  %36 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx40.i, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %sii9234_init_resources.exit

if.end52.i:                                       ; preds = %if.end34.i
  %call54.i = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev2, ptr noundef %12, i16 noundef zeroext 73) #5
  %arrayidx56.i = getelementptr [4 x ptr], ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call54.i, ptr %arrayidx56.i, align 4
  %cmp.i121.i = icmp ugt ptr %call54.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121.i, label %do.end63.i, label %if.end68.i

do.end63.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.71) #8
  %42 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx56.i, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %sii9234_init_resources.exit

if.end68.i:                                       ; preds = %if.end52.i
  %call70.i = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev2, ptr noundef %12, i16 noundef zeroext 100) #5
  %arrayidx72.i = getelementptr [4 x ptr], ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call70.i, ptr %arrayidx72.i, align 4
  %cmp.i122.i = icmp ugt ptr %call70.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122.i, label %do.end79.i, label %if.end68.i.if.end28_crit_edge

if.end68.i.if.end28_crit_edge:                    ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

do.end79.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.74) #8
  %48 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx72.i, align 4
  %50 = ptrtoint ptr %49 to i32
  br label %sii9234_init_resources.exit

sii9234_init_resources.exit:                      ; preds = %do.end79.i, %do.end63.i, %do.end47.i, %do.end31.i, %do.end9.i
  %retval.0.i = phi i32 [ %22, %do.end9.i ], [ %38, %do.end47.i ], [ %44, %do.end63.i ], [ %50, %do.end79.i ], [ %call25.i, %do.end31.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp26 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp26, label %sii9234_init_resources.exit.cleanup_crit_edge, label %sii9234_init_resources.exit.if.end28_crit_edge

sii9234_init_resources.exit.if.end28_crit_edge:   ; preds = %sii9234_init_resources.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

sii9234_init_resources.exit.cleanup_crit_edge:    ; preds = %sii9234_init_resources.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %sii9234_init_resources.exit.if.end28_crit_edge, %if.end68.i.if.end28_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.sii9234, ptr %call.i, i32 0, i32 1
  %funcs = getelementptr inbounds %struct.sii9234, ptr %call.i, i32 0, i32 1, i32 7
  %52 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @sii9234_bridge_funcs, ptr %funcs, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %53 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node, align 8
  %of_node30 = getelementptr inbounds %struct.sii9234, ptr %call.i, i32 0, i32 1, i32 4
  %55 = ptrtoint ptr %of_node30 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %of_node30, align 4
  tail call void @drm_bridge_add(ptr noundef %bridge) #5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %state.i = getelementptr inbounds %struct.sii9234, ptr %call.i, i32 0, i32 7
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.not.i = icmp eq i32 %57, 0
  br i1 %cmp.not.i, label %if.end.i61, label %if.end28.sii9234_cable_in.exit_crit_edge

if.end28.sii9234_cable_in.exit_crit_edge:         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_cable_in.exit

if.end.i61:                                       ; preds = %if.end28
  %supplies.i.i = getelementptr inbounds %struct.sii9234, ptr %call.i, i32 0, i32 5
  %call.i.i60 = tail call i32 @regulator_bulk_enable(i32 noundef 4, ptr noundef %supplies.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %cmp1.i = icmp slt i32 %call.i.i60, 0
  br i1 %cmp1.i, label %if.end.i61.sii9234_cable_in.exit_crit_edge, label %if.end3.i

if.end.i61.sii9234_cable_in.exit_crit_edge:       ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_cable_in.exit

if.end3.i:                                        ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %59, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %60 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %61, i32 noundef 0) #5
  tail call fastcc void @sii9234_goto_d3(ptr noundef nonnull %call.i) #5
  %62 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev3, align 4
  %irq.i = getelementptr i8, ptr %63, i32 932
  %64 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %65) #5
  br label %sii9234_cable_in.exit

sii9234_cable_in.exit:                            ; preds = %if.end3.i, %if.end.i61.sii9234_cable_in.exit_crit_edge, %if.end28.sii9234_cable_in.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %sii9234_cable_in.exit, %sii9234_init_resources.exit.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %do.end.i, %do.end23, %do.end15, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end23 ], [ 0, %sii9234_cable_in.exit ], [ -22, %do.end15 ], [ -5, %do.end9 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %sii9234_init_resources.exit.cleanup_crit_edge ], [ %call25.i, %if.end13.i.cleanup_crit_edge ], [ -19, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii9234_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %state.i = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.sii9234_cable_out.exit_crit_edge, label %if.end.i

entry.sii9234_cable_out.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_cable_out.exit

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %irq.i = getelementptr i8, ptr %5, i32 932
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %7) #5
  %i2c_error.i.i = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %i2c_error.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.sii9234_writeb.exit.i_crit_edge

if.end.i.sii9234_writeb.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %arrayidx.i.i = getelementptr [4 x ptr], ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 61, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.23, i32 noundef 61, i32 noundef 0) #8
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %do.end.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %14 = ptrtoint ptr %i2c_error.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i.i, ptr %i2c_error.i.i, align 4
  br label %sii9234_writeb.exit.i

sii9234_writeb.exit.i:                            ; preds = %if.end7.i.i, %if.end.i.sii9234_writeb.exit.i_crit_edge
  %gpio_reset.i.i = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpio_reset.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %supplies.i.i = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 5
  %call.i9.i = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %supplies.i.i) #5
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %state.i, align 4
  br label %sii9234_cable_out.exit

sii9234_cable_out.exit:                           ; preds = %sii9234_writeb.exit.i, %entry.sii9234_cable_out.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  %bridge = getelementptr inbounds %struct.sii9234, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii9234_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_irq_thread.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_irq_thread, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_irq_thread.__UNIQUE_ID_ddebug316, ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %i2c_error.i = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.sii9234_readb.exit191.thread418_crit_edge

do.end.sii9234_readb.exit191.thread418_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit191.thread418

if.end.i:                                         ; preds = %do.end
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext 113) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end7.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i.cleanup.sink.split.i_crit_edge, label %sii9234_readb.exit

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end7.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %call8.sink.i = phi i32 [ %call.i, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %call8.i, %if.end7.i.cleanup.sink.split.i_crit_edge ]
  %dev15.i = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev15.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef 113) #8
  %8 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call8.sink.i, ptr %i2c_error.i, align 4
  br label %sii9234_readb.exit191.thread418

sii9234_readb.exit:                               ; preds = %if.end7.i
  %9 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %i2c_error.i, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i154 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i154, label %if.end.i157, label %sii9234_readb.exit.sii9234_readb.exit191.thread_crit_edge

sii9234_readb.exit.sii9234_readb.exit191.thread_crit_edge: ; preds = %sii9234_readb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit191.thread

if.end.i157:                                      ; preds = %sii9234_readb.exit
  %call.i155 = tail call i32 @i2c_smbus_write_byte(ptr noundef %11, i8 noundef zeroext 116) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %cmp.i156 = icmp slt i32 %call.i155, 0
  br i1 %cmp.i156, label %if.end.i157.sii9234_readb.exit191.thread.sink.split_crit_edge, label %if.end7.i160

if.end.i157.sii9234_readb.exit191.thread.sink.split_crit_edge: ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit191.thread.sink.split

if.end7.i160:                                     ; preds = %if.end.i157
  %call8.i158 = tail call i32 @i2c_smbus_read_byte(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i158)
  %cmp9.i159 = icmp slt i32 %call8.i158, 0
  br i1 %cmp9.i159, label %if.end7.i160.sii9234_readb.exit191.thread.sink.split_crit_edge, label %sii9234_readb.exit165

if.end7.i160.sii9234_readb.exit191.thread.sink.split_crit_edge: ; preds = %if.end7.i160
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit191.thread.sink.split

sii9234_readb.exit165:                            ; preds = %if.end7.i160
  %12 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr297.pr = load i32, ptr %i2c_error.i, align 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr297.pr)
  %tobool.not.i167 = icmp eq i32 %.pr297.pr, 0
  br i1 %tobool.not.i167, label %if.end.i170, label %sii9234_readb.exit165.sii9234_readb.exit191.thread403_crit_edge

sii9234_readb.exit165.sii9234_readb.exit191.thread403_crit_edge: ; preds = %sii9234_readb.exit165
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit191.thread403

if.end.i170:                                      ; preds = %sii9234_readb.exit165
  %call.i168 = tail call i32 @i2c_smbus_write_byte(ptr noundef %14, i8 noundef zeroext 117) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %cmp.i169 = icmp slt i32 %call.i168, 0
  br i1 %cmp.i169, label %if.end.i170.cleanup.sink.split.i176_crit_edge, label %if.end7.i173

if.end.i170.cleanup.sink.split.i176_crit_edge:    ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i176

if.end7.i173:                                     ; preds = %if.end.i170
  %call8.i171 = tail call i32 @i2c_smbus_read_byte(ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i171)
  %cmp9.i172 = icmp slt i32 %call8.i171, 0
  br i1 %cmp9.i172, label %if.end7.i173.cleanup.sink.split.i176_crit_edge, label %sii9234_readb.exit178

if.end7.i173.cleanup.sink.split.i176_crit_edge:   ; preds = %if.end7.i173
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i176

cleanup.sink.split.i176:                          ; preds = %if.end7.i173.cleanup.sink.split.i176_crit_edge, %if.end.i170.cleanup.sink.split.i176_crit_edge
  %call8.sink.i174 = phi i32 [ %call.i168, %if.end.i170.cleanup.sink.split.i176_crit_edge ], [ %call8.i171, %if.end7.i173.cleanup.sink.split.i176_crit_edge ]
  %dev15.i175 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %dev15.i175 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev15.i175, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef 117) #8
  %17 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call8.sink.i174, ptr %i2c_error.i, align 4
  br label %sii9234_readb.exit191.thread403

sii9234_readb.exit178:                            ; preds = %if.end7.i173
  %18 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr306.pr = load i32, ptr %i2c_error.i, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr306.pr)
  %tobool.not.i180 = icmp eq i32 %.pr306.pr, 0
  br i1 %tobool.not.i180, label %if.end.i183, label %sii9234_readb.exit178.sii9234_readb.exit191.thread_crit_edge

sii9234_readb.exit178.sii9234_readb.exit191.thread_crit_edge: ; preds = %sii9234_readb.exit178
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit191.thread

if.end.i183:                                      ; preds = %sii9234_readb.exit178
  %call.i181 = tail call i32 @i2c_smbus_write_byte(ptr noundef %20, i8 noundef zeroext 120) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %cmp.i182 = icmp slt i32 %call.i181, 0
  br i1 %cmp.i182, label %if.end.i183.sii9234_readb.exit191.thread.sink.split_crit_edge, label %if.end7.i186

if.end.i183.sii9234_readb.exit191.thread.sink.split_crit_edge: ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit191.thread.sink.split

if.end7.i186:                                     ; preds = %if.end.i183
  %call8.i184 = tail call i32 @i2c_smbus_read_byte(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i184)
  %cmp9.i185 = icmp slt i32 %call8.i184, 0
  br i1 %cmp9.i185, label %if.end7.i186.sii9234_readb.exit191.thread.sink.split_crit_edge, label %sii9234_readb.exit191

if.end7.i186.sii9234_readb.exit191.thread.sink.split_crit_edge: ; preds = %if.end7.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit191.thread.sink.split

sii9234_readb.exit191.thread.sink.split:          ; preds = %if.end7.i186.sii9234_readb.exit191.thread.sink.split_crit_edge, %if.end.i183.sii9234_readb.exit191.thread.sink.split_crit_edge, %if.end7.i160.sii9234_readb.exit191.thread.sink.split_crit_edge, %if.end.i157.sii9234_readb.exit191.thread.sink.split_crit_edge
  %.sink426 = phi i32 [ 116, %if.end7.i160.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ 116, %if.end.i157.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ 120, %if.end7.i186.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ 120, %if.end.i183.sii9234_readb.exit191.thread.sink.split_crit_edge ]
  %call8.sink.i161.sink = phi i32 [ %call8.i158, %if.end7.i160.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ %call.i155, %if.end.i157.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ %call8.i184, %if.end7.i186.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ %call.i181, %if.end.i183.sii9234_readb.exit191.thread.sink.split_crit_edge ]
  %retval.0.i177.ph398.ph = phi i32 [ %call8.i158, %if.end7.i160.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ %call.i155, %if.end.i157.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ %call8.i171, %if.end7.i186.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ %call8.i171, %if.end.i183.sii9234_readb.exit191.thread.sink.split_crit_edge ]
  %retval.0.i164304.ph396.ph = phi i32 [ %call8.i158, %if.end7.i160.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ %call.i155, %if.end.i157.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ %call8.i158, %if.end7.i186.sii9234_readb.exit191.thread.sink.split_crit_edge ], [ %call8.i158, %if.end.i183.sii9234_readb.exit191.thread.sink.split_crit_edge ]
  %dev15.i162 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %dev15.i162 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev15.i162, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef %.sink426) #8
  %23 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call8.sink.i161.sink, ptr %i2c_error.i, align 4
  br label %sii9234_readb.exit191.thread

sii9234_readb.exit191.thread:                     ; preds = %sii9234_readb.exit191.thread.sink.split, %sii9234_readb.exit178.sii9234_readb.exit191.thread_crit_edge, %sii9234_readb.exit.sii9234_readb.exit191.thread_crit_edge
  %retval.0.i177.ph398 = phi i32 [ %call8.i171, %sii9234_readb.exit178.sii9234_readb.exit191.thread_crit_edge ], [ %.pr, %sii9234_readb.exit.sii9234_readb.exit191.thread_crit_edge ], [ %retval.0.i177.ph398.ph, %sii9234_readb.exit191.thread.sink.split ]
  %retval.0.i164304.ph396 = phi i32 [ %call8.i158, %sii9234_readb.exit178.sii9234_readb.exit191.thread_crit_edge ], [ %.pr, %sii9234_readb.exit.sii9234_readb.exit191.thread_crit_edge ], [ %retval.0.i164304.ph396.ph, %sii9234_readb.exit191.thread.sink.split ]
  %.ph317 = phi i32 [ %.pr306.pr, %sii9234_readb.exit178.sii9234_readb.exit191.thread_crit_edge ], [ %.pr, %sii9234_readb.exit.sii9234_readb.exit191.thread_crit_edge ], [ %call8.sink.i161.sink, %sii9234_readb.exit191.thread.sink.split ]
  %arrayidx.i323 = getelementptr [4 x ptr], ptr %data, i32 0, i32 3
  br label %sii9234_readb.exit204

sii9234_readb.exit191.thread403:                  ; preds = %cleanup.sink.split.i176, %sii9234_readb.exit165.sii9234_readb.exit191.thread403_crit_edge
  %.pr316.ph = phi i32 [ %.pr297.pr, %sii9234_readb.exit165.sii9234_readb.exit191.thread403_crit_edge ], [ %call8.sink.i174, %cleanup.sink.split.i176 ]
  %arrayidx.i409 = getelementptr [4 x ptr], ptr %data, i32 0, i32 3
  br label %sii9234_readb.exit204

sii9234_readb.exit191.thread418:                  ; preds = %cleanup.sink.split.i, %do.end.sii9234_readb.exit191.thread418_crit_edge
  %.pr316.pr.ph = phi i32 [ %call8.sink.i, %cleanup.sink.split.i ], [ %5, %do.end.sii9234_readb.exit191.thread418_crit_edge ]
  %arrayidx.i424 = getelementptr [4 x ptr], ptr %data, i32 0, i32 3
  br label %sii9234_readb.exit204

sii9234_readb.exit191:                            ; preds = %if.end7.i186
  %24 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr316.pr.pr = load i32, ptr %i2c_error.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr %data, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr316.pr.pr)
  %tobool.not.i193 = icmp eq i32 %.pr316.pr.pr, 0
  br i1 %tobool.not.i193, label %if.end.i196, label %sii9234_readb.exit191.sii9234_readb.exit204_crit_edge

sii9234_readb.exit191.sii9234_readb.exit204_crit_edge: ; preds = %sii9234_readb.exit191
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit204

if.end.i196:                                      ; preds = %sii9234_readb.exit191
  %call.i194 = tail call i32 @i2c_smbus_write_byte(ptr noundef %26, i8 noundef zeroext 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %cmp.i195 = icmp slt i32 %call.i194, 0
  br i1 %cmp.i195, label %if.end.i196.cleanup.sink.split.i202_crit_edge, label %if.end7.i199

if.end.i196.cleanup.sink.split.i202_crit_edge:    ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i202

if.end7.i199:                                     ; preds = %if.end.i196
  %call8.i197 = tail call i32 @i2c_smbus_read_byte(ptr noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i197)
  %cmp9.i198 = icmp slt i32 %call8.i197, 0
  br i1 %cmp9.i198, label %if.end7.i199.cleanup.sink.split.i202_crit_edge, label %if.end7.i199.sii9234_readb.exit204_crit_edge

if.end7.i199.sii9234_readb.exit204_crit_edge:     ; preds = %if.end7.i199
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit204

if.end7.i199.cleanup.sink.split.i202_crit_edge:   ; preds = %if.end7.i199
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i202

cleanup.sink.split.i202:                          ; preds = %if.end7.i199.cleanup.sink.split.i202_crit_edge, %if.end.i196.cleanup.sink.split.i202_crit_edge
  %call8.sink.i200 = phi i32 [ %call.i194, %if.end.i196.cleanup.sink.split.i202_crit_edge ], [ %call8.i197, %if.end7.i199.cleanup.sink.split.i202_crit_edge ]
  %dev15.i201 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %27 = ptrtoint ptr %dev15.i201 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev15.i201, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.25, i32 noundef 8) #8
  %29 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call8.sink.i200, ptr %i2c_error.i, align 4
  br label %sii9234_readb.exit204

sii9234_readb.exit204:                            ; preds = %cleanup.sink.split.i202, %if.end7.i199.sii9234_readb.exit204_crit_edge, %sii9234_readb.exit191.sii9234_readb.exit204_crit_edge, %sii9234_readb.exit191.thread418, %sii9234_readb.exit191.thread403, %sii9234_readb.exit191.thread
  %arrayidx.i329 = phi ptr [ %arrayidx.i, %sii9234_readb.exit191.sii9234_readb.exit204_crit_edge ], [ %arrayidx.i, %if.end7.i199.sii9234_readb.exit204_crit_edge ], [ %arrayidx.i, %cleanup.sink.split.i202 ], [ %arrayidx.i323, %sii9234_readb.exit191.thread ], [ %arrayidx.i409, %sii9234_readb.exit191.thread403 ], [ %arrayidx.i424, %sii9234_readb.exit191.thread418 ]
  %retval.0.i190328 = phi i32 [ %call8.i184, %sii9234_readb.exit191.sii9234_readb.exit204_crit_edge ], [ %call8.i184, %if.end7.i199.sii9234_readb.exit204_crit_edge ], [ %call8.i184, %cleanup.sink.split.i202 ], [ %.ph317, %sii9234_readb.exit191.thread ], [ %.pr316.ph, %sii9234_readb.exit191.thread403 ], [ %.pr316.pr.ph, %sii9234_readb.exit191.thread418 ]
  %retval.0.i164304313327 = phi i32 [ %call8.i158, %sii9234_readb.exit191.sii9234_readb.exit204_crit_edge ], [ %call8.i158, %if.end7.i199.sii9234_readb.exit204_crit_edge ], [ %call8.i158, %cleanup.sink.split.i202 ], [ %retval.0.i164304.ph396, %sii9234_readb.exit191.thread ], [ %call8.i158, %sii9234_readb.exit191.thread403 ], [ %.pr316.pr.ph, %sii9234_readb.exit191.thread418 ]
  %retval.0.i152295303314326 = phi i32 [ %call8.i, %sii9234_readb.exit191.sii9234_readb.exit204_crit_edge ], [ %call8.i, %if.end7.i199.sii9234_readb.exit204_crit_edge ], [ %call8.i, %cleanup.sink.split.i202 ], [ %call8.i, %sii9234_readb.exit191.thread ], [ %call8.i, %sii9234_readb.exit191.thread403 ], [ %.pr316.pr.ph, %sii9234_readb.exit191.thread418 ]
  %retval.0.i177315325 = phi i32 [ %call8.i171, %sii9234_readb.exit191.sii9234_readb.exit204_crit_edge ], [ %call8.i171, %if.end7.i199.sii9234_readb.exit204_crit_edge ], [ %call8.i171, %cleanup.sink.split.i202 ], [ %retval.0.i177.ph398, %sii9234_readb.exit191.thread ], [ %.pr316.ph, %sii9234_readb.exit191.thread403 ], [ %.pr316.pr.ph, %sii9234_readb.exit191.thread418 ]
  %retval.0.i203 = phi i32 [ %.pr316.pr.pr, %sii9234_readb.exit191.sii9234_readb.exit204_crit_edge ], [ %call8.i197, %if.end7.i199.sii9234_readb.exit204_crit_edge ], [ %call8.sink.i200, %cleanup.sink.split.i202 ], [ %.ph317, %sii9234_readb.exit191.thread ], [ %.pr316.ph, %sii9234_readb.exit191.thread403 ], [ %.pr316.pr.ph, %sii9234_readb.exit191.thread418 ]
  %30 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i329, align 4
  %32 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i207 = icmp eq i32 %33, 0
  br i1 %tobool.not.i207, label %if.end.i210, label %sii9234_readb.exit204.sii9234_readb.exit218.thread_crit_edge

sii9234_readb.exit204.sii9234_readb.exit218.thread_crit_edge: ; preds = %sii9234_readb.exit204
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit218.thread

if.end.i210:                                      ; preds = %sii9234_readb.exit204
  %call.i208 = tail call i32 @i2c_smbus_write_byte(ptr noundef %31, i8 noundef zeroext 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %cmp.i209 = icmp slt i32 %call.i208, 0
  br i1 %cmp.i209, label %if.end.i210.cleanup.sink.split.i216_crit_edge, label %if.end7.i213

if.end.i210.cleanup.sink.split.i216_crit_edge:    ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i216

if.end7.i213:                                     ; preds = %if.end.i210
  %call8.i211 = tail call i32 @i2c_smbus_read_byte(ptr noundef %31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i211)
  %cmp9.i212 = icmp slt i32 %call8.i211, 0
  br i1 %cmp9.i212, label %if.end7.i213.cleanup.sink.split.i216_crit_edge, label %sii9234_readb.exit218

if.end7.i213.cleanup.sink.split.i216_crit_edge:   ; preds = %if.end7.i213
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i216

cleanup.sink.split.i216:                          ; preds = %if.end7.i213.cleanup.sink.split.i216_crit_edge, %if.end.i210.cleanup.sink.split.i216_crit_edge
  %call8.sink.i214 = phi i32 [ %call.i208, %if.end.i210.cleanup.sink.split.i216_crit_edge ], [ %call8.i211, %if.end7.i213.cleanup.sink.split.i216_crit_edge ]
  %dev15.i215 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %34 = ptrtoint ptr %dev15.i215 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev15.i215, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.25, i32 noundef 30) #8
  br label %sii9234_readb.exit218.thread

sii9234_readb.exit218.thread:                     ; preds = %cleanup.sink.split.i216, %sii9234_readb.exit204.sii9234_readb.exit218.thread_crit_edge
  %retval.0.i217.ph = phi i32 [ %call8.sink.i214, %cleanup.sink.split.i216 ], [ %33, %sii9234_readb.exit204.sii9234_readb.exit218.thread_crit_edge ]
  %36 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %i2c_error.i, align 4
  br label %if.end.i227

sii9234_readb.exit218:                            ; preds = %if.end7.i213
  %37 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr335 = load i32, ptr %i2c_error.i, align 4
  store i32 0, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr335)
  %tobool10.not = icmp eq i32 %.pr335, 0
  br i1 %tobool10.not, label %do.body13, label %sii9234_readb.exit218.if.end.i227_crit_edge

sii9234_readb.exit218.if.end.i227_crit_edge:      ; preds = %sii9234_readb.exit218
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i227

do.body13:                                        ; preds = %sii9234_readb.exit218
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_irq_thread.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_irq_thread, %if.then25)) #5
          to label %do.end29 [label %if.then25], !srcloc !175

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %dev26 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %38 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_irq_thread.__UNIQUE_ID_ddebug317, ptr noundef %39, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i152295303314326, i32 noundef %retval.0.i177315325, i32 noundef %retval.0.i164304313327, i32 noundef %retval.0.i190328, i32 noundef %retval.0.i203, i32 noundef %call8.i211) #5
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %and = and i32 %retval.0.i164304313327, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %do.end29.if.end33_crit_edge, label %if.then31

do.end29.if.end33_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then31:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call fastcc i32 @sii9234_rgnd_ready_irq(ptr noundef %data)
  %state = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 7
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call32, ptr %state, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %do.end29.if.end33_crit_edge
  %and34 = and i32 %retval.0.i152295303314326, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call fastcc i32 @sii9234_rsen_change(ptr noundef %data)
  %state38 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 7
  %41 = ptrtoint ptr %state38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call37, ptr %state38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %and40 = and i32 %retval.0.i164304313327, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end45_crit_edge, label %if.then42

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = tail call fastcc i32 @sii9234_mhl_established(ptr noundef %data)
  %state44 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 7
  %42 = ptrtoint ptr %state44 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call43, ptr %state44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge
  %and46 = and i32 %retval.0.i152295303314326, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end51_crit_edge, label %if.then48

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then48:                                        ; preds = %if.end45
  %43 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i329, align 4
  %45 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then48.sii9234_readb.exit.thread.i_crit_edge

if.then48.sii9234_readb.exit.thread.i_crit_edge:  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit.thread.i

if.end.i.i:                                       ; preds = %if.then48
  %call.i.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %44, i8 noundef zeroext 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end7.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %call8.i.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.end7.i.i.cleanup.sink.split.i.i_crit_edge, label %sii9234_readb.exit.i

if.end7.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end7.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %dev15.i.i = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %47 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev15.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.25, i32 noundef 13) #8
  br label %sii9234_readb.exit.thread.i

sii9234_readb.exit.thread.i:                      ; preds = %cleanup.sink.split.i.i, %if.then48.sii9234_readb.exit.thread.i_crit_edge
  %49 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %i2c_error.i, align 4
  br label %sii9234_hpd_change.exit

sii9234_readb.exit.i:                             ; preds = %if.end7.i.i
  %50 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr.i = load i32, ptr %i2c_error.i, align 4
  store i32 0, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i220 = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i220, label %if.end.i221, label %sii9234_readb.exit.i.sii9234_hpd_change.exit_crit_edge

sii9234_readb.exit.i.sii9234_hpd_change.exit_crit_edge: ; preds = %sii9234_readb.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_hpd_change.exit

if.end.i221:                                      ; preds = %sii9234_readb.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %call8.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp ne i32 %and.i, 0
  tail call fastcc void @sii9234_tmds_control(ptr noundef %data, i1 noundef zeroext %tobool2.not.i) #5
  %state.i = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 7
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state.i, align 4
  br label %sii9234_hpd_change.exit

sii9234_hpd_change.exit:                          ; preds = %if.end.i221, %sii9234_readb.exit.i.sii9234_hpd_change.exit_crit_edge, %sii9234_readb.exit.thread.i
  %retval.0.i222 = phi i32 [ %52, %if.end.i221 ], [ 7, %sii9234_readb.exit.i.sii9234_hpd_change.exit_crit_edge ], [ 7, %sii9234_readb.exit.thread.i ]
  %state50 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 7
  %53 = ptrtoint ptr %state50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i222, ptr %state50, align 4
  br label %if.end51

if.end51:                                         ; preds = %sii9234_hpd_change.exit, %if.end45.if.end51_crit_edge
  %and52 = and i32 %retval.0.i164304313327, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end56_crit_edge, label %if.then54

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %state55 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 7
  %54 = ptrtoint ptr %state55 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 7, ptr %state55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51.if.end56_crit_edge
  %and57 = and i32 %retval.0.i164304313327, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.done_crit_edge, label %if.then59

if.end56.done_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %state60 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 7
  %55 = ptrtoint ptr %state60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 6, ptr %state60, align 4
  br label %done

done:                                             ; preds = %if.then59, %if.end56.done_crit_edge
  %56 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr342 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr342)
  %tobool.not.i224 = icmp eq i32 %.pr342, 0
  br i1 %tobool.not.i224, label %done.if.end.i227_crit_edge, label %done.sii9234_writeb.exit238.thread_crit_edge

done.sii9234_writeb.exit238.thread_crit_edge:     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit238.thread

done.if.end.i227_crit_edge:                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i227

if.end.i227:                                      ; preds = %done.if.end.i227_crit_edge, %sii9234_readb.exit218.if.end.i227_crit_edge, %sii9234_readb.exit218.thread
  %retval.0.i217339349 = phi i32 [ %call8.i211, %done.if.end.i227_crit_edge ], [ %retval.0.i217.ph, %sii9234_readb.exit218.thread ], [ %call8.i211, %sii9234_readb.exit218.if.end.i227_crit_edge ]
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %conv3.i = trunc i32 %retval.0.i152295303314326 to i8
  %call.i225 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %58, i8 noundef zeroext 113, i8 noundef zeroext %conv3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %cmp.i226 = icmp slt i32 %call.i225, 0
  br i1 %cmp.i226, label %sii9234_writeb.exit.thread361, label %sii9234_writeb.exit

sii9234_writeb.exit.thread361:                    ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 113, i32 noundef %retval.0.i152295303314326) #8
  %61 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call.i225, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit238.thread

sii9234_writeb.exit:                              ; preds = %if.end.i227
  %62 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call.i225, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool.not.i230 = icmp eq i32 %call.i225, 0
  br i1 %tobool.not.i230, label %if.end.i234, label %sii9234_writeb.exit.sii9234_writeb.exit238.thread_crit_edge

sii9234_writeb.exit.sii9234_writeb.exit238.thread_crit_edge: ; preds = %sii9234_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit238.thread

if.end.i234:                                      ; preds = %sii9234_writeb.exit
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %conv3.i231 = trunc i32 %retval.0.i164304313327 to i8
  %call.i232 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %64, i8 noundef zeroext 116, i8 noundef zeroext %conv3.i231) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %cmp.i233 = icmp slt i32 %call.i232, 0
  br i1 %cmp.i233, label %sii9234_writeb.exit238.thread368, label %sii9234_writeb.exit238

sii9234_writeb.exit238.thread368:                 ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i235 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %65 = ptrtoint ptr %dev.i235 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i235, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 116, i32 noundef %retval.0.i164304313327) #8
  %67 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call.i232, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit258thread-pre-split

sii9234_writeb.exit238.thread:                    ; preds = %sii9234_writeb.exit.sii9234_writeb.exit238.thread_crit_edge, %sii9234_writeb.exit.thread361, %done.sii9234_writeb.exit238.thread_crit_edge
  %retval.0.i217339348360.ph = phi i32 [ %retval.0.i217339349, %sii9234_writeb.exit.thread361 ], [ %retval.0.i217339349, %sii9234_writeb.exit.sii9234_writeb.exit238.thread_crit_edge ], [ %call8.i211, %done.sii9234_writeb.exit238.thread_crit_edge ]
  %68 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr370 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit248

sii9234_writeb.exit238:                           ; preds = %if.end.i234
  %69 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call.i232, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool.not.i240 = icmp eq i32 %call.i232, 0
  br i1 %tobool.not.i240, label %if.end.i244, label %sii9234_writeb.exit238.sii9234_writeb.exit258thread-pre-split_crit_edge

sii9234_writeb.exit238.sii9234_writeb.exit258thread-pre-split_crit_edge: ; preds = %sii9234_writeb.exit238
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit258thread-pre-split

if.end.i244:                                      ; preds = %sii9234_writeb.exit238
  %70 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i329, align 4
  %call.i242 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %71, i8 noundef zeroext -80, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242)
  %cmp.i243 = icmp slt i32 %call.i242, 0
  br i1 %cmp.i243, label %do.end.i246, label %if.end.i244.if.end7.i247_crit_edge

if.end.i244.if.end7.i247_crit_edge:               ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i247

do.end.i246:                                      ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i245 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %72 = ptrtoint ptr %dev.i245 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i245, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 176, i32 noundef 255) #8
  br label %if.end7.i247

if.end7.i247:                                     ; preds = %do.end.i246, %if.end.i244.if.end7.i247_crit_edge
  %74 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i242, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit248

sii9234_writeb.exit248:                           ; preds = %if.end7.i247, %sii9234_writeb.exit238.thread
  %75 = phi i32 [ %.pr370, %sii9234_writeb.exit238.thread ], [ %call.i242, %if.end7.i247 ]
  %retval.0.i217339348360367 = phi i32 [ %retval.0.i217339348360.ph, %sii9234_writeb.exit238.thread ], [ %retval.0.i217339349, %if.end7.i247 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i250 = icmp eq i32 %75, 0
  br i1 %tobool.not.i250, label %if.end.i254, label %sii9234_writeb.exit248.sii9234_writeb.exit258thread-pre-split_crit_edge

sii9234_writeb.exit248.sii9234_writeb.exit258thread-pre-split_crit_edge: ; preds = %sii9234_writeb.exit248
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit258thread-pre-split

if.end.i254:                                      ; preds = %sii9234_writeb.exit248
  %76 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i329, align 4
  %call.i252 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext -79, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %cmp.i253 = icmp slt i32 %call.i252, 0
  br i1 %cmp.i253, label %do.end.i256, label %if.end.i254.if.end7.i257_crit_edge

if.end.i254.if.end7.i257_crit_edge:               ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i257

do.end.i256:                                      ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i255 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %78 = ptrtoint ptr %dev.i255 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i255, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 177, i32 noundef 255) #8
  br label %if.end7.i257

if.end7.i257:                                     ; preds = %do.end.i256, %if.end.i254.if.end7.i257_crit_edge
  %80 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call.i252, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit258

sii9234_writeb.exit258thread-pre-split:           ; preds = %sii9234_writeb.exit248.sii9234_writeb.exit258thread-pre-split_crit_edge, %sii9234_writeb.exit238.sii9234_writeb.exit258thread-pre-split_crit_edge, %sii9234_writeb.exit238.thread368
  %retval.0.i217339348360367374.ph = phi i32 [ %retval.0.i217339348360367, %sii9234_writeb.exit248.sii9234_writeb.exit258thread-pre-split_crit_edge ], [ %retval.0.i217339349, %sii9234_writeb.exit238.thread368 ], [ %retval.0.i217339349, %sii9234_writeb.exit238.sii9234_writeb.exit258thread-pre-split_crit_edge ]
  %81 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr375 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit258

sii9234_writeb.exit258:                           ; preds = %sii9234_writeb.exit258thread-pre-split, %if.end7.i257
  %82 = phi i32 [ %.pr375, %sii9234_writeb.exit258thread-pre-split ], [ %call.i252, %if.end7.i257 ]
  %retval.0.i217339348360367374 = phi i32 [ %retval.0.i217339348360367374.ph, %sii9234_writeb.exit258thread-pre-split ], [ %retval.0.i217339348360367, %if.end7.i257 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i260 = icmp eq i32 %82, 0
  br i1 %tobool.not.i260, label %if.end.i265, label %sii9234_writeb.exit269thread-pre-split

if.end.i265:                                      ; preds = %sii9234_writeb.exit258
  %83 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i329, align 4
  %conv3.i262 = trunc i32 %retval.0.i203 to i8
  %call.i263 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %84, i8 noundef zeroext 8, i8 noundef zeroext %conv3.i262) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %cmp.i264 = icmp slt i32 %call.i263, 0
  br i1 %cmp.i264, label %do.end.i267, label %if.end.i265.if.end7.i268_crit_edge

if.end.i265.if.end7.i268_crit_edge:               ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i268

do.end.i267:                                      ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i266 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %85 = ptrtoint ptr %dev.i266 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i266, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 8, i32 noundef %retval.0.i203) #8
  br label %if.end7.i268

if.end7.i268:                                     ; preds = %do.end.i267, %if.end.i265.if.end7.i268_crit_edge
  %87 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call.i263, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit269

sii9234_writeb.exit269thread-pre-split:           ; preds = %sii9234_writeb.exit258
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr376 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit269

sii9234_writeb.exit269:                           ; preds = %sii9234_writeb.exit269thread-pre-split, %if.end7.i268
  %89 = phi i32 [ %.pr376, %sii9234_writeb.exit269thread-pre-split ], [ %call.i263, %if.end7.i268 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i271 = icmp eq i32 %89, 0
  br i1 %tobool.not.i271, label %if.end.i276, label %sii9234_writeb.exit269.sii9234_writeb.exit280_crit_edge

sii9234_writeb.exit269.sii9234_writeb.exit280_crit_edge: ; preds = %sii9234_writeb.exit269
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit280

if.end.i276:                                      ; preds = %sii9234_writeb.exit269
  %90 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i329, align 4
  %conv3.i273 = trunc i32 %retval.0.i217339348360367374 to i8
  %call.i274 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %91, i8 noundef zeroext 30, i8 noundef zeroext %conv3.i273) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %cmp.i275 = icmp slt i32 %call.i274, 0
  br i1 %cmp.i275, label %do.end.i278, label %if.end.i276.sii9234_writeb.exit280_crit_edge

if.end.i276.sii9234_writeb.exit280_crit_edge:     ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit280

do.end.i278:                                      ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i277 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %92 = ptrtoint ptr %dev.i277 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i277, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 30, i32 noundef %retval.0.i217339348360367374) #8
  br label %sii9234_writeb.exit280

sii9234_writeb.exit280:                           ; preds = %do.end.i278, %if.end.i276.sii9234_writeb.exit280_crit_edge, %sii9234_writeb.exit269.sii9234_writeb.exit280_crit_edge
  %94 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %i2c_error.i, align 4
  %state69 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 7
  %95 = ptrtoint ptr %state69 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %state69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %96)
  %cmp = icmp eq i32 %96, 7
  br i1 %cmp, label %do.body71, label %sii9234_writeb.exit280.if.end89_crit_edge

sii9234_writeb.exit280.if.end89_crit_edge:        ; preds = %sii9234_writeb.exit280
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

do.body71:                                        ; preds = %sii9234_writeb.exit280
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_irq_thread.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_irq_thread, %if.then83)) #5
          to label %do.end87 [label %if.then83], !srcloc !175

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  %dev84 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %97 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev84, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_irq_thread.__UNIQUE_ID_ddebug318, ptr noundef %98, ptr noundef nonnull @.str.16) #5
  br label %do.end87

do.end87:                                         ; preds = %if.then83, %do.body71
  %gpio_reset.i = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 3
  %99 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %100, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %101 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %102, i32 noundef 0) #5
  tail call fastcc void @sii9234_goto_d3(ptr noundef %data)
  %103 = ptrtoint ptr %state69 to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pr378 = load i32, ptr %state69, align 4
  br label %if.end89

if.end89:                                         ; preds = %do.end87, %sii9234_writeb.exit280.if.end89_crit_edge
  %104 = phi i32 [ %.pr378, %do.end87 ], [ %96, %sii9234_writeb.exit280.if.end89_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %104)
  %cmp91 = icmp eq i32 %104, 6
  br i1 %cmp91, label %do.end95, label %if.end89.if.end99_crit_edge

if.end89.if.end99_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

do.end95:                                         ; preds = %if.end89
  %dev96 = getelementptr inbounds %struct.sii9234, ptr %data, i32 0, i32 2
  %105 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.17) #8
  %arrayidx.i282 = getelementptr [4 x ptr], ptr %data, i32 0, i32 1
  %107 = ptrtoint ptr %arrayidx.i282 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i282, align 4
  %109 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i284 = icmp eq i32 %110, 0
  br i1 %tobool.not.i284, label %if.end.i287, label %do.end95.sii9234_writebm.exit_crit_edge

do.end95.sii9234_writebm.exit_crit_edge:          ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit

if.end.i287:                                      ; preds = %do.end95
  %call.i285 = tail call i32 @i2c_smbus_write_byte(ptr noundef %108, i8 noundef zeroext 61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285)
  %cmp.i286 = icmp slt i32 %call.i285, 0
  br i1 %cmp.i286, label %if.end.i287.cleanup.sink.split.i291_crit_edge, label %if.end7.i290

if.end.i287.cleanup.sink.split.i291_crit_edge:    ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i291

if.end7.i290:                                     ; preds = %if.end.i287
  %call8.i288 = tail call i32 @i2c_smbus_read_byte(ptr noundef %108) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i288)
  %cmp9.i289 = icmp slt i32 %call8.i288, 0
  br i1 %cmp9.i289, label %if.end7.i290.cleanup.sink.split.i291_crit_edge, label %if.end18.i

if.end7.i290.cleanup.sink.split.i291_crit_edge:   ; preds = %if.end7.i290
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i291

if.end18.i:                                       ; preds = %if.end7.i290
  %and19.i = and i32 %call8.i288, -2
  %conv21.i = trunc i32 %and19.i to i8
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %108, i8 noundef zeroext 61, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end18.i.cleanup.sink.split.i291_crit_edge, label %if.end18.i.sii9234_writebm.exit_crit_edge

if.end18.i.sii9234_writebm.exit_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit

if.end18.i.cleanup.sink.split.i291_crit_edge:     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i291

cleanup.sink.split.i291:                          ; preds = %if.end18.i.cleanup.sink.split.i291_crit_edge, %if.end7.i290.cleanup.sink.split.i291_crit_edge, %if.end.i287.cleanup.sink.split.i291_crit_edge
  %or.sink.i = phi i32 [ 0, %if.end.i287.cleanup.sink.split.i291_crit_edge ], [ 0, %if.end7.i290.cleanup.sink.split.i291_crit_edge ], [ %and19.i, %if.end18.i.cleanup.sink.split.i291_crit_edge ]
  %call22.sink.i = phi i32 [ %call.i285, %if.end.i287.cleanup.sink.split.i291_crit_edge ], [ %call8.i288, %if.end7.i290.cleanup.sink.split.i291_crit_edge ], [ %call22.i, %if.end18.i.cleanup.sink.split.i291_crit_edge ]
  %111 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.23, i32 noundef 61, i32 noundef %or.sink.i) #8
  %113 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call22.sink.i, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit

sii9234_writebm.exit:                             ; preds = %cleanup.sink.split.i291, %if.end18.i.sii9234_writebm.exit_crit_edge, %do.end95.sii9234_writebm.exit_crit_edge
  %114 = ptrtoint ptr %state69 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %state69, align 4
  br label %if.end99

if.end99:                                         ; preds = %sii9234_writebm.exit, %if.end89.if.end99_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sii9234_rgnd_ready_irq(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %1, label %entry.cleanup53_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.end16
  ]

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_rgnd_ready_irq.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_rgnd_ready_irq, %if.then3)) #5
          to label %do.end [label %if.then3], !srcloc !175

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_rgnd_ready_irq.__UNIQUE_ID_ddebug308, ptr noundef %4, ptr noundef nonnull @.str.27) #5
  br label %do.end

do.end:                                           ; preds = %if.then3, %if.then
  %gpio_reset.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 3
  %5 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 20) #5
  %7 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #5
  %call4 = tail call fastcc i32 @sii9234_reset(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %do.end.cleanup53_crit_edge

do.end.cleanup53_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.28) #8
  br label %cleanup53

if.end16:                                         ; preds = %entry
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %i2c_error.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 4
  %13 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.sii9234_readb.exit.thread_crit_edge

if.end16.sii9234_readb.exit.thread_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit.thread

if.end.i:                                         ; preds = %if.end16
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %12, i8 noundef zeroext -103) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end7.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i.cleanup.sink.split.i_crit_edge, label %sii9234_readb.exit

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end7.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %dev15.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %15 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev15.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef 153) #8
  br label %sii9234_readb.exit.thread

sii9234_readb.exit.thread:                        ; preds = %cleanup.sink.split.i, %if.end16.sii9234_readb.exit.thread_crit_edge
  %17 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %i2c_error.i, align 4
  br label %cleanup53

sii9234_readb.exit:                               ; preds = %if.end7.i
  %18 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %i2c_error.i, align 4
  store i32 0, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool19.not = icmp eq i32 %.pr, 0
  br i1 %tobool19.not, label %if.end21, label %sii9234_readb.exit.cleanup53_crit_edge

sii9234_readb.exit.cleanup53_crit_edge:           ; preds = %sii9234_readb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

if.end21:                                         ; preds = %sii9234_readb.exit
  %and = and i32 %call8.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp22.not = icmp eq i32 %and, 2
  br i1 %cmp22.not, label %do.body29, label %do.end26

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %dev27 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %19 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.30) #8
  br label %cleanup53

do.body29:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_rgnd_ready_irq.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_rgnd_ready_irq, %if.then41)) #5
          to label %do.end45 [label %if.then41], !srcloc !175

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %dev42 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %21 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_rgnd_ready_irq.__UNIQUE_ID_ddebug309, ptr noundef %22, ptr noundef nonnull @.str.33) #5
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 4
  %25 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i73 = icmp eq i32 %26, 0
  br i1 %tobool.not.i73, label %if.end.i76, label %do.end45.sii9234_writebm.exit.thread_crit_edge

do.end45.sii9234_writebm.exit.thread_crit_edge:   ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit.thread

if.end.i76:                                       ; preds = %do.end45
  %call.i74 = tail call i32 @i2c_smbus_write_byte(ptr noundef %24, i8 noundef zeroext -109) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp.i75 = icmp slt i32 %call.i74, 0
  br i1 %cmp.i75, label %if.end.i76.cleanup.sink.split.i80_crit_edge, label %if.end7.i79

if.end.i76.cleanup.sink.split.i80_crit_edge:      ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i80

if.end7.i79:                                      ; preds = %if.end.i76
  %call8.i77 = tail call i32 @i2c_smbus_read_byte(ptr noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i77)
  %cmp9.i78 = icmp slt i32 %call8.i77, 0
  br i1 %cmp9.i78, label %if.end7.i79.cleanup.sink.split.i80_crit_edge, label %if.end18.i

if.end7.i79.cleanup.sink.split.i80_crit_edge:     ; preds = %if.end7.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i80

if.end18.i:                                       ; preds = %if.end7.i79
  %or.i = or i32 %call8.i77, 140
  %conv21.i = trunc i32 %or.i to i8
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext -109, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end18.i.cleanup.sink.split.i80_crit_edge, label %sii9234_writebm.exit

if.end18.i.cleanup.sink.split.i80_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i80

cleanup.sink.split.i80:                           ; preds = %if.end18.i.cleanup.sink.split.i80_crit_edge, %if.end7.i79.cleanup.sink.split.i80_crit_edge, %if.end.i76.cleanup.sink.split.i80_crit_edge
  %or.sink.i = phi i32 [ -1, %if.end.i76.cleanup.sink.split.i80_crit_edge ], [ -1, %if.end7.i79.cleanup.sink.split.i80_crit_edge ], [ %or.i, %if.end18.i.cleanup.sink.split.i80_crit_edge ]
  %call22.sink.i = phi i32 [ %call.i74, %if.end.i76.cleanup.sink.split.i80_crit_edge ], [ %call8.i77, %if.end7.i79.cleanup.sink.split.i80_crit_edge ], [ %call22.i, %if.end18.i.cleanup.sink.split.i80_crit_edge ]
  %dev29.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %27 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev29.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 147, i32 noundef %or.sink.i) #8
  %29 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call22.sink.i, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit.thread

sii9234_writebm.exit.thread:                      ; preds = %cleanup.sink.split.i80, %do.end45.sii9234_writebm.exit.thread_crit_edge
  %30 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr113 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit

sii9234_writebm.exit:                             ; preds = %if.end18.i
  %31 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr111 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr111)
  %tobool.not.i82 = icmp eq i32 %.pr111, 0
  br i1 %tobool.not.i82, label %if.end.i85, label %sii9234_writebm.exit.sii9234_writebm.exit105.thread_crit_edge

sii9234_writebm.exit.sii9234_writebm.exit105.thread_crit_edge: ; preds = %sii9234_writebm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit105.thread

if.end.i85:                                       ; preds = %sii9234_writebm.exit
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  %call.i83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext -108, i8 noundef zeroext 119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp.i84 = icmp slt i32 %call.i83, 0
  br i1 %cmp.i84, label %do.end.i, label %if.end.i85.if.end7.i86_crit_edge

if.end.i85.if.end7.i86_crit_edge:                 ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i86

do.end.i:                                         ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 148, i32 noundef 119) #8
  br label %if.end7.i86

if.end7.i86:                                      ; preds = %do.end.i, %if.end.i85.if.end7.i86_crit_edge
  %36 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i83, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit

sii9234_writeb.exit:                              ; preds = %if.end7.i86, %sii9234_writebm.exit.thread
  %37 = phi i32 [ %.pr113, %sii9234_writebm.exit.thread ], [ %call.i83, %if.end7.i86 ]
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i88 = icmp eq i32 %37, 0
  br i1 %tobool.not.i88, label %if.end.i91, label %sii9234_writeb.exit.sii9234_writebm.exit105_crit_edge

sii9234_writeb.exit.sii9234_writebm.exit105_crit_edge: ; preds = %sii9234_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit105

if.end.i91:                                       ; preds = %sii9234_writeb.exit
  %call.i89 = tail call i32 @i2c_smbus_write_byte(ptr noundef %39, i8 noundef zeroext -107) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i90 = icmp slt i32 %call.i89, 0
  br i1 %cmp.i90, label %if.end.i91.cleanup.sink.split.i104_crit_edge, label %if.end7.i94

if.end.i91.cleanup.sink.split.i104_crit_edge:     ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i104

if.end7.i94:                                      ; preds = %if.end.i91
  %call8.i92 = tail call i32 @i2c_smbus_read_byte(ptr noundef %39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i92)
  %cmp9.i93 = icmp slt i32 %call8.i92, 0
  br i1 %cmp9.i93, label %if.end7.i94.cleanup.sink.split.i104_crit_edge, label %if.end18.i100

if.end7.i94.cleanup.sink.split.i104_crit_edge:    ; preds = %if.end7.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i104

if.end18.i100:                                    ; preds = %if.end7.i94
  %or.i96 = or i32 %call8.i92, 5
  %conv21.i97 = trunc i32 %or.i96 to i8
  %call22.i98 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext -107, i8 noundef zeroext %conv21.i97) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i98)
  %cmp23.i99 = icmp slt i32 %call22.i98, 0
  br i1 %cmp23.i99, label %if.end18.i100.cleanup.sink.split.i104_crit_edge, label %if.end18.i100.sii9234_writebm.exit105_crit_edge

if.end18.i100.sii9234_writebm.exit105_crit_edge:  ; preds = %if.end18.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit105

if.end18.i100.cleanup.sink.split.i104_crit_edge:  ; preds = %if.end18.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i104

cleanup.sink.split.i104:                          ; preds = %if.end18.i100.cleanup.sink.split.i104_crit_edge, %if.end7.i94.cleanup.sink.split.i104_crit_edge, %if.end.i91.cleanup.sink.split.i104_crit_edge
  %or.sink.i101 = phi i32 [ -1, %if.end.i91.cleanup.sink.split.i104_crit_edge ], [ -1, %if.end7.i94.cleanup.sink.split.i104_crit_edge ], [ %or.i96, %if.end18.i100.cleanup.sink.split.i104_crit_edge ]
  %dev29.i103 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %40 = ptrtoint ptr %dev29.i103 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev29.i103, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 149, i32 noundef %or.sink.i101) #8
  br label %sii9234_writebm.exit105.thread

sii9234_writebm.exit105.thread:                   ; preds = %cleanup.sink.split.i104, %sii9234_writebm.exit.sii9234_writebm.exit105.thread_crit_edge
  %42 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %i2c_error.i, align 4
  br label %cleanup53

sii9234_writebm.exit105:                          ; preds = %if.end18.i100.sii9234_writebm.exit105_crit_edge, %sii9234_writeb.exit.sii9234_writebm.exit105_crit_edge
  %43 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr115 = load i32, ptr %i2c_error.i, align 4
  store i32 0, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr115)
  %tobool50.not = icmp eq i32 %.pr115, 0
  br i1 %tobool50.not, label %if.end52, label %sii9234_writebm.exit105.cleanup53_crit_edge

sii9234_writebm.exit105.cleanup53_crit_edge:      ; preds = %sii9234_writebm.exit105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup53

if.end52:                                         ; preds = %sii9234_writebm.exit105
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 200) #5
  br label %cleanup53

cleanup53:                                        ; preds = %if.end52, %sii9234_writebm.exit105.cleanup53_crit_edge, %sii9234_writebm.exit105.thread, %do.end26, %sii9234_readb.exit.cleanup53_crit_edge, %sii9234_readb.exit.thread, %do.end9, %do.end.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.1 = phi i32 [ 2, %do.end26 ], [ 3, %if.end52 ], [ 7, %do.end9 ], [ 2, %do.end.cleanup53_crit_edge ], [ 7, %entry.cleanup53_crit_edge ], [ 7, %sii9234_readb.exit.cleanup53_crit_edge ], [ 7, %sii9234_writebm.exit105.cleanup53_crit_edge ], [ 7, %sii9234_readb.exit.thread ], [ 7, %sii9234_writebm.exit105.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sii9234_rsen_change(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %i2c_error.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 4
  %6 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %sii9234_readb.exit

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %5, i8 noundef zeroext 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.sii9234_readb.exit.thread_crit_edge, label %if.end7.i

if.end.i.sii9234_readb.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i.sii9234_readb.exit.thread_crit_edge, label %if.end7.i.if.end3_crit_edge

if.end7.i.if.end3_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end7.i.sii9234_readb.exit.thread_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit.thread

sii9234_readb.exit.thread:                        ; preds = %if.end7.i.sii9234_readb.exit.thread_crit_edge, %if.end.i.sii9234_readb.exit.thread_crit_edge
  %call8.sink.i = phi i32 [ %call.i, %if.end.i.sii9234_readb.exit.thread_crit_edge ], [ %call8.i, %if.end7.i.sii9234_readb.exit.thread_crit_edge ]
  %dev15.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev15.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef 9) #8
  %10 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call8.sink.i, ptr %i2c_error.i, align 4
  br label %cleanup

sii9234_readb.exit:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %sii9234_readb.exit.cleanup_crit_edge, label %sii9234_readb.exit.if.end3_crit_edge

sii9234_readb.exit.if.end3_crit_edge:             ; preds = %sii9234_readb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

sii9234_readb.exit.cleanup_crit_edge:             ; preds = %sii9234_readb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %sii9234_readb.exit.if.end3_crit_edge, %if.end7.i.if.end3_crit_edge
  %retval.0.i120139 = phi i32 [ %7, %sii9234_readb.exit.if.end3_crit_edge ], [ %call8.i, %if.end7.i.if.end3_crit_edge ]
  %and = and i32 %retval.0.i120139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body16, label %do.body5

do.body5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_rsen_change.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_rsen_change, %if.then10)) #5
          to label %cleanup [label %if.then10], !srcloc !175

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %dev11 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %11 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_rsen_change.__UNIQUE_ID_ddebug311, ptr noundef %12, ptr noundef nonnull @.str.36) #5
  br label %cleanup

do.body16:                                        ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_rsen_change.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_rsen_change, %if.then28)) #5
          to label %do.end32 [label %if.then28], !srcloc !175

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %dev29 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %13 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_rsen_change.__UNIQUE_ID_ddebug312, ptr noundef %14, ptr noundef nonnull @.str.37) #5
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body16
  tail call void @msleep(i32 noundef 110) #5
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %17 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i122 = icmp eq i32 %18, 0
  br i1 %tobool.not.i122, label %if.end.i125, label %sii9234_readb.exit133

if.end.i125:                                      ; preds = %do.end32
  %call.i123 = tail call i32 @i2c_smbus_write_byte(ptr noundef %16, i8 noundef zeroext 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp.i124 = icmp slt i32 %call.i123, 0
  br i1 %cmp.i124, label %if.end.i125.sii9234_readb.exit133.thread_crit_edge, label %if.end7.i128

if.end.i125.sii9234_readb.exit133.thread_crit_edge: ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit133.thread

if.end7.i128:                                     ; preds = %if.end.i125
  %call8.i126 = tail call i32 @i2c_smbus_read_byte(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i126)
  %cmp9.i127 = icmp slt i32 %call8.i126, 0
  br i1 %cmp9.i127, label %if.end7.i128.sii9234_readb.exit133.thread_crit_edge, label %if.end7.i128.do.body37_crit_edge

if.end7.i128.do.body37_crit_edge:                 ; preds = %if.end7.i128
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

if.end7.i128.sii9234_readb.exit133.thread_crit_edge: ; preds = %if.end7.i128
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_readb.exit133.thread

sii9234_readb.exit133.thread:                     ; preds = %if.end7.i128.sii9234_readb.exit133.thread_crit_edge, %if.end.i125.sii9234_readb.exit133.thread_crit_edge
  %call8.sink.i129 = phi i32 [ %call.i123, %if.end.i125.sii9234_readb.exit133.thread_crit_edge ], [ %call8.i126, %if.end7.i128.sii9234_readb.exit133.thread_crit_edge ]
  %dev15.i130 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %19 = ptrtoint ptr %dev15.i130 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev15.i130, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.22, i32 noundef 9) #8
  %21 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call8.sink.i129, ptr %i2c_error.i, align 4
  br label %cleanup

sii9234_readb.exit133:                            ; preds = %do.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp34 = icmp slt i32 %18, 0
  br i1 %cmp34, label %sii9234_readb.exit133.cleanup_crit_edge, label %sii9234_readb.exit133.do.body37_crit_edge

sii9234_readb.exit133.do.body37_crit_edge:        ; preds = %sii9234_readb.exit133
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

sii9234_readb.exit133.cleanup_crit_edge:          ; preds = %sii9234_readb.exit133
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body37:                                        ; preds = %sii9234_readb.exit133.do.body37_crit_edge, %if.end7.i128.do.body37_crit_edge
  %retval.0.i132148 = phi i32 [ %18, %sii9234_readb.exit133.do.body37_crit_edge ], [ %call8.i126, %if.end7.i128.do.body37_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_rsen_change.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_rsen_change, %if.then49)) #5
          to label %do.end53 [label %if.then49], !srcloc !175

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %dev50 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %22 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_rsen_change.__UNIQUE_ID_ddebug313, ptr noundef %23, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i132148) #5
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.body37
  %and54 = and i32 %retval.0.i132148, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body75, label %do.body57

do.body57:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_rsen_change.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_rsen_change, %if.then69)) #5
          to label %cleanup [label %if.then69], !srcloc !175

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  %dev70 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %24 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev70, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_rsen_change.__UNIQUE_ID_ddebug314, ptr noundef %25, ptr noundef nonnull @.str.39) #5
  br label %cleanup

do.body75:                                        ; preds = %do.end53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_rsen_change.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_rsen_change, %if.then87)) #5
          to label %do.end91 [label %if.then87], !srcloc !175

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #7
  %dev88 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %26 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev88, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_rsen_change.__UNIQUE_ID_ddebug315, ptr noundef %27, ptr noundef nonnull @.str.40) #5
  br label %do.end91

do.end91:                                         ; preds = %if.then87, %do.body75
  tail call fastcc void @sii9234_tmds_control(ptr noundef %ctx, i1 noundef zeroext false)
  tail call fastcc void @force_usb_id_switch_open(ptr noundef %ctx)
  tail call fastcc void @release_usb_id_switch_open(ptr noundef %ctx)
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %if.then69, %do.body57, %sii9234_readb.exit133.cleanup_crit_edge, %sii9234_readb.exit133.thread, %if.then10, %do.body5, %sii9234_readb.exit.cleanup_crit_edge, %sii9234_readb.exit.thread, %do.end
  %retval.0 = phi i32 [ 7, %do.end ], [ 7, %do.end91 ], [ 7, %sii9234_readb.exit.cleanup_crit_edge ], [ 4, %if.then10 ], [ 7, %sii9234_readb.exit133.cleanup_crit_edge ], [ 4, %if.then69 ], [ 7, %sii9234_readb.exit.thread ], [ 4, %do.body5 ], [ 7, %sii9234_readb.exit133.thread ], [ 4, %do.body57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sii9234_mhl_established(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_mhl_established.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_mhl_established, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_mhl_established.__UNIQUE_ID_ddebug310, ptr noundef %1, ptr noundef nonnull @.str.42) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i2c_error.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.sii9234_writeb.exit61_crit_edge

do.end.sii9234_writeb.exit61_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit61

if.end.i:                                         ; preds = %do.end
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -96, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sii9234_writeb.exit.thread65, label %sii9234_writeb.exit

sii9234_writeb.exit.thread65:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 160, i32 noundef 16) #8
  br label %sii9234_writeb.exit61.sink.split

sii9234_writeb.exit:                              ; preds = %if.end.i
  %8 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i19 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i19, label %if.end.i22, label %sii9234_writeb.exit.sii9234_writeb.exit61_crit_edge

sii9234_writeb.exit.sii9234_writeb.exit61_crit_edge: ; preds = %sii9234_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit61

if.end.i22:                                       ; preds = %sii9234_writeb.exit
  %arrayidx.i = getelementptr [4 x ptr], ptr %ctx, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call.i20 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 7, i8 noundef zeroext 50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.i21 = icmp slt i32 %call.i20, 0
  br i1 %cmp.i21, label %sii9234_writeb.exit26.thread69, label %sii9234_writeb.exit26

sii9234_writeb.exit26.thread69:                   ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i23 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 7, i32 noundef 50) #8
  br label %sii9234_writeb.exit61.sink.split

sii9234_writeb.exit26:                            ; preds = %if.end.i22
  %13 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i20, ptr %i2c_error.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i29 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i29, label %if.end.i32, label %sii9234_writeb.exit26.sii9234_writeb.exit61_crit_edge

sii9234_writeb.exit26.sii9234_writeb.exit61_crit_edge: ; preds = %sii9234_writeb.exit26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit61

if.end.i32:                                       ; preds = %sii9234_writeb.exit26
  %call.i30 = tail call i32 @i2c_smbus_write_byte(ptr noundef %15, i8 noundef zeroext 68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp.i31 = icmp slt i32 %call.i30, 0
  br i1 %cmp.i31, label %if.end.i32.cleanup.sink.split.i_crit_edge, label %if.end7.i33

if.end.i32.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end7.i33:                                      ; preds = %if.end.i32
  %call8.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i33.cleanup.sink.split.i_crit_edge, label %if.end18.i

if.end7.i33.cleanup.sink.split.i_crit_edge:       ; preds = %if.end7.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %if.end7.i33
  %or.i = or i32 %call8.i, 2
  %conv21.i = trunc i32 %or.i to i8
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 68, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %sii9234_writebm.exit

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end18.i.cleanup.sink.split.i_crit_edge, %if.end7.i33.cleanup.sink.split.i_crit_edge, %if.end.i32.cleanup.sink.split.i_crit_edge
  %or.sink.i = phi i32 [ -1, %if.end.i32.cleanup.sink.split.i_crit_edge ], [ -1, %if.end7.i33.cleanup.sink.split.i_crit_edge ], [ %or.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %call22.sink.i = phi i32 [ %call.i30, %if.end.i32.cleanup.sink.split.i_crit_edge ], [ %call8.i, %if.end7.i33.cleanup.sink.split.i_crit_edge ], [ %call22.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %dev29.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %16 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev29.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.25, i32 noundef 68, i32 noundef %or.sink.i) #8
  br label %sii9234_writeb.exit61.sink.split

sii9234_writebm.exit:                             ; preds = %if.end18.i
  %18 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.pr = load i32, ptr %i2c_error.i, align 4
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr)
  %tobool.not.i35 = icmp eq i32 %.pr.pr, 0
  br i1 %tobool.not.i35, label %if.end.i38, label %sii9234_writebm.exit.sii9234_writeb.exit61_crit_edge

sii9234_writebm.exit.sii9234_writeb.exit61_crit_edge: ; preds = %sii9234_writebm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit61

if.end.i38:                                       ; preds = %sii9234_writebm.exit
  %call.i36 = tail call i32 @i2c_smbus_write_byte(ptr noundef %20, i8 noundef zeroext -112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp.i37 = icmp slt i32 %call.i36, 0
  br i1 %cmp.i37, label %if.end.i38.cleanup.sink.split.i51_crit_edge, label %if.end7.i41

if.end.i38.cleanup.sink.split.i51_crit_edge:      ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i51

if.end7.i41:                                      ; preds = %if.end.i38
  %call8.i39 = tail call i32 @i2c_smbus_read_byte(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i39)
  %cmp9.i40 = icmp slt i32 %call8.i39, 0
  br i1 %cmp9.i40, label %if.end7.i41.cleanup.sink.split.i51_crit_edge, label %if.end18.i47

if.end7.i41.cleanup.sink.split.i51_crit_edge:     ; preds = %if.end7.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i51

if.end18.i47:                                     ; preds = %if.end7.i41
  %or.i43 = or i32 %call8.i39, 1
  %conv21.i44 = trunc i32 %or.i43 to i8
  %call22.i45 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext -112, i8 noundef zeroext %conv21.i44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i45)
  %cmp23.i46 = icmp slt i32 %call22.i45, 0
  br i1 %cmp23.i46, label %if.end18.i47.cleanup.sink.split.i51_crit_edge, label %sii9234_writebm.exit52

if.end18.i47.cleanup.sink.split.i51_crit_edge:    ; preds = %if.end18.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i51

cleanup.sink.split.i51:                           ; preds = %if.end18.i47.cleanup.sink.split.i51_crit_edge, %if.end7.i41.cleanup.sink.split.i51_crit_edge, %if.end.i38.cleanup.sink.split.i51_crit_edge
  %or.sink.i48 = phi i32 [ -1, %if.end.i38.cleanup.sink.split.i51_crit_edge ], [ -1, %if.end7.i41.cleanup.sink.split.i51_crit_edge ], [ %or.i43, %if.end18.i47.cleanup.sink.split.i51_crit_edge ]
  %call22.sink.i49 = phi i32 [ %call.i36, %if.end.i38.cleanup.sink.split.i51_crit_edge ], [ %call8.i39, %if.end7.i41.cleanup.sink.split.i51_crit_edge ], [ %call22.i45, %if.end18.i47.cleanup.sink.split.i51_crit_edge ]
  %dev29.i50 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %21 = ptrtoint ptr %dev29.i50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev29.i50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 144, i32 noundef %or.sink.i48) #8
  br label %sii9234_writeb.exit61.sink.split

sii9234_writebm.exit52:                           ; preds = %if.end18.i47
  %23 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr73.pr = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr73.pr)
  %tobool.not.i54 = icmp eq i32 %.pr73.pr, 0
  br i1 %tobool.not.i54, label %if.end.i57, label %sii9234_writebm.exit52.sii9234_writeb.exit61_crit_edge

sii9234_writebm.exit52.sii9234_writeb.exit61_crit_edge: ; preds = %sii9234_writebm.exit52
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit61

if.end.i57:                                       ; preds = %sii9234_writebm.exit52
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %call.i55 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 117, i8 noundef zeroext 96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp.i56, label %do.end.i59, label %if.end.i57.sii9234_writeb.exit61.sink.split_crit_edge

if.end.i57.sii9234_writeb.exit61.sink.split_crit_edge: ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit61.sink.split

do.end.i59:                                       ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i58 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %26 = ptrtoint ptr %dev.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 117, i32 noundef 96) #8
  br label %sii9234_writeb.exit61.sink.split

sii9234_writeb.exit61.sink.split:                 ; preds = %do.end.i59, %if.end.i57.sii9234_writeb.exit61.sink.split_crit_edge, %cleanup.sink.split.i51, %cleanup.sink.split.i, %sii9234_writeb.exit26.thread69, %sii9234_writeb.exit.thread65
  %call.i20.sink = phi i32 [ %call.i20, %sii9234_writeb.exit26.thread69 ], [ %call22.sink.i, %cleanup.sink.split.i ], [ %call.i, %sii9234_writeb.exit.thread65 ], [ %call22.sink.i49, %cleanup.sink.split.i51 ], [ %call.i55, %do.end.i59 ], [ %call.i55, %if.end.i57.sii9234_writeb.exit61.sink.split_crit_edge ]
  %28 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i20.sink, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit61

sii9234_writeb.exit61:                            ; preds = %sii9234_writeb.exit61.sink.split, %sii9234_writebm.exit52.sii9234_writeb.exit61_crit_edge, %sii9234_writebm.exit.sii9234_writeb.exit61_crit_edge, %sii9234_writeb.exit26.sii9234_writeb.exit61_crit_edge, %sii9234_writeb.exit.sii9234_writeb.exit61_crit_edge, %do.end.sii9234_writeb.exit61_crit_edge
  %29 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i2c_error.i, align 4
  store i32 0, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool9.not = icmp eq i32 %30, 0
  %. = select i1 %tobool9.not, i32 5, i32 7
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii9234_goto_d3(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii9234_goto_d3.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii9234_goto_d3, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !175

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii9234_goto_d3.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.46) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @sii9234_reset(ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end11, label %if.end5

if.end5:                                          ; preds = %do.end
  %i2c_error.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.sii9234_writebm.exit_crit_edge

if.end5.sii9234_writebm.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit

if.end.i:                                         ; preds = %if.end5
  %arrayidx.i = getelementptr [4 x ptr], ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sii9234_writeb.exit.thread12, label %sii9234_writeb.exit

sii9234_writeb.exit.thread12:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef 3) #8
  br label %sii9234_writebm.exit

sii9234_writeb.exit:                              ; preds = %if.end.i
  %8 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %i2c_error.i, align 4
  %arrayidx.i1 = getelementptr [4 x ptr], ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i3 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i3, label %if.end.i6, label %sii9234_writeb.exit.sii9234_writebm.exit_crit_edge

sii9234_writeb.exit.sii9234_writebm.exit_crit_edge: ; preds = %sii9234_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit

if.end.i6:                                        ; preds = %sii9234_writeb.exit
  %call.i4 = tail call i32 @i2c_smbus_write_byte(ptr noundef %10, i8 noundef zeroext 61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp.i5 = icmp slt i32 %call.i4, 0
  br i1 %cmp.i5, label %if.end.i6.cleanup.sink.split.i_crit_edge, label %if.end7.i7

if.end.i6.cleanup.sink.split.i_crit_edge:         ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end7.i7:                                       ; preds = %if.end.i6
  %call8.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i7.cleanup.sink.split.i_crit_edge, label %if.end18.i

if.end7.i7.cleanup.sink.split.i_crit_edge:        ; preds = %if.end7.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %if.end7.i7
  %and19.i = and i32 %call8.i, -2
  %conv21.i = trunc i32 %and19.i to i8
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 61, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %if.end18.i.sii9234_writebm.exit_crit_edge

if.end18.i.sii9234_writebm.exit_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end18.i.cleanup.sink.split.i_crit_edge, %if.end7.i7.cleanup.sink.split.i_crit_edge, %if.end.i6.cleanup.sink.split.i_crit_edge
  %or.sink.i = phi i32 [ 0, %if.end.i6.cleanup.sink.split.i_crit_edge ], [ 0, %if.end7.i7.cleanup.sink.split.i_crit_edge ], [ %and19.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %dev29.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %11 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev29.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.23, i32 noundef 61, i32 noundef %or.sink.i) #8
  br label %sii9234_writebm.exit

sii9234_writebm.exit:                             ; preds = %cleanup.sink.split.i, %if.end18.i.sii9234_writebm.exit_crit_edge, %sii9234_writeb.exit.sii9234_writebm.exit_crit_edge, %sii9234_writeb.exit.thread12, %if.end5.sii9234_writebm.exit_crit_edge
  %13 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %i2c_error.i, align 4
  %state = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 7
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %state, align 4
  br label %cleanup

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev12 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %15 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %sii9234_writebm.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sii9234_reset(ptr noundef %ctx) unnamed_addr #2 align 64 {
if.end.i.i:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_error.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i2c_error.i, align 4
  %arrayidx.i.i = getelementptr [4 x ptr], ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 61, i8 noundef zeroext 63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sii9234_writeb.exit.thread40.i, label %sii9234_writeb.exit.i

sii9234_writeb.exit.thread40.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.23, i32 noundef 61, i32 noundef 63) #8
  %5 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit18.thread.i

sii9234_writeb.exit.i:                            ; preds = %if.end.i.i
  %6 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i10.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i10.i, label %if.end.i14.i, label %sii9234_writeb.exit.i.sii9234_writeb.exit18.thread.i_crit_edge

sii9234_writeb.exit.i.sii9234_writeb.exit18.thread.i_crit_edge: ; preds = %sii9234_writeb.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit18.thread.i

if.end.i14.i:                                     ; preds = %sii9234_writeb.exit.i
  %arrayidx.i11.i = getelementptr [4 x ptr], ptr %ctx, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i11.i, align 4
  %call.i12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 17, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp.i13.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp.i13.i, label %sii9234_writeb.exit18.thread43.i, label %sii9234_writeb.exit18.i

sii9234_writeb.exit18.thread43.i:                 ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i15.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i15.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 17, i32 noundef 1) #8
  br label %sii9234_power_init.exit

sii9234_writeb.exit18.thread.i:                   ; preds = %sii9234_writeb.exit.i.sii9234_writeb.exit18.thread.i_crit_edge, %sii9234_writeb.exit.thread40.i
  %11 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit28.i

sii9234_writeb.exit18.i:                          ; preds = %if.end.i14.i
  %12 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i12.i, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool.not.i20.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool.not.i20.i, label %if.end.i24.i, label %sii9234_power_init.exit.thread

sii9234_power_init.exit.thread:                   ; preds = %sii9234_writeb.exit18.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %i2c_error.i, align 4
  br label %if.end.i.i91

if.end.i24.i:                                     ; preds = %sii9234_writeb.exit18.i
  %14 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i11.i, align 4
  %call.i22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 18, i8 noundef zeroext 21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %cmp.i23.i = icmp slt i32 %call.i22.i, 0
  br i1 %cmp.i23.i, label %do.end.i26.i, label %if.end.i24.i.if.end7.i27.i_crit_edge

if.end.i24.i.if.end7.i27.i_crit_edge:             ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i27.i

do.end.i26.i:                                     ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i25.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %16 = ptrtoint ptr %dev.i25.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i25.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 18, i32 noundef 21) #8
  br label %if.end7.i27.i

if.end7.i27.i:                                    ; preds = %do.end.i26.i, %if.end.i24.i.if.end7.i27.i_crit_edge
  %18 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i22.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit28.i

sii9234_writeb.exit28.i:                          ; preds = %if.end7.i27.i, %sii9234_writeb.exit18.thread.i
  %19 = phi i32 [ %.pr.i, %sii9234_writeb.exit18.thread.i ], [ %call.i22.i, %if.end7.i27.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i30.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i30.i, label %if.end.i33.i, label %sii9234_power_init.exitthread-pre-split

if.end.i33.i:                                     ; preds = %sii9234_writeb.exit28.i
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 8, i8 noundef zeroext 53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %cmp.i32.i = icmp slt i32 %call.i31.i, 0
  br i1 %cmp.i32.i, label %do.end.i35.i, label %if.end.i33.i.sii9234_power_init.exit_crit_edge

if.end.i33.i.sii9234_power_init.exit_crit_edge:   ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_power_init.exit

do.end.i35.i:                                     ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i34.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i34.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i34.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 8, i32 noundef 53) #8
  br label %sii9234_power_init.exit

sii9234_power_init.exitthread-pre-split:          ; preds = %sii9234_writeb.exit28.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_power_init.exit

sii9234_power_init.exit:                          ; preds = %sii9234_power_init.exitthread-pre-split, %do.end.i35.i, %if.end.i33.i.sii9234_power_init.exit_crit_edge, %sii9234_writeb.exit18.thread43.i
  %25 = phi i32 [ %.pr, %sii9234_power_init.exitthread-pre-split ], [ %call.i12.i, %sii9234_writeb.exit18.thread43.i ], [ %call.i31.i, %do.end.i35.i ], [ %call.i31.i, %if.end.i33.i.sii9234_power_init.exit_crit_edge ]
  %26 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp slt i32 %25, 0
  br i1 %cmp, label %sii9234_power_init.exit.cleanup_crit_edge, label %sii9234_power_init.exit.if.end.i.i91_crit_edge

sii9234_power_init.exit.if.end.i.i91_crit_edge:   ; preds = %sii9234_power_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i91

sii9234_power_init.exit.cleanup_crit_edge:        ; preds = %sii9234_power_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i91:                                     ; preds = %sii9234_power_init.exit.if.end.i.i91_crit_edge, %sii9234_power_init.exit.thread
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 4
  %call.i.i89 = tail call i32 @i2c_smbus_write_byte(ptr noundef %28, i8 noundef zeroext 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %cmp.i.i90 = icmp slt i32 %call.i.i89, 0
  br i1 %cmp.i.i90, label %if.end.i.i91.cleanup.sink.split.i.i_crit_edge, label %if.end7.i.i

if.end.i.i91.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end.i.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i91
  %call8.i.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.end7.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end18.i.i

if.end7.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.end18.i.i:                                     ; preds = %if.end7.i.i
  %or.i.i = or i32 %call8.i.i, 8
  %conv21.i.i = trunc i32 %or.i.i to i8
  %call22.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 5, i8 noundef zeroext %conv21.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %if.end18.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end18.i.i.sii9234_writebm.exit.i_crit_edge

if.end18.i.i.sii9234_writebm.exit.i_crit_edge:    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit.i

if.end18.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end18.i.i.cleanup.sink.split.i.i_crit_edge, %if.end7.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i91.cleanup.sink.split.i.i_crit_edge
  %or.sink.i.i = phi i32 [ -1, %if.end.i.i91.cleanup.sink.split.i.i_crit_edge ], [ -1, %if.end7.i.i.cleanup.sink.split.i.i_crit_edge ], [ %or.i.i, %if.end18.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call22.sink.i.i = phi i32 [ %call.i.i89, %if.end.i.i91.cleanup.sink.split.i.i_crit_edge ], [ %call8.i.i, %if.end7.i.i.cleanup.sink.split.i.i_crit_edge ], [ %call22.i.i, %if.end18.i.i.cleanup.sink.split.i.i_crit_edge ]
  %dev29.i.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %29 = ptrtoint ptr %dev29.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev29.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 5, i32 noundef %or.sink.i.i) #8
  %31 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call22.sink.i.i, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit.i

sii9234_writebm.exit.i:                           ; preds = %cleanup.sink.split.i.i, %if.end18.i.i.sii9234_writebm.exit.i_crit_edge
  tail call void @msleep(i32 noundef 2) #5
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  %34 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i14.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %sii9234_writebm.exit.i.sii9234_writebm.exit30.thread.i_crit_edge

sii9234_writebm.exit.i.sii9234_writebm.exit30.thread.i_crit_edge: ; preds = %sii9234_writebm.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit30.thread.i

if.end.i17.i:                                     ; preds = %sii9234_writebm.exit.i
  %call.i15.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %33, i8 noundef zeroext 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %cmp.i16.i = icmp slt i32 %call.i15.i, 0
  br i1 %cmp.i16.i, label %if.end.i17.i.cleanup.sink.split.i29.i_crit_edge, label %if.end7.i20.i

if.end.i17.i.cleanup.sink.split.i29.i_crit_edge:  ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i29.i

if.end7.i20.i:                                    ; preds = %if.end.i17.i
  %call8.i18.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i18.i)
  %cmp9.i19.i = icmp slt i32 %call8.i18.i, 0
  br i1 %cmp9.i19.i, label %if.end7.i20.i.cleanup.sink.split.i29.i_crit_edge, label %if.end18.i25.i

if.end7.i20.i.cleanup.sink.split.i29.i_crit_edge: ; preds = %if.end7.i20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i29.i

if.end18.i25.i:                                   ; preds = %if.end7.i20.i
  %and19.i21.i = and i32 %call8.i18.i, -9
  %conv21.i22.i = trunc i32 %and19.i21.i to i8
  %call22.i23.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 5, i8 noundef zeroext %conv21.i22.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i23.i)
  %cmp23.i24.i = icmp slt i32 %call22.i23.i, 0
  br i1 %cmp23.i24.i, label %if.end18.i25.i.cleanup.sink.split.i29.i_crit_edge, label %sii9234_writebm.exit30.i

if.end18.i25.i.cleanup.sink.split.i29.i_crit_edge: ; preds = %if.end18.i25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i29.i

cleanup.sink.split.i29.i:                         ; preds = %if.end18.i25.i.cleanup.sink.split.i29.i_crit_edge, %if.end7.i20.i.cleanup.sink.split.i29.i_crit_edge, %if.end.i17.i.cleanup.sink.split.i29.i_crit_edge
  %or.sink.i26.i = phi i32 [ 0, %if.end.i17.i.cleanup.sink.split.i29.i_crit_edge ], [ 0, %if.end7.i20.i.cleanup.sink.split.i29.i_crit_edge ], [ %and19.i21.i, %if.end18.i25.i.cleanup.sink.split.i29.i_crit_edge ]
  %call22.sink.i27.i = phi i32 [ %call.i15.i, %if.end.i17.i.cleanup.sink.split.i29.i_crit_edge ], [ %call8.i18.i, %if.end7.i20.i.cleanup.sink.split.i29.i_crit_edge ], [ %call22.i23.i, %if.end18.i25.i.cleanup.sink.split.i29.i_crit_edge ]
  %dev29.i28.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %36 = ptrtoint ptr %dev29.i28.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev29.i28.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 5, i32 noundef %or.sink.i26.i) #8
  %38 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call22.sink.i27.i, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit30.thread.i

sii9234_writebm.exit30.thread.i:                  ; preds = %cleanup.sink.split.i29.i, %sii9234_writebm.exit.i.sii9234_writebm.exit30.thread.i_crit_edge
  %arrayidx.i56.i = getelementptr [4 x ptr], ptr %ctx, i32 0, i32 3
  %dev.i4457.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %39 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr68.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit47.i

sii9234_writebm.exit30.i:                         ; preds = %if.end18.i25.i
  %40 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr.i92 = load i32, ptr %i2c_error.i, align 4
  %arrayidx.i.i93 = getelementptr [4 x ptr], ptr %ctx, i32 0, i32 3
  %dev.i44.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i92)
  %tobool.not.i32.i = icmp eq i32 %.pr.i92, 0
  br i1 %tobool.not.i32.i, label %if.end.i35.i, label %sii9234_writebm.exit30.i.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge

sii9234_writebm.exit30.i.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge: ; preds = %sii9234_writebm.exit30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit47.1thread-pre-split.i

if.end.i35.i:                                     ; preds = %sii9234_writebm.exit30.i
  %41 = ptrtoint ptr %arrayidx.i.i93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i93, align 4
  %call.i33.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext -32, i8 noundef zeroext -14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %cmp.i34.i = icmp slt i32 %call.i33.i, 0
  br i1 %cmp.i34.i, label %sii9234_writeb.exit.thread51.i, label %sii9234_writeb.exit.i94

sii9234_writeb.exit.thread51.i:                   ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %dev.i44.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i44.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 224, i32 noundef 242) #8
  %45 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call.i33.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit47.1thread-pre-split.i

sii9234_writeb.exit.i94:                          ; preds = %if.end.i35.i
  %46 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call.i33.i, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %tobool.not.i38.i = icmp eq i32 %call.i33.i, 0
  br i1 %tobool.not.i38.i, label %if.end.i43.i, label %sii9234_writeb.exit.i94.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge

sii9234_writeb.exit.i94.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge: ; preds = %sii9234_writeb.exit.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit47.1thread-pre-split.i

if.end.i43.i:                                     ; preds = %sii9234_writeb.exit.i94
  %47 = ptrtoint ptr %arrayidx.i.i93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i93, align 4
  %call.i41.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext -16, i8 noundef zeroext -14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp.i42.i = icmp slt i32 %call.i41.i, 0
  br i1 %cmp.i42.i, label %do.end.i45.i, label %if.end.i43.i.if.end7.i46.i_crit_edge

if.end.i43.i.if.end7.i46.i_crit_edge:             ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i46.i

do.end.i45.i:                                     ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %dev.i44.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i44.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 240, i32 noundef 242) #8
  br label %if.end7.i46.i

if.end7.i46.i:                                    ; preds = %do.end.i45.i, %if.end.i43.i.if.end7.i46.i_crit_edge
  %51 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call.i41.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit47.i

sii9234_writeb.exit47.i:                          ; preds = %if.end7.i46.i, %sii9234_writebm.exit30.thread.i
  %52 = phi i32 [ %.pr68.i, %sii9234_writebm.exit30.thread.i ], [ %call.i41.i, %if.end7.i46.i ]
  %dev.i4462.i = phi ptr [ %dev.i4457.i, %sii9234_writebm.exit30.thread.i ], [ %dev.i44.i, %if.end7.i46.i ]
  %arrayidx.i59.i = phi ptr [ %arrayidx.i56.i, %sii9234_writebm.exit30.thread.i ], [ %arrayidx.i.i93, %if.end7.i46.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i32.1.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i32.1.i, label %if.end.i35.1.i, label %sii9234_writeb.exit47.i.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge

sii9234_writeb.exit47.i.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge: ; preds = %sii9234_writeb.exit47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit47.1thread-pre-split.i

if.end.i35.1.i:                                   ; preds = %sii9234_writeb.exit47.i
  %53 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i59.i, align 4
  %call.i33.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext -31, i8 noundef zeroext -14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.1.i)
  %cmp.i34.1.i = icmp slt i32 %call.i33.1.i, 0
  br i1 %cmp.i34.1.i, label %sii9234_writeb.exit.thread51.1.i, label %sii9234_writeb.exit.1.i

sii9234_writeb.exit.1.i:                          ; preds = %if.end.i35.1.i
  %55 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.i33.1.i, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.1.i)
  %tobool.not.i38.1.i = icmp eq i32 %call.i33.1.i, 0
  br i1 %tobool.not.i38.1.i, label %if.end.i43.1.i, label %sii9234_writeb.exit.1.i.sii9234_writeb.exit47.2thread-pre-split.i_crit_edge

sii9234_writeb.exit.1.i.sii9234_writeb.exit47.2thread-pre-split.i_crit_edge: ; preds = %sii9234_writeb.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit47.2thread-pre-split.i

if.end.i43.1.i:                                   ; preds = %sii9234_writeb.exit.1.i
  %56 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i59.i, align 4
  %call.i41.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %57, i8 noundef zeroext -15, i8 noundef zeroext -14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.1.i)
  %cmp.i42.1.i = icmp slt i32 %call.i41.1.i, 0
  br i1 %cmp.i42.1.i, label %do.end.i45.1.i, label %if.end.i43.1.i.if.end7.i46.1.i_crit_edge

if.end.i43.1.i.if.end7.i46.1.i_crit_edge:         ; preds = %if.end.i43.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i46.1.i

do.end.i45.1.i:                                   ; preds = %if.end.i43.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %dev.i4462.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i4462.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 241, i32 noundef 242) #8
  br label %if.end7.i46.1.i

if.end7.i46.1.i:                                  ; preds = %do.end.i45.1.i, %if.end.i43.1.i.if.end7.i46.1.i_crit_edge
  %60 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call.i41.1.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit47.1.i

sii9234_writeb.exit.thread51.1.i:                 ; preds = %if.end.i35.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %dev.i4462.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i4462.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 225, i32 noundef 242) #8
  %63 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call.i33.1.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit47.2thread-pre-split.i

sii9234_writeb.exit47.1thread-pre-split.i:        ; preds = %sii9234_writeb.exit47.i.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge, %sii9234_writeb.exit.i94.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge, %sii9234_writeb.exit.thread51.i, %sii9234_writebm.exit30.i.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge
  %dev.i4464.ph.i = phi ptr [ %dev.i4462.i, %sii9234_writeb.exit47.i.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge ], [ %dev.i44.i, %sii9234_writebm.exit30.i.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge ], [ %dev.i44.i, %sii9234_writeb.exit.thread51.i ], [ %dev.i44.i, %sii9234_writeb.exit.i94.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge ]
  %arrayidx.i60.ph.i = phi ptr [ %arrayidx.i59.i, %sii9234_writeb.exit47.i.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge ], [ %arrayidx.i.i93, %sii9234_writebm.exit30.i.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge ], [ %arrayidx.i.i93, %sii9234_writeb.exit.thread51.i ], [ %arrayidx.i.i93, %sii9234_writeb.exit.i94.sii9234_writeb.exit47.1thread-pre-split.i_crit_edge ]
  %64 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr72.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit47.1.i

sii9234_writeb.exit47.1.i:                        ; preds = %sii9234_writeb.exit47.1thread-pre-split.i, %if.end7.i46.1.i
  %65 = phi i32 [ %.pr72.i, %sii9234_writeb.exit47.1thread-pre-split.i ], [ %call.i41.1.i, %if.end7.i46.1.i ]
  %dev.i4464.i = phi ptr [ %dev.i4464.ph.i, %sii9234_writeb.exit47.1thread-pre-split.i ], [ %dev.i4462.i, %if.end7.i46.1.i ]
  %arrayidx.i60.i = phi ptr [ %arrayidx.i60.ph.i, %sii9234_writeb.exit47.1thread-pre-split.i ], [ %arrayidx.i59.i, %if.end7.i46.1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i32.2.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i32.2.i, label %if.end.i35.2.i, label %sii9234_writeb.exit47.1.i.sii9234_writeb.exit47.2thread-pre-split.i_crit_edge

sii9234_writeb.exit47.1.i.sii9234_writeb.exit47.2thread-pre-split.i_crit_edge: ; preds = %sii9234_writeb.exit47.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit47.2thread-pre-split.i

if.end.i35.2.i:                                   ; preds = %sii9234_writeb.exit47.1.i
  %66 = ptrtoint ptr %arrayidx.i60.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i60.i, align 4
  %call.i33.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext -30, i8 noundef zeroext -14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.2.i)
  %cmp.i34.2.i = icmp slt i32 %call.i33.2.i, 0
  br i1 %cmp.i34.2.i, label %if.end.i35.2.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge, label %sii9234_writeb.exit.2.i

if.end.i35.2.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i35.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit47.3.sink.split.sink.split.i

sii9234_writeb.exit.2.i:                          ; preds = %if.end.i35.2.i
  %68 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call.i33.2.i, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.2.i)
  %tobool.not.i38.2.i = icmp eq i32 %call.i33.2.i, 0
  br i1 %tobool.not.i38.2.i, label %if.end.i43.2.i, label %sii9234_writeb.exit.2.i.sii9234_cbus_reset.exit.thread_crit_edge

sii9234_writeb.exit.2.i.sii9234_cbus_reset.exit.thread_crit_edge: ; preds = %sii9234_writeb.exit.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_cbus_reset.exit.thread

if.end.i43.2.i:                                   ; preds = %sii9234_writeb.exit.2.i
  %69 = ptrtoint ptr %arrayidx.i60.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i60.i, align 4
  %call.i41.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %70, i8 noundef zeroext -14, i8 noundef zeroext -14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.2.i)
  %cmp.i42.2.i = icmp slt i32 %call.i41.2.i, 0
  br i1 %cmp.i42.2.i, label %do.end.i45.2.i, label %if.end.i43.2.i.if.end7.i46.2.i_crit_edge

if.end.i43.2.i.if.end7.i46.2.i_crit_edge:         ; preds = %if.end.i43.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i46.2.i

do.end.i45.2.i:                                   ; preds = %if.end.i43.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %dev.i4464.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i4464.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 242, i32 noundef 242) #8
  br label %if.end7.i46.2.i

if.end7.i46.2.i:                                  ; preds = %do.end.i45.2.i, %if.end.i43.2.i.if.end7.i46.2.i_crit_edge
  %73 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call.i41.2.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit47.2.i

sii9234_writeb.exit47.2thread-pre-split.i:        ; preds = %sii9234_writeb.exit47.1.i.sii9234_writeb.exit47.2thread-pre-split.i_crit_edge, %sii9234_writeb.exit.thread51.1.i, %sii9234_writeb.exit.1.i.sii9234_writeb.exit47.2thread-pre-split.i_crit_edge
  %dev.i4466.ph.i = phi ptr [ %dev.i4464.i, %sii9234_writeb.exit47.1.i.sii9234_writeb.exit47.2thread-pre-split.i_crit_edge ], [ %dev.i4462.i, %sii9234_writeb.exit.thread51.1.i ], [ %dev.i4462.i, %sii9234_writeb.exit.1.i.sii9234_writeb.exit47.2thread-pre-split.i_crit_edge ]
  %arrayidx.i61.ph.i = phi ptr [ %arrayidx.i60.i, %sii9234_writeb.exit47.1.i.sii9234_writeb.exit47.2thread-pre-split.i_crit_edge ], [ %arrayidx.i59.i, %sii9234_writeb.exit.thread51.1.i ], [ %arrayidx.i59.i, %sii9234_writeb.exit.1.i.sii9234_writeb.exit47.2thread-pre-split.i_crit_edge ]
  %74 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr76.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit47.2.i

sii9234_writeb.exit47.2.i:                        ; preds = %sii9234_writeb.exit47.2thread-pre-split.i, %if.end7.i46.2.i
  %75 = phi i32 [ %.pr76.i, %sii9234_writeb.exit47.2thread-pre-split.i ], [ %call.i41.2.i, %if.end7.i46.2.i ]
  %dev.i4466.i = phi ptr [ %dev.i4466.ph.i, %sii9234_writeb.exit47.2thread-pre-split.i ], [ %dev.i4464.i, %if.end7.i46.2.i ]
  %arrayidx.i61.i = phi ptr [ %arrayidx.i61.ph.i, %sii9234_writeb.exit47.2thread-pre-split.i ], [ %arrayidx.i60.i, %if.end7.i46.2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i32.3.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i32.3.i, label %if.end.i35.3.i, label %sii9234_cbus_reset.exitthread-pre-split

if.end.i35.3.i:                                   ; preds = %sii9234_writeb.exit47.2.i
  %76 = ptrtoint ptr %arrayidx.i61.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i61.i, align 4
  %call.i33.3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext -29, i8 noundef zeroext -14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.3.i)
  %cmp.i34.3.i = icmp slt i32 %call.i33.3.i, 0
  br i1 %cmp.i34.3.i, label %if.end.i35.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge, label %sii9234_writeb.exit.3.i

if.end.i35.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i35.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit47.3.sink.split.sink.split.i

sii9234_writeb.exit.3.i:                          ; preds = %if.end.i35.3.i
  %78 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call.i33.3.i, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.3.i)
  %tobool.not.i38.3.i = icmp eq i32 %call.i33.3.i, 0
  br i1 %tobool.not.i38.3.i, label %if.end.i43.3.i, label %sii9234_writeb.exit.3.i.sii9234_cbus_reset.exit.thread_crit_edge

sii9234_writeb.exit.3.i.sii9234_cbus_reset.exit.thread_crit_edge: ; preds = %sii9234_writeb.exit.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_cbus_reset.exit.thread

if.end.i43.3.i:                                   ; preds = %sii9234_writeb.exit.3.i
  %79 = ptrtoint ptr %arrayidx.i61.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i61.i, align 4
  %call.i41.3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %80, i8 noundef zeroext -13, i8 noundef zeroext -14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.3.i)
  %cmp.i42.3.i = icmp slt i32 %call.i41.3.i, 0
  br i1 %cmp.i42.3.i, label %if.end.i43.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge, label %if.end.i43.3.i.sii9234_cbus_reset.exit_crit_edge

if.end.i43.3.i.sii9234_cbus_reset.exit_crit_edge: ; preds = %if.end.i43.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_cbus_reset.exit

if.end.i43.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i43.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit47.3.sink.split.sink.split.i

sii9234_writeb.exit47.3.sink.split.sink.split.i:  ; preds = %if.end.i43.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge, %if.end.i35.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge, %if.end.i35.2.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge
  %dev.i4466.sink.i = phi ptr [ %dev.i4464.i, %if.end.i35.2.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge ], [ %dev.i4466.i, %if.end.i43.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge ], [ %dev.i4466.i, %if.end.i35.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge ]
  %.sink80.i = phi i32 [ 226, %if.end.i35.2.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge ], [ 243, %if.end.i43.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge ], [ 227, %if.end.i35.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge ]
  %call.i33.2.sink.ph.i = phi i32 [ %call.i33.2.i, %if.end.i35.2.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge ], [ %call.i41.3.i, %if.end.i43.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge ], [ %call.i33.3.i, %if.end.i35.3.i.sii9234_writeb.exit47.3.sink.split.sink.split.i_crit_edge ]
  %81 = ptrtoint ptr %dev.i4466.sink.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i4466.sink.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef %.sink80.i, i32 noundef 242) #8
  br label %sii9234_cbus_reset.exit

sii9234_cbus_reset.exitthread-pre-split:          ; preds = %sii9234_writeb.exit47.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr420 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_cbus_reset.exit

sii9234_cbus_reset.exit.thread:                   ; preds = %sii9234_writeb.exit.3.i.sii9234_cbus_reset.exit.thread_crit_edge, %sii9234_writeb.exit.2.i.sii9234_cbus_reset.exit.thread_crit_edge
  %84 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %i2c_error.i, align 4
  br label %if.end.i.i100

sii9234_cbus_reset.exit:                          ; preds = %sii9234_cbus_reset.exitthread-pre-split, %sii9234_writeb.exit47.3.sink.split.sink.split.i, %if.end.i43.3.i.sii9234_cbus_reset.exit_crit_edge
  %85 = phi i32 [ %.pr420, %sii9234_cbus_reset.exitthread-pre-split ], [ %call.i41.3.i, %if.end.i43.3.i.sii9234_cbus_reset.exit_crit_edge ], [ %call.i33.2.sink.ph.i, %sii9234_writeb.exit47.3.sink.split.sink.split.i ]
  %86 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp3 = icmp slt i32 %85, 0
  br i1 %cmp3, label %sii9234_cbus_reset.exit.cleanup_crit_edge, label %sii9234_cbus_reset.exit.if.end.i.i100_crit_edge

sii9234_cbus_reset.exit.if.end.i.i100_crit_edge:  ; preds = %sii9234_cbus_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i100

sii9234_cbus_reset.exit.cleanup_crit_edge:        ; preds = %sii9234_cbus_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i100:                                    ; preds = %sii9234_cbus_reset.exit.if.end.i.i100_crit_edge, %sii9234_cbus_reset.exit.thread
  %arrayidx.i.i97 = getelementptr [4 x ptr], ptr %ctx, i32 0, i32 2
  %87 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i.i98 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %88, i8 noundef zeroext 16, i8 noundef zeroext -63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %cmp.i.i99 = icmp slt i32 %call.i.i98, 0
  br i1 %cmp.i.i99, label %sii9234_writeb.exit.thread160.i, label %sii9234_writeb.exit.i103

sii9234_writeb.exit.thread160.i:                  ; preds = %if.end.i.i100
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i101 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %89 = ptrtoint ptr %dev.i.i101 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i.i101, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 16, i32 noundef 193) #8
  %91 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call.i.i98, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit38.thread.i

sii9234_writeb.exit.i103:                         ; preds = %if.end.i.i100
  %92 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call.i.i98, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %tobool.not.i30.i102 = icmp eq i32 %call.i.i98, 0
  br i1 %tobool.not.i30.i102, label %if.end.i34.i, label %sii9234_writeb.exit.i103.sii9234_writeb.exit38.thread.i_crit_edge

sii9234_writeb.exit.i103.sii9234_writeb.exit38.thread.i_crit_edge: ; preds = %sii9234_writeb.exit.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit38.thread.i

if.end.i34.i:                                     ; preds = %sii9234_writeb.exit.i103
  %93 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i32.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %94, i8 noundef zeroext 23, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp.i33.i = icmp slt i32 %call.i32.i, 0
  br i1 %cmp.i33.i, label %sii9234_writeb.exit38.thread163.i, label %sii9234_writeb.exit38.i

sii9234_writeb.exit38.thread163.i:                ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i35.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %95 = ptrtoint ptr %dev.i35.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i35.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 23, i32 noundef 3) #8
  %97 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call.i32.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit58thread-pre-split.i

sii9234_writeb.exit38.thread.i:                   ; preds = %sii9234_writeb.exit.i103.sii9234_writeb.exit38.thread.i_crit_edge, %sii9234_writeb.exit.thread160.i
  %98 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pr.i104 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit48.i

sii9234_writeb.exit38.i:                          ; preds = %if.end.i34.i
  %99 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call.i32.i, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool.not.i40.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool.not.i40.i, label %if.end.i44.i, label %sii9234_writeb.exit38.i.sii9234_writeb.exit58thread-pre-split.i_crit_edge

sii9234_writeb.exit38.i.sii9234_writeb.exit58thread-pre-split.i_crit_edge: ; preds = %sii9234_writeb.exit38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit58thread-pre-split.i

if.end.i44.i:                                     ; preds = %sii9234_writeb.exit38.i
  %100 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i42.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %101, i8 noundef zeroext 26, i8 noundef zeroext 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %cmp.i43.i = icmp slt i32 %call.i42.i, 0
  br i1 %cmp.i43.i, label %do.end.i46.i, label %if.end.i44.i.if.end7.i47.i_crit_edge

if.end.i44.i.if.end7.i47.i_crit_edge:             ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i47.i

do.end.i46.i:                                     ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i45.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %102 = ptrtoint ptr %dev.i45.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i45.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 26, i32 noundef 32) #8
  br label %if.end7.i47.i

if.end7.i47.i:                                    ; preds = %do.end.i46.i, %if.end.i44.i.if.end7.i47.i_crit_edge
  %104 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call.i42.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit48.i

sii9234_writeb.exit48.i:                          ; preds = %if.end7.i47.i, %sii9234_writeb.exit38.thread.i
  %105 = phi i32 [ %.pr.i104, %sii9234_writeb.exit38.thread.i ], [ %call.i42.i, %if.end7.i47.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i50.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i50.i, label %if.end.i54.i, label %sii9234_writeb.exit48.i.sii9234_writeb.exit58thread-pre-split.i_crit_edge

sii9234_writeb.exit48.i.sii9234_writeb.exit58thread-pre-split.i_crit_edge: ; preds = %sii9234_writeb.exit48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit58thread-pre-split.i

if.end.i54.i:                                     ; preds = %sii9234_writeb.exit48.i
  %106 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i52.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %107, i8 noundef zeroext 34, i8 noundef zeroext -118) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52.i)
  %cmp.i53.i = icmp slt i32 %call.i52.i, 0
  br i1 %cmp.i53.i, label %do.end.i56.i, label %if.end.i54.i.if.end7.i57.i_crit_edge

if.end.i54.i.if.end7.i57.i_crit_edge:             ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i57.i

do.end.i56.i:                                     ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i55.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %108 = ptrtoint ptr %dev.i55.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i55.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 34, i32 noundef 138) #8
  br label %if.end7.i57.i

if.end7.i57.i:                                    ; preds = %do.end.i56.i, %if.end.i54.i.if.end7.i57.i_crit_edge
  %110 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call.i52.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit58.i

sii9234_writeb.exit58thread-pre-split.i:          ; preds = %sii9234_writeb.exit48.i.sii9234_writeb.exit58thread-pre-split.i_crit_edge, %sii9234_writeb.exit38.i.sii9234_writeb.exit58thread-pre-split.i_crit_edge, %sii9234_writeb.exit38.thread163.i
  %111 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr166.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit58.i

sii9234_writeb.exit58.i:                          ; preds = %sii9234_writeb.exit58thread-pre-split.i, %if.end7.i57.i
  %112 = phi i32 [ %.pr166.i, %sii9234_writeb.exit58thread-pre-split.i ], [ %call.i52.i, %if.end7.i57.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i60.i = icmp eq i32 %112, 0
  br i1 %tobool.not.i60.i, label %if.end.i64.i, label %sii9234_writeb.exit68thread-pre-split.i

if.end.i64.i:                                     ; preds = %sii9234_writeb.exit58.i
  %113 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i62.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %114, i8 noundef zeroext 35, i8 noundef zeroext 106) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %cmp.i63.i = icmp slt i32 %call.i62.i, 0
  br i1 %cmp.i63.i, label %do.end.i66.i, label %if.end.i64.i.if.end7.i67.i_crit_edge

if.end.i64.i.if.end7.i67.i_crit_edge:             ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i67.i

do.end.i66.i:                                     ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i65.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %115 = ptrtoint ptr %dev.i65.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i65.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 35, i32 noundef 106) #8
  br label %if.end7.i67.i

if.end7.i67.i:                                    ; preds = %do.end.i66.i, %if.end.i64.i.if.end7.i67.i_crit_edge
  %117 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call.i62.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit68.i

sii9234_writeb.exit68thread-pre-split.i:          ; preds = %sii9234_writeb.exit58.i
  call void @__sanitizer_cov_trace_pc() #7
  %118 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr167.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit68.i

sii9234_writeb.exit68.i:                          ; preds = %sii9234_writeb.exit68thread-pre-split.i, %if.end7.i67.i
  %119 = phi i32 [ %.pr167.i, %sii9234_writeb.exit68thread-pre-split.i ], [ %call.i62.i, %if.end7.i67.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i70.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i70.i, label %if.end.i74.i, label %sii9234_writeb.exit78thread-pre-split.i

if.end.i74.i:                                     ; preds = %sii9234_writeb.exit68.i
  %120 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i72.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %121, i8 noundef zeroext 36, i8 noundef zeroext -86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %cmp.i73.i = icmp slt i32 %call.i72.i, 0
  br i1 %cmp.i73.i, label %do.end.i76.i, label %if.end.i74.i.if.end7.i77.i_crit_edge

if.end.i74.i.if.end7.i77.i_crit_edge:             ; preds = %if.end.i74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i77.i

do.end.i76.i:                                     ; preds = %if.end.i74.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i75.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %122 = ptrtoint ptr %dev.i75.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i75.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 36, i32 noundef 170) #8
  br label %if.end7.i77.i

if.end7.i77.i:                                    ; preds = %do.end.i76.i, %if.end.i74.i.if.end7.i77.i_crit_edge
  %124 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call.i72.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit78.i

sii9234_writeb.exit78thread-pre-split.i:          ; preds = %sii9234_writeb.exit68.i
  call void @__sanitizer_cov_trace_pc() #7
  %125 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr168.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit78.i

sii9234_writeb.exit78.i:                          ; preds = %sii9234_writeb.exit78thread-pre-split.i, %if.end7.i77.i
  %126 = phi i32 [ %.pr168.i, %sii9234_writeb.exit78thread-pre-split.i ], [ %call.i72.i, %if.end7.i77.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i80.i = icmp eq i32 %126, 0
  br i1 %tobool.not.i80.i, label %if.end.i84.i, label %sii9234_writeb.exit88thread-pre-split.i

if.end.i84.i:                                     ; preds = %sii9234_writeb.exit78.i
  %127 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i82.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %128, i8 noundef zeroext 37, i8 noundef zeroext -54) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %cmp.i83.i = icmp slt i32 %call.i82.i, 0
  br i1 %cmp.i83.i, label %do.end.i86.i, label %if.end.i84.i.if.end7.i87.i_crit_edge

if.end.i84.i.if.end7.i87.i_crit_edge:             ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i87.i

do.end.i86.i:                                     ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i85.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %129 = ptrtoint ptr %dev.i85.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i85.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 37, i32 noundef 202) #8
  br label %if.end7.i87.i

if.end7.i87.i:                                    ; preds = %do.end.i86.i, %if.end.i84.i.if.end7.i87.i_crit_edge
  %131 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call.i82.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit88.i

sii9234_writeb.exit88thread-pre-split.i:          ; preds = %sii9234_writeb.exit78.i
  call void @__sanitizer_cov_trace_pc() #7
  %132 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %.pr169.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit88.i

sii9234_writeb.exit88.i:                          ; preds = %sii9234_writeb.exit88thread-pre-split.i, %if.end7.i87.i
  %133 = phi i32 [ %.pr169.i, %sii9234_writeb.exit88thread-pre-split.i ], [ %call.i82.i, %if.end7.i87.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i90.i = icmp eq i32 %133, 0
  br i1 %tobool.not.i90.i, label %if.end.i94.i, label %sii9234_writeb.exit98thread-pre-split.i

if.end.i94.i:                                     ; preds = %sii9234_writeb.exit88.i
  %134 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i92.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %135, i8 noundef zeroext 38, i8 noundef zeroext -22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %cmp.i93.i = icmp slt i32 %call.i92.i, 0
  br i1 %cmp.i93.i, label %do.end.i96.i, label %if.end.i94.i.if.end7.i97.i_crit_edge

if.end.i94.i.if.end7.i97.i_crit_edge:             ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i97.i

do.end.i96.i:                                     ; preds = %if.end.i94.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i95.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %136 = ptrtoint ptr %dev.i95.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i95.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 38, i32 noundef 234) #8
  br label %if.end7.i97.i

if.end7.i97.i:                                    ; preds = %do.end.i96.i, %if.end.i94.i.if.end7.i97.i_crit_edge
  %138 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %call.i92.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit98.i

sii9234_writeb.exit98thread-pre-split.i:          ; preds = %sii9234_writeb.exit88.i
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pr170.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit98.i

sii9234_writeb.exit98.i:                          ; preds = %sii9234_writeb.exit98thread-pre-split.i, %if.end7.i97.i
  %140 = phi i32 [ %.pr170.i, %sii9234_writeb.exit98thread-pre-split.i ], [ %call.i92.i, %if.end7.i97.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i100.i = icmp eq i32 %140, 0
  br i1 %tobool.not.i100.i, label %if.end.i104.i, label %sii9234_writeb.exit108thread-pre-split.i

if.end.i104.i:                                    ; preds = %sii9234_writeb.exit98.i
  %141 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i102.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %142, i8 noundef zeroext 76, i8 noundef zeroext -96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i)
  %cmp.i103.i = icmp slt i32 %call.i102.i, 0
  br i1 %cmp.i103.i, label %do.end.i106.i, label %if.end.i104.i.if.end7.i107.i_crit_edge

if.end.i104.i.if.end7.i107.i_crit_edge:           ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i107.i

do.end.i106.i:                                    ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i105.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %143 = ptrtoint ptr %dev.i105.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev.i105.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 76, i32 noundef 160) #8
  br label %if.end7.i107.i

if.end7.i107.i:                                   ; preds = %do.end.i106.i, %if.end.i104.i.if.end7.i107.i_crit_edge
  %145 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %call.i102.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit108.i

sii9234_writeb.exit108thread-pre-split.i:         ; preds = %sii9234_writeb.exit98.i
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pr171.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit108.i

sii9234_writeb.exit108.i:                         ; preds = %sii9234_writeb.exit108thread-pre-split.i, %if.end7.i107.i
  %147 = phi i32 [ %.pr171.i, %sii9234_writeb.exit108thread-pre-split.i ], [ %call.i102.i, %if.end7.i107.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i110.i = icmp eq i32 %147, 0
  br i1 %tobool.not.i110.i, label %if.end.i114.i, label %sii9234_writeb.exit118thread-pre-split.i

if.end.i114.i:                                    ; preds = %sii9234_writeb.exit108.i
  %148 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i112.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %149, i8 noundef zeroext 77, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %cmp.i113.i = icmp slt i32 %call.i112.i, 0
  br i1 %cmp.i113.i, label %do.end.i116.i, label %if.end.i114.i.if.end7.i117.i_crit_edge

if.end.i114.i.if.end7.i117.i_crit_edge:           ; preds = %if.end.i114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i117.i

do.end.i116.i:                                    ; preds = %if.end.i114.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i115.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %150 = ptrtoint ptr %dev.i115.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev.i115.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 77, i32 noundef 0) #8
  br label %if.end7.i117.i

if.end7.i117.i:                                   ; preds = %do.end.i116.i, %if.end.i114.i.if.end7.i117.i_crit_edge
  %152 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %call.i112.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit118.i

sii9234_writeb.exit118thread-pre-split.i:         ; preds = %sii9234_writeb.exit108.i
  call void @__sanitizer_cov_trace_pc() #7
  %153 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pr172.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit118.i

sii9234_writeb.exit118.i:                         ; preds = %sii9234_writeb.exit118thread-pre-split.i, %if.end7.i117.i
  %154 = phi i32 [ %.pr172.i, %sii9234_writeb.exit118thread-pre-split.i ], [ %call.i112.i, %if.end7.i117.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i120.i = icmp eq i32 %154, 0
  br i1 %tobool.not.i120.i, label %if.end.i123.i, label %sii9234_writeb.exit127thread-pre-split.i

if.end.i123.i:                                    ; preds = %sii9234_writeb.exit118.i
  %155 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ctx, align 4
  %call.i121.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %156, i8 noundef zeroext -128, i8 noundef zeroext 52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121.i)
  %cmp.i122.i = icmp slt i32 %call.i121.i, 0
  br i1 %cmp.i122.i, label %do.end.i125.i, label %if.end.i123.i.if.end7.i126.i_crit_edge

if.end.i123.i.if.end7.i126.i_crit_edge:           ; preds = %if.end.i123.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i126.i

do.end.i125.i:                                    ; preds = %if.end.i123.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i124.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %157 = ptrtoint ptr %dev.i124.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev.i124.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 128, i32 noundef 52) #8
  br label %if.end7.i126.i

if.end7.i126.i:                                   ; preds = %do.end.i125.i, %if.end.i123.i.if.end7.i126.i_crit_edge
  %159 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %call.i121.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit127.i

sii9234_writeb.exit127thread-pre-split.i:         ; preds = %sii9234_writeb.exit118.i
  call void @__sanitizer_cov_trace_pc() #7
  %160 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %.pr173.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit127.i

sii9234_writeb.exit127.i:                         ; preds = %sii9234_writeb.exit127thread-pre-split.i, %if.end7.i126.i
  %161 = phi i32 [ %.pr173.i, %sii9234_writeb.exit127thread-pre-split.i ], [ %call.i121.i, %if.end7.i126.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i129.i = icmp eq i32 %161, 0
  br i1 %tobool.not.i129.i, label %if.end.i133.i, label %sii9234_writeb.exit137thread-pre-split.i

if.end.i133.i:                                    ; preds = %sii9234_writeb.exit127.i
  %162 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i131.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %163, i8 noundef zeroext 69, i8 noundef zeroext 68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131.i)
  %cmp.i132.i = icmp slt i32 %call.i131.i, 0
  br i1 %cmp.i132.i, label %do.end.i135.i, label %if.end.i133.i.if.end7.i136.i_crit_edge

if.end.i133.i.if.end7.i136.i_crit_edge:           ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i136.i

do.end.i135.i:                                    ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i134.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %164 = ptrtoint ptr %dev.i134.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev.i134.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 69, i32 noundef 68) #8
  br label %if.end7.i136.i

if.end7.i136.i:                                   ; preds = %do.end.i135.i, %if.end.i133.i.if.end7.i136.i_crit_edge
  %166 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call.i131.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit137.i

sii9234_writeb.exit137thread-pre-split.i:         ; preds = %sii9234_writeb.exit127.i
  call void @__sanitizer_cov_trace_pc() #7
  %167 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %.pr174.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit137.i

sii9234_writeb.exit137.i:                         ; preds = %sii9234_writeb.exit137thread-pre-split.i, %if.end7.i136.i
  %168 = phi i32 [ %.pr174.i, %sii9234_writeb.exit137thread-pre-split.i ], [ %call.i131.i, %if.end7.i136.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.i139.i = icmp eq i32 %168, 0
  br i1 %tobool.not.i139.i, label %if.end.i143.i, label %sii9234_writeb.exit147thread-pre-split.i

if.end.i143.i:                                    ; preds = %sii9234_writeb.exit137.i
  %169 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i141.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %170, i8 noundef zeroext 49, i8 noundef zeroext 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.i)
  %cmp.i142.i = icmp slt i32 %call.i141.i, 0
  br i1 %cmp.i142.i, label %do.end.i145.i, label %if.end.i143.i.if.end7.i146.i_crit_edge

if.end.i143.i.if.end7.i146.i_crit_edge:           ; preds = %if.end.i143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i146.i

do.end.i145.i:                                    ; preds = %if.end.i143.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i144.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %171 = ptrtoint ptr %dev.i144.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev.i144.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 49, i32 noundef 10) #8
  br label %if.end7.i146.i

if.end7.i146.i:                                   ; preds = %do.end.i145.i, %if.end.i143.i.if.end7.i146.i_crit_edge
  %173 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %call.i141.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit147.i

sii9234_writeb.exit147thread-pre-split.i:         ; preds = %sii9234_writeb.exit137.i
  call void @__sanitizer_cov_trace_pc() #7
  %174 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %.pr175.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit147.i

sii9234_writeb.exit147.i:                         ; preds = %sii9234_writeb.exit147thread-pre-split.i, %if.end7.i146.i
  %175 = phi i32 [ %.pr175.i, %sii9234_writeb.exit147thread-pre-split.i ], [ %call.i141.i, %if.end7.i146.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.not.i149.i = icmp eq i32 %175, 0
  br i1 %tobool.not.i149.i, label %if.end.i153.i, label %sii9234_hdmi_init.exitthread-pre-split

if.end.i153.i:                                    ; preds = %sii9234_writeb.exit147.i
  %176 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx.i.i97, align 4
  %call.i151.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %177, i8 noundef zeroext 16, i8 noundef zeroext -63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151.i)
  %cmp.i152.i = icmp slt i32 %call.i151.i, 0
  br i1 %cmp.i152.i, label %do.end.i155.i, label %if.end.i153.i.sii9234_hdmi_init.exit_crit_edge

if.end.i153.i.sii9234_hdmi_init.exit_crit_edge:   ; preds = %if.end.i153.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_hdmi_init.exit

do.end.i155.i:                                    ; preds = %if.end.i153.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i154.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %178 = ptrtoint ptr %dev.i154.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev.i154.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.24, i32 noundef 16, i32 noundef 193) #8
  br label %sii9234_hdmi_init.exit

sii9234_hdmi_init.exitthread-pre-split:           ; preds = %sii9234_writeb.exit147.i
  call void @__sanitizer_cov_trace_pc() #7
  %180 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %.pr422 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_hdmi_init.exit

sii9234_hdmi_init.exit:                           ; preds = %sii9234_hdmi_init.exitthread-pre-split, %do.end.i155.i, %if.end.i153.i.sii9234_hdmi_init.exit_crit_edge
  %181 = phi i32 [ %.pr422, %sii9234_hdmi_init.exitthread-pre-split ], [ %call.i151.i, %do.end.i155.i ], [ %call.i151.i, %if.end.i153.i.sii9234_hdmi_init.exit_crit_edge ]
  %182 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp7 = icmp slt i32 %181, 0
  br i1 %cmp7, label %sii9234_hdmi_init.exit.cleanup_crit_edge, label %if.end.i.i110

sii9234_hdmi_init.exit.cleanup_crit_edge:         ; preds = %sii9234_hdmi_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i110:                                    ; preds = %sii9234_hdmi_init.exit
  %183 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ctx, align 4
  %call.i.i108 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %184, i8 noundef zeroext -96, i8 noundef zeroext -48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %cmp.i.i109 = icmp slt i32 %call.i.i108, 0
  br i1 %cmp.i.i109, label %sii9234_writeb.exit.thread38.i, label %sii9234_writeb.exit.i113

sii9234_writeb.exit.thread38.i:                   ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i111 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %185 = ptrtoint ptr %dev.i.i111 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev.i.i111, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 160, i32 noundef 208) #8
  %187 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %call.i.i108, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit17.thread.i

sii9234_writeb.exit.i113:                         ; preds = %if.end.i.i110
  %188 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %call.i.i108, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %tobool.not.i10.i112 = icmp eq i32 %call.i.i108, 0
  br i1 %tobool.not.i10.i112, label %if.end.i13.i, label %sii9234_writeb.exit.i113.sii9234_writeb.exit17.thread.i_crit_edge

sii9234_writeb.exit.i113.sii9234_writeb.exit17.thread.i_crit_edge: ; preds = %sii9234_writeb.exit.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit17.thread.i

if.end.i13.i:                                     ; preds = %sii9234_writeb.exit.i113
  %189 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ctx, align 4
  %call.i11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %190, i8 noundef zeroext -95, i8 noundef zeroext -4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp.i12.i = icmp slt i32 %call.i11.i, 0
  br i1 %cmp.i12.i, label %sii9234_writeb.exit17.thread41.i, label %sii9234_writeb.exit17.i

sii9234_writeb.exit17.thread41.i:                 ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i14.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %191 = ptrtoint ptr %dev.i14.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev.i14.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 161, i32 noundef 252) #8
  br label %sii9234_mhl_tx_ctl_int.exit

sii9234_writeb.exit17.thread.i:                   ; preds = %sii9234_writeb.exit.i113.sii9234_writeb.exit17.thread.i_crit_edge, %sii9234_writeb.exit.thread38.i
  %193 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %.pr.i114 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit26.i

sii9234_writeb.exit17.i:                          ; preds = %if.end.i13.i
  %194 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %call.i11.i, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool.not.i19.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool.not.i19.i, label %if.end.i22.i, label %sii9234_mhl_tx_ctl_int.exit.thread

sii9234_mhl_tx_ctl_int.exit.thread:               ; preds = %sii9234_writeb.exit17.i
  call void @__sanitizer_cov_trace_pc() #7
  %195 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %i2c_error.i, align 4
  br label %if.end.i

if.end.i22.i:                                     ; preds = %sii9234_writeb.exit17.i
  %196 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ctx, align 4
  %call.i20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %197, i8 noundef zeroext -93, i8 noundef zeroext -21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i21.i = icmp slt i32 %call.i20.i, 0
  br i1 %cmp.i21.i, label %do.end.i24.i, label %if.end.i22.i.if.end7.i25.i_crit_edge

if.end.i22.i.if.end7.i25.i_crit_edge:             ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i25.i

do.end.i24.i:                                     ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i23.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %198 = ptrtoint ptr %dev.i23.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev.i23.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %199, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 163, i32 noundef 235) #8
  br label %if.end7.i25.i

if.end7.i25.i:                                    ; preds = %do.end.i24.i, %if.end.i22.i.if.end7.i25.i_crit_edge
  %200 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %call.i20.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit26.i

sii9234_writeb.exit26.i:                          ; preds = %if.end7.i25.i, %sii9234_writeb.exit17.thread.i
  %201 = phi i32 [ %.pr.i114, %sii9234_writeb.exit17.thread.i ], [ %call.i20.i, %if.end7.i25.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool.not.i28.i = icmp eq i32 %201, 0
  br i1 %tobool.not.i28.i, label %if.end.i31.i, label %sii9234_mhl_tx_ctl_int.exitthread-pre-split

if.end.i31.i:                                     ; preds = %sii9234_writeb.exit26.i
  %202 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ctx, align 4
  %call.i29.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %203, i8 noundef zeroext -90, i8 noundef zeroext 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %cmp.i30.i = icmp slt i32 %call.i29.i, 0
  br i1 %cmp.i30.i, label %do.end.i33.i, label %if.end.i31.i.sii9234_mhl_tx_ctl_int.exit_crit_edge

if.end.i31.i.sii9234_mhl_tx_ctl_int.exit_crit_edge: ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_mhl_tx_ctl_int.exit

do.end.i33.i:                                     ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i32.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %204 = ptrtoint ptr %dev.i32.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev.i32.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %205, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 166, i32 noundef 12) #8
  br label %sii9234_mhl_tx_ctl_int.exit

sii9234_mhl_tx_ctl_int.exitthread-pre-split:      ; preds = %sii9234_writeb.exit26.i
  call void @__sanitizer_cov_trace_pc() #7
  %206 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %.pr423 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_mhl_tx_ctl_int.exit

sii9234_mhl_tx_ctl_int.exit:                      ; preds = %sii9234_mhl_tx_ctl_int.exitthread-pre-split, %do.end.i33.i, %if.end.i31.i.sii9234_mhl_tx_ctl_int.exit_crit_edge, %sii9234_writeb.exit17.thread41.i
  %207 = phi i32 [ %.pr423, %sii9234_mhl_tx_ctl_int.exitthread-pre-split ], [ %call.i11.i, %sii9234_writeb.exit17.thread41.i ], [ %call.i29.i, %do.end.i33.i ], [ %call.i29.i, %if.end.i31.i.sii9234_mhl_tx_ctl_int.exit_crit_edge ]
  %208 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp11 = icmp slt i32 %207, 0
  br i1 %cmp11, label %sii9234_mhl_tx_ctl_int.exit.cleanup_crit_edge, label %sii9234_mhl_tx_ctl_int.exit.if.end.i_crit_edge

sii9234_mhl_tx_ctl_int.exit.if.end.i_crit_edge:   ; preds = %sii9234_mhl_tx_ctl_int.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

sii9234_mhl_tx_ctl_int.exit.cleanup_crit_edge:    ; preds = %sii9234_mhl_tx_ctl_int.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %sii9234_mhl_tx_ctl_int.exit.if.end.i_crit_edge, %sii9234_mhl_tx_ctl_int.exit.thread
  %209 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ctx, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %210, i8 noundef zeroext 43, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sii9234_writeb.exit.thread, label %sii9234_writeb.exit

sii9234_writeb.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %211 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %212, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 43, i32 noundef 1) #8
  br label %sii9234_writebm.exit.thread.sink.split

sii9234_writeb.exit:                              ; preds = %if.end.i
  %213 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %call.i, ptr %i2c_error.i, align 4
  %214 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i117 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i117, label %if.end.i120, label %sii9234_writeb.exit.sii9234_writebm.exit.thread_crit_edge

sii9234_writeb.exit.sii9234_writebm.exit.thread_crit_edge: ; preds = %sii9234_writeb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit.thread

if.end.i120:                                      ; preds = %sii9234_writeb.exit
  %call.i118 = tail call i32 @i2c_smbus_write_byte(ptr noundef %215, i8 noundef zeroext -112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp.i119 = icmp slt i32 %call.i118, 0
  br i1 %cmp.i119, label %if.end.i120.cleanup.sink.split.i_crit_edge, label %if.end7.i121

if.end.i120.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end7.i121:                                     ; preds = %if.end.i120
  %call8.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %215) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i121.cleanup.sink.split.i_crit_edge, label %if.end18.i

if.end7.i121.cleanup.sink.split.i_crit_edge:      ; preds = %if.end7.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %if.end7.i121
  %and19.i = and i32 %call8.i, -7
  %or.i = or i32 %and19.i, 4
  %conv21.i = trunc i32 %or.i to i8
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %215, i8 noundef zeroext -112, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %sii9234_writebm.exit

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end18.i.cleanup.sink.split.i_crit_edge, %if.end7.i121.cleanup.sink.split.i_crit_edge, %if.end.i120.cleanup.sink.split.i_crit_edge
  %or.sink.i = phi i32 [ 4, %if.end.i120.cleanup.sink.split.i_crit_edge ], [ 4, %if.end7.i121.cleanup.sink.split.i_crit_edge ], [ %or.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %call22.sink.i = phi i32 [ %call.i118, %if.end.i120.cleanup.sink.split.i_crit_edge ], [ %call8.i, %if.end7.i121.cleanup.sink.split.i_crit_edge ], [ %call22.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %dev29.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %216 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev29.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %217, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 144, i32 noundef %or.sink.i) #8
  br label %sii9234_writebm.exit.thread.sink.split

sii9234_writebm.exit.thread.sink.split:           ; preds = %cleanup.sink.split.i, %sii9234_writeb.exit.thread
  %call.i.sink = phi i32 [ %call.i, %sii9234_writeb.exit.thread ], [ %call22.sink.i, %cleanup.sink.split.i ]
  %218 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %call.i.sink, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit.thread

sii9234_writebm.exit.thread:                      ; preds = %sii9234_writebm.exit.thread.sink.split, %sii9234_writeb.exit.sii9234_writebm.exit.thread_crit_edge
  %219 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %.pr428 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit130

sii9234_writebm.exit:                             ; preds = %if.end18.i
  %220 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %.pr426 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr426)
  %tobool.not.i123 = icmp eq i32 %.pr426, 0
  br i1 %tobool.not.i123, label %if.end.i126, label %sii9234_writeb.exit139.thread

sii9234_writeb.exit139.thread:                    ; preds = %sii9234_writebm.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i431 = getelementptr [4 x ptr], ptr %ctx, i32 0, i32 3
  br label %sii9234_writebm.exit158.thread

if.end.i126:                                      ; preds = %sii9234_writebm.exit
  %221 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ctx, align 4
  %call.i124 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %222, i8 noundef zeroext -111, i8 noundef zeroext -91) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i125 = icmp slt i32 %call.i124, 0
  br i1 %cmp.i125, label %do.end.i128, label %if.end.i126.if.end7.i129_crit_edge

if.end.i126.if.end7.i129_crit_edge:               ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i129

do.end.i128:                                      ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i127 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %223 = ptrtoint ptr %dev.i127 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev.i127, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 145, i32 noundef 165) #8
  br label %if.end7.i129

if.end7.i129:                                     ; preds = %do.end.i128, %if.end.i126.if.end7.i129_crit_edge
  %225 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %call.i124, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit130

sii9234_writeb.exit130:                           ; preds = %if.end7.i129, %sii9234_writebm.exit.thread
  %226 = phi i32 [ %.pr428, %sii9234_writebm.exit.thread ], [ %call.i124, %if.end7.i129 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool.not.i132 = icmp eq i32 %226, 0
  br i1 %tobool.not.i132, label %if.end.i135, label %sii9234_writeb.exit139thread-pre-split

if.end.i135:                                      ; preds = %sii9234_writeb.exit130
  %227 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ctx, align 4
  %call.i133 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %228, i8 noundef zeroext -108, i8 noundef zeroext 119) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp.i134 = icmp slt i32 %call.i133, 0
  br i1 %cmp.i134, label %do.end.i137, label %if.end.i135.if.end7.i138_crit_edge

if.end.i135.if.end7.i138_crit_edge:               ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i138

do.end.i137:                                      ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i136 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %229 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev.i136, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 148, i32 noundef 119) #8
  br label %if.end7.i138

if.end7.i138:                                     ; preds = %do.end.i137, %if.end.i135.if.end7.i138_crit_edge
  %231 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %call.i133, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit139

sii9234_writeb.exit139thread-pre-split:           ; preds = %sii9234_writeb.exit130
  call void @__sanitizer_cov_trace_pc() #7
  %232 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %.pr430 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit139

sii9234_writeb.exit139:                           ; preds = %sii9234_writeb.exit139thread-pre-split, %if.end7.i138
  %233 = phi i32 [ %.pr430, %sii9234_writeb.exit139thread-pre-split ], [ %call.i133, %if.end7.i138 ]
  %arrayidx.i = getelementptr [4 x ptr], ptr %ctx, i32 0, i32 3
  %234 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool.not.i141 = icmp eq i32 %233, 0
  br i1 %tobool.not.i141, label %if.end.i144, label %sii9234_writeb.exit139.sii9234_writebm.exit158_crit_edge

sii9234_writeb.exit139.sii9234_writebm.exit158_crit_edge: ; preds = %sii9234_writeb.exit139
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit158

if.end.i144:                                      ; preds = %sii9234_writeb.exit139
  %call.i142 = tail call i32 @i2c_smbus_write_byte(ptr noundef %235, i8 noundef zeroext 49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp.i143 = icmp slt i32 %call.i142, 0
  br i1 %cmp.i143, label %if.end.i144.cleanup.sink.split.i157_crit_edge, label %if.end7.i147

if.end.i144.cleanup.sink.split.i157_crit_edge:    ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i157

if.end7.i147:                                     ; preds = %if.end.i144
  %call8.i145 = tail call i32 @i2c_smbus_read_byte(ptr noundef %235) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i145)
  %cmp9.i146 = icmp slt i32 %call8.i145, 0
  br i1 %cmp9.i146, label %if.end7.i147.cleanup.sink.split.i157_crit_edge, label %if.end18.i153

if.end7.i147.cleanup.sink.split.i157_crit_edge:   ; preds = %if.end7.i147
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i157

if.end18.i153:                                    ; preds = %if.end7.i147
  %or.i149 = or i32 %call8.i145, 12
  %conv21.i150 = trunc i32 %or.i149 to i8
  %call22.i151 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %235, i8 noundef zeroext 49, i8 noundef zeroext %conv21.i150) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i151)
  %cmp23.i152 = icmp slt i32 %call22.i151, 0
  br i1 %cmp23.i152, label %if.end18.i153.cleanup.sink.split.i157_crit_edge, label %if.end18.i153.sii9234_writebm.exit158_crit_edge

if.end18.i153.sii9234_writebm.exit158_crit_edge:  ; preds = %if.end18.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit158

if.end18.i153.cleanup.sink.split.i157_crit_edge:  ; preds = %if.end18.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i157

cleanup.sink.split.i157:                          ; preds = %if.end18.i153.cleanup.sink.split.i157_crit_edge, %if.end7.i147.cleanup.sink.split.i157_crit_edge, %if.end.i144.cleanup.sink.split.i157_crit_edge
  %or.sink.i154 = phi i32 [ -1, %if.end.i144.cleanup.sink.split.i157_crit_edge ], [ -1, %if.end7.i147.cleanup.sink.split.i157_crit_edge ], [ %or.i149, %if.end18.i153.cleanup.sink.split.i157_crit_edge ]
  %call22.sink.i155 = phi i32 [ %call.i142, %if.end.i144.cleanup.sink.split.i157_crit_edge ], [ %call8.i145, %if.end7.i147.cleanup.sink.split.i157_crit_edge ], [ %call22.i151, %if.end18.i153.cleanup.sink.split.i157_crit_edge ]
  %dev29.i156 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %236 = ptrtoint ptr %dev29.i156 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev29.i156, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %237, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.25, i32 noundef 49, i32 noundef %or.sink.i154) #8
  %238 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %call22.sink.i155, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit158.thread

sii9234_writebm.exit158.thread:                   ; preds = %cleanup.sink.split.i157, %sii9234_writeb.exit139.thread
  %arrayidx.i433.ph = phi ptr [ %arrayidx.i, %cleanup.sink.split.i157 ], [ %arrayidx.i431, %sii9234_writeb.exit139.thread ]
  %239 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %.pr466 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit167

sii9234_writebm.exit158:                          ; preds = %if.end18.i153.sii9234_writebm.exit158_crit_edge, %sii9234_writeb.exit139.sii9234_writebm.exit158_crit_edge
  %240 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %.pr462 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr462)
  %tobool.not.i160 = icmp eq i32 %.pr462, 0
  br i1 %tobool.not.i160, label %if.end.i163, label %sii9234_writebm.exit158.sii9234_writebm.exit260_crit_edge

sii9234_writebm.exit158.sii9234_writebm.exit260_crit_edge: ; preds = %sii9234_writebm.exit158
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit260

if.end.i163:                                      ; preds = %sii9234_writebm.exit158
  %241 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ctx, align 4
  %call.i161 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %242, i8 noundef zeroext -91, i8 noundef zeroext -96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %cmp.i162 = icmp slt i32 %call.i161, 0
  br i1 %cmp.i162, label %do.end.i165, label %if.end.i163.if.end7.i166_crit_edge

if.end.i163.if.end7.i166_crit_edge:               ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i166

do.end.i165:                                      ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i164 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %243 = ptrtoint ptr %dev.i164 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev.i164, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 165, i32 noundef 160) #8
  br label %if.end7.i166

if.end7.i166:                                     ; preds = %do.end.i165, %if.end.i163.if.end7.i166_crit_edge
  %245 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %call.i161, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit167

sii9234_writeb.exit167:                           ; preds = %if.end7.i166, %sii9234_writebm.exit158.thread
  %246 = phi i32 [ %.pr466, %sii9234_writebm.exit158.thread ], [ %call.i161, %if.end7.i166 ]
  %arrayidx.i433465 = phi ptr [ %arrayidx.i433.ph, %sii9234_writebm.exit158.thread ], [ %arrayidx.i, %if.end7.i166 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool.not.i169 = icmp eq i32 %246, 0
  br i1 %tobool.not.i169, label %if.end.i172, label %sii9234_writeb.exit176thread-pre-split

if.end.i172:                                      ; preds = %sii9234_writeb.exit167
  %247 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ctx, align 4
  %call.i170 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %248, i8 noundef zeroext -107, i8 noundef zeroext 49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %cmp.i171 = icmp slt i32 %call.i170, 0
  br i1 %cmp.i171, label %do.end.i174, label %if.end.i172.if.end7.i175_crit_edge

if.end.i172.if.end7.i175_crit_edge:               ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i175

do.end.i174:                                      ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i173 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %249 = ptrtoint ptr %dev.i173 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev.i173, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %250, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 149, i32 noundef 49) #8
  br label %if.end7.i175

if.end7.i175:                                     ; preds = %do.end.i174, %if.end.i172.if.end7.i175_crit_edge
  %251 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %call.i170, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit176

sii9234_writeb.exit176thread-pre-split:           ; preds = %sii9234_writeb.exit167
  call void @__sanitizer_cov_trace_pc() #7
  %252 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %.pr470 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit176

sii9234_writeb.exit176:                           ; preds = %sii9234_writeb.exit176thread-pre-split, %if.end7.i175
  %253 = phi i32 [ %.pr470, %sii9234_writeb.exit176thread-pre-split ], [ %call.i170, %if.end7.i175 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool.not.i178 = icmp eq i32 %253, 0
  br i1 %tobool.not.i178, label %if.end.i181, label %sii9234_writeb.exit185thread-pre-split

if.end.i181:                                      ; preds = %sii9234_writeb.exit176
  %254 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ctx, align 4
  %call.i179 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %255, i8 noundef zeroext -105, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %cmp.i180 = icmp slt i32 %call.i179, 0
  br i1 %cmp.i180, label %do.end.i183, label %if.end.i181.if.end7.i184_crit_edge

if.end.i181.if.end7.i184_crit_edge:               ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i184

do.end.i183:                                      ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i182 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %256 = ptrtoint ptr %dev.i182 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev.i182, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 151, i32 noundef 0) #8
  br label %if.end7.i184

if.end7.i184:                                     ; preds = %do.end.i183, %if.end.i181.if.end7.i184_crit_edge
  %258 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %call.i179, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit185

sii9234_writeb.exit185thread-pre-split:           ; preds = %sii9234_writeb.exit176
  call void @__sanitizer_cov_trace_pc() #7
  %259 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %.pr474 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit185

sii9234_writeb.exit185:                           ; preds = %sii9234_writeb.exit185thread-pre-split, %if.end7.i184
  %260 = phi i32 [ %.pr474, %sii9234_writeb.exit185thread-pre-split ], [ %call.i179, %if.end7.i184 ]
  %261 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not.i187 = icmp eq i32 %260, 0
  br i1 %tobool.not.i187, label %if.end.i190, label %sii9234_writeb.exit185.sii9234_writebm.exit204_crit_edge

sii9234_writeb.exit185.sii9234_writebm.exit204_crit_edge: ; preds = %sii9234_writeb.exit185
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit204

if.end.i190:                                      ; preds = %sii9234_writeb.exit185
  %call.i188 = tail call i32 @i2c_smbus_write_byte(ptr noundef %262, i8 noundef zeroext -107) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %cmp.i189 = icmp slt i32 %call.i188, 0
  br i1 %cmp.i189, label %if.end.i190.cleanup.sink.split.i203_crit_edge, label %if.end7.i193

if.end.i190.cleanup.sink.split.i203_crit_edge:    ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i203

if.end7.i193:                                     ; preds = %if.end.i190
  %call8.i191 = tail call i32 @i2c_smbus_read_byte(ptr noundef %262) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i191)
  %cmp9.i192 = icmp slt i32 %call8.i191, 0
  br i1 %cmp9.i192, label %if.end7.i193.cleanup.sink.split.i203_crit_edge, label %if.end18.i199

if.end7.i193.cleanup.sink.split.i203_crit_edge:   ; preds = %if.end7.i193
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i203

if.end18.i199:                                    ; preds = %if.end7.i193
  %or.i195 = or i32 %call8.i191, 64
  %conv21.i196 = trunc i32 %or.i195 to i8
  %call22.i197 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %262, i8 noundef zeroext -107, i8 noundef zeroext %conv21.i196) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i197)
  %cmp23.i198 = icmp slt i32 %call22.i197, 0
  br i1 %cmp23.i198, label %if.end18.i199.cleanup.sink.split.i203_crit_edge, label %if.end18.i199.sii9234_writebm.exit204_crit_edge

if.end18.i199.sii9234_writebm.exit204_crit_edge:  ; preds = %if.end18.i199
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit204

if.end18.i199.cleanup.sink.split.i203_crit_edge:  ; preds = %if.end18.i199
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i203

cleanup.sink.split.i203:                          ; preds = %if.end18.i199.cleanup.sink.split.i203_crit_edge, %if.end7.i193.cleanup.sink.split.i203_crit_edge, %if.end.i190.cleanup.sink.split.i203_crit_edge
  %or.sink.i200 = phi i32 [ -1, %if.end.i190.cleanup.sink.split.i203_crit_edge ], [ -1, %if.end7.i193.cleanup.sink.split.i203_crit_edge ], [ %or.i195, %if.end18.i199.cleanup.sink.split.i203_crit_edge ]
  %call22.sink.i201 = phi i32 [ %call.i188, %if.end.i190.cleanup.sink.split.i203_crit_edge ], [ %call8.i191, %if.end7.i193.cleanup.sink.split.i203_crit_edge ], [ %call22.i197, %if.end18.i199.cleanup.sink.split.i203_crit_edge ]
  %dev29.i202 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %263 = ptrtoint ptr %dev29.i202 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dev29.i202, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %264, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 149, i32 noundef %or.sink.i200) #8
  br label %sii9234_writebm.exit260.sink.split

sii9234_writebm.exit204:                          ; preds = %if.end18.i199.sii9234_writebm.exit204_crit_edge, %sii9234_writeb.exit185.sii9234_writebm.exit204_crit_edge
  %265 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %.pr478 = load i32, ptr %i2c_error.i, align 4
  %266 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr478)
  %tobool.not.i206 = icmp eq i32 %.pr478, 0
  br i1 %tobool.not.i206, label %if.end.i209, label %sii9234_writebm.exit204.sii9234_writebm.exit260_crit_edge

sii9234_writebm.exit204.sii9234_writebm.exit260_crit_edge: ; preds = %sii9234_writebm.exit204
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit260

if.end.i209:                                      ; preds = %sii9234_writebm.exit204
  %call.i207 = tail call i32 @i2c_smbus_write_byte(ptr noundef %267, i8 noundef zeroext -110) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %cmp.i208 = icmp slt i32 %call.i207, 0
  br i1 %cmp.i208, label %if.end.i209.cleanup.sink.split.i222_crit_edge, label %if.end7.i212

if.end.i209.cleanup.sink.split.i222_crit_edge:    ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i222

if.end7.i212:                                     ; preds = %if.end.i209
  %call8.i210 = tail call i32 @i2c_smbus_read_byte(ptr noundef %267) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i210)
  %cmp9.i211 = icmp slt i32 %call8.i210, 0
  br i1 %cmp9.i211, label %if.end7.i212.cleanup.sink.split.i222_crit_edge, label %if.end18.i218

if.end7.i212.cleanup.sink.split.i222_crit_edge:   ; preds = %if.end7.i212
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i222

if.end18.i218:                                    ; preds = %if.end7.i212
  %or.i214 = or i32 %call8.i210, 134
  %conv21.i215 = trunc i32 %or.i214 to i8
  %call22.i216 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %267, i8 noundef zeroext -110, i8 noundef zeroext %conv21.i215) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i216)
  %cmp23.i217 = icmp slt i32 %call22.i216, 0
  br i1 %cmp23.i217, label %if.end18.i218.cleanup.sink.split.i222_crit_edge, label %sii9234_writebm.exit223

if.end18.i218.cleanup.sink.split.i222_crit_edge:  ; preds = %if.end18.i218
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i222

cleanup.sink.split.i222:                          ; preds = %if.end18.i218.cleanup.sink.split.i222_crit_edge, %if.end7.i212.cleanup.sink.split.i222_crit_edge, %if.end.i209.cleanup.sink.split.i222_crit_edge
  %or.sink.i219 = phi i32 [ -1, %if.end.i209.cleanup.sink.split.i222_crit_edge ], [ -1, %if.end7.i212.cleanup.sink.split.i222_crit_edge ], [ %or.i214, %if.end18.i218.cleanup.sink.split.i222_crit_edge ]
  %call22.sink.i220 = phi i32 [ %call.i207, %if.end.i209.cleanup.sink.split.i222_crit_edge ], [ %call8.i210, %if.end7.i212.cleanup.sink.split.i222_crit_edge ], [ %call22.i216, %if.end18.i218.cleanup.sink.split.i222_crit_edge ]
  %dev29.i221 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %268 = ptrtoint ptr %dev29.i221 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev29.i221, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %269, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 146, i32 noundef %or.sink.i219) #8
  br label %sii9234_writebm.exit260.sink.split

sii9234_writebm.exit223:                          ; preds = %if.end18.i218
  %270 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %.pr482.pr = load i32, ptr %i2c_error.i, align 4
  %271 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr482.pr)
  %tobool.not.i225 = icmp eq i32 %.pr482.pr, 0
  br i1 %tobool.not.i225, label %if.end.i228, label %sii9234_writebm.exit223.sii9234_writebm.exit260_crit_edge

sii9234_writebm.exit223.sii9234_writebm.exit260_crit_edge: ; preds = %sii9234_writebm.exit223
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit260

if.end.i228:                                      ; preds = %sii9234_writebm.exit223
  %call.i226 = tail call i32 @i2c_smbus_write_byte(ptr noundef %272, i8 noundef zeroext -109) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp.i227 = icmp slt i32 %call.i226, 0
  br i1 %cmp.i227, label %if.end.i228.cleanup.sink.split.i241_crit_edge, label %if.end7.i231

if.end.i228.cleanup.sink.split.i241_crit_edge:    ; preds = %if.end.i228
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i241

if.end7.i231:                                     ; preds = %if.end.i228
  %call8.i229 = tail call i32 @i2c_smbus_read_byte(ptr noundef %272) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i229)
  %cmp9.i230 = icmp slt i32 %call8.i229, 0
  br i1 %cmp9.i230, label %if.end7.i231.cleanup.sink.split.i241_crit_edge, label %if.end18.i237

if.end7.i231.cleanup.sink.split.i241_crit_edge:   ; preds = %if.end7.i231
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i241

if.end18.i237:                                    ; preds = %if.end7.i231
  %or.i233 = or i32 %call8.i229, 140
  %conv21.i234 = trunc i32 %or.i233 to i8
  %call22.i235 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %272, i8 noundef zeroext -109, i8 noundef zeroext %conv21.i234) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i235)
  %cmp23.i236 = icmp slt i32 %call22.i235, 0
  br i1 %cmp23.i236, label %if.end18.i237.cleanup.sink.split.i241_crit_edge, label %sii9234_writebm.exit242

if.end18.i237.cleanup.sink.split.i241_crit_edge:  ; preds = %if.end18.i237
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i241

cleanup.sink.split.i241:                          ; preds = %if.end18.i237.cleanup.sink.split.i241_crit_edge, %if.end7.i231.cleanup.sink.split.i241_crit_edge, %if.end.i228.cleanup.sink.split.i241_crit_edge
  %or.sink.i238 = phi i32 [ -1, %if.end.i228.cleanup.sink.split.i241_crit_edge ], [ -1, %if.end7.i231.cleanup.sink.split.i241_crit_edge ], [ %or.i233, %if.end18.i237.cleanup.sink.split.i241_crit_edge ]
  %call22.sink.i239 = phi i32 [ %call.i226, %if.end.i228.cleanup.sink.split.i241_crit_edge ], [ %call8.i229, %if.end7.i231.cleanup.sink.split.i241_crit_edge ], [ %call22.i235, %if.end18.i237.cleanup.sink.split.i241_crit_edge ]
  %dev29.i240 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %273 = ptrtoint ptr %dev29.i240 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev29.i240, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 147, i32 noundef %or.sink.i238) #8
  br label %sii9234_writebm.exit260.sink.split

sii9234_writebm.exit242:                          ; preds = %if.end18.i237
  %275 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %.pr486.pr = load i32, ptr %i2c_error.i, align 4
  %276 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr486.pr)
  %tobool.not.i244 = icmp eq i32 %.pr486.pr, 0
  br i1 %tobool.not.i244, label %if.end.i247, label %sii9234_writebm.exit242.sii9234_writebm.exit260_crit_edge

sii9234_writebm.exit242.sii9234_writebm.exit260_crit_edge: ; preds = %sii9234_writebm.exit242
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit260

if.end.i247:                                      ; preds = %sii9234_writebm.exit242
  %call.i245 = tail call i32 @i2c_smbus_write_byte(ptr noundef %277, i8 noundef zeroext 121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %cmp.i246 = icmp slt i32 %call.i245, 0
  br i1 %cmp.i246, label %if.end.i247.cleanup.sink.split.i259_crit_edge, label %if.end7.i250

if.end.i247.cleanup.sink.split.i259_crit_edge:    ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i259

if.end7.i250:                                     ; preds = %if.end.i247
  %call8.i248 = tail call i32 @i2c_smbus_read_byte(ptr noundef %277) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i248)
  %cmp9.i249 = icmp slt i32 %call8.i248, 0
  br i1 %cmp9.i249, label %if.end7.i250.cleanup.sink.split.i259_crit_edge, label %if.end18.i255

if.end7.i250.cleanup.sink.split.i259_crit_edge:   ; preds = %if.end7.i250
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i259

if.end18.i255:                                    ; preds = %if.end7.i250
  %and19.i251 = and i32 %call8.i248, -7
  %conv21.i252 = trunc i32 %and19.i251 to i8
  %call22.i253 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %277, i8 noundef zeroext 121, i8 noundef zeroext %conv21.i252) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i253)
  %cmp23.i254 = icmp slt i32 %call22.i253, 0
  br i1 %cmp23.i254, label %if.end18.i255.cleanup.sink.split.i259_crit_edge, label %if.end18.i255.sii9234_writebm.exit260_crit_edge

if.end18.i255.sii9234_writebm.exit260_crit_edge:  ; preds = %if.end18.i255
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit260

if.end18.i255.cleanup.sink.split.i259_crit_edge:  ; preds = %if.end18.i255
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i259

cleanup.sink.split.i259:                          ; preds = %if.end18.i255.cleanup.sink.split.i259_crit_edge, %if.end7.i250.cleanup.sink.split.i259_crit_edge, %if.end.i247.cleanup.sink.split.i259_crit_edge
  %or.sink.i256 = phi i32 [ 0, %if.end.i247.cleanup.sink.split.i259_crit_edge ], [ 0, %if.end7.i250.cleanup.sink.split.i259_crit_edge ], [ %and19.i251, %if.end18.i255.cleanup.sink.split.i259_crit_edge ]
  %call22.sink.i257 = phi i32 [ %call.i245, %if.end.i247.cleanup.sink.split.i259_crit_edge ], [ %call8.i248, %if.end7.i250.cleanup.sink.split.i259_crit_edge ], [ %call22.i253, %if.end18.i255.cleanup.sink.split.i259_crit_edge ]
  %dev29.i258 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %278 = ptrtoint ptr %dev29.i258 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev29.i258, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %279, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 121, i32 noundef %or.sink.i256) #8
  br label %sii9234_writebm.exit260.sink.split

sii9234_writebm.exit260.sink.split:               ; preds = %cleanup.sink.split.i259, %cleanup.sink.split.i241, %cleanup.sink.split.i222, %cleanup.sink.split.i203
  %call22.sink.i220.sink = phi i32 [ %call22.sink.i220, %cleanup.sink.split.i222 ], [ %call22.sink.i201, %cleanup.sink.split.i203 ], [ %call22.sink.i239, %cleanup.sink.split.i241 ], [ %call22.sink.i257, %cleanup.sink.split.i259 ]
  %280 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %call22.sink.i220.sink, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit260

sii9234_writebm.exit260:                          ; preds = %sii9234_writebm.exit260.sink.split, %if.end18.i255.sii9234_writebm.exit260_crit_edge, %sii9234_writebm.exit242.sii9234_writebm.exit260_crit_edge, %sii9234_writebm.exit223.sii9234_writebm.exit260_crit_edge, %sii9234_writebm.exit204.sii9234_writebm.exit260_crit_edge, %sii9234_writebm.exit158.sii9234_writebm.exit260_crit_edge
  %arrayidx.i433465469473477481485489 = phi ptr [ %arrayidx.i433465, %sii9234_writebm.exit242.sii9234_writebm.exit260_crit_edge ], [ %arrayidx.i433465, %if.end18.i255.sii9234_writebm.exit260_crit_edge ], [ %arrayidx.i433465, %sii9234_writebm.exit223.sii9234_writebm.exit260_crit_edge ], [ %arrayidx.i, %sii9234_writebm.exit158.sii9234_writebm.exit260_crit_edge ], [ %arrayidx.i433465, %sii9234_writebm.exit204.sii9234_writebm.exit260_crit_edge ], [ %arrayidx.i433465, %sii9234_writebm.exit260.sink.split ]
  tail call void @msleep(i32 noundef 25) #5
  %281 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %ctx, align 4
  %283 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool.not.i262 = icmp eq i32 %284, 0
  br i1 %tobool.not.i262, label %if.end.i265, label %sii9234_writebm.exit260.sii9234_writebm.exit278.thread_crit_edge

sii9234_writebm.exit260.sii9234_writebm.exit278.thread_crit_edge: ; preds = %sii9234_writebm.exit260
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit278.thread

if.end.i265:                                      ; preds = %sii9234_writebm.exit260
  %call.i263 = tail call i32 @i2c_smbus_write_byte(ptr noundef %282, i8 noundef zeroext -107) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %cmp.i264 = icmp slt i32 %call.i263, 0
  br i1 %cmp.i264, label %if.end.i265.cleanup.sink.split.i277_crit_edge, label %if.end7.i268

if.end.i265.cleanup.sink.split.i277_crit_edge:    ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i277

if.end7.i268:                                     ; preds = %if.end.i265
  %call8.i266 = tail call i32 @i2c_smbus_read_byte(ptr noundef %282) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i266)
  %cmp9.i267 = icmp slt i32 %call8.i266, 0
  br i1 %cmp9.i267, label %if.end7.i268.cleanup.sink.split.i277_crit_edge, label %if.end18.i273

if.end7.i268.cleanup.sink.split.i277_crit_edge:   ; preds = %if.end7.i268
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i277

if.end18.i273:                                    ; preds = %if.end7.i268
  %and19.i269 = and i32 %call8.i266, -65
  %conv21.i270 = trunc i32 %and19.i269 to i8
  %call22.i271 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %282, i8 noundef zeroext -107, i8 noundef zeroext %conv21.i270) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i271)
  %cmp23.i272 = icmp slt i32 %call22.i271, 0
  br i1 %cmp23.i272, label %if.end18.i273.cleanup.sink.split.i277_crit_edge, label %sii9234_writebm.exit278

if.end18.i273.cleanup.sink.split.i277_crit_edge:  ; preds = %if.end18.i273
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i277

cleanup.sink.split.i277:                          ; preds = %if.end18.i273.cleanup.sink.split.i277_crit_edge, %if.end7.i268.cleanup.sink.split.i277_crit_edge, %if.end.i265.cleanup.sink.split.i277_crit_edge
  %or.sink.i274 = phi i32 [ 0, %if.end.i265.cleanup.sink.split.i277_crit_edge ], [ 0, %if.end7.i268.cleanup.sink.split.i277_crit_edge ], [ %and19.i269, %if.end18.i273.cleanup.sink.split.i277_crit_edge ]
  %call22.sink.i275 = phi i32 [ %call.i263, %if.end.i265.cleanup.sink.split.i277_crit_edge ], [ %call8.i266, %if.end7.i268.cleanup.sink.split.i277_crit_edge ], [ %call22.i271, %if.end18.i273.cleanup.sink.split.i277_crit_edge ]
  %dev29.i276 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %285 = ptrtoint ptr %dev29.i276 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev29.i276, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %286, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 149, i32 noundef %or.sink.i274) #8
  %287 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %call22.sink.i275, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit278.thread

sii9234_writebm.exit278.thread:                   ; preds = %cleanup.sink.split.i277, %sii9234_writebm.exit260.sii9234_writebm.exit278.thread_crit_edge
  %288 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %.pr492 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit287

sii9234_writebm.exit278:                          ; preds = %if.end18.i273
  %289 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %.pr490 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr490)
  %tobool.not.i280 = icmp eq i32 %.pr490, 0
  br i1 %tobool.not.i280, label %if.end.i283, label %sii9234_writebm.exit278.sii9234_writeb.exit287_crit_edge

sii9234_writebm.exit278.sii9234_writeb.exit287_crit_edge: ; preds = %sii9234_writebm.exit278
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit287

if.end.i283:                                      ; preds = %sii9234_writebm.exit278
  %290 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %ctx, align 4
  %call.i281 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %291, i8 noundef zeroext -112, i8 noundef zeroext 39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %cmp.i282 = icmp slt i32 %call.i281, 0
  br i1 %cmp.i282, label %do.end.i285, label %if.end.i283.sii9234_writeb.exit287_crit_edge

if.end.i283.sii9234_writeb.exit287_crit_edge:     ; preds = %if.end.i283
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit287

do.end.i285:                                      ; preds = %if.end.i283
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i284 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %292 = ptrtoint ptr %dev.i284 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev.i284, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %293, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 144, i32 noundef 39) #8
  br label %sii9234_writeb.exit287

sii9234_writeb.exit287:                           ; preds = %do.end.i285, %if.end.i283.sii9234_writeb.exit287_crit_edge, %sii9234_writebm.exit278.sii9234_writeb.exit287_crit_edge, %sii9234_writebm.exit278.thread
  %294 = phi i32 [ %.pr492, %sii9234_writebm.exit278.thread ], [ %.pr490, %sii9234_writebm.exit278.sii9234_writeb.exit287_crit_edge ], [ %call.i281, %do.end.i285 ], [ %call.i281, %if.end.i283.sii9234_writeb.exit287_crit_edge ]
  %295 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 0, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %cmp29 = icmp slt i32 %294, 0
  br i1 %cmp29, label %sii9234_writeb.exit287.cleanup_crit_edge, label %if.end.i.i294

sii9234_writeb.exit287.cleanup_crit_edge:         ; preds = %sii9234_writeb.exit287
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i294:                                    ; preds = %sii9234_writeb.exit287
  %296 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i.i292 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %297, i8 noundef zeroext 7, i8 noundef zeroext -14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i292)
  %cmp.i.i293 = icmp slt i32 %call.i.i292, 0
  br i1 %cmp.i.i293, label %sii9234_writeb.exit.thread380.i, label %sii9234_writeb.exit.i296

sii9234_writeb.exit.thread380.i:                  ; preds = %if.end.i.i294
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i295 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %298 = ptrtoint ptr %dev.i.i295 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev.i.i295, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %299, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 7, i32 noundef 242) #8
  %300 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %call.i.i292, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit70.thread.i

sii9234_writeb.exit.i296:                         ; preds = %if.end.i.i294
  %301 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %call.i.i292, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i292)
  %tobool.not.i62.i = icmp eq i32 %call.i.i292, 0
  br i1 %tobool.not.i62.i, label %if.end.i66.i, label %sii9234_writeb.exit.i296.sii9234_writeb.exit70.thread.i_crit_edge

sii9234_writeb.exit.i296.sii9234_writeb.exit70.thread.i_crit_edge: ; preds = %sii9234_writeb.exit.i296
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit70.thread.i

if.end.i66.i:                                     ; preds = %sii9234_writeb.exit.i296
  %302 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i64.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %303, i8 noundef zeroext 64, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %cmp.i65.i = icmp slt i32 %call.i64.i, 0
  br i1 %cmp.i65.i, label %sii9234_writeb.exit70.thread383.i, label %sii9234_writeb.exit70.i

sii9234_writeb.exit70.thread383.i:                ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i67.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %304 = ptrtoint ptr %dev.i67.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev.i67.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %305, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 64, i32 noundef 3) #8
  %306 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %call.i64.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit90thread-pre-split.i

sii9234_writeb.exit70.thread.i:                   ; preds = %sii9234_writeb.exit.i296.sii9234_writeb.exit70.thread.i_crit_edge, %sii9234_writeb.exit.thread380.i
  %307 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %.pr.i297 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit80.i

sii9234_writeb.exit70.i:                          ; preds = %if.end.i66.i
  %308 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %call.i64.i, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64.i)
  %tobool.not.i72.i = icmp eq i32 %call.i64.i, 0
  br i1 %tobool.not.i72.i, label %if.end.i76.i, label %sii9234_writeb.exit70.i.sii9234_writeb.exit90thread-pre-split.i_crit_edge

sii9234_writeb.exit70.i.sii9234_writeb.exit90thread-pre-split.i_crit_edge: ; preds = %sii9234_writeb.exit70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit90thread-pre-split.i

if.end.i76.i:                                     ; preds = %sii9234_writeb.exit70.i
  %309 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i74.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %310, i8 noundef zeroext 66, i8 noundef zeroext 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %cmp.i75.i = icmp slt i32 %call.i74.i, 0
  br i1 %cmp.i75.i, label %do.end.i78.i, label %if.end.i76.i.if.end7.i79.i_crit_edge

if.end.i76.i.if.end7.i79.i_crit_edge:             ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i79.i

do.end.i78.i:                                     ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i77.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %311 = ptrtoint ptr %dev.i77.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %dev.i77.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %312, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 66, i32 noundef 6) #8
  br label %if.end7.i79.i

if.end7.i79.i:                                    ; preds = %do.end.i78.i, %if.end.i76.i.if.end7.i79.i_crit_edge
  %313 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %call.i74.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit80.i

sii9234_writeb.exit80.i:                          ; preds = %if.end7.i79.i, %sii9234_writeb.exit70.thread.i
  %314 = phi i32 [ %.pr.i297, %sii9234_writeb.exit70.thread.i ], [ %call.i74.i, %if.end7.i79.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i82.i = icmp eq i32 %314, 0
  br i1 %tobool.not.i82.i, label %if.end.i86.i, label %sii9234_writeb.exit80.i.sii9234_writeb.exit90thread-pre-split.i_crit_edge

sii9234_writeb.exit80.i.sii9234_writeb.exit90thread-pre-split.i_crit_edge: ; preds = %sii9234_writeb.exit80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit90thread-pre-split.i

if.end.i86.i:                                     ; preds = %sii9234_writeb.exit80.i
  %315 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i84.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %316, i8 noundef zeroext 54, i8 noundef zeroext 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %cmp.i85.i = icmp slt i32 %call.i84.i, 0
  br i1 %cmp.i85.i, label %do.end.i88.i, label %if.end.i86.i.if.end7.i89.i_crit_edge

if.end.i86.i.if.end7.i89.i_crit_edge:             ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i89.i

do.end.i88.i:                                     ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i87.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %317 = ptrtoint ptr %dev.i87.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev.i87.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %318, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 54, i32 noundef 12) #8
  br label %if.end7.i89.i

if.end7.i89.i:                                    ; preds = %do.end.i88.i, %if.end.i86.i.if.end7.i89.i_crit_edge
  %319 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %call.i84.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit90.i

sii9234_writeb.exit90thread-pre-split.i:          ; preds = %sii9234_writeb.exit80.i.sii9234_writeb.exit90thread-pre-split.i_crit_edge, %sii9234_writeb.exit70.i.sii9234_writeb.exit90thread-pre-split.i_crit_edge, %sii9234_writeb.exit70.thread383.i
  %320 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %.pr386.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit90.i

sii9234_writeb.exit90.i:                          ; preds = %sii9234_writeb.exit90thread-pre-split.i, %if.end7.i89.i
  %321 = phi i32 [ %.pr386.i, %sii9234_writeb.exit90thread-pre-split.i ], [ %call.i84.i, %if.end7.i89.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool.not.i92.i = icmp eq i32 %321, 0
  br i1 %tobool.not.i92.i, label %if.end.i96.i, label %sii9234_writeb.exit100thread-pre-split.i

if.end.i96.i:                                     ; preds = %sii9234_writeb.exit90.i
  %322 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i94.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %323, i8 noundef zeroext 61, i8 noundef zeroext -3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %cmp.i95.i = icmp slt i32 %call.i94.i, 0
  br i1 %cmp.i95.i, label %do.end.i98.i, label %if.end.i96.i.if.end7.i99.i_crit_edge

if.end.i96.i.if.end7.i99.i_crit_edge:             ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i99.i

do.end.i98.i:                                     ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i97.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %324 = ptrtoint ptr %dev.i97.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dev.i97.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %325, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 61, i32 noundef 253) #8
  br label %if.end7.i99.i

if.end7.i99.i:                                    ; preds = %do.end.i98.i, %if.end.i96.i.if.end7.i99.i_crit_edge
  %326 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %call.i94.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit100.i

sii9234_writeb.exit100thread-pre-split.i:         ; preds = %sii9234_writeb.exit90.i
  call void @__sanitizer_cov_trace_pc() #7
  %327 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %.pr387.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit100.i

sii9234_writeb.exit100.i:                         ; preds = %sii9234_writeb.exit100thread-pre-split.i, %if.end7.i99.i
  %328 = phi i32 [ %.pr387.i, %sii9234_writeb.exit100thread-pre-split.i ], [ %call.i94.i, %if.end7.i99.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool.not.i102.i = icmp eq i32 %328, 0
  br i1 %tobool.not.i102.i, label %if.end.i106.i, label %sii9234_writeb.exit110thread-pre-split.i

if.end.i106.i:                                    ; preds = %sii9234_writeb.exit100.i
  %329 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i104.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %330, i8 noundef zeroext 28, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i)
  %cmp.i105.i = icmp slt i32 %call.i104.i, 0
  br i1 %cmp.i105.i, label %do.end.i108.i, label %if.end.i106.i.if.end7.i109.i_crit_edge

if.end.i106.i.if.end7.i109.i_crit_edge:           ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i109.i

do.end.i108.i:                                    ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i107.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %331 = ptrtoint ptr %dev.i107.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dev.i107.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %332, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 28, i32 noundef 1) #8
  br label %if.end7.i109.i

if.end7.i109.i:                                   ; preds = %do.end.i108.i, %if.end.i106.i.if.end7.i109.i_crit_edge
  %333 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %call.i104.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit110.i

sii9234_writeb.exit110thread-pre-split.i:         ; preds = %sii9234_writeb.exit100.i
  call void @__sanitizer_cov_trace_pc() #7
  %334 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %.pr388.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit110.i

sii9234_writeb.exit110.i:                         ; preds = %sii9234_writeb.exit110thread-pre-split.i, %if.end7.i109.i
  %335 = phi i32 [ %.pr388.i, %sii9234_writeb.exit110thread-pre-split.i ], [ %call.i104.i, %if.end7.i109.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool.not.i112.i = icmp eq i32 %335, 0
  br i1 %tobool.not.i112.i, label %if.end.i116.i, label %sii9234_writeb.exit120thread-pre-split.i

if.end.i116.i:                                    ; preds = %sii9234_writeb.exit110.i
  %336 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i114.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %337, i8 noundef zeroext 29, i8 noundef zeroext 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114.i)
  %cmp.i115.i = icmp slt i32 %call.i114.i, 0
  br i1 %cmp.i115.i, label %do.end.i118.i, label %if.end.i116.i.if.end7.i119.i_crit_edge

if.end.i116.i.if.end7.i119.i_crit_edge:           ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i119.i

do.end.i118.i:                                    ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i117.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %338 = ptrtoint ptr %dev.i117.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %dev.i117.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %339, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 29, i32 noundef 15) #8
  br label %if.end7.i119.i

if.end7.i119.i:                                   ; preds = %do.end.i118.i, %if.end.i116.i.if.end7.i119.i_crit_edge
  %340 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %call.i114.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit120.i

sii9234_writeb.exit120thread-pre-split.i:         ; preds = %sii9234_writeb.exit110.i
  call void @__sanitizer_cov_trace_pc() #7
  %341 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %.pr389.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit120.i

sii9234_writeb.exit120.i:                         ; preds = %sii9234_writeb.exit120thread-pre-split.i, %if.end7.i119.i
  %342 = phi i32 [ %.pr389.i, %sii9234_writeb.exit120thread-pre-split.i ], [ %call.i114.i, %if.end7.i119.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %342)
  %tobool.not.i122.i = icmp eq i32 %342, 0
  br i1 %tobool.not.i122.i, label %if.end.i126.i, label %sii9234_writeb.exit130thread-pre-split.i

if.end.i126.i:                                    ; preds = %sii9234_writeb.exit120.i
  %343 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i124.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %344, i8 noundef zeroext 68, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.i)
  %cmp.i125.i = icmp slt i32 %call.i124.i, 0
  br i1 %cmp.i125.i, label %do.end.i128.i, label %if.end.i126.i.if.end7.i129.i_crit_edge

if.end.i126.i.if.end7.i129.i_crit_edge:           ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i129.i

do.end.i128.i:                                    ; preds = %if.end.i126.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i127.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %345 = ptrtoint ptr %dev.i127.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %dev.i127.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %346, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 68, i32 noundef 2) #8
  br label %if.end7.i129.i

if.end7.i129.i:                                   ; preds = %do.end.i128.i, %if.end.i126.i.if.end7.i129.i_crit_edge
  %347 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %call.i124.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit130.i

sii9234_writeb.exit130thread-pre-split.i:         ; preds = %sii9234_writeb.exit120.i
  call void @__sanitizer_cov_trace_pc() #7
  %348 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %.pr390.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit130.i

sii9234_writeb.exit130.i:                         ; preds = %sii9234_writeb.exit130thread-pre-split.i, %if.end7.i129.i
  %349 = phi i32 [ %.pr390.i, %sii9234_writeb.exit130thread-pre-split.i ], [ %call.i124.i, %if.end7.i129.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %tobool.not.i132.i = icmp eq i32 %349, 0
  br i1 %tobool.not.i132.i, label %if.end.i136.i, label %sii9234_writeb.exit140thread-pre-split.i

if.end.i136.i:                                    ; preds = %sii9234_writeb.exit130.i
  %350 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i134.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %351, i8 noundef zeroext -128, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134.i)
  %cmp.i135.i = icmp slt i32 %call.i134.i, 0
  br i1 %cmp.i135.i, label %do.end.i138.i, label %if.end.i136.i.if.end7.i139.i_crit_edge

if.end.i136.i.if.end7.i139.i_crit_edge:           ; preds = %if.end.i136.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i139.i

do.end.i138.i:                                    ; preds = %if.end.i136.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i137.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %352 = ptrtoint ptr %dev.i137.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %dev.i137.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %353, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 128, i32 noundef 0) #8
  br label %if.end7.i139.i

if.end7.i139.i:                                   ; preds = %do.end.i138.i, %if.end.i136.i.if.end7.i139.i_crit_edge
  %354 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %call.i134.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit140.i

sii9234_writeb.exit140thread-pre-split.i:         ; preds = %sii9234_writeb.exit130.i
  call void @__sanitizer_cov_trace_pc() #7
  %355 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %.pr391.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit140.i

sii9234_writeb.exit140.i:                         ; preds = %sii9234_writeb.exit140thread-pre-split.i, %if.end7.i139.i
  %356 = phi i32 [ %.pr391.i, %sii9234_writeb.exit140thread-pre-split.i ], [ %call.i134.i, %if.end7.i139.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %tobool.not.i142.i = icmp eq i32 %356, 0
  br i1 %tobool.not.i142.i, label %if.end.i146.i, label %sii9234_writeb.exit150thread-pre-split.i

if.end.i146.i:                                    ; preds = %sii9234_writeb.exit140.i
  %357 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i144.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %358, i8 noundef zeroext -127, i8 noundef zeroext 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.i)
  %cmp.i145.i = icmp slt i32 %call.i144.i, 0
  br i1 %cmp.i145.i, label %do.end.i148.i, label %if.end.i146.i.if.end7.i149.i_crit_edge

if.end.i146.i.if.end7.i149.i_crit_edge:           ; preds = %if.end.i146.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i149.i

do.end.i148.i:                                    ; preds = %if.end.i146.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i147.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %359 = ptrtoint ptr %dev.i147.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %dev.i147.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %360, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 129, i32 noundef 17) #8
  br label %if.end7.i149.i

if.end7.i149.i:                                   ; preds = %do.end.i148.i, %if.end.i146.i.if.end7.i149.i_crit_edge
  %361 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %call.i144.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit150.i

sii9234_writeb.exit150thread-pre-split.i:         ; preds = %sii9234_writeb.exit140.i
  call void @__sanitizer_cov_trace_pc() #7
  %362 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %.pr392.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit150.i

sii9234_writeb.exit150.i:                         ; preds = %sii9234_writeb.exit150thread-pre-split.i, %if.end7.i149.i
  %363 = phi i32 [ %.pr392.i, %sii9234_writeb.exit150thread-pre-split.i ], [ %call.i144.i, %if.end7.i149.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %363)
  %tobool.not.i152.i = icmp eq i32 %363, 0
  br i1 %tobool.not.i152.i, label %if.end.i156.i, label %sii9234_writeb.exit160thread-pre-split.i

if.end.i156.i:                                    ; preds = %sii9234_writeb.exit150.i
  %364 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i154.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %365, i8 noundef zeroext -126, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154.i)
  %cmp.i155.i = icmp slt i32 %call.i154.i, 0
  br i1 %cmp.i155.i, label %do.end.i158.i, label %if.end.i156.i.if.end7.i159.i_crit_edge

if.end.i156.i.if.end7.i159.i_crit_edge:           ; preds = %if.end.i156.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i159.i

do.end.i158.i:                                    ; preds = %if.end.i156.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i157.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %366 = ptrtoint ptr %dev.i157.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %dev.i157.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %367, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 130, i32 noundef 2) #8
  br label %if.end7.i159.i

if.end7.i159.i:                                   ; preds = %do.end.i158.i, %if.end.i156.i.if.end7.i159.i_crit_edge
  %368 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %call.i154.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit160.i

sii9234_writeb.exit160thread-pre-split.i:         ; preds = %sii9234_writeb.exit150.i
  call void @__sanitizer_cov_trace_pc() #7
  %369 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %.pr393.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit160.i

sii9234_writeb.exit160.i:                         ; preds = %sii9234_writeb.exit160thread-pre-split.i, %if.end7.i159.i
  %370 = phi i32 [ %.pr393.i, %sii9234_writeb.exit160thread-pre-split.i ], [ %call.i154.i, %if.end7.i159.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool.not.i162.i = icmp eq i32 %370, 0
  br i1 %tobool.not.i162.i, label %if.end.i166.i, label %sii9234_writeb.exit170thread-pre-split.i

if.end.i166.i:                                    ; preds = %sii9234_writeb.exit160.i
  %371 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i164.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %372, i8 noundef zeroext -125, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164.i)
  %cmp.i165.i = icmp slt i32 %call.i164.i, 0
  br i1 %cmp.i165.i, label %do.end.i168.i, label %if.end.i166.i.if.end7.i169.i_crit_edge

if.end.i166.i.if.end7.i169.i_crit_edge:           ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i169.i

do.end.i168.i:                                    ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i167.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %373 = ptrtoint ptr %dev.i167.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %dev.i167.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %374, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 131, i32 noundef 1) #8
  br label %if.end7.i169.i

if.end7.i169.i:                                   ; preds = %do.end.i168.i, %if.end.i166.i.if.end7.i169.i_crit_edge
  %375 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %call.i164.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit170.i

sii9234_writeb.exit170thread-pre-split.i:         ; preds = %sii9234_writeb.exit160.i
  call void @__sanitizer_cov_trace_pc() #7
  %376 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %.pr394.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit170.i

sii9234_writeb.exit170.i:                         ; preds = %sii9234_writeb.exit170thread-pre-split.i, %if.end7.i169.i
  %377 = phi i32 [ %.pr394.i, %sii9234_writeb.exit170thread-pre-split.i ], [ %call.i164.i, %if.end7.i169.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %tobool.not.i172.i = icmp eq i32 %377, 0
  br i1 %tobool.not.i172.i, label %if.end.i176.i, label %sii9234_writeb.exit180thread-pre-split.i

if.end.i176.i:                                    ; preds = %sii9234_writeb.exit170.i
  %378 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i174.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %379, i8 noundef zeroext -124, i8 noundef zeroext 65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174.i)
  %cmp.i175.i = icmp slt i32 %call.i174.i, 0
  br i1 %cmp.i175.i, label %do.end.i178.i, label %if.end.i176.i.if.end7.i179.i_crit_edge

if.end.i176.i.if.end7.i179.i_crit_edge:           ; preds = %if.end.i176.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i179.i

do.end.i178.i:                                    ; preds = %if.end.i176.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i177.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %380 = ptrtoint ptr %dev.i177.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %dev.i177.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %381, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 132, i32 noundef 65) #8
  br label %if.end7.i179.i

if.end7.i179.i:                                   ; preds = %do.end.i178.i, %if.end.i176.i.if.end7.i179.i_crit_edge
  %382 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %call.i174.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit180.i

sii9234_writeb.exit180thread-pre-split.i:         ; preds = %sii9234_writeb.exit170.i
  call void @__sanitizer_cov_trace_pc() #7
  %383 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %.pr395.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit180.i

sii9234_writeb.exit180.i:                         ; preds = %sii9234_writeb.exit180thread-pre-split.i, %if.end7.i179.i
  %384 = phi i32 [ %.pr395.i, %sii9234_writeb.exit180thread-pre-split.i ], [ %call.i174.i, %if.end7.i179.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %384)
  %tobool.not.i182.i = icmp eq i32 %384, 0
  br i1 %tobool.not.i182.i, label %if.end.i186.i, label %sii9234_writeb.exit190thread-pre-split.i

if.end.i186.i:                                    ; preds = %sii9234_writeb.exit180.i
  %385 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i184.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %386, i8 noundef zeroext -123, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184.i)
  %cmp.i185.i = icmp slt i32 %call.i184.i, 0
  br i1 %cmp.i185.i, label %do.end.i188.i, label %if.end.i186.i.if.end7.i189.i_crit_edge

if.end.i186.i.if.end7.i189.i_crit_edge:           ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i189.i

do.end.i188.i:                                    ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i187.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %387 = ptrtoint ptr %dev.i187.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %dev.i187.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %388, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 133, i32 noundef 3) #8
  br label %if.end7.i189.i

if.end7.i189.i:                                   ; preds = %do.end.i188.i, %if.end.i186.i.if.end7.i189.i_crit_edge
  %389 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %call.i184.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit190.i

sii9234_writeb.exit190thread-pre-split.i:         ; preds = %sii9234_writeb.exit180.i
  call void @__sanitizer_cov_trace_pc() #7
  %390 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %.pr396.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit190.i

sii9234_writeb.exit190.i:                         ; preds = %sii9234_writeb.exit190thread-pre-split.i, %if.end7.i189.i
  %391 = phi i32 [ %.pr396.i, %sii9234_writeb.exit190thread-pre-split.i ], [ %call.i184.i, %if.end7.i189.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool.not.i192.i = icmp eq i32 %391, 0
  br i1 %tobool.not.i192.i, label %if.end.i196.i, label %sii9234_writeb.exit200thread-pre-split.i

if.end.i196.i:                                    ; preds = %sii9234_writeb.exit190.i
  %392 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i194.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %393, i8 noundef zeroext -121, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194.i)
  %cmp.i195.i = icmp slt i32 %call.i194.i, 0
  br i1 %cmp.i195.i, label %do.end.i198.i, label %if.end.i196.i.if.end7.i199.i_crit_edge

if.end.i196.i.if.end7.i199.i_crit_edge:           ; preds = %if.end.i196.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i199.i

do.end.i198.i:                                    ; preds = %if.end.i196.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i197.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %394 = ptrtoint ptr %dev.i197.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %dev.i197.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %395, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 135, i32 noundef 0) #8
  br label %if.end7.i199.i

if.end7.i199.i:                                   ; preds = %do.end.i198.i, %if.end.i196.i.if.end7.i199.i_crit_edge
  %396 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %call.i194.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit200.i

sii9234_writeb.exit200thread-pre-split.i:         ; preds = %sii9234_writeb.exit190.i
  call void @__sanitizer_cov_trace_pc() #7
  %397 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %.pr397.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit200.i

sii9234_writeb.exit200.i:                         ; preds = %sii9234_writeb.exit200thread-pre-split.i, %if.end7.i199.i
  %398 = phi i32 [ %.pr397.i, %sii9234_writeb.exit200thread-pre-split.i ], [ %call.i194.i, %if.end7.i199.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %398)
  %tobool.not.i202.i = icmp eq i32 %398, 0
  br i1 %tobool.not.i202.i, label %if.end.i206.i, label %sii9234_writeb.exit210thread-pre-split.i

if.end.i206.i:                                    ; preds = %sii9234_writeb.exit200.i
  %399 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i204.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %400, i8 noundef zeroext -120, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204.i)
  %cmp.i205.i = icmp slt i32 %call.i204.i, 0
  br i1 %cmp.i205.i, label %do.end.i208.i, label %if.end.i206.i.if.end7.i209.i_crit_edge

if.end.i206.i.if.end7.i209.i_crit_edge:           ; preds = %if.end.i206.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i209.i

do.end.i208.i:                                    ; preds = %if.end.i206.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i207.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %401 = ptrtoint ptr %dev.i207.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %dev.i207.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %402, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 136, i32 noundef 128) #8
  br label %if.end7.i209.i

if.end7.i209.i:                                   ; preds = %do.end.i208.i, %if.end.i206.i.if.end7.i209.i_crit_edge
  %403 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %call.i204.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit210.i

sii9234_writeb.exit210thread-pre-split.i:         ; preds = %sii9234_writeb.exit200.i
  call void @__sanitizer_cov_trace_pc() #7
  %404 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %.pr398.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit210.i

sii9234_writeb.exit210.i:                         ; preds = %sii9234_writeb.exit210thread-pre-split.i, %if.end7.i209.i
  %405 = phi i32 [ %.pr398.i, %sii9234_writeb.exit210thread-pre-split.i ], [ %call.i204.i, %if.end7.i209.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %405)
  %tobool.not.i212.i = icmp eq i32 %405, 0
  br i1 %tobool.not.i212.i, label %if.end.i216.i, label %sii9234_writeb.exit220thread-pre-split.i

if.end.i216.i:                                    ; preds = %sii9234_writeb.exit210.i
  %406 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i214.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %407, i8 noundef zeroext -119, i8 noundef zeroext 15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214.i)
  %cmp.i215.i = icmp slt i32 %call.i214.i, 0
  br i1 %cmp.i215.i, label %do.end.i218.i, label %if.end.i216.i.if.end7.i219.i_crit_edge

if.end.i216.i.if.end7.i219.i_crit_edge:           ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i219.i

do.end.i218.i:                                    ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i217.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %408 = ptrtoint ptr %dev.i217.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %dev.i217.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %409, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 137, i32 noundef 15) #8
  br label %if.end7.i219.i

if.end7.i219.i:                                   ; preds = %do.end.i218.i, %if.end.i216.i.if.end7.i219.i_crit_edge
  %410 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %call.i214.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit220.i

sii9234_writeb.exit220thread-pre-split.i:         ; preds = %sii9234_writeb.exit210.i
  call void @__sanitizer_cov_trace_pc() #7
  %411 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %.pr399.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit220.i

sii9234_writeb.exit220.i:                         ; preds = %sii9234_writeb.exit220thread-pre-split.i, %if.end7.i219.i
  %412 = phi i32 [ %.pr399.i, %sii9234_writeb.exit220thread-pre-split.i ], [ %call.i214.i, %if.end7.i219.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %tobool.not.i222.i = icmp eq i32 %412, 0
  br i1 %tobool.not.i222.i, label %if.end.i226.i, label %sii9234_writeb.exit230thread-pre-split.i

if.end.i226.i:                                    ; preds = %sii9234_writeb.exit220.i
  %413 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i224.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %414, i8 noundef zeroext -118, i8 noundef zeroext 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224.i)
  %cmp.i225.i = icmp slt i32 %call.i224.i, 0
  br i1 %cmp.i225.i, label %do.end.i228.i, label %if.end.i226.i.if.end7.i229.i_crit_edge

if.end.i226.i.if.end7.i229.i_crit_edge:           ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i229.i

do.end.i228.i:                                    ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i227.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %415 = ptrtoint ptr %dev.i227.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %dev.i227.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %416, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 138, i32 noundef 7) #8
  br label %if.end7.i229.i

if.end7.i229.i:                                   ; preds = %do.end.i228.i, %if.end.i226.i.if.end7.i229.i_crit_edge
  %417 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %call.i224.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit230.i

sii9234_writeb.exit230thread-pre-split.i:         ; preds = %sii9234_writeb.exit220.i
  call void @__sanitizer_cov_trace_pc() #7
  %418 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %.pr400.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit230.i

sii9234_writeb.exit230.i:                         ; preds = %sii9234_writeb.exit230thread-pre-split.i, %if.end7.i229.i
  %419 = phi i32 [ %.pr400.i, %sii9234_writeb.exit230thread-pre-split.i ], [ %call.i224.i, %if.end7.i229.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %419)
  %tobool.not.i232.i = icmp eq i32 %419, 0
  br i1 %tobool.not.i232.i, label %if.end.i236.i, label %sii9234_writeb.exit240thread-pre-split.i

if.end.i236.i:                                    ; preds = %sii9234_writeb.exit230.i
  %420 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i234.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %421, i8 noundef zeroext -117, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234.i)
  %cmp.i235.i = icmp slt i32 %call.i234.i, 0
  br i1 %cmp.i235.i, label %do.end.i238.i, label %if.end.i236.i.if.end7.i239.i_crit_edge

if.end.i236.i.if.end7.i239.i_crit_edge:           ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i239.i

do.end.i238.i:                                    ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i237.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %422 = ptrtoint ptr %dev.i237.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %dev.i237.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %423, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 139, i32 noundef 0) #8
  br label %if.end7.i239.i

if.end7.i239.i:                                   ; preds = %do.end.i238.i, %if.end.i236.i.if.end7.i239.i_crit_edge
  %424 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %call.i234.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit240.i

sii9234_writeb.exit240thread-pre-split.i:         ; preds = %sii9234_writeb.exit230.i
  call void @__sanitizer_cov_trace_pc() #7
  %425 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %.pr401.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit240.i

sii9234_writeb.exit240.i:                         ; preds = %sii9234_writeb.exit240thread-pre-split.i, %if.end7.i239.i
  %426 = phi i32 [ %.pr401.i, %sii9234_writeb.exit240thread-pre-split.i ], [ %call.i234.i, %if.end7.i239.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %426)
  %tobool.not.i242.i = icmp eq i32 %426, 0
  br i1 %tobool.not.i242.i, label %if.end.i246.i, label %sii9234_writeb.exit250thread-pre-split.i

if.end.i246.i:                                    ; preds = %sii9234_writeb.exit240.i
  %427 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i244.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %428, i8 noundef zeroext -116, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244.i)
  %cmp.i245.i = icmp slt i32 %call.i244.i, 0
  br i1 %cmp.i245.i, label %do.end.i248.i, label %if.end.i246.i.if.end7.i249.i_crit_edge

if.end.i246.i.if.end7.i249.i_crit_edge:           ; preds = %if.end.i246.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i249.i

do.end.i248.i:                                    ; preds = %if.end.i246.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i247.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %429 = ptrtoint ptr %dev.i247.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %dev.i247.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %430, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 140, i32 noundef 0) #8
  br label %if.end7.i249.i

if.end7.i249.i:                                   ; preds = %do.end.i248.i, %if.end.i246.i.if.end7.i249.i_crit_edge
  %431 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 %call.i244.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit250.i

sii9234_writeb.exit250thread-pre-split.i:         ; preds = %sii9234_writeb.exit240.i
  call void @__sanitizer_cov_trace_pc() #7
  %432 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %.pr402.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit250.i

sii9234_writeb.exit250.i:                         ; preds = %sii9234_writeb.exit250thread-pre-split.i, %if.end7.i249.i
  %433 = phi i32 [ %.pr402.i, %sii9234_writeb.exit250thread-pre-split.i ], [ %call.i244.i, %if.end7.i249.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %433)
  %tobool.not.i252.i = icmp eq i32 %433, 0
  br i1 %tobool.not.i252.i, label %if.end.i256.i, label %sii9234_writeb.exit260thread-pre-split.i

if.end.i256.i:                                    ; preds = %sii9234_writeb.exit250.i
  %434 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i254.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %435, i8 noundef zeroext -115, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254.i)
  %cmp.i255.i = icmp slt i32 %call.i254.i, 0
  br i1 %cmp.i255.i, label %do.end.i258.i, label %if.end.i256.i.if.end7.i259.i_crit_edge

if.end.i256.i.if.end7.i259.i_crit_edge:           ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i259.i

do.end.i258.i:                                    ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i257.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %436 = ptrtoint ptr %dev.i257.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dev.i257.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %437, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 141, i32 noundef 16) #8
  br label %if.end7.i259.i

if.end7.i259.i:                                   ; preds = %do.end.i258.i, %if.end.i256.i.if.end7.i259.i_crit_edge
  %438 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 %call.i254.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit260.i

sii9234_writeb.exit260thread-pre-split.i:         ; preds = %sii9234_writeb.exit250.i
  call void @__sanitizer_cov_trace_pc() #7
  %439 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %.pr403.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit260.i

sii9234_writeb.exit260.i:                         ; preds = %sii9234_writeb.exit260thread-pre-split.i, %if.end7.i259.i
  %440 = phi i32 [ %.pr403.i, %sii9234_writeb.exit260thread-pre-split.i ], [ %call.i254.i, %if.end7.i259.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %440)
  %tobool.not.i262.i = icmp eq i32 %440, 0
  br i1 %tobool.not.i262.i, label %if.end.i266.i, label %sii9234_writeb.exit270thread-pre-split.i

if.end.i266.i:                                    ; preds = %sii9234_writeb.exit260.i
  %441 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i264.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %442, i8 noundef zeroext -114, i8 noundef zeroext 51) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264.i)
  %cmp.i265.i = icmp slt i32 %call.i264.i, 0
  br i1 %cmp.i265.i, label %do.end.i268.i, label %if.end.i266.i.if.end7.i269.i_crit_edge

if.end.i266.i.if.end7.i269.i_crit_edge:           ; preds = %if.end.i266.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i269.i

do.end.i268.i:                                    ; preds = %if.end.i266.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i267.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %443 = ptrtoint ptr %dev.i267.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %dev.i267.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %444, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 142, i32 noundef 51) #8
  br label %if.end7.i269.i

if.end7.i269.i:                                   ; preds = %do.end.i268.i, %if.end.i266.i.if.end7.i269.i_crit_edge
  %445 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %call.i264.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit270.i

sii9234_writeb.exit270thread-pre-split.i:         ; preds = %sii9234_writeb.exit260.i
  call void @__sanitizer_cov_trace_pc() #7
  %446 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %.pr404.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit270.i

sii9234_writeb.exit270.i:                         ; preds = %sii9234_writeb.exit270thread-pre-split.i, %if.end7.i269.i
  %447 = phi i32 [ %.pr404.i, %sii9234_writeb.exit270thread-pre-split.i ], [ %call.i264.i, %if.end7.i269.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %447)
  %tobool.not.i272.i = icmp eq i32 %447, 0
  br i1 %tobool.not.i272.i, label %if.end.i276.i, label %sii9234_writeb.exit280thread-pre-split.i

if.end.i276.i:                                    ; preds = %sii9234_writeb.exit270.i
  %448 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i274.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %449, i8 noundef zeroext -113, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274.i)
  %cmp.i275.i = icmp slt i32 %call.i274.i, 0
  br i1 %cmp.i275.i, label %do.end.i278.i, label %if.end.i276.i.if.end7.i279.i_crit_edge

if.end.i276.i.if.end7.i279.i_crit_edge:           ; preds = %if.end.i276.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i279.i

do.end.i278.i:                                    ; preds = %if.end.i276.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i277.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %450 = ptrtoint ptr %dev.i277.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %dev.i277.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %451, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 143, i32 noundef 0) #8
  br label %if.end7.i279.i

if.end7.i279.i:                                   ; preds = %do.end.i278.i, %if.end.i276.i.if.end7.i279.i_crit_edge
  %452 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %call.i274.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit280.i

sii9234_writeb.exit280thread-pre-split.i:         ; preds = %sii9234_writeb.exit270.i
  call void @__sanitizer_cov_trace_pc() #7
  %453 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %.pr405.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit280.i

sii9234_writeb.exit280.i:                         ; preds = %sii9234_writeb.exit280thread-pre-split.i, %if.end7.i279.i
  %454 = phi i32 [ %.pr405.i, %sii9234_writeb.exit280thread-pre-split.i ], [ %call.i274.i, %if.end7.i279.i ]
  %455 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %454)
  %tobool.not.i283.i = icmp eq i32 %454, 0
  br i1 %tobool.not.i283.i, label %if.end.i286.i, label %sii9234_writeb.exit280.i.sii9234_writebm.exit.i308_crit_edge

sii9234_writeb.exit280.i.sii9234_writebm.exit.i308_crit_edge: ; preds = %sii9234_writeb.exit280.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit.i308

if.end.i286.i:                                    ; preds = %sii9234_writeb.exit280.i
  %call.i284.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %456, i8 noundef zeroext 49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284.i)
  %cmp.i285.i = icmp slt i32 %call.i284.i, 0
  br i1 %cmp.i285.i, label %if.end.i286.i.sii9234_writebm.exit.thread.i_crit_edge, label %if.end7.i287.i

if.end.i286.i.sii9234_writebm.exit.thread.i_crit_edge: ; preds = %if.end.i286.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit.thread.i

if.end7.i287.i:                                   ; preds = %if.end.i286.i
  %call8.i.i298 = tail call i32 @i2c_smbus_read_byte(ptr noundef %456) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i298)
  %cmp9.i.i299 = icmp slt i32 %call8.i.i298, 0
  br i1 %cmp9.i.i299, label %if.end7.i287.i.sii9234_writebm.exit.thread.i_crit_edge, label %if.end18.i.i304

if.end7.i287.i.sii9234_writebm.exit.thread.i_crit_edge: ; preds = %if.end7.i287.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit.thread.i

if.end18.i.i304:                                  ; preds = %if.end7.i287.i
  %or.i.i300 = or i32 %call8.i.i298, 12
  %conv21.i.i301 = trunc i32 %or.i.i300 to i8
  %call22.i.i302 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %456, i8 noundef zeroext 49, i8 noundef zeroext %conv21.i.i301) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i302)
  %cmp23.i.i303 = icmp slt i32 %call22.i.i302, 0
  br i1 %cmp23.i.i303, label %if.end18.i.i304.sii9234_writebm.exit.thread.i_crit_edge, label %if.end18.i.i304.sii9234_writebm.exit.i308_crit_edge

if.end18.i.i304.sii9234_writebm.exit.i308_crit_edge: ; preds = %if.end18.i.i304
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit.i308

if.end18.i.i304.sii9234_writebm.exit.thread.i_crit_edge: ; preds = %if.end18.i.i304
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit.thread.i

sii9234_writebm.exit.thread.i:                    ; preds = %if.end18.i.i304.sii9234_writebm.exit.thread.i_crit_edge, %if.end7.i287.i.sii9234_writebm.exit.thread.i_crit_edge, %if.end.i286.i.sii9234_writebm.exit.thread.i_crit_edge
  %or.sink.i.i305 = phi i32 [ 12, %if.end.i286.i.sii9234_writebm.exit.thread.i_crit_edge ], [ 12, %if.end7.i287.i.sii9234_writebm.exit.thread.i_crit_edge ], [ %or.i.i300, %if.end18.i.i304.sii9234_writebm.exit.thread.i_crit_edge ]
  %call22.sink.i.i306 = phi i32 [ %call.i284.i, %if.end.i286.i.sii9234_writebm.exit.thread.i_crit_edge ], [ %call8.i.i298, %if.end7.i287.i.sii9234_writebm.exit.thread.i_crit_edge ], [ %call22.i.i302, %if.end18.i.i304.sii9234_writebm.exit.thread.i_crit_edge ]
  %dev29.i.i307 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %457 = ptrtoint ptr %dev29.i.i307 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %dev29.i.i307, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %458, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.25, i32 noundef 49, i32 noundef %or.sink.i.i305) #8
  br label %sii9234_cbus_init.exit

sii9234_writebm.exit.i308:                        ; preds = %if.end18.i.i304.sii9234_writebm.exit.i308_crit_edge, %sii9234_writeb.exit280.i.sii9234_writebm.exit.i308_crit_edge
  %459 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %.pr406.i = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr406.i)
  %tobool.not.i289.i = icmp eq i32 %.pr406.i, 0
  br i1 %tobool.not.i289.i, label %if.end.i293.i, label %sii9234_writebm.exit.i308.sii9234_cbus_init.exit_crit_edge

sii9234_writebm.exit.i308.sii9234_cbus_init.exit_crit_edge: ; preds = %sii9234_writebm.exit.i308
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_cbus_init.exit

if.end.i293.i:                                    ; preds = %sii9234_writebm.exit.i308
  %460 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i291.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %461, i8 noundef zeroext 48, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291.i)
  %cmp.i292.i = icmp slt i32 %call.i291.i, 0
  br i1 %cmp.i292.i, label %sii9234_writeb.exit297.thread409.i, label %sii9234_writeb.exit297.i

sii9234_writeb.exit297.thread409.i:               ; preds = %if.end.i293.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i294.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %462 = ptrtoint ptr %dev.i294.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %dev.i294.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %463, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 48, i32 noundef 1) #8
  br label %sii9234_writebm.exit357.thread.sink.split.i

sii9234_writeb.exit297.i:                         ; preds = %if.end.i293.i
  %464 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 %call.i291.i, ptr %i2c_error.i, align 4
  %465 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291.i)
  %tobool.not.i300.i = icmp eq i32 %call.i291.i, 0
  br i1 %tobool.not.i300.i, label %if.end.i303.i, label %sii9234_writeb.exit297.i.sii9234_writebm.exit357.thread.i_crit_edge

sii9234_writeb.exit297.i.sii9234_writebm.exit357.thread.i_crit_edge: ; preds = %sii9234_writeb.exit297.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit357.thread.i

if.end.i303.i:                                    ; preds = %sii9234_writeb.exit297.i
  %call.i301.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %466, i8 noundef zeroext 60) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301.i)
  %cmp.i302.i = icmp slt i32 %call.i301.i, 0
  br i1 %cmp.i302.i, label %if.end.i303.i.cleanup.sink.split.i316.i_crit_edge, label %if.end7.i306.i

if.end.i303.i.cleanup.sink.split.i316.i_crit_edge: ; preds = %if.end.i303.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i316.i

if.end7.i306.i:                                   ; preds = %if.end.i303.i
  %call8.i304.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %466) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i304.i)
  %cmp9.i305.i = icmp slt i32 %call8.i304.i, 0
  br i1 %cmp9.i305.i, label %if.end7.i306.i.cleanup.sink.split.i316.i_crit_edge, label %if.end18.i312.i

if.end7.i306.i.cleanup.sink.split.i316.i_crit_edge: ; preds = %if.end7.i306.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i316.i

if.end18.i312.i:                                  ; preds = %if.end7.i306.i
  %and19.i307.i = and i32 %call8.i304.i, -57
  %or.i308.i = or i32 %and19.i307.i, 48
  %conv21.i309.i = trunc i32 %or.i308.i to i8
  %call22.i310.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %466, i8 noundef zeroext 60, i8 noundef zeroext %conv21.i309.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i310.i)
  %cmp23.i311.i = icmp slt i32 %call22.i310.i, 0
  br i1 %cmp23.i311.i, label %if.end18.i312.i.cleanup.sink.split.i316.i_crit_edge, label %sii9234_writebm.exit317.i

if.end18.i312.i.cleanup.sink.split.i316.i_crit_edge: ; preds = %if.end18.i312.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i316.i

cleanup.sink.split.i316.i:                        ; preds = %if.end18.i312.i.cleanup.sink.split.i316.i_crit_edge, %if.end7.i306.i.cleanup.sink.split.i316.i_crit_edge, %if.end.i303.i.cleanup.sink.split.i316.i_crit_edge
  %or.sink.i313.i = phi i32 [ 48, %if.end.i303.i.cleanup.sink.split.i316.i_crit_edge ], [ 48, %if.end7.i306.i.cleanup.sink.split.i316.i_crit_edge ], [ %or.i308.i, %if.end18.i312.i.cleanup.sink.split.i316.i_crit_edge ]
  %call22.sink.i314.i = phi i32 [ %call.i301.i, %if.end.i303.i.cleanup.sink.split.i316.i_crit_edge ], [ %call8.i304.i, %if.end7.i306.i.cleanup.sink.split.i316.i_crit_edge ], [ %call22.i310.i, %if.end18.i312.i.cleanup.sink.split.i316.i_crit_edge ]
  %dev29.i315.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %467 = ptrtoint ptr %dev29.i315.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %dev29.i315.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %468, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.25, i32 noundef 60, i32 noundef %or.sink.i313.i) #8
  br label %sii9234_writebm.exit357.thread.sink.split.i

sii9234_writebm.exit317.i:                        ; preds = %if.end18.i312.i
  %469 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %.pr411.pr.i = load i32, ptr %i2c_error.i, align 4
  %470 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr411.pr.i)
  %tobool.not.i320.i = icmp eq i32 %.pr411.pr.i, 0
  br i1 %tobool.not.i320.i, label %if.end.i323.i, label %sii9234_writebm.exit317.i.sii9234_cbus_init.exit_crit_edge

sii9234_writebm.exit317.i.sii9234_cbus_init.exit_crit_edge: ; preds = %sii9234_writebm.exit317.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_cbus_init.exit

if.end.i323.i:                                    ; preds = %sii9234_writebm.exit317.i
  %call.i321.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %471, i8 noundef zeroext 34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321.i)
  %cmp.i322.i = icmp slt i32 %call.i321.i, 0
  br i1 %cmp.i322.i, label %if.end.i323.i.cleanup.sink.split.i336.i_crit_edge, label %if.end7.i326.i

if.end.i323.i.cleanup.sink.split.i336.i_crit_edge: ; preds = %if.end.i323.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i336.i

if.end7.i326.i:                                   ; preds = %if.end.i323.i
  %call8.i324.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %471) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i324.i)
  %cmp9.i325.i = icmp slt i32 %call8.i324.i, 0
  br i1 %cmp9.i325.i, label %if.end7.i326.i.cleanup.sink.split.i336.i_crit_edge, label %if.end18.i332.i

if.end7.i326.i.cleanup.sink.split.i336.i_crit_edge: ; preds = %if.end7.i326.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i336.i

if.end18.i332.i:                                  ; preds = %if.end7.i326.i
  %and19.i327.i = and i32 %call8.i324.i, -16
  %or.i328.i = or i32 %and19.i327.i, 13
  %conv21.i329.i = trunc i32 %or.i328.i to i8
  %call22.i330.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %471, i8 noundef zeroext 34, i8 noundef zeroext %conv21.i329.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i330.i)
  %cmp23.i331.i = icmp slt i32 %call22.i330.i, 0
  br i1 %cmp23.i331.i, label %if.end18.i332.i.cleanup.sink.split.i336.i_crit_edge, label %sii9234_writebm.exit337.i

if.end18.i332.i.cleanup.sink.split.i336.i_crit_edge: ; preds = %if.end18.i332.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i336.i

cleanup.sink.split.i336.i:                        ; preds = %if.end18.i332.i.cleanup.sink.split.i336.i_crit_edge, %if.end7.i326.i.cleanup.sink.split.i336.i_crit_edge, %if.end.i323.i.cleanup.sink.split.i336.i_crit_edge
  %or.sink.i333.i = phi i32 [ 13, %if.end.i323.i.cleanup.sink.split.i336.i_crit_edge ], [ 13, %if.end7.i326.i.cleanup.sink.split.i336.i_crit_edge ], [ %or.i328.i, %if.end18.i332.i.cleanup.sink.split.i336.i_crit_edge ]
  %call22.sink.i334.i = phi i32 [ %call.i321.i, %if.end.i323.i.cleanup.sink.split.i336.i_crit_edge ], [ %call8.i324.i, %if.end7.i326.i.cleanup.sink.split.i336.i_crit_edge ], [ %call22.i330.i, %if.end18.i332.i.cleanup.sink.split.i336.i_crit_edge ]
  %dev29.i335.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %472 = ptrtoint ptr %dev29.i335.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %dev29.i335.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %473, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.25, i32 noundef 34, i32 noundef %or.sink.i333.i) #8
  br label %sii9234_cbus_init.exit

sii9234_writebm.exit337.i:                        ; preds = %if.end18.i332.i
  %474 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %.pr413.pr.i = load i32, ptr %i2c_error.i, align 4
  %475 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr413.pr.i)
  %tobool.not.i340.i = icmp eq i32 %.pr413.pr.i, 0
  br i1 %tobool.not.i340.i, label %if.end.i343.i, label %sii9234_writebm.exit337.i.sii9234_writebm.exit357.thread.i_crit_edge

sii9234_writebm.exit337.i.sii9234_writebm.exit357.thread.i_crit_edge: ; preds = %sii9234_writebm.exit337.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit357.thread.i

if.end.i343.i:                                    ; preds = %sii9234_writebm.exit337.i
  %call.i341.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %476, i8 noundef zeroext 46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i341.i)
  %cmp.i342.i = icmp slt i32 %call.i341.i, 0
  br i1 %cmp.i342.i, label %if.end.i343.i.cleanup.sink.split.i356.i_crit_edge, label %if.end7.i346.i

if.end.i343.i.cleanup.sink.split.i356.i_crit_edge: ; preds = %if.end.i343.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i356.i

if.end7.i346.i:                                   ; preds = %if.end.i343.i
  %call8.i344.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %476) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i344.i)
  %cmp9.i345.i = icmp slt i32 %call8.i344.i, 0
  br i1 %cmp9.i345.i, label %if.end7.i346.i.cleanup.sink.split.i356.i_crit_edge, label %if.end18.i352.i

if.end7.i346.i.cleanup.sink.split.i356.i_crit_edge: ; preds = %if.end7.i346.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i356.i

if.end18.i352.i:                                  ; preds = %if.end7.i346.i
  %or.i348.i = or i32 %call8.i344.i, 21
  %conv21.i349.i = trunc i32 %or.i348.i to i8
  %call22.i350.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %476, i8 noundef zeroext 46, i8 noundef zeroext %conv21.i349.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i350.i)
  %cmp23.i351.i = icmp slt i32 %call22.i350.i, 0
  br i1 %cmp23.i351.i, label %if.end18.i352.i.cleanup.sink.split.i356.i_crit_edge, label %sii9234_writebm.exit357.i

if.end18.i352.i.cleanup.sink.split.i356.i_crit_edge: ; preds = %if.end18.i352.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i356.i

cleanup.sink.split.i356.i:                        ; preds = %if.end18.i352.i.cleanup.sink.split.i356.i_crit_edge, %if.end7.i346.i.cleanup.sink.split.i356.i_crit_edge, %if.end.i343.i.cleanup.sink.split.i356.i_crit_edge
  %or.sink.i353.i = phi i32 [ 21, %if.end.i343.i.cleanup.sink.split.i356.i_crit_edge ], [ 21, %if.end7.i346.i.cleanup.sink.split.i356.i_crit_edge ], [ %or.i348.i, %if.end18.i352.i.cleanup.sink.split.i356.i_crit_edge ]
  %call22.sink.i354.i = phi i32 [ %call.i341.i, %if.end.i343.i.cleanup.sink.split.i356.i_crit_edge ], [ %call8.i344.i, %if.end7.i346.i.cleanup.sink.split.i356.i_crit_edge ], [ %call22.i350.i, %if.end18.i352.i.cleanup.sink.split.i356.i_crit_edge ]
  %dev29.i355.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %477 = ptrtoint ptr %dev29.i355.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %dev29.i355.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %478, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.25, i32 noundef 46, i32 noundef %or.sink.i353.i) #8
  br label %sii9234_writebm.exit357.thread.sink.split.i

sii9234_writebm.exit357.thread.sink.split.i:      ; preds = %cleanup.sink.split.i356.i, %cleanup.sink.split.i316.i, %sii9234_writeb.exit297.thread409.i
  %call.i291.sink.i = phi i32 [ %call.i291.i, %sii9234_writeb.exit297.thread409.i ], [ %call22.sink.i314.i, %cleanup.sink.split.i316.i ], [ %call22.sink.i354.i, %cleanup.sink.split.i356.i ]
  %479 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %call.i291.sink.i, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit357.thread.i

sii9234_writebm.exit357.thread.i:                 ; preds = %sii9234_writebm.exit357.thread.sink.split.i, %sii9234_writebm.exit337.i.sii9234_writebm.exit357.thread.i_crit_edge, %sii9234_writeb.exit297.i.sii9234_writebm.exit357.thread.i_crit_edge
  %480 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %.pr417.i = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit367.i

sii9234_writebm.exit357.i:                        ; preds = %if.end18.i352.i
  %481 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %.pr415.pr.pr.i = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr415.pr.pr.i)
  %tobool.not.i359.i = icmp eq i32 %.pr415.pr.pr.i, 0
  br i1 %tobool.not.i359.i, label %if.end.i363.i, label %sii9234_writebm.exit357.i.sii9234_cbus_init.exit_crit_edge

sii9234_writebm.exit357.i.sii9234_cbus_init.exit_crit_edge: ; preds = %sii9234_writebm.exit357.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_cbus_init.exit

if.end.i363.i:                                    ; preds = %sii9234_writebm.exit357.i
  %482 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i361.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %483, i8 noundef zeroext 9, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i361.i)
  %cmp.i362.i = icmp slt i32 %call.i361.i, 0
  br i1 %cmp.i362.i, label %do.end.i365.i, label %if.end.i363.i.if.end7.i366.i_crit_edge

if.end.i363.i.if.end7.i366.i_crit_edge:           ; preds = %if.end.i363.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i366.i

do.end.i365.i:                                    ; preds = %if.end.i363.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i364.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %484 = ptrtoint ptr %dev.i364.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %dev.i364.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %485, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 9, i32 noundef 0) #8
  br label %if.end7.i366.i

if.end7.i366.i:                                   ; preds = %do.end.i365.i, %if.end.i363.i.if.end7.i366.i_crit_edge
  %486 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 %call.i361.i, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit367.i

sii9234_writeb.exit367.i:                         ; preds = %if.end7.i366.i, %sii9234_writebm.exit357.thread.i
  %487 = phi i32 [ %.pr417.i, %sii9234_writebm.exit357.thread.i ], [ %call.i361.i, %if.end7.i366.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %487)
  %tobool.not.i369.i = icmp eq i32 %487, 0
  br i1 %tobool.not.i369.i, label %if.end.i373.i, label %sii9234_cbus_init.exitthread-pre-split

if.end.i373.i:                                    ; preds = %sii9234_writeb.exit367.i
  %488 = ptrtoint ptr %arrayidx.i433465469473477481485489 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %arrayidx.i433465469473477481485489, align 4
  %call.i371.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %489, i8 noundef zeroext 31, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i371.i)
  %cmp.i372.i = icmp slt i32 %call.i371.i, 0
  br i1 %cmp.i372.i, label %do.end.i375.i, label %if.end.i373.i.sii9234_cbus_init.exit_crit_edge

if.end.i373.i.sii9234_cbus_init.exit_crit_edge:   ; preds = %if.end.i373.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_cbus_init.exit

do.end.i375.i:                                    ; preds = %if.end.i373.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i374.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %490 = ptrtoint ptr %dev.i374.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %dev.i374.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %491, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.25, i32 noundef 31, i32 noundef 0) #8
  br label %sii9234_cbus_init.exit

sii9234_cbus_init.exitthread-pre-split:           ; preds = %sii9234_writeb.exit367.i
  call void @__sanitizer_cov_trace_pc() #7
  %492 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %.pr493 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_cbus_init.exit

sii9234_cbus_init.exit:                           ; preds = %sii9234_cbus_init.exitthread-pre-split, %do.end.i375.i, %if.end.i373.i.sii9234_cbus_init.exit_crit_edge, %sii9234_writebm.exit357.i.sii9234_cbus_init.exit_crit_edge, %cleanup.sink.split.i336.i, %sii9234_writebm.exit317.i.sii9234_cbus_init.exit_crit_edge, %sii9234_writebm.exit.i308.sii9234_cbus_init.exit_crit_edge, %sii9234_writebm.exit.thread.i
  %493 = phi i32 [ %.pr493, %sii9234_cbus_init.exitthread-pre-split ], [ %.pr406.i, %sii9234_writebm.exit.i308.sii9234_cbus_init.exit_crit_edge ], [ %.pr411.pr.i, %sii9234_writebm.exit317.i.sii9234_cbus_init.exit_crit_edge ], [ %.pr415.pr.pr.i, %sii9234_writebm.exit357.i.sii9234_cbus_init.exit_crit_edge ], [ %call22.sink.i.i306, %sii9234_writebm.exit.thread.i ], [ %call22.sink.i334.i, %cleanup.sink.split.i336.i ], [ %call.i371.i, %do.end.i375.i ], [ %call.i371.i, %if.end.i373.i.sii9234_cbus_init.exit_crit_edge ]
  %494 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 0, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %493)
  %cmp33 = icmp slt i32 %493, 0
  br i1 %cmp33, label %sii9234_cbus_init.exit.cleanup_crit_edge, label %if.end.i313

sii9234_cbus_init.exit.cleanup_crit_edge:         ; preds = %sii9234_cbus_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i313:                                      ; preds = %sii9234_cbus_init.exit
  %495 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %ctx, align 4
  %call.i311 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %496, i8 noundef zeroext 5, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311)
  %cmp.i312 = icmp slt i32 %call.i311, 0
  br i1 %cmp.i312, label %sii9234_writeb.exit317.thread, label %sii9234_writeb.exit317

sii9234_writeb.exit317.thread:                    ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i314 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %497 = ptrtoint ptr %dev.i314 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %dev.i314, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %498, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 5, i32 noundef 4) #8
  %499 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 %call.i311, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit326.thread

sii9234_writeb.exit317:                           ; preds = %if.end.i313
  %500 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 %call.i311, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311)
  %tobool.not.i319 = icmp eq i32 %call.i311, 0
  br i1 %tobool.not.i319, label %if.end.i322, label %sii9234_writeb.exit317.sii9234_writeb.exit326.thread_crit_edge

sii9234_writeb.exit317.sii9234_writeb.exit326.thread_crit_edge: ; preds = %sii9234_writeb.exit317
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit326.thread

if.end.i322:                                      ; preds = %sii9234_writeb.exit317
  %501 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %ctx, align 4
  %call.i320 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %502, i8 noundef zeroext 13, i8 noundef zeroext 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320)
  %cmp.i321 = icmp slt i32 %call.i320, 0
  br i1 %cmp.i321, label %sii9234_writeb.exit326.thread496, label %sii9234_writeb.exit326

sii9234_writeb.exit326.thread496:                 ; preds = %if.end.i322
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i323 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %503 = ptrtoint ptr %dev.i323 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %dev.i323, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %504, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 13, i32 noundef 28) #8
  br label %sii9234_writeb.exit344.sink.split

sii9234_writeb.exit326.thread:                    ; preds = %sii9234_writeb.exit317.sii9234_writeb.exit326.thread_crit_edge, %sii9234_writeb.exit317.thread
  %505 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %.pr498 = load i32, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit335

sii9234_writeb.exit326:                           ; preds = %if.end.i322
  %506 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 %call.i320, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320)
  %tobool.not.i328 = icmp eq i32 %call.i320, 0
  br i1 %tobool.not.i328, label %if.end.i331, label %sii9234_writeb.exit326.sii9234_writeb.exit344_crit_edge

sii9234_writeb.exit326.sii9234_writeb.exit344_crit_edge: ; preds = %sii9234_writeb.exit326
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit344

if.end.i331:                                      ; preds = %sii9234_writeb.exit326
  %507 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %ctx, align 4
  %call.i329 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %508, i8 noundef zeroext 120, i8 noundef zeroext 92) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %cmp.i330 = icmp slt i32 %call.i329, 0
  br i1 %cmp.i330, label %do.end.i333, label %if.end.i331.if.end7.i334_crit_edge

if.end.i331.if.end7.i334_crit_edge:               ; preds = %if.end.i331
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i334

do.end.i333:                                      ; preds = %if.end.i331
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i332 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %509 = ptrtoint ptr %dev.i332 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %dev.i332, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %510, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 120, i32 noundef 92) #8
  br label %if.end7.i334

if.end7.i334:                                     ; preds = %do.end.i333, %if.end.i331.if.end7.i334_crit_edge
  %511 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 %call.i329, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit335

sii9234_writeb.exit335:                           ; preds = %if.end7.i334, %sii9234_writeb.exit326.thread
  %512 = phi i32 [ %.pr498, %sii9234_writeb.exit326.thread ], [ %call.i329, %if.end7.i334 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %512)
  %tobool.not.i337 = icmp eq i32 %512, 0
  br i1 %tobool.not.i337, label %if.end.i340, label %sii9234_writeb.exit335.sii9234_writeb.exit344_crit_edge

sii9234_writeb.exit335.sii9234_writeb.exit344_crit_edge: ; preds = %sii9234_writeb.exit335
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit344

if.end.i340:                                      ; preds = %sii9234_writeb.exit335
  %513 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %ctx, align 4
  %call.i338 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %514, i8 noundef zeroext 117, i8 noundef zeroext 96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %cmp.i339 = icmp slt i32 %call.i338, 0
  br i1 %cmp.i339, label %do.end.i342, label %if.end.i340.sii9234_writeb.exit344.sink.split_crit_edge

if.end.i340.sii9234_writeb.exit344.sink.split_crit_edge: ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writeb.exit344.sink.split

do.end.i342:                                      ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i341 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %515 = ptrtoint ptr %dev.i341 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %dev.i341, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %516, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.22, i32 noundef 117, i32 noundef 96) #8
  br label %sii9234_writeb.exit344.sink.split

sii9234_writeb.exit344.sink.split:                ; preds = %do.end.i342, %if.end.i340.sii9234_writeb.exit344.sink.split_crit_edge, %sii9234_writeb.exit326.thread496
  %call.i320.sink = phi i32 [ %call.i320, %sii9234_writeb.exit326.thread496 ], [ %call.i338, %do.end.i342 ], [ %call.i338, %if.end.i340.sii9234_writeb.exit344.sink.split_crit_edge ]
  %517 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 %call.i320.sink, ptr %i2c_error.i, align 4
  br label %sii9234_writeb.exit344

sii9234_writeb.exit344:                           ; preds = %sii9234_writeb.exit344.sink.split, %sii9234_writeb.exit335.sii9234_writeb.exit344_crit_edge, %sii9234_writeb.exit326.sii9234_writeb.exit344_crit_edge
  tail call fastcc void @force_usb_id_switch_open(ptr noundef %ctx)
  %518 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %ctx, align 4
  %520 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %521)
  %tobool.not.i346 = icmp eq i32 %521, 0
  br i1 %tobool.not.i346, label %if.end.i349, label %sii9234_writeb.exit344.sii9234_writebm.exit380_crit_edge

sii9234_writeb.exit344.sii9234_writebm.exit380_crit_edge: ; preds = %sii9234_writeb.exit344
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit380

if.end.i349:                                      ; preds = %sii9234_writeb.exit344
  %call.i347 = tail call i32 @i2c_smbus_write_byte(ptr noundef %519, i8 noundef zeroext -109) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %cmp.i348 = icmp slt i32 %call.i347, 0
  br i1 %cmp.i348, label %if.end.i349.cleanup.sink.split.i361_crit_edge, label %if.end7.i352

if.end.i349.cleanup.sink.split.i361_crit_edge:    ; preds = %if.end.i349
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i361

if.end7.i352:                                     ; preds = %if.end.i349
  %call8.i350 = tail call i32 @i2c_smbus_read_byte(ptr noundef %519) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i350)
  %cmp9.i351 = icmp slt i32 %call8.i350, 0
  br i1 %cmp9.i351, label %if.end7.i352.cleanup.sink.split.i361_crit_edge, label %if.end18.i357

if.end7.i352.cleanup.sink.split.i361_crit_edge:   ; preds = %if.end7.i352
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i361

if.end18.i357:                                    ; preds = %if.end7.i352
  %and19.i353 = and i32 %call8.i350, -241
  %conv21.i354 = trunc i32 %and19.i353 to i8
  %call22.i355 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %519, i8 noundef zeroext -109, i8 noundef zeroext %conv21.i354) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i355)
  %cmp23.i356 = icmp slt i32 %call22.i355, 0
  br i1 %cmp23.i356, label %if.end18.i357.cleanup.sink.split.i361_crit_edge, label %sii9234_writebm.exit362

if.end18.i357.cleanup.sink.split.i361_crit_edge:  ; preds = %if.end18.i357
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i361

cleanup.sink.split.i361:                          ; preds = %if.end18.i357.cleanup.sink.split.i361_crit_edge, %if.end7.i352.cleanup.sink.split.i361_crit_edge, %if.end.i349.cleanup.sink.split.i361_crit_edge
  %or.sink.i358 = phi i32 [ 0, %if.end.i349.cleanup.sink.split.i361_crit_edge ], [ 0, %if.end7.i352.cleanup.sink.split.i361_crit_edge ], [ %and19.i353, %if.end18.i357.cleanup.sink.split.i361_crit_edge ]
  %call22.sink.i359 = phi i32 [ %call.i347, %if.end.i349.cleanup.sink.split.i361_crit_edge ], [ %call8.i350, %if.end7.i352.cleanup.sink.split.i361_crit_edge ], [ %call22.i355, %if.end18.i357.cleanup.sink.split.i361_crit_edge ]
  %dev29.i360 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %522 = ptrtoint ptr %dev29.i360 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %dev29.i360, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %523, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 147, i32 noundef %or.sink.i358) #8
  br label %sii9234_writebm.exit380.sink.split

sii9234_writebm.exit362:                          ; preds = %if.end18.i357
  %524 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %.pr500 = load i32, ptr %i2c_error.i, align 4
  %525 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr500)
  %tobool.not.i364 = icmp eq i32 %.pr500, 0
  br i1 %tobool.not.i364, label %if.end.i367, label %sii9234_writebm.exit362.sii9234_writebm.exit380_crit_edge

sii9234_writebm.exit362.sii9234_writebm.exit380_crit_edge: ; preds = %sii9234_writebm.exit362
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit380

if.end.i367:                                      ; preds = %sii9234_writebm.exit362
  %call.i365 = tail call i32 @i2c_smbus_write_byte(ptr noundef %526, i8 noundef zeroext -108) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i365)
  %cmp.i366 = icmp slt i32 %call.i365, 0
  br i1 %cmp.i366, label %if.end.i367.cleanup.sink.split.i379_crit_edge, label %if.end7.i370

if.end.i367.cleanup.sink.split.i379_crit_edge:    ; preds = %if.end.i367
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i379

if.end7.i370:                                     ; preds = %if.end.i367
  %call8.i368 = tail call i32 @i2c_smbus_read_byte(ptr noundef %526) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i368)
  %cmp9.i369 = icmp slt i32 %call8.i368, 0
  br i1 %cmp9.i369, label %if.end7.i370.cleanup.sink.split.i379_crit_edge, label %if.end18.i375

if.end7.i370.cleanup.sink.split.i379_crit_edge:   ; preds = %if.end7.i370
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i379

if.end18.i375:                                    ; preds = %if.end7.i370
  %and19.i371 = and i32 %call8.i368, -4
  %conv21.i372 = trunc i32 %and19.i371 to i8
  %call22.i373 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %526, i8 noundef zeroext -108, i8 noundef zeroext %conv21.i372) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i373)
  %cmp23.i374 = icmp slt i32 %call22.i373, 0
  br i1 %cmp23.i374, label %if.end18.i375.cleanup.sink.split.i379_crit_edge, label %if.end18.i375.sii9234_writebm.exit380_crit_edge

if.end18.i375.sii9234_writebm.exit380_crit_edge:  ; preds = %if.end18.i375
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit380

if.end18.i375.cleanup.sink.split.i379_crit_edge:  ; preds = %if.end18.i375
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i379

cleanup.sink.split.i379:                          ; preds = %if.end18.i375.cleanup.sink.split.i379_crit_edge, %if.end7.i370.cleanup.sink.split.i379_crit_edge, %if.end.i367.cleanup.sink.split.i379_crit_edge
  %or.sink.i376 = phi i32 [ 0, %if.end.i367.cleanup.sink.split.i379_crit_edge ], [ 0, %if.end7.i370.cleanup.sink.split.i379_crit_edge ], [ %and19.i371, %if.end18.i375.cleanup.sink.split.i379_crit_edge ]
  %call22.sink.i377 = phi i32 [ %call.i365, %if.end.i367.cleanup.sink.split.i379_crit_edge ], [ %call8.i368, %if.end7.i370.cleanup.sink.split.i379_crit_edge ], [ %call22.i373, %if.end18.i375.cleanup.sink.split.i379_crit_edge ]
  %dev29.i378 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %527 = ptrtoint ptr %dev29.i378 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %dev29.i378, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %528, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 148, i32 noundef %or.sink.i376) #8
  br label %sii9234_writebm.exit380.sink.split

sii9234_writebm.exit380.sink.split:               ; preds = %cleanup.sink.split.i379, %cleanup.sink.split.i361
  %call22.sink.i359.sink = phi i32 [ %call22.sink.i359, %cleanup.sink.split.i361 ], [ %call22.sink.i377, %cleanup.sink.split.i379 ]
  %529 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %call22.sink.i359.sink, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit380

sii9234_writebm.exit380:                          ; preds = %sii9234_writebm.exit380.sink.split, %if.end18.i375.sii9234_writebm.exit380_crit_edge, %sii9234_writebm.exit362.sii9234_writebm.exit380_crit_edge, %sii9234_writeb.exit344.sii9234_writebm.exit380_crit_edge
  tail call fastcc void @release_usb_id_switch_open(ptr noundef %ctx)
  %530 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %ctx, align 4
  %532 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %533)
  %tobool.not.i382 = icmp eq i32 %533, 0
  br i1 %tobool.not.i382, label %if.end.i385, label %sii9234_writebm.exit380.sii9234_writebm.exit417_crit_edge

sii9234_writebm.exit380.sii9234_writebm.exit417_crit_edge: ; preds = %sii9234_writebm.exit380
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit417

if.end.i385:                                      ; preds = %sii9234_writebm.exit380
  %call.i383 = tail call i32 @i2c_smbus_write_byte(ptr noundef %531, i8 noundef zeroext 121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i383)
  %cmp.i384 = icmp slt i32 %call.i383, 0
  br i1 %cmp.i384, label %if.end.i385.sii9234_writebm.exit417.sink.split_crit_edge, label %if.end7.i388

if.end.i385.sii9234_writebm.exit417.sink.split_crit_edge: ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit417.sink.split

if.end7.i388:                                     ; preds = %if.end.i385
  %call8.i386 = tail call i32 @i2c_smbus_read_byte(ptr noundef %531) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i386)
  %cmp9.i387 = icmp slt i32 %call8.i386, 0
  br i1 %cmp9.i387, label %if.end7.i388.sii9234_writebm.exit417.sink.split_crit_edge, label %if.end18.i393

if.end7.i388.sii9234_writebm.exit417.sink.split_crit_edge: ; preds = %if.end7.i388
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit417.sink.split

if.end18.i393:                                    ; preds = %if.end7.i388
  %and19.i389 = and i32 %call8.i386, -33
  %conv21.i390 = trunc i32 %and19.i389 to i8
  %call22.i391 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %531, i8 noundef zeroext 121, i8 noundef zeroext %conv21.i390) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i391)
  %cmp23.i392 = icmp slt i32 %call22.i391, 0
  br i1 %cmp23.i392, label %if.end18.i393.sii9234_writebm.exit417.sink.split_crit_edge, label %sii9234_writebm.exit398

if.end18.i393.sii9234_writebm.exit417.sink.split_crit_edge: ; preds = %if.end18.i393
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit417.sink.split

sii9234_writebm.exit398:                          ; preds = %if.end18.i393
  %534 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %.pr502 = load i32, ptr %i2c_error.i, align 4
  %535 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr502)
  %tobool.not.i400 = icmp eq i32 %.pr502, 0
  br i1 %tobool.not.i400, label %if.end.i403, label %sii9234_writebm.exit398.sii9234_writebm.exit417_crit_edge

sii9234_writebm.exit398.sii9234_writebm.exit417_crit_edge: ; preds = %sii9234_writebm.exit398
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit417

if.end.i403:                                      ; preds = %sii9234_writebm.exit398
  %call.i401 = tail call i32 @i2c_smbus_write_byte(ptr noundef %536, i8 noundef zeroext 121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i401)
  %cmp.i402 = icmp slt i32 %call.i401, 0
  br i1 %cmp.i402, label %if.end.i403.sii9234_writebm.exit417.sink.split_crit_edge, label %if.end7.i406

if.end.i403.sii9234_writebm.exit417.sink.split_crit_edge: ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit417.sink.split

if.end7.i406:                                     ; preds = %if.end.i403
  %call8.i404 = tail call i32 @i2c_smbus_read_byte(ptr noundef %536) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i404)
  %cmp9.i405 = icmp slt i32 %call8.i404, 0
  br i1 %cmp9.i405, label %if.end7.i406.sii9234_writebm.exit417.sink.split_crit_edge, label %if.end18.i412

if.end7.i406.sii9234_writebm.exit417.sink.split_crit_edge: ; preds = %if.end7.i406
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit417.sink.split

if.end18.i412:                                    ; preds = %if.end7.i406
  %or.i408 = or i32 %call8.i404, 16
  %conv21.i409 = trunc i32 %or.i408 to i8
  %call22.i410 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %536, i8 noundef zeroext 121, i8 noundef zeroext %conv21.i409) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i410)
  %cmp23.i411 = icmp slt i32 %call22.i410, 0
  br i1 %cmp23.i411, label %if.end18.i412.sii9234_writebm.exit417.sink.split_crit_edge, label %if.end18.i412.sii9234_writebm.exit417_crit_edge

if.end18.i412.sii9234_writebm.exit417_crit_edge:  ; preds = %if.end18.i412
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit417

if.end18.i412.sii9234_writebm.exit417.sink.split_crit_edge: ; preds = %if.end18.i412
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit417.sink.split

sii9234_writebm.exit417.sink.split:               ; preds = %if.end18.i412.sii9234_writebm.exit417.sink.split_crit_edge, %if.end7.i406.sii9234_writebm.exit417.sink.split_crit_edge, %if.end.i403.sii9234_writebm.exit417.sink.split_crit_edge, %if.end18.i393.sii9234_writebm.exit417.sink.split_crit_edge, %if.end7.i388.sii9234_writebm.exit417.sink.split_crit_edge, %if.end.i385.sii9234_writebm.exit417.sink.split_crit_edge
  %or.sink.i394.sink = phi i32 [ 0, %if.end.i385.sii9234_writebm.exit417.sink.split_crit_edge ], [ 0, %if.end7.i388.sii9234_writebm.exit417.sink.split_crit_edge ], [ %and19.i389, %if.end18.i393.sii9234_writebm.exit417.sink.split_crit_edge ], [ -1, %if.end.i403.sii9234_writebm.exit417.sink.split_crit_edge ], [ -1, %if.end7.i406.sii9234_writebm.exit417.sink.split_crit_edge ], [ %or.i408, %if.end18.i412.sii9234_writebm.exit417.sink.split_crit_edge ]
  %call22.sink.i395.sink = phi i32 [ %call.i383, %if.end.i385.sii9234_writebm.exit417.sink.split_crit_edge ], [ %call8.i386, %if.end7.i388.sii9234_writebm.exit417.sink.split_crit_edge ], [ %call22.i391, %if.end18.i393.sii9234_writebm.exit417.sink.split_crit_edge ], [ %call.i401, %if.end.i403.sii9234_writebm.exit417.sink.split_crit_edge ], [ %call8.i404, %if.end7.i406.sii9234_writebm.exit417.sink.split_crit_edge ], [ %call22.i410, %if.end18.i412.sii9234_writebm.exit417.sink.split_crit_edge ]
  %dev29.i396 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %537 = ptrtoint ptr %dev29.i396 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %dev29.i396, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %538, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 121, i32 noundef %or.sink.i394.sink) #8
  %539 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %539)
  store i32 %call22.sink.i395.sink, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit417

sii9234_writebm.exit417:                          ; preds = %sii9234_writebm.exit417.sink.split, %if.end18.i412.sii9234_writebm.exit417_crit_edge, %sii9234_writebm.exit398.sii9234_writebm.exit417_crit_edge, %sii9234_writebm.exit380.sii9234_writebm.exit417_crit_edge
  %540 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %i2c_error.i, align 4
  store i32 0, ptr %i2c_error.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sii9234_writebm.exit417, %sii9234_cbus_init.exit.cleanup_crit_edge, %sii9234_writeb.exit287.cleanup_crit_edge, %sii9234_mhl_tx_ctl_int.exit.cleanup_crit_edge, %sii9234_hdmi_init.exit.cleanup_crit_edge, %sii9234_cbus_reset.exit.cleanup_crit_edge, %sii9234_power_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %541, %sii9234_writebm.exit417 ], [ %25, %sii9234_power_init.exit.cleanup_crit_edge ], [ %85, %sii9234_cbus_reset.exit.cleanup_crit_edge ], [ %181, %sii9234_hdmi_init.exit.cleanup_crit_edge ], [ %207, %sii9234_mhl_tx_ctl_int.exit.cleanup_crit_edge ], [ %294, %sii9234_writeb.exit287.cleanup_crit_edge ], [ %493, %sii9234_cbus_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @force_usb_id_switch_open(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %i2c_error.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.sii9234_writebm.exit61_crit_edge

entry.sii9234_writebm.exit61_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit61

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext -112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end7.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i.cleanup.sink.split.i_crit_edge, label %if.end18.i

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %if.end7.i
  %and19.i = and i32 %call8.i, -2
  %conv21.i = trunc i32 %and19.i to i8
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -112, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %sii9234_writebm.exit

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end18.i.cleanup.sink.split.i_crit_edge, %if.end7.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %or.sink.i = phi i32 [ 0, %if.end.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ %and19.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %call22.sink.i = phi i32 [ %call.i, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %call8.i, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ %call22.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %dev29.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev29.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 144, i32 noundef %or.sink.i) #8
  br label %sii9234_writebm.exit61.sink.split

sii9234_writebm.exit:                             ; preds = %if.end18.i
  %6 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %i2c_error.i, align 4
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i8 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i8, label %if.end.i11, label %sii9234_writebm.exit.sii9234_writebm.exit61_crit_edge

sii9234_writebm.exit.sii9234_writebm.exit61_crit_edge: ; preds = %sii9234_writebm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit61

if.end.i11:                                       ; preds = %sii9234_writebm.exit
  %call.i9 = tail call i32 @i2c_smbus_write_byte(ptr noundef %8, i8 noundef zeroext -107) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp.i10 = icmp slt i32 %call.i9, 0
  br i1 %cmp.i10, label %if.end.i11.cleanup.sink.split.i23_crit_edge, label %if.end7.i14

if.end.i11.cleanup.sink.split.i23_crit_edge:      ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i23

if.end7.i14:                                      ; preds = %if.end.i11
  %call8.i12 = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i12)
  %cmp9.i13 = icmp slt i32 %call8.i12, 0
  br i1 %cmp9.i13, label %if.end7.i14.cleanup.sink.split.i23_crit_edge, label %if.end18.i19

if.end7.i14.cleanup.sink.split.i23_crit_edge:     ; preds = %if.end7.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i23

if.end18.i19:                                     ; preds = %if.end7.i14
  %or.i = or i32 %call8.i12, 64
  %conv21.i16 = trunc i32 %or.i to i8
  %call22.i17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -107, i8 noundef zeroext %conv21.i16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i17)
  %cmp23.i18 = icmp slt i32 %call22.i17, 0
  br i1 %cmp23.i18, label %if.end18.i19.cleanup.sink.split.i23_crit_edge, label %sii9234_writebm.exit24

if.end18.i19.cleanup.sink.split.i23_crit_edge:    ; preds = %if.end18.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i23

cleanup.sink.split.i23:                           ; preds = %if.end18.i19.cleanup.sink.split.i23_crit_edge, %if.end7.i14.cleanup.sink.split.i23_crit_edge, %if.end.i11.cleanup.sink.split.i23_crit_edge
  %or.sink.i20 = phi i32 [ -1, %if.end.i11.cleanup.sink.split.i23_crit_edge ], [ -1, %if.end7.i14.cleanup.sink.split.i23_crit_edge ], [ %or.i, %if.end18.i19.cleanup.sink.split.i23_crit_edge ]
  %call22.sink.i21 = phi i32 [ %call.i9, %if.end.i11.cleanup.sink.split.i23_crit_edge ], [ %call8.i12, %if.end7.i14.cleanup.sink.split.i23_crit_edge ], [ %call22.i17, %if.end18.i19.cleanup.sink.split.i23_crit_edge ]
  %dev29.i22 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %9 = ptrtoint ptr %dev29.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev29.i22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 149, i32 noundef %or.sink.i20) #8
  br label %sii9234_writebm.exit61.sink.split

sii9234_writebm.exit24:                           ; preds = %if.end18.i19
  %11 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr63.pr = load i32, ptr %i2c_error.i, align 4
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr63.pr)
  %tobool.not.i26 = icmp eq i32 %.pr63.pr, 0
  br i1 %tobool.not.i26, label %if.end.i29, label %sii9234_writebm.exit24.sii9234_writebm.exit61_crit_edge

sii9234_writebm.exit24.sii9234_writebm.exit61_crit_edge: ; preds = %sii9234_writebm.exit24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit61

if.end.i29:                                       ; preds = %sii9234_writebm.exit24
  %call.i27 = tail call i32 @i2c_smbus_write_byte(ptr noundef %13, i8 noundef zeroext -110) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp.i28 = icmp slt i32 %call.i27, 0
  br i1 %cmp.i28, label %if.end.i29.cleanup.sink.split.i42_crit_edge, label %if.end7.i32

if.end.i29.cleanup.sink.split.i42_crit_edge:      ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i42

if.end7.i32:                                      ; preds = %if.end.i29
  %call8.i30 = tail call i32 @i2c_smbus_read_byte(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i30)
  %cmp9.i31 = icmp slt i32 %call8.i30, 0
  br i1 %cmp9.i31, label %if.end7.i32.cleanup.sink.split.i42_crit_edge, label %if.end18.i38

if.end7.i32.cleanup.sink.split.i42_crit_edge:     ; preds = %if.end7.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i42

if.end18.i38:                                     ; preds = %if.end7.i32
  %or.i34 = or i32 %call8.i30, 134
  %conv21.i35 = trunc i32 %or.i34 to i8
  %call22.i36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext -110, i8 noundef zeroext %conv21.i35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i36)
  %cmp23.i37 = icmp slt i32 %call22.i36, 0
  br i1 %cmp23.i37, label %if.end18.i38.cleanup.sink.split.i42_crit_edge, label %sii9234_writebm.exit43

if.end18.i38.cleanup.sink.split.i42_crit_edge:    ; preds = %if.end18.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i42

cleanup.sink.split.i42:                           ; preds = %if.end18.i38.cleanup.sink.split.i42_crit_edge, %if.end7.i32.cleanup.sink.split.i42_crit_edge, %if.end.i29.cleanup.sink.split.i42_crit_edge
  %or.sink.i39 = phi i32 [ -1, %if.end.i29.cleanup.sink.split.i42_crit_edge ], [ -1, %if.end7.i32.cleanup.sink.split.i42_crit_edge ], [ %or.i34, %if.end18.i38.cleanup.sink.split.i42_crit_edge ]
  %call22.sink.i40 = phi i32 [ %call.i27, %if.end.i29.cleanup.sink.split.i42_crit_edge ], [ %call8.i30, %if.end7.i32.cleanup.sink.split.i42_crit_edge ], [ %call22.i36, %if.end18.i38.cleanup.sink.split.i42_crit_edge ]
  %dev29.i41 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %14 = ptrtoint ptr %dev29.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev29.i41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 146, i32 noundef %or.sink.i39) #8
  br label %sii9234_writebm.exit61.sink.split

sii9234_writebm.exit43:                           ; preds = %if.end18.i38
  %16 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr65.pr = load i32, ptr %i2c_error.i, align 4
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr65.pr)
  %tobool.not.i45 = icmp eq i32 %.pr65.pr, 0
  br i1 %tobool.not.i45, label %if.end.i48, label %sii9234_writebm.exit43.sii9234_writebm.exit61_crit_edge

sii9234_writebm.exit43.sii9234_writebm.exit61_crit_edge: ; preds = %sii9234_writebm.exit43
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit61

if.end.i48:                                       ; preds = %sii9234_writebm.exit43
  %call.i46 = tail call i32 @i2c_smbus_write_byte(ptr noundef %18, i8 noundef zeroext 121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp.i47 = icmp slt i32 %call.i46, 0
  br i1 %cmp.i47, label %if.end.i48.cleanup.sink.split.i60_crit_edge, label %if.end7.i51

if.end.i48.cleanup.sink.split.i60_crit_edge:      ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i60

if.end7.i51:                                      ; preds = %if.end.i48
  %call8.i49 = tail call i32 @i2c_smbus_read_byte(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i49)
  %cmp9.i50 = icmp slt i32 %call8.i49, 0
  br i1 %cmp9.i50, label %if.end7.i51.cleanup.sink.split.i60_crit_edge, label %if.end18.i56

if.end7.i51.cleanup.sink.split.i60_crit_edge:     ; preds = %if.end7.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i60

if.end18.i56:                                     ; preds = %if.end7.i51
  %and19.i52 = and i32 %call8.i49, -49
  %conv21.i53 = trunc i32 %and19.i52 to i8
  %call22.i54 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 121, i8 noundef zeroext %conv21.i53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i54)
  %cmp23.i55 = icmp slt i32 %call22.i54, 0
  br i1 %cmp23.i55, label %if.end18.i56.cleanup.sink.split.i60_crit_edge, label %if.end18.i56.sii9234_writebm.exit61_crit_edge

if.end18.i56.sii9234_writebm.exit61_crit_edge:    ; preds = %if.end18.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit61

if.end18.i56.cleanup.sink.split.i60_crit_edge:    ; preds = %if.end18.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i60

cleanup.sink.split.i60:                           ; preds = %if.end18.i56.cleanup.sink.split.i60_crit_edge, %if.end7.i51.cleanup.sink.split.i60_crit_edge, %if.end.i48.cleanup.sink.split.i60_crit_edge
  %or.sink.i57 = phi i32 [ 0, %if.end.i48.cleanup.sink.split.i60_crit_edge ], [ 0, %if.end7.i51.cleanup.sink.split.i60_crit_edge ], [ %and19.i52, %if.end18.i56.cleanup.sink.split.i60_crit_edge ]
  %call22.sink.i58 = phi i32 [ %call.i46, %if.end.i48.cleanup.sink.split.i60_crit_edge ], [ %call8.i49, %if.end7.i51.cleanup.sink.split.i60_crit_edge ], [ %call22.i54, %if.end18.i56.cleanup.sink.split.i60_crit_edge ]
  %dev29.i59 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %19 = ptrtoint ptr %dev29.i59 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev29.i59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 121, i32 noundef %or.sink.i57) #8
  br label %sii9234_writebm.exit61.sink.split

sii9234_writebm.exit61.sink.split:                ; preds = %cleanup.sink.split.i60, %cleanup.sink.split.i42, %cleanup.sink.split.i23, %cleanup.sink.split.i
  %call22.sink.i21.sink = phi i32 [ %call22.sink.i21, %cleanup.sink.split.i23 ], [ %call22.sink.i, %cleanup.sink.split.i ], [ %call22.sink.i40, %cleanup.sink.split.i42 ], [ %call22.sink.i58, %cleanup.sink.split.i60 ]
  %21 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call22.sink.i21.sink, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit61

sii9234_writebm.exit61:                           ; preds = %sii9234_writebm.exit61.sink.split, %if.end18.i56.sii9234_writebm.exit61_crit_edge, %sii9234_writebm.exit43.sii9234_writebm.exit61_crit_edge, %sii9234_writebm.exit24.sii9234_writebm.exit61_crit_edge, %sii9234_writebm.exit.sii9234_writebm.exit61_crit_edge, %entry.sii9234_writebm.exit61_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_usb_id_switch_open(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 100) #5
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %i2c_error.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.sii9234_writebm.exit20_crit_edge

entry.sii9234_writebm.exit20_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit20

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext -107) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end7.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i.cleanup.sink.split.i_crit_edge, label %if.end18.i

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %if.end7.i
  %and19.i = and i32 %call8.i, -65
  %conv21.i = trunc i32 %and19.i to i8
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -107, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %sii9234_writebm.exit

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end18.i.cleanup.sink.split.i_crit_edge, %if.end7.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %or.sink.i = phi i32 [ 0, %if.end.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ %and19.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %call22.sink.i = phi i32 [ %call.i, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %call8.i, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ %call22.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %dev29.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev29.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 149, i32 noundef %or.sink.i) #8
  br label %sii9234_writebm.exit20.sink.split

sii9234_writebm.exit:                             ; preds = %if.end18.i
  %6 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %i2c_error.i, align 4
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i4 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i4, label %if.end.i7, label %sii9234_writebm.exit.sii9234_writebm.exit20_crit_edge

sii9234_writebm.exit.sii9234_writebm.exit20_crit_edge: ; preds = %sii9234_writebm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit20

if.end.i7:                                        ; preds = %sii9234_writebm.exit
  %call.i5 = tail call i32 @i2c_smbus_write_byte(ptr noundef %8, i8 noundef zeroext -112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %cmp.i6 = icmp slt i32 %call.i5, 0
  br i1 %cmp.i6, label %if.end.i7.cleanup.sink.split.i19_crit_edge, label %if.end7.i10

if.end.i7.cleanup.sink.split.i19_crit_edge:       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i19

if.end7.i10:                                      ; preds = %if.end.i7
  %call8.i8 = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i8)
  %cmp9.i9 = icmp slt i32 %call8.i8, 0
  br i1 %cmp9.i9, label %if.end7.i10.cleanup.sink.split.i19_crit_edge, label %if.end18.i15

if.end7.i10.cleanup.sink.split.i19_crit_edge:     ; preds = %if.end7.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i19

if.end18.i15:                                     ; preds = %if.end7.i10
  %or.i = or i32 %call8.i8, 1
  %conv21.i12 = trunc i32 %or.i to i8
  %call22.i13 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -112, i8 noundef zeroext %conv21.i12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i13)
  %cmp23.i14 = icmp slt i32 %call22.i13, 0
  br i1 %cmp23.i14, label %if.end18.i15.cleanup.sink.split.i19_crit_edge, label %if.end18.i15.sii9234_writebm.exit20_crit_edge

if.end18.i15.sii9234_writebm.exit20_crit_edge:    ; preds = %if.end18.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit20

if.end18.i15.cleanup.sink.split.i19_crit_edge:    ; preds = %if.end18.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i19

cleanup.sink.split.i19:                           ; preds = %if.end18.i15.cleanup.sink.split.i19_crit_edge, %if.end7.i10.cleanup.sink.split.i19_crit_edge, %if.end.i7.cleanup.sink.split.i19_crit_edge
  %or.sink.i16 = phi i32 [ -1, %if.end.i7.cleanup.sink.split.i19_crit_edge ], [ -1, %if.end7.i10.cleanup.sink.split.i19_crit_edge ], [ %or.i, %if.end18.i15.cleanup.sink.split.i19_crit_edge ]
  %call22.sink.i17 = phi i32 [ %call.i5, %if.end.i7.cleanup.sink.split.i19_crit_edge ], [ %call8.i8, %if.end7.i10.cleanup.sink.split.i19_crit_edge ], [ %call22.i13, %if.end18.i15.cleanup.sink.split.i19_crit_edge ]
  %dev29.i18 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %9 = ptrtoint ptr %dev29.i18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev29.i18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 144, i32 noundef %or.sink.i16) #8
  br label %sii9234_writebm.exit20.sink.split

sii9234_writebm.exit20.sink.split:                ; preds = %cleanup.sink.split.i19, %cleanup.sink.split.i
  %call22.sink.i.sink = phi i32 [ %call22.sink.i, %cleanup.sink.split.i ], [ %call22.sink.i17, %cleanup.sink.split.i19 ]
  %11 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call22.sink.i.sink, ptr %i2c_error.i, align 4
  br label %sii9234_writebm.exit20

sii9234_writebm.exit20:                           ; preds = %sii9234_writebm.exit20.sink.split, %if.end18.i15.sii9234_writebm.exit20_crit_edge, %sii9234_writebm.exit.sii9234_writebm.exit20_crit_edge, %entry.sii9234_writebm.exit20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii9234_tmds_control(ptr nocapture noundef %ctx, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = sext i1 %enable to i32
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %i2c_error.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.sii9234_writebm.exit20_crit_edge

entry.sii9234_writebm.exit20_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit20

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end7.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i.cleanup.sink.split.i_crit_edge, label %if.end18.i

if.end7.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %if.end7.i
  %and.i = select i1 %enable, i32 16, i32 0
  %and19.i = and i32 %call8.i, -17
  %or.i = or i32 %and19.i, %and.i
  %conv21.i = trunc i32 %or.i to i8
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -128, i8 noundef zeroext %conv21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %sii9234_writebm.exit

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end18.i.cleanup.sink.split.i_crit_edge, %if.end7.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  %or.sink.i = phi i32 [ %cond, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %cond, %if.end7.i.cleanup.sink.split.i_crit_edge ], [ %or.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %dev29.i = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev29.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 128, i32 noundef %or.sink.i) #8
  br label %sii9234_writebm.exit20

sii9234_writebm.exit:                             ; preds = %if.end18.i
  %6 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %i2c_error.i, align 4
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i2 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i2, label %if.end.i5, label %sii9234_writebm.exit.sii9234_writebm.exit20_crit_edge

sii9234_writebm.exit.sii9234_writebm.exit20_crit_edge: ; preds = %sii9234_writebm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit20

if.end.i5:                                        ; preds = %sii9234_writebm.exit
  %call.i3 = tail call i32 @i2c_smbus_write_byte(ptr noundef %8, i8 noundef zeroext 121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp.i4 = icmp slt i32 %call.i3, 0
  br i1 %cmp.i4, label %if.end.i5.cleanup.sink.split.i19_crit_edge, label %if.end7.i8

if.end.i5.cleanup.sink.split.i19_crit_edge:       ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i19

if.end7.i8:                                       ; preds = %if.end.i5
  %call8.i6 = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i6)
  %cmp9.i7 = icmp slt i32 %call8.i6, 0
  br i1 %cmp9.i7, label %if.end7.i8.cleanup.sink.split.i19_crit_edge, label %if.end18.i15

if.end7.i8.cleanup.sink.split.i19_crit_edge:      ; preds = %if.end7.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i19

if.end18.i15:                                     ; preds = %if.end7.i8
  %and.i9 = select i1 %enable, i32 48, i32 0
  %and19.i10 = and i32 %call8.i6, -49
  %or.i11 = or i32 %and19.i10, %and.i9
  %conv21.i12 = trunc i32 %or.i11 to i8
  %call22.i13 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 121, i8 noundef zeroext %conv21.i12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i13)
  %cmp23.i14 = icmp slt i32 %call22.i13, 0
  br i1 %cmp23.i14, label %if.end18.i15.cleanup.sink.split.i19_crit_edge, label %if.end18.i15.sii9234_writebm.exit20_crit_edge

if.end18.i15.sii9234_writebm.exit20_crit_edge:    ; preds = %if.end18.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sii9234_writebm.exit20

if.end18.i15.cleanup.sink.split.i19_crit_edge:    ; preds = %if.end18.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i19

cleanup.sink.split.i19:                           ; preds = %if.end18.i15.cleanup.sink.split.i19_crit_edge, %if.end7.i8.cleanup.sink.split.i19_crit_edge, %if.end.i5.cleanup.sink.split.i19_crit_edge
  %or.sink.i16 = phi i32 [ %cond, %if.end.i5.cleanup.sink.split.i19_crit_edge ], [ %cond, %if.end7.i8.cleanup.sink.split.i19_crit_edge ], [ %or.i11, %if.end18.i15.cleanup.sink.split.i19_crit_edge ]
  %dev29.i18 = getelementptr inbounds %struct.sii9234, ptr %ctx, i32 0, i32 2
  %9 = ptrtoint ptr %dev29.i18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev29.i18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.22, i32 noundef 121, i32 noundef %or.sink.i16) #8
  br label %sii9234_writebm.exit20

sii9234_writebm.exit20:                           ; preds = %cleanup.sink.split.i19, %if.end18.i15.sii9234_writebm.exit20_crit_edge, %sii9234_writebm.exit.sii9234_writebm.exit20_crit_edge, %cleanup.sink.split.i, %entry.sii9234_writebm.exit20_crit_edge
  %11 = ptrtoint ptr %i2c_error.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %i2c_error.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sii9234_mode_valid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75000, i32 %1)
  %cmp = icmp sgt i32 %1, 75000
  %. = select i1 %cmp, i32 15, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !79, !80, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !124, !125, !127, !128, !129, !130, !132, !134, !135, !136, !138, !140, !142, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__initcall__kmod_sii9234__319_971_sii9234_driver_init6, !1, !"__initcall__kmod_sii9234__319_971_sii9234_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 971, i32 1}
!2 = !{ptr @__exitcall_sii9234_driver_exit, !1, !"__exitcall_sii9234_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file320, !4, !"__UNIQUE_ID_file320", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 972, i32 1}
!5 = !{ptr @__UNIQUE_ID_license321, !4, !"__UNIQUE_ID_license321", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 963, i32 11}
!8 = !{ptr @sii9234_driver, !9, !"sii9234_driver", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 961, i32 26}
!10 = !{ptr @sii9234_probe.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 902, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 905, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sii9234_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @sii9234_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 910, i32 3}
!23 = !{ptr @sii9234_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @sii9234_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 920, i32 3}
!27 = !{ptr @sii9234_probe._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sii9234_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 758, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sii9234_irq_thread.__UNIQUE_ID_ddebug316, !30, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 772, i32 2}
!35 = !{ptr @sii9234_irq_thread.__UNIQUE_ID_ddebug317, !34, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 800, i32 3}
!38 = !{ptr @sii9234_irq_thread.__UNIQUE_ID_ddebug318, !37, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 806, i32 3}
!41 = !{ptr @sii9234_irq_thread._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sii9234_irq_thread._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 259, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sii9234_readb._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @sii9234_readb._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @sii9234_readb._entry.20, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 267, i32 3}
!50 = !{ptr @sii9234_readb._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 188, i32 14}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 189, i32 14}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 190, i32 15}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 191, i32 15}
!59 = distinct !{null, !60, !"sii9234_client_name", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 187, i32 27}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 633, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sii9234_rgnd_ready_irq.__UNIQUE_ID_ddebug308, !62, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 638, i32 4}
!67 = !{ptr @sii9234_rgnd_ready_irq._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sii9234_rgnd_ready_irq._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 654, i32 3}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sii9234_rgnd_ready_irq._entry.29, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @sii9234_rgnd_ready_irq._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 657, i32 2}
!76 = !{ptr @sii9234_rgnd_ready_irq.__UNIQUE_ID_ddebug309, !75, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 713, i32 3}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sii9234_rsen_change._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @sii9234_rsen_change._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 721, i32 3}
!84 = !{ptr @sii9234_rsen_change.__UNIQUE_ID_ddebug311, !83, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 724, i32 2}
!87 = !{ptr @sii9234_rsen_change.__UNIQUE_ID_ddebug312, !86, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 736, i32 2}
!90 = !{ptr @sii9234_rsen_change.__UNIQUE_ID_ddebug313, !89, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 739, i32 3}
!93 = !{ptr @sii9234_rsen_change.__UNIQUE_ID_ddebug314, !92, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 742, i32 2}
!96 = !{ptr @sii9234_rsen_change.__UNIQUE_ID_ddebug315, !95, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 670, i32 2}
!99 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @sii9234_mhl_established.__UNIQUE_ID_ddebug310, !98, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 205, i32 3}
!103 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @sii9234_writeb._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @sii9234_writeb._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 550, i32 2}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @sii9234_goto_d3.__UNIQUE_ID_ddebug307, !107, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 565, i32 2}
!112 = !{ptr @sii9234_goto_d3._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @sii9234_goto_d3._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 223, i32 3}
!116 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @sii9234_writebm._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @sii9234_writebm._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @sii9234_writebm._entry.50, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 231, i32 3}
!121 = !{ptr @sii9234_writebm._entry_ptr.51, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @sii9234_writebm._entry.52, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 241, i32 3}
!124 = !{ptr @sii9234_writebm._entry_ptr.53, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 823, i32 3}
!127 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @sii9234_init_resources._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @sii9234_init_resources._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 827, i32 45}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 829, i32 3}
!134 = !{ptr @sii9234_init_resources._entry.57, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @sii9234_init_resources._entry_ptr.59, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 833, i32 28}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 834, i32 28}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 835, i32 28}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 836, i32 28}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 840, i32 4}
!146 = !{ptr @sii9234_init_resources._entry.64, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @sii9234_init_resources._entry_ptr.66, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 849, i32 3}
!150 = !{ptr @sii9234_init_resources._entry.67, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @sii9234_init_resources._entry_ptr.69, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 856, i32 3}
!154 = !{ptr @sii9234_init_resources._entry.70, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @sii9234_init_resources._entry_ptr.72, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 863, i32 3}
!158 = !{ptr @sii9234_init_resources._entry.73, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @sii9234_init_resources._entry_ptr.75, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @sii9234_bridge_funcs, !161, !"sii9234_bridge_funcs", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 885, i32 38}
!162 = !{ptr @sii9234_dt_match, !163, !"sii9234_dt_match", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 949, i32 34}
!164 = !{ptr @sii9234_id, !165, !"sii9234_id", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/bridge/sii9234.c", i32 955, i32 35}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{i64 2148355217, i64 2148355222, i64 2148355235, i64 2148355279, i64 2148355313, i64 2148355334}
