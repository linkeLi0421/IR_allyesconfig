; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-ocores.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-ocores.c"
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ocores_i2c = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.i2c_adapter, ptr, i32, i32, i32, %struct.spinlock, ptr, i32, i32, ptr, ptr }
%struct.ocores_i2c_platform_data = type { i32, i32, i32, i32, i8, i8, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_i2c_ocores__293_812_ocores_i2c_driver_init6 = internal global ptr @ocores_i2c_driver_init, section ".initcall6.init", align 4
@ocores_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ocores_i2c_probe, ptr @ocores_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ocores_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocores_i2c_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ocores_i2c_driver_exit = internal global ptr @ocores_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [56 x i8] c"i2c_ocores.author=Peter Korsgaard <peter@korsgaard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [48 x i8] c"i2c_ocores.description=OpenCores I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [46 x i8] c"i2c_ocores.file=drivers/i2c/busses/i2c-ocores\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [23 x i8] c"i2c_ocores.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [37 x i8] c"i2c_ocores.alias=platform:ocores-i2c\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ocores-i2c\00", [21 x i8] zeroinitializer }, align 32
@ocores_i2c_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"opencores,i2c-ocores\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aeroflexgaisler,i2cmst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sifive,fu540-c000-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sifive,i2c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@ocores_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ocores_i2c_suspend, ptr @ocores_i2c_resume, ptr @ocores_i2c_suspend, ptr @ocores_i2c_resume, ptr @ocores_i2c_suspend, ptr @ocores_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ocores_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&i2c->process_lock\00", [45 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@ocores_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 630, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't get I/O resource.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ocores_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-ocores.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ocores_i2c_probe._entry_ptr = internal global ptr @ocores_i2c_probe._entry, section ".printk_index", align 4
@ocores_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 677, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported I/O width (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@ocores_i2c_probe._entry_ptr.9 = internal global ptr @ocores_i2c_probe._entry.7, section ".printk_index", align 4
@ocores_i2c_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->wait\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sifive,fu540-c000-i2c\00", [42 x i8] zeroinitializer }, align 32
@ocores_algorithm = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @ocores_xfer, ptr @ocores_xfer_polling, ptr null, ptr null, ptr @ocores_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ocores_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 709, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cannot claim IRQ\0A\00", [46 x i8] zeroinitializer }, align 32
@ocores_i2c_probe._entry_ptr.15 = internal global ptr @ocores_i2c_probe._entry.13, section ".printk_index", align 4
@ocores_adapter = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 256, ptr @ocores_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"i2c-ocores\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-shift\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"regstep\00", [24 x i8] zeroinitializer }, align 32
@ocores_i2c_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 539, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid regstep %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ocores_i2c_of_probe\00", [44 x i8] zeroinitializer }, align 32
@ocores_i2c_of_probe._entry_ptr = internal global ptr @ocores_i2c_of_probe._entry, section ".printk_index", align 4
@ocores_i2c_of_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 544, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"regstep property deprecated, use reg-shift\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ocores_i2c_of_probe._entry_ptr.23 = internal global ptr @ocores_i2c_of_probe._entry.20, section ".printk_index", align 4
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@ocores_i2c_of_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.4, i32 559, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clk_prepare_enable failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ocores_i2c_of_probe._entry_ptr.27 = internal global ptr @ocores_i2c_of_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"opencores,ip-clock-frequency\00", [35 x i8] zeroinitializer }, align 32
@ocores_i2c_of_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Missing required parameter 'opencores,ip-clock-frequency'\0A\00", [37 x i8] zeroinitializer }, align 32
@ocores_i2c_of_probe._entry_ptr.31 = internal global ptr @ocores_i2c_of_probe._entry.29, section ".printk_index", align 4
@ocores_i2c_of_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.4, i32 578, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"Deprecated usage of the 'clock-frequency' property, please update to 'opencores,ip-clock-frequency'\0A\00", [59 x i8] zeroinitializer }, align 32
@ocores_i2c_of_probe._entry_ptr.34 = internal global ptr @ocores_i2c_of_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg-io-width\00", [19 x i8] zeroinitializer }, align 32
@ocores_i2c_of_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.19, ptr @.str.4, ptr @.str.37, i8 0, i8 -109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_ocores\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"GRLIB variant of i2c-ocores\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ocores_poll_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 332, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: STATUS timeout, bit 0x%x did not clear in 1ms\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ocores_poll_wait\00", [47 x i8] zeroinitializer }, align 32
@ocores_poll_wait._entry_ptr = internal global ptr @ocores_poll_wait._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ocores_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unsupported clock settings: core: %d KHz, bus: %d KHz\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ocores_init\00", [20 x i8] zeroinitializer }, align 32
@ocores_init._entry_ptr = internal global ptr @ocores_init._entry, section ".printk_index", align 4
@ocores_i2c_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.42, ptr @.str.4, i32 786, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ocores_i2c_resume\00", [46 x i8] zeroinitializer }, align 32
@ocores_i2c_resume._entry_ptr = internal global ptr @ocores_i2c_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"ocores_i2c_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 802, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 806, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"ocores_i2c_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 467, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"ocores_i2c_pm\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 796, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 615, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 630, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 676, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 683, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 692, i32 9 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"ocores_algorithm\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 454, i32 29 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 709, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"ocores_adapter\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 460, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 534, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 536, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 538, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 543, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 548, i32 54 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 558, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 568, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 571, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 577, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 586, i32 42 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 591, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 330, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 432, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-ocores.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 785, i32 4 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_ocores_i2c_driver_exit, ptr @__initcall__kmod_i2c_ocores__293_812_ocores_i2c_driver_init6, ptr @ocores_i2c_driver_exit, ptr @ocores_i2c_of_probe._entry, ptr @ocores_i2c_of_probe._entry.20, ptr @ocores_i2c_of_probe._entry.25, ptr @ocores_i2c_of_probe._entry.29, ptr @ocores_i2c_of_probe._entry.32, ptr @ocores_i2c_of_probe._entry_ptr, ptr @ocores_i2c_of_probe._entry_ptr.23, ptr @ocores_i2c_of_probe._entry_ptr.27, ptr @ocores_i2c_of_probe._entry_ptr.31, ptr @ocores_i2c_of_probe._entry_ptr.34, ptr @ocores_i2c_probe._entry, ptr @ocores_i2c_probe._entry.13, ptr @ocores_i2c_probe._entry.7, ptr @ocores_i2c_probe._entry_ptr, ptr @ocores_i2c_probe._entry_ptr.15, ptr @ocores_i2c_probe._entry_ptr.9, ptr @ocores_i2c_resume._entry, ptr @ocores_i2c_resume._entry_ptr, ptr @ocores_init._entry, ptr @ocores_init._entry_ptr, ptr @ocores_poll_wait._entry, ptr @ocores_poll_wait._entry_ptr, ptr @ocores_i2c_driver, ptr @.str, ptr @ocores_i2c_match, ptr @ocores_i2c_pm, ptr @ocores_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ocores_i2c_probe.__key.10, ptr @.str.11, ptr @.str.12, ptr @ocores_algorithm, ptr @.str.14, ptr @ocores_adapter, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_of_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_of_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_of_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_of_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_poll_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocores_i2c_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ocores_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ocores_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ocores_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ocores_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocores_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1512, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup149_crit_edge, label %do.body

entry.cleanup149_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

do.body:                                          ; preds = %entry
  %process_lock = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %process_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ocores_i2c_probe.__key, i16 noundef signext 3) #8
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.body
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call2) #8
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call6, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.then4.if.end28_crit_edge

if.then4.if.end28_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call6 to i32
  br label %cleanup149

if.else:                                          ; preds = %do.body
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.else.cleanup149_crit_edge, label %if.end16

if.else.cleanup149_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

if.end16:                                         ; preds = %if.else
  %2 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call13, align 4
  %iobase = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %iobase, align 4
  %5 = load i32, ptr %call13, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call13, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call20 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %5, i32 noundef %add.i, ptr noundef %9) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup149

if.end27:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %setreg = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 15
  %10 = ptrtoint ptr %setreg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @oc_setreg_io_8, ptr %setreg, align 8
  %getreg = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 16
  %11 = ptrtoint ptr %getreg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @oc_getreg_io_8, ptr %getreg, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then4.if.end28_crit_edge
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data.i, align 8
  %tobool31.not = icmp eq ptr %13, null
  br i1 %tobool31.not, label %if.else41, label %if.then32

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %reg_shift33 = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %reg_shift33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %reg_shift33, align 8
  %reg_io_width = getelementptr inbounds %struct.ocores_i2c_platform_data, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %reg_io_width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_io_width, align 4
  %reg_io_width34 = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %reg_io_width34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %reg_io_width34, align 4
  %clock_khz = getelementptr inbounds %struct.ocores_i2c_platform_data, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %clock_khz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clock_khz, align 4
  %ip_clock_khz = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 13
  %22 = ptrtoint ptr %ip_clock_khz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ip_clock_khz, align 8
  %bus_khz = getelementptr inbounds %struct.ocores_i2c_platform_data, ptr %13, i32 0, i32 3
  %23 = ptrtoint ptr %bus_khz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bus_khz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool35.not = icmp eq i32 %24, 0
  %bus_clock_khz39 = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 14
  %. = select i1 %tobool35.not, i32 100, i32 %24
  %25 = ptrtoint ptr %bus_clock_khz39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %., ptr %bus_clock_khz39, align 4
  br label %if.end46

if.else41:                                        ; preds = %if.end28
  %call42 = tail call fastcc i32 @ocores_i2c_of_probe(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.else41.if.end46_crit_edge, label %if.else41.cleanup149_crit_edge

if.else41.cleanup149_crit_edge:                   ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

if.else41.if.end46_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.end46:                                         ; preds = %if.else41.if.end46_crit_edge, %if.then32
  %reg_io_width47 = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %reg_io_width47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_io_width47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %if.then48, label %if.end46.if.end50_crit_edge

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %reg_io_width47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %reg_io_width47, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end46.if.end50_crit_edge
  %setreg51 = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 15
  %29 = ptrtoint ptr %setreg51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %setreg51, align 8
  %tobool52.not = icmp eq ptr %30, null
  br i1 %tobool52.not, label %if.end50.if.then55_crit_edge, label %lor.lhs.false

if.end50.if.then55_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

lor.lhs.false:                                    ; preds = %if.end50
  %getreg53 = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 16
  %31 = ptrtoint ptr %getreg53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %getreg53, align 4
  %tobool54.not = icmp eq ptr %32, null
  br i1 %tobool54.not, label %lor.lhs.false.if.then55_crit_edge, label %lor.lhs.false.do.body89_crit_edge

lor.lhs.false.do.body89_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

lor.lhs.false.if.then55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false.if.then55_crit_edge, %if.end50.if.then55_crit_edge
  br i1 %tobool31.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %big_endian = getelementptr inbounds %struct.ocores_i2c_platform_data, ptr %13, i32 0, i32 4
  %33 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %big_endian, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool57 = icmp ne i8 %34, 0
  br label %cond.end

cond.false:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %call59 = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %36) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %tobool57, %cond.true ], [ %call59, %cond.false ]
  %37 = ptrtoint ptr %reg_io_width47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_io_width47, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %cleanup [
    i32 1, label %sw.bb
    i32 2, label %sw.bb65
    i32 4, label %sw.bb74
  ]

sw.bb:                                            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %setreg51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @oc_setreg_8, ptr %setreg51, align 8
  br label %do.body89.sink.split

sw.bb65:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %cond68 = select i1 %cond.in, ptr @oc_setreg_16be, ptr @oc_setreg_16
  %41 = ptrtoint ptr %setreg51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cond68, ptr %setreg51, align 8
  %cond72 = select i1 %cond.in, ptr @oc_getreg_16be, ptr @oc_getreg_16
  br label %do.body89.sink.split

sw.bb74:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %cond77 = select i1 %cond.in, ptr @oc_setreg_32be, ptr @oc_setreg_32
  %42 = ptrtoint ptr %setreg51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %cond77, ptr %setreg51, align 8
  %cond81 = select i1 %cond.in, ptr @oc_getreg_32be, ptr @oc_getreg_32
  br label %do.body89.sink.split

cleanup:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %38) #11
  br label %err_clk

do.body89.sink.split:                             ; preds = %sw.bb74, %sw.bb65, %sw.bb
  %oc_getreg_8.sink = phi ptr [ @oc_getreg_8, %sw.bb ], [ %cond72, %sw.bb65 ], [ %cond81, %sw.bb74 ]
  %getreg64 = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 16
  %43 = ptrtoint ptr %getreg64 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %oc_getreg_8.sink, ptr %getreg64, align 4
  br label %do.body89

do.body89:                                        ; preds = %do.body89.sink.split, %lor.lhs.false.do.body89_crit_edge
  %wait = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.11, ptr noundef nonnull @ocores_i2c_probe.__key.10) #8
  %call92 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #8
  %of_node94 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %44 = ptrtoint ptr %of_node94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node94, align 8
  %call95 = tail call i32 @of_device_is_compatible(ptr noundef %45, ptr noundef nonnull @.str.12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end98.thread

if.end98.thread:                                  ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 8
  %or = or i32 %47, 2
  store i32 %or, ptr %flags, align 8
  br label %if.end107.thread

if.end98:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call92)
  %cmp99 = icmp eq i32 %call92, -6
  br i1 %cmp99, label %if.end98.if.end107.thread_crit_edge, label %if.else102

if.end98.if.end107.thread_crit_edge:              ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107.thread

if.end107.thread:                                 ; preds = %if.end98.if.end107.thread_crit_edge, %if.end98.thread
  store ptr @ocores_xfer_polling, ptr @ocores_algorithm, align 4
  br label %if.end121

if.else102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp103 = icmp slt i32 %call92, 0
  br i1 %cmp103, label %if.else102.cleanup149_crit_edge, label %if.end107

if.else102.cleanup149_crit_edge:                  ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

if.end107:                                        ; preds = %if.else102
  %.pr = load ptr, ptr @ocores_algorithm, align 4
  %cmp108.not = icmp eq ptr %.pr, @ocores_xfer_polling
  br i1 %cmp108.not, label %if.end107.if.end121_crit_edge, label %if.then110

if.end107.if.end121_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then110:                                       ; preds = %if.end107
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 8
  %call113 = tail call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %call92, ptr noundef nonnull @ocores_isr, i32 noundef 0, ptr noundef %49, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then110.if.end121_crit_edge, label %do.end118

if.then110.if.end121_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

do.end118:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %err_clk

if.end121:                                        ; preds = %if.then110.if.end121_crit_edge, %if.end107.if.end121_crit_edge, %if.end107.thread
  %call123 = tail call fastcc i32 @ocores_init(ptr noundef %dev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end121.err_clk_crit_edge

if.end121.err_clk_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk

if.end126:                                        ; preds = %if.end121
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 6
  %51 = call ptr @memcpy(ptr %adap, ptr @ocores_adapter, i32 1360)
  %driver_data.i.i240 = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 6, i32 9, i32 8
  %52 = ptrtoint ptr %driver_data.i.i240 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data.i.i240, align 4
  %parent = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 6, i32 9, i32 1
  %53 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev, ptr %parent, align 8
  %54 = ptrtoint ptr %of_node94 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node94, align 8
  %of_node135 = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 6, i32 9, i32 27
  %56 = ptrtoint ptr %of_node135 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %of_node135, align 8
  %call137 = tail call i32 @i2c_add_adapter(ptr noundef %adap) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.end126.err_clk_crit_edge

if.end126.err_clk_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk

if.end140:                                        ; preds = %if.end126
  br i1 %tobool31.not, label %if.end140.cleanup149_crit_edge, label %for.cond.preheader

if.end140.cleanup149_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

for.cond.preheader:                               ; preds = %if.end140
  %num_devices = getelementptr inbounds %struct.ocores_i2c_platform_data, ptr %13, i32 0, i32 5
  %57 = ptrtoint ptr %num_devices to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %num_devices, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp144250.not = icmp eq i8 %58, 0
  br i1 %cmp144250.not, label %for.cond.preheader.cleanup149_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup149_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %devices = getelementptr inbounds %struct.ocores_i2c_platform_data, ptr %13, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0251 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %59 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %devices, align 4
  %add.ptr = getelementptr %struct.i2c_board_info, ptr %60, i32 %i.0251
  %call147 = tail call ptr @i2c_new_client_device(ptr noundef %adap, ptr noundef %add.ptr) #8
  %inc = add nuw nsw i32 %i.0251, 1
  %61 = ptrtoint ptr %num_devices to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num_devices, align 1
  %conv143 = zext i8 %62 to i32
  %cmp144 = icmp ult i32 %inc, %conv143
  br i1 %cmp144, label %for.body.for.body_crit_edge, label %for.body.cleanup149_crit_edge

for.body.cleanup149_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup149

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_clk:                                          ; preds = %if.end126.err_clk_crit_edge, %if.end121.err_clk_crit_edge, %do.end118, %cleanup
  %ret.2 = phi i32 [ %call113, %do.end118 ], [ %call123, %if.end121.err_clk_crit_edge ], [ %call137, %if.end126.err_clk_crit_edge ], [ -22, %cleanup ]
  %clk = getelementptr inbounds %struct.ocores_i2c, ptr %call.i, i32 0, i32 12
  %63 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %64) #8
  tail call void @clk_unprepare(ptr noundef %64) #8
  br label %cleanup149

cleanup149:                                       ; preds = %err_clk, %for.body.cleanup149_crit_edge, %for.cond.preheader.cleanup149_crit_edge, %if.end140.cleanup149_crit_edge, %if.else102.cleanup149_crit_edge, %if.else41.cleanup149_crit_edge, %do.end25, %if.else.cleanup149_crit_edge, %if.then9, %entry.cleanup149_crit_edge
  %retval.0 = phi i32 [ %1, %if.then9 ], [ %ret.2, %err_clk ], [ -16, %do.end25 ], [ -12, %entry.cleanup149_crit_edge ], [ -22, %if.else.cleanup149_crit_edge ], [ %call42, %if.else41.cleanup149_crit_edge ], [ %call92, %if.else102.cleanup149_crit_edge ], [ 0, %if.end140.cleanup149_crit_edge ], [ 0, %for.cond.preheader.cleanup149_crit_edge ], [ 0, %for.body.cleanup149_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocores_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %getreg.i = getelementptr inbounds %struct.ocores_i2c, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %getreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %getreg.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 2) #8
  %4 = and i8 %call.i, 63
  %setreg.i = getelementptr inbounds %struct.ocores_i2c, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %setreg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %setreg.i, align 8
  tail call void %6(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %4) #8
  %adap = getelementptr inbounds %struct.ocores_i2c, ptr %1, i32 0, i32 6
  tail call void @i2c_del_adapter(ptr noundef %adap) #8
  %clk = getelementptr inbounds %struct.ocores_i2c, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oc_setreg_io_8(ptr nocapture noundef readonly %i2c, i32 noundef %reg, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %iobase = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 1
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, %reg
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %value) #8, !srcloc !109
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @oc_getreg_io_8(ptr nocapture noundef readonly %i2c, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %iobase = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 1
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, %reg
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocores_i2c_of_probe(ptr noundef %pdev, ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  %clock_frequency = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_frequency) #8
  %3 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %clock_frequency, align 4, !annotation !112
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef %reg_shift, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then:                                          ; preds = %entry
  %call.i.i137 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i137)
  %tobool2.not = icmp sgt i32 %call.i.i137, -1
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end18_crit_edge

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then3:                                         ; preds = %if.then
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %6 = call i32 @llvm.ctpop.i32(i32 %5) #8, !range !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %cond.end10, label %do.end

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %5) #11
  br label %cleanup97

cond.end10:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call i32 @llvm.ctlz.i32(i32 %5, i1 true) #8, !range !113
  %sub.i.op.i = xor i32 %8, 31
  %9 = ptrtoint ptr %reg_shift to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i.op.i, ptr %reg_shift, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  br label %if.end18

if.end18:                                         ; preds = %cond.end10, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %call.i.i138 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull %clock_frequency, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i138)
  %tobool20.not = icmp sgt i32 %call.i.i138, -1
  %bus_clock_khz = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 14
  %10 = ptrtoint ptr %bus_clock_khz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100, ptr %bus_clock_khz, align 4
  %call22 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 12
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call22, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end18.if.end42_crit_edge, label %if.then25

if.end18.if.end42_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then25:                                        ; preds = %if.end18
  %call.i = call i32 @clk_prepare(ptr noundef %call22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then25.do.end32_crit_edge

if.then25.do.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

if.end.i:                                         ; preds = %if.then25
  %call1.i = call i32 @clk_enable(ptr noundef %call22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end34, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call22) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then3.i, %if.then25.do.end32_crit_edge
  %retval.0.i139.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then25.do.end32_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i139.ph) #11
  br label %cleanup97

if.end34:                                         ; preds = %if.end.i
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call36 = call i32 @clk_get_rate(ptr noundef %13) #8
  %div = udiv i32 %call36, 1000
  %ip_clock_khz = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 13
  %14 = ptrtoint ptr %ip_clock_khz to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %ip_clock_khz, align 8
  br i1 %tobool20.not, label %if.then38, label %if.end34.if.end42_crit_edge

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clock_frequency, align 4
  %div39 = udiv i32 %16, 1000
  %17 = ptrtoint ptr %bus_clock_khz to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div39, ptr %bus_clock_khz, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end34.if.end42_crit_edge, %if.end18.if.end42_crit_edge
  %ip_clock_khz43 = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 13
  %18 = ptrtoint ptr %ip_clock_khz43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip_clock_khz43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp44 = icmp eq i32 %19, 0
  br i1 %cmp44, label %if.then46, label %if.end42.if.end72_crit_edge

if.end42.if.end72_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then46:                                        ; preds = %if.end42
  %call.i.i140 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i140)
  %tobool48.not = icmp sgt i32 %call.i.i140, -1
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.then46
  br i1 %tobool20.not, label %if.end57, label %do.end54

do.end54:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %21) #8
  call void @clk_unprepare(ptr noundef %21) #8
  br label %cleanup97

if.end57:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clock_frequency, align 4
  %div58 = udiv i32 %23, 1000
  %24 = ptrtoint ptr %ip_clock_khz43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div58, ptr %ip_clock_khz43, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33) #11
  br label %if.end72

if.else:                                          ; preds = %if.then46
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %div64 = udiv i32 %26, 1000
  %27 = ptrtoint ptr %ip_clock_khz43 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div64, ptr %ip_clock_khz43, align 8
  br i1 %tobool20.not, label %if.then67, label %if.else.if.end72_crit_edge

if.else.if.end72_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %clock_frequency to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clock_frequency, align 4
  %div68 = udiv i32 %29, 1000
  %30 = ptrtoint ptr %bus_clock_khz to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div68, ptr %bus_clock_khz, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.else.if.end72_crit_edge, %if.end57, %if.end42.if.end72_crit_edge
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %reg_io_width = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 3
  %call.i.i141 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.35, ptr noundef %reg_io_width, i32 noundef 1, i32 noundef 0) #8
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %call78 = call ptr @of_match_node(ptr noundef nonnull @ocores_i2c_match, ptr noundef %34) #8
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end72.cleanup97_crit_edge, label %land.lhs.true

if.end72.cleanup97_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup97

land.lhs.true:                                    ; preds = %if.end72
  %data = getelementptr inbounds %struct.of_device_id, ptr %call78, i32 0, i32 3
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %cmp80 = icmp eq ptr %36, inttoptr (i32 1 to ptr)
  br i1 %cmp80, label %do.body83, label %land.lhs.true.cleanup97_crit_edge

land.lhs.true.cleanup97_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup97

do.body83:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ocores_i2c_of_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ocores_i2c_of_probe, %do.end95)) #8
          to label %if.then91 [label %do.end95], !srcloc !114

if.then91:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ocores_i2c_of_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.37) #8
  br label %do.end95

do.end95:                                         ; preds = %if.then91, %do.body83
  %setreg = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 15
  %37 = ptrtoint ptr %setreg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @oc_setreg_grlib, ptr %setreg, align 8
  %getreg = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 16
  %38 = ptrtoint ptr %getreg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @oc_getreg_grlib, ptr %getreg, align 4
  br label %cleanup97

cleanup97:                                        ; preds = %do.end95, %land.lhs.true.cleanup97_crit_edge, %if.end72.cleanup97_crit_edge, %do.end54, %do.end32, %do.end
  %retval.1 = phi i32 [ -19, %do.end54 ], [ -22, %do.end ], [ %retval.0.i139.ph, %do.end32 ], [ 0, %do.end95 ], [ 0, %land.lhs.true.cleanup97_crit_edge ], [ 0, %if.end72.cleanup97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_frequency) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oc_setreg_8(ptr nocapture noundef readonly %i2c, i32 noundef %reg, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #8, !srcloc !109
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @oc_getreg_8(ptr nocapture noundef readonly %i2c, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oc_setreg_16be(ptr nocapture noundef readonly %i2c, i32 noundef %reg, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %conv = zext i8 %value to i16
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %conv) #8, !srcloc !118
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oc_setreg_16(ptr nocapture noundef readonly %i2c, i32 noundef %reg, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %value to i16
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %4 = shl nuw i16 %conv, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #8, !srcloc !118
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @oc_getreg_16be(ptr nocapture noundef readonly %i2c, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %conv = trunc i16 %4 to i8
  ret i8 %conv
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @oc_getreg_16(ptr nocapture noundef readonly %i2c, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !120
  %5 = lshr i16 %4, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %conv = trunc i16 %5 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oc_setreg_32be(ptr nocapture noundef readonly %i2c, i32 noundef %reg, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %conv = zext i8 %value to i32
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv) #8, !srcloc !124
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oc_setreg_32(ptr nocapture noundef readonly %i2c, i32 noundef %reg, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %value to i32
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %4 = shl nuw i32 %conv, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !124
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @oc_getreg_32be(ptr nocapture noundef readonly %i2c, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %conv = trunc i32 %4 to i8
  ret i8 %conv
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @oc_getreg_32(ptr nocapture noundef readonly %i2c, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %reg, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !126
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %conv = trunc i32 %5 to i8
  ret i8 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocores_xfer_polling(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @ocores_xfer_core(ptr noundef %1, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocores_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %getreg.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 16
  %0 = ptrtoint ptr %getreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %getreg.i, align 4
  %call.i = tail call zeroext i8 %1(ptr noundef %dev_id, i32 noundef 4) #8
  %flags = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = and i8 %call.i, 65
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %if.then.cleanup_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %6 = and i8 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %msg1.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 7
  %7 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msg1.i, align 8
  %process_lock.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 11
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %process_lock.i) #8
  %state.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 10
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %10, label %if.end.i [
    i32 0, label %if.end12.if.then.i_crit_edge
    i32 4, label %if.end12.if.then.i_crit_edge19
  ]

if.end12.if.then.i_crit_edge19:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end12.if.then.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.end12.if.then.i_crit_edge, %if.end12.if.then.i_crit_edge19
  %setreg.i.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 15
  %12 = ptrtoint ptr %setreg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %setreg.i.i, align 8
  tail call void %13(ptr noundef %dev_id, i32 noundef 4, i8 noundef zeroext 1) #8
  %wait.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %ocores_process.exit

if.end.i:                                         ; preds = %if.end12
  %conv11.i = zext i8 %call.i to i32
  %and.i = and i32 %conv11.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %state.i, align 4
  %setreg.i124.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 15
  %15 = ptrtoint ptr %setreg.i124.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %setreg.i124.i, align 8
  tail call void %16(ptr noundef %dev_id, i32 noundef 4, i8 noundef zeroext 65) #8
  br label %ocores_process.exit

if.end14.i:                                       ; preds = %if.end.i
  %.off.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.end14.i
  %flags23.i = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %flags23.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags23.i, align 2
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool26.not.i = icmp eq i16 %19, 0
  %cond.i = select i1 %tobool26.not.i, i32 2, i32 3
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i, ptr %state.i, align 4
  %and29.i = and i32 %conv11.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.then22.i.if.end35.i_crit_edge, label %if.then31.i

if.then22.i.if.end35.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %state.i, align 4
  %setreg.i125.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 15
  %22 = ptrtoint ptr %setreg.i125.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setreg.i125.i, align 8
  tail call void %23(ptr noundef %dev_id, i32 noundef 4, i8 noundef zeroext 65) #8
  br label %ocores_process.exit

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %getreg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %getreg.i, align 4
  %call.i.i = tail call zeroext i8 %25(ptr noundef %dev_id, i32 noundef 3) #8
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf.i, align 4
  %pos.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 8
  %28 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %pos.i, align 4
  %arrayidx.i = getelementptr i8, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call.i.i, ptr %arrayidx.i, align 1
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else.i, %if.then22.i.if.end35.i_crit_edge
  %pos36.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 8
  %31 = ptrtoint ptr %pos36.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pos36.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 2
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %len.i, align 4
  %conv37.i = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv37.i)
  %cmp38.i = icmp eq i32 %32, %conv37.i
  br i1 %cmp38.i, label %if.then40.i, label %if.end64thread-pre-split.i

if.then40.i:                                      ; preds = %if.end35.i
  %nmsgs.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 9
  %35 = ptrtoint ptr %nmsgs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nmsgs.i, align 8
  %dec.i = add i32 %36, -1
  store i32 %dec.i, ptr %nmsgs.i, align 8
  %37 = ptrtoint ptr %msg1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %msg1.i, align 8
  %incdec.ptr.i = getelementptr %struct.i2c_msg, ptr %38, i32 1
  store ptr %incdec.ptr.i, ptr %msg1.i, align 8
  %39 = ptrtoint ptr %pos36.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %pos36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool45.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool45.not.i, label %if.else61.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.then40.i
  %flags47.i = getelementptr %struct.i2c_msg, ptr %38, i32 1, i32 1
  %40 = ptrtoint ptr %flags47.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags47.i, align 2
  %conv48.i = zext i16 %41 to i32
  %and49.i = and i32 %conv48.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.then51.i, label %if.end54.i

if.then51.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %incdec.ptr.i, align 4
  %conv.i.i = trunc i16 %43 to i8
  %shl.i.i = shl i8 %conv.i.i, 1
  %44 = trunc i16 %41 to i8
  %45 = and i8 %44, 1
  %or.i.i = or i8 %shl.i.i, %45
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %state.i, align 4
  %setreg.i126.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 15
  %47 = ptrtoint ptr %setreg.i126.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %setreg.i126.i, align 8
  tail call void %48(ptr noundef %dev_id, i32 noundef 3, i8 noundef zeroext %or.i.i) #8
  %49 = ptrtoint ptr %setreg.i126.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %setreg.i126.i, align 8
  tail call void %50(ptr noundef %dev_id, i32 noundef 4, i8 noundef zeroext -111) #8
  br label %ocores_process.exit

if.end54.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  %and57.i = and i32 %conv48.i, 1
  %51 = or i32 %and57.i, 2
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %state.i, align 4
  br label %if.end64.i

if.else61.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %state.i, align 4
  %setreg.i128.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 15
  %54 = ptrtoint ptr %setreg.i128.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %setreg.i128.i, align 8
  tail call void %55(ptr noundef %dev_id, i32 noundef 4, i8 noundef zeroext 65) #8
  br label %ocores_process.exit

if.end64thread-pre-split.i:                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr.i = load i32, ptr %state.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.end64thread-pre-split.i, %if.end54.i
  %57 = phi i32 [ %.pr.i, %if.end64thread-pre-split.i ], [ %51, %if.end54.i ]
  %msg.0.i = phi ptr [ %8, %if.end64thread-pre-split.i ], [ %incdec.ptr.i, %if.end54.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp66.i = icmp eq i32 %57, 3
  br i1 %cmp66.i, label %if.then68.i, label %if.else76.i

if.then68.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %pos36.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pos36.i, align 4
  %len70.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0.i, i32 0, i32 2
  %60 = ptrtoint ptr %len70.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %len70.i, align 4
  %conv71.i = zext i16 %61 to i32
  %sub.i = add nsw i32 %conv71.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %sub.i)
  %cmp72.i = icmp eq i32 %59, %sub.i
  %conv75.i = select i1 %cmp72.i, i8 41, i8 33
  %setreg.i129.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 15
  %62 = ptrtoint ptr %setreg.i129.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %setreg.i129.i, align 8
  tail call void %63(ptr noundef %dev_id, i32 noundef 4, i8 noundef zeroext %conv75.i) #8
  br label %ocores_process.exit

if.else76.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf77.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0.i, i32 0, i32 3
  %64 = ptrtoint ptr %buf77.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buf77.i, align 4
  %66 = ptrtoint ptr %pos36.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pos36.i, align 4
  %inc79.i = add i32 %67, 1
  store i32 %inc79.i, ptr %pos36.i, align 4
  %arrayidx80.i = getelementptr i8, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx80.i, align 1
  %setreg.i130.i = getelementptr inbounds %struct.ocores_i2c, ptr %dev_id, i32 0, i32 15
  %70 = ptrtoint ptr %setreg.i130.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %setreg.i130.i, align 8
  tail call void %71(ptr noundef %dev_id, i32 noundef 3, i8 noundef zeroext %69) #8
  %72 = ptrtoint ptr %setreg.i130.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %setreg.i130.i, align 8
  tail call void %73(ptr noundef %dev_id, i32 noundef 4, i8 noundef zeroext 17) #8
  br label %ocores_process.exit

ocores_process.exit:                              ; preds = %if.else76.i, %if.then68.i, %if.else61.i, %if.then51.i, %if.then31.i, %if.then12.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %process_lock.i, i32 noundef %call3.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ocores_process.exit, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %ocores_process.exit ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocores_init(ptr noundef %dev, ptr noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %getreg.i = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 16
  %0 = ptrtoint ptr %getreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %getreg.i, align 4
  %call.i = tail call zeroext i8 %1(ptr noundef %i2c, i32 noundef 2) #8
  %2 = and i8 %call.i, 63
  %setreg.i = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 15
  %3 = ptrtoint ptr %setreg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %setreg.i, align 8
  tail call void %4(ptr noundef %i2c, i32 noundef 2, i8 noundef zeroext %2) #8
  %ip_clock_khz = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 13
  %5 = ptrtoint ptr %ip_clock_khz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ip_clock_khz, align 8
  %bus_clock_khz = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 14
  %7 = ptrtoint ptr %bus_clock_khz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_clock_khz, align 4
  %mul = mul i32 %8, 5
  %div = sdiv i32 %6, %mul
  %sub = add i32 %div, -1
  %9 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 65535)
  %11 = mul nuw nsw i32 %10, 5
  %mul11 = add nuw nsw i32 %11, 5
  %div12 = sdiv i32 %6, %mul11
  %sub14 = sub i32 %div12, %8
  %12 = tail call i32 @llvm.abs.i32(i32 %sub14, i1 false)
  %div24 = sdiv i32 %8, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %div24)
  %cmp25 = icmp sgt i32 %12, %div24
  br i1 %cmp25, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %6, i32 noundef %8) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv30 = trunc i32 %10 to i8
  %13 = ptrtoint ptr %setreg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %setreg.i, align 8
  tail call void %14(ptr noundef %i2c, i32 noundef 0, i8 noundef zeroext %conv30) #8
  %15 = lshr i32 %10, 8
  %conv31 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %setreg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setreg.i, align 8
  tail call void %17(ptr noundef %i2c, i32 noundef 1, i8 noundef zeroext %conv31) #8
  %18 = ptrtoint ptr %setreg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %setreg.i, align 8
  tail call void %19(ptr noundef %i2c, i32 noundef 4, i8 noundef zeroext 1) #8
  %20 = or i8 %2, -128
  %21 = ptrtoint ptr %setreg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %setreg.i, align 8
  tail call void %22(ptr noundef %i2c, i32 noundef 2, i8 noundef zeroext %20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oc_setreg_grlib(ptr nocapture noundef readonly %i2c, i32 noundef %reg, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %cmp.not = icmp eq i32 %reg, 0
  %dec = add i32 %reg, -1
  %spec.select = select i1 %cmp.not, i32 0, i32 %dec
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %switch = icmp ult i32 %reg, 2
  br i1 %switch, label %if.then3, label %if.else11

if.then3:                                         ; preds = %entry
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %spec.select, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  br i1 %cmp.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %4, 65280
  %conv = zext i8 %value to i32
  %or = or i32 %and, %conv
  br label %do.body

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %conv6 = zext i8 %value to i32
  %shl7 = shl nuw nsw i32 %conv6, 8
  %and8 = and i32 %4, 255
  %or9 = or i32 %and8, %shl7
  br label %do.body

if.else11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv12 = zext i8 %value to i32
  br label %do.body

do.body:                                          ; preds = %if.else11, %if.else, %if.then5
  %wr.0 = phi i32 [ %or, %if.then5 ], [ %or9, %if.else ], [ %conv12, %if.else11 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c, align 8
  %reg_shift15 = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %7 = ptrtoint ptr %reg_shift15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_shift15, align 8
  %shl16 = shl i32 %spec.select, %8
  %add.ptr17 = getelementptr i8, ptr %6, i32 %shl16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %wr.0) #8, !srcloc !124
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @oc_getreg_grlib(ptr nocapture noundef readonly %i2c, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %cmp.not = icmp eq i32 %reg, 0
  %dec = add i32 %reg, -1
  %spec.select = select i1 %cmp.not, i32 0, i32 %dec
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %reg_shift = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_shift, align 8
  %shl = shl i32 %spec.select, %3
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg)
  %cmp1 = icmp eq i32 %reg, 1
  %shr = lshr i32 %4, 8
  %retval.0.in = select i1 %cmp1, i32 %shr, i32 %4
  %retval.0 = trunc i32 %retval.0.in to i8
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocores_xfer_core(ptr noundef %i2c, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext %polling) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %getreg.i = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 16
  %0 = ptrtoint ptr %getreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %getreg.i, align 4
  %call.i = tail call zeroext i8 %1(ptr noundef %i2c, i32 noundef 2) #8
  %2 = and i8 %call.i, -65
  %masksel = select i1 %polling, i8 0, i8 64
  %.sink = or i8 %2, %masksel
  %setreg.i107 = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 15
  %3 = ptrtoint ptr %setreg.i107 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %setreg.i107, align 8
  tail call void %4(ptr noundef %i2c, i32 noundef 2, i8 noundef zeroext %.sink) #8
  %msg = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 7
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msgs, ptr %msg, align 8
  %pos = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 8
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pos, align 4
  %nmsgs = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 9
  %7 = ptrtoint ptr %nmsgs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num, ptr %nmsgs, align 8
  %state = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 10
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state, align 4
  %9 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %msgs, align 4
  %conv.i = trunc i16 %10 to i8
  %shl.i = shl i8 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags.i, align 2
  %13 = trunc i16 %12 to i8
  %14 = and i8 %13, 1
  %or.i = or i8 %14, %shl.i
  %setreg.i108 = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 15
  %15 = ptrtoint ptr %setreg.i108 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %setreg.i108, align 8
  tail call void %16(ptr noundef %i2c, i32 noundef 3, i8 noundef zeroext %or.i) #8
  %17 = ptrtoint ptr %setreg.i108 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %setreg.i108, align 8
  tail call void %18(ptr noundef %i2c, i32 noundef 4, i8 noundef zeroext -111) #8
  br i1 %polling, label %if.then7, label %if.else8

if.then7:                                         ; preds = %entry
  %bus_clock_khz.i.i = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 14
  %flags.i110 = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.backedge, %if.then7
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %20, label %cond.false9.i.i [
    i32 0, label %while.body.i.if.end.i.i_crit_edge
    i32 4, label %while.body.i.if.end.i.i_crit_edge133
  ]

while.body.i.if.end.i.i_crit_edge133:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

cond.false9.i.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %bus_clock_khz.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_clock_khz.i.i, align 4
  %div.i.i = sdiv i32 8000, %23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %div.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %cond.false9.i.i, %while.body.i.if.end.i.i_crit_edge, %while.body.i.if.end.i.i_crit_edge133
  %mask.0.i.i = phi i8 [ 2, %cond.false9.i.i ], [ 64, %while.body.i.if.end.i.i_crit_edge ], [ 64, %while.body.i.if.end.i.i_crit_edge133 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %25, 1
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end.i.i.i.while.cond.i.i.i_crit_edge, %if.end.i.i
  %26 = ptrtoint ptr %getreg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %getreg.i, align 4
  %call.i.i.i.i = tail call zeroext i8 %27(ptr noundef %i2c, i32 noundef 4) #8
  %and1.i.i.i = and i8 %call.i.i.i.i, %mask.0.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1.i.i.i)
  %cmp.i.i.i = icmp eq i8 %and1.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.cond.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %28
  %cmp4.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp4.i.i.i, label %if.then.i, label %if.end.i.i.i.while.cond.i.i.i_crit_edge

if.end.i.i.i.while.cond.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i

if.then.i:                                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %parent.i.i = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 6, i32 9, i32 1
  %29 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i.i, align 8
  %conv.i.i = zext i8 %mask.0.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %conv.i.i) #11
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %state, align 4
  br label %if.end69

if.end.i:                                         ; preds = %while.cond.i.i.i
  %call1.i = tail call i32 @ocores_isr(i32 noundef -1, ptr noundef %i2c) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.if.end69_crit_edge, label %if.else.i

if.end.i.if.end69_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.else.i:                                        ; preds = %if.end.i
  %32 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i110, align 8
  %and.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.else.i.while.body.i.backedge_crit_edge, label %if.then4.i

if.else.i.while.body.i.backedge_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.backedge

if.then4.i:                                       ; preds = %if.else.i
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp6.i = icmp eq i32 %35, 0
  br i1 %cmp6.i, label %if.then4.i.if.end69_crit_edge, label %if.then4.i.while.body.i.backedge_crit_edge

if.then4.i.while.body.i.backedge_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.backedge

if.then4.i.if.end69_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

while.body.i.backedge:                            ; preds = %if.then4.i.while.body.i.backedge_crit_edge, %if.else.i.while.body.i.backedge_crit_edge
  br label %while.body.i

if.else8:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 395) #8
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %37, label %if.then29 [
    i32 4, label %if.else8.if.end69_crit_edge
    i32 0, label %if.else8.if.end69_crit_edge134
  ]

if.else8.if.end69_crit_edge134:                   ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.else8.if.end69_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then29:                                        ; preds = %if.else8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %39 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wait = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then29
  %__ret30.0 = phi i32 [ 100, %if.then29 ], [ %call60, %cleanup ]
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state, align 4
  %42 = and i32 %41, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %43 = icmp eq i32 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.0)
  %tobool46.not = icmp eq i32 %__ret30.0, 0
  %44 = select i1 %43, i1 %tobool46.not, i1 false
  %__ret30.1 = select i1 %44, i32 1, i32 %__ret30.0
  %45 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %41, label %lor.rhs52 [
    i32 4, label %for.cond.if.end63_crit_edge
    i32 0, label %for.cond.if.end63_crit_edge135
  ]

for.cond.if.end63_crit_edge135:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

for.cond.if.end63_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

lor.rhs52:                                        ; preds = %for.cond
  %tobool53.not = icmp eq i32 %__ret30.1, 0
  br i1 %tobool53.not, label %if.end63.thread117, label %cleanup

if.end63.thread117:                               ; preds = %lor.rhs52
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.then67

cleanup:                                          ; preds = %lor.rhs52
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = call i32 @schedule_timeout(i32 noundef %__ret30.1) #8
  br label %for.cond

if.end63:                                         ; preds = %for.cond.if.end63_crit_edge, %for.cond.if.end63_crit_edge135
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1)
  %cmp65 = icmp eq i32 %__ret30.1, 0
  br i1 %cmp65, label %if.end63.if.then67_crit_edge, label %if.end63.if.end69_crit_edge

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end63.if.then67_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67

if.then67:                                        ; preds = %if.end63.if.then67_crit_edge, %if.end63.thread117
  %process_lock.i = getelementptr inbounds %struct.ocores_i2c, ptr %i2c, i32 0, i32 11
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %process_lock.i) #8
  %46 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %state, align 4
  %47 = ptrtoint ptr %setreg.i108 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %setreg.i108, align 8
  call void %48(ptr noundef %i2c, i32 noundef 4, i8 noundef zeroext 65) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %process_lock.i, i32 noundef %call2.i) #8
  br label %cleanup73

if.end69:                                         ; preds = %if.end63.if.end69_crit_edge, %if.else8.if.end69_crit_edge, %if.else8.if.end69_crit_edge134, %if.then4.i.if.end69_crit_edge, %if.end.i.if.end69_crit_edge, %if.then.i
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp71 = icmp eq i32 %50, 0
  %spec.select106 = select i1 %cmp71, i32 %num, i32 -5
  br label %cleanup73

cleanup73:                                        ; preds = %if.end69, %if.then67
  %retval.0 = phi i32 [ %spec.select106, %if.end69 ], [ -110, %if.then67 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocores_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @ocores_xfer_core(ptr noundef %1, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ocores_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocores_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %getreg.i = getelementptr inbounds %struct.ocores_i2c, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %getreg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %getreg.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 2) #8
  %4 = and i8 %call.i, 63
  %setreg.i = getelementptr inbounds %struct.ocores_i2c, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %setreg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %setreg.i, align 8
  tail call void %6(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %4) #8
  %clk = getelementptr inbounds %struct.ocores_i2c, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocores_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.ocores_i2c, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i.ph) #11
  br label %cleanup13

if.end:                                           ; preds = %if.end.i
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call6 = tail call i32 @clk_get_rate(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call6)
  %6 = icmp ult i32 %call6, 1000
  br i1 %6, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %call6, 1000
  %ip_clock_khz = getelementptr inbounds %struct.ocores_i2c, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %ip_clock_khz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %ip_clock_khz, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %call12 = tail call fastcc i32 @ocores_init(ptr noundef %dev, ptr noundef %1)
  br label %cleanup13

cleanup13:                                        ; preds = %if.end11, %do.end
  %retval.1 = phi i32 [ %call12, %if.end11 ], [ %retval.0.i.ph, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !78, !79, !80, !81, !83, !85, !86, !87, !88, !90, !92, !94, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_i2c_ocores__293_812_ocores_i2c_driver_init6, !1, !"__initcall__kmod_i2c_ocores__293_812_ocores_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 812, i32 1}
!2 = !{ptr @__exitcall_ocores_i2c_driver_exit, !1, !"__exitcall_ocores_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 814, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 815, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 816, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias298, !11, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 817, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 806, i32 11}
!14 = !{ptr @ocores_i2c_driver, !15, !"ocores_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 802, i32 31}
!16 = !{ptr @ocores_i2c_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 615, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 630, i32 4}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ocores_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ocores_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 676, i32 4}
!29 = !{ptr @ocores_i2c_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ocores_i2c_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @ocores_i2c_probe.__key.10, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 683, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 692, i32 9}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 709, i32 4}
!38 = !{ptr @ocores_i2c_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ocores_i2c_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 534, i32 31}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 536, i32 33}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 538, i32 5}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ocores_i2c_of_probe._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ocores_i2c_of_probe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 543, i32 4}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ocores_i2c_of_probe._entry.20, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ocores_i2c_of_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 548, i32 54}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 558, i32 4}
!58 = !{ptr @ocores_i2c_of_probe._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ocores_i2c_of_probe._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 568, i32 32}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 571, i32 5}
!64 = !{ptr @ocores_i2c_of_probe._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ocores_i2c_of_probe._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 577, i32 4}
!68 = !{ptr @ocores_i2c_of_probe._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ocores_i2c_of_probe._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 586, i32 42}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 591, i32 3}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ocores_i2c_of_probe.__UNIQUE_ID_ddebug292, !73, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 330, i32 3}
!78 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ocores_poll_wait._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @ocores_poll_wait._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @ocores_algorithm, !82, !"ocores_algorithm", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 454, i32 29}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 432, i32 3}
!85 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ocores_init._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ocores_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @ocores_adapter, !89, !"ocores_adapter", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 460, i32 33}
!90 = !{ptr @ocores_i2c_match, !91, !"ocores_i2c_match", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 467, i32 34}
!92 = !{ptr @ocores_i2c_pm, !93, !"ocores_i2c_pm", i1 false, i1 false}
!93 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 796, i32 8}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/i2c/busses/i2c-ocores.c", i32 785, i32 4}
!96 = !{ptr @ocores_i2c_resume._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ocores_i2c_resume._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i8 0, i8 2}
!108 = !{i64 2155581612}
!109 = !{i64 6893538}
!110 = !{i64 6893933}
!111 = !{i64 2155582202}
!112 = !{!"auto-init"}
!113 = !{i32 0, i32 33}
!114 = !{i64 2148739595, i64 2148739600, i64 2148739613, i64 2148739657, i64 2148739691, i64 2148739712}
!115 = !{i64 2154427393}
!116 = !{i64 2154425788}
!117 = !{i64 2155579464}
!118 = !{i64 6893115}
!119 = !{i64 2154427817}
!120 = !{i64 6893315}
!121 = !{i64 2155580887}
!122 = !{i64 2154426400}
!123 = !{i64 2155579787}
!124 = !{i64 6893735}
!125 = !{i64 2154428367}
!126 = !{i64 6894153}
!127 = !{i64 2155581392}
!128 = !{i64 2154427012}
!129 = !{i64 2155606173}
!130 = !{i64 2155606434}
!131 = !{i64 2155605827}
