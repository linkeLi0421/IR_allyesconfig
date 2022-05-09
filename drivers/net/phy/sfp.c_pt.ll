; ModuleID = '/llk/IR_all_yes/drivers/net/phy/sfp.c_pt.bc'
source_filename = "../drivers/net/phy/sfp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sff_data = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sfp_socket_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.sfp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, [5 x ptr], [5 x i32], i8, %struct.mutex, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.mutex, i8, i8, i8, i8, i16, i8, i8, %struct.sfp_eeprom_id, i32, i32, %struct.sfp_diag, %struct.delayed_work, i32, ptr, ptr, ptr }
%struct.sfp_eeprom_id = type { %struct.sfp_eeprom_base, %struct.sfp_eeprom_ext }
%struct.sfp_eeprom_base = type <{ i8, i8, i8, i64, i8, i8, i8, [6 x i8], [16 x i8], i8, [3 x i8], [16 x i8], [4 x i8], %union.anon.127, i8, i8 }>
%union.anon.127 = type { i16 }
%struct.sfp_eeprom_ext = type { i16, i8, i8, [16 x i8], [8 x i8], i8, i8, i8, i8 }
%struct.sfp_diag = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_module_eeprom = type { i32, i32, i8, i8, i8, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.103, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.104, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.105, ptr, %struct.address_space, %struct.list_head, %union.anon.106, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.103 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.104 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.106 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_sfp__390_2686_sfp_init6 = internal global ptr @sfp_init, section ".initcall6.init", align 4
@__exitcall_sfp_exit = internal global ptr @sfp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias391 = internal constant [23 x i8] c"sfp.alias=platform:sfp\00", section ".modinfo", align 1
@__UNIQUE_ID_author392 = internal constant [24 x i8] c"sfp.author=Russell King\00", section ".modinfo", align 1
@__UNIQUE_ID_file393 = internal constant [29 x i8] c"sfp.file=drivers/net/phy/sfp\00", section ".modinfo", align 1
@__UNIQUE_ID_license394 = internal constant [19 x i8] c"sfp.license=GPL v2\00", section ".modinfo", align 1
@poll_jiffies = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sfp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sfp_probe, ptr @sfp_remove, ptr @sfp_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sfp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfp\00", [28 x i8] zeroinitializer }, align 32
@sfp_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sff,sff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sff_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sff,sfp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sfp_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sfp_data = internal constant { %struct.sff_data, [24 x i8] } { %struct.sff_data { i32 31, ptr @sfp_module_supported }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/net/phy/sfp.c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c-bus\00", [24 x i8] zeroinitializer }, align 32
@sfp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 2516, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"missing 'i2c-bus' property\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sfp_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sfp_probe._entry_ptr = internal global ptr @sfp_probe._entry, section ".printk_index", align 4
@sfp_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.1, i32 2531, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sfp_probe._entry_ptr.8 = internal global ptr @sfp_probe._entry.7, section ".printk_index", align 4
@gpio_of_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"maximum-power-milliwatt\00", [40 x i8] zeroinitializer }, align 32
@sfp_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.1, i32 2571, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Host maximum power %u.%uW\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sfp_probe._entry_ptr.13 = internal global ptr @sfp_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sfp_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.1, i32 2629, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"No tx_disable pin: SFP modules will always be emitting.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sfp_probe._entry_ptr.18 = internal global ptr @sfp_probe._entry.15, section ".printk_index", align 4
@sfp_module_ops = internal constant { %struct.sfp_socket_ops, [36 x i8] } { %struct.sfp_socket_ops { ptr @sfp_attach, ptr @sfp_detach, ptr @sfp_start, ptr @sfp_stop, ptr @sfp_module_info, ptr @sfp_module_eeprom, ptr @sfp_module_eeprom_by_page }, [36 x i8] zeroinitializer }, align 32
@sfp_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sfp->sm_mutex\00", [17 x i8] zeroinitializer }, align 32
@sfp_alloc.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sfp->st_mutex\00", [17 x i8] zeroinitializer }, align 32
@sfp_alloc.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&sfp->poll)->work)\00", [57 x i8] zeroinitializer }, align 32
@sfp_alloc.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&sfp->poll)->timer\00", [43 x i8] zeroinitializer }, align 32
@sfp_alloc.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&sfp->timeout)->work)\00", [54 x i8] zeroinitializer }, align 32
@sfp_alloc.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&sfp->timeout)->timer\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sfp_check_state.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.1, ptr @.str.31, i8 2, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sfp_check_state\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %u -> %u\0A\00", [19 x i8] zeroinitializer }, align 32
@sfp_hwmon_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&sfp->hwmon_probe)->work)\00", [50 x i8] zeroinitializer }, align 32
@sfp_hwmon_init.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&sfp->hwmon_probe)->timer\00", [36 x i8] zeroinitializer }, align 32
@sfp_hwmon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.1, i32 1302, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"skipping hwmon device registration due to broken EEPROM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sfp_hwmon_probe\00", [16 x i8] zeroinitializer }, align 32
@sfp_hwmon_probe._entry_ptr = internal global ptr @sfp_hwmon_probe._entry, section ".printk_index", align 4
@sfp_hwmon_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.1, i32 1304, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"diagnostic EEPROM area cannot be read atomically to guarantee data coherency\0A\00", [50 x i8] zeroinitializer }, align 32
@sfp_hwmon_probe._entry_ptr.39 = internal global ptr @sfp_hwmon_probe._entry.37, section ".printk_index", align 4
@sfp_hwmon_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.1, i32 1314, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hwmon probe failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sfp_hwmon_probe._entry_ptr.42 = internal global ptr @sfp_hwmon_probe._entry.40, section ".printk_index", align 4
@sfp_hwmon_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.1, i32 1321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"out of memory for hwmon name\0A\00", [34 x i8] zeroinitializer }, align 32
@sfp_hwmon_probe._entry_ptr.45 = internal global ptr @sfp_hwmon_probe._entry.43, section ".printk_index", align 4
@sfp_hwmon_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @sfp_hwmon_ops, ptr @sfp_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@sfp_hwmon_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.1, i32 1335, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register hwmon device: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@sfp_hwmon_probe._entry_ptr.48 = internal global ptr @sfp_hwmon_probe._entry.46, section ".printk_index", align 4
@sfp_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @sfp_hwmon_is_visible, ptr @sfp_hwmon_read, ptr @sfp_hwmon_read_string, ptr null }, [16 x i8] zeroinitializer }, align 32
@sfp_hwmon_info = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sfp_hwmon_chip, ptr @sfp_hwmon_vcc_channel_info, ptr @sfp_hwmon_temp_channel_info, ptr @sfp_hwmon_bias_channel_info, ptr @sfp_hwmon_power_channel_info, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bias\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temperature\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCC\00", [28 x i8] zeroinitializer }, align 32
@sfp_hwmon_power_labels = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.52, ptr @.str.53], [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TX_power\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RX_power\00", [23 x i8] zeroinitializer }, align 32
@sfp_hwmon_chip = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @sfp_hwmon_chip_config }, [24 x i8] zeroinitializer }, align 32
@sfp_hwmon_vcc_channel_info = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @sfp_hwmon_vcc_config }, [24 x i8] zeroinitializer }, align 32
@sfp_hwmon_temp_channel_info = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @sfp_hwmon_temp_config }, [24 x i8] zeroinitializer }, align 32
@sfp_hwmon_bias_channel_info = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @sfp_hwmon_bias_config }, [24 x i8] zeroinitializer }, align 32
@sfp_hwmon_power_channel_info = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @sfp_hwmon_power_config }, [24 x i8] zeroinitializer }, align 32
@sfp_hwmon_chip_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@sfp_hwmon_vcc_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 62526, i32 0], [24 x i8] zeroinitializer }, align 32
@sfp_hwmon_temp_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2343594, i32 0], [24 x i8] zeroinitializer }, align 32
@sfp_hwmon_bias_config = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 62526, i32 0], [24 x i8] zeroinitializer }, align 32
@sfp_hwmon_power_config = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 511443456, i32 511443456, i32 0], [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UBNT            \00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UF-INSTANT      \00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SFP I2C Bus\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mod-def0\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"los\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx-fault\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx-disable\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rate-select0\00", [19 x i8] zeroinitializer }, align 32
@sfp_soft_get_state._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.62, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sfp_soft_get_state = private unnamed_addr constant [19 x i8] c"sfp_soft_get_state\00", align 1
@sfp_soft_get_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.sfp_soft_get_state, ptr @.str.1, i32 475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to read SFP soft status: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sfp_soft_get_state._entry_ptr = internal global ptr @sfp_soft_get_state._entry, section ".printk_index", align 4
@sfp_module_tx_disable.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.1, ptr @.str.65, i8 1, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sfp_module_tx_disable\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx disable %u -> %u\0A\00", [43 x i8] zeroinitializer }, align 32
@sfp_sm_event.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.1, ptr @.str.67, i8 2, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sfp_sm_event\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SM: enter %s:%s:%s event %s\0A\00", [35 x i8] zeroinitializer }, align 32
@sfp_sm_event.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.1, ptr @.str.68, i8 2, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SM: exit %s:%s:%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown module state\00", [43 x i8] zeroinitializer }, align 32
@mod_state_strings = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"empty\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"probe\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"waitdev\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hpower\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"waitpwr\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"present\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown device state\00", [43 x i8] zeroinitializer }, align 32
@dev_state_strings = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.78, ptr @.str.79, ptr @.str.80], [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"detached\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown state\00", [18 x i8] zeroinitializer }, align 32
@sm_state_strings = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.79, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], [52 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wait\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_phy\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_tx_fault\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wait_los\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"link_up\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_fault\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reinit\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx_disable\00", [21 x i8] zeroinitializer }, align 32
@event_strings = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.89, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], [52 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"insert\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dev_attach\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dev_detach\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_down\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dev_up\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_clear\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"los_high\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"los_low\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@sfp_sm_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.1, i32 2037, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"please wait, module slow to respond\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sfp_sm_module\00", [18 x i8] zeroinitializer }, align 32
@sfp_sm_module._entry_ptr = internal global ptr @sfp_sm_module._entry, section ".printk_index", align 4
@sfp_sm_module._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.104, ptr @.str.1, i32 2049, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sfp_sm_module._entry_ptr.106 = internal global ptr @sfp_sm_module._entry.105, section ".printk_index", align 4
@sfp_sm_mod_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.1, i32 1961, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"module removed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sfp_sm_mod_remove\00", [46 x i8] zeroinitializer }, align 32
@sfp_sm_mod_remove._entry_ptr = internal global ptr @sfp_sm_mod_remove._entry, section ".printk_index", align 4
@sfp_sm_mod_hpower._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.1, i32 1711, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read EEPROM: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sfp_sm_mod_hpower\00", [46 x i8] zeroinitializer }, align 32
@sfp_sm_mod_hpower._entry_ptr = internal global ptr @sfp_sm_mod_hpower._entry, section ".printk_index", align 4
@sfp_sm_mod_hpower._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.1, i32 1729, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to write EEPROM: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sfp_sm_mod_hpower._entry_ptr.113 = internal global ptr @sfp_sm_mod_hpower._entry.111, section ".printk_index", align 4
@sfp_sm_mod_hpower._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.110, ptr @.str.1, i32 1736, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Module switched to %u.%uW power level\0A\00", [57 x i8] zeroinitializer }, align 32
@sfp_sm_mod_hpower._entry_ptr.116 = internal global ptr @sfp_sm_mod_hpower._entry.114, section ".printk_index", align 4
@sfp_sm_mod_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.1, i32 1817, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read EEPROM: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sfp_sm_mod_probe\00", [47 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr = internal global ptr @sfp_sm_mod_probe._entry, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.1, i32 1822, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EEPROM short read: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.121 = internal global ptr @sfp_sm_mod_probe._entry.119, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.1, i32 1834, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Detected broken RTL8672/RTL9601C emulated EEPROM\0A\00", [46 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.124 = internal global ptr @sfp_sm_mod_probe._entry.122, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.1, i32 1836, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Switching to reading EEPROM to one byte at a time\0A\00", [45 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.127 = internal global ptr @sfp_sm_mod_probe._entry.125, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.1, i32 1843, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.129 = internal global ptr @sfp_sm_mod_probe._entry.128, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.1, i32 1848, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.131 = internal global ptr @sfp_sm_mod_probe._entry.130, section ".printk_index", align 4
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"COTSWORKS       \00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SFBG\00", [27 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.118, ptr @.str.1, i32 1876, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"EEPROM base structure checksum failure (0x%02x != 0x%02x)\0A\00", [37 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.136 = internal global ptr @sfp_sm_mod_probe._entry.134, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.118, ptr @.str.1, i32 1880, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"EEPROM base structure checksum failure: 0x%02x != 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.139 = internal global ptr @sfp_sm_mod_probe._entry.137, section ".printk_index", align 4
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sfp EE: \00", [23 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.1, i32 1890, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.142 = internal global ptr @sfp_sm_mod_probe._entry.141, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.1, i32 1895, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.144 = internal global ptr @sfp_sm_mod_probe._entry.143, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.118, ptr @.str.1, i32 1904, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"EEPROM extended structure checksum failure (0x%02x != 0x%02x)\0A\00", [33 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.147 = internal global ptr @sfp_sm_mod_probe._entry.145, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.118, ptr @.str.1, i32 1908, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"EEPROM extended structure checksum failure: 0x%02x != 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.150 = internal global ptr @sfp_sm_mod_probe._entry.148, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.118, ptr @.str.1, i32 1922, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"module %.*s %.*s rev %.*s sn %.*s dc %.*s\0A\00", [53 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.153 = internal global ptr @sfp_sm_mod_probe._entry.151, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.118, ptr @.str.1, i32 1928, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"module is not supported - phys id 0x%02x 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.156 = internal global ptr @sfp_sm_mod_probe._entry.154, section ".printk_index", align 4
@sfp_sm_mod_probe._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.118, ptr @.str.1, i32 1935, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"module address swap to access page 0xA2 is not supported.\0A\00", [37 x i8] zeroinitializer }, align 32
@sfp_sm_mod_probe._entry_ptr.159 = internal global ptr @sfp_sm_mod_probe._entry.157, section ".printk_index", align 4
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ALCATELLUCENT   \00", [47 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"3FE46541AA      \00", [47 x i8] zeroinitializer }, align 32
@sfp_cotsworks_fixup_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.1, i32 1775, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Rewriting fiber module EEPROM with corrected values\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sfp_cotsworks_fixup_check\00", [38 x i8] zeroinitializer }, align 32
@sfp_cotsworks_fixup_check._entry_ptr = internal global ptr @sfp_cotsworks_fixup_check._entry, section ".printk_index", align 4
@sfp_cotsworks_fixup_check._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.1, i32 1781, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to rewrite module EEPROM: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sfp_cotsworks_fixup_check._entry_ptr.166 = internal global ptr @sfp_cotsworks_fixup_check._entry.164, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sfp_cotsworks_fixup_check._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.163, ptr @.str.1, i32 1792, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Failed to update base structure checksum in fiber module EEPROM: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sfp_cotsworks_fixup_check._entry_ptr.169 = internal global ptr @sfp_cotsworks_fixup_check._entry.167, section ".printk_index", align 4
@sfp_module_parse_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.1, i32 1664, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Host does not support %u.%uW modules\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sfp_module_parse_power\00", [41 x i8] zeroinitializer }, align 32
@sfp_module_parse_power._entry_ptr = internal global ptr @sfp_module_parse_power._entry, section ".printk_index", align 4
@sfp_module_parse_power._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.1, i32 1669, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Host does not support %u.%uW modules, module left in power mode 1\0A\00", [61 x i8] zeroinitializer }, align 32
@sfp_module_parse_power._entry_ptr.174 = internal global ptr @sfp_module_parse_power._entry.172, section ".printk_index", align 4
@sfp_module_parse_power._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.171, ptr @.str.1, i32 1695, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"Address Change Sequence not supported but module requires %u.%uW, module may not be functional\0A\00", [32 x i8] zeroinitializer }, align 32
@sfp_module_parse_power._entry_ptr.177 = internal global ptr @sfp_module_parse_power._entry.175, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@sfp_sm_main._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.1, i32 2198, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no PHY detected\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sfp_sm_main\00", [20 x i8] zeroinitializer }, align 32
@sfp_sm_main._entry_ptr = internal global ptr @sfp_sm_main._entry, section ".printk_index", align 4
@sfp_sm_main._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str.1, i32 2249, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"module transmit fault recovered\0A\00", [63 x i8] zeroinitializer }, align 32
@sfp_sm_main._entry_ptr.182 = internal global ptr @sfp_sm_main._entry.180, section ".printk_index", align 4
@sfp_module_tx_enable.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.183, ptr @.str.1, ptr @.str.65, i8 1, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sfp_module_tx_enable\00", [43 x i8] zeroinitializer }, align 32
@sfp_sm_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.1, i32 1600, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"module persistently indicates fault, disabling\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sfp_sm_fault\00", [19 x i8] zeroinitializer }, align 32
@sfp_sm_fault._entry_ptr = internal global ptr @sfp_sm_fault._entry, section ".printk_index", align 4
@sfp_sm_fault._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.1, i32 1604, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"module transmit fault indicated\0A\00", [63 x i8] zeroinitializer }, align 32
@sfp_sm_fault._entry_ptr.188 = internal global ptr @sfp_sm_fault._entry.186, section ".printk_index", align 4
@sfp_sm_probe_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.1, i32 1519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mdiobus scan returned %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sfp_sm_probe_phy\00", [47 x i8] zeroinitializer }, align 32
@sfp_sm_probe_phy._entry_ptr = internal global ptr @sfp_sm_probe_phy._entry, section ".printk_index", align 4
@sfp_sm_probe_phy._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.1, i32 1526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"phy_device_register failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sfp_sm_probe_phy._entry_ptr.193 = internal global ptr @sfp_sm_probe_phy._entry.191, section ".printk_index", align 4
@sfp_sm_probe_phy._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.190, ptr @.str.1, i32 1534, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sfp_add_phy failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sfp_sm_probe_phy._entry_ptr.196 = internal global ptr @sfp_sm_probe_phy._entry.194, section ".printk_index", align 4
@sfp_module_eeprom_by_page.__msg = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Banks not supported\00", [44 x i8] zeroinitializer }, align 32
@sfp_module_eeprom_by_page.__msg.197 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Only page 0 supported\00", [42 x i8] zeroinitializer }, align 32
@sfp_module_eeprom_by_page.__msg.198 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Only address 0x50 and 0x51 supported\00", [59 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@sfp_debug_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sfp_debug_state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Module state: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Module probe attempts: %d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Device state: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Main state: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Fault recovery remaining retries: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PHY probe remaining retries: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"moddef0: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_los: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx_fault: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tx_disable: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@sff_data = internal constant { %struct.sff_data, [24 x i8] } { %struct.sff_data { i32 14, ptr @sff_module_supported }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.210 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.211 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.212 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.213 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 12]
@__sancov_gen_cov_switch_values.215 = internal global [10 x i64] [i64 8, i64 16, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 10]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.218 = internal global [4 x i64] [i64 2, i64 3, i64 2, i64 4]
@__sancov_gen_cov_switch_values.219 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 10]
@__sancov_gen_cov_switch_values.220 = internal global [4 x i64] [i64 2, i64 3, i64 2, i64 4]
@__sancov_gen_cov_switch_values.221 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 9, i64 10, i64 32, i64 42, i64 45]
@__sancov_gen_cov_switch_values.222 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.223 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9, i64 14, i64 15, i64 16, i64 17, i64 21]
@__sancov_gen_cov_switch_values.224 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 10, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.225 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 10, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.226 = internal global [12 x i64] [i64 10, i64 32, i64 9, i64 18, i64 19, i64 20, i64 21, i64 22, i64 25, i64 26, i64 27, i64 28]
@__sancov_gen_cov_switch_values.227 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.228 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9, i64 14, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.229 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.230 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.232 = internal global [11 x i64] [i64 9, i64 32, i64 9, i64 18, i64 19, i64 20, i64 21, i64 25, i64 26, i64 27, i64 28]
@__sancov_gen_cov_switch_values.233 = internal global [11 x i64] [i64 9, i64 32, i64 9, i64 18, i64 19, i64 20, i64 21, i64 25, i64 26, i64 27, i64 28]
@__sancov_gen_cov_switch_values.234 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.236 = private unnamed_addr constant [13 x i8] c"poll_jiffies\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [11 x i8] c"sfp_driver\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2670, i32 31 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2675, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant [13 x i8] c"sfp_of_match\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 303, i32 34 }
@___asan_gen_.246 = private unnamed_addr constant [9 x i8] c"sfp_data\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 297, i32 30 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2509, i32 7 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2514, i32 31 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2516, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2531, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant [14 x i8] c"gpio_of_names\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 147, i32 20 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2565, i32 39 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2570, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2601, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2628, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [15 x i8] c"sfp_module_ops\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2374, i32 36 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2456, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2457, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2458, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2459, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2404, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1370, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1301, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1303, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1314, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1321, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c"sfp_hwmon_chip_info\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1284, i32 37 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1334, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [14 x i8] c"sfp_hwmon_ops\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1191, i32 31 }
@___asan_gen_.396 = private unnamed_addr constant [15 x i8] c"sfp_hwmon_info\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1275, i32 41 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1151, i32 11 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1160, i32 11 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1169, i32 11 }
@___asan_gen_.408 = private unnamed_addr constant [23 x i8] c"sfp_hwmon_power_labels\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1138, i32 26 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1139, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1140, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [15 x i8] c"sfp_hwmon_chip\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1202, i32 40 }
@___asan_gen_.420 = private unnamed_addr constant [27 x i8] c"sfp_hwmon_vcc_channel_info\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1232, i32 40 }
@___asan_gen_.423 = private unnamed_addr constant [28 x i8] c"sfp_hwmon_temp_channel_info\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1217, i32 40 }
@___asan_gen_.426 = private unnamed_addr constant [28 x i8] c"sfp_hwmon_bias_channel_info\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1247, i32 40 }
@___asan_gen_.429 = private unnamed_addr constant [29 x i8] c"sfp_hwmon_power_channel_info\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1270, i32 40 }
@___asan_gen_.432 = private unnamed_addr constant [22 x i8] c"sfp_hwmon_chip_config\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1197, i32 12 }
@___asan_gen_.435 = private unnamed_addr constant [21 x i8] c"sfp_hwmon_vcc_config\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1222, i32 12 }
@___asan_gen_.438 = private unnamed_addr constant [22 x i8] c"sfp_hwmon_temp_config\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1207, i32 12 }
@___asan_gen_.441 = private unnamed_addr constant [22 x i8] c"sfp_hwmon_bias_config\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1237, i32 12 }
@___asan_gen_.444 = private unnamed_addr constant [23 x i8] c"sfp_hwmon_power_config\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1252, i32 12 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 290, i32 36 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 291, i32 34 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 435, i32 18 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 148, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 149, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 150, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 151, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 152, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 473, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1402, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2263, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2273, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 88, i32 10 }
@___asan_gen_.501 = private unnamed_addr constant [18 x i8] c"mod_state_strings\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 75, i32 28 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 76, i32 20 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 77, i32 20 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 78, i32 20 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 79, i32 22 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 80, i32 21 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 81, i32 22 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 82, i32 22 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 101, i32 10 }
@___asan_gen_.528 = private unnamed_addr constant [18 x i8] c"dev_state_strings\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 92, i32 27 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 93, i32 23 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 94, i32 19 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 95, i32 17 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 143, i32 10 }
@___asan_gen_.543 = private unnamed_addr constant [17 x i8] c"sm_state_strings\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 126, i32 27 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 128, i32 17 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 129, i32 17 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 130, i32 17 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 131, i32 21 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 132, i32 26 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 133, i32 21 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 134, i32 20 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 135, i32 21 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 136, i32 19 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 137, i32 23 }
@___asan_gen_.576 = private unnamed_addr constant [14 x i8] c"event_strings\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 105, i32 27 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 106, i32 19 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 107, i32 19 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 108, i32 23 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 109, i32 23 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 110, i32 21 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 111, i32 19 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 113, i32 21 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 114, i32 21 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 115, i32 20 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 116, i32 20 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2036, i32 6 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2049, i32 4 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1961, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1711, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1729, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1734, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1817, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1822, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1833, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1835, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1842, i32 5 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1848, i32 4 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1857, i32 43 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1858, i32 46 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1874, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1878, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1881, i32 29 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1890, i32 4 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1895, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1902, i32 4 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1906, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1917, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1926, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1934, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1942, i32 35 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1943, i32 33 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1775, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1781, i32 4 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1792, i32 4 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1662, i32 4 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1667, i32 4 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1693, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2198, i32 5 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2249, i32 4 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1410, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1599, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1604, i32 4 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1519, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1526, i32 3 }
@___asan_gen_.837 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1534, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2355, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2360, i32 3 }
@___asan_gen_.849 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 2366, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1446, i32 22 }
@___asan_gen_.855 = private unnamed_addr constant [21 x i8] c"sfp_debug_state_fops\00", align 1
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1440, i32 1 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1421, i32 16 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1423, i32 16 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1426, i32 16 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1428, i32 16 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1430, i32 16 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1432, i32 16 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1434, i32 16 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1435, i32 16 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1436, i32 16 }
@___asan_gen_.885 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 1437, i32 16 }
@___asan_gen_.888 = private unnamed_addr constant [9 x i8] c"sff_data\00", align 1
@___asan_gen_.889 = private constant [25 x i8] c"../drivers/net/phy/sfp.c\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.889, i32 273, i32 30 }
@llvm.compiler.used = appending global [269 x ptr] [ptr @__UNIQUE_ID_alias391, ptr @__UNIQUE_ID_author392, ptr @__UNIQUE_ID_file393, ptr @__UNIQUE_ID_license394, ptr @__exitcall_sfp_exit, ptr @__initcall__kmod_sfp__390_2686_sfp_init6, ptr @sfp_cotsworks_fixup_check._entry, ptr @sfp_cotsworks_fixup_check._entry.164, ptr @sfp_cotsworks_fixup_check._entry.167, ptr @sfp_cotsworks_fixup_check._entry_ptr, ptr @sfp_cotsworks_fixup_check._entry_ptr.166, ptr @sfp_cotsworks_fixup_check._entry_ptr.169, ptr @sfp_hwmon_probe._entry, ptr @sfp_hwmon_probe._entry.37, ptr @sfp_hwmon_probe._entry.40, ptr @sfp_hwmon_probe._entry.43, ptr @sfp_hwmon_probe._entry.46, ptr @sfp_hwmon_probe._entry_ptr, ptr @sfp_hwmon_probe._entry_ptr.39, ptr @sfp_hwmon_probe._entry_ptr.42, ptr @sfp_hwmon_probe._entry_ptr.45, ptr @sfp_hwmon_probe._entry_ptr.48, ptr @sfp_module_parse_power._entry, ptr @sfp_module_parse_power._entry.172, ptr @sfp_module_parse_power._entry.175, ptr @sfp_module_parse_power._entry_ptr, ptr @sfp_module_parse_power._entry_ptr.174, ptr @sfp_module_parse_power._entry_ptr.177, ptr @sfp_probe._entry, ptr @sfp_probe._entry.10, ptr @sfp_probe._entry.15, ptr @sfp_probe._entry.7, ptr @sfp_probe._entry_ptr, ptr @sfp_probe._entry_ptr.13, ptr @sfp_probe._entry_ptr.18, ptr @sfp_probe._entry_ptr.8, ptr @sfp_sm_fault._entry, ptr @sfp_sm_fault._entry.186, ptr @sfp_sm_fault._entry_ptr, ptr @sfp_sm_fault._entry_ptr.188, ptr @sfp_sm_main._entry, ptr @sfp_sm_main._entry.180, ptr @sfp_sm_main._entry_ptr, ptr @sfp_sm_main._entry_ptr.182, ptr @sfp_sm_mod_hpower._entry, ptr @sfp_sm_mod_hpower._entry.111, ptr @sfp_sm_mod_hpower._entry.114, ptr @sfp_sm_mod_hpower._entry_ptr, ptr @sfp_sm_mod_hpower._entry_ptr.113, ptr @sfp_sm_mod_hpower._entry_ptr.116, ptr @sfp_sm_mod_probe._entry, ptr @sfp_sm_mod_probe._entry.119, ptr @sfp_sm_mod_probe._entry.122, ptr @sfp_sm_mod_probe._entry.125, ptr @sfp_sm_mod_probe._entry.128, ptr @sfp_sm_mod_probe._entry.130, ptr @sfp_sm_mod_probe._entry.134, ptr @sfp_sm_mod_probe._entry.137, ptr @sfp_sm_mod_probe._entry.141, ptr @sfp_sm_mod_probe._entry.143, ptr @sfp_sm_mod_probe._entry.145, ptr @sfp_sm_mod_probe._entry.148, ptr @sfp_sm_mod_probe._entry.151, ptr @sfp_sm_mod_probe._entry.154, ptr @sfp_sm_mod_probe._entry.157, ptr @sfp_sm_mod_probe._entry_ptr, ptr @sfp_sm_mod_probe._entry_ptr.121, ptr @sfp_sm_mod_probe._entry_ptr.124, ptr @sfp_sm_mod_probe._entry_ptr.127, ptr @sfp_sm_mod_probe._entry_ptr.129, ptr @sfp_sm_mod_probe._entry_ptr.131, ptr @sfp_sm_mod_probe._entry_ptr.136, ptr @sfp_sm_mod_probe._entry_ptr.139, ptr @sfp_sm_mod_probe._entry_ptr.142, ptr @sfp_sm_mod_probe._entry_ptr.144, ptr @sfp_sm_mod_probe._entry_ptr.147, ptr @sfp_sm_mod_probe._entry_ptr.150, ptr @sfp_sm_mod_probe._entry_ptr.153, ptr @sfp_sm_mod_probe._entry_ptr.156, ptr @sfp_sm_mod_probe._entry_ptr.159, ptr @sfp_sm_mod_remove._entry, ptr @sfp_sm_mod_remove._entry_ptr, ptr @sfp_sm_module._entry, ptr @sfp_sm_module._entry.105, ptr @sfp_sm_module._entry_ptr, ptr @sfp_sm_module._entry_ptr.106, ptr @sfp_sm_probe_phy._entry, ptr @sfp_sm_probe_phy._entry.191, ptr @sfp_sm_probe_phy._entry.194, ptr @sfp_sm_probe_phy._entry_ptr, ptr @sfp_sm_probe_phy._entry_ptr.193, ptr @sfp_sm_probe_phy._entry_ptr.196, ptr @sfp_soft_get_state._entry, ptr @sfp_soft_get_state._entry_ptr, ptr @poll_jiffies, ptr @sfp_driver, ptr @.str, ptr @sfp_of_match, ptr @sfp_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @gpio_of_names, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @sfp_module_ops, ptr @sfp_alloc.__key, ptr @.str.19, ptr @sfp_alloc.__key.20, ptr @.str.21, ptr @sfp_alloc.__key.22, ptr @.str.23, ptr @sfp_alloc.__key.24, ptr @.str.25, ptr @sfp_alloc.__key.26, ptr @.str.27, ptr @sfp_alloc.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @sfp_hwmon_init.__key, ptr @.str.32, ptr @sfp_hwmon_init.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @sfp_hwmon_chip_info, ptr @.str.47, ptr @sfp_hwmon_ops, ptr @sfp_hwmon_info, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @sfp_hwmon_power_labels, ptr @.str.52, ptr @.str.53, ptr @sfp_hwmon_chip, ptr @sfp_hwmon_vcc_channel_info, ptr @sfp_hwmon_temp_channel_info, ptr @sfp_hwmon_bias_channel_info, ptr @sfp_hwmon_power_channel_info, ptr @sfp_hwmon_chip_config, ptr @sfp_hwmon_vcc_config, ptr @sfp_hwmon_temp_config, ptr @sfp_hwmon_bias_config, ptr @sfp_hwmon_power_config, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @sfp_soft_get_state._rs, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @mod_state_strings, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @dev_state_strings, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @sm_state_strings, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @event_strings, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.138, ptr @.str.140, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.195, ptr @sfp_module_eeprom_by_page.__msg, ptr @sfp_module_eeprom_by_page.__msg.197, ptr @sfp_module_eeprom_by_page.__msg.198, ptr @.str.199, ptr @sfp_debug_state_fops, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @sff_data], section "llvm.metadata"
@0 = internal global [219 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_jiffies to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_of_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_module_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_alloc.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_alloc.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_alloc.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_alloc.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_alloc.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_init.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_power_labels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_chip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_vcc_channel_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_temp_channel_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_bias_channel_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_power_channel_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_chip_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_vcc_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_temp_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_bias_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_hwmon_power_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_soft_get_state._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_soft_get_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mod_state_strings to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_state_strings to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm_state_strings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_strings to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_module._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_hpower._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_hpower._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_hpower._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_mod_probe._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_cotsworks_fixup_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_cotsworks_fixup_check._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_cotsworks_fixup_check._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_module_parse_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_module_parse_power._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_module_parse_power._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_main._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_main._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_fault._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_probe_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_probe_phy._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_sm_probe_phy._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_module_eeprom_by_page.__msg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_module_eeprom_by_page.__msg.197 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_module_eeprom_by_page.__msg.198 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfp_debug_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sff_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @poll_jiffies, align 4
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sfp_driver, ptr noundef null) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfp_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @sfp_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 804) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %sfp_alloc.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sfp_alloc.exit:                                   ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i.i, align 8
  %sm_mutex.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %sm_mutex.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @sfp_alloc.__key) #12
  %st_mutex.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %st_mutex.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @sfp_alloc.__key.20) #12
  %poll.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 18
  tail call void @__init_work(ptr noundef %poll.i, i32 noundef 0) #12
  %2 = ptrtoint ptr %poll.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %poll.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 18, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @sfp_alloc.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry14.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 18, i32 0, i32 1
  %3 = ptrtoint ptr %entry14.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry14.i, ptr %entry14.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 18, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry14.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 18, i32 0, i32 2
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sfp_poll, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.25, ptr noundef nonnull @sfp_alloc.__key.24) #12
  %timeout.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 19
  tail call void @__init_work(ptr noundef %timeout.i, i32 noundef 0) #12
  %6 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %timeout.i, align 4
  %lockdep_map35.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 19, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map35.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @sfp_alloc.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry38.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 19, i32 0, i32 1
  %7 = ptrtoint ptr %entry38.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry38.i, ptr %entry38.i, align 8
  %prev.i69.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 19, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i69.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry38.i, ptr %prev.i69.i, align 4
  %func41.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 19, i32 0, i32 2
  %9 = ptrtoint ptr %func41.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sfp_timeout, ptr %func41.i, align 8
  %timer46.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 19, i32 1
  tail call void @init_timer_key(ptr noundef %timer46.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.29, ptr noundef nonnull @sfp_alloc.__key.28) #12
  %hwmon_probe.i.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 32
  tail call void @__init_work(ptr noundef %hwmon_probe.i.i, i32 noundef 0) #12
  %10 = ptrtoint ptr %hwmon_probe.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %hwmon_probe.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 32, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @sfp_hwmon_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry8.i.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 32, i32 0, i32 1
  %11 = ptrtoint ptr %entry8.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry8.i.i, ptr %entry8.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 32, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry8.i.i, ptr %prev.i.i.i, align 8
  %func.i.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 32, i32 0, i32 2
  %13 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sfp_hwmon_probe, ptr %func.i.i, align 4
  %timer.i.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 32, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.34, ptr noundef nonnull @sfp_hwmon_init.__key.33) #12
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sfp_alloc.exit.if.then_crit_edge, label %if.end

sfp_alloc.exit.if.then_crit_edge:                 ; preds = %sfp_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %sfp_alloc.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i314 = phi ptr [ %call7.i.i.i, %sfp_alloc.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %14 = ptrtoint ptr %retval.0.i314 to i32
  br label %cleanup198

if.end:                                           ; preds = %sfp_alloc.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i.i, align 8
  %call4 = tail call i32 @devm_add_action(ptr noundef %17, ptr noundef nonnull @sfp_cleanup, ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup198_crit_edge, label %if.end6

if.end.cleanup198_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup198

if.end6:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sfp_data, ptr %type, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %if.end6.cleanup198_crit_edge, label %if.then8

if.end6.cleanup198_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup198

if.then8:                                         ; preds = %if.end6
  %call11 = tail call ptr @of_match_node(ptr noundef nonnull @sfp_of_match, ptr noundef nonnull %20) #12
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end, label %if.end37, !prof !443

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2509, i32 noundef 9, ptr noundef null) #12
  br label %cleanup198

if.end37:                                         ; preds = %if.then8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call11, i32 0, i32 3
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %type, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #12
  %24 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %20, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i298 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i298, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #12
  br label %do.end44

of_parse_phandle.exit:                            ; preds = %if.end37
  %25 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #12
  %tobool40.not = icmp eq ptr %26, null
  br i1 %tobool40.not, label %of_parse_phandle.exit.do.end44_crit_edge, label %if.end73

of_parse_phandle.exit.do.end44_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

do.end44:                                         ; preds = %of_parse_phandle.exit.do.end44_crit_edge, %of_parse_phandle.exit.thread
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.3) #16
  br label %cleanup198

if.end73:                                         ; preds = %of_parse_phandle.exit
  %call47 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %26) #12
  call void @of_node_put(ptr noundef nonnull %26) #12
  %tobool74.not = icmp eq ptr %call47, null
  br i1 %tobool74.not, label %if.end73.cleanup198_crit_edge, label %if.end76

if.end73.cleanup198_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup198

if.end76:                                         ; preds = %if.end73
  %algo.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call47, i32 0, i32 2
  %29 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %algo.i.i.i, align 8
  %functionality.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %functionality.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %functionality.i.i.i, align 4
  %call.i.i.i = call i32 %32(ptr noundef nonnull %call47) #12
  %and.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i301 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i301, label %if.end76.if.then79_crit_edge, label %if.end.i302

if.end76.if.then79_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

if.end.i302:                                      ; preds = %if.end76
  %i2c1.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %i2c1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call47, ptr %i2c1.i, align 4
  %read.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @sfp_i2c_read, ptr %read.i, align 8
  %write.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 11
  %35 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @sfp_i2c_write, ptr %write.i, align 4
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i.i, align 8
  %call2.i = call ptr @mdio_i2c_alloc(ptr noundef %37, ptr noundef nonnull %call47) #12
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sfp_i2c_configure.exit, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i302
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %call2.i, i32 0, i32 1
  %38 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.56, ptr %name.i, align 4
  %phy_mask.i = getelementptr inbounds %struct.mii_bus, ptr %call2.i, i32 0, i32 13
  %39 = ptrtoint ptr %phy_mask.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %phy_mask.i, align 8
  %call7.i = call i32 @__mdiobus_register(ptr noundef %call2.i, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i303 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i303, label %if.then8.i, label %sfp_i2c_configure.exit.thread

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mdiobus_free(ptr noundef %call2.i) #12
  br label %if.then79

sfp_i2c_configure.exit.thread:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %i2c_mii10.i = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %i2c_mii10.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call2.i, ptr %i2c_mii10.i, align 8
  br label %for.body.preheader

sfp_i2c_configure.exit:                           ; preds = %if.end.i302
  %41 = ptrtoint ptr %call2.i to i32
  %cmp78 = icmp slt ptr %call2.i, null
  br i1 %cmp78, label %sfp_i2c_configure.exit.if.then79_crit_edge, label %sfp_i2c_configure.exit.for.body.preheader_crit_edge

sfp_i2c_configure.exit.for.body.preheader_crit_edge: ; preds = %sfp_i2c_configure.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

sfp_i2c_configure.exit.if.then79_crit_edge:       ; preds = %sfp_i2c_configure.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

for.body.preheader:                               ; preds = %sfp_i2c_configure.exit.for.body.preheader_crit_edge, %sfp_i2c_configure.exit.thread
  %42 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %22, align 4
  %and = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool82.not = icmp eq i32 %and, 0
  br i1 %tobool82.not, label %for.body.preheader.for.inc_crit_edge, label %if.then83

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then79:                                        ; preds = %sfp_i2c_configure.exit.if.then79_crit_edge, %if.then8.i, %if.end76.if.then79_crit_edge
  %retval.0.i304323 = phi i32 [ %41, %sfp_i2c_configure.exit.if.then79_crit_edge ], [ -22, %if.end76.if.then79_crit_edge ], [ %call7.i, %if.then8.i ]
  call void @i2c_put_adapter(ptr noundef nonnull %call47) #12
  br label %cleanup198

if.then83:                                        ; preds = %for.body.preheader
  %44 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i.i, align 8
  %call86 = call ptr @devm_gpiod_get_optional(ptr noundef %45, ptr noundef nonnull @.str.57, i32 noundef 1) #12
  %arrayidx87 = getelementptr %struct.sfp, ptr %call7.i.i.i, i32 0, i32 12, i32 0
  %46 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call86, ptr %arrayidx87, align 8
  %cmp.i305 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i305, label %if.then83.if.then91_crit_edge, label %if.then83.for.inc_crit_edge

if.then83.for.inc_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then83.if.then91_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then91

if.then91:                                        ; preds = %if.then83.4.if.then91_crit_edge, %if.then83.3.if.then91_crit_edge, %if.then83.2.if.then91_crit_edge, %if.then83.1.if.then91_crit_edge, %if.then83.if.then91_crit_edge
  %call86.lcssa = phi ptr [ %call86, %if.then83.if.then91_crit_edge ], [ %call86.1, %if.then83.1.if.then91_crit_edge ], [ %call86.2, %if.then83.2.if.then91_crit_edge ], [ %call86.3, %if.then83.3.if.then91_crit_edge ], [ %call86.4, %if.then83.4.if.then91_crit_edge ]
  %47 = ptrtoint ptr %call86.lcssa to i32
  br label %cleanup198

for.inc:                                          ; preds = %if.then83.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %48 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %22, align 4
  %and.1 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool82.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool82.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then83.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then83.1:                                      ; preds = %for.inc
  %50 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i.i, align 8
  %call86.1 = call ptr @devm_gpiod_get_optional(ptr noundef %51, ptr noundef nonnull @.str.58, i32 noundef 1) #12
  %arrayidx87.1 = getelementptr %struct.sfp, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %52 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call86.1, ptr %arrayidx87.1, align 4
  %cmp.i305.1 = icmp ugt ptr %call86.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i305.1, label %if.then83.1.if.then91_crit_edge, label %if.then83.1.for.inc.1_crit_edge

if.then83.1.for.inc.1_crit_edge:                  ; preds = %if.then83.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then83.1.if.then91_crit_edge:                  ; preds = %if.then83.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then91

for.inc.1:                                        ; preds = %if.then83.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %53 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %22, align 4
  %and.2 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool82.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool82.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then83.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then83.2:                                      ; preds = %for.inc.1
  %55 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call7.i.i.i, align 8
  %call86.2 = call ptr @devm_gpiod_get_optional(ptr noundef %56, ptr noundef nonnull @.str.59, i32 noundef 1) #12
  %arrayidx87.2 = getelementptr %struct.sfp, ptr %call7.i.i.i, i32 0, i32 12, i32 2
  %57 = ptrtoint ptr %arrayidx87.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call86.2, ptr %arrayidx87.2, align 8
  %cmp.i305.2 = icmp ugt ptr %call86.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i305.2, label %if.then83.2.if.then91_crit_edge, label %if.then83.2.for.inc.2_crit_edge

if.then83.2.for.inc.2_crit_edge:                  ; preds = %if.then83.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then83.2.if.then91_crit_edge:                  ; preds = %if.then83.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then91

for.inc.2:                                        ; preds = %if.then83.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %58 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %22, align 4
  %and.3 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool82.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool82.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then83.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then83.3:                                      ; preds = %for.inc.2
  %60 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call7.i.i.i, align 8
  %call86.3 = call ptr @devm_gpiod_get_optional(ptr noundef %61, ptr noundef nonnull @.str.60, i32 noundef 0) #12
  %arrayidx87.3 = getelementptr %struct.sfp, ptr %call7.i.i.i, i32 0, i32 12, i32 3
  %62 = ptrtoint ptr %arrayidx87.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call86.3, ptr %arrayidx87.3, align 4
  %cmp.i305.3 = icmp ugt ptr %call86.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i305.3, label %if.then83.3.if.then91_crit_edge, label %if.then83.3.for.inc.3_crit_edge

if.then83.3.for.inc.3_crit_edge:                  ; preds = %if.then83.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then83.3.if.then91_crit_edge:                  ; preds = %if.then83.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then91

for.inc.3:                                        ; preds = %if.then83.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %63 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %22, align 4
  %and.4 = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool82.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool82.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then83.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then83.4:                                      ; preds = %for.inc.3
  %65 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i.i, align 8
  %call86.4 = call ptr @devm_gpiod_get_optional(ptr noundef %66, ptr noundef nonnull @.str.61, i32 noundef 0) #12
  %arrayidx87.4 = getelementptr %struct.sfp, ptr %call7.i.i.i, i32 0, i32 12, i32 4
  %67 = ptrtoint ptr %arrayidx87.4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call86.4, ptr %arrayidx87.4, align 8
  %cmp.i305.4 = icmp ugt ptr %call86.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i305.4, label %if.then83.4.if.then91_crit_edge, label %if.then83.4.for.inc.4_crit_edge

if.then83.4.for.inc.4_crit_edge:                  ; preds = %if.then83.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then83.4.if.then91_crit_edge:                  ; preds = %if.then83.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then91

for.inc.4:                                        ; preds = %if.then83.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %get_state = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 8
  %68 = ptrtoint ptr %get_state to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @sfp_gpio_get_state, ptr %get_state, align 8
  %set_state = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 9
  %69 = ptrtoint ptr %set_state to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @sfp_gpio_set_state, ptr %set_state, align 4
  %gpio97 = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 12
  %70 = ptrtoint ptr %gpio97 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gpio97, align 8
  %tobool99.not = icmp eq ptr %71, null
  br i1 %tobool99.not, label %if.then100, label %for.inc.4.if.end102_crit_edge

for.inc.4.if.end102_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then100:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %get_state to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @sff_gpio_get_state, ptr %get_state, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %for.inc.4.if.end102_crit_edge
  %max_power_mW = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 7
  %call.i306 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %max_power_mW, i32 noundef 1) #12
  %73 = ptrtoint ptr %max_power_mW to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_power_mW, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool106.not = icmp eq i32 %74, 0
  br i1 %tobool106.not, label %if.then107, label %if.end102.do.end112_crit_edge

if.end102.do.end112_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112

if.then107:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %max_power_mW to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1000, ptr %max_power_mW, align 4
  br label %do.end112

do.end112:                                        ; preds = %if.then107, %if.end102.do.end112_crit_edge
  %76 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call7.i.i.i, align 8
  %78 = ptrtoint ptr %max_power_mW to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_power_mW, align 4
  %div = udiv i32 %79, 1000
  %div116 = udiv i32 %79, 100
  %rem = urem i32 %div116, 10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.11, i32 noundef %div, i32 noundef %rem) #16
  %call117 = call fastcc i32 @sfp_get_state(ptr noundef nonnull %call7.i.i.i)
  %or = or i32 %call117, 8
  %state = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 17
  %80 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or, ptr %state, align 4
  %arrayidx119 = getelementptr %struct.sfp, ptr %call7.i.i.i, i32 0, i32 12, i32 4
  %81 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx119, align 8
  %tobool120.not = icmp eq ptr %82, null
  br i1 %tobool120.not, label %do.end112.if.end128_crit_edge, label %land.lhs.true

do.end112.if.end128_crit_edge:                    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

land.lhs.true:                                    ; preds = %do.end112
  %call123 = call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %82) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %land.lhs.true.if.end128_crit_edge, label %if.then125

land.lhs.true.if.end128_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then125:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %state, align 4
  %or127 = or i32 %84, 16
  store i32 %or127, ptr %state, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %land.lhs.true.if.end128_crit_edge, %do.end112.if.end128_crit_edge
  %85 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state, align 4
  call fastcc void @sfp_set_state(ptr noundef nonnull %call7.i.i.i, i32 noundef %86)
  call fastcc void @sfp_module_tx_disable(ptr noundef nonnull %call7.i.i.i)
  %87 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %state, align 4
  %and131 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end128.if.end134_crit_edge, label %if.then133

if.end128.if.end134_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then133:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  call void @rtnl_lock() #12
  call fastcc void @sfp_sm_event(ptr noundef nonnull %call7.i.i.i, i32 noundef 0)
  call void @rtnl_unlock() #12
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end128.if.end134_crit_edge
  %need_poll173 = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 14
  br label %for.body137

for.body137:                                      ; preds = %for.inc175.for.body137_crit_edge, %if.end134
  %i.1326 = phi i32 [ 0, %if.end134 ], [ %inc176, %for.inc175.for.body137_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1326)
  %89 = icmp ult i32 %i.1326, 3
  br i1 %89, label %lor.lhs.false140, label %for.body137.for.inc175_crit_edge

for.body137.for.inc175_crit_edge:                 ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc175

lor.lhs.false140:                                 ; preds = %for.body137
  %arrayidx142 = getelementptr %struct.sfp, ptr %call7.i.i.i, i32 0, i32 12, i32 %i.1326
  %90 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx142, align 4
  %tobool143.not = icmp eq ptr %91, null
  br i1 %tobool143.not, label %lor.lhs.false140.for.inc175_crit_edge, label %if.end145

lor.lhs.false140.for.inc175_crit_edge:            ; preds = %lor.lhs.false140
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc175

if.end145:                                        ; preds = %lor.lhs.false140
  %call148 = call i32 @gpiod_to_irq(ptr noundef nonnull %91) #12
  %arrayidx149 = getelementptr %struct.sfp, ptr %call7.i.i.i, i32 0, i32 13, i32 %i.1326
  %92 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call148, ptr %arrayidx149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp152 = icmp slt i32 %call148, 0
  br i1 %cmp152, label %if.end145.for.inc175.sink.split_crit_edge, label %if.end156

if.end145.for.inc175.sink.split_crit_edge:        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc175.sink.split

if.end156:                                        ; preds = %if.end145
  %93 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call7.i.i.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i307 = icmp eq ptr %96, null
  br i1 %tobool.not.i307, label %if.end.i308, label %if.end156.dev_name.exit_crit_edge

if.end156.dev_name.exit_crit_edge:                ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i308:                                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %94, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i308, %if.end156.dev_name.exit_crit_edge
  %retval.0.i309 = phi ptr [ %98, %if.end.i308 ], [ %96, %if.end156.dev_name.exit_crit_edge ]
  %arrayidx160 = getelementptr [5 x ptr], ptr @gpio_of_names, i32 0, i32 %i.1326
  %99 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx160, align 4
  %call161 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %94, i32 noundef 3264, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i309, ptr noundef %100) #12
  %tobool162.not = icmp eq ptr %call161, null
  br i1 %tobool162.not, label %dev_name.exit.cleanup198_crit_edge, label %if.end164

dev_name.exit.cleanup198_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup198

if.end164:                                        ; preds = %dev_name.exit
  %101 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call7.i.i.i, align 8
  %103 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx149, align 4
  %call168 = call i32 @devm_request_threaded_irq(ptr noundef %102, i32 noundef %104, ptr noundef null, ptr noundef nonnull @sfp_irq, i32 noundef 8195, ptr noundef nonnull %call161, ptr noundef %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end164.for.inc175_crit_edge, label %if.end164.for.inc175.sink.split_crit_edge

if.end164.for.inc175.sink.split_crit_edge:        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc175.sink.split

if.end164.for.inc175_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc175

for.inc175.sink.split:                            ; preds = %if.end164.for.inc175.sink.split_crit_edge, %if.end145.for.inc175.sink.split_crit_edge
  %105 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %arrayidx149, align 4
  %106 = ptrtoint ptr %need_poll173 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %need_poll173, align 8
  br label %for.inc175

for.inc175:                                       ; preds = %for.inc175.sink.split, %if.end164.for.inc175_crit_edge, %lor.lhs.false140.for.inc175_crit_edge, %for.body137.for.inc175_crit_edge
  %inc176 = add nuw nsw i32 %i.1326, 1
  %exitcond.not = icmp eq i32 %inc176, 5
  br i1 %exitcond.not, label %for.end177, label %for.inc175.for.body137_crit_edge

for.inc175.for.body137_crit_edge:                 ; preds = %for.inc175
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body137

for.end177:                                       ; preds = %for.inc175
  %107 = ptrtoint ptr %need_poll173 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %need_poll173, align 8, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool179.not = icmp eq i8 %108, 0
  br i1 %tobool179.not, label %for.end177.if.end182_crit_edge, label %if.then180

for.end177.if.end182_crit_edge:                   ; preds = %for.end177
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end182

if.then180:                                       ; preds = %for.end177
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %109 = load ptr, ptr @system_wq, align 4
  %.b = load i1, ptr @poll_jiffies, align 4
  %110 = select i1 %.b, i32 10, i32 0
  %call.i310 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %109, ptr noundef %poll.i, i32 noundef %110) #12
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %for.end177.if.end182_crit_edge
  %arrayidx184 = getelementptr %struct.sfp, ptr %call7.i.i.i, i32 0, i32 12, i32 3
  %111 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx184, align 4
  %tobool185.not = icmp eq ptr %112, null
  br i1 %tobool185.not, label %do.end189, label %if.end182.if.end191_crit_edge

if.end182.if.end191_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

do.end189:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %call7.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %114, ptr noundef nonnull @.str.16) #16
  br label %if.end191

if.end191:                                        ; preds = %do.end189, %if.end182.if.end191_crit_edge
  %115 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call7.i.i.i, align 8
  %call193 = call ptr @sfp_register_socket(ptr noundef %116, ptr noundef %call7.i.i.i, ptr noundef nonnull @sfp_module_ops) #12
  %sfp_bus = getelementptr inbounds %struct.sfp, ptr %call7.i.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %sfp_bus to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call193, ptr %sfp_bus, align 4
  %tobool195.not = icmp eq ptr %call193, null
  br i1 %tobool195.not, label %if.end191.cleanup198_crit_edge, label %if.end197

if.end191.cleanup198_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup198

if.end197:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @sfp_debugfs_init(ptr noundef %call7.i.i.i)
  br label %cleanup198

cleanup198:                                       ; preds = %if.end197, %if.end191.cleanup198_crit_edge, %dev_name.exit.cleanup198_crit_edge, %if.then91, %if.then79, %if.end73.cleanup198_crit_edge, %do.end44, %do.end, %if.end6.cleanup198_crit_edge, %if.end.cleanup198_crit_edge, %if.then
  %retval.2 = phi i32 [ %14, %if.then ], [ %retval.0.i304323, %if.then79 ], [ %47, %if.then91 ], [ 0, %if.end197 ], [ %call4, %if.end.cleanup198_crit_edge ], [ -517, %if.end73.cleanup198_crit_edge ], [ -12, %if.end191.cleanup198_crit_edge ], [ -22, %if.end6.cleanup198_crit_edge ], [ -22, %do.end ], [ -19, %do.end44 ], [ -12, %dev_name.exit.cleanup198_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs_dir.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #12
  %sfp_bus = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sfp_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sfp_bus, align 4
  tail call void @sfp_unregister_socket(ptr noundef %5) #12
  tail call void @rtnl_lock() #12
  tail call fastcc void @sfp_sm_event(ptr noundef %1, i32 noundef 1)
  tail call void @rtnl_unlock() #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfp_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.sfp, ptr %1, i32 0, i32 13, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @devm_free_irq(ptr noundef %5, i32 noundef %3, ptr noundef %1) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.sfp, ptr %1, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @devm_free_irq(ptr noundef %9, i32 noundef %7, ptr noundef %1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.sfp, ptr %1, i32 0, i32 13, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.2 = icmp eq i32 %11, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @devm_free_irq(ptr noundef %13, i32 noundef %11, ptr noundef %1) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.sfp, ptr %1, i32 0, i32 13, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.3 = icmp eq i32 %15, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void @devm_free_irq(ptr noundef %17, i32 noundef %15, ptr noundef %1) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.sfp, ptr %1, i32 0, i32 13, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.4 = icmp eq i32 %19, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void @devm_free_irq(ptr noundef %21, i32 noundef %19, ptr noundef %1) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %poll = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 18
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %poll) #12
  %timeout = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 19
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfp_cleanup(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon_probe.i = getelementptr inbounds %struct.sfp, ptr %data, i32 0, i32 32
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hwmon_probe.i) #12
  %poll = getelementptr inbounds %struct.sfp, ptr %data, i32 0, i32 18
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %poll) #12
  %timeout = getelementptr inbounds %struct.sfp, ptr %data, i32 0, i32 19
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout) #12
  %i2c_mii = getelementptr inbounds %struct.sfp, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %i2c_mii to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_mii, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mdiobus_unregister(ptr noundef nonnull %1) #12
  %2 = ptrtoint ptr %i2c_mii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_mii, align 4
  tail call void @mdiobus_free(ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c = getelementptr inbounds %struct.sfp, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @i2c_put_adapter(ptr noundef nonnull %5) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef %data) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_gpio_get_state(ptr nocapture noundef readonly %sfp) #0 align 64 {
lor.lhs.false:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx2 = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 0
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false.lor.lhs.false.1_crit_edge, label %if.end

lor.lhs.false.lor.lhs.false.1_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.1

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp ne i32 %call, 0
  %spec.select = zext i1 %tobool5.not to i32
  br label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %if.end, %lor.lhs.false.lor.lhs.false.1_crit_edge
  %state.1 = phi i32 [ 0, %lor.lhs.false.lor.lhs.false.1_crit_edge ], [ %spec.select, %if.end ]
  %arrayidx2.1 = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %lor.lhs.false.1.lor.lhs.false.2_crit_edge, label %if.end.1

lor.lhs.false.1.lor.lhs.false.2_crit_edge:        ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.2

if.end.1:                                         ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #14
  %call.1 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool5.not.1 = icmp eq i32 %call.1, 0
  %or.1 = or i32 %state.1, 2
  %spec.select18 = select i1 %tobool5.not.1, i32 %state.1, i32 %or.1
  br label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %if.end.1, %lor.lhs.false.1.lor.lhs.false.2_crit_edge
  %state.1.1 = phi i32 [ %state.1, %lor.lhs.false.1.lor.lhs.false.2_crit_edge ], [ %spec.select18, %if.end.1 ]
  %arrayidx2.2 = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %lor.lhs.false.2.for.inc.4_crit_edge, label %if.end.2

lor.lhs.false.2.for.inc.4_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end.2:                                         ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #14
  %call.2 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool5.not.2 = icmp eq i32 %call.2, 0
  %or.2 = or i32 %state.1.1, 4
  %spec.select19 = select i1 %tobool5.not.2, i32 %state.1.1, i32 %or.2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.2, %lor.lhs.false.2.for.inc.4_crit_edge
  %state.1.2 = phi i32 [ %state.1.1, %lor.lhs.false.2.for.inc.4_crit_edge ], [ %spec.select19, %if.end.2 ]
  ret i32 %state.1.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfp_gpio_set_state(ptr nocapture noundef readonly %sfp, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx15 = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 3
  %0 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool16.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %and5 = and i32 %state, 8
  %call = tail call i32 @gpiod_direction_output(ptr noundef nonnull %1, i32 noundef %and5) #12
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %and6 = and i32 %state, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end29_crit_edge, label %if.then8

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx10 = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 4
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx10, align 4
  %call12 = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef %and6) #12
  br label %if.end29

if.else:                                          ; preds = %entry
  br i1 %tobool16.not, label %if.else.if.end21_crit_edge, label %if.then17

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %1) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.else.if.end21_crit_edge
  %and22 = and i32 %state, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end29_crit_edge, label %if.then24

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx26 = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 4
  %4 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx26, align 4
  %call27 = tail call i32 @gpiod_direction_input(ptr noundef %5) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end21.if.end29_crit_edge, %if.then8, %if.end.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sff_gpio_get_state(ptr nocapture noundef readonly %sfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx2.i = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 0
  %0 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.lor.lhs.false.1.i_crit_edge, label %if.end.i

entry.lor.lhs.false.1.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.1.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %1) #12
  br label %lor.lhs.false.1.i

lor.lhs.false.1.i:                                ; preds = %if.end.i, %entry.lor.lhs.false.1.i_crit_edge
  %arrayidx2.1.i = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %3, null
  br i1 %tobool.not.1.i, label %lor.lhs.false.1.i.lor.lhs.false.2.i_crit_edge, label %if.end.1.i

lor.lhs.false.1.i.lor.lhs.false.2.i_crit_edge:    ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.2.i

if.end.1.i:                                       ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.1.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool5.not.1.i = icmp eq i32 %call.1.i, 0
  %spec.select18.i = select i1 %tobool5.not.1.i, i32 0, i32 2
  br label %lor.lhs.false.2.i

lor.lhs.false.2.i:                                ; preds = %if.end.1.i, %lor.lhs.false.1.i.lor.lhs.false.2.i_crit_edge
  %state.1.1.i = phi i32 [ 0, %lor.lhs.false.1.i.lor.lhs.false.2.i_crit_edge ], [ %spec.select18.i, %if.end.1.i ]
  %arrayidx2.2.i = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %5, null
  br i1 %tobool.not.2.i, label %lor.lhs.false.2.i.sfp_gpio_get_state.exit_crit_edge, label %if.end.2.i

lor.lhs.false.2.i.sfp_gpio_get_state.exit_crit_edge: ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_gpio_get_state.exit

if.end.2.i:                                       ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.2.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool5.not.2.i = icmp eq i32 %call.2.i, 0
  %or.2.i = or i32 %state.1.1.i, 4
  %spec.select19.i = select i1 %tobool5.not.2.i, i32 %state.1.1.i, i32 %or.2.i
  br label %sfp_gpio_get_state.exit

sfp_gpio_get_state.exit:                          ; preds = %if.end.2.i, %lor.lhs.false.2.i.sfp_gpio_get_state.exit_crit_edge
  %state.1.2.i = phi i32 [ %state.1.1.i, %lor.lhs.false.2.i.sfp_gpio_get_state.exit_crit_edge ], [ %spec.select19.i, %if.end.2.i ]
  %or = or i32 %state.1.2.i, 1
  ret i32 %or
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sfp_get_state(ptr noundef %sfp) unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %get_state = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 8
  %0 = ptrtoint ptr %get_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_state, align 4
  %call = tail call i32 %1(ptr noundef %sfp) #12
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state_soft_mask = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 16
  %2 = ptrtoint ptr %state_soft_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_soft_mask, align 4
  %and1 = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #12
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %status.i, align 1, !annotation !445
  %read.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %5 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read.i.i, align 4
  %call.i.i = call i32 %6(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status.i, align 1
  %9 = and i8 %8, 6
  %10 = zext i8 %9 to i32
  br label %sfp_soft_get_state.exit

do.body.i:                                        ; preds = %if.then
  %call8.i = call i32 @___ratelimit(ptr noundef nonnull @sfp_soft_get_state._rs, ptr noundef nonnull @__func__.sfp_soft_get_state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %do.body.i.do.end14.i_crit_edge, label %do.end.i

do.body.i.do.end14.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.63, i32 noundef %call.i.i) #16
  br label %do.end14.i

do.end14.i:                                       ; preds = %do.end.i, %do.body.i.do.end14.i_crit_edge
  %state15.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %13 = ptrtoint ptr %state15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state15.i, align 4
  br label %sfp_soft_get_state.exit

sfp_soft_get_state.exit:                          ; preds = %do.end14.i, %if.then.i
  %state.1.i = phi i32 [ %14, %do.end14.i ], [ %10, %if.then.i ]
  %15 = ptrtoint ptr %state_soft_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state_soft_mask, align 4
  %and17.i = and i32 %16, %state.1.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #12
  %or = or i32 %and17.i, %call
  br label %if.end

if.end:                                           ; preds = %sfp_soft_get_state.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %state.0 = phi i32 [ %or, %sfp_soft_get_state.exit ], [ %call, %land.lhs.true.if.end_crit_edge ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %state.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sfp_set_state(ptr noundef %sfp, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %set_state = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 9
  %0 = ptrtoint ptr %set_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_state, align 4
  tail call void %1(ptr noundef %sfp, i32 noundef %state) #12
  %and = and i32 %state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state_soft_mask = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 16
  %2 = ptrtoint ptr %state_soft_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_soft_mask, align 4
  %and1 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #12
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %status.i, align 1, !annotation !445
  %read.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %5 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read.i.i, align 4
  %call.i.i = call i32 %6(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.then.sfp_soft_set_state.exit_crit_edge

if.then.sfp_soft_set_state.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_soft_set_state.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status.i, align 1
  %9 = and i8 %8, -65
  %10 = trunc i32 %state to i8
  %11 = shl i8 %10, 3
  %12 = and i8 %11, 64
  %storemerge.i = or i8 %9, %12
  store i8 %storemerge.i, ptr %status.i, align 1
  %write.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 11
  %13 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i.i, align 4
  %call.i9.i = call i32 %14(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i, i32 noundef 1) #12
  br label %sfp_soft_set_state.exit

sfp_soft_set_state.exit:                          ; preds = %if.then.i, %if.then.sfp_soft_set_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #12
  br label %if.end

if.end:                                           ; preds = %sfp_soft_set_state.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sfp_module_tx_disable(ptr noundef %sfp) unnamed_addr #0 align 64 {
entry:
  %status.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sfp_module_tx_disable.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sfp_module_tx_disable, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !446

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sfp, align 4
  %state = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = lshr i32 %3, 3
  %and.lobit = and i32 %and, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sfp_module_tx_disable.__UNIQUE_ID_ddebug379, ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %and.lobit, i32 noundef 1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state4 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %4 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state4, align 4
  %or = or i32 %5, 8
  store i32 %or, ptr %state4, align 4
  %set_state.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 9
  %6 = ptrtoint ptr %set_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_state.i, align 4
  tail call void %7(ptr noundef %sfp, i32 noundef %or) #12
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.sfp_set_state.exit_crit_edge, label %land.lhs.true.i

do.end.sfp_set_state.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_set_state.exit

land.lhs.true.i:                                  ; preds = %do.end
  %state_soft_mask.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 16
  %8 = ptrtoint ptr %state_soft_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state_soft_mask.i, align 4
  %and1.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.sfp_set_state.exit_crit_edge, label %if.then.i

land.lhs.true.i.sfp_set_state.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_set_state.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i.i) #12
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %status.i.i, align 1, !annotation !445
  %read.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %11 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i.i.i, align 4
  %call.i.i.i = call i32 %12(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.sfp_soft_set_state.exit.i_crit_edge

if.then.i.sfp_soft_set_state.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_soft_set_state.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status.i.i, align 1
  %storemerge.i.i = or i8 %14, 64
  store i8 %storemerge.i.i, ptr %status.i.i, align 1
  %write.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 11
  %15 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i.i.i, align 4
  %call.i9.i.i = call i32 %16(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i.i, i32 noundef 1) #12
  br label %sfp_soft_set_state.exit.i

sfp_soft_set_state.exit.i:                        ; preds = %if.then.i.i, %if.then.i.sfp_soft_set_state.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i.i) #12
  br label %sfp_set_state.exit

sfp_set_state.exit:                               ; preds = %sfp_soft_set_state.exit.i, %land.lhs.true.i.sfp_set_state.exit_crit_edge, %do.end.sfp_set_state.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sfp_sm_event(ptr noundef %sfp, i32 noundef %event) unnamed_addr #0 align 64 {
entry:
  %val.i201.i = alloca i8, align 1
  %check.i.i.i = alloca i8, align 1
  %id.i173.i = alloca %struct.sfp_eeprom_id, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_mutex = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %sm_mutex, i32 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sfp_sm_event.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sfp_sm_event, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !446

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sfp, align 4
  %sm_mod_state = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 21
  %2 = ptrtoint ptr %sm_mod_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sm_mod_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp.i = icmp ugt i8 %3, 6
  br i1 %cmp.i, label %if.then.mod_state_to_str.exit_crit_edge, label %if.end.i

if.then.mod_state_to_str.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %mod_state_to_str.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [7 x ptr], ptr @mod_state_strings, i32 0, i32 %conv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  br label %mod_state_to_str.exit

mod_state_to_str.exit:                            ; preds = %if.end.i, %if.then.mod_state_to_str.exit_crit_edge
  %retval.0.i52 = phi ptr [ %5, %if.end.i ], [ @.str.69, %if.then.mod_state_to_str.exit_crit_edge ]
  %sm_dev_state = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 24
  %6 = ptrtoint ptr %sm_dev_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sm_dev_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i53 = icmp ugt i8 %7, 2
  br i1 %cmp.i53, label %mod_state_to_str.exit.dev_state_to_str.exit_crit_edge, label %if.end.i56

mod_state_to_str.exit.dev_state_to_str.exit_crit_edge: ; preds = %mod_state_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_state_to_str.exit

if.end.i56:                                       ; preds = %mod_state_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i54 = zext i8 %7 to i32
  %arrayidx.i55 = getelementptr [3 x ptr], ptr @dev_state_strings, i32 0, i32 %conv.i54
  %8 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i55, align 4
  br label %dev_state_to_str.exit

dev_state_to_str.exit:                            ; preds = %if.end.i56, %mod_state_to_str.exit.dev_state_to_str.exit_crit_edge
  %retval.0.i57 = phi ptr [ %9, %if.end.i56 ], [ @.str.77, %mod_state_to_str.exit.dev_state_to_str.exit_crit_edge ]
  %sm_state = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 25
  %10 = ptrtoint ptr %sm_state to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %11)
  %cmp.i58 = icmp ugt i16 %11, 10
  br i1 %cmp.i58, label %dev_state_to_str.exit.sm_state_to_str.exit_crit_edge, label %if.end.i61

dev_state_to_str.exit.sm_state_to_str.exit_crit_edge: ; preds = %dev_state_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sm_state_to_str.exit

if.end.i61:                                       ; preds = %dev_state_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i59 = zext i16 %11 to i32
  %arrayidx.i60 = getelementptr [11 x ptr], ptr @sm_state_strings, i32 0, i32 %conv.i59
  %12 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i60, align 4
  br label %sm_state_to_str.exit

sm_state_to_str.exit:                             ; preds = %if.end.i61, %dev_state_to_str.exit.sm_state_to_str.exit_crit_edge
  %retval.0.i62 = phi ptr [ %13, %if.end.i61 ], [ @.str.81, %dev_state_to_str.exit.sm_state_to_str.exit_crit_edge ]
  %conv.i63 = and i32 %event, 65535
  %arrayidx.i64 = getelementptr [11 x ptr], ptr @event_strings, i32 0, i32 %conv.i63
  %14 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i64, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sfp_sm_event.__UNIQUE_ID_ddebug383, ptr noundef %1, ptr noundef nonnull @.str.67, ptr noundef %retval.0.i52, ptr noundef %retval.0.i57, ptr noundef %retval.0.i62, ptr noundef %15) #12
  br label %do.end

do.end:                                           ; preds = %sm_state_to_str.exit, %entry
  %sm_dev_state.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 24
  %16 = ptrtoint ptr %sm_dev_state.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sm_dev_state.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb13.i
  ]

sw.default.i:                                     ; preds = %do.end
  %19 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %event, label %sw.default.i.if.end4.ithread-pre-split_crit_edge [
    i32 2, label %sw.default.i.sfp_sm_device.exit.thread_crit_edge
    i32 1, label %sw.default.i.if.then.i_crit_edge
  ]

sw.default.i.if.then.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

sw.default.i.sfp_sm_device.exit.thread_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_device.exit.thread

sw.default.i.if.end4.ithread-pre-split_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.ithread-pre-split

sw.bb.i:                                          ; preds = %do.end
  %20 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %event, label %sw.bb.i.if.end4.ithread-pre-split_crit_edge [
    i32 3, label %sw.bb.i.sfp_sm_device.exit.thread_crit_edge
    i32 5, label %if.then9.i
    i32 1, label %sw.bb.i.if.then.i_crit_edge
  ]

sw.bb.i.if.then.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

sw.bb.i.sfp_sm_device.exit.thread_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_device.exit.thread

sw.bb.i.if.end4.ithread-pre-split_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.ithread-pre-split

if.then9.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_device.exit.thread

sw.bb13.i:                                        ; preds = %do.end
  %21 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %event, label %sw.bb13.i.if.end4.ithread-pre-split_crit_edge [
    i32 3, label %sw.bb13.i.sfp_sm_device.exit.thread_crit_edge
    i32 4, label %if.then21.i
    i32 1, label %sw.bb13.i.if.then.i_crit_edge
  ]

sw.bb13.i.if.then.i_crit_edge:                    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

sw.bb13.i.sfp_sm_device.exit.thread_crit_edge:    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_device.exit.thread

sw.bb13.i.if.end4.ithread-pre-split_crit_edge:    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.ithread-pre-split

if.then21.i:                                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_device.exit.thread

sfp_sm_device.exit.thread:                        ; preds = %if.then21.i, %sw.bb13.i.sfp_sm_device.exit.thread_crit_edge, %if.then9.i, %sw.bb.i.sfp_sm_device.exit.thread_crit_edge, %sw.default.i.sfp_sm_device.exit.thread_crit_edge
  %.sink.i = phi i8 [ 1, %if.then21.i ], [ 2, %if.then9.i ], [ 1, %sw.default.i.sfp_sm_device.exit.thread_crit_edge ], [ 0, %sw.bb.i.sfp_sm_device.exit.thread_crit_edge ], [ 0, %sw.bb13.i.sfp_sm_device.exit.thread_crit_edge ]
  %22 = ptrtoint ptr %sm_dev_state.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink.i, ptr %sm_dev_state.i, align 1
  br label %if.end4.i

if.then.i:                                        ; preds = %sw.bb13.i.if.then.i_crit_edge, %sw.bb.i.if.then.i_crit_edge, %sw.default.i.if.then.i_crit_edge
  %sm_mod_state.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 21
  %23 = ptrtoint ptr %sm_mod_state.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sm_mod_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp1.i = icmp ugt i8 %24, 2
  br i1 %cmp1.i, label %if.then3.i, label %if.then.i.if.end.i67_crit_edge

if.then.i.if.end.i67_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i67

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp.i.not.i = icmp eq i8 %24, 3
  br i1 %cmp.i.not.i, label %if.then3.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then3.i.if.end.i.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_bus.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 3
  %25 = ptrtoint ptr %sfp_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sfp_bus.i.i, align 4
  tail call void @sfp_module_remove(ptr noundef %26) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then3.i.if.end.i.i_crit_edge
  %hwmon_probe.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 32
  %call.i.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hwmon_probe.i.i.i) #12
  %hwmon_dev.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 34
  %27 = ptrtoint ptr %hwmon_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwmon_dev.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %28, null
  %cmp.i.i.i.i = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.end.i.i.sfp_sm_mod_remove.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.i.sfp_sm_mod_remove.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_mod_remove.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @hwmon_device_unregister(ptr noundef nonnull %28) #12
  %29 = ptrtoint ptr %hwmon_dev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %hwmon_dev.i.i.i, align 4
  %hwmon_name.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 35
  %30 = ptrtoint ptr %hwmon_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hwmon_name.i.i.i, align 4
  tail call void @kfree(ptr noundef %31) #12
  br label %sfp_sm_mod_remove.exit.i

sfp_sm_mod_remove.exit.i:                         ; preds = %if.then.i.i.i, %if.end.i.i.sfp_sm_mod_remove.exit.i_crit_edge
  %id.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28
  %32 = call ptr @memset(ptr %id.i.i, i32 0, i32 100)
  %33 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sfp, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.107) #16
  br label %if.end.i67

if.end.i67:                                       ; preds = %sfp_sm_mod_remove.exit.i, %if.then.i.if.end.i67_crit_edge
  %35 = ptrtoint ptr %sm_mod_state.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %sm_mod_state.i, align 4
  %timeout2.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i.i) #12
  br label %sfp_sm_module.exit

if.end4.ithread-pre-split:                        ; preds = %sw.bb13.i.if.end4.ithread-pre-split_crit_edge, %sw.bb.i.if.end4.ithread-pre-split_crit_edge, %sw.default.i.if.end4.ithread-pre-split_crit_edge
  %36 = ptrtoint ptr %sm_dev_state.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr = load i8, ptr %sm_dev_state.i, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4.ithread-pre-split, %sfp_sm_device.exit.thread
  %37 = phi i8 [ %.pr, %if.end4.ithread-pre-split ], [ %.sink.i, %sfp_sm_device.exit.thread ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp6.i = icmp eq i8 %37, 0
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end4.i.if.end22.i_crit_edge

if.end4.i.if.end22.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %sm_mod_state8.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 21
  %38 = ptrtoint ptr %sm_mod_state8.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sm_mod_state8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp10.i = icmp ugt i8 %39, 3
  br i1 %cmp10.i, label %if.then12.i, label %land.lhs.true.i.if.end22.i_crit_edge

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %module_power_mW.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 29
  %40 = ptrtoint ptr %module_power_mW.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %module_power_mW.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %41)
  %cmp13.i = icmp ugt i32 %41, 1000
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %39)
  %cmp18.i = icmp ne i8 %39, 4
  %or.cond.i = select i1 %cmp13.i, i1 %cmp18.i, i1 false
  br i1 %or.cond.i, label %if.then20.i, label %if.then12.i.if.end21.i_crit_edge

if.then12.i.if.end21.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.then12.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #12
  %42 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %val.i.i, align 1, !annotation !445
  %read.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %43 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read.i.i.i, align 4
  %call.i.i166.i = call i32 %44(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 118, ptr noundef nonnull %val.i.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i166.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i166.i, 1
  br i1 %cmp.not.i.i, label %if.end.i167.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.109, i32 noundef %call.i.i166.i) #16
  br label %sfp_sm_mod_hpower.exit.i

if.end.i167.i:                                    ; preds = %if.then20.i
  %47 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %val.i.i, align 1
  %49 = and i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %if.end.i167.i.sfp_sm_mod_hpower.exit.i_crit_edge, label %if.end7.i.i

if.end.i167.i.sfp_sm_mod_hpower.exit.i_crit_edge: ; preds = %if.end.i167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_mod_hpower.exit.i

if.end7.i.i:                                      ; preds = %if.end.i167.i
  %and13.i.i = and i8 %48, -2
  %51 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %and13.i.i, ptr %val.i.i, align 1
  %write.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 11
  %52 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write.i.i.i, align 4
  %call.i46.i.i = call i32 %53(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 118, ptr noundef nonnull %val.i.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i46.i.i)
  %cmp17.not.i.i = icmp eq i32 %call.i46.i.i, 1
  br i1 %cmp17.not.i.i, label %if.end7.i.i.sfp_sm_mod_hpower.exit.i_crit_edge, label %do.end22.i.i

if.end7.i.i.sfp_sm_mod_hpower.exit.i_crit_edge:   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_mod_hpower.exit.i

do.end22.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.112, i32 noundef %call.i46.i.i) #16
  br label %sfp_sm_mod_hpower.exit.i

sfp_sm_mod_hpower.exit.i:                         ; preds = %do.end22.i.i, %if.end7.i.i.sfp_sm_mod_hpower.exit.i_crit_edge, %if.end.i167.i.sfp_sm_mod_hpower.exit.i_crit_edge, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %sfp_sm_mod_hpower.exit.i, %if.then12.i.if.end21.i_crit_edge
  %56 = ptrtoint ptr %sm_mod_state8.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %sm_mod_state8.i, align 4
  %timeout2.i.i169.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i170.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i169.i) #12
  br label %sfp_sm_module.exit

if.end22.i:                                       ; preds = %land.lhs.true.i.if.end22.i_crit_edge, %if.end4.i.if.end22.i_crit_edge
  %sm_mod_state23.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 21
  %57 = ptrtoint ptr %sm_mod_state23.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sm_mod_state23.i, align 4
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.213)
  switch i8 %58, label %sw.default.i69 [
    i8 2, label %sw.bb.i70
    i8 3, label %if.end22.i.sw.bb81.i_crit_edge
    i8 4, label %if.end22.i.sw.bb98.i_crit_edge
    i8 5, label %sw.bb112.i
    i8 6, label %if.end22.i.sfp_sm_module.exit_crit_edge
    i8 1, label %if.end22.i.sfp_sm_module.exit_crit_edge188
  ]

if.end22.i.sfp_sm_module.exit_crit_edge188:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_module.exit

if.end22.i.sfp_sm_module.exit_crit_edge:          ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_module.exit

if.end22.i.sw.bb98.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb98.i

if.end22.i.sw.bb81.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb81.i

sw.default.i69:                                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %cmp25.i = icmp eq i32 %event, 0
  br i1 %cmp25.i, label %if.then27.i, label %sw.default.i69.sfp_sm_module.exit_crit_edge

sw.default.i69.sfp_sm_module.exit_crit_edge:      ; preds = %sw.default.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_module.exit

if.then27.i:                                      ; preds = %sw.default.i69
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %sm_mod_state23.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %sm_mod_state23.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %61 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %61, ptr noundef %timeout1.i.i.i, i32 noundef 30) #12
  %sm_mod_tries_init.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 22
  %62 = ptrtoint ptr %sm_mod_tries_init.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 10, ptr %sm_mod_tries_init.i, align 1
  %sm_mod_tries.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 23
  %63 = ptrtoint ptr %sm_mod_tries.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 12, ptr %sm_mod_tries.i, align 2
  br label %sfp_sm_module.exit

sw.bb.i70:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %event)
  %cmp30.not.i = icmp eq i32 %event, 10
  br i1 %cmp30.not.i, label %if.end33.i, label %sw.bb.i70.sfp_sm_module.exit_crit_edge

sw.bb.i70.sfp_sm_module.exit_crit_edge:           ; preds = %sw.bb.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_module.exit

if.end33.i:                                       ; preds = %sw.bb.i70
  %sm_mod_tries34.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 23
  %64 = ptrtoint ptr %sm_mod_tries34.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %sm_mod_tries34.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %65)
  %cmp36.i = icmp eq i8 %65, 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %id.i173.i) #12
  %66 = call ptr @memset(ptr %id.i173.i, i32 255, i32 96)
  %i2c_block_size.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 6
  %67 = ptrtoint ptr %i2c_block_size.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 16, ptr %i2c_block_size.i.i, align 4
  %read.i.i174.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %68 = ptrtoint ptr %read.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read.i.i174.i, align 4
  %call.i.i175.i = call i32 %69(ptr noundef %sfp, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %id.i173.i, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i175.i)
  %cmp.i176.i = icmp slt i32 %call.i.i175.i, 0
  br i1 %cmp.i176.i, label %if.then.i177.i, label %if.end2.i.i

if.then.i177.i:                                   ; preds = %if.end33.i
  br i1 %cmp36.i, label %do.end.i178.i, label %if.then.i177.i.sfp_sm_mod_probe.exit.thread.i_crit_edge

if.then.i177.i.sfp_sm_mod_probe.exit.thread.i_crit_edge: ; preds = %if.then.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_mod_probe.exit.thread.i

do.end.i178.i:                                    ; preds = %if.then.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.117, i32 noundef %call.i.i175.i) #16
  br label %sfp_sm_mod_probe.exit.thread.i

if.end2.i.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i.i175.i)
  %cmp3.not.i.i = icmp eq i32 %call.i.i175.i, 64
  br i1 %cmp3.not.i.i, label %if.end9.i.i, label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.120, i32 noundef %call.i.i175.i) #16
  br label %sfp_sm_mod_probe.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %74 = ptrtoint ptr %i2c_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i2c_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i.i.i = icmp eq i32 %75, 1
  br i1 %cmp.i.i.i, label %if.end9.i.i.if.end41.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.end9.i.i.if.end41.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end9.i.i
  %sub.i.i.i = add i32 %75, -1
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %add.i.i.i = add i32 %i.01.i.i.i, %75
  %cmp1.i.i.i = icmp ult i32 %add.i.i.i, 64
  br i1 %cmp1.i.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge, label %do.end15.i.i

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i
  %i.01.i.i.i = phi i32 [ 1, %for.cond.preheader.i.i.i ], [ %add.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %id.i173.i, i32 %i.01.i.i.i
  %sub2.i.i.i = sub nuw nsw i32 64, %i.01.i.i.i
  %76 = call i32 @llvm.umin.i32(i32 %sub.i.i.i, i32 %sub2.i.i.i) #12
  %call.i261.i.i = call ptr @memchr_inv(ptr noundef %add.ptr.i.i.i, i32 noundef 0, i32 noundef %76) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i261.i.i, null
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.if.end41.i.i_crit_edge

for.body.i.i.i.if.end41.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i.i

do.end15.i.i:                                     ; preds = %for.cond.i.i.i
  %77 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.123) #16
  %79 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.126) #16
  %81 = ptrtoint ptr %i2c_block_size.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %i2c_block_size.i.i, align 4
  %82 = ptrtoint ptr %read.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read.i.i174.i, align 4
  %call.i263.i.i = call i32 %83(ptr noundef %sfp, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %id.i173.i, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263.i.i)
  %cmp24.i.i = icmp slt i32 %call.i263.i.i, 0
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end33.i.i

if.then25.i.i:                                    ; preds = %do.end15.i.i
  br i1 %cmp36.i, label %do.end30.i.i, label %if.then25.i.i.sfp_sm_mod_probe.exit.thread.i_crit_edge

if.then25.i.i.sfp_sm_mod_probe.exit.thread.i_crit_edge: ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_mod_probe.exit.thread.i

do.end30.i.i:                                     ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.117, i32 noundef %call.i263.i.i) #16
  br label %sfp_sm_mod_probe.exit.thread.i

if.end33.i.i:                                     ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i263.i.i)
  %cmp34.not.i.i = icmp eq i32 %call.i263.i.i, 64
  br i1 %cmp34.not.i.i, label %if.end33.i.i.if.end41.i.i_crit_edge, label %do.end38.i.i

if.end33.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i.i

do.end38.i.i:                                     ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.120, i32 noundef %call.i263.i.i) #16
  br label %sfp_sm_mod_probe.exit.thread.i

if.end41.i.i:                                     ; preds = %if.end33.i.i.if.end41.i.i_crit_edge, %for.body.i.i.i.if.end41.i.i_crit_edge, %if.end9.i.i.if.end41.i.i_crit_edge
  %vendor_name.i.i = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id.i173.i, i32 0, i32 8
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %vendor_name.i.i, ptr noundef nonnull dereferenceable(16) @.str.132, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool44.not.i.i = icmp eq i32 %bcmp.i.i, 0
  %vendor_pn.i.i = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id.i173.i, i32 0, i32 11
  br i1 %tobool44.not.i.i, label %land.lhs.true.i.i, label %if.end41.i.i.for.body.i269.i.i.preheader_crit_edge

if.end41.i.i.for.body.i269.i.i.preheader_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i269.i.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end41.i.i
  %bcmp258.i.i = call i32 @bcmp(ptr noundef dereferenceable(4) %vendor_pn.i.i, ptr noundef nonnull dereferenceable(4) @.str.133, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp258.i.i)
  %tobool49.not.i.i = icmp eq i32 %bcmp258.i.i, 0
  br i1 %tobool49.not.i.i, label %if.then54.i.i, label %land.lhs.true.i.i.for.body.i269.i.i.preheader_crit_edge

land.lhs.true.i.i.for.body.i269.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i269.i.i.preheader

if.then54.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %check.i.i.i) #12
  %88 = ptrtoint ptr %id.i173.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %id.i173.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %89)
  %cmp.not.i.i.i = icmp eq i8 %89, 2
  br i1 %cmp.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.then54.i.i.do.end.i.i.i_crit_edge

if.then54.i.i.do.end.i.i.i_crit_edge:             ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then54.i.i
  %phys_ext_id.i.i.i = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id.i173.i, i32 0, i32 1
  %90 = ptrtoint ptr %phys_ext_id.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %phys_ext_id.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %91)
  %cmp4.not.i.i.i = icmp eq i8 %91, 4
  br i1 %cmp4.not.i.i.i, label %lor.lhs.false6.i.i.i, label %lor.lhs.false.i.i.i.do.end.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

lor.lhs.false6.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %connector.i.i.i = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id.i173.i, i32 0, i32 2
  %92 = ptrtoint ptr %connector.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %connector.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %93)
  %cmp9.not.i.i.i = icmp eq i8 %93, 7
  br i1 %cmp9.not.i.i.i, label %lor.lhs.false6.i.i.i.sfp_cotsworks_fixup_check.exit.thread.i.i_crit_edge, label %lor.lhs.false6.i.i.i.do.end.i.i.i_crit_edge

lor.lhs.false6.i.i.i.do.end.i.i.i_crit_edge:      ; preds = %lor.lhs.false6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

lor.lhs.false6.i.i.i.sfp_cotsworks_fixup_check.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_cotsworks_fixup_check.exit.thread.i.i

do.end.i.i.i:                                     ; preds = %lor.lhs.false6.i.i.i.do.end.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end.i.i.i_crit_edge, %if.then54.i.i.do.end.i.i.i_crit_edge
  %94 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.162) #16
  %96 = ptrtoint ptr %id.i173.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 2, ptr %id.i173.i, align 1
  %phys_ext_id14.i.i.i = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id.i173.i, i32 0, i32 1
  %97 = ptrtoint ptr %phys_ext_id14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 4, ptr %phys_ext_id14.i.i.i, align 1
  %connector16.i.i.i = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id.i173.i, i32 0, i32 2
  %98 = ptrtoint ptr %connector16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 7, ptr %connector16.i.i.i, align 1
  %write.i.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 11
  %99 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write.i.i.i.i, align 4
  %call.i.i.i179.i = call i32 %100(ptr noundef %sfp, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %id.i173.i, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i179.i)
  %cmp18.not.i.i.i = icmp eq i32 %call.i.i.i179.i, 3
  br i1 %cmp18.not.i.i.i, label %do.end.i.i.i.while.body.i.i.i_crit_edge, label %do.end23.i.i.i

do.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %do.end.i.i.i
  br label %while.body.i.i.i

do.end23.i.i.i:                                   ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.165, i32 noundef %call.i.i.i179.i) #16
  br label %sfp_cotsworks_fixup_check.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %do.end.i.i.i.while.body.i.i.i_crit_edge
  %__ms.057.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 50, %do.end.i.i.i.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add nsw i32 %__ms.057.i.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %103(i32 noundef 214748000) #12
  %tobool.not.i264.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i264.i.i, label %while.body.i.i.i.for.body.i.i.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

while.body.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %while.body.i.i.i.for.body.i.i.i.i_crit_edge
  %check.010.i.i.i.i = phi i32 [ %phi.cast.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %while.body.i.i.i.for.body.i.i.i.i_crit_edge ]
  %p.09.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %id.i173.i, %while.body.i.i.i.for.body.i.i.i.i_crit_edge ]
  %len.addr.08.i.i.i.i = phi i32 [ %dec.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 63, %while.body.i.i.i.for.body.i.i.i.i_crit_edge ]
  %104 = ptrtoint ptr %p.09.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %p.09.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %105 to i32
  %add.i.i.i.i = add nuw nsw i32 %check.010.i.i.i.i, %conv.i.i.i.i
  %incdec.ptr.i.i.i.i = getelementptr i8, ptr %p.09.i.i.i.i, i32 1
  %dec.i.i.i.i = add nsw i32 %len.addr.08.i.i.i.i, -1
  %phi.cast.i.i.i.i = and i32 %add.i.i.i.i, 255
  %tobool.not.i.i.i180.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %tobool.not.i.i.i180.i, label %sfp_check.exit.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

sfp_check.exit.i.i.i:                             ; preds = %for.body.i.i.i.i
  %conv27.i.i.i = trunc i32 %add.i.i.i.i to i8
  %106 = ptrtoint ptr %check.i.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv27.i.i.i, ptr %check.i.i.i, align 1
  %107 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write.i.i.i.i, align 4
  %call.i56.i.i.i = call i32 %108(ptr noundef %sfp, i1 noundef zeroext false, i8 noundef zeroext 63, ptr noundef nonnull %check.i.i.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i56.i.i.i)
  %cmp29.not.i.i.i = icmp eq i32 %call.i56.i.i.i, 1
  br i1 %cmp29.not.i.i.i, label %sfp_check.exit.i.i.i.sfp_cotsworks_fixup_check.exit.thread.i.i_crit_edge, label %do.end34.i.i.i

sfp_check.exit.i.i.i.sfp_cotsworks_fixup_check.exit.thread.i.i_crit_edge: ; preds = %sfp_check.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_cotsworks_fixup_check.exit.thread.i.i

do.end34.i.i.i:                                   ; preds = %sfp_check.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.168, i32 noundef %call.i56.i.i.i) #16
  br label %sfp_cotsworks_fixup_check.exit.i.i

sfp_cotsworks_fixup_check.exit.thread.i.i:        ; preds = %sfp_check.exit.i.i.i.sfp_cotsworks_fixup_check.exit.thread.i.i_crit_edge, %lor.lhs.false6.i.i.i.sfp_cotsworks_fixup_check.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %check.i.i.i) #12
  br label %for.body.i269.i.i.preheader

sfp_cotsworks_fixup_check.exit.i.i:               ; preds = %do.end34.i.i.i, %do.end23.i.i.i
  %retval.0.i265.i.i = phi i32 [ %call.i.i.i179.i, %do.end23.i.i.i ], [ %call.i56.i.i.i, %do.end34.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %check.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i265.i.i)
  %cmp56.i.i = icmp slt i32 %retval.0.i265.i.i, 0
  br i1 %cmp56.i.i, label %sfp_sm_mod_probe.exit.i, label %sfp_cotsworks_fixup_check.exit.i.i.for.body.i269.i.i.preheader_crit_edge

sfp_cotsworks_fixup_check.exit.i.i.for.body.i269.i.i.preheader_crit_edge: ; preds = %sfp_cotsworks_fixup_check.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i269.i.i.preheader

for.body.i269.i.i.preheader:                      ; preds = %sfp_cotsworks_fixup_check.exit.i.i.for.body.i269.i.i.preheader_crit_edge, %sfp_cotsworks_fixup_check.exit.thread.i.i, %land.lhs.true.i.i.for.body.i269.i.i.preheader_crit_edge, %if.end41.i.i.for.body.i269.i.i.preheader_crit_edge
  br label %for.body.i269.i.i

for.body.i269.i.i:                                ; preds = %for.body.i269.i.i.for.body.i269.i.i_crit_edge, %for.body.i269.i.i.preheader
  %check.010.i.i.i = phi i32 [ %phi.cast.i.i.i, %for.body.i269.i.i.for.body.i269.i.i_crit_edge ], [ 0, %for.body.i269.i.i.preheader ]
  %p.09.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i269.i.i.for.body.i269.i.i_crit_edge ], [ %id.i173.i, %for.body.i269.i.i.preheader ]
  %len.addr.08.i.i.i = phi i32 [ %dec.i267.i.i, %for.body.i269.i.i.for.body.i269.i.i_crit_edge ], [ 63, %for.body.i269.i.i.preheader ]
  %111 = ptrtoint ptr %p.09.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %p.09.i.i.i, align 1
  %conv.i.i.i = zext i8 %112 to i32
  %add.i266.i.i = add nuw nsw i32 %check.010.i.i.i, %conv.i.i.i
  %incdec.ptr.i.i.i = getelementptr i8, ptr %p.09.i.i.i, i32 1
  %dec.i267.i.i = add nsw i32 %len.addr.08.i.i.i, -1
  %phi.cast.i.i.i = and i32 %add.i266.i.i, 255
  %tobool.not.i268.i.i = icmp eq i32 %dec.i267.i.i, 0
  br i1 %tobool.not.i268.i.i, label %sfp_check.exit.i.i, label %for.body.i269.i.i.for.body.i269.i.i_crit_edge

for.body.i269.i.i.for.body.i269.i.i_crit_edge:    ; preds = %for.body.i269.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i269.i.i

sfp_check.exit.i.i:                               ; preds = %for.body.i269.i.i
  %cc_base.i.i = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id.i173.i, i32 0, i32 15
  %113 = ptrtoint ptr %cc_base.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %cc_base.i.i, align 1
  %conv64.i.i = zext i8 %114 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %phi.cast.i.i.i, i32 %conv64.i.i)
  %cmp65.not.i.i = icmp eq i32 %phi.cast.i.i.i, %conv64.i.i
  br i1 %cmp65.not.i.i, label %sfp_check.exit.i.i.if.end87.i.i_crit_edge, label %if.then67.i.i

sfp_check.exit.i.i.if.end87.i.i_crit_edge:        ; preds = %sfp_check.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87.i.i

if.then67.i.i:                                    ; preds = %sfp_check.exit.i.i
  %115 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sfp, align 4
  br i1 %tobool44.not.i.i, label %do.end72.i.i, label %do.end80.i.i

do.end72.i.i:                                     ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.135, i32 noundef %phi.cast.i.i.i, i32 noundef %conv64.i.i) #16
  br label %if.end87.i.i

do.end80.i.i:                                     ; preds = %if.then67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.138, i32 noundef %phi.cast.i.i.i, i32 noundef %conv64.i.i) #16
  call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.140, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %id.i173.i, i32 noundef 96, i1 noundef zeroext true) #12
  br label %if.end68.thread241.i

if.end87.i.i:                                     ; preds = %do.end72.i.i, %sfp_check.exit.i.i.if.end87.i.i_crit_edge
  %ext.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1
  %117 = ptrtoint ptr %read.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read.i.i174.i, align 4
  %call.i271.i.i = call i32 %118(ptr noundef %sfp, i1 noundef zeroext false, i8 noundef zeroext 64, ptr noundef %ext.i.i, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271.i.i)
  %cmp89.i.i = icmp slt i32 %call.i271.i.i, 0
  br i1 %cmp89.i.i, label %if.then91.i.i, label %if.end99.i.i

if.then91.i.i:                                    ; preds = %if.end87.i.i
  br i1 %cmp36.i, label %do.end96.i.i, label %if.then91.i.i.sfp_sm_mod_probe.exit.thread.i_crit_edge

if.then91.i.i.sfp_sm_mod_probe.exit.thread.i_crit_edge: ; preds = %if.then91.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_mod_probe.exit.thread.i

do.end96.i.i:                                     ; preds = %if.then91.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.117, i32 noundef %call.i271.i.i) #16
  br label %sfp_sm_mod_probe.exit.thread.i

if.end99.i.i:                                     ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i271.i.i)
  %cmp100.not.i.i = icmp eq i32 %call.i271.i.i, 32
  br i1 %cmp100.not.i.i, label %for.body.i281.preheader.i.i, label %do.end105.i.i

for.body.i281.preheader.i.i:                      ; preds = %if.end99.i.i
  %121 = ptrtoint ptr %ext.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %ext.i.i, align 1
  %conv.i275.i.i = zext i8 %122 to i32
  %incdec.ptr.i277.i.i = getelementptr inbounds i8, ptr %ext.i.i, i32 1
  %123 = ptrtoint ptr %incdec.ptr.i277.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %incdec.ptr.i277.i.i, align 1
  %conv.i275.1.i.i = zext i8 %124 to i32
  %add.i276.1.i.i = add nuw nsw i32 %conv.i275.1.i.i, %conv.i275.i.i
  %incdec.ptr.i277.1.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %incdec.ptr.i277.1.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %incdec.ptr.i277.1.i.i, align 1
  %conv.i275.2.i.i = zext i8 %126 to i32
  %add.i276.2.i.i = add nuw nsw i32 %add.i276.1.i.i, %conv.i275.2.i.i
  %incdec.ptr.i277.2.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 2
  %127 = ptrtoint ptr %incdec.ptr.i277.2.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %incdec.ptr.i277.2.i.i, align 1
  %conv.i275.3.i.i = zext i8 %128 to i32
  %add.i276.3.i.i = add nuw nsw i32 %add.i276.2.i.i, %conv.i275.3.i.i
  %incdec.ptr.i277.3.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3
  %129 = ptrtoint ptr %incdec.ptr.i277.3.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %incdec.ptr.i277.3.i.i, align 1
  %conv.i275.4.i.i = zext i8 %130 to i32
  %add.i276.4.i.i = add nuw nsw i32 %add.i276.3.i.i, %conv.i275.4.i.i
  %incdec.ptr.i277.4.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 1
  %131 = ptrtoint ptr %incdec.ptr.i277.4.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %incdec.ptr.i277.4.i.i, align 1
  %conv.i275.5.i.i = zext i8 %132 to i32
  %add.i276.5.i.i = add nuw nsw i32 %add.i276.4.i.i, %conv.i275.5.i.i
  %incdec.ptr.i277.5.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 2
  %133 = ptrtoint ptr %incdec.ptr.i277.5.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %incdec.ptr.i277.5.i.i, align 1
  %conv.i275.6.i.i = zext i8 %134 to i32
  %add.i276.6.i.i = add nuw nsw i32 %add.i276.5.i.i, %conv.i275.6.i.i
  %incdec.ptr.i277.6.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 3
  %135 = ptrtoint ptr %incdec.ptr.i277.6.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %incdec.ptr.i277.6.i.i, align 1
  %conv.i275.7.i.i = zext i8 %136 to i32
  %add.i276.7.i.i = add nuw nsw i32 %add.i276.6.i.i, %conv.i275.7.i.i
  %incdec.ptr.i277.7.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 4
  %137 = ptrtoint ptr %incdec.ptr.i277.7.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %incdec.ptr.i277.7.i.i, align 1
  %conv.i275.8.i.i = zext i8 %138 to i32
  %add.i276.8.i.i = add nuw nsw i32 %add.i276.7.i.i, %conv.i275.8.i.i
  %incdec.ptr.i277.8.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 5
  %139 = ptrtoint ptr %incdec.ptr.i277.8.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %incdec.ptr.i277.8.i.i, align 1
  %conv.i275.9.i.i = zext i8 %140 to i32
  %add.i276.9.i.i = add nuw nsw i32 %add.i276.8.i.i, %conv.i275.9.i.i
  %incdec.ptr.i277.9.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 6
  %141 = ptrtoint ptr %incdec.ptr.i277.9.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %incdec.ptr.i277.9.i.i, align 1
  %conv.i275.10.i.i = zext i8 %142 to i32
  %add.i276.10.i.i = add nuw nsw i32 %add.i276.9.i.i, %conv.i275.10.i.i
  %incdec.ptr.i277.10.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 7
  %143 = ptrtoint ptr %incdec.ptr.i277.10.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %incdec.ptr.i277.10.i.i, align 1
  %conv.i275.11.i.i = zext i8 %144 to i32
  %add.i276.11.i.i = add nuw nsw i32 %add.i276.10.i.i, %conv.i275.11.i.i
  %incdec.ptr.i277.11.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 8
  %145 = ptrtoint ptr %incdec.ptr.i277.11.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %incdec.ptr.i277.11.i.i, align 1
  %conv.i275.12.i.i = zext i8 %146 to i32
  %add.i276.12.i.i = add nuw nsw i32 %add.i276.11.i.i, %conv.i275.12.i.i
  %incdec.ptr.i277.12.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 9
  %147 = ptrtoint ptr %incdec.ptr.i277.12.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %incdec.ptr.i277.12.i.i, align 1
  %conv.i275.13.i.i = zext i8 %148 to i32
  %add.i276.13.i.i = add nuw nsw i32 %add.i276.12.i.i, %conv.i275.13.i.i
  %incdec.ptr.i277.13.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 10
  %149 = ptrtoint ptr %incdec.ptr.i277.13.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %incdec.ptr.i277.13.i.i, align 1
  %conv.i275.14.i.i = zext i8 %150 to i32
  %add.i276.14.i.i = add nuw nsw i32 %add.i276.13.i.i, %conv.i275.14.i.i
  %incdec.ptr.i277.14.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 11
  %151 = ptrtoint ptr %incdec.ptr.i277.14.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %incdec.ptr.i277.14.i.i, align 1
  %conv.i275.15.i.i = zext i8 %152 to i32
  %add.i276.15.i.i = add nuw nsw i32 %add.i276.14.i.i, %conv.i275.15.i.i
  %incdec.ptr.i277.15.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 12
  %153 = ptrtoint ptr %incdec.ptr.i277.15.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %incdec.ptr.i277.15.i.i, align 1
  %conv.i275.16.i.i = zext i8 %154 to i32
  %add.i276.16.i.i = add nuw nsw i32 %add.i276.15.i.i, %conv.i275.16.i.i
  %incdec.ptr.i277.16.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 13
  %155 = ptrtoint ptr %incdec.ptr.i277.16.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %incdec.ptr.i277.16.i.i, align 1
  %conv.i275.17.i.i = zext i8 %156 to i32
  %add.i276.17.i.i = add nuw nsw i32 %add.i276.16.i.i, %conv.i275.17.i.i
  %incdec.ptr.i277.17.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 14
  %157 = ptrtoint ptr %incdec.ptr.i277.17.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %incdec.ptr.i277.17.i.i, align 1
  %conv.i275.18.i.i = zext i8 %158 to i32
  %add.i276.18.i.i = add nuw nsw i32 %add.i276.17.i.i, %conv.i275.18.i.i
  %incdec.ptr.i277.18.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 3, i32 15
  %159 = ptrtoint ptr %incdec.ptr.i277.18.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %incdec.ptr.i277.18.i.i, align 1
  %conv.i275.19.i.i = zext i8 %160 to i32
  %add.i276.19.i.i = add nuw nsw i32 %add.i276.18.i.i, %conv.i275.19.i.i
  %incdec.ptr.i277.19.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 4
  %161 = ptrtoint ptr %incdec.ptr.i277.19.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %incdec.ptr.i277.19.i.i, align 1
  %conv.i275.20.i.i = zext i8 %162 to i32
  %add.i276.20.i.i = add nuw nsw i32 %add.i276.19.i.i, %conv.i275.20.i.i
  %incdec.ptr.i277.20.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 4, i32 1
  %163 = ptrtoint ptr %incdec.ptr.i277.20.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %incdec.ptr.i277.20.i.i, align 1
  %conv.i275.21.i.i = zext i8 %164 to i32
  %add.i276.21.i.i = add nuw nsw i32 %add.i276.20.i.i, %conv.i275.21.i.i
  %incdec.ptr.i277.21.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 4, i32 2
  %165 = ptrtoint ptr %incdec.ptr.i277.21.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %incdec.ptr.i277.21.i.i, align 1
  %conv.i275.22.i.i = zext i8 %166 to i32
  %add.i276.22.i.i = add nuw nsw i32 %add.i276.21.i.i, %conv.i275.22.i.i
  %incdec.ptr.i277.22.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 4, i32 3
  %167 = ptrtoint ptr %incdec.ptr.i277.22.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %incdec.ptr.i277.22.i.i, align 1
  %conv.i275.23.i.i = zext i8 %168 to i32
  %add.i276.23.i.i = add nuw nsw i32 %add.i276.22.i.i, %conv.i275.23.i.i
  %incdec.ptr.i277.23.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 4, i32 4
  %169 = ptrtoint ptr %incdec.ptr.i277.23.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %incdec.ptr.i277.23.i.i, align 1
  %conv.i275.24.i.i = zext i8 %170 to i32
  %add.i276.24.i.i = add nuw nsw i32 %add.i276.23.i.i, %conv.i275.24.i.i
  %incdec.ptr.i277.24.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 4, i32 5
  %171 = ptrtoint ptr %incdec.ptr.i277.24.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %incdec.ptr.i277.24.i.i, align 1
  %conv.i275.25.i.i = zext i8 %172 to i32
  %add.i276.25.i.i = add nuw nsw i32 %add.i276.24.i.i, %conv.i275.25.i.i
  %incdec.ptr.i277.25.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 4, i32 6
  %173 = ptrtoint ptr %incdec.ptr.i277.25.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %incdec.ptr.i277.25.i.i, align 1
  %conv.i275.26.i.i = zext i8 %174 to i32
  %add.i276.26.i.i = add nuw nsw i32 %add.i276.25.i.i, %conv.i275.26.i.i
  %incdec.ptr.i277.26.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 4, i32 7
  %175 = ptrtoint ptr %incdec.ptr.i277.26.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %incdec.ptr.i277.26.i.i, align 1
  %conv.i275.27.i.i = zext i8 %176 to i32
  %add.i276.27.i.i = add nuw nsw i32 %add.i276.26.i.i, %conv.i275.27.i.i
  %incdec.ptr.i277.27.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 5
  %177 = ptrtoint ptr %incdec.ptr.i277.27.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %incdec.ptr.i277.27.i.i, align 1
  %conv.i275.28.i.i = zext i8 %178 to i32
  %add.i276.28.i.i = add nuw nsw i32 %add.i276.27.i.i, %conv.i275.28.i.i
  %incdec.ptr.i277.28.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 6
  %179 = ptrtoint ptr %incdec.ptr.i277.28.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %incdec.ptr.i277.28.i.i, align 1
  %conv.i275.29.i.i = zext i8 %180 to i32
  %add.i276.29.i.i = add nuw nsw i32 %add.i276.28.i.i, %conv.i275.29.i.i
  %incdec.ptr.i277.29.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 7
  %181 = ptrtoint ptr %incdec.ptr.i277.29.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %incdec.ptr.i277.29.i.i, align 1
  %conv.i275.30.i.i = zext i8 %182 to i32
  %add.i276.30.i.i = add nuw nsw i32 %add.i276.29.i.i, %conv.i275.30.i.i
  %phi.cast.i279.30.i.i = and i32 %add.i276.30.i.i, 255
  %cc_ext.i.i = getelementptr inbounds %struct.sfp_eeprom_id, ptr %id.i173.i, i32 0, i32 1, i32 8
  %183 = ptrtoint ptr %cc_ext.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %cc_ext.i.i, align 1
  %conv113.i.i = zext i8 %184 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %phi.cast.i279.30.i.i, i32 %conv113.i.i)
  %cmp114.not.i.i = icmp eq i32 %phi.cast.i279.30.i.i, %conv113.i.i
  br i1 %cmp114.not.i.i, label %for.body.i281.preheader.i.i.if.end138.i.i_crit_edge, label %if.then116.i.i

for.body.i281.preheader.i.i.if.end138.i.i_crit_edge: ; preds = %for.body.i281.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138.i.i

do.end105.i.i:                                    ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %185 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.120, i32 noundef %call.i271.i.i) #16
  br label %sfp_sm_mod_probe.exit.thread.i

if.then116.i.i:                                   ; preds = %for.body.i281.preheader.i.i
  %187 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %sfp, align 4
  br i1 %tobool44.not.i.i, label %do.end121.i.i, label %do.end130.i.i

do.end121.i.i:                                    ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %188, ptr noundef nonnull @.str.146, i32 noundef %phi.cast.i279.30.i.i, i32 noundef %conv113.i.i) #16
  br label %if.end138.i.i

do.end130.i.i:                                    ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.149, i32 noundef %phi.cast.i279.30.i.i, i32 noundef %conv113.i.i) #16
  call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.140, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %id.i173.i, i32 noundef 96, i1 noundef zeroext true) #12
  %189 = call ptr @memset(ptr %ext.i.i, i32 0, i32 32)
  br label %if.end138.i.i

if.end138.i.i:                                    ; preds = %do.end130.i.i, %do.end121.i.i, %for.body.i281.preheader.i.i.if.end138.i.i_crit_edge
  %id139.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28
  %190 = call ptr @memcpy(ptr %id139.i.i, ptr %id.i173.i, i32 96)
  %191 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sfp, align 4
  %vendor_rev.i.i = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id.i173.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %192, ptr noundef nonnull @.str.152, i32 noundef 16, ptr noundef %vendor_name.i.i, i32 noundef 16, ptr noundef %vendor_pn.i.i, i32 noundef 4, ptr noundef %vendor_rev.i.i, i32 noundef 16, ptr noundef %incdec.ptr.i277.3.i.i, i32 noundef 8, ptr noundef %incdec.ptr.i277.19.i.i) #16
  %type.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 5
  %193 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %type.i.i, align 4
  %module_supported.i.i = getelementptr inbounds %struct.sff_data, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %module_supported.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %module_supported.i.i, align 4
  %call156.i.i = call zeroext i1 %196(ptr noundef nonnull %id.i173.i) #12
  br i1 %call156.i.i, label %if.end168.i.i, label %do.end160.i.i

do.end160.i.i:                                    ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %197 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %sfp, align 4
  %199 = ptrtoint ptr %id139.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %id139.i.i, align 4
  %conv164.i.i = zext i8 %200 to i32
  %phys_ext_id.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 0, i32 1
  %201 = ptrtoint ptr %phys_ext_id.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %phys_ext_id.i.i, align 1
  %conv167.i.i = zext i8 %202 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.155, i32 noundef %conv164.i.i, i32 noundef %conv167.i.i) #16
  br label %if.end68.thread241.i

if.end168.i.i:                                    ; preds = %if.end138.i.i
  %diagmon.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 1, i32 5
  %203 = ptrtoint ptr %diagmon.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %diagmon.i.i, align 4
  %205 = and i8 %204, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool172.not.i.i = icmp eq i8 %205, 0
  br i1 %tobool172.not.i.i, label %if.end168.i.i.if.end178.i.i_crit_edge, label %do.end176.i.i

if.end168.i.i.if.end178.i.i_crit_edge:            ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end178.i.i

do.end176.i.i:                                    ; preds = %if.end168.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %206 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %207, ptr noundef nonnull @.str.158) #16
  br label %if.end178.i.i

if.end178.i.i:                                    ; preds = %do.end176.i.i, %if.end168.i.i.if.end178.i.i_crit_edge
  %ext.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 1
  %208 = ptrtoint ptr %ext.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %ext.i, align 4
  %210 = and i16 %209, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %210)
  %tobool.not.i118 = icmp eq i16 %210, 0
  %spec.select.i119 = select i1 %tobool.not.i118, i32 1000, i32 1500
  %211 = and i16 %209, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %211)
  %tobool6.not.i = icmp eq i16 %211, 0
  %power_mW.1.i = select i1 %tobool6.not.i, i32 %spec.select.i119, i32 2000
  %sff8472_compliance.i120 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 1, i32 7
  %212 = ptrtoint ptr %sff8472_compliance.i120 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %sff8472_compliance.i120, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %cmp.not.i121 = icmp eq i8 %213, 0
  br i1 %cmp.not.i121, label %lor.end.i, label %lor.end.thread.i

lor.end.i:                                        ; preds = %if.end178.i.i
  %214 = ptrtoint ptr %diagmon.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %diagmon.i.i, align 4
  %216 = and i8 %215, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool17.not.i = icmp eq i8 %216, 0
  %max_power_mW.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 7
  %217 = ptrtoint ptr %max_power_mW.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %max_power_mW.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %power_mW.1.i, i32 %218)
  %cmp18.i123 = icmp ugt i32 %power_mW.1.i, %218
  br i1 %cmp18.i123, label %if.then20.i124, label %if.end31.i

lor.end.thread.i:                                 ; preds = %if.end178.i.i
  %max_power_mW76.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 7
  %219 = ptrtoint ptr %max_power_mW76.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %max_power_mW76.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %power_mW.1.i, i32 %220)
  %cmp1877.i = icmp ugt i32 %power_mW.1.i, %220
  br i1 %cmp1877.i, label %lor.end.thread.i.do.end26.i_crit_edge, label %if.end31.thread.i

lor.end.thread.i.do.end26.i_crit_edge:            ; preds = %lor.end.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i

if.then20.i124:                                   ; preds = %lor.end.i
  br i1 %tobool17.not.i, label %sfp_sm_mod_probe.exit.i.thread, label %if.then20.i124.do.end26.i_crit_edge

if.then20.i124.do.end26.i_crit_edge:              ; preds = %if.then20.i124
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then20.i124.do.end26.i_crit_edge, %lor.end.thread.i.do.end26.i_crit_edge
  %221 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %sfp, align 4
  %div28.lhs.trunc.i = trunc i32 %power_mW.1.i to i16
  %div2879.i = udiv i16 %div28.lhs.trunc.i, 1000
  %div28.zext.i = zext i16 %div2879.i to i32
  %div2980.i = udiv i16 %div28.lhs.trunc.i, 100
  %rem30.lhs.trunc.i = trunc i16 %div2980.i to i8
  %rem3081.i = urem i8 %rem30.lhs.trunc.i, 10
  %rem30.zext.i = zext i8 %rem3081.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %222, ptr noundef nonnull @.str.173, i32 noundef %div28.zext.i, i32 noundef %rem30.zext.i) #16
  br label %if.end183.i.i

if.end31.i:                                       ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %power_mW.1.i)
  %cmp32.i = icmp ult i32 %power_mW.1.i, 1001
  br i1 %cmp32.i, label %if.end31.i.if.then34.i_crit_edge, label %if.end35.i

if.end31.i.if.then34.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i

if.end31.thread.i:                                ; preds = %lor.end.thread.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %power_mW.1.i)
  %cmp3278.i = icmp ult i32 %power_mW.1.i, 1001
  br i1 %cmp3278.i, label %if.end31.thread.i.if.then34.i_crit_edge, label %if.end31.thread.i.if.end38.i_crit_edge

if.end31.thread.i.if.end38.i_crit_edge:           ; preds = %if.end31.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

if.end31.thread.i.if.then34.i_crit_edge:          ; preds = %if.end31.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then34.i

if.then34.i:                                      ; preds = %if.end31.thread.i.if.then34.i_crit_edge, %if.end31.i.if.then34.i_crit_edge
  %module_power_mW.i126 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 29
  %223 = ptrtoint ptr %module_power_mW.i126 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 1000, ptr %module_power_mW.i126, align 4
  br label %if.end183.i.i

if.end35.i:                                       ; preds = %if.end31.i
  br i1 %tobool17.not.i, label %if.end35.i.if.end183.i.i_crit_edge, label %if.end35.i.if.end38.i_crit_edge

if.end35.i.if.end38.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i

if.end35.i.if.end183.i.i_crit_edge:               ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183.i.i

if.end38.i:                                       ; preds = %if.end35.i.if.end38.i_crit_edge, %if.end31.thread.i.if.end38.i_crit_edge
  %224 = ptrtoint ptr %diagmon.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %diagmon.i.i, align 4
  %226 = and i8 %225, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool44.not.i = icmp eq i8 %226, 0
  br i1 %tobool44.not.i, label %if.end53.i, label %do.end48.i

do.end48.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  %227 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %sfp, align 4
  %div50.lhs.trunc.i = trunc i32 %power_mW.1.i to i16
  %div5085.i = udiv i16 %div50.lhs.trunc.i, 1000
  %div50.zext.i = zext i16 %div5085.i to i32
  %div5186.i = udiv i16 %div50.lhs.trunc.i, 100
  %rem52.lhs.trunc.i = trunc i16 %div5186.i to i8
  %rem5287.i = urem i8 %rem52.lhs.trunc.i, 10
  %rem52.zext.i = zext i8 %rem5287.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %228, ptr noundef nonnull @.str.176, i32 noundef %div50.zext.i, i32 noundef %rem52.zext.i) #16
  br label %if.end183.i.i

if.end53.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  %module_power_mW54.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 29
  %229 = ptrtoint ptr %module_power_mW54.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %power_mW.1.i, ptr %module_power_mW54.i, align 4
  br label %if.end183.i.i

sfp_sm_mod_probe.exit.i.thread:                   ; preds = %if.then20.i124
  call void @__sanitizer_cov_trace_pc() #14
  %230 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %sfp, align 4
  %div.lhs.trunc.i = trunc i32 %power_mW.1.i to i16
  %div82.i = udiv i16 %div.lhs.trunc.i, 1000
  %div.zext.i = zext i16 %div82.i to i32
  %div2383.i = udiv i16 %div.lhs.trunc.i, 100
  %rem.lhs.trunc.i = trunc i16 %div2383.i to i8
  %rem84.i = urem i8 %rem.lhs.trunc.i, 10
  %rem.zext.i = zext i8 %rem84.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull @.str.170, i32 noundef %div.zext.i, i32 noundef %rem.zext.i) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %id.i173.i) #12
  br label %if.then71.i

if.end183.i.i:                                    ; preds = %if.end53.i, %do.end48.i, %if.end35.i.if.end183.i.i_crit_edge, %if.then34.i, %do.end26.i
  %bcmp259.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %vendor_name.i.i, ptr noundef nonnull dereferenceable(16) @.str.160, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp259.i.i)
  %tobool188.not.i.i = icmp eq i32 %bcmp259.i.i, 0
  br i1 %tobool188.not.i.i, label %land.lhs.true189.i.i, label %if.end183.i.i.if.else197.i.i_crit_edge

if.end183.i.i.if.else197.i.i_crit_edge:           ; preds = %if.end183.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else197.i.i

land.lhs.true189.i.i:                             ; preds = %if.end183.i.i
  %bcmp260.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %vendor_pn.i.i, ptr noundef nonnull dereferenceable(16) @.str.161, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp260.i.i)
  %tobool194.not.i.i = icmp eq i32 %bcmp260.i.i, 0
  br i1 %tobool194.not.i.i, label %land.lhs.true189.i.i.if.end72.i_crit_edge, label %land.lhs.true189.i.i.if.else197.i.i_crit_edge

land.lhs.true189.i.i.if.else197.i.i_crit_edge:    ; preds = %land.lhs.true189.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else197.i.i

land.lhs.true189.i.i.if.end72.i_crit_edge:        ; preds = %land.lhs.true189.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.i

if.else197.i.i:                                   ; preds = %land.lhs.true189.i.i.if.else197.i.i_crit_edge, %if.end183.i.i.if.else197.i.i_crit_edge
  br label %if.end72.i

sfp_sm_mod_probe.exit.thread.i:                   ; preds = %do.end105.i.i, %do.end96.i.i, %if.then91.i.i.sfp_sm_mod_probe.exit.thread.i_crit_edge, %do.end38.i.i, %do.end30.i.i, %if.then25.i.i.sfp_sm_mod_probe.exit.thread.i_crit_edge, %do.end7.i.i, %do.end.i178.i, %if.then.i177.i.sfp_sm_mod_probe.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %id.i173.i) #12
  br label %if.then41.i

sfp_sm_mod_probe.exit.i:                          ; preds = %sfp_cotsworks_fixup_check.exit.i.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %id.i173.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %retval.0.i265.i.i)
  %cmp39.i = icmp eq i32 %retval.0.i265.i.i, -11
  br i1 %cmp39.i, label %sfp_sm_mod_probe.exit.i.if.then41.i_crit_edge, label %sfp_sm_mod_probe.exit.i.if.then71.i_crit_edge

sfp_sm_mod_probe.exit.i.if.then71.i_crit_edge:    ; preds = %sfp_sm_mod_probe.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then71.i

sfp_sm_mod_probe.exit.i.if.then41.i_crit_edge:    ; preds = %sfp_sm_mod_probe.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41.i

if.then41.i:                                      ; preds = %sfp_sm_mod_probe.exit.i.if.then41.i_crit_edge, %sfp_sm_mod_probe.exit.thread.i
  %sm_mod_tries_init42.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 22
  %232 = ptrtoint ptr %sm_mod_tries_init42.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %sm_mod_tries_init42.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool.not.i = icmp eq i8 %233, 0
  br i1 %tobool.not.i, label %if.then41.i.if.else.i_crit_edge, label %land.lhs.true44.i

if.then41.i.if.else.i_crit_edge:                  ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true44.i:                                ; preds = %if.then41.i
  %dec.i = add i8 %233, -1
  %234 = ptrtoint ptr %sm_mod_tries_init42.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %dec.i, ptr %sm_mod_tries_init42.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool47.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool47.not.i, label %land.lhs.true44.i.if.else.i_crit_edge, label %if.then48.i

land.lhs.true44.i.if.else.i_crit_edge:            ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then48.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %235 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i182.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %235, ptr noundef %timeout1.i.i, i32 noundef 10) #12
  br label %sfp_sm_module.exit

if.else.i:                                        ; preds = %land.lhs.true44.i.if.else.i_crit_edge, %if.then41.i.if.else.i_crit_edge
  %236 = ptrtoint ptr %sm_mod_tries34.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %sm_mod_tries34.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool52.not.i = icmp eq i8 %237, 0
  br i1 %tobool52.not.i, label %if.else.i.if.then71.i_crit_edge, label %land.lhs.true53.i

if.else.i.if.then71.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then71.i

land.lhs.true53.i:                                ; preds = %if.else.i
  %dec55.i = add i8 %237, -1
  %238 = ptrtoint ptr %sm_mod_tries34.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %dec55.i, ptr %sm_mod_tries34.i, align 2
  %239 = zext i8 %237 to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.214)
  switch i8 %237, label %land.lhs.true53.i.if.end64.i_crit_edge [
    i8 1, label %land.lhs.true53.i.if.then71.i_crit_edge
    i8 12, label %do.end.i
  ]

land.lhs.true53.i.if.then71.i_crit_edge:          ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then71.i

land.lhs.true53.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.i

do.end.i:                                         ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #14
  %240 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %241, ptr noundef nonnull @.str.103) #16
  br label %if.end64.i

if.end64.i:                                       ; preds = %do.end.i, %land.lhs.true53.i.if.end64.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %242 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i185.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i186.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %242, ptr noundef %timeout1.i185.i, i32 noundef 500) #12
  br label %sfp_sm_module.exit

if.end68.thread241.i:                             ; preds = %do.end160.i.i, %do.end80.i.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %id.i173.i) #12
  br label %if.then71.i

if.then71.i:                                      ; preds = %if.end68.thread241.i, %land.lhs.true53.i.if.then71.i_crit_edge, %if.else.i.if.then71.i_crit_edge, %sfp_sm_mod_probe.exit.i.if.then71.i_crit_edge, %sfp_sm_mod_probe.exit.i.thread
  %243 = ptrtoint ptr %sm_mod_state23.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 1, ptr %sm_mod_state23.i, align 4
  %timeout2.i.i190.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i191.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i190.i) #12
  br label %sfp_sm_module.exit

if.end72.i:                                       ; preds = %if.else197.i.i, %land.lhs.true189.i.i.if.end72.i_crit_edge
  %.sink.i71 = phi i32 [ 30, %if.else197.i.i ], [ 6000, %land.lhs.true189.i.i.if.end72.i_crit_edge ]
  %module_t_start_up.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 30
  %244 = ptrtoint ptr %module_t_start_up.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %.sink.i71, ptr %module_t_start_up.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %id.i173.i) #12
  %245 = ptrtoint ptr %sff8472_compliance.i120 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %sff8472_compliance.i120, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %cmp.i114 = icmp eq i8 %246, 0
  br i1 %cmp.i114, label %if.end72.i.sfp_hwmon_insert.exit_crit_edge, label %if.end.i116

if.end72.i.sfp_hwmon_insert.exit_crit_edge:       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_insert.exit

if.end.i116:                                      ; preds = %if.end72.i
  %247 = ptrtoint ptr %diagmon.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %diagmon.i.i, align 4
  %249 = and i8 %248, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %249)
  %250 = icmp eq i8 %249, 64
  br i1 %250, label %if.end14.i, label %if.end.i116.sfp_hwmon_insert.exit_crit_edge

if.end.i116.sfp_hwmon_insert.exit_crit_edge:      ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_insert.exit

if.end14.i:                                       ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %251 = load ptr, ptr @system_wq, align 4
  %hwmon_probe.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 32
  %call.i.i117 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %251, ptr noundef %hwmon_probe.i, i32 noundef 1) #12
  %hwmon_tries.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 33
  %252 = ptrtoint ptr %hwmon_tries.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 12, ptr %hwmon_tries.i, align 4
  br label %sfp_hwmon_insert.exit

sfp_hwmon_insert.exit:                            ; preds = %if.end14.i, %if.end.i116.sfp_hwmon_insert.exit_crit_edge, %if.end72.i.sfp_hwmon_insert.exit_crit_edge
  %253 = ptrtoint ptr %sm_mod_state23.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 3, ptr %sm_mod_state23.i, align 4
  %timeout2.i.i193.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i194.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i193.i) #12
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sfp_hwmon_insert.exit, %if.end22.i.sw.bb81.i_crit_edge
  %254 = ptrtoint ptr %sm_dev_state.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %sm_dev_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %cmp84.i = icmp eq i8 %255, 0
  br i1 %cmp84.i, label %sw.bb81.i.sfp_sm_module.exit_crit_edge, label %if.end87.i

sw.bb81.i.sfp_sm_module.exit_crit_edge:           ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_module.exit

if.end87.i:                                       ; preds = %sw.bb81.i
  %sfp_bus.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 3
  %256 = ptrtoint ptr %sfp_bus.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %sfp_bus.i, align 4
  %id.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28
  %call88.i = call i32 @sfp_module_insert(ptr noundef %257, ptr noundef %id.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %cmp89.i = icmp slt i32 %call88.i, 0
  br i1 %cmp89.i, label %if.then91.i, label %if.end92.i

if.then91.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  %258 = ptrtoint ptr %sm_mod_state23.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 1, ptr %sm_mod_state23.i, align 4
  %timeout2.i.i196.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i197.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i196.i) #12
  br label %sfp_sm_module.exit

if.end92.i:                                       ; preds = %if.end87.i
  %module_power_mW93.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 29
  %259 = ptrtoint ptr %module_power_mW93.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %module_power_mW93.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %260)
  %cmp94.i = icmp ult i32 %260, 1001
  br i1 %cmp94.i, label %if.end92.i.insert.i_crit_edge, label %if.end97.i

if.end92.i.insert.i_crit_edge:                    ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %insert.i

if.end97.i:                                       ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #14
  %261 = ptrtoint ptr %sm_mod_state23.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 4, ptr %sm_mod_state23.i, align 4
  %timeout2.i.i199.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i200.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i199.i) #12
  br label %sw.bb98.i

sw.bb98.i:                                        ; preds = %if.end97.i, %if.end22.i.sw.bb98.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i201.i) #12
  %262 = ptrtoint ptr %val.i201.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 -1, ptr %val.i201.i, align 1, !annotation !445
  %read.i.i202.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %263 = ptrtoint ptr %read.i.i202.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %read.i.i202.i, align 4
  %call.i.i203.i = call i32 %264(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 118, ptr noundef nonnull %val.i201.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i203.i)
  %cmp.not.i204.i = icmp eq i32 %call.i.i203.i, 1
  br i1 %cmp.not.i204.i, label %if.end.i206.i, label %do.end.i205.i

do.end.i205.i:                                    ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #14
  %265 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %266, ptr noundef nonnull @.str.109, i32 noundef %call.i.i203.i) #16
  br label %if.else107.i

if.end.i206.i:                                    ; preds = %sw.bb98.i
  %267 = ptrtoint ptr %val.i201.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %val.i201.i, align 1
  %269 = and i8 %268, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %.not.i = icmp eq i8 %269, 0
  br i1 %.not.i, label %if.end7.i211.i, label %if.end.i206.i.if.end110.i_crit_edge

if.end.i206.i.if.end110.i_crit_edge:              ; preds = %if.end.i206.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.i

if.end7.i211.i:                                   ; preds = %if.end.i206.i
  %storemerge.i.i = or i8 %268, 1
  %270 = ptrtoint ptr %val.i201.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %storemerge.i.i, ptr %val.i201.i, align 1
  %write.i.i208.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 11
  %271 = ptrtoint ptr %write.i.i208.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %write.i.i208.i, align 4
  %call.i46.i209.i = call i32 %272(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 118, ptr noundef nonnull %val.i201.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i46.i209.i)
  %cmp17.not.i210.i = icmp eq i32 %call.i46.i209.i, 1
  %273 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %sfp, align 4
  br i1 %cmp17.not.i210.i, label %if.end24.i213.i, label %do.end22.i212.i

do.end22.i212.i:                                  ; preds = %if.end7.i211.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.112, i32 noundef %call.i46.i209.i) #16
  br label %if.else107.i

if.end24.i213.i:                                  ; preds = %if.end7.i211.i
  call void @__sanitizer_cov_trace_pc() #14
  %module_power_mW.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 29
  %275 = ptrtoint ptr %module_power_mW.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %module_power_mW.i.i, align 4
  %div.i.i = udiv i32 %276, 1000
  %div32.i.i = udiv i32 %276, 100
  %rem.i.i = urem i32 %div32.i.i, 10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %274, ptr noundef nonnull @.str.115, i32 noundef %div.i.i, i32 noundef %rem.i.i) #16
  br label %if.end110.i

if.else107.i:                                     ; preds = %do.end22.i212.i, %do.end.i205.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i201.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %277 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i219.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i220.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %277, ptr noundef %timeout1.i219.i, i32 noundef 10) #12
  br label %sfp_sm_module.exit

if.end110.i:                                      ; preds = %if.end24.i213.i, %if.end.i206.i.if.end110.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i201.i) #12
  %278 = ptrtoint ptr %sm_mod_state23.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 5, ptr %sm_mod_state23.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %279 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i224.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i.i225.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %279, ptr noundef %timeout1.i.i224.i, i32 noundef 30) #12
  br label %sfp_sm_module.exit

sw.bb112.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %event)
  %cmp113.not.i = icmp eq i32 %event, 10
  br i1 %cmp113.not.i, label %sw.bb112.i.insert.i_crit_edge, label %sw.bb112.i.sfp_sm_module.exit_crit_edge

sw.bb112.i.sfp_sm_module.exit_crit_edge:          ; preds = %sw.bb112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_module.exit

sw.bb112.i.insert.i_crit_edge:                    ; preds = %sw.bb112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %insert.i

insert.i:                                         ; preds = %sw.bb112.i.insert.i_crit_edge, %if.end92.i.insert.i_crit_edge
  %280 = ptrtoint ptr %sm_mod_state23.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 6, ptr %sm_mod_state23.i, align 4
  %timeout2.i.i228.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i229.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i228.i) #12
  br label %sfp_sm_module.exit

sfp_sm_module.exit:                               ; preds = %insert.i, %sw.bb112.i.sfp_sm_module.exit_crit_edge, %if.end110.i, %if.else107.i, %if.then91.i, %sw.bb81.i.sfp_sm_module.exit_crit_edge, %if.then71.i, %if.end64.i, %if.then48.i, %sw.bb.i70.sfp_sm_module.exit_crit_edge, %if.then27.i, %sw.default.i69.sfp_sm_module.exit_crit_edge, %if.end22.i.sfp_sm_module.exit_crit_edge, %if.end22.i.sfp_sm_module.exit_crit_edge188, %if.end21.i, %if.end.i67
  %sm_state.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 25
  %281 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %sm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %282)
  %cmp.not.i = icmp eq i16 %282, 0
  %sm_mod_state29.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 21
  %283 = ptrtoint ptr %sm_mod_state29.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %sm_mod_state29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %284)
  %cmp31.not.i = icmp eq i8 %284, 6
  br i1 %cmp.not.i, label %sw.bb.i82, label %land.lhs.true.i72

land.lhs.true.i72:                                ; preds = %sfp_sm_module.exit
  br i1 %cmp31.not.i, label %lor.lhs.false.i, label %land.lhs.true.i72.if.then.i75_crit_edge

land.lhs.true.i72.if.then.i75_crit_edge:          ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i75

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i72
  %285 = ptrtoint ptr %sm_dev_state.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %sm_dev_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %286)
  %cmp6.not.i = icmp eq i8 %286, 2
  br i1 %cmp6.not.i, label %if.end26.i, label %lor.lhs.false.i.if.then.i75_crit_edge

lor.lhs.false.i.if.then.i75_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i75

if.then.i75:                                      ; preds = %lor.lhs.false.i.if.then.i75_crit_edge, %land.lhs.true.i72.if.then.i75_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %282)
  %cmp10.i74 = icmp eq i16 %282, 7
  br i1 %cmp10.i74, label %land.lhs.true12.i, label %if.then.i75.if.end.i77_crit_edge

if.then.i75.if.end.i77_crit_edge:                 ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i77

land.lhs.true12.i:                                ; preds = %if.then.i75
  %287 = ptrtoint ptr %sm_dev_state.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %sm_dev_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %288)
  %cmp15.i = icmp eq i8 %288, 2
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true12.i.if.end.i77_crit_edge

land.lhs.true12.i.if.end.i77_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i77

if.then17.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_bus.i.i76 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 3
  %289 = ptrtoint ptr %sfp_bus.i.i76 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %sfp_bus.i.i76, align 4
  call void @sfp_link_down(ptr noundef %290) #12
  br label %if.end.i77

if.end.i77:                                       ; preds = %if.then17.i, %land.lhs.true12.i.if.end.i77_crit_edge, %if.then.i75.if.end.i77_crit_edge
  %291 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %sm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %292)
  %cmp20.i = icmp ugt i16 %292, 3
  br i1 %cmp20.i, label %if.then22.i, label %if.end.i77.if.end23.i_crit_edge

if.end.i77.if.end23.i_crit_edge:                  ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_bus.i78 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 3
  %293 = ptrtoint ptr %sfp_bus.i78 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %sfp_bus.i78, align 4
  call void @sfp_module_stop(ptr noundef %294) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.end.i77.if.end23.i_crit_edge
  %mod_phy.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 4
  %295 = ptrtoint ptr %mod_phy.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mod_phy.i, align 4
  %tobool.not.i79 = icmp eq ptr %296, null
  br i1 %tobool.not.i79, label %if.end23.i.if.end25.i_crit_edge, label %if.then24.i

if.end23.i.if.end25.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %sfp_bus.i229.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 3
  %297 = ptrtoint ptr %sfp_bus.i229.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %sfp_bus.i229.i, align 4
  call void @sfp_remove_phy(ptr noundef %298) #12
  %299 = ptrtoint ptr %mod_phy.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %mod_phy.i, align 4
  call void @phy_device_remove(ptr noundef %300) #12
  %301 = ptrtoint ptr %mod_phy.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %mod_phy.i, align 4
  call void @phy_device_free(ptr noundef %302) #12
  %303 = ptrtoint ptr %mod_phy.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr null, ptr %mod_phy.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %if.end23.i.if.end25.i_crit_edge
  call fastcc void @sfp_module_tx_disable(ptr noundef %sfp) #12
  %state_soft_mask.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 16
  %304 = ptrtoint ptr %state_soft_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 0, ptr %state_soft_mask.i.i, align 4
  %305 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 0, ptr %sm_state.i, align 4
  %timeout2.i.i.i80 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i.i81 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i.i80) #12
  br label %sfp_sm_main.exit

if.end26.i:                                       ; preds = %lor.lhs.false.i
  %306 = zext i16 %282 to i64
  call void @__sanitizer_cov_trace_switch(i64 %306, ptr @__sancov_gen_cov_switch_values.215)
  switch i16 %282, label %if.end26.i.sfp_sm_main.exit_crit_edge [
    i16 9, label %sw.bb137.i
    i16 2, label %sw.bb44.i
    i16 3, label %sw.bb60.i
    i16 4, label %sw.bb81.i85
    i16 5, label %sw.bb107.i
    i16 6, label %sw.bb113.i
    i16 7, label %sw.bb122.i
    i16 8, label %sw.bb131.i
  ]

if.end26.i.sfp_sm_main.exit_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_main.exit

sw.bb.i82:                                        ; preds = %sfp_sm_module.exit
  br i1 %cmp31.not.i, label %lor.lhs.false33.i, label %sw.bb.i82.sfp_sm_main.exit_crit_edge

sw.bb.i82.sfp_sm_main.exit_crit_edge:             ; preds = %sw.bb.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_main.exit

lor.lhs.false33.i:                                ; preds = %sw.bb.i82
  %307 = ptrtoint ptr %sm_dev_state.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %sm_dev_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %308)
  %cmp36.not.i = icmp eq i8 %308, 2
  br i1 %cmp36.not.i, label %if.end39.i, label %lor.lhs.false33.i.sfp_sm_main.exit_crit_edge

lor.lhs.false33.i.sfp_sm_main.exit_crit_edge:     ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_main.exit

if.end39.i:                                       ; preds = %lor.lhs.false33.i
  %diagmon.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 1, i32 5
  %309 = ptrtoint ptr %diagmon.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %diagmon.i, align 4
  %311 = and i8 %310, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool41.not.i = icmp eq i8 %311, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %if.end39.i.if.end43.i_crit_edge

if.end39.i.if.end43.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then42.i:                                      ; preds = %if.end39.i
  %state_soft_mask.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 16
  %312 = ptrtoint ptr %state_soft_mask.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %state_soft_mask.i, align 4
  %enhopts.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 1, i32 6
  %313 = ptrtoint ptr %enhopts.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %enhopts.i, align 1
  %315 = and i8 %314, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %tobool.not.i174 = icmp eq i8 %315, 0
  br i1 %tobool.not.i174, label %if.then42.i.if.end.i179_crit_edge, label %land.lhs.true.i177

if.then42.i.if.end.i179_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i179

land.lhs.true.i177:                               ; preds = %if.then42.i
  %arrayidx.i175 = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 3
  %316 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx.i175, align 4
  %tobool2.not.i176 = icmp eq ptr %317, null
  br i1 %tobool2.not.i176, label %if.then.i178, label %land.lhs.true.i177.if.end.i179_crit_edge

land.lhs.true.i177.if.end.i179_crit_edge:         ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i179

if.then.i178:                                     ; preds = %land.lhs.true.i177
  call void @__sanitizer_cov_trace_pc() #14
  %318 = ptrtoint ptr %state_soft_mask.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 8, ptr %state_soft_mask.i, align 4
  br label %if.end.i179

if.end.i179:                                      ; preds = %if.then.i178, %land.lhs.true.i177.if.end.i179_crit_edge, %if.then42.i.if.end.i179_crit_edge
  %319 = and i8 %314, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool8.not.i = icmp eq i8 %319, 0
  br i1 %tobool8.not.i, label %if.end.i179.if.end16.i_crit_edge, label %land.lhs.true9.i

if.end.i179.if.end16.i_crit_edge:                 ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

land.lhs.true9.i:                                 ; preds = %if.end.i179
  %arrayidx11.i = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 2
  %320 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %arrayidx11.i, align 4
  %tobool12.not.i = icmp eq ptr %321, null
  br i1 %tobool12.not.i, label %if.then13.i, label %land.lhs.true9.i.if.end16.i_crit_edge

land.lhs.true9.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then13.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  %322 = ptrtoint ptr %state_soft_mask.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %state_soft_mask.i, align 4
  %or15.i = or i32 %323, 4
  store i32 %or15.i, ptr %state_soft_mask.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %land.lhs.true9.i.if.end16.i_crit_edge, %if.end.i179.if.end16.i_crit_edge
  %324 = and i8 %314, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %tobool21.not.i = icmp eq i8 %324, 0
  br i1 %tobool21.not.i, label %if.end16.i.if.end29.i_crit_edge, label %land.lhs.true22.i

if.end16.i.if.end29.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.lhs.true22.i:                                ; preds = %if.end16.i
  %arrayidx24.i = getelementptr %struct.sfp, ptr %sfp, i32 0, i32 12, i32 1
  %325 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp eq ptr %326, null
  br i1 %tobool25.not.i, label %if.then26.i, label %land.lhs.true22.i.if.end29.i_crit_edge

land.lhs.true22.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then26.i:                                      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #14
  %327 = ptrtoint ptr %state_soft_mask.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %state_soft_mask.i, align 4
  %or28.i = or i32 %328, 2
  store i32 %or28.i, ptr %state_soft_mask.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %land.lhs.true22.i.if.end29.i_crit_edge, %if.end16.i.if.end29.i_crit_edge
  %329 = ptrtoint ptr %state_soft_mask.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %state_soft_mask.i, align 4
  %and31.i = and i32 %330, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end29.i.if.end43.i_crit_edge, label %land.lhs.true33.i

if.end29.i.if.end43.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

land.lhs.true33.i:                                ; preds = %if.end29.i
  %need_poll.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 14
  %331 = ptrtoint ptr %need_poll.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %need_poll.i, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %332)
  %tobool34.not.i = icmp eq i8 %332, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %land.lhs.true33.i.if.end43.i_crit_edge

land.lhs.true33.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then35.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %333 = load ptr, ptr @system_wq, align 4
  %poll.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 18
  %.b = load i1, ptr @poll_jiffies, align 4
  %334 = select i1 %.b, i32 10, i32 0
  %call.i.i180 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %333, ptr noundef %poll.i, i32 noundef %334) #12
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then35.i, %land.lhs.true33.i.if.end43.i_crit_edge, %if.end29.i.if.end43.i_crit_edge, %if.end39.i.if.end43.i_crit_edge
  call fastcc void @sfp_module_tx_enable(ptr noundef %sfp) #12
  %sm_fault_retries.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 26
  %335 = ptrtoint ptr %sm_fault_retries.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 5, ptr %sm_fault_retries.i, align 2
  %336 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 2, ptr %sm_state.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %337 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i.i83 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i.i.i84 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %337, ptr noundef %timeout1.i.i.i83, i32 noundef 5) #12
  br label %sfp_sm_main.exit

sw.bb44.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %event)
  %cmp45.not.i = icmp eq i32 %event, 10
  br i1 %cmp45.not.i, label %if.end48.i, label %sw.bb44.i.sfp_sm_main.exit_crit_edge

sw.bb44.i.sfp_sm_main.exit_crit_edge:             ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_main.exit

if.end48.i:                                       ; preds = %sw.bb44.i
  %state.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %338 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %state.i, align 4
  %and49.i = and i32 %339, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.init_done.i_crit_edge, label %if.then51.i

if.end48.i.init_done.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_done.i

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  %module_t_start_up.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 30
  %340 = ptrtoint ptr %module_t_start_up.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %module_t_start_up.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %341)
  %cmp53.i = icmp ugt i32 %341, 5
  %sub.i = add i32 %341, -5
  %spec.select.i = select i1 %cmp53.i, i32 %sub.i, i32 1
  %342 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 3, ptr %sm_state.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %343 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i170 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i.i171 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %343, ptr noundef %timeout1.i.i170, i32 noundef %spec.select.i) #12
  br label %sfp_sm_main.exit

sw.bb60.i:                                        ; preds = %if.end26.i
  %344 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %344, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %event, label %sw.bb60.i.sfp_sm_main.exit_crit_edge [
    i32 10, label %land.lhs.true63.i
    i32 7, label %sw.bb60.i.init_done.i_crit_edge
  ]

sw.bb60.i.init_done.i_crit_edge:                  ; preds = %sw.bb60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_done.i

sw.bb60.i.sfp_sm_main.exit_crit_edge:             ; preds = %sw.bb60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_main.exit

land.lhs.true63.i:                                ; preds = %sw.bb60.i
  %state64.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %345 = ptrtoint ptr %state64.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %state64.i, align 4
  %and65.i = and i32 %346, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %land.lhs.true63.i.init_done.i_crit_edge, label %if.then67.i

land.lhs.true63.i.init_done.i_crit_edge:          ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %init_done.i

if.then67.i:                                      ; preds = %land.lhs.true63.i
  %sm_fault_retries68.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 26
  %347 = ptrtoint ptr %sm_fault_retries68.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %sm_fault_retries68.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %348)
  %cmp70.i = icmp eq i8 %348, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %348)
  %cond = icmp eq i8 %348, 0
  br i1 %cond, label %if.then67.i.if.end.i167_crit_edge, label %land.lhs.true.i159

if.then67.i.if.end.i167_crit_edge:                ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i167

land.lhs.true.i159:                               ; preds = %if.then67.i
  %dec.i158 = add i8 %348, -1
  %349 = ptrtoint ptr %sm_fault_retries68.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %dec.i158, ptr %sm_fault_retries68.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i158)
  %tobool2.not.i = icmp eq i8 %dec.i158, 0
  br i1 %tobool2.not.i, label %do.end.i163, label %if.else.i164

do.end.i163:                                      ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #14
  %350 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %351, ptr noundef nonnull @.str.184) #16
  %352 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 10, ptr %sm_state.i, align 4
  %timeout2.i.i.i161 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i.i162 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i.i161) #12
  br label %sfp_sm_main.exit

if.else.i164:                                     ; preds = %land.lhs.true.i159
  br i1 %cmp70.i, label %do.end6.i, label %if.else.i164.if.end.i167_crit_edge

if.else.i164.if.end.i167_crit_edge:               ; preds = %if.else.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i167

do.end6.i:                                        ; preds = %if.else.i164
  call void @__sanitizer_cov_trace_pc() #14
  %353 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %354, ptr noundef nonnull @.str.187) #16
  br label %if.end.i167

if.end.i167:                                      ; preds = %do.end6.i, %if.else.i164.if.end.i167_crit_edge, %if.then67.i.if.end.i167_crit_edge
  %355 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 5, ptr %sm_state.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %356 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i.i165 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i.i.i166 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %356, ptr noundef %timeout1.i.i.i165, i32 noundef 100) #12
  br label %sfp_sm_main.exit

init_done.i:                                      ; preds = %land.lhs.true63.i.init_done.i_crit_edge, %sw.bb60.i.init_done.i_crit_edge, %if.end48.i.init_done.i_crit_edge
  %sm_phy_retries.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 27
  %357 = ptrtoint ptr %sm_phy_retries.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 12, ptr %sm_phy_retries.i, align 1
  br label %phy_probe.i

sw.bb81.i85:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %event)
  %cmp82.not.i = icmp eq i32 %event, 10
  br i1 %cmp82.not.i, label %sw.bb81.i85.phy_probe.i_crit_edge, label %sw.bb81.i85.sfp_sm_main.exit_crit_edge

sw.bb81.i85.sfp_sm_main.exit_crit_edge:           ; preds = %sw.bb81.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_main.exit

sw.bb81.i85.phy_probe.i_crit_edge:                ; preds = %sw.bb81.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %phy_probe.i

phy_probe.i:                                      ; preds = %sw.bb81.i85.phy_probe.i_crit_edge, %init_done.i
  %extended_cc.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 0, i32 9
  %358 = ptrtoint ptr %extended_cc.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %extended_cc.i.i, align 4
  %switch.tableidx = add i8 %359, -22
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %360 = icmp ult i8 %switch.tableidx, 9
  br i1 %360, label %switch.hole_check, label %phy_probe.i.sw.default.i.i_crit_edge

phy_probe.i.sw.default.i.i_crit_edge:             ; preds = %phy_probe.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default.i.i

sw.default.i.i:                                   ; preds = %switch.hole_check.sw.default.i.i_crit_edge, %phy_probe.i.sw.default.i.i_crit_edge
  %e1000_base_t.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 0, i32 3
  %361 = ptrtoint ptr %e1000_base_t.i.i to i32
  call void @__asan_loadN_noabort(i32 %361, i32 8)
  %bf.load.i.i = load i64, ptr %e1000_base_t.i.i, align 1
  %362 = and i64 %bf.load.i.i, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %362)
  %tobool.not.i.i = icmp eq i64 %362, 0
  br i1 %tobool.not.i.i, label %sw.default.i.i.if.end100.i_crit_edge, label %sw.default.i.i.sw.epilog.sink.split.i.i_crit_edge

sw.default.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i.i

sw.default.i.i.if.end100.i_crit_edge:             ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100.i

switch.hole_check:                                ; preds = %phy_probe.i
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 449, %switch.maskindex
  %363 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %363)
  %switch.lobit.not = icmp eq i16 %363, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i.i_crit_edge, label %switch.hole_check.sw.epilog.sink.split.i.i_crit_edge

switch.hole_check.sw.epilog.sink.split.i.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i.i

switch.hole_check.sw.default.i.i_crit_edge:       ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.default.i.i

sw.epilog.sink.split.i.i:                         ; preds = %switch.hole_check.sw.epilog.sink.split.i.i_crit_edge, %sw.default.i.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink.i.i = phi i1 [ false, %sw.default.i.i.sw.epilog.sink.split.i.i_crit_edge ], [ true, %switch.hole_check.sw.epilog.sink.split.i.i_crit_edge ]
  %i2c_mii.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 2
  %364 = ptrtoint ptr %i2c_mii.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %i2c_mii.i.i, align 4
  %call.i.i = call ptr @get_phy_device(ptr noundef %365, i32 noundef 22, i1 noundef zeroext %.sink.i.i) #12
  %cmp.i297.i = icmp eq ptr %call.i.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp.i297.i, label %sw.epilog.sink.split.i.i.if.then89.i_crit_edge, label %if.end.i.i87

sw.epilog.sink.split.i.i.if.then89.i_crit_edge:   ; preds = %sw.epilog.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then89.i

if.end.i.i87:                                     ; preds = %sw.epilog.sink.split.i.i
  %cmp.i.i.i86 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i86, label %do.end.i298.i, label %if.end7.i.i88

do.end.i298.i:                                    ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #14
  %366 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %sfp, align 4
  %368 = ptrtoint ptr %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %367, ptr noundef nonnull @.str.189, i32 noundef %368) #16
  br label %sfp_sm_probe_for_phy.exit.i

if.end7.i.i88:                                    ; preds = %if.end.i.i87
  %call8.i.i = call i32 @phy_device_register(ptr noundef %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end15.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i88
  call void @__sanitizer_cov_trace_pc() #14
  call void @phy_device_free(ptr noundef %call.i.i) #12
  %369 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %370, ptr noundef nonnull @.str.192, i32 noundef %call8.i.i) #16
  br label %sfp_sm_probe_for_phy.exit.i

if.end15.i.i:                                     ; preds = %if.end7.i.i88
  %sfp_bus.i299.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 3
  %371 = ptrtoint ptr %sfp_bus.i299.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %sfp_bus.i299.i, align 4
  %call16.i.i = call i32 @sfp_add_phy(ptr noundef %372, ptr noundef %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end23.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @phy_device_remove(ptr noundef %call.i.i) #12
  call void @phy_device_free(ptr noundef %call.i.i) #12
  %373 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %374, ptr noundef nonnull @.str.195, i32 noundef %call16.i.i) #16
  br label %sfp_sm_probe_for_phy.exit.i

if.end23.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mod_phy.i300.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 4
  %375 = ptrtoint ptr %mod_phy.i300.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %call.i.i, ptr %mod_phy.i300.i, align 4
  br label %if.end100.i

sfp_sm_probe_for_phy.exit.i:                      ; preds = %if.then18.i.i, %if.then10.i.i, %do.end.i298.i
  %err.0.i.i = phi i32 [ %368, %do.end.i298.i ], [ %call8.i.i, %if.then10.i.i ], [ %call16.i.i, %if.then18.i.i ]
  %376 = zext i32 %err.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %376, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %err.0.i.i, label %if.then98.i [
    i32 -19, label %sfp_sm_probe_for_phy.exit.i.if.then89.i_crit_edge
    i32 0, label %sfp_sm_probe_for_phy.exit.i.if.end100.i_crit_edge
  ]

sfp_sm_probe_for_phy.exit.i.if.end100.i_crit_edge: ; preds = %sfp_sm_probe_for_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100.i

sfp_sm_probe_for_phy.exit.i.if.then89.i_crit_edge: ; preds = %sfp_sm_probe_for_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then89.i

if.then89.i:                                      ; preds = %sfp_sm_probe_for_phy.exit.i.if.then89.i_crit_edge, %sw.epilog.sink.split.i.i.if.then89.i_crit_edge
  %sm_phy_retries90.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 27
  %377 = ptrtoint ptr %sm_phy_retries90.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %sm_phy_retries90.i, align 1
  %dec.i89 = add i8 %378, -1
  store i8 %dec.i89, ptr %sm_phy_retries90.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i89)
  %tobool91.not.i = icmp eq i8 %dec.i89, 0
  br i1 %tobool91.not.i, label %do.end.i90, label %if.then92.i

if.then92.i:                                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  %379 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 4, ptr %sm_state.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %380 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i232.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i.i233.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %380, ptr noundef %timeout1.i.i232.i, i32 noundef 5) #12
  br label %sfp_sm_main.exit

do.end.i90:                                       ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  %381 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %382, ptr noundef nonnull @.str.178) #16
  br label %if.end100.i

if.then98.i:                                      ; preds = %sfp_sm_probe_for_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %383 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %383)
  store i16 1, ptr %sm_state.i, align 4
  %timeout2.i.i235.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i236.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i235.i) #12
  br label %sfp_sm_main.exit

if.end100.i:                                      ; preds = %do.end.i90, %sfp_sm_probe_for_phy.exit.i.if.end100.i_crit_edge, %if.end23.i.i, %sw.default.i.i.if.end100.i_crit_edge
  %sfp_bus101.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 3
  %384 = ptrtoint ptr %sfp_bus101.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %sfp_bus101.i, align 4
  %call102.i = call i32 @sfp_module_start(ptr noundef %385) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.end105.i, label %if.then104.i

if.then104.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #14
  %386 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 1, ptr %sm_state.i, align 4
  %timeout2.i.i238.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i239.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i238.i) #12
  br label %sfp_sm_main.exit

if.end105.i:                                      ; preds = %if.end100.i
  %ext.i139 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 1
  %387 = ptrtoint ptr %ext.i139 to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %ext.i139, align 4
  %389 = trunc i16 %388 to i3
  %trunc.i140 = and i3 %389, -2
  %390 = zext i3 %trunc.i140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %390, ptr @__sancov_gen_cov_switch_values.218)
  switch i3 %trunc.i140, label %if.end105.i.if.else18.i150_crit_edge [
    i3 -4, label %if.then.i144
    i3 2, label %if.end15.i148
  ]

if.end105.i.if.else18.i150_crit_edge:             ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i150

if.then.i144:                                     ; preds = %if.end105.i
  %state.i141 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %391 = ptrtoint ptr %state.i141 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %state.i141, align 4
  %and4.i142 = and i32 %392, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i142)
  %tobool.not.i143 = icmp eq i32 %and4.i142, 0
  br i1 %tobool.not.i143, label %if.then.i144.sfp_sm_link_check_los.exit155_crit_edge, label %if.then.i144.if.else18.i150_crit_edge

if.then.i144.if.else18.i150_crit_edge:            ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i150

if.then.i144.sfp_sm_link_check_los.exit155_crit_edge: ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_link_check_los.exit155

if.end15.i148:                                    ; preds = %if.end105.i
  %state9.i145 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %393 = ptrtoint ptr %state9.i145 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %state9.i145, align 4
  %and10.i146 = and i32 %394, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i146)
  %tobool11.not.i147 = icmp eq i32 %and10.i146, 0
  br i1 %tobool11.not.i147, label %if.end15.i148.if.else18.i150_crit_edge, label %if.end15.i148.sfp_sm_link_check_los.exit155_crit_edge

if.end15.i148.sfp_sm_link_check_los.exit155_crit_edge: ; preds = %if.end15.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_link_check_los.exit155

if.end15.i148.if.else18.i150_crit_edge:           ; preds = %if.end15.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i150

if.else18.i150:                                   ; preds = %if.end15.i148.if.else18.i150_crit_edge, %if.then.i144.if.else18.i150_crit_edge, %if.end105.i.if.else18.i150_crit_edge
  %395 = ptrtoint ptr %sfp_bus101.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %sfp_bus101.i, align 4
  call void @sfp_link_up(ptr noundef %396) #12
  br label %sfp_sm_link_check_los.exit155

sfp_sm_link_check_los.exit155:                    ; preds = %if.else18.i150, %if.end15.i148.sfp_sm_link_check_los.exit155_crit_edge, %if.then.i144.sfp_sm_link_check_los.exit155_crit_edge
  %.sink.i151 = phi i16 [ 7, %if.else18.i150 ], [ 6, %if.then.i144.sfp_sm_link_check_los.exit155_crit_edge ], [ 6, %if.end15.i148.sfp_sm_link_check_los.exit155_crit_edge ]
  %397 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 %.sink.i151, ptr %sm_state.i, align 4
  %timeout2.i.i.i.i153 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i.i.i154 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i.i.i153) #12
  %sm_fault_retries106.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 26
  %398 = ptrtoint ptr %sm_fault_retries106.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 5, ptr %sm_fault_retries106.i, align 2
  br label %sfp_sm_main.exit

sw.bb107.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %event)
  %cmp108.i = icmp eq i32 %event, 10
  br i1 %cmp108.i, label %if.then110.i, label %sw.bb107.i.sfp_sm_main.exit_crit_edge

sw.bb107.i.sfp_sm_main.exit_crit_edge:            ; preds = %sw.bb107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_main.exit

if.then110.i:                                     ; preds = %sw.bb107.i
  call fastcc void @sfp_module_tx_fault_reset(ptr noundef %sfp) #12
  %module_t_start_up111.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 30
  %399 = ptrtoint ptr %module_t_start_up111.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %module_t_start_up111.i, align 4
  %401 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %401)
  store i16 3, ptr %sm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %400)
  %tobool.not.i.i.i91 = icmp eq i32 %400, 0
  br i1 %tobool.not.i.i.i91, label %if.else.i.i.i, label %if.then.i.i.i92

if.then.i.i.i92:                                  ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %402 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i241.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i.i242.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %402, ptr noundef %timeout1.i.i241.i, i32 noundef %400) #12
  br label %sfp_sm_main.exit

if.else.i.i.i:                                    ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #14
  %timeout2.i.i243.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i244.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i243.i) #12
  br label %sfp_sm_main.exit

sw.bb113.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp114.i = icmp eq i32 %event, 6
  br i1 %cmp114.i, label %if.then116.i, label %if.else117.i

if.then116.i:                                     ; preds = %sw.bb113.i
  %sm_fault_retries.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 26
  %403 = ptrtoint ptr %sm_fault_retries.i.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %sm_fault_retries.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %404)
  %tobool.not.i245.i = icmp eq i8 %404, 0
  br i1 %tobool.not.i245.i, label %if.then116.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i93

if.then116.i.if.else.i.i_crit_edge:               ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true.i.i93:                              ; preds = %if.then116.i
  %dec.i.i = add i8 %404, -1
  %405 = ptrtoint ptr %sm_fault_retries.i.i to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 %dec.i.i, ptr %sm_fault_retries.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i.i)
  %tobool2.not.i.i = icmp eq i8 %dec.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i94, label %land.lhs.true.i.i93.if.else.i.i_crit_edge

land.lhs.true.i.i93.if.else.i.i_crit_edge:        ; preds = %land.lhs.true.i.i93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

do.end.i.i94:                                     ; preds = %land.lhs.true.i.i93
  call void @__sanitizer_cov_trace_pc() #14
  %406 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %407, ptr noundef nonnull @.str.184) #16
  %408 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 10, ptr %sm_state.i, align 4
  %timeout2.i.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i.i.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i.i.i) #12
  br label %sfp_sm_main.exit

if.else.i.i:                                      ; preds = %land.lhs.true.i.i93.if.else.i.i_crit_edge, %if.then116.i.if.else.i.i_crit_edge
  %409 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %410, ptr noundef nonnull @.str.187) #16
  %411 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %411)
  store i16 8, ptr %sm_state.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %412 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i.i.i.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %412, ptr noundef %timeout1.i.i.i.i, i32 noundef 100) #12
  br label %sfp_sm_main.exit

if.else117.i:                                     ; preds = %sw.bb113.i
  %ext.i.i95 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 1
  %413 = ptrtoint ptr %ext.i.i95 to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %ext.i.i95, align 4
  %415 = and i16 %414, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %415)
  %cmp.i.i = icmp eq i16 %415, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %event)
  %cmp4.i.i = icmp eq i32 %event, 8
  %or.cond.i.i = and i1 %cmp4.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.else117.i.if.then119.i_crit_edge, label %sfp_los_event_inactive.exit.i

if.else117.i.if.then119.i_crit_edge:              ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then119.i

sfp_los_event_inactive.exit.i:                    ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %415)
  %cmp7.i.i = icmp eq i16 %415, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cmp9.i.i = icmp eq i32 %event, 9
  %spec.select.i.i = and i1 %cmp9.i.i, %cmp7.i.i
  br i1 %spec.select.i.i, label %sfp_los_event_inactive.exit.i.if.then119.i_crit_edge, label %sfp_los_event_inactive.exit.i.sfp_sm_main.exit_crit_edge

sfp_los_event_inactive.exit.i.sfp_sm_main.exit_crit_edge: ; preds = %sfp_los_event_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_main.exit

sfp_los_event_inactive.exit.i.if.then119.i_crit_edge: ; preds = %sfp_los_event_inactive.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then119.i

if.then119.i:                                     ; preds = %sfp_los_event_inactive.exit.i.if.then119.i_crit_edge, %if.else117.i.if.then119.i_crit_edge
  %sfp_bus.i136 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 3
  %416 = ptrtoint ptr %sfp_bus.i136 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %sfp_bus.i136, align 4
  call void @sfp_link_up(ptr noundef %417) #12
  %418 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 7, ptr %sm_state.i, align 4
  %timeout2.i.i.i137 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i.i138 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i.i137) #12
  br label %sfp_sm_main.exit

sw.bb122.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp123.i = icmp eq i32 %event, 6
  br i1 %cmp123.i, label %if.then125.i, label %if.else126.i

if.then125.i:                                     ; preds = %sw.bb122.i
  %sfp_bus.i246.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 3
  %419 = ptrtoint ptr %sfp_bus.i246.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %sfp_bus.i246.i, align 4
  call void @sfp_link_down(ptr noundef %420) #12
  %sm_fault_retries.i247.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 26
  %421 = ptrtoint ptr %sm_fault_retries.i247.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %sm_fault_retries.i247.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %422)
  %tobool.not.i248.i = icmp eq i8 %422, 0
  br i1 %tobool.not.i248.i, label %if.then125.i.if.else.i256.i_crit_edge, label %land.lhs.true.i251.i

if.then125.i.if.else.i256.i_crit_edge:            ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i256.i

land.lhs.true.i251.i:                             ; preds = %if.then125.i
  %dec.i249.i = add i8 %422, -1
  %423 = ptrtoint ptr %sm_fault_retries.i247.i to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 %dec.i249.i, ptr %sm_fault_retries.i247.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i249.i)
  %tobool2.not.i250.i = icmp eq i8 %dec.i249.i, 0
  br i1 %tobool2.not.i250.i, label %do.end.i255.i, label %land.lhs.true.i251.i.if.else.i256.i_crit_edge

land.lhs.true.i251.i.if.else.i256.i_crit_edge:    ; preds = %land.lhs.true.i251.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i256.i

do.end.i255.i:                                    ; preds = %land.lhs.true.i251.i
  call void @__sanitizer_cov_trace_pc() #14
  %424 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %425, ptr noundef nonnull @.str.184) #16
  %426 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 10, ptr %sm_state.i, align 4
  %timeout2.i.i.i253.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i.i254.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i.i253.i) #12
  br label %sfp_sm_main.exit

if.else.i256.i:                                   ; preds = %land.lhs.true.i251.i.if.else.i256.i_crit_edge, %if.then125.i.if.else.i256.i_crit_edge
  %427 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %428, ptr noundef nonnull @.str.187) #16
  %429 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %429)
  store i16 8, ptr %sm_state.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %430 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i.i258.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i.i.i259.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %430, ptr noundef %timeout1.i.i.i258.i, i32 noundef 100) #12
  br label %sfp_sm_main.exit

if.else126.i:                                     ; preds = %sw.bb122.i
  %ext.i261.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 1
  %431 = ptrtoint ptr %ext.i261.i to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %ext.i261.i, align 4
  %433 = and i16 %432, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %433)
  %cmp.i262.i = icmp eq i16 %433, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cmp4.i263.i = icmp eq i32 %event, 9
  %or.cond.i264.i = and i1 %cmp4.i263.i, %cmp.i262.i
  br i1 %or.cond.i264.i, label %if.else126.i.if.then128.i_crit_edge, label %sfp_los_event_active.exit.i

if.else126.i.if.then128.i_crit_edge:              ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then128.i

sfp_los_event_active.exit.i:                      ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %433)
  %cmp7.i265.i = icmp eq i16 %433, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %event)
  %cmp9.i266.i = icmp eq i32 %event, 8
  %spec.select.i267.i = and i1 %cmp9.i266.i, %cmp7.i265.i
  br i1 %spec.select.i267.i, label %sfp_los_event_active.exit.i.if.then128.i_crit_edge, label %sfp_los_event_active.exit.i.sfp_sm_main.exit_crit_edge

sfp_los_event_active.exit.i.sfp_sm_main.exit_crit_edge: ; preds = %sfp_los_event_active.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_main.exit

sfp_los_event_active.exit.i.if.then128.i_crit_edge: ; preds = %sfp_los_event_active.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then128.i

if.then128.i:                                     ; preds = %sfp_los_event_active.exit.i.if.then128.i_crit_edge, %if.else126.i.if.then128.i_crit_edge
  %sfp_bus.i269.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 3
  %434 = ptrtoint ptr %sfp_bus.i269.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %sfp_bus.i269.i, align 4
  call void @sfp_link_down(ptr noundef %435) #12
  %436 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 6, ptr %sm_state.i, align 4
  %timeout2.i.i271.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i272.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i271.i) #12
  br label %sfp_sm_main.exit

sw.bb131.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %event)
  %cmp132.i = icmp eq i32 %event, 10
  br i1 %cmp132.i, label %if.then134.i, label %sw.bb131.i.sfp_sm_main.exit_crit_edge

sw.bb131.i.sfp_sm_main.exit_crit_edge:            ; preds = %sw.bb131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_main.exit

if.then134.i:                                     ; preds = %sw.bb131.i
  call fastcc void @sfp_module_tx_fault_reset(ptr noundef %sfp) #12
  %module_t_start_up135.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 30
  %437 = ptrtoint ptr %module_t_start_up135.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %module_t_start_up135.i, align 4
  %439 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 9, ptr %sm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %438)
  %tobool.not.i.i275.i = icmp eq i32 %438, 0
  br i1 %tobool.not.i.i275.i, label %if.else.i.i281.i, label %if.then.i.i278.i

if.then.i.i278.i:                                 ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %440 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i276.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i.i277.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %440, ptr noundef %timeout1.i.i276.i, i32 noundef %438) #12
  br label %sfp_sm_main.exit

if.else.i.i281.i:                                 ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #14
  %timeout2.i.i279.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i280.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i279.i) #12
  br label %sfp_sm_main.exit

sw.bb137.i:                                       ; preds = %if.end26.i
  %441 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %441, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %event, label %sw.bb137.i.sfp_sm_main.exit_crit_edge [
    i32 10, label %land.lhs.true140.i
    i32 7, label %sw.bb137.i.do.end154.i_crit_edge
  ]

sw.bb137.i.do.end154.i_crit_edge:                 ; preds = %sw.bb137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end154.i

sw.bb137.i.sfp_sm_main.exit_crit_edge:            ; preds = %sw.bb137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_main.exit

land.lhs.true140.i:                               ; preds = %sw.bb137.i
  %state141.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %442 = ptrtoint ptr %state141.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %state141.i, align 4
  %and142.i = and i32 %443, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  br i1 %tobool143.not.i, label %land.lhs.true140.i.do.end154.i_crit_edge, label %if.then144.i

land.lhs.true140.i.do.end154.i_crit_edge:         ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end154.i

if.then144.i:                                     ; preds = %land.lhs.true140.i
  %sm_fault_retries.i283.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 26
  %444 = ptrtoint ptr %sm_fault_retries.i283.i to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %sm_fault_retries.i283.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %445)
  %tobool.not.i284.i = icmp eq i8 %445, 0
  br i1 %tobool.not.i284.i, label %if.then144.i.if.else.i292.i_crit_edge, label %land.lhs.true.i287.i

if.then144.i.if.else.i292.i_crit_edge:            ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i292.i

land.lhs.true.i287.i:                             ; preds = %if.then144.i
  %dec.i285.i = add i8 %445, -1
  %446 = ptrtoint ptr %sm_fault_retries.i283.i to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %dec.i285.i, ptr %sm_fault_retries.i283.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i285.i)
  %tobool2.not.i286.i = icmp eq i8 %dec.i285.i, 0
  br i1 %tobool2.not.i286.i, label %do.end.i291.i, label %land.lhs.true.i287.i.if.else.i292.i_crit_edge

land.lhs.true.i287.i.if.else.i292.i_crit_edge:    ; preds = %land.lhs.true.i287.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i292.i

do.end.i291.i:                                    ; preds = %land.lhs.true.i287.i
  call void @__sanitizer_cov_trace_pc() #14
  %447 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %448, ptr noundef nonnull @.str.184) #16
  %449 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 10, ptr %sm_state.i, align 4
  %timeout2.i.i.i289.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i.i290.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i.i289.i) #12
  br label %sfp_sm_main.exit

if.else.i292.i:                                   ; preds = %land.lhs.true.i287.i.if.else.i292.i_crit_edge, %if.then144.i.if.else.i292.i_crit_edge
  %450 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %450)
  store i16 8, ptr %sm_state.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %451 = load ptr, ptr @system_power_efficient_wq, align 4
  %timeout1.i.i.i294.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call.i.i.i.i295.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %451, ptr noundef %timeout1.i.i.i294.i, i32 noundef 100) #12
  br label %sfp_sm_main.exit

do.end154.i:                                      ; preds = %land.lhs.true140.i.do.end154.i_crit_edge, %sw.bb137.i.do.end154.i_crit_edge
  %452 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %453, ptr noundef nonnull @.str.181) #16
  %ext.i128 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 1
  %454 = ptrtoint ptr %ext.i128 to i32
  call void @__asan_load2_noabort(i32 %454)
  %455 = load i16, ptr %ext.i128, align 4
  %456 = trunc i16 %455 to i3
  %trunc.i = and i3 %456, -2
  %457 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %457, ptr @__sancov_gen_cov_switch_values.220)
  switch i3 %trunc.i, label %do.end154.i.if.else18.i_crit_edge [
    i3 -4, label %if.then.i131
    i3 2, label %if.end15.i
  ]

do.end154.i.if.else18.i_crit_edge:                ; preds = %do.end154.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i

if.then.i131:                                     ; preds = %do.end154.i
  %state.i129 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %458 = ptrtoint ptr %state.i129 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %state.i129, align 4
  %and4.i = and i32 %459, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i130 = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i130, label %if.then.i131.sfp_sm_link_check_los.exit_crit_edge, label %if.then.i131.if.else18.i_crit_edge

if.then.i131.if.else18.i_crit_edge:               ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i

if.then.i131.sfp_sm_link_check_los.exit_crit_edge: ; preds = %if.then.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_link_check_los.exit

if.end15.i:                                       ; preds = %do.end154.i
  %state9.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %460 = ptrtoint ptr %state9.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %state9.i, align 4
  %and10.i = and i32 %461, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end15.i.if.else18.i_crit_edge, label %if.end15.i.sfp_sm_link_check_los.exit_crit_edge

if.end15.i.sfp_sm_link_check_los.exit_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_sm_link_check_los.exit

if.end15.i.if.else18.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else18.i

if.else18.i:                                      ; preds = %if.end15.i.if.else18.i_crit_edge, %if.then.i131.if.else18.i_crit_edge, %do.end154.i.if.else18.i_crit_edge
  %sfp_bus.i.i132 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 3
  %462 = ptrtoint ptr %sfp_bus.i.i132 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %sfp_bus.i.i132, align 4
  call void @sfp_link_up(ptr noundef %463) #12
  br label %sfp_sm_link_check_los.exit

sfp_sm_link_check_los.exit:                       ; preds = %if.else18.i, %if.end15.i.sfp_sm_link_check_los.exit_crit_edge, %if.then.i131.sfp_sm_link_check_los.exit_crit_edge
  %.sink.i133 = phi i16 [ 7, %if.else18.i ], [ 6, %if.then.i131.sfp_sm_link_check_los.exit_crit_edge ], [ 6, %if.end15.i.sfp_sm_link_check_los.exit_crit_edge ]
  %464 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_store2_noabort(i32 %464)
  store i16 %.sink.i133, ptr %sm_state.i, align 4
  %timeout2.i.i.i.i134 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 19
  %call3.i.i.i.i135 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout2.i.i.i.i134) #12
  br label %sfp_sm_main.exit

sfp_sm_main.exit:                                 ; preds = %sfp_sm_link_check_los.exit, %if.else.i292.i, %do.end.i291.i, %sw.bb137.i.sfp_sm_main.exit_crit_edge, %if.else.i.i281.i, %if.then.i.i278.i, %sw.bb131.i.sfp_sm_main.exit_crit_edge, %if.then128.i, %sfp_los_event_active.exit.i.sfp_sm_main.exit_crit_edge, %if.else.i256.i, %do.end.i255.i, %if.then119.i, %sfp_los_event_inactive.exit.i.sfp_sm_main.exit_crit_edge, %if.else.i.i, %do.end.i.i94, %if.else.i.i.i, %if.then.i.i.i92, %sw.bb107.i.sfp_sm_main.exit_crit_edge, %sfp_sm_link_check_los.exit155, %if.then104.i, %if.then98.i, %if.then92.i, %sw.bb81.i85.sfp_sm_main.exit_crit_edge, %if.end.i167, %do.end.i163, %sw.bb60.i.sfp_sm_main.exit_crit_edge, %if.then51.i, %sw.bb44.i.sfp_sm_main.exit_crit_edge, %if.end43.i, %lor.lhs.false33.i.sfp_sm_main.exit_crit_edge, %sw.bb.i82.sfp_sm_main.exit_crit_edge, %if.end26.i.sfp_sm_main.exit_crit_edge, %if.end25.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sfp_sm_event.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sfp_sm_event, %if.then21)) #12
          to label %do.end32 [label %if.then21], !srcloc !446

if.then21:                                        ; preds = %sfp_sm_main.exit
  %465 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %sfp, align 4
  %467 = ptrtoint ptr %sm_mod_state29.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %sm_mod_state29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %468)
  %cmp.i96 = icmp ugt i8 %468, 6
  br i1 %cmp.i96, label %if.then21.mod_state_to_str.exit101_crit_edge, label %if.end.i99

if.then21.mod_state_to_str.exit101_crit_edge:     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %mod_state_to_str.exit101

if.end.i99:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i97 = zext i8 %468 to i32
  %arrayidx.i98 = getelementptr [7 x ptr], ptr @mod_state_strings, i32 0, i32 %conv.i97
  %469 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %arrayidx.i98, align 4
  br label %mod_state_to_str.exit101

mod_state_to_str.exit101:                         ; preds = %if.end.i99, %if.then21.mod_state_to_str.exit101_crit_edge
  %retval.0.i100 = phi ptr [ %470, %if.end.i99 ], [ @.str.69, %if.then21.mod_state_to_str.exit101_crit_edge ]
  %471 = ptrtoint ptr %sm_dev_state.i to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %sm_dev_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %472)
  %cmp.i102 = icmp ugt i8 %472, 2
  br i1 %cmp.i102, label %mod_state_to_str.exit101.dev_state_to_str.exit107_crit_edge, label %if.end.i105

mod_state_to_str.exit101.dev_state_to_str.exit107_crit_edge: ; preds = %mod_state_to_str.exit101
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_state_to_str.exit107

if.end.i105:                                      ; preds = %mod_state_to_str.exit101
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i103 = zext i8 %472 to i32
  %arrayidx.i104 = getelementptr [3 x ptr], ptr @dev_state_strings, i32 0, i32 %conv.i103
  %473 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %arrayidx.i104, align 4
  br label %dev_state_to_str.exit107

dev_state_to_str.exit107:                         ; preds = %if.end.i105, %mod_state_to_str.exit101.dev_state_to_str.exit107_crit_edge
  %retval.0.i106 = phi ptr [ %474, %if.end.i105 ], [ @.str.77, %mod_state_to_str.exit101.dev_state_to_str.exit107_crit_edge ]
  %475 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %sm_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %476)
  %cmp.i108 = icmp ugt i16 %476, 10
  br i1 %cmp.i108, label %dev_state_to_str.exit107.sm_state_to_str.exit113_crit_edge, label %if.end.i111

dev_state_to_str.exit107.sm_state_to_str.exit113_crit_edge: ; preds = %dev_state_to_str.exit107
  call void @__sanitizer_cov_trace_pc() #14
  br label %sm_state_to_str.exit113

if.end.i111:                                      ; preds = %dev_state_to_str.exit107
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i109 = zext i16 %476 to i32
  %arrayidx.i110 = getelementptr [11 x ptr], ptr @sm_state_strings, i32 0, i32 %conv.i109
  %477 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %arrayidx.i110, align 4
  br label %sm_state_to_str.exit113

sm_state_to_str.exit113:                          ; preds = %if.end.i111, %dev_state_to_str.exit107.sm_state_to_str.exit113_crit_edge
  %retval.0.i112 = phi ptr [ %478, %if.end.i111 ], [ @.str.81, %dev_state_to_str.exit107.sm_state_to_str.exit113_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sfp_sm_event.__UNIQUE_ID_ddebug384, ptr noundef %466, ptr noundef nonnull @.str.68, ptr noundef %retval.0.i100, ptr noundef %retval.0.i106, ptr noundef %retval.0.i112) #12
  br label %do.end32

do.end32:                                         ; preds = %sm_state_to_str.exit113, %sfp_sm_main.exit
  call void @mutex_unlock(ptr noundef %sm_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sfp_check_state(ptr noundef %data)
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sfp_register_socket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sfp_debugfs_init(ptr noundef %sfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sfp, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef null) #12
  %debugfs_dir = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 36
  %6 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %debugfs_dir, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.199, i16 noundef zeroext 384, ptr noundef %call1, ptr noundef %sfp, ptr noundef nonnull @sfp_debug_state_fops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfp_poll(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -192
  tail call fastcc void @sfp_check_state(ptr noundef %add.ptr)
  %state_soft_mask = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %state_soft_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_soft_mask, align 4
  %and = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %need_poll = getelementptr i8, ptr %work, i32 -104
  %2 = ptrtoint ptr %need_poll to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_poll, align 4, !range !444
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %.b = load i1, ptr @poll_jiffies, align 4
  %5 = select i1 %.b, i32 10, i32 0
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfp_timeout(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -292
  tail call void @rtnl_lock() #12
  tail call fastcc void @sfp_sm_event(ptr noundef %add.ptr, i32 noundef 10)
  tail call void @rtnl_unlock() #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sfp_check_state(ptr noundef %sfp) unnamed_addr #0 align 64 {
entry:
  %status.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %st_mutex = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %st_mutex, i32 noundef 0) #12
  %get_state.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 8
  %0 = ptrtoint ptr %get_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_state.i, align 4
  %call.i = tail call i32 %1(ptr noundef %sfp) #12
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.sfp_get_state.exit_crit_edge, label %land.lhs.true.i

entry.sfp_get_state.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_get_state.exit

land.lhs.true.i:                                  ; preds = %entry
  %state_soft_mask.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 16
  %2 = ptrtoint ptr %state_soft_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_soft_mask.i, align 4
  %and1.i = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.sfp_get_state.exit_crit_edge, label %if.then.i

land.lhs.true.i.sfp_get_state.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_get_state.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i.i) #12
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %status.i.i, align 1, !annotation !445
  %read.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %5 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read.i.i.i, align 4
  %call.i.i.i = call i32 %6(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status.i.i, align 1
  %9 = and i8 %8, 6
  %10 = zext i8 %9 to i32
  br label %sfp_soft_get_state.exit.i

do.body.i.i:                                      ; preds = %if.then.i
  %call8.i.i = call i32 @___ratelimit(ptr noundef nonnull @sfp_soft_get_state._rs, ptr noundef nonnull @__func__.sfp_soft_get_state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body.i.i.do.end14.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end14.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sfp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.63, i32 noundef %call.i.i.i) #16
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end14.i.i_crit_edge
  %state15.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %13 = ptrtoint ptr %state15.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state15.i.i, align 4
  br label %sfp_soft_get_state.exit.i

sfp_soft_get_state.exit.i:                        ; preds = %do.end14.i.i, %if.then.i.i
  %state.1.i.i = phi i32 [ %14, %do.end14.i.i ], [ %10, %if.then.i.i ]
  %15 = ptrtoint ptr %state_soft_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state_soft_mask.i, align 4
  %and17.i.i = and i32 %16, %state.1.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i.i) #12
  %or.i = or i32 %and17.i.i, %call.i
  br label %sfp_get_state.exit

sfp_get_state.exit:                               ; preds = %sfp_soft_get_state.exit.i, %land.lhs.true.i.sfp_get_state.exit_crit_edge, %entry.sfp_get_state.exit_crit_edge
  %state.0.i = phi i32 [ %or.i, %sfp_soft_get_state.exit.i ], [ %call.i, %land.lhs.true.i.sfp_get_state.exit_crit_edge ], [ %call.i, %entry.sfp_get_state.exit_crit_edge ]
  %state1 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %17 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state1, align 4
  %xor = xor i32 %18, %state.0.i
  %and = and i32 %xor, 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sfp_get_state.exit
  %i.074 = phi i32 [ 0, %sfp_get_state.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.074
  %and2 = and i32 %and, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sfp_check_state.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sfp_check_state, %if.then7)) #12
          to label %for.inc [label %if.then7], !srcloc !446

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sfp, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @gpio_of_names, i32 0, i32 %i.074
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state1, align 4
  %25 = lshr i32 %24, %i.074
  %26 = and i32 %25, 1
  %27 = lshr i32 %state.0.i, %i.074
  %28 = and i32 %27, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sfp_check_state.__UNIQUE_ID_ddebug389, ptr noundef %20, ptr noundef nonnull @.str.31, ptr noundef %22, i32 noundef %26, i32 noundef %28) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %do.body, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %29 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state1, align 4
  %and25 = and i32 %30, 24
  %or = or i32 %and25, %state.0.i
  store i32 %or, ptr %state1, align 4
  call void @rtnl_lock() #12
  %and27 = and i32 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %for.end.if.end32_crit_edge, label %if.then29

for.end.if.end32_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %and30 = and i32 %state.0.i, 1
  %31 = xor i32 %and30, 1
  call fastcc void @sfp_sm_event(ptr noundef %sfp, i32 noundef %31)
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %for.end.if.end32_crit_edge
  %and33 = and i32 %xor, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end39_crit_edge, label %if.then35

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %and36 = and i32 %state.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %cond38 = select i1 %tobool37.not, i32 7, i32 6
  call fastcc void @sfp_sm_event(ptr noundef %sfp, i32 noundef %cond38)
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end32.if.end39_crit_edge
  %and40 = and i32 %xor, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end46_crit_edge, label %if.then42

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %and43 = and i32 %state.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %cond45 = select i1 %tobool44.not, i32 9, i32 8
  call fastcc void @sfp_sm_event(ptr noundef %sfp, i32 noundef %cond45)
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end39.if.end46_crit_edge
  call void @rtnl_unlock() #12
  call void @mutex_unlock(ptr noundef %st_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfp_hwmon_probe(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -688
  %i2c_block_size = getelementptr i8, ptr %work, i32 -664
  %0 = ptrtoint ptr %i2c_block_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.35) #16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.38) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %diag = getelementptr i8, ptr %work, i32 -92
  %read.i = getelementptr i8, ptr %work, i32 -648
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %7(ptr noundef %add.ptr, i1 noundef zeroext true, i8 noundef zeroext 0, ptr noundef %diag, i32 noundef 92) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.end
  %hwmon_tries = getelementptr i8, ptr %work, i32 100
  %8 = ptrtoint ptr %hwmon_tries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwmon_tries, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %hwmon_tries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end12, label %if.then7

if.then7:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i76 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef 500) #12
  br label %cleanup

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.41, i32 noundef %call.i) #16
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.dev_name.exit_crit_edge

if.end15.dev_name.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end15.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %if.end15.dev_name.exit_crit_edge ]
  %call18 = tail call noalias ptr @kstrdup(ptr noundef %retval.0.i, i32 noundef 3264) #12
  %hwmon_name = getelementptr i8, ptr %work, i32 108
  %19 = ptrtoint ptr %hwmon_name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call18, ptr %hwmon_name, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %do.end24, label %dev_name.exit.for.cond_crit_edge

dev_name.exit.for.cond_crit_edge:                 ; preds = %dev_name.exit
  br label %for.cond

do.end24:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.44) #16
  br label %cleanup

for.cond:                                         ; preds = %for.inc, %dev_name.exit.for.cond_crit_edge
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %dev_name.exit.for.cond_crit_edge ]
  %22 = ptrtoint ptr %hwmon_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwmon_name, align 4
  %arrayidx = getelementptr i8, ptr %23, i32 %i.0
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.221)
  switch i8 %25, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 45, label %for.cond.if.then32_crit_edge
    i8 42, label %for.cond.if.then32_crit_edge79
    i8 32, label %for.cond.if.then32_crit_edge80
    i8 9, label %for.cond.if.then32_crit_edge81
    i8 10, label %for.cond.if.then32_crit_edge82
  ]

for.cond.if.then32_crit_edge82:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

for.cond.if.then32_crit_edge81:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

for.cond.if.then32_crit_edge80:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

for.cond.if.then32_crit_edge79:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

for.cond.if.then32_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then32:                                        ; preds = %for.cond.if.then32_crit_edge, %for.cond.if.then32_crit_edge79, %for.cond.if.then32_crit_edge80, %for.cond.if.then32_crit_edge81, %for.cond.if.then32_crit_edge82
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 95, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %for.cond.for.inc_crit_edge
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %call38 = tail call ptr @hwmon_device_register_with_info(ptr noundef %29, ptr noundef %23, ptr noundef %add.ptr, ptr noundef nonnull @sfp_hwmon_chip_info, ptr noundef null) #12
  %hwmon_dev = getelementptr i8, ptr %work, i32 104
  %30 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call38, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end44, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end44:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  %33 = ptrtoint ptr %call38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.47, i32 noundef %33) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %for.end.cleanup_crit_edge, %do.end24, %do.end12, %if.then7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @sfp_hwmon_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb15
    i32 4, label %sw.bb27
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 15, label %sw.bb.sw.bb1_crit_edge
    i32 16, label %sw.bb.sw.bb1_crit_edge55
    i32 14, label %sw.bb.sw.bb1_crit_edge56
    i32 17, label %sw.bb.sw.bb1_crit_edge57
    i32 5, label %sw.bb.sw.bb1_crit_edge58
    i32 7, label %sw.bb.sw.bb1_crit_edge59
    i32 3, label %sw.bb.sw.bb1_crit_edge60
    i32 9, label %sw.bb.sw.bb1_crit_edge61
    i32 1, label %sw.bb.sw.bb2_crit_edge
    i32 21, label %sw.bb.sw.bb2_crit_edge62
  ]

sw.bb.sw.bb2_crit_edge62:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

sw.bb.sw.bb1_crit_edge61:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge60:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge59:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge58:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge57:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge56:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge55:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %sw.bb.sw.bb1_crit_edge55, %sw.bb.sw.bb1_crit_edge56, %sw.bb.sw.bb1_crit_edge57, %sw.bb.sw.bb1_crit_edge58, %sw.bb.sw.bb1_crit_edge59, %sw.bb.sw.bb1_crit_edge60, %sw.bb.sw.bb1_crit_edge61
  %enhopts = getelementptr inbounds %struct.sfp, ptr %data, i32 0, i32 28, i32 1, i32 6
  %2 = ptrtoint ptr %enhopts to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enhopts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  br i1 %tobool.not, label %sw.bb1.cleanup_crit_edge, label %sw.bb1.sw.bb2_crit_edge

sw.bb1.sw.bb2_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb1.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge62
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %attr, label %sw.bb3.cleanup_crit_edge [
    i32 12, label %sw.bb3.sw.bb4_crit_edge
    i32 13, label %sw.bb3.sw.bb4_crit_edge63
    i32 14, label %sw.bb3.sw.bb4_crit_edge64
    i32 15, label %sw.bb3.sw.bb4_crit_edge65
    i32 2, label %sw.bb3.sw.bb4_crit_edge66
    i32 3, label %sw.bb3.sw.bb4_crit_edge67
    i32 4, label %sw.bb3.sw.bb4_crit_edge68
    i32 5, label %sw.bb3.sw.bb4_crit_edge69
    i32 1, label %sw.bb3.sw.bb13_crit_edge
    i32 10, label %sw.bb3.sw.bb13_crit_edge70
  ]

sw.bb3.sw.bb13_crit_edge70:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

sw.bb3.sw.bb13_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

sw.bb3.sw.bb4_crit_edge69:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

sw.bb3.sw.bb4_crit_edge68:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

sw.bb3.sw.bb4_crit_edge67:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

sw.bb3.sw.bb4_crit_edge66:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

sw.bb3.sw.bb4_crit_edge65:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

sw.bb3.sw.bb4_crit_edge64:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

sw.bb3.sw.bb4_crit_edge63:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

sw.bb3.sw.bb4_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb3.sw.bb4_crit_edge, %sw.bb3.sw.bb4_crit_edge63, %sw.bb3.sw.bb4_crit_edge64, %sw.bb3.sw.bb4_crit_edge65, %sw.bb3.sw.bb4_crit_edge66, %sw.bb3.sw.bb4_crit_edge67, %sw.bb3.sw.bb4_crit_edge68, %sw.bb3.sw.bb4_crit_edge69
  %enhopts7 = getelementptr inbounds %struct.sfp, ptr %data, i32 0, i32 28, i32 1, i32 6
  %5 = ptrtoint ptr %enhopts7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enhopts7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %tobool10.not = icmp sgt i8 %6, -1
  br i1 %tobool10.not, label %sw.bb4.cleanup_crit_edge, label %sw.bb4.sw.bb13_crit_edge

sw.bb4.sw.bb13_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb13:                                          ; preds = %sw.bb4.sw.bb13_crit_edge, %sw.bb3.sw.bb13_crit_edge, %sw.bb3.sw.bb13_crit_edge70
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %7 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %attr, label %sw.bb15.cleanup_crit_edge [
    i32 12, label %sw.bb15.sw.bb16_crit_edge
    i32 13, label %sw.bb15.sw.bb16_crit_edge71
    i32 14, label %sw.bb15.sw.bb16_crit_edge72
    i32 15, label %sw.bb15.sw.bb16_crit_edge73
    i32 2, label %sw.bb15.sw.bb16_crit_edge74
    i32 3, label %sw.bb15.sw.bb16_crit_edge75
    i32 4, label %sw.bb15.sw.bb16_crit_edge76
    i32 5, label %sw.bb15.sw.bb16_crit_edge77
    i32 1, label %sw.bb15.sw.bb25_crit_edge
    i32 10, label %sw.bb15.sw.bb25_crit_edge78
  ]

sw.bb15.sw.bb25_crit_edge78:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

sw.bb15.sw.bb25_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

sw.bb15.sw.bb16_crit_edge77:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16

sw.bb15.sw.bb16_crit_edge76:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16

sw.bb15.sw.bb16_crit_edge75:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16

sw.bb15.sw.bb16_crit_edge74:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16

sw.bb15.sw.bb16_crit_edge73:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16

sw.bb15.sw.bb16_crit_edge72:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16

sw.bb15.sw.bb16_crit_edge71:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16

sw.bb15.sw.bb16_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb16

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb16:                                          ; preds = %sw.bb15.sw.bb16_crit_edge, %sw.bb15.sw.bb16_crit_edge71, %sw.bb15.sw.bb16_crit_edge72, %sw.bb15.sw.bb16_crit_edge73, %sw.bb15.sw.bb16_crit_edge74, %sw.bb15.sw.bb16_crit_edge75, %sw.bb15.sw.bb16_crit_edge76, %sw.bb15.sw.bb16_crit_edge77
  %enhopts19 = getelementptr inbounds %struct.sfp, ptr %data, i32 0, i32 28, i32 1, i32 6
  %8 = ptrtoint ptr %enhopts19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enhopts19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool22.not = icmp sgt i8 %9, -1
  br i1 %tobool22.not, label %sw.bb16.cleanup_crit_edge, label %sw.bb16.sw.bb25_crit_edge

sw.bb16.sw.bb25_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb25:                                          ; preds = %sw.bb16.sw.bb25_crit_edge, %sw.bb15.sw.bb25_crit_edge, %sw.bb15.sw.bb25_crit_edge78
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  %diagmon = getelementptr inbounds %struct.sfp, ptr %data, i32 0, i32 28, i32 1, i32 5
  %10 = ptrtoint ptr %diagmon to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %diagmon, align 4
  %12 = and i8 %11, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool32.not = icmp ne i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp = icmp eq i32 %channel, 1
  %or.cond = and i1 %cmp, %tobool32.not
  br i1 %or.cond, label %sw.bb27.cleanup_crit_edge, label %if.end35

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %sw.bb27
  %13 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %attr, label %if.end35.cleanup_crit_edge [
    i32 25, label %if.end35.sw.bb36_crit_edge
    i32 26, label %if.end35.sw.bb36_crit_edge79
    i32 27, label %if.end35.sw.bb36_crit_edge80
    i32 28, label %if.end35.sw.bb36_crit_edge81
    i32 18, label %if.end35.sw.bb36_crit_edge82
    i32 19, label %if.end35.sw.bb36_crit_edge83
    i32 21, label %if.end35.sw.bb36_crit_edge84
    i32 20, label %if.end35.sw.bb36_crit_edge85
    i32 9, label %if.end35.sw.bb45_crit_edge
    i32 22, label %if.end35.sw.bb45_crit_edge86
  ]

if.end35.sw.bb45_crit_edge86:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb45

if.end35.sw.bb45_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb45

if.end35.sw.bb36_crit_edge85:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36

if.end35.sw.bb36_crit_edge84:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36

if.end35.sw.bb36_crit_edge83:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36

if.end35.sw.bb36_crit_edge82:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36

if.end35.sw.bb36_crit_edge81:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36

if.end35.sw.bb36_crit_edge80:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36

if.end35.sw.bb36_crit_edge79:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36

if.end35.sw.bb36_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb36

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb36:                                          ; preds = %if.end35.sw.bb36_crit_edge, %if.end35.sw.bb36_crit_edge79, %if.end35.sw.bb36_crit_edge80, %if.end35.sw.bb36_crit_edge81, %if.end35.sw.bb36_crit_edge82, %if.end35.sw.bb36_crit_edge83, %if.end35.sw.bb36_crit_edge84, %if.end35.sw.bb36_crit_edge85
  %enhopts39 = getelementptr inbounds %struct.sfp, ptr %data, i32 0, i32 28, i32 1, i32 6
  %14 = ptrtoint ptr %enhopts39 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enhopts39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool42.not = icmp sgt i8 %15, -1
  br i1 %tobool42.not, label %sw.bb36.cleanup_crit_edge, label %sw.bb36.sw.bb45_crit_edge

sw.bb36.sw.bb45_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb45

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb45:                                          ; preds = %sw.bb36.sw.bb45_crit_edge, %if.end35.sw.bb45_crit_edge, %if.end35.sw.bb45_crit_edge86
  br label %cleanup

cleanup:                                          ; preds = %sw.bb45, %sw.bb36.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %sw.bb27.cleanup_crit_edge, %sw.bb25, %sw.bb16.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb13, %sw.bb4.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb2, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 292, %sw.bb45 ], [ 292, %sw.bb25 ], [ 292, %sw.bb13 ], [ 292, %sw.bb2 ], [ 0, %sw.bb1.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %sw.bb3.cleanup_crit_edge ], [ 0, %sw.bb16.cleanup_crit_edge ], [ 0, %sw.bb15.cleanup_crit_edge ], [ 0, %sw.bb27.cleanup_crit_edge ], [ 0, %sw.bb36.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr noundef %value) #0 align 64 {
entry:
  %val.i.i.i257 = alloca i16, align 2
  %status.i258 = alloca i8, align 1
  %val.i.i.i193 = alloca i16, align 2
  %status.i194 = alloca i8, align 1
  %val.i.i.i86 = alloca i16, align 2
  %status.i87 = alloca i8, align 1
  %val.i.i.i24 = alloca i16, align 2
  %status.i25 = alloca i8, align 1
  %val.i.i.i = alloca i16, align 2
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
    i32 4, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #12
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %status.i, align 1, !annotation !445
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %attr, label %sw.bb.sfp_hwmon_temp.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb1.i
    i32 5, label %sw.bb2.i
    i32 7, label %sw.bb5.i
    i32 9, label %sw.bb8.i
    i32 14, label %sw.bb11.i
    i32 15, label %sw.bb16.i
    i32 16, label %sw.bb29.i
    i32 17, label %sw.bb42.i
  ]

sw.bb.sfp_hwmon_temp.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_temp.exit

sw.bb.i:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #12
  %5 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !445
  %read.i.i.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %read.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %7(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 96, ptr noundef nonnull %val.i.i.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %sfp_hwmon_read_sensor.exit.thread.i.i, label %if.end.i.i

sfp_hwmon_read_sensor.exit.thread.i.i:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #12
  br label %sfp_hwmon_temp.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  %8 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %val.i.i.i, align 2
  %conv2.i.i.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv2.i.i.i, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #12
  %diagmon.i.i.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %11 = ptrtoint ptr %diagmon.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %diagmon.i.i.i.i, align 4
  %13 = and i8 %12, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.sfp_hwmon_calibrate.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.sfp_hwmon_calibrate.exit.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %cal_t_offset.i.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 38
  %14 = ptrtoint ptr %cal_t_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cal_t_offset.i.i.i, align 2
  %conv2.i1.i.i = zext i16 %15 to i32
  %cal_t_slope.i.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 37
  %16 = ptrtoint ptr %cal_t_slope.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cal_t_slope.i.i.i, align 4
  %conv.i.i.i = zext i16 %17 to i32
  %mul.i.i.i.i = mul nuw i32 %conv.i.i.i, %conv2.i.i.i
  %add.i.i.i.i = add nuw i32 %mul.i.i.i.i, 128
  %div15.i.i.i.i = lshr i32 %add.i.i.i.i, 8
  %add2.i.i.i.i = add nuw nsw i32 %div15.i.i.i.i, %conv2.i1.i.i
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add2.i.i.i.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate.exit.i.i.i

sfp_hwmon_calibrate.exit.i.i.i:                   ; preds = %if.then.i.i.i.i, %if.end.i.i.sfp_hwmon_calibrate.exit.i.i.i_crit_edge
  %19 = phi i32 [ %add2.i.i.i.i, %if.then.i.i.i.i ], [ %conv2.i.i.i, %if.end.i.i.sfp_hwmon_calibrate.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %19)
  %cmp.i2.i.i = icmp ugt i32 %19, 32767
  br i1 %cmp.i2.i.i, label %if.then.i.i.i, label %sfp_hwmon_calibrate.exit.i.i.i.sfp_hwmon_calibrate_temp.exit.i.i_crit_edge

sfp_hwmon_calibrate.exit.i.i.i.sfp_hwmon_calibrate_temp.exit.i.i_crit_edge: ; preds = %sfp_hwmon_calibrate.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_temp.exit.i.i

if.then.i.i.i:                                    ; preds = %sfp_hwmon_calibrate.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add nsw i32 %19, -65536
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i.i.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate_temp.exit.i.i

sfp_hwmon_calibrate_temp.exit.i.i:                ; preds = %if.then.i.i.i, %sfp_hwmon_calibrate.exit.i.i.i.sfp_hwmon_calibrate_temp.exit.i.i_crit_edge
  %21 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value, align 4
  %mul.i.i.i = mul i32 %22, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i.i)
  %cmp4.i.i.i = icmp sgt i32 %mul.i.i.i, 0
  %cond.in.v.i.i.i = select i1 %cmp4.i.i.i, i32 128, i32 -128
  %cond.in.i.i.i = add i32 %cond.in.v.i.i.i, %mul.i.i.i
  %cond.i.i.i = sdiv i32 %cond.in.i.i.i, 256
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond.i.i.i, ptr %value, align 4
  br label %sfp_hwmon_temp.exit

sw.bb1.i:                                         ; preds = %sw.bb
  %temp_low_alarm.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 1
  %24 = ptrtoint ptr %temp_low_alarm.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %temp_low_alarm.i, align 2
  %conv.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i, ptr %value, align 4
  %diagmon.i.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %27 = ptrtoint ptr %diagmon.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %diagmon.i.i.i, align 4
  %29 = and i8 %28, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i.i, label %sw.bb1.i.sfp_hwmon_calibrate.exit.i.i_crit_edge, label %if.then.i.i91.i

sw.bb1.i.sfp_hwmon_calibrate.exit.i.i_crit_edge:  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate.exit.i.i

if.then.i.i91.i:                                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  %cal_t_offset.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 38
  %30 = ptrtoint ptr %cal_t_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cal_t_offset.i.i, align 2
  %conv2.i.i = zext i16 %31 to i32
  %cal_t_slope.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 37
  %32 = ptrtoint ptr %cal_t_slope.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cal_t_slope.i.i, align 4
  %conv.i.i = zext i16 %33 to i32
  %mul.i.i90.i = mul nuw i32 %conv.i.i, %conv.i
  %add.i.i.i = add nuw i32 %mul.i.i90.i, 128
  %div15.i.i.i = lshr i32 %add.i.i.i, 8
  %add2.i.i.i = add nuw nsw i32 %div15.i.i.i, %conv2.i.i
  %34 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add2.i.i.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate.exit.i.i

sfp_hwmon_calibrate.exit.i.i:                     ; preds = %if.then.i.i91.i, %sw.bb1.i.sfp_hwmon_calibrate.exit.i.i_crit_edge
  %35 = phi i32 [ %add2.i.i.i, %if.then.i.i91.i ], [ %conv.i, %sw.bb1.i.sfp_hwmon_calibrate.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %35)
  %cmp.i.i = icmp ugt i32 %35, 32767
  br i1 %cmp.i.i, label %if.then.i.i, label %sfp_hwmon_calibrate.exit.i.i.sfp_hwmon_calibrate_temp.exit.i_crit_edge

sfp_hwmon_calibrate.exit.i.i.sfp_hwmon_calibrate_temp.exit.i_crit_edge: ; preds = %sfp_hwmon_calibrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_temp.exit.i

if.then.i.i:                                      ; preds = %sfp_hwmon_calibrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add nsw i32 %35, -65536
  %36 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.i.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate_temp.exit.i

sfp_hwmon_calibrate_temp.exit.i:                  ; preds = %if.then.i.i, %sfp_hwmon_calibrate.exit.i.i.sfp_hwmon_calibrate_temp.exit.i_crit_edge
  %37 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value, align 4
  %mul.i.i = mul i32 %38, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp4.i.i = icmp sgt i32 %mul.i.i, 0
  %cond.in.v.i.i = select i1 %cmp4.i.i, i32 128, i32 -128
  %cond.in.i.i = add i32 %cond.in.v.i.i, %mul.i.i
  %cond.i.i = sdiv i32 %cond.in.i.i, 256
  %39 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond.i.i, ptr %value, align 4
  br label %sfp_hwmon_temp.exit

sw.bb2.i:                                         ; preds = %sw.bb
  %temp_low_warn.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 3
  %40 = ptrtoint ptr %temp_low_warn.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %temp_low_warn.i, align 2
  %conv4.i = zext i16 %41 to i32
  %42 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv4.i, ptr %value, align 4
  %diagmon.i.i93.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %43 = ptrtoint ptr %diagmon.i.i93.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %diagmon.i.i93.i, align 4
  %45 = and i8 %44, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i94.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i.i94.i, label %sw.bb2.i.sfp_hwmon_calibrate.exit.i107.i_crit_edge, label %if.then.i.i103.i

sw.bb2.i.sfp_hwmon_calibrate.exit.i107.i_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate.exit.i107.i

if.then.i.i103.i:                                 ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  %cal_t_offset.i95.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 38
  %46 = ptrtoint ptr %cal_t_offset.i95.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cal_t_offset.i95.i, align 2
  %conv2.i96.i = zext i16 %47 to i32
  %cal_t_slope.i97.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 37
  %48 = ptrtoint ptr %cal_t_slope.i97.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %cal_t_slope.i97.i, align 4
  %conv.i98.i = zext i16 %49 to i32
  %mul.i.i99.i = mul nuw i32 %conv.i98.i, %conv4.i
  %add.i.i100.i = add nuw i32 %mul.i.i99.i, 128
  %div15.i.i101.i = lshr i32 %add.i.i100.i, 8
  %add2.i.i102.i = add nuw nsw i32 %div15.i.i101.i, %conv2.i96.i
  %50 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add2.i.i102.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate.exit.i107.i

sfp_hwmon_calibrate.exit.i107.i:                  ; preds = %if.then.i.i103.i, %sw.bb2.i.sfp_hwmon_calibrate.exit.i107.i_crit_edge
  %51 = phi i32 [ %add2.i.i102.i, %if.then.i.i103.i ], [ %conv4.i, %sw.bb2.i.sfp_hwmon_calibrate.exit.i107.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %51)
  %cmp.i106.i = icmp ugt i32 %51, 32767
  br i1 %cmp.i106.i, label %if.then.i109.i, label %sfp_hwmon_calibrate.exit.i107.i.sfp_hwmon_calibrate_temp.exit116.i_crit_edge

sfp_hwmon_calibrate.exit.i107.i.sfp_hwmon_calibrate_temp.exit116.i_crit_edge: ; preds = %sfp_hwmon_calibrate.exit.i107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_temp.exit116.i

if.then.i109.i:                                   ; preds = %sfp_hwmon_calibrate.exit.i107.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i108.i = add nsw i32 %51, -65536
  %52 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub.i108.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate_temp.exit116.i

sfp_hwmon_calibrate_temp.exit116.i:               ; preds = %if.then.i109.i, %sfp_hwmon_calibrate.exit.i107.i.sfp_hwmon_calibrate_temp.exit116.i_crit_edge
  %53 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %value, align 4
  %mul.i110.i = mul i32 %54, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i110.i)
  %cmp4.i111.i = icmp sgt i32 %mul.i110.i, 0
  %cond.in.v.i112.i = select i1 %cmp4.i111.i, i32 128, i32 -128
  %cond.in.i113.i = add i32 %cond.in.v.i112.i, %mul.i110.i
  %cond.i114.i = sdiv i32 %cond.in.i113.i, 256
  %55 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond.i114.i, ptr %value, align 4
  br label %sfp_hwmon_temp.exit

sw.bb5.i:                                         ; preds = %sw.bb
  %temp_high_warn.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 2
  %56 = ptrtoint ptr %temp_high_warn.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %temp_high_warn.i, align 4
  %conv7.i = zext i16 %57 to i32
  %58 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv7.i, ptr %value, align 4
  %diagmon.i.i117.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %59 = ptrtoint ptr %diagmon.i.i117.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %diagmon.i.i117.i, align 4
  %61 = and i8 %60, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.i118.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i.i118.i, label %sw.bb5.i.sfp_hwmon_calibrate.exit.i131.i_crit_edge, label %if.then.i.i127.i

sw.bb5.i.sfp_hwmon_calibrate.exit.i131.i_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate.exit.i131.i

if.then.i.i127.i:                                 ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #14
  %cal_t_offset.i119.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 38
  %62 = ptrtoint ptr %cal_t_offset.i119.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %cal_t_offset.i119.i, align 2
  %conv2.i120.i = zext i16 %63 to i32
  %cal_t_slope.i121.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 37
  %64 = ptrtoint ptr %cal_t_slope.i121.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %cal_t_slope.i121.i, align 4
  %conv.i122.i = zext i16 %65 to i32
  %mul.i.i123.i = mul nuw i32 %conv.i122.i, %conv7.i
  %add.i.i124.i = add nuw i32 %mul.i.i123.i, 128
  %div15.i.i125.i = lshr i32 %add.i.i124.i, 8
  %add2.i.i126.i = add nuw nsw i32 %div15.i.i125.i, %conv2.i120.i
  %66 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add2.i.i126.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate.exit.i131.i

sfp_hwmon_calibrate.exit.i131.i:                  ; preds = %if.then.i.i127.i, %sw.bb5.i.sfp_hwmon_calibrate.exit.i131.i_crit_edge
  %67 = phi i32 [ %add2.i.i126.i, %if.then.i.i127.i ], [ %conv7.i, %sw.bb5.i.sfp_hwmon_calibrate.exit.i131.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %67)
  %cmp.i130.i = icmp ugt i32 %67, 32767
  br i1 %cmp.i130.i, label %if.then.i133.i, label %sfp_hwmon_calibrate.exit.i131.i.sfp_hwmon_calibrate_temp.exit140.i_crit_edge

sfp_hwmon_calibrate.exit.i131.i.sfp_hwmon_calibrate_temp.exit140.i_crit_edge: ; preds = %sfp_hwmon_calibrate.exit.i131.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_temp.exit140.i

if.then.i133.i:                                   ; preds = %sfp_hwmon_calibrate.exit.i131.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i132.i = add nsw i32 %67, -65536
  %68 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub.i132.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate_temp.exit140.i

sfp_hwmon_calibrate_temp.exit140.i:               ; preds = %if.then.i133.i, %sfp_hwmon_calibrate.exit.i131.i.sfp_hwmon_calibrate_temp.exit140.i_crit_edge
  %69 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %value, align 4
  %mul.i134.i = mul i32 %70, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i134.i)
  %cmp4.i135.i = icmp sgt i32 %mul.i134.i, 0
  %cond.in.v.i136.i = select i1 %cmp4.i135.i, i32 128, i32 -128
  %cond.in.i137.i = add i32 %cond.in.v.i136.i, %mul.i134.i
  %cond.i138.i = sdiv i32 %cond.in.i137.i, 256
  %71 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond.i138.i, ptr %value, align 4
  br label %sfp_hwmon_temp.exit

sw.bb8.i:                                         ; preds = %sw.bb
  %diag9.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31
  %72 = ptrtoint ptr %diag9.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %diag9.i, align 4
  %conv10.i = zext i16 %73 to i32
  %74 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv10.i, ptr %value, align 4
  %diagmon.i.i141.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %75 = ptrtoint ptr %diagmon.i.i141.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %diagmon.i.i141.i, align 4
  %77 = and i8 %76, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i.i142.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i.i142.i, label %sw.bb8.i.sfp_hwmon_calibrate.exit.i155.i_crit_edge, label %if.then.i.i151.i

sw.bb8.i.sfp_hwmon_calibrate.exit.i155.i_crit_edge: ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate.exit.i155.i

if.then.i.i151.i:                                 ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  %cal_t_offset.i143.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 38
  %78 = ptrtoint ptr %cal_t_offset.i143.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %cal_t_offset.i143.i, align 2
  %conv2.i144.i = zext i16 %79 to i32
  %cal_t_slope.i145.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 37
  %80 = ptrtoint ptr %cal_t_slope.i145.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %cal_t_slope.i145.i, align 4
  %conv.i146.i = zext i16 %81 to i32
  %mul.i.i147.i = mul nuw i32 %conv.i146.i, %conv10.i
  %add.i.i148.i = add nuw i32 %mul.i.i147.i, 128
  %div15.i.i149.i = lshr i32 %add.i.i148.i, 8
  %add2.i.i150.i = add nuw nsw i32 %div15.i.i149.i, %conv2.i144.i
  %82 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add2.i.i150.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate.exit.i155.i

sfp_hwmon_calibrate.exit.i155.i:                  ; preds = %if.then.i.i151.i, %sw.bb8.i.sfp_hwmon_calibrate.exit.i155.i_crit_edge
  %83 = phi i32 [ %add2.i.i150.i, %if.then.i.i151.i ], [ %conv10.i, %sw.bb8.i.sfp_hwmon_calibrate.exit.i155.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %83)
  %cmp.i154.i = icmp ugt i32 %83, 32767
  br i1 %cmp.i154.i, label %if.then.i157.i, label %sfp_hwmon_calibrate.exit.i155.i.sfp_hwmon_calibrate_temp.exit164.i_crit_edge

sfp_hwmon_calibrate.exit.i155.i.sfp_hwmon_calibrate_temp.exit164.i_crit_edge: ; preds = %sfp_hwmon_calibrate.exit.i155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_temp.exit164.i

if.then.i157.i:                                   ; preds = %sfp_hwmon_calibrate.exit.i155.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i156.i = add nsw i32 %83, -65536
  %84 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub.i156.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate_temp.exit164.i

sfp_hwmon_calibrate_temp.exit164.i:               ; preds = %if.then.i157.i, %sfp_hwmon_calibrate.exit.i155.i.sfp_hwmon_calibrate_temp.exit164.i_crit_edge
  %85 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %value, align 4
  %mul.i158.i = mul i32 %86, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i158.i)
  %cmp4.i159.i = icmp sgt i32 %mul.i158.i, 0
  %cond.in.v.i160.i = select i1 %cmp4.i159.i, i32 128, i32 -128
  %cond.in.i161.i = add i32 %cond.in.v.i160.i, %mul.i158.i
  %cond.i162.i = sdiv i32 %cond.in.i161.i, 256
  %87 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond.i162.i, ptr %value, align 4
  br label %sfp_hwmon_temp.exit

sw.bb11.i:                                        ; preds = %sw.bb
  %read.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %88 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read.i.i, align 4
  %call.i.i = call i32 %89(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 112, ptr noundef nonnull %status.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sw.bb11.i.sfp_hwmon_temp.exit_crit_edge, label %if.end.i

sw.bb11.i.sfp_hwmon_temp.exit_crit_edge:          ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_temp.exit

if.end.i:                                         ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %status.i, align 1
  %92 = lshr i8 %91, 6
  %.lobit89.i = and i8 %92, 1
  %93 = zext i8 %.lobit89.i to i32
  %94 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %value, align 4
  br label %sfp_hwmon_temp.exit

sw.bb16.i:                                        ; preds = %sw.bb
  %read.i165.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %95 = ptrtoint ptr %read.i165.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read.i165.i, align 4
  %call.i166.i = call i32 %96(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 116, ptr noundef nonnull %status.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166.i)
  %cmp18.i = icmp slt i32 %call.i166.i, 0
  br i1 %cmp18.i, label %sw.bb16.i.sfp_hwmon_temp.exit_crit_edge, label %if.end21.i

sw.bb16.i.sfp_hwmon_temp.exit_crit_edge:          ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_temp.exit

if.end21.i:                                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %status.i, align 1
  %99 = lshr i8 %98, 6
  %.lobit88.i = and i8 %99, 1
  %100 = zext i8 %.lobit88.i to i32
  %101 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %value, align 4
  br label %sfp_hwmon_temp.exit

sw.bb29.i:                                        ; preds = %sw.bb
  %read.i167.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %102 = ptrtoint ptr %read.i167.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read.i167.i, align 4
  %call.i168.i = call i32 %103(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 116, ptr noundef nonnull %status.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168.i)
  %cmp31.i = icmp slt i32 %call.i168.i, 0
  br i1 %cmp31.i, label %sw.bb29.i.sfp_hwmon_temp.exit_crit_edge, label %if.end34.i

sw.bb29.i.sfp_hwmon_temp.exit_crit_edge:          ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_temp.exit

if.end34.i:                                       ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %status.i, align 1
  %.lobit87.i = lshr i8 %105, 7
  %106 = zext i8 %.lobit87.i to i32
  %107 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %value, align 4
  br label %sfp_hwmon_temp.exit

sw.bb42.i:                                        ; preds = %sw.bb
  %read.i169.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %108 = ptrtoint ptr %read.i169.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read.i169.i, align 4
  %call.i170.i = call i32 %109(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 112, ptr noundef nonnull %status.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170.i)
  %cmp44.i = icmp slt i32 %call.i170.i, 0
  br i1 %cmp44.i, label %sw.bb42.i.sfp_hwmon_temp.exit_crit_edge, label %if.end47.i

sw.bb42.i.sfp_hwmon_temp.exit_crit_edge:          ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_temp.exit

if.end47.i:                                       ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %status.i, align 1
  %.lobit.i = lshr i8 %111, 7
  %112 = zext i8 %.lobit.i to i32
  %113 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %value, align 4
  br label %sfp_hwmon_temp.exit

sfp_hwmon_temp.exit:                              ; preds = %if.end47.i, %sw.bb42.i.sfp_hwmon_temp.exit_crit_edge, %if.end34.i, %sw.bb29.i.sfp_hwmon_temp.exit_crit_edge, %if.end21.i, %sw.bb16.i.sfp_hwmon_temp.exit_crit_edge, %if.end.i, %sw.bb11.i.sfp_hwmon_temp.exit_crit_edge, %sfp_hwmon_calibrate_temp.exit164.i, %sfp_hwmon_calibrate_temp.exit140.i, %sfp_hwmon_calibrate_temp.exit116.i, %sfp_hwmon_calibrate_temp.exit.i, %sfp_hwmon_calibrate_temp.exit.i.i, %sfp_hwmon_read_sensor.exit.thread.i.i, %sw.bb.sfp_hwmon_temp.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end47.i ], [ 0, %if.end34.i ], [ 0, %if.end21.i ], [ 0, %if.end.i ], [ 0, %sfp_hwmon_calibrate_temp.exit164.i ], [ 0, %sfp_hwmon_calibrate_temp.exit140.i ], [ 0, %sfp_hwmon_calibrate_temp.exit116.i ], [ 0, %sfp_hwmon_calibrate_temp.exit.i ], [ %call.i.i, %sw.bb11.i.sfp_hwmon_temp.exit_crit_edge ], [ %call.i166.i, %sw.bb16.i.sfp_hwmon_temp.exit_crit_edge ], [ %call.i168.i, %sw.bb29.i.sfp_hwmon_temp.exit_crit_edge ], [ %call.i170.i, %sw.bb42.i.sfp_hwmon_temp.exit_crit_edge ], [ -95, %sw.bb.sfp_hwmon_temp.exit_crit_edge ], [ 0, %sfp_hwmon_calibrate_temp.exit.i.i ], [ %call.i.i.i.i, %sfp_hwmon_read_sensor.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i25) #12
  %114 = ptrtoint ptr %status.i25 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -1, ptr %status.i25, align 1, !annotation !445
  %115 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %attr, label %sw.bb2.sfp_hwmon_vcc.exit_crit_edge [
    i32 1, label %sw.bb.i29
    i32 4, label %sw.bb1.i49
    i32 2, label %sw.bb2.i62
    i32 3, label %sw.bb5.i64
    i32 5, label %sw.bb8.i66
    i32 14, label %sw.bb11.i70
    i32 12, label %sw.bb16.i74
    i32 13, label %sw.bb29.i78
    i32 15, label %sw.bb42.i82
  ]

sw.bb2.sfp_hwmon_vcc.exit_crit_edge:              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_vcc.exit

sw.bb.i29:                                        ; preds = %sw.bb2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i24) #12
  %116 = ptrtoint ptr %val.i.i.i24 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 -1, ptr %val.i.i.i24, align 2, !annotation !445
  %read.i.i.i.i26 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %117 = ptrtoint ptr %read.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read.i.i.i.i26, align 4
  %call.i.i.i.i27 = call i32 %118(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 98, ptr noundef nonnull %val.i.i.i24, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i27)
  %cmp.i.i.i28 = icmp slt i32 %call.i.i.i.i27, 0
  br i1 %cmp.i.i.i28, label %sfp_hwmon_read_sensor.exit.thread.i.i30, label %if.end.i.i34

sfp_hwmon_read_sensor.exit.thread.i.i30:          ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i24) #12
  br label %sfp_hwmon_vcc.exit

if.end.i.i34:                                     ; preds = %sw.bb.i29
  %119 = ptrtoint ptr %val.i.i.i24 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %val.i.i.i24, align 2
  %conv2.i.i.i31 = zext i16 %120 to i32
  %121 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv2.i.i.i31, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i24) #12
  %diagmon.i.i.i.i32 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %122 = ptrtoint ptr %diagmon.i.i.i.i32 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %diagmon.i.i.i.i32, align 4
  %124 = and i8 %123, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i.i.i.i33 = icmp eq i8 %124, 0
  br i1 %tobool.not.i.i.i.i33, label %if.end.i.i34.sfp_hwmon_calibrate_vcc.exit.i.i_crit_edge, label %if.then.i.i.i.i41

if.end.i.i34.sfp_hwmon_calibrate_vcc.exit.i.i_crit_edge: ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_vcc.exit.i.i

if.then.i.i.i.i41:                                ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #14
  %cal_v_offset.i.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 40
  %125 = ptrtoint ptr %cal_v_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %cal_v_offset.i.i.i, align 2
  %conv2.i1.i.i35 = zext i16 %126 to i32
  %cal_v_slope.i.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 39
  %127 = ptrtoint ptr %cal_v_slope.i.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %cal_v_slope.i.i.i, align 4
  %conv.i.i.i36 = zext i16 %128 to i32
  %mul.i.i.i.i37 = mul nuw i32 %conv.i.i.i36, %conv2.i.i.i31
  %add.i.i.i.i38 = add nuw i32 %mul.i.i.i.i37, 128
  %div15.i.i.i.i39 = lshr i32 %add.i.i.i.i38, 8
  %add2.i.i.i.i40 = add nuw nsw i32 %div15.i.i.i.i39, %conv2.i1.i.i35
  %129 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add2.i.i.i.i40, ptr %value, align 4
  br label %sfp_hwmon_calibrate_vcc.exit.i.i

sfp_hwmon_calibrate_vcc.exit.i.i:                 ; preds = %if.then.i.i.i.i41, %if.end.i.i34.sfp_hwmon_calibrate_vcc.exit.i.i_crit_edge
  %130 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.i2.i.i42 = icmp sgt i32 %131, 0
  %cond.in.v.i.i.i43 = select i1 %cmp.i2.i.i42, i32 5, i32 -5
  %cond.in.i.i.i44 = add i32 %cond.in.v.i.i.i43, %131
  %cond.i.i.i45 = sdiv i32 %cond.in.i.i.i44, 10
  %132 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %cond.i.i.i45, ptr %value, align 4
  br label %sfp_hwmon_vcc.exit

sw.bb1.i49:                                       ; preds = %sw.bb2
  %volt_low_alarm.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 5
  %133 = ptrtoint ptr %volt_low_alarm.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %volt_low_alarm.i, align 2
  %conv.i46 = zext i16 %134 to i32
  %135 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv.i46, ptr %value, align 4
  %diagmon.i.i.i47 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %136 = ptrtoint ptr %diagmon.i.i.i47 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %diagmon.i.i.i47, align 4
  %138 = and i8 %137, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i.i.i48 = icmp eq i8 %138, 0
  br i1 %tobool.not.i.i.i48, label %sw.bb1.i49.sfp_hwmon_calibrate_vcc.exit.i_crit_edge, label %if.then.i.i.i56

sw.bb1.i49.sfp_hwmon_calibrate_vcc.exit.i_crit_edge: ; preds = %sw.bb1.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_vcc.exit.i

if.then.i.i.i56:                                  ; preds = %sw.bb1.i49
  call void @__sanitizer_cov_trace_pc() #14
  %cal_v_offset.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 40
  %139 = ptrtoint ptr %cal_v_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %cal_v_offset.i.i, align 2
  %conv2.i.i50 = zext i16 %140 to i32
  %cal_v_slope.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 39
  %141 = ptrtoint ptr %cal_v_slope.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %cal_v_slope.i.i, align 4
  %conv.i.i51 = zext i16 %142 to i32
  %mul.i.i.i52 = mul nuw i32 %conv.i.i51, %conv.i46
  %add.i.i.i53 = add nuw i32 %mul.i.i.i52, 128
  %div15.i.i.i54 = lshr i32 %add.i.i.i53, 8
  %add2.i.i.i55 = add nuw nsw i32 %div15.i.i.i54, %conv2.i.i50
  %143 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %add2.i.i.i55, ptr %value, align 4
  br label %sfp_hwmon_calibrate_vcc.exit.i

sfp_hwmon_calibrate_vcc.exit.i:                   ; preds = %if.then.i.i.i56, %sw.bb1.i49.sfp_hwmon_calibrate_vcc.exit.i_crit_edge
  %144 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i.i57 = icmp sgt i32 %145, 0
  %cond.in.v.i.i58 = select i1 %cmp.i.i57, i32 5, i32 -5
  %cond.in.i.i59 = add i32 %cond.in.v.i.i58, %145
  %cond.i.i60 = sdiv i32 %cond.in.i.i59, 10
  %146 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %cond.i.i60, ptr %value, align 4
  br label %sfp_hwmon_vcc.exit

sw.bb2.i62:                                       ; preds = %sw.bb2
  %volt_low_warn.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 7
  %147 = ptrtoint ptr %volt_low_warn.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %volt_low_warn.i, align 2
  %conv4.i61 = zext i16 %148 to i32
  %149 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv4.i61, ptr %value, align 4
  %diagmon.i.i90.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %150 = ptrtoint ptr %diagmon.i.i90.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %diagmon.i.i90.i, align 4
  %152 = and i8 %151, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i.i91.i = icmp eq i8 %152, 0
  br i1 %tobool.not.i.i91.i, label %sw.bb2.i62.sfp_hwmon_calibrate_vcc.exit105.i_crit_edge, label %if.then.i.i100.i

sw.bb2.i62.sfp_hwmon_calibrate_vcc.exit105.i_crit_edge: ; preds = %sw.bb2.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_vcc.exit105.i

if.then.i.i100.i:                                 ; preds = %sw.bb2.i62
  call void @__sanitizer_cov_trace_pc() #14
  %cal_v_offset.i92.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 40
  %153 = ptrtoint ptr %cal_v_offset.i92.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %cal_v_offset.i92.i, align 2
  %conv2.i93.i = zext i16 %154 to i32
  %cal_v_slope.i94.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 39
  %155 = ptrtoint ptr %cal_v_slope.i94.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %cal_v_slope.i94.i, align 4
  %conv.i95.i = zext i16 %156 to i32
  %mul.i.i96.i = mul nuw i32 %conv.i95.i, %conv4.i61
  %add.i.i97.i = add nuw i32 %mul.i.i96.i, 128
  %div15.i.i98.i = lshr i32 %add.i.i97.i, 8
  %add2.i.i99.i = add nuw nsw i32 %div15.i.i98.i, %conv2.i93.i
  %157 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %add2.i.i99.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate_vcc.exit105.i

sfp_hwmon_calibrate_vcc.exit105.i:                ; preds = %if.then.i.i100.i, %sw.bb2.i62.sfp_hwmon_calibrate_vcc.exit105.i_crit_edge
  %158 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp.i101.i = icmp sgt i32 %159, 0
  %cond.in.v.i102.i = select i1 %cmp.i101.i, i32 5, i32 -5
  %cond.in.i103.i = add i32 %cond.in.v.i102.i, %159
  %cond.i104.i = sdiv i32 %cond.in.i103.i, 10
  %160 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %cond.i104.i, ptr %value, align 4
  br label %sfp_hwmon_vcc.exit

sw.bb5.i64:                                       ; preds = %sw.bb2
  %volt_high_warn.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 6
  %161 = ptrtoint ptr %volt_high_warn.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %volt_high_warn.i, align 4
  %conv7.i63 = zext i16 %162 to i32
  %163 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %conv7.i63, ptr %value, align 4
  %diagmon.i.i106.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %164 = ptrtoint ptr %diagmon.i.i106.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %diagmon.i.i106.i, align 4
  %166 = and i8 %165, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i.i107.i = icmp eq i8 %166, 0
  br i1 %tobool.not.i.i107.i, label %sw.bb5.i64.sfp_hwmon_calibrate_vcc.exit121.i_crit_edge, label %if.then.i.i116.i

sw.bb5.i64.sfp_hwmon_calibrate_vcc.exit121.i_crit_edge: ; preds = %sw.bb5.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_vcc.exit121.i

if.then.i.i116.i:                                 ; preds = %sw.bb5.i64
  call void @__sanitizer_cov_trace_pc() #14
  %cal_v_offset.i108.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 40
  %167 = ptrtoint ptr %cal_v_offset.i108.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %cal_v_offset.i108.i, align 2
  %conv2.i109.i = zext i16 %168 to i32
  %cal_v_slope.i110.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 39
  %169 = ptrtoint ptr %cal_v_slope.i110.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %cal_v_slope.i110.i, align 4
  %conv.i111.i = zext i16 %170 to i32
  %mul.i.i112.i = mul nuw i32 %conv.i111.i, %conv7.i63
  %add.i.i113.i = add nuw i32 %mul.i.i112.i, 128
  %div15.i.i114.i = lshr i32 %add.i.i113.i, 8
  %add2.i.i115.i = add nuw nsw i32 %div15.i.i114.i, %conv2.i109.i
  %171 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %add2.i.i115.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate_vcc.exit121.i

sfp_hwmon_calibrate_vcc.exit121.i:                ; preds = %if.then.i.i116.i, %sw.bb5.i64.sfp_hwmon_calibrate_vcc.exit121.i_crit_edge
  %172 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp.i117.i = icmp sgt i32 %173, 0
  %cond.in.v.i118.i = select i1 %cmp.i117.i, i32 5, i32 -5
  %cond.in.i119.i = add i32 %cond.in.v.i118.i, %173
  %cond.i120.i = sdiv i32 %cond.in.i119.i, 10
  %174 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %cond.i120.i, ptr %value, align 4
  br label %sfp_hwmon_vcc.exit

sw.bb8.i66:                                       ; preds = %sw.bb2
  %volt_high_alarm.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 4
  %175 = ptrtoint ptr %volt_high_alarm.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %volt_high_alarm.i, align 4
  %conv10.i65 = zext i16 %176 to i32
  %177 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %conv10.i65, ptr %value, align 4
  %diagmon.i.i122.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %178 = ptrtoint ptr %diagmon.i.i122.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %diagmon.i.i122.i, align 4
  %180 = and i8 %179, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i.i123.i = icmp eq i8 %180, 0
  br i1 %tobool.not.i.i123.i, label %sw.bb8.i66.sfp_hwmon_calibrate_vcc.exit137.i_crit_edge, label %if.then.i.i132.i

sw.bb8.i66.sfp_hwmon_calibrate_vcc.exit137.i_crit_edge: ; preds = %sw.bb8.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_vcc.exit137.i

if.then.i.i132.i:                                 ; preds = %sw.bb8.i66
  call void @__sanitizer_cov_trace_pc() #14
  %cal_v_offset.i124.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 40
  %181 = ptrtoint ptr %cal_v_offset.i124.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %cal_v_offset.i124.i, align 2
  %conv2.i125.i = zext i16 %182 to i32
  %cal_v_slope.i126.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 39
  %183 = ptrtoint ptr %cal_v_slope.i126.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %cal_v_slope.i126.i, align 4
  %conv.i127.i = zext i16 %184 to i32
  %mul.i.i128.i = mul nuw i32 %conv.i127.i, %conv10.i65
  %add.i.i129.i = add nuw i32 %mul.i.i128.i, 128
  %div15.i.i130.i = lshr i32 %add.i.i129.i, 8
  %add2.i.i131.i = add nuw nsw i32 %div15.i.i130.i, %conv2.i125.i
  %185 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %add2.i.i131.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate_vcc.exit137.i

sfp_hwmon_calibrate_vcc.exit137.i:                ; preds = %if.then.i.i132.i, %sw.bb8.i66.sfp_hwmon_calibrate_vcc.exit137.i_crit_edge
  %186 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp.i133.i = icmp sgt i32 %187, 0
  %cond.in.v.i134.i = select i1 %cmp.i133.i, i32 5, i32 -5
  %cond.in.i135.i = add i32 %cond.in.v.i134.i, %187
  %cond.i136.i = sdiv i32 %cond.in.i135.i, 10
  %188 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %cond.i136.i, ptr %value, align 4
  br label %sfp_hwmon_vcc.exit

sw.bb11.i70:                                      ; preds = %sw.bb2
  %read.i.i67 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %189 = ptrtoint ptr %read.i.i67 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %read.i.i67, align 4
  %call.i.i68 = call i32 %190(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 112, ptr noundef nonnull %status.i25, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %cmp.i69 = icmp slt i32 %call.i.i68, 0
  br i1 %cmp.i69, label %sw.bb11.i70.sfp_hwmon_vcc.exit_crit_edge, label %if.end.i72

sw.bb11.i70.sfp_hwmon_vcc.exit_crit_edge:         ; preds = %sw.bb11.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_vcc.exit

if.end.i72:                                       ; preds = %sw.bb11.i70
  call void @__sanitizer_cov_trace_pc() #14
  %191 = ptrtoint ptr %status.i25 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %status.i25, align 1
  %193 = lshr i8 %192, 4
  %.lobit89.i71 = and i8 %193, 1
  %194 = zext i8 %.lobit89.i71 to i32
  %195 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %value, align 4
  br label %sfp_hwmon_vcc.exit

sw.bb16.i74:                                      ; preds = %sw.bb2
  %read.i138.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %196 = ptrtoint ptr %read.i138.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %read.i138.i, align 4
  %call.i139.i = call i32 %197(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 116, ptr noundef nonnull %status.i25, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.i)
  %cmp18.i73 = icmp slt i32 %call.i139.i, 0
  br i1 %cmp18.i73, label %sw.bb16.i74.sfp_hwmon_vcc.exit_crit_edge, label %if.end21.i76

sw.bb16.i74.sfp_hwmon_vcc.exit_crit_edge:         ; preds = %sw.bb16.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_vcc.exit

if.end21.i76:                                     ; preds = %sw.bb16.i74
  call void @__sanitizer_cov_trace_pc() #14
  %198 = ptrtoint ptr %status.i25 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %status.i25, align 1
  %200 = lshr i8 %199, 4
  %.lobit88.i75 = and i8 %200, 1
  %201 = zext i8 %.lobit88.i75 to i32
  %202 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %value, align 4
  br label %sfp_hwmon_vcc.exit

sw.bb29.i78:                                      ; preds = %sw.bb2
  %read.i140.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %203 = ptrtoint ptr %read.i140.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %read.i140.i, align 4
  %call.i141.i = call i32 %204(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 116, ptr noundef nonnull %status.i25, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.i)
  %cmp31.i77 = icmp slt i32 %call.i141.i, 0
  br i1 %cmp31.i77, label %sw.bb29.i78.sfp_hwmon_vcc.exit_crit_edge, label %if.end34.i80

sw.bb29.i78.sfp_hwmon_vcc.exit_crit_edge:         ; preds = %sw.bb29.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_vcc.exit

if.end34.i80:                                     ; preds = %sw.bb29.i78
  call void @__sanitizer_cov_trace_pc() #14
  %205 = ptrtoint ptr %status.i25 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %status.i25, align 1
  %207 = lshr i8 %206, 5
  %.lobit87.i79 = and i8 %207, 1
  %208 = zext i8 %.lobit87.i79 to i32
  %209 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %value, align 4
  br label %sfp_hwmon_vcc.exit

sw.bb42.i82:                                      ; preds = %sw.bb2
  %read.i142.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %210 = ptrtoint ptr %read.i142.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %read.i142.i, align 4
  %call.i143.i = call i32 %211(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 112, ptr noundef nonnull %status.i25, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i)
  %cmp44.i81 = icmp slt i32 %call.i143.i, 0
  br i1 %cmp44.i81, label %sw.bb42.i82.sfp_hwmon_vcc.exit_crit_edge, label %if.end47.i84

sw.bb42.i82.sfp_hwmon_vcc.exit_crit_edge:         ; preds = %sw.bb42.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_vcc.exit

if.end47.i84:                                     ; preds = %sw.bb42.i82
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %status.i25 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %status.i25, align 1
  %214 = lshr i8 %213, 5
  %.lobit.i83 = and i8 %214, 1
  %215 = zext i8 %.lobit.i83 to i32
  %216 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %value, align 4
  br label %sfp_hwmon_vcc.exit

sfp_hwmon_vcc.exit:                               ; preds = %if.end47.i84, %sw.bb42.i82.sfp_hwmon_vcc.exit_crit_edge, %if.end34.i80, %sw.bb29.i78.sfp_hwmon_vcc.exit_crit_edge, %if.end21.i76, %sw.bb16.i74.sfp_hwmon_vcc.exit_crit_edge, %if.end.i72, %sw.bb11.i70.sfp_hwmon_vcc.exit_crit_edge, %sfp_hwmon_calibrate_vcc.exit137.i, %sfp_hwmon_calibrate_vcc.exit121.i, %sfp_hwmon_calibrate_vcc.exit105.i, %sfp_hwmon_calibrate_vcc.exit.i, %sfp_hwmon_calibrate_vcc.exit.i.i, %sfp_hwmon_read_sensor.exit.thread.i.i30, %sw.bb2.sfp_hwmon_vcc.exit_crit_edge
  %retval.0.i85 = phi i32 [ 0, %if.end47.i84 ], [ 0, %if.end34.i80 ], [ 0, %if.end21.i76 ], [ 0, %if.end.i72 ], [ 0, %sfp_hwmon_calibrate_vcc.exit137.i ], [ 0, %sfp_hwmon_calibrate_vcc.exit121.i ], [ 0, %sfp_hwmon_calibrate_vcc.exit105.i ], [ 0, %sfp_hwmon_calibrate_vcc.exit.i ], [ %call.i.i68, %sw.bb11.i70.sfp_hwmon_vcc.exit_crit_edge ], [ %call.i139.i, %sw.bb16.i74.sfp_hwmon_vcc.exit_crit_edge ], [ %call.i141.i, %sw.bb29.i78.sfp_hwmon_vcc.exit_crit_edge ], [ %call.i143.i, %sw.bb42.i82.sfp_hwmon_vcc.exit_crit_edge ], [ -95, %sw.bb2.sfp_hwmon_vcc.exit_crit_edge ], [ 0, %sfp_hwmon_calibrate_vcc.exit.i.i ], [ %call.i.i.i.i27, %sfp_hwmon_read_sensor.exit.thread.i.i30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i25) #12
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i87) #12
  %217 = ptrtoint ptr %status.i87 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 -1, ptr %status.i87, align 1, !annotation !445
  %218 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %attr, label %sw.bb4.sfp_hwmon_bias.exit_crit_edge [
    i32 1, label %sw.bb.i91
    i32 4, label %sw.bb1.i111
    i32 2, label %sw.bb2.i126
    i32 3, label %sw.bb5.i141
    i32 5, label %sw.bb8.i156
    i32 14, label %sw.bb11.i171
    i32 12, label %sw.bb16.i177
    i32 13, label %sw.bb29.i183
    i32 15, label %sw.bb42.i189
  ]

sw.bb4.sfp_hwmon_bias.exit_crit_edge:             ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_bias.exit

sw.bb.i91:                                        ; preds = %sw.bb4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i86) #12
  %219 = ptrtoint ptr %val.i.i.i86 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 -1, ptr %val.i.i.i86, align 2, !annotation !445
  %read.i.i.i.i88 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %220 = ptrtoint ptr %read.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %read.i.i.i.i88, align 4
  %call.i.i.i.i89 = call i32 %221(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 100, ptr noundef nonnull %val.i.i.i86, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i89)
  %cmp.i.i.i90 = icmp slt i32 %call.i.i.i.i89, 0
  br i1 %cmp.i.i.i90, label %sfp_hwmon_read_sensor.exit.thread.i.i92, label %if.end.i.i96

sfp_hwmon_read_sensor.exit.thread.i.i92:          ; preds = %sw.bb.i91
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i86) #12
  br label %sfp_hwmon_bias.exit

if.end.i.i96:                                     ; preds = %sw.bb.i91
  %222 = ptrtoint ptr %val.i.i.i86 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %val.i.i.i86, align 2
  %conv2.i.i.i93 = zext i16 %223 to i32
  %224 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %conv2.i.i.i93, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i86) #12
  %diagmon.i.i.i.i94 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %225 = ptrtoint ptr %diagmon.i.i.i.i94 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %diagmon.i.i.i.i94, align 4
  %227 = and i8 %226, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool.not.i.i.i.i95 = icmp eq i8 %227, 0
  br i1 %tobool.not.i.i.i.i95, label %if.end.i.i96.sfp_hwmon_calibrate_bias.exit.i.i_crit_edge, label %if.then.i.i.i.i103

if.end.i.i96.sfp_hwmon_calibrate_bias.exit.i.i_crit_edge: ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_bias.exit.i.i

if.then.i.i.i.i103:                               ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #14
  %cal_txi_offset.i.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 34
  %228 = ptrtoint ptr %cal_txi_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %cal_txi_offset.i.i.i, align 2
  %conv2.i1.i.i97 = zext i16 %229 to i32
  %cal_txi_slope.i.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 33
  %230 = ptrtoint ptr %cal_txi_slope.i.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %cal_txi_slope.i.i.i, align 4
  %conv.i.i.i98 = zext i16 %231 to i32
  %mul.i.i.i.i99 = mul nuw i32 %conv.i.i.i98, %conv2.i.i.i93
  %add.i.i.i.i100 = add nuw i32 %mul.i.i.i.i99, 128
  %div15.i.i.i.i101 = lshr i32 %add.i.i.i.i100, 8
  %add2.i.i.i.i102 = add nuw nsw i32 %div15.i.i.i.i101, %conv2.i1.i.i97
  %232 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %add2.i.i.i.i102, ptr %value, align 4
  br label %sfp_hwmon_calibrate_bias.exit.i.i

sfp_hwmon_calibrate_bias.exit.i.i:                ; preds = %if.then.i.i.i.i103, %if.end.i.i96.sfp_hwmon_calibrate_bias.exit.i.i_crit_edge
  %233 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %cmp.i2.i.i104 = icmp sgt i32 %234, 0
  %cond.in.v.i.i.i105 = select i1 %cmp.i2.i.i104, i32 250, i32 -250
  %cond.in.i.i.i106 = add i32 %cond.in.v.i.i.i105, %234
  %cond.i.i.i107 = sdiv i32 %cond.in.i.i.i106, 500
  %235 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %cond.i.i.i107, ptr %value, align 4
  br label %sfp_hwmon_bias.exit

sw.bb1.i111:                                      ; preds = %sw.bb4
  %bias_low_alarm.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 9
  %236 = ptrtoint ptr %bias_low_alarm.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %bias_low_alarm.i, align 2
  %conv.i108 = zext i16 %237 to i32
  %238 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %conv.i108, ptr %value, align 4
  %diagmon.i.i.i109 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %239 = ptrtoint ptr %diagmon.i.i.i109 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %diagmon.i.i.i109, align 4
  %241 = and i8 %240, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool.not.i.i.i110 = icmp eq i8 %241, 0
  br i1 %tobool.not.i.i.i110, label %sw.bb1.i111.sfp_hwmon_calibrate_bias.exit.i_crit_edge, label %if.then.i.i.i118

sw.bb1.i111.sfp_hwmon_calibrate_bias.exit.i_crit_edge: ; preds = %sw.bb1.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_bias.exit.i

if.then.i.i.i118:                                 ; preds = %sw.bb1.i111
  call void @__sanitizer_cov_trace_pc() #14
  %cal_txi_offset.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 34
  %242 = ptrtoint ptr %cal_txi_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %cal_txi_offset.i.i, align 2
  %conv2.i.i112 = zext i16 %243 to i32
  %cal_txi_slope.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 33
  %244 = ptrtoint ptr %cal_txi_slope.i.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %cal_txi_slope.i.i, align 4
  %conv.i.i113 = zext i16 %245 to i32
  %mul.i.i.i114 = mul nuw i32 %conv.i.i113, %conv.i108
  %add.i.i.i115 = add nuw i32 %mul.i.i.i114, 128
  %div15.i.i.i116 = lshr i32 %add.i.i.i115, 8
  %add2.i.i.i117 = add nuw nsw i32 %div15.i.i.i116, %conv2.i.i112
  %246 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %add2.i.i.i117, ptr %value, align 4
  br label %sfp_hwmon_calibrate_bias.exit.i

sfp_hwmon_calibrate_bias.exit.i:                  ; preds = %if.then.i.i.i118, %sw.bb1.i111.sfp_hwmon_calibrate_bias.exit.i_crit_edge
  %247 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp.i.i119 = icmp sgt i32 %248, 0
  %cond.in.v.i.i120 = select i1 %cmp.i.i119, i32 250, i32 -250
  %cond.in.i.i121 = add i32 %cond.in.v.i.i120, %248
  %cond.i.i122 = sdiv i32 %cond.in.i.i121, 500
  %249 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %cond.i.i122, ptr %value, align 4
  br label %sfp_hwmon_bias.exit

sw.bb2.i126:                                      ; preds = %sw.bb4
  %bias_low_warn.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 11
  %250 = ptrtoint ptr %bias_low_warn.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %bias_low_warn.i, align 2
  %conv4.i123 = zext i16 %251 to i32
  %252 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %conv4.i123, ptr %value, align 4
  %diagmon.i.i90.i124 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %253 = ptrtoint ptr %diagmon.i.i90.i124 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %diagmon.i.i90.i124, align 4
  %255 = and i8 %254, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool.not.i.i91.i125 = icmp eq i8 %255, 0
  br i1 %tobool.not.i.i91.i125, label %sw.bb2.i126.sfp_hwmon_calibrate_bias.exit105.i_crit_edge, label %if.then.i.i100.i133

sw.bb2.i126.sfp_hwmon_calibrate_bias.exit105.i_crit_edge: ; preds = %sw.bb2.i126
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_bias.exit105.i

if.then.i.i100.i133:                              ; preds = %sw.bb2.i126
  call void @__sanitizer_cov_trace_pc() #14
  %cal_txi_offset.i92.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 34
  %256 = ptrtoint ptr %cal_txi_offset.i92.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %cal_txi_offset.i92.i, align 2
  %conv2.i93.i127 = zext i16 %257 to i32
  %cal_txi_slope.i94.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 33
  %258 = ptrtoint ptr %cal_txi_slope.i94.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %cal_txi_slope.i94.i, align 4
  %conv.i95.i128 = zext i16 %259 to i32
  %mul.i.i96.i129 = mul nuw i32 %conv.i95.i128, %conv4.i123
  %add.i.i97.i130 = add nuw i32 %mul.i.i96.i129, 128
  %div15.i.i98.i131 = lshr i32 %add.i.i97.i130, 8
  %add2.i.i99.i132 = add nuw nsw i32 %div15.i.i98.i131, %conv2.i93.i127
  %260 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %add2.i.i99.i132, ptr %value, align 4
  br label %sfp_hwmon_calibrate_bias.exit105.i

sfp_hwmon_calibrate_bias.exit105.i:               ; preds = %if.then.i.i100.i133, %sw.bb2.i126.sfp_hwmon_calibrate_bias.exit105.i_crit_edge
  %261 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %cmp.i101.i134 = icmp sgt i32 %262, 0
  %cond.in.v.i102.i135 = select i1 %cmp.i101.i134, i32 250, i32 -250
  %cond.in.i103.i136 = add i32 %cond.in.v.i102.i135, %262
  %cond.i104.i137 = sdiv i32 %cond.in.i103.i136, 500
  %263 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %cond.i104.i137, ptr %value, align 4
  br label %sfp_hwmon_bias.exit

sw.bb5.i141:                                      ; preds = %sw.bb4
  %bias_high_warn.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 10
  %264 = ptrtoint ptr %bias_high_warn.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %bias_high_warn.i, align 4
  %conv7.i138 = zext i16 %265 to i32
  %266 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %conv7.i138, ptr %value, align 4
  %diagmon.i.i106.i139 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %267 = ptrtoint ptr %diagmon.i.i106.i139 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %diagmon.i.i106.i139, align 4
  %269 = and i8 %268, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool.not.i.i107.i140 = icmp eq i8 %269, 0
  br i1 %tobool.not.i.i107.i140, label %sw.bb5.i141.sfp_hwmon_calibrate_bias.exit121.i_crit_edge, label %if.then.i.i116.i148

sw.bb5.i141.sfp_hwmon_calibrate_bias.exit121.i_crit_edge: ; preds = %sw.bb5.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_bias.exit121.i

if.then.i.i116.i148:                              ; preds = %sw.bb5.i141
  call void @__sanitizer_cov_trace_pc() #14
  %cal_txi_offset.i108.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 34
  %270 = ptrtoint ptr %cal_txi_offset.i108.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %cal_txi_offset.i108.i, align 2
  %conv2.i109.i142 = zext i16 %271 to i32
  %cal_txi_slope.i110.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 33
  %272 = ptrtoint ptr %cal_txi_slope.i110.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %cal_txi_slope.i110.i, align 4
  %conv.i111.i143 = zext i16 %273 to i32
  %mul.i.i112.i144 = mul nuw i32 %conv.i111.i143, %conv7.i138
  %add.i.i113.i145 = add nuw i32 %mul.i.i112.i144, 128
  %div15.i.i114.i146 = lshr i32 %add.i.i113.i145, 8
  %add2.i.i115.i147 = add nuw nsw i32 %div15.i.i114.i146, %conv2.i109.i142
  %274 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %add2.i.i115.i147, ptr %value, align 4
  br label %sfp_hwmon_calibrate_bias.exit121.i

sfp_hwmon_calibrate_bias.exit121.i:               ; preds = %if.then.i.i116.i148, %sw.bb5.i141.sfp_hwmon_calibrate_bias.exit121.i_crit_edge
  %275 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %cmp.i117.i149 = icmp sgt i32 %276, 0
  %cond.in.v.i118.i150 = select i1 %cmp.i117.i149, i32 250, i32 -250
  %cond.in.i119.i151 = add i32 %cond.in.v.i118.i150, %276
  %cond.i120.i152 = sdiv i32 %cond.in.i119.i151, 500
  %277 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %cond.i120.i152, ptr %value, align 4
  br label %sfp_hwmon_bias.exit

sw.bb8.i156:                                      ; preds = %sw.bb4
  %bias_high_alarm.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 8
  %278 = ptrtoint ptr %bias_high_alarm.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %bias_high_alarm.i, align 4
  %conv10.i153 = zext i16 %279 to i32
  %280 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %conv10.i153, ptr %value, align 4
  %diagmon.i.i122.i154 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %281 = ptrtoint ptr %diagmon.i.i122.i154 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %diagmon.i.i122.i154, align 4
  %283 = and i8 %282, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool.not.i.i123.i155 = icmp eq i8 %283, 0
  br i1 %tobool.not.i.i123.i155, label %sw.bb8.i156.sfp_hwmon_calibrate_bias.exit137.i_crit_edge, label %if.then.i.i132.i163

sw.bb8.i156.sfp_hwmon_calibrate_bias.exit137.i_crit_edge: ; preds = %sw.bb8.i156
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_bias.exit137.i

if.then.i.i132.i163:                              ; preds = %sw.bb8.i156
  call void @__sanitizer_cov_trace_pc() #14
  %cal_txi_offset.i124.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 34
  %284 = ptrtoint ptr %cal_txi_offset.i124.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %cal_txi_offset.i124.i, align 2
  %conv2.i125.i157 = zext i16 %285 to i32
  %cal_txi_slope.i126.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 33
  %286 = ptrtoint ptr %cal_txi_slope.i126.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %cal_txi_slope.i126.i, align 4
  %conv.i127.i158 = zext i16 %287 to i32
  %mul.i.i128.i159 = mul nuw i32 %conv.i127.i158, %conv10.i153
  %add.i.i129.i160 = add nuw i32 %mul.i.i128.i159, 128
  %div15.i.i130.i161 = lshr i32 %add.i.i129.i160, 8
  %add2.i.i131.i162 = add nuw nsw i32 %div15.i.i130.i161, %conv2.i125.i157
  %288 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %add2.i.i131.i162, ptr %value, align 4
  br label %sfp_hwmon_calibrate_bias.exit137.i

sfp_hwmon_calibrate_bias.exit137.i:               ; preds = %if.then.i.i132.i163, %sw.bb8.i156.sfp_hwmon_calibrate_bias.exit137.i_crit_edge
  %289 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %cmp.i133.i164 = icmp sgt i32 %290, 0
  %cond.in.v.i134.i165 = select i1 %cmp.i133.i164, i32 250, i32 -250
  %cond.in.i135.i166 = add i32 %cond.in.v.i134.i165, %290
  %cond.i136.i167 = sdiv i32 %cond.in.i135.i166, 500
  %291 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %cond.i136.i167, ptr %value, align 4
  br label %sfp_hwmon_bias.exit

sw.bb11.i171:                                     ; preds = %sw.bb4
  %read.i.i168 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %292 = ptrtoint ptr %read.i.i168 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %read.i.i168, align 4
  %call.i.i169 = call i32 %293(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 112, ptr noundef nonnull %status.i87, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i169)
  %cmp.i170 = icmp slt i32 %call.i.i169, 0
  br i1 %cmp.i170, label %sw.bb11.i171.sfp_hwmon_bias.exit_crit_edge, label %if.end.i173

sw.bb11.i171.sfp_hwmon_bias.exit_crit_edge:       ; preds = %sw.bb11.i171
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_bias.exit

if.end.i173:                                      ; preds = %sw.bb11.i171
  call void @__sanitizer_cov_trace_pc() #14
  %294 = ptrtoint ptr %status.i87 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %status.i87, align 1
  %296 = lshr i8 %295, 2
  %.lobit89.i172 = and i8 %296, 1
  %297 = zext i8 %.lobit89.i172 to i32
  %298 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %297, ptr %value, align 4
  br label %sfp_hwmon_bias.exit

sw.bb16.i177:                                     ; preds = %sw.bb4
  %read.i138.i174 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %299 = ptrtoint ptr %read.i138.i174 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %read.i138.i174, align 4
  %call.i139.i175 = call i32 %300(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 116, ptr noundef nonnull %status.i87, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.i175)
  %cmp18.i176 = icmp slt i32 %call.i139.i175, 0
  br i1 %cmp18.i176, label %sw.bb16.i177.sfp_hwmon_bias.exit_crit_edge, label %if.end21.i179

sw.bb16.i177.sfp_hwmon_bias.exit_crit_edge:       ; preds = %sw.bb16.i177
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_bias.exit

if.end21.i179:                                    ; preds = %sw.bb16.i177
  call void @__sanitizer_cov_trace_pc() #14
  %301 = ptrtoint ptr %status.i87 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %status.i87, align 1
  %303 = lshr i8 %302, 2
  %.lobit88.i178 = and i8 %303, 1
  %304 = zext i8 %.lobit88.i178 to i32
  %305 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %304, ptr %value, align 4
  br label %sfp_hwmon_bias.exit

sw.bb29.i183:                                     ; preds = %sw.bb4
  %read.i140.i180 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %306 = ptrtoint ptr %read.i140.i180 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %read.i140.i180, align 4
  %call.i141.i181 = call i32 %307(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 116, ptr noundef nonnull %status.i87, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.i181)
  %cmp31.i182 = icmp slt i32 %call.i141.i181, 0
  br i1 %cmp31.i182, label %sw.bb29.i183.sfp_hwmon_bias.exit_crit_edge, label %if.end34.i185

sw.bb29.i183.sfp_hwmon_bias.exit_crit_edge:       ; preds = %sw.bb29.i183
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_bias.exit

if.end34.i185:                                    ; preds = %sw.bb29.i183
  call void @__sanitizer_cov_trace_pc() #14
  %308 = ptrtoint ptr %status.i87 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %status.i87, align 1
  %310 = lshr i8 %309, 3
  %.lobit87.i184 = and i8 %310, 1
  %311 = zext i8 %.lobit87.i184 to i32
  %312 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %311, ptr %value, align 4
  br label %sfp_hwmon_bias.exit

sw.bb42.i189:                                     ; preds = %sw.bb4
  %read.i142.i186 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %313 = ptrtoint ptr %read.i142.i186 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %read.i142.i186, align 4
  %call.i143.i187 = call i32 %314(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 112, ptr noundef nonnull %status.i87, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i187)
  %cmp44.i188 = icmp slt i32 %call.i143.i187, 0
  br i1 %cmp44.i188, label %sw.bb42.i189.sfp_hwmon_bias.exit_crit_edge, label %if.end47.i191

sw.bb42.i189.sfp_hwmon_bias.exit_crit_edge:       ; preds = %sw.bb42.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_bias.exit

if.end47.i191:                                    ; preds = %sw.bb42.i189
  call void @__sanitizer_cov_trace_pc() #14
  %315 = ptrtoint ptr %status.i87 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %status.i87, align 1
  %317 = lshr i8 %316, 3
  %.lobit.i190 = and i8 %317, 1
  %318 = zext i8 %.lobit.i190 to i32
  %319 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %318, ptr %value, align 4
  br label %sfp_hwmon_bias.exit

sfp_hwmon_bias.exit:                              ; preds = %if.end47.i191, %sw.bb42.i189.sfp_hwmon_bias.exit_crit_edge, %if.end34.i185, %sw.bb29.i183.sfp_hwmon_bias.exit_crit_edge, %if.end21.i179, %sw.bb16.i177.sfp_hwmon_bias.exit_crit_edge, %if.end.i173, %sw.bb11.i171.sfp_hwmon_bias.exit_crit_edge, %sfp_hwmon_calibrate_bias.exit137.i, %sfp_hwmon_calibrate_bias.exit121.i, %sfp_hwmon_calibrate_bias.exit105.i, %sfp_hwmon_calibrate_bias.exit.i, %sfp_hwmon_calibrate_bias.exit.i.i, %sfp_hwmon_read_sensor.exit.thread.i.i92, %sw.bb4.sfp_hwmon_bias.exit_crit_edge
  %retval.0.i192 = phi i32 [ 0, %if.end47.i191 ], [ 0, %if.end34.i185 ], [ 0, %if.end21.i179 ], [ 0, %if.end.i173 ], [ 0, %sfp_hwmon_calibrate_bias.exit137.i ], [ 0, %sfp_hwmon_calibrate_bias.exit121.i ], [ 0, %sfp_hwmon_calibrate_bias.exit105.i ], [ 0, %sfp_hwmon_calibrate_bias.exit.i ], [ %call.i.i169, %sw.bb11.i171.sfp_hwmon_bias.exit_crit_edge ], [ %call.i139.i175, %sw.bb16.i177.sfp_hwmon_bias.exit_crit_edge ], [ %call.i141.i181, %sw.bb29.i183.sfp_hwmon_bias.exit_crit_edge ], [ %call.i143.i187, %sw.bb42.i189.sfp_hwmon_bias.exit_crit_edge ], [ -95, %sw.bb4.sfp_hwmon_bias.exit_crit_edge ], [ 0, %sfp_hwmon_calibrate_bias.exit.i.i ], [ %call.i.i.i.i89, %sfp_hwmon_read_sensor.exit.thread.i.i92 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i87) #12
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %320 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %320, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %channel, label %sw.bb6.cleanup_crit_edge [
    i32 0, label %sw.bb7
    i32 1, label %sw.bb9
  ]

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i194) #12
  %321 = ptrtoint ptr %status.i194 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 -1, ptr %status.i194, align 1, !annotation !445
  %322 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %322, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %attr, label %sw.bb7.sfp_hwmon_tx_power.exit_crit_edge [
    i32 9, label %sw.bb.i198
    i32 21, label %sw.bb1.i218
    i32 18, label %sw.bb2.i231
    i32 19, label %sw.bb5.i233
    i32 20, label %sw.bb8.i235
    i32 27, label %sw.bb11.i239
    i32 25, label %sw.bb16.i242
    i32 26, label %sw.bb29.i247
    i32 28, label %sw.bb42.i253
  ]

sw.bb7.sfp_hwmon_tx_power.exit_crit_edge:         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_tx_power.exit

sw.bb.i198:                                       ; preds = %sw.bb7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i193) #12
  %323 = ptrtoint ptr %val.i.i.i193 to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 -1, ptr %val.i.i.i193, align 2, !annotation !445
  %read.i.i.i.i195 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %324 = ptrtoint ptr %read.i.i.i.i195 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %read.i.i.i.i195, align 4
  %call.i.i.i.i196 = call i32 %325(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 102, ptr noundef nonnull %val.i.i.i193, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i196)
  %cmp.i.i.i197 = icmp slt i32 %call.i.i.i.i196, 0
  br i1 %cmp.i.i.i197, label %sfp_hwmon_read_sensor.exit.thread.i.i199, label %if.end.i.i203

sfp_hwmon_read_sensor.exit.thread.i.i199:         ; preds = %sw.bb.i198
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i193) #12
  br label %sfp_hwmon_tx_power.exit

if.end.i.i203:                                    ; preds = %sw.bb.i198
  %326 = ptrtoint ptr %val.i.i.i193 to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %val.i.i.i193, align 2
  %conv2.i.i.i200 = zext i16 %327 to i32
  %328 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %conv2.i.i.i200, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i193) #12
  %diagmon.i.i.i.i201 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %329 = ptrtoint ptr %diagmon.i.i.i.i201 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %diagmon.i.i.i.i201, align 4
  %331 = and i8 %330, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool.not.i.i.i.i202 = icmp eq i8 %331, 0
  br i1 %tobool.not.i.i.i.i202, label %if.end.i.i203.sfp_hwmon_calibrate_tx_power.exit.i.i_crit_edge, label %if.then.i.i.i.i210

if.end.i.i203.sfp_hwmon_calibrate_tx_power.exit.i.i_crit_edge: ; preds = %if.end.i.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_tx_power.exit.i.i

if.then.i.i.i.i210:                               ; preds = %if.end.i.i203
  call void @__sanitizer_cov_trace_pc() #14
  %cal_txpwr_offset.i.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 36
  %332 = ptrtoint ptr %cal_txpwr_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %cal_txpwr_offset.i.i.i, align 2
  %conv2.i1.i.i204 = zext i16 %333 to i32
  %cal_txpwr_slope.i.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 35
  %334 = ptrtoint ptr %cal_txpwr_slope.i.i.i to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %cal_txpwr_slope.i.i.i, align 4
  %conv.i.i.i205 = zext i16 %335 to i32
  %mul.i.i.i.i206 = mul nuw i32 %conv.i.i.i205, %conv2.i.i.i200
  %add.i.i.i.i207 = add nuw i32 %mul.i.i.i.i206, 128
  %div15.i.i.i.i208 = lshr i32 %add.i.i.i.i207, 8
  %add2.i.i.i.i209 = add nuw nsw i32 %div15.i.i.i.i208, %conv2.i1.i.i204
  %336 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %add2.i.i.i.i209, ptr %value, align 4
  br label %sfp_hwmon_calibrate_tx_power.exit.i.i

sfp_hwmon_calibrate_tx_power.exit.i.i:            ; preds = %if.then.i.i.i.i210, %if.end.i.i203.sfp_hwmon_calibrate_tx_power.exit.i.i_crit_edge
  %337 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %cmp.i2.i.i211 = icmp sgt i32 %338, 0
  %cond.in.v.i.i.i212 = select i1 %cmp.i2.i.i211, i32 5, i32 -5
  %cond.in.i.i.i213 = add i32 %cond.in.v.i.i.i212, %338
  %cond.i.i.i214 = sdiv i32 %cond.in.i.i.i213, 10
  %339 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %cond.i.i.i214, ptr %value, align 4
  br label %sfp_hwmon_tx_power.exit

sw.bb1.i218:                                      ; preds = %sw.bb7
  %txpwr_low_alarm.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 13
  %340 = ptrtoint ptr %txpwr_low_alarm.i to i32
  call void @__asan_load2_noabort(i32 %340)
  %341 = load i16, ptr %txpwr_low_alarm.i, align 2
  %conv.i215 = zext i16 %341 to i32
  %342 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %conv.i215, ptr %value, align 4
  %diagmon.i.i.i216 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %343 = ptrtoint ptr %diagmon.i.i.i216 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %diagmon.i.i.i216, align 4
  %345 = and i8 %344, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %345)
  %tobool.not.i.i.i217 = icmp eq i8 %345, 0
  br i1 %tobool.not.i.i.i217, label %sw.bb1.i218.sfp_hwmon_calibrate_tx_power.exit.i_crit_edge, label %if.then.i.i.i225

sw.bb1.i218.sfp_hwmon_calibrate_tx_power.exit.i_crit_edge: ; preds = %sw.bb1.i218
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_tx_power.exit.i

if.then.i.i.i225:                                 ; preds = %sw.bb1.i218
  call void @__sanitizer_cov_trace_pc() #14
  %cal_txpwr_offset.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 36
  %346 = ptrtoint ptr %cal_txpwr_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %cal_txpwr_offset.i.i, align 2
  %conv2.i.i219 = zext i16 %347 to i32
  %cal_txpwr_slope.i.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 35
  %348 = ptrtoint ptr %cal_txpwr_slope.i.i to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %cal_txpwr_slope.i.i, align 4
  %conv.i.i220 = zext i16 %349 to i32
  %mul.i.i.i221 = mul nuw i32 %conv.i.i220, %conv.i215
  %add.i.i.i222 = add nuw i32 %mul.i.i.i221, 128
  %div15.i.i.i223 = lshr i32 %add.i.i.i222, 8
  %add2.i.i.i224 = add nuw nsw i32 %div15.i.i.i223, %conv2.i.i219
  %350 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %add2.i.i.i224, ptr %value, align 4
  br label %sfp_hwmon_calibrate_tx_power.exit.i

sfp_hwmon_calibrate_tx_power.exit.i:              ; preds = %if.then.i.i.i225, %sw.bb1.i218.sfp_hwmon_calibrate_tx_power.exit.i_crit_edge
  %351 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %cmp.i.i226 = icmp sgt i32 %352, 0
  %cond.in.v.i.i227 = select i1 %cmp.i.i226, i32 5, i32 -5
  %cond.in.i.i228 = add i32 %cond.in.v.i.i227, %352
  %cond.i.i229 = sdiv i32 %cond.in.i.i228, 10
  %353 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %cond.i.i229, ptr %value, align 4
  br label %sfp_hwmon_tx_power.exit

sw.bb2.i231:                                      ; preds = %sw.bb7
  %txpwr_low_warn.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 15
  %354 = ptrtoint ptr %txpwr_low_warn.i to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %txpwr_low_warn.i, align 2
  %conv4.i230 = zext i16 %355 to i32
  %356 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %conv4.i230, ptr %value, align 4
  %diagmon.i.i88.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %357 = ptrtoint ptr %diagmon.i.i88.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %diagmon.i.i88.i, align 4
  %359 = and i8 %358, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool.not.i.i89.i = icmp eq i8 %359, 0
  br i1 %tobool.not.i.i89.i, label %sw.bb2.i231.sfp_hwmon_calibrate_tx_power.exit103.i_crit_edge, label %if.then.i.i98.i

sw.bb2.i231.sfp_hwmon_calibrate_tx_power.exit103.i_crit_edge: ; preds = %sw.bb2.i231
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_tx_power.exit103.i

if.then.i.i98.i:                                  ; preds = %sw.bb2.i231
  call void @__sanitizer_cov_trace_pc() #14
  %cal_txpwr_offset.i90.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 36
  %360 = ptrtoint ptr %cal_txpwr_offset.i90.i to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %cal_txpwr_offset.i90.i, align 2
  %conv2.i91.i = zext i16 %361 to i32
  %cal_txpwr_slope.i92.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 35
  %362 = ptrtoint ptr %cal_txpwr_slope.i92.i to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %cal_txpwr_slope.i92.i, align 4
  %conv.i93.i = zext i16 %363 to i32
  %mul.i.i94.i = mul nuw i32 %conv.i93.i, %conv4.i230
  %add.i.i95.i = add nuw i32 %mul.i.i94.i, 128
  %div15.i.i96.i = lshr i32 %add.i.i95.i, 8
  %add2.i.i97.i = add nuw nsw i32 %div15.i.i96.i, %conv2.i91.i
  %364 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %add2.i.i97.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate_tx_power.exit103.i

sfp_hwmon_calibrate_tx_power.exit103.i:           ; preds = %if.then.i.i98.i, %sw.bb2.i231.sfp_hwmon_calibrate_tx_power.exit103.i_crit_edge
  %365 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %366)
  %cmp.i99.i = icmp sgt i32 %366, 0
  %cond.in.v.i100.i = select i1 %cmp.i99.i, i32 5, i32 -5
  %cond.in.i101.i = add i32 %cond.in.v.i100.i, %366
  %cond.i102.i = sdiv i32 %cond.in.i101.i, 10
  %367 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %cond.i102.i, ptr %value, align 4
  br label %sfp_hwmon_tx_power.exit

sw.bb5.i233:                                      ; preds = %sw.bb7
  %txpwr_high_warn.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 14
  %368 = ptrtoint ptr %txpwr_high_warn.i to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %txpwr_high_warn.i, align 4
  %conv7.i232 = zext i16 %369 to i32
  %370 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %conv7.i232, ptr %value, align 4
  %diagmon.i.i104.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %371 = ptrtoint ptr %diagmon.i.i104.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %diagmon.i.i104.i, align 4
  %373 = and i8 %372, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %373)
  %tobool.not.i.i105.i = icmp eq i8 %373, 0
  br i1 %tobool.not.i.i105.i, label %sw.bb5.i233.sfp_hwmon_calibrate_tx_power.exit119.i_crit_edge, label %if.then.i.i114.i

sw.bb5.i233.sfp_hwmon_calibrate_tx_power.exit119.i_crit_edge: ; preds = %sw.bb5.i233
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_tx_power.exit119.i

if.then.i.i114.i:                                 ; preds = %sw.bb5.i233
  call void @__sanitizer_cov_trace_pc() #14
  %cal_txpwr_offset.i106.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 36
  %374 = ptrtoint ptr %cal_txpwr_offset.i106.i to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %cal_txpwr_offset.i106.i, align 2
  %conv2.i107.i = zext i16 %375 to i32
  %cal_txpwr_slope.i108.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 35
  %376 = ptrtoint ptr %cal_txpwr_slope.i108.i to i32
  call void @__asan_load2_noabort(i32 %376)
  %377 = load i16, ptr %cal_txpwr_slope.i108.i, align 4
  %conv.i109.i = zext i16 %377 to i32
  %mul.i.i110.i = mul nuw i32 %conv.i109.i, %conv7.i232
  %add.i.i111.i = add nuw i32 %mul.i.i110.i, 128
  %div15.i.i112.i = lshr i32 %add.i.i111.i, 8
  %add2.i.i113.i = add nuw nsw i32 %div15.i.i112.i, %conv2.i107.i
  %378 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %add2.i.i113.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate_tx_power.exit119.i

sfp_hwmon_calibrate_tx_power.exit119.i:           ; preds = %if.then.i.i114.i, %sw.bb5.i233.sfp_hwmon_calibrate_tx_power.exit119.i_crit_edge
  %379 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %cmp.i115.i = icmp sgt i32 %380, 0
  %cond.in.v.i116.i = select i1 %cmp.i115.i, i32 5, i32 -5
  %cond.in.i117.i = add i32 %cond.in.v.i116.i, %380
  %cond.i118.i = sdiv i32 %cond.in.i117.i, 10
  %381 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %cond.i118.i, ptr %value, align 4
  br label %sfp_hwmon_tx_power.exit

sw.bb8.i235:                                      ; preds = %sw.bb7
  %txpwr_high_alarm.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 12
  %382 = ptrtoint ptr %txpwr_high_alarm.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %txpwr_high_alarm.i, align 4
  %conv10.i234 = zext i16 %383 to i32
  %384 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %conv10.i234, ptr %value, align 4
  %diagmon.i.i120.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 28, i32 1, i32 5
  %385 = ptrtoint ptr %diagmon.i.i120.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %diagmon.i.i120.i, align 4
  %387 = and i8 %386, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %387)
  %tobool.not.i.i121.i = icmp eq i8 %387, 0
  br i1 %tobool.not.i.i121.i, label %sw.bb8.i235.sfp_hwmon_calibrate_tx_power.exit135.i_crit_edge, label %if.then.i.i130.i

sw.bb8.i235.sfp_hwmon_calibrate_tx_power.exit135.i_crit_edge: ; preds = %sw.bb8.i235
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_calibrate_tx_power.exit135.i

if.then.i.i130.i:                                 ; preds = %sw.bb8.i235
  call void @__sanitizer_cov_trace_pc() #14
  %cal_txpwr_offset.i122.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 36
  %388 = ptrtoint ptr %cal_txpwr_offset.i122.i to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %cal_txpwr_offset.i122.i, align 2
  %conv2.i123.i = zext i16 %389 to i32
  %cal_txpwr_slope.i124.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 35
  %390 = ptrtoint ptr %cal_txpwr_slope.i124.i to i32
  call void @__asan_load2_noabort(i32 %390)
  %391 = load i16, ptr %cal_txpwr_slope.i124.i, align 4
  %conv.i125.i = zext i16 %391 to i32
  %mul.i.i126.i = mul nuw i32 %conv.i125.i, %conv10.i234
  %add.i.i127.i = add nuw i32 %mul.i.i126.i, 128
  %div15.i.i128.i = lshr i32 %add.i.i127.i, 8
  %add2.i.i129.i = add nuw nsw i32 %div15.i.i128.i, %conv2.i123.i
  %392 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %add2.i.i129.i, ptr %value, align 4
  br label %sfp_hwmon_calibrate_tx_power.exit135.i

sfp_hwmon_calibrate_tx_power.exit135.i:           ; preds = %if.then.i.i130.i, %sw.bb8.i235.sfp_hwmon_calibrate_tx_power.exit135.i_crit_edge
  %393 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %394)
  %cmp.i131.i = icmp sgt i32 %394, 0
  %cond.in.v.i132.i = select i1 %cmp.i131.i, i32 5, i32 -5
  %cond.in.i133.i = add i32 %cond.in.v.i132.i, %394
  %cond.i134.i = sdiv i32 %cond.in.i133.i, 10
  %395 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %cond.i134.i, ptr %value, align 4
  br label %sfp_hwmon_tx_power.exit

sw.bb11.i239:                                     ; preds = %sw.bb7
  %read.i.i236 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %396 = ptrtoint ptr %read.i.i236 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %read.i.i236, align 4
  %call.i.i237 = call i32 %397(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 112, ptr noundef nonnull %status.i194, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i237)
  %cmp.i238 = icmp slt i32 %call.i.i237, 0
  br i1 %cmp.i238, label %sw.bb11.i239.sfp_hwmon_tx_power.exit_crit_edge, label %if.end.i240

sw.bb11.i239.sfp_hwmon_tx_power.exit_crit_edge:   ; preds = %sw.bb11.i239
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_tx_power.exit

if.end.i240:                                      ; preds = %sw.bb11.i239
  call void @__sanitizer_cov_trace_pc() #14
  %398 = ptrtoint ptr %status.i194 to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %status.i194, align 1
  %400 = and i8 %399, 1
  %401 = zext i8 %400 to i32
  %402 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %401, ptr %value, align 4
  br label %sfp_hwmon_tx_power.exit

sw.bb16.i242:                                     ; preds = %sw.bb7
  %read.i136.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %403 = ptrtoint ptr %read.i136.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %read.i136.i, align 4
  %call.i137.i = call i32 %404(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 116, ptr noundef nonnull %status.i194, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137.i)
  %cmp18.i241 = icmp slt i32 %call.i137.i, 0
  br i1 %cmp18.i241, label %sw.bb16.i242.sfp_hwmon_tx_power.exit_crit_edge, label %if.end21.i243

sw.bb16.i242.sfp_hwmon_tx_power.exit_crit_edge:   ; preds = %sw.bb16.i242
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_tx_power.exit

if.end21.i243:                                    ; preds = %sw.bb16.i242
  call void @__sanitizer_cov_trace_pc() #14
  %405 = ptrtoint ptr %status.i194 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %status.i194, align 1
  %407 = and i8 %406, 1
  %408 = zext i8 %407 to i32
  %409 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %408, ptr %value, align 4
  br label %sfp_hwmon_tx_power.exit

sw.bb29.i247:                                     ; preds = %sw.bb7
  %read.i138.i244 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %410 = ptrtoint ptr %read.i138.i244 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %read.i138.i244, align 4
  %call.i139.i245 = call i32 %411(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 116, ptr noundef nonnull %status.i194, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.i245)
  %cmp31.i246 = icmp slt i32 %call.i139.i245, 0
  br i1 %cmp31.i246, label %sw.bb29.i247.sfp_hwmon_tx_power.exit_crit_edge, label %if.end34.i249

sw.bb29.i247.sfp_hwmon_tx_power.exit_crit_edge:   ; preds = %sw.bb29.i247
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_tx_power.exit

if.end34.i249:                                    ; preds = %sw.bb29.i247
  call void @__sanitizer_cov_trace_pc() #14
  %412 = ptrtoint ptr %status.i194 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %status.i194, align 1
  %414 = lshr i8 %413, 1
  %.lobit87.i248 = and i8 %414, 1
  %415 = zext i8 %.lobit87.i248 to i32
  %416 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %415, ptr %value, align 4
  br label %sfp_hwmon_tx_power.exit

sw.bb42.i253:                                     ; preds = %sw.bb7
  %read.i140.i250 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %417 = ptrtoint ptr %read.i140.i250 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %read.i140.i250, align 4
  %call.i141.i251 = call i32 %418(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 112, ptr noundef nonnull %status.i194, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.i251)
  %cmp44.i252 = icmp slt i32 %call.i141.i251, 0
  br i1 %cmp44.i252, label %sw.bb42.i253.sfp_hwmon_tx_power.exit_crit_edge, label %if.end47.i255

sw.bb42.i253.sfp_hwmon_tx_power.exit_crit_edge:   ; preds = %sw.bb42.i253
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_tx_power.exit

if.end47.i255:                                    ; preds = %sw.bb42.i253
  call void @__sanitizer_cov_trace_pc() #14
  %419 = ptrtoint ptr %status.i194 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %status.i194, align 1
  %421 = lshr i8 %420, 1
  %.lobit.i254 = and i8 %421, 1
  %422 = zext i8 %.lobit.i254 to i32
  %423 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %422, ptr %value, align 4
  br label %sfp_hwmon_tx_power.exit

sfp_hwmon_tx_power.exit:                          ; preds = %if.end47.i255, %sw.bb42.i253.sfp_hwmon_tx_power.exit_crit_edge, %if.end34.i249, %sw.bb29.i247.sfp_hwmon_tx_power.exit_crit_edge, %if.end21.i243, %sw.bb16.i242.sfp_hwmon_tx_power.exit_crit_edge, %if.end.i240, %sw.bb11.i239.sfp_hwmon_tx_power.exit_crit_edge, %sfp_hwmon_calibrate_tx_power.exit135.i, %sfp_hwmon_calibrate_tx_power.exit119.i, %sfp_hwmon_calibrate_tx_power.exit103.i, %sfp_hwmon_calibrate_tx_power.exit.i, %sfp_hwmon_calibrate_tx_power.exit.i.i, %sfp_hwmon_read_sensor.exit.thread.i.i199, %sw.bb7.sfp_hwmon_tx_power.exit_crit_edge
  %retval.0.i256 = phi i32 [ 0, %if.end47.i255 ], [ 0, %if.end34.i249 ], [ 0, %if.end21.i243 ], [ 0, %if.end.i240 ], [ 0, %sfp_hwmon_calibrate_tx_power.exit135.i ], [ 0, %sfp_hwmon_calibrate_tx_power.exit119.i ], [ 0, %sfp_hwmon_calibrate_tx_power.exit103.i ], [ 0, %sfp_hwmon_calibrate_tx_power.exit.i ], [ %call.i.i237, %sw.bb11.i239.sfp_hwmon_tx_power.exit_crit_edge ], [ %call.i137.i, %sw.bb16.i242.sfp_hwmon_tx_power.exit_crit_edge ], [ %call.i139.i245, %sw.bb29.i247.sfp_hwmon_tx_power.exit_crit_edge ], [ %call.i141.i251, %sw.bb42.i253.sfp_hwmon_tx_power.exit_crit_edge ], [ -95, %sw.bb7.sfp_hwmon_tx_power.exit_crit_edge ], [ 0, %sfp_hwmon_calibrate_tx_power.exit.i.i ], [ %call.i.i.i.i196, %sfp_hwmon_read_sensor.exit.thread.i.i199 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i194) #12
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i258) #12
  %424 = ptrtoint ptr %status.i258 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 -1, ptr %status.i258, align 1, !annotation !445
  %425 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %425, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %attr, label %sw.bb9.sfp_hwmon_rx_power.exit_crit_edge [
    i32 9, label %sw.bb.i262
    i32 21, label %sw.bb1.i273
    i32 18, label %sw.bb2.i275
    i32 19, label %sw.bb5.i277
    i32 20, label %sw.bb8.i279
    i32 27, label %sw.bb11.i283
    i32 25, label %sw.bb16.i286
    i32 26, label %sw.bb29.i289
    i32 28, label %sw.bb42.i292
  ]

sw.bb9.sfp_hwmon_rx_power.exit_crit_edge:         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_rx_power.exit

sw.bb.i262:                                       ; preds = %sw.bb9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i257) #12
  %426 = ptrtoint ptr %val.i.i.i257 to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 -1, ptr %val.i.i.i257, align 2, !annotation !445
  %read.i.i.i.i259 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %427 = ptrtoint ptr %read.i.i.i.i259 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %read.i.i.i.i259, align 4
  %call.i.i.i.i260 = call i32 %428(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 104, ptr noundef nonnull %val.i.i.i257, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i260)
  %cmp.i.i.i261 = icmp slt i32 %call.i.i.i.i260, 0
  br i1 %cmp.i.i.i261, label %sfp_hwmon_read_sensor.exit.thread.i.i263, label %if.end.i.i268

sfp_hwmon_read_sensor.exit.thread.i.i263:         ; preds = %sw.bb.i262
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i257) #12
  br label %sfp_hwmon_rx_power.exit

if.end.i.i268:                                    ; preds = %sw.bb.i262
  call void @__sanitizer_cov_trace_pc() #14
  %429 = ptrtoint ptr %val.i.i.i257 to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %val.i.i.i257, align 2
  %conv2.i.i.i264 = zext i16 %430 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i257) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %430)
  %cmp.i1.not.i.i = icmp eq i16 %430, 0
  %cond.in.v.i.i.i265 = select i1 %cmp.i1.not.i.i, i32 -5, i32 5
  %cond.in.i.i.i266 = add nsw i32 %cond.in.v.i.i.i265, %conv2.i.i.i264
  %cond.i.i.i267 = sdiv i32 %cond.in.i.i.i266, 10
  %431 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 %cond.i.i.i267, ptr %value, align 4
  br label %sfp_hwmon_rx_power.exit

sw.bb1.i273:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %rxpwr_low_alarm.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 17
  %432 = ptrtoint ptr %rxpwr_low_alarm.i to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %rxpwr_low_alarm.i, align 2
  %conv.i269 = zext i16 %433 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %433)
  %cmp.i.not.i = icmp eq i16 %433, 0
  %cond.in.v.i.i270 = select i1 %cmp.i.not.i, i32 -5, i32 5
  %cond.in.i.i271 = add nsw i32 %cond.in.v.i.i270, %conv.i269
  %cond.i.i272 = sdiv i32 %cond.in.i.i271, 10
  %434 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 %cond.i.i272, ptr %value, align 4
  br label %sfp_hwmon_rx_power.exit

sw.bb2.i275:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %rxpwr_low_warn.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 19
  %435 = ptrtoint ptr %rxpwr_low_warn.i to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %rxpwr_low_warn.i, align 2
  %conv4.i274 = zext i16 %436 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %436)
  %cmp.i86.not.i = icmp eq i16 %436, 0
  %cond.in.v.i87.i = select i1 %cmp.i86.not.i, i32 -5, i32 5
  %cond.in.i88.i = add nsw i32 %cond.in.v.i87.i, %conv4.i274
  %cond.i89.i = sdiv i32 %cond.in.i88.i, 10
  %437 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %cond.i89.i, ptr %value, align 4
  br label %sfp_hwmon_rx_power.exit

sw.bb5.i277:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %rxpwr_high_warn.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 18
  %438 = ptrtoint ptr %rxpwr_high_warn.i to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %rxpwr_high_warn.i, align 4
  %conv7.i276 = zext i16 %439 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %439)
  %cmp.i90.not.i = icmp eq i16 %439, 0
  %cond.in.v.i91.i = select i1 %cmp.i90.not.i, i32 -5, i32 5
  %cond.in.i92.i = add nsw i32 %cond.in.v.i91.i, %conv7.i276
  %cond.i93.i = sdiv i32 %cond.in.i92.i, 10
  %440 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %cond.i93.i, ptr %value, align 4
  br label %sfp_hwmon_rx_power.exit

sw.bb8.i279:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %rxpwr_high_alarm.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 31, i32 16
  %441 = ptrtoint ptr %rxpwr_high_alarm.i to i32
  call void @__asan_load2_noabort(i32 %441)
  %442 = load i16, ptr %rxpwr_high_alarm.i, align 4
  %conv10.i278 = zext i16 %442 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %442)
  %cmp.i94.not.i = icmp eq i16 %442, 0
  %cond.in.v.i95.i = select i1 %cmp.i94.not.i, i32 -5, i32 5
  %cond.in.i96.i = add nsw i32 %cond.in.v.i95.i, %conv10.i278
  %cond.i97.i = sdiv i32 %cond.in.i96.i, 10
  %443 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %cond.i97.i, ptr %value, align 4
  br label %sfp_hwmon_rx_power.exit

sw.bb11.i283:                                     ; preds = %sw.bb9
  %read.i.i280 = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %444 = ptrtoint ptr %read.i.i280 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %read.i.i280, align 4
  %call.i.i281 = call i32 %445(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 113, ptr noundef nonnull %status.i258, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i281)
  %cmp.i282 = icmp slt i32 %call.i.i281, 0
  br i1 %cmp.i282, label %sw.bb11.i283.sfp_hwmon_rx_power.exit_crit_edge, label %if.end.i284

sw.bb11.i283.sfp_hwmon_rx_power.exit_crit_edge:   ; preds = %sw.bb11.i283
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_rx_power.exit

if.end.i284:                                      ; preds = %sw.bb11.i283
  call void @__sanitizer_cov_trace_pc() #14
  %446 = ptrtoint ptr %status.i258 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %status.i258, align 1
  %448 = lshr i8 %447, 6
  %.lobit85.i = and i8 %448, 1
  %449 = zext i8 %.lobit85.i to i32
  %450 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 %449, ptr %value, align 4
  br label %sfp_hwmon_rx_power.exit

sw.bb16.i286:                                     ; preds = %sw.bb9
  %read.i98.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %451 = ptrtoint ptr %read.i98.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %read.i98.i, align 4
  %call.i99.i = call i32 %452(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 117, ptr noundef nonnull %status.i258, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %cmp18.i285 = icmp slt i32 %call.i99.i, 0
  br i1 %cmp18.i285, label %sw.bb16.i286.sfp_hwmon_rx_power.exit_crit_edge, label %if.end21.i287

sw.bb16.i286.sfp_hwmon_rx_power.exit_crit_edge:   ; preds = %sw.bb16.i286
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_rx_power.exit

if.end21.i287:                                    ; preds = %sw.bb16.i286
  call void @__sanitizer_cov_trace_pc() #14
  %453 = ptrtoint ptr %status.i258 to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %status.i258, align 1
  %455 = lshr i8 %454, 6
  %.lobit84.i = and i8 %455, 1
  %456 = zext i8 %.lobit84.i to i32
  %457 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %456, ptr %value, align 4
  br label %sfp_hwmon_rx_power.exit

sw.bb29.i289:                                     ; preds = %sw.bb9
  %read.i100.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %458 = ptrtoint ptr %read.i100.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %read.i100.i, align 4
  %call.i101.i = call i32 %459(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 117, ptr noundef nonnull %status.i258, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %cmp31.i288 = icmp slt i32 %call.i101.i, 0
  br i1 %cmp31.i288, label %sw.bb29.i289.sfp_hwmon_rx_power.exit_crit_edge, label %if.end34.i290

sw.bb29.i289.sfp_hwmon_rx_power.exit_crit_edge:   ; preds = %sw.bb29.i289
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_rx_power.exit

if.end34.i290:                                    ; preds = %sw.bb29.i289
  call void @__sanitizer_cov_trace_pc() #14
  %460 = ptrtoint ptr %status.i258 to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %status.i258, align 1
  %.lobit83.i = lshr i8 %461, 7
  %462 = zext i8 %.lobit83.i to i32
  %463 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %462, ptr %value, align 4
  br label %sfp_hwmon_rx_power.exit

sw.bb42.i292:                                     ; preds = %sw.bb9
  %read.i102.i = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 10
  %464 = ptrtoint ptr %read.i102.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %read.i102.i, align 4
  %call.i103.i = call i32 %465(ptr noundef %1, i1 noundef zeroext true, i8 noundef zeroext 113, ptr noundef nonnull %status.i258, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %cmp44.i291 = icmp slt i32 %call.i103.i, 0
  br i1 %cmp44.i291, label %sw.bb42.i292.sfp_hwmon_rx_power.exit_crit_edge, label %if.end47.i294

sw.bb42.i292.sfp_hwmon_rx_power.exit_crit_edge:   ; preds = %sw.bb42.i292
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_hwmon_rx_power.exit

if.end47.i294:                                    ; preds = %sw.bb42.i292
  call void @__sanitizer_cov_trace_pc() #14
  %466 = ptrtoint ptr %status.i258 to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %status.i258, align 1
  %.lobit.i293 = lshr i8 %467, 7
  %468 = zext i8 %.lobit.i293 to i32
  %469 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 %468, ptr %value, align 4
  br label %sfp_hwmon_rx_power.exit

sfp_hwmon_rx_power.exit:                          ; preds = %if.end47.i294, %sw.bb42.i292.sfp_hwmon_rx_power.exit_crit_edge, %if.end34.i290, %sw.bb29.i289.sfp_hwmon_rx_power.exit_crit_edge, %if.end21.i287, %sw.bb16.i286.sfp_hwmon_rx_power.exit_crit_edge, %if.end.i284, %sw.bb11.i283.sfp_hwmon_rx_power.exit_crit_edge, %sw.bb8.i279, %sw.bb5.i277, %sw.bb2.i275, %sw.bb1.i273, %if.end.i.i268, %sfp_hwmon_read_sensor.exit.thread.i.i263, %sw.bb9.sfp_hwmon_rx_power.exit_crit_edge
  %retval.0.i295 = phi i32 [ 0, %if.end47.i294 ], [ 0, %if.end34.i290 ], [ 0, %if.end21.i287 ], [ 0, %if.end.i284 ], [ 0, %sw.bb8.i279 ], [ 0, %sw.bb5.i277 ], [ 0, %sw.bb2.i275 ], [ 0, %sw.bb1.i273 ], [ %call.i.i281, %sw.bb11.i283.sfp_hwmon_rx_power.exit_crit_edge ], [ %call.i99.i, %sw.bb16.i286.sfp_hwmon_rx_power.exit_crit_edge ], [ %call.i101.i, %sw.bb29.i289.sfp_hwmon_rx_power.exit_crit_edge ], [ %call.i103.i, %sw.bb42.i292.sfp_hwmon_rx_power.exit_crit_edge ], [ -95, %sw.bb9.sfp_hwmon_rx_power.exit_crit_edge ], [ 0, %if.end.i.i268 ], [ %call.i.i.i.i260, %sfp_hwmon_read_sensor.exit.thread.i.i263 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i258) #12
  br label %cleanup

cleanup:                                          ; preds = %sfp_hwmon_rx_power.exit, %sfp_hwmon_tx_power.exit, %sw.bb6.cleanup_crit_edge, %sfp_hwmon_bias.exit, %sfp_hwmon_vcc.exit, %sfp_hwmon_temp.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i295, %sfp_hwmon_rx_power.exit ], [ %retval.0.i256, %sfp_hwmon_tx_power.exit ], [ %retval.0.i192, %sfp_hwmon_bias.exit ], [ %retval.0.i85, %sfp_hwmon_vcc.exit ], [ %retval.0.i, %sfp_hwmon_temp.exit ], [ -95, %sw.bb6.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sfp_hwmon_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %type, label %entry.return_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb5
    i32 4, label %sw.bb8
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %attr)
  %cond14 = icmp eq i32 %attr, 10
  br i1 %cond14, label %sw.bb.return.sink.split_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %attr)
  %cond13 = icmp eq i32 %attr, 21
  br i1 %cond13, label %sw.bb2.return.sink.split_crit_edge, label %sw.bb2.return_crit_edge

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb2.return.sink.split_crit_edge:               ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %attr)
  %cond12 = icmp eq i32 %attr, 10
  br i1 %cond12, label %sw.bb5.return.sink.split_crit_edge, label %sw.bb5.return_crit_edge

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb5.return.sink.split_crit_edge:               ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %attr)
  %cond = icmp eq i32 %attr, 22
  br i1 %cond, label %sw.bb9, label %sw.bb8.return_crit_edge

sw.bb8.return_crit_edge:                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb9:                                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [2 x ptr], ptr @sfp_hwmon_power_labels, i32 0, i32 %channel
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb9, %sw.bb5.return.sink.split_crit_edge, %sw.bb2.return.sink.split_crit_edge, %sw.bb.return.sink.split_crit_edge
  %.sink = phi ptr [ %2, %sw.bb9 ], [ @.str.49, %sw.bb.return.sink.split_crit_edge ], [ @.str.50, %sw.bb2.return.sink.split_crit_edge ], [ @.str.51, %sw.bb5.return.sink.split_crit_edge ]
  %3 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %.sink, ptr %str, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb8.return_crit_edge, %sw.bb5.return_crit_edge, %sw.bb2.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %sw.bb.return_crit_edge ], [ -95, %sw.bb2.return_crit_edge ], [ -95, %sw.bb5.return_crit_edge ], [ -95, %sw.bb8.return_crit_edge ], [ -95, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sfp_module_supported(ptr nocapture noundef readonly %id) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.235)
  switch i8 %1, label %entry.if.end25_crit_edge [
    i8 3, label %land.lhs.true
    i8 2, label %land.lhs.true11
  ]

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true:                                    ; preds = %entry
  %phys_ext_id = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id, i32 0, i32 1
  %3 = ptrtoint ptr %phys_ext_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phys_ext_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp4 = icmp eq i8 %4, 4
  br i1 %cmp4, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true11:                                  ; preds = %entry
  %phys_ext_id13 = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id, i32 0, i32 1
  %5 = ptrtoint ptr %phys_ext_id13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %phys_ext_id13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp15 = icmp eq i8 %6, 4
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true11.if.end25_crit_edge

land.lhs.true11.if.end25_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true17:                                  ; preds = %land.lhs.true11
  %vendor_name = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id, i32 0, i32 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %vendor_name, ptr noundef nonnull dereferenceable(16) @.str.54, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true19, label %land.lhs.true17.if.end25_crit_edge

land.lhs.true17.if.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %vendor_pn = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id, i32 0, i32 11
  %bcmp31 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %vendor_pn, ptr noundef nonnull dereferenceable(16) @.str.55, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp31)
  %tobool23.not = icmp eq i32 %bcmp31, 0
  br i1 %tobool23.not, label %land.lhs.true19.return_crit_edge, label %land.lhs.true19.if.end25_crit_edge

land.lhs.true19.if.end25_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true19.return_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end25:                                         ; preds = %land.lhs.true19.if.end25_crit_edge, %land.lhs.true17.if.end25_crit_edge, %land.lhs.true11.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %entry.if.end25_crit_edge
  br label %return

return:                                           ; preds = %if.end25, %land.lhs.true19.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end25 ], [ true, %land.lhs.true.return_crit_edge ], [ true, %land.lhs.true19.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_i2c_read(ptr nocapture noundef readonly %sfp, i1 noundef zeroext %a2, i8 noundef zeroext %dev_addr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %dev_addr.addr = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_addr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %dev_addr, ptr %dev_addr.addr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #12
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %i2c_block_size = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 6
  %3 = ptrtoint ptr %i2c_block_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i2c_block_size, align 4
  %conv1 = select i1 %a2, i16 81, i16 80
  %5 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv1, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %len4, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %8 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev_addr.addr, ptr %buf6, align 4
  %arrayidx8 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv1, ptr %arrayidx8, align 4
  %flags11 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %flags11 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags11, align 2
  %len14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %buf16 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %buf16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %buf16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool17.not53 = icmp eq i32 %len, 0
  br i1 %tobool17.not53, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %i2c = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %while.body.lr.ph
  %len.addr.054 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end29.while.body_crit_edge ]
  %12 = call i32 @llvm.umin.i32(i32 %len.addr.054, i32 %4)
  %conv19 = trunc i32 %12 to i16
  %13 = ptrtoint ptr %len14 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv19, ptr %len14, align 4
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msgs, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp22 = icmp slt i32 %call, 0
  br i1 %cmp22, label %while.body.cleanup_crit_edge, label %if.end25

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp26.not = icmp eq i32 %call, 2
  br i1 %cmp26.not, label %if.end29, label %if.end25.while.end_crit_edge

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end29:                                         ; preds = %if.end25
  %16 = ptrtoint ptr %buf16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf16, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %12
  store ptr %add.ptr, ptr %buf16, align 4
  %18 = ptrtoint ptr %dev_addr.addr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dev_addr.addr, align 1
  %20 = trunc i32 %12 to i8
  %conv33 = add i8 %19, %20
  store i8 %conv33, ptr %dev_addr.addr, align 1
  %sub = sub i32 %len.addr.054, %12
  %tobool17.not = icmp eq i32 %sub, 0
  br i1 %tobool17.not, label %if.end29.while.end_crit_edge, label %if.end29.while.body_crit_edge

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end29.while.end_crit_edge, %if.end25.while.end_crit_edge, %entry.while.end_crit_edge
  %21 = ptrtoint ptr %buf16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf16, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %while.end ], [ %call, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_i2c_write(ptr nocapture noundef readonly %sfp, i1 noundef zeroext %a2, i8 noundef zeroext %dev_addr, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %msgs = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #12
  %0 = getelementptr inbounds i8, ptr %msgs, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %conv1 = select i1 %a2, i16 81, i16 80
  %2 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv1, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %add = add i32 %len, 1
  %conv3 = trunc i32 %add to i16
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %4 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv3, ptr %len5, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #19
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %5 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i, ptr %buf8, align 4
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %dev_addr, ptr %call9.i, align 128
  %arrayidx17 = getelementptr i8, ptr %call9.i, i32 1
  %7 = call ptr @memcpy(ptr %arrayidx17, ptr %buf, i32 %len)
  %i2c = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 1
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c, align 4
  %call18 = call i32 @i2c_transfer(ptr noundef %9, ptr noundef nonnull %msgs, i32 noundef 1) #12
  %10 = ptrtoint ptr %buf8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf8, align 4
  call void @kfree(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp24 = icmp eq i32 %call18, 1
  %spec.select = select i1 %cmp24, i32 %len, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end23 ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdio_i2c_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sfp_module_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sfp_module_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sfp_module_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sfp_module_tx_enable(ptr noundef %sfp) unnamed_addr #0 align 64 {
entry:
  %status.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sfp_module_tx_enable.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sfp_module_tx_enable, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !446

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %sfp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sfp, align 4
  %state = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = lshr i32 %3, 3
  %and.lobit = and i32 %and, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sfp_module_tx_enable.__UNIQUE_ID_ddebug380, ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %and.lobit, i32 noundef 0) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state4 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %4 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state4, align 4
  %and5 = and i32 %5, -9
  store i32 %and5, ptr %state4, align 4
  %set_state.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 9
  %6 = ptrtoint ptr %set_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_state.i, align 4
  tail call void %7(ptr noundef %sfp, i32 noundef %and5) #12
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.sfp_set_state.exit_crit_edge, label %land.lhs.true.i

do.end.sfp_set_state.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_set_state.exit

land.lhs.true.i:                                  ; preds = %do.end
  %state_soft_mask.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 16
  %8 = ptrtoint ptr %state_soft_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state_soft_mask.i, align 4
  %and1.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.sfp_set_state.exit_crit_edge, label %if.then.i

land.lhs.true.i.sfp_set_state.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_set_state.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i.i) #12
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %status.i.i, align 1, !annotation !445
  %read.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %11 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i.i.i, align 4
  %call.i.i.i = call i32 %12(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.sfp_soft_set_state.exit.i_crit_edge

if.then.i.sfp_soft_set_state.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_soft_set_state.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status.i.i, align 1
  %15 = and i8 %14, -65
  store i8 %15, ptr %status.i.i, align 1
  %write.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 11
  %16 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i.i.i, align 4
  %call.i9.i.i = call i32 %17(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i.i, i32 noundef 1) #12
  br label %sfp_soft_set_state.exit.i

sfp_soft_set_state.exit.i:                        ; preds = %if.then.i.i, %if.then.i.sfp_soft_set_state.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i.i) #12
  br label %sfp_set_state.exit

sfp_set_state.exit:                               ; preds = %sfp_soft_set_state.exit.i, %land.lhs.true.i.sfp_set_state.exit_crit_edge, %do.end.sfp_set_state.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sfp_module_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sfp_module_tx_fault_reset(ptr noundef %sfp) unnamed_addr #0 align 64 {
entry:
  %status.i.i6 = alloca i8, align 1
  %status.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 17
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %1, 8
  %set_state.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 9
  %2 = ptrtoint ptr %set_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_state.i, align 4
  tail call void %3(ptr noundef %sfp, i32 noundef %or) #12
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cleanup.critedge, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end
  %state_soft_mask.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 16
  %4 = ptrtoint ptr %state_soft_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state_soft_mask.i, align 4
  %and1.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.land.lhs.true.i13_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i13_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i13

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i.i) #12
  %6 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %status.i.i, align 1, !annotation !445
  %read.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %7 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i.i.i, align 4
  %call.i.i.i = call i32 %8(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.sfp_soft_set_state.exit.i_crit_edge

if.then.i.sfp_soft_set_state.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_soft_set_state.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status.i.i, align 1
  %storemerge.i.i = or i8 %10, 64
  store i8 %storemerge.i.i, ptr %status.i.i, align 1
  %write.i.i.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 11
  %11 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i.i.i, align 4
  %call.i9.i.i = call i32 %12(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i.i, i32 noundef 1) #12
  br label %sfp_soft_set_state.exit.i

sfp_soft_set_state.exit.i:                        ; preds = %if.then.i.i, %if.then.i.sfp_soft_set_state.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i.i) #12
  br label %land.lhs.true.i13

land.lhs.true.i13:                                ; preds = %sfp_soft_set_state.exit.i, %land.lhs.true.i.land.lhs.true.i13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 2147480) #12
  %14 = ptrtoint ptr %set_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_state.i, align 4
  call void %15(ptr noundef %sfp, i32 noundef %1) #12
  %state_soft_mask.i10 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 16
  %16 = ptrtoint ptr %state_soft_mask.i10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state_soft_mask.i10, align 4
  %and1.i11 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i11)
  %tobool2.not.i12 = icmp eq i32 %and1.i11, 0
  br i1 %tobool2.not.i12, label %land.lhs.true.i13.cleanup_crit_edge, label %if.then.i17

land.lhs.true.i13.cleanup_crit_edge:              ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i17:                                      ; preds = %land.lhs.true.i13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i.i6) #12
  %18 = ptrtoint ptr %status.i.i6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %status.i.i6, align 1, !annotation !445
  %read.i.i.i14 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %19 = ptrtoint ptr %read.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i.i.i14, align 4
  %call.i.i.i15 = call i32 %20(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i.i6, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i15)
  %cmp.i.i16 = icmp eq i32 %call.i.i.i15, 1
  br i1 %cmp.i.i16, label %if.then.i.i21, label %if.then.i17.sfp_soft_set_state.exit.i22_crit_edge

if.then.i17.sfp_soft_set_state.exit.i22_crit_edge: ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %sfp_soft_set_state.exit.i22

if.then.i.i21:                                    ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %status.i.i6 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %status.i.i6, align 1
  %23 = and i8 %22, -65
  %24 = trunc i32 %1 to i8
  %25 = shl i8 %24, 3
  %26 = and i8 %25, 64
  %storemerge.i.i18 = or i8 %23, %26
  store i8 %storemerge.i.i18, ptr %status.i.i6, align 1
  %write.i.i.i19 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 11
  %27 = ptrtoint ptr %write.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i.i.i19, align 4
  %call.i9.i.i20 = call i32 %28(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext 110, ptr noundef nonnull %status.i.i6, i32 noundef 1) #12
  br label %sfp_soft_set_state.exit.i22

sfp_soft_set_state.exit.i22:                      ; preds = %if.then.i.i21, %if.then.i17.sfp_soft_set_state.exit.i22_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i.i6) #12
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 2147480) #12
  %30 = ptrtoint ptr %set_state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_state.i, align 4
  call void %31(ptr noundef %sfp, i32 noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %sfp_soft_set_state.exit.i22, %land.lhs.true.i13.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sfp_link_down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sfp_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_phy_device(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sfp_add_phy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sfp_link_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfp_attach(ptr noundef %sfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sfp_sm_event(ptr noundef %sfp, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfp_detach(ptr noundef %sfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sfp_sm_event(ptr noundef %sfp, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfp_start(ptr noundef %sfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sfp_sm_event(ptr noundef %sfp, i32 noundef 5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfp_stop(ptr noundef %sfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sfp_sm_event(ptr noundef %sfp, i32 noundef 4)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sfp_module_info(ptr nocapture noundef readonly %sfp, ptr nocapture noundef writeonly %modinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sff8472_compliance = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 1, i32 7
  %0 = ptrtoint ptr %sff8472_compliance to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sff8472_compliance, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %diagmon = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 28, i32 1, i32 5
  %2 = ptrtoint ptr %diagmon to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %diagmon, align 4
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink11 = phi i32 [ 1, %if.else ], [ 2, %land.lhs.true.if.end_crit_edge ]
  %.sink = phi i32 [ 256, %if.else ], [ 512, %land.lhs.true.if.end_crit_edge ]
  %type5 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %5 = ptrtoint ptr %type5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink11, ptr %type5, align 4
  %eeprom_len6 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %6 = ptrtoint ptr %eeprom_len6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %eeprom_len6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_module_eeprom(ptr noundef %sfp, ptr nocapture noundef readonly %ee, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp4 = icmp ult i32 %3, 256
  br i1 %cmp4, label %if.then5, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %4 = tail call i32 @llvm.umin.i32(i32 %add, i32 256)
  %sub = sub nsw i32 %4, %3
  %conv = trunc i32 %3 to i8
  %read.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %5 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %6(ptr noundef %sfp, i1 noundef zeroext false, i8 noundef zeroext %conv, ptr noundef %data, i32 noundef %sub) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %data, i32 %sub
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end.if.end12_crit_edge
  %first.0 = phi i32 [ %4, %if.end10 ], [ %3, %if.end.if.end12_crit_edge ]
  %data.addr.0 = phi ptr [ %add.ptr, %if.end10 ], [ %data, %if.end.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %first.0)
  %cmp13 = icmp ult i32 %first.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp15 = icmp ugt i32 %add, 256
  %or.cond = select i1 %cmp13, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then17, label %if.end12.if.end33_crit_edge

if.end12.if.end33_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then17:                                        ; preds = %if.end12
  %7 = tail call i32 @llvm.umin.i32(i32 %add, i32 512)
  %sub25 = sub nsw i32 %7, %first.0
  %conv27 = trunc i32 %first.0 to i8
  %read.i66 = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %8 = ptrtoint ptr %read.i66 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i66, align 4
  %call.i67 = tail call i32 %9(ptr noundef %sfp, i1 noundef zeroext true, i8 noundef zeroext %conv27, ptr noundef %data.addr.0, i32 noundef %sub25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp29 = icmp slt i32 %call.i67, 0
  br i1 %cmp29, label %if.then17.cleanup_crit_edge, label %if.then17.if.end33_crit_edge

if.then17.if.end33_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %if.then17.if.end33_crit_edge, %if.end12.if.end33_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then17.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.then5.cleanup_crit_edge ], [ %call.i67, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_module_eeprom_by_page(ptr noundef %sfp, ptr nocapture noundef readonly %page, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bank = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page, i32 0, i32 3
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bank, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sfp_module_eeprom_by_page.__msg) #12
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.return_crit_edge, label %if.then2

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sfp_module_eeprom_by_page.__msg, ptr %extack, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %page4 = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page, i32 0, i32 2
  %3 = ptrtoint ptr %page4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %page4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %if.end14, label %do.body7

do.body7:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sfp_module_eeprom_by_page.__msg.197) #12
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body7.return_crit_edge, label %if.then10

do.body7.return_crit_edge:                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sfp_module_eeprom_by_page.__msg.197, ptr %extack, align 4
  br label %return

if.end14:                                         ; preds = %if.end3
  %i2c_address = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page, i32 0, i32 4
  %6 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_address, align 2
  %8 = and i8 %7, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %8)
  %switch = icmp eq i8 %8, 80
  br i1 %switch, label %if.end28, label %do.body21

do.body21:                                        ; preds = %if.end14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sfp_module_eeprom_by_page.__msg.198) #12
  %tobool23.not = icmp eq ptr %extack, null
  br i1 %tobool23.not, label %do.body21.return_crit_edge, label %if.then24

do.body21.return_crit_edge:                       ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then24:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sfp_module_eeprom_by_page.__msg.198, ptr %extack, align 4
  br label %return

if.end28:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %7)
  %cmp31 = icmp eq i8 %7, 81
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page, align 4
  %conv33 = trunc i32 %11 to i8
  %data = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page, i32 0, i32 5
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %length = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page, i32 0, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %read.i = getelementptr inbounds %struct.sfp, ptr %sfp, i32 0, i32 10
  %16 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %17(ptr noundef %sfp, i1 noundef zeroext %cmp31, i8 noundef zeroext %conv33, ptr noundef %13, i32 noundef %15) #12
  br label %return

return:                                           ; preds = %if.end28, %if.then24, %do.body21.return_crit_edge, %if.then10, %do.body7.return_crit_edge, %if.then2, %do.body.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end28 ], [ -95, %if.then2 ], [ -95, %do.body.return_crit_edge ], [ -95, %if.then10 ], [ -95, %do.body7.return_crit_edge ], [ -95, %if.then24 ], [ -95, %do.body21.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_debug_state_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sfp_debug_state_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfp_debug_state_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sm_mod_state = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %sm_mod_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sm_mod_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp.i = icmp ugt i8 %3, 6
  br i1 %cmp.i, label %entry.mod_state_to_str.exit_crit_edge, label %if.end.i

entry.mod_state_to_str.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mod_state_to_str.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [7 x ptr], ptr @mod_state_strings, i32 0, i32 %conv.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  br label %mod_state_to_str.exit

mod_state_to_str.exit:                            ; preds = %if.end.i, %entry.mod_state_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ @.str.69, %entry.mod_state_to_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.200, ptr noundef %retval.0.i) #12
  %sm_mod_tries_init = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %sm_mod_tries_init to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sm_mod_tries_init, align 1
  %conv1 = zext i8 %7 to i32
  %sub = sub nsw i32 10, %conv1
  %sm_mod_tries = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %sm_mod_tries to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sm_mod_tries, align 2
  %conv2 = zext i8 %9 to i32
  %sub3 = sub nsw i32 12, %conv2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.201, i32 noundef %sub, i32 noundef %sub3) #12
  %sm_dev_state = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 24
  %10 = ptrtoint ptr %sm_dev_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sm_dev_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp.i51 = icmp ugt i8 %11, 2
  br i1 %cmp.i51, label %mod_state_to_str.exit.dev_state_to_str.exit_crit_edge, label %if.end.i54

mod_state_to_str.exit.dev_state_to_str.exit_crit_edge: ; preds = %mod_state_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_state_to_str.exit

if.end.i54:                                       ; preds = %mod_state_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i52 = zext i8 %11 to i32
  %arrayidx.i53 = getelementptr [3 x ptr], ptr @dev_state_strings, i32 0, i32 %conv.i52
  %12 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i53, align 4
  br label %dev_state_to_str.exit

dev_state_to_str.exit:                            ; preds = %if.end.i54, %mod_state_to_str.exit.dev_state_to_str.exit_crit_edge
  %retval.0.i55 = phi ptr [ %13, %if.end.i54 ], [ @.str.77, %mod_state_to_str.exit.dev_state_to_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.202, ptr noundef %retval.0.i55) #12
  %sm_state = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %sm_state to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %15)
  %cmp.i56 = icmp ugt i16 %15, 10
  br i1 %cmp.i56, label %dev_state_to_str.exit.sm_state_to_str.exit_crit_edge, label %if.end.i59

dev_state_to_str.exit.sm_state_to_str.exit_crit_edge: ; preds = %dev_state_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sm_state_to_str.exit

if.end.i59:                                       ; preds = %dev_state_to_str.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i57 = zext i16 %15 to i32
  %arrayidx.i58 = getelementptr [11 x ptr], ptr @sm_state_strings, i32 0, i32 %conv.i57
  %16 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i58, align 4
  br label %sm_state_to_str.exit

sm_state_to_str.exit:                             ; preds = %if.end.i59, %dev_state_to_str.exit.sm_state_to_str.exit_crit_edge
  %retval.0.i60 = phi ptr [ %17, %if.end.i59 ], [ @.str.81, %dev_state_to_str.exit.sm_state_to_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.203, ptr noundef %retval.0.i60) #12
  %sm_fault_retries = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 26
  %18 = ptrtoint ptr %sm_fault_retries to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sm_fault_retries, align 2
  %conv7 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.204, i32 noundef %conv7) #12
  %sm_phy_retries = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 27
  %20 = ptrtoint ptr %sm_phy_retries to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sm_phy_retries, align 1
  %conv8 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.205, i32 noundef %conv8) #12
  %state = getelementptr inbounds %struct.sfp, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  %and = and i32 %23, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.206, i32 noundef %and) #12
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  %and11 = lshr i32 %25, 1
  %and11.lobit = and i32 %and11, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.207, i32 noundef %and11.lobit) #12
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  %and18 = lshr i32 %27, 2
  %and18.lobit = and i32 %and18, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.208, i32 noundef %and18.lobit) #12
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state, align 4
  %and25 = lshr i32 %29, 3
  %and25.lobit = and i32 %and25, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.209, i32 noundef %and25.lobit) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sfp_unregister_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sff_module_supported(ptr nocapture noundef readonly %id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %phys_ext_id = getelementptr inbounds %struct.sfp_eeprom_base, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %phys_ext_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phys_ext_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp4 = icmp eq i8 %3, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp4, %land.rhs ]
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 219)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !30, !31, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !248, !249, !250, !252, !253, !255, !256, !257, !258, !260, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !293, !294, !296, !298, !300, !301, !302, !304, !305, !306, !308, !310, !311, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !338, !340, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !369, !371, !372, !373, !375, !376, !378, !379, !380, !381, !383, !384, !385, !387, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432}
!llvm.module.flags = !{!434, !435, !436, !437, !438, !439, !440, !441}
!llvm.ident = !{!442}

!0 = !{ptr @__initcall__kmod_sfp__390_2686_sfp_init6, !1, !"__initcall__kmod_sfp__390_2686_sfp_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/sfp.c", i32 2686, i32 1}
!2 = !{ptr @__exitcall_sfp_exit, !3, !"__exitcall_sfp_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/sfp.c", i32 2692, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias391, !5, !"__UNIQUE_ID_alias391", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/sfp.c", i32 2694, i32 1}
!6 = !{ptr @__UNIQUE_ID_author392, !7, !"__UNIQUE_ID_author392", i1 false, i1 false}
!7 = !{!"../drivers/net/phy/sfp.c", i32 2695, i32 1}
!8 = !{ptr @__UNIQUE_ID_file393, !9, !"__UNIQUE_ID_file393", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/sfp.c", i32 2696, i32 1}
!10 = !{ptr @__UNIQUE_ID_license394, !9, !"__UNIQUE_ID_license394", i1 false, i1 false}
!11 = distinct !{null, !12, !"poll_jiffies", i1 false, i1 false}
!12 = !{!"../drivers/net/phy/sfp.c", i32 310, i32 22}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/phy/sfp.c", i32 2675, i32 11}
!15 = !{ptr @sfp_driver, !16, !"sfp_driver", i1 false, i1 false}
!16 = !{!"../drivers/net/phy/sfp.c", i32 2670, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/phy/sfp.c", i32 2509, i32 7}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/phy/sfp.c", i32 2514, i32 31}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/phy/sfp.c", i32 2516, i32 4}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sfp_probe._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @sfp_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @sfp_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/net/phy/sfp.c", i32 2531, i32 4}
!30 = !{ptr @sfp_probe._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/phy/sfp.c", i32 2565, i32 39}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/phy/sfp.c", i32 2570, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sfp_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @sfp_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/phy/sfp.c", i32 2601, i32 12}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/phy/sfp.c", i32 2628, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sfp_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @sfp_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @sfp_alloc.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/phy/sfp.c", i32 2456, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sfp_alloc.__key.20, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/net/phy/sfp.c", i32 2457, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sfp_alloc.__key.22, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/phy/sfp.c", i32 2458, i32 2}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sfp_alloc.__key.24, !52, !"__key", i1 false, i1 false}
!55 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sfp_alloc.__key.26, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/net/phy/sfp.c", i32 2459, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sfp_alloc.__key.28, !57, !"__key", i1 false, i1 false}
!60 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/phy/sfp.c", i32 2404, i32 4}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sfp_check_state.__UNIQUE_ID_ddebug389, !62, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!65 = !{ptr @sfp_hwmon_init.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/net/phy/sfp.c", i32 1370, i32 2}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sfp_hwmon_init.__key.33, !66, !"__key", i1 false, i1 false}
!69 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/phy/sfp.c", i32 1301, i32 3}
!72 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sfp_hwmon_probe._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @sfp_hwmon_probe._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/phy/sfp.c", i32 1303, i32 3}
!77 = !{ptr @sfp_hwmon_probe._entry.37, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sfp_hwmon_probe._entry_ptr.39, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/phy/sfp.c", i32 1314, i32 4}
!81 = !{ptr @sfp_hwmon_probe._entry.40, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @sfp_hwmon_probe._entry_ptr.42, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/phy/sfp.c", i32 1321, i32 3}
!85 = !{ptr @sfp_hwmon_probe._entry.43, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @sfp_hwmon_probe._entry_ptr.45, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/phy/sfp.c", i32 1334, i32 3}
!89 = !{ptr @sfp_hwmon_probe._entry.46, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @sfp_hwmon_probe._entry_ptr.48, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @sfp_hwmon_chip_info, !92, !"sfp_hwmon_chip_info", i1 false, i1 false}
!92 = !{!"../drivers/net/phy/sfp.c", i32 1284, i32 37}
!93 = !{ptr @sfp_hwmon_ops, !94, !"sfp_hwmon_ops", i1 false, i1 false}
!94 = !{!"../drivers/net/phy/sfp.c", i32 1191, i32 31}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/phy/sfp.c", i32 1151, i32 11}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/phy/sfp.c", i32 1160, i32 11}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/phy/sfp.c", i32 1169, i32 11}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/phy/sfp.c", i32 1139, i32 2}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/phy/sfp.c", i32 1140, i32 2}
!105 = !{ptr @sfp_hwmon_power_labels, !106, !"sfp_hwmon_power_labels", i1 false, i1 false}
!106 = !{!"../drivers/net/phy/sfp.c", i32 1138, i32 26}
!107 = !{ptr @sfp_hwmon_info, !108, !"sfp_hwmon_info", i1 false, i1 false}
!108 = !{!"../drivers/net/phy/sfp.c", i32 1275, i32 41}
!109 = !{ptr @sfp_hwmon_chip, !110, !"sfp_hwmon_chip", i1 false, i1 false}
!110 = !{!"../drivers/net/phy/sfp.c", i32 1202, i32 40}
!111 = !{ptr @sfp_hwmon_chip_config, !112, !"sfp_hwmon_chip_config", i1 false, i1 false}
!112 = !{!"../drivers/net/phy/sfp.c", i32 1197, i32 12}
!113 = !{ptr @sfp_hwmon_vcc_channel_info, !114, !"sfp_hwmon_vcc_channel_info", i1 false, i1 false}
!114 = !{!"../drivers/net/phy/sfp.c", i32 1232, i32 40}
!115 = !{ptr @sfp_hwmon_vcc_config, !116, !"sfp_hwmon_vcc_config", i1 false, i1 false}
!116 = !{!"../drivers/net/phy/sfp.c", i32 1222, i32 12}
!117 = !{ptr @sfp_hwmon_temp_channel_info, !118, !"sfp_hwmon_temp_channel_info", i1 false, i1 false}
!118 = !{!"../drivers/net/phy/sfp.c", i32 1217, i32 40}
!119 = !{ptr @sfp_hwmon_temp_config, !120, !"sfp_hwmon_temp_config", i1 false, i1 false}
!120 = !{!"../drivers/net/phy/sfp.c", i32 1207, i32 12}
!121 = !{ptr @sfp_hwmon_bias_channel_info, !122, !"sfp_hwmon_bias_channel_info", i1 false, i1 false}
!122 = !{!"../drivers/net/phy/sfp.c", i32 1247, i32 40}
!123 = !{ptr @sfp_hwmon_bias_config, !124, !"sfp_hwmon_bias_config", i1 false, i1 false}
!124 = !{!"../drivers/net/phy/sfp.c", i32 1237, i32 12}
!125 = !{ptr @sfp_hwmon_power_channel_info, !126, !"sfp_hwmon_power_channel_info", i1 false, i1 false}
!126 = !{!"../drivers/net/phy/sfp.c", i32 1270, i32 40}
!127 = !{ptr @sfp_hwmon_power_config, !128, !"sfp_hwmon_power_config", i1 false, i1 false}
!128 = !{!"../drivers/net/phy/sfp.c", i32 1252, i32 12}
!129 = !{ptr @sfp_data, !130, !"sfp_data", i1 false, i1 false}
!130 = !{!"../drivers/net/phy/sfp.c", i32 297, i32 30}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/phy/sfp.c", i32 290, i32 36}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/phy/sfp.c", i32 291, i32 34}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/phy/sfp.c", i32 435, i32 18}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/phy/sfp.c", i32 148, i32 2}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/phy/sfp.c", i32 149, i32 2}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/phy/sfp.c", i32 150, i32 2}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/phy/sfp.c", i32 151, i32 2}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/phy/sfp.c", i32 152, i32 2}
!147 = !{ptr @gpio_of_names, !148, !"gpio_of_names", i1 false, i1 false}
!148 = !{!"../drivers/net/phy/sfp.c", i32 147, i32 20}
!149 = distinct !{null, !150, !"gpio_flags", i1 false, i1 false}
!150 = !{!"../drivers/net/phy/sfp.c", i32 155, i32 31}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/phy/sfp.c", i32 473, i32 3}
!153 = !{ptr @sfp_soft_get_state._rs, !152, !"_rs", i1 false, i1 false}
!154 = !{ptr @__func__.sfp_soft_get_state, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @sfp_soft_get_state._entry, !152, !"_entry", i1 false, i1 false}
!157 = !{ptr @sfp_soft_get_state._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/phy/sfp.c", i32 1402, i32 2}
!160 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @sfp_module_tx_disable.__UNIQUE_ID_ddebug379, !159, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!162 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/phy/sfp.c", i32 2263, i32 2}
!164 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @sfp_sm_event.__UNIQUE_ID_ddebug383, !163, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!166 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/phy/sfp.c", i32 2273, i32 2}
!168 = !{ptr @sfp_sm_event.__UNIQUE_ID_ddebug384, !167, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/phy/sfp.c", i32 88, i32 10}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/phy/sfp.c", i32 76, i32 20}
!173 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/phy/sfp.c", i32 77, i32 20}
!175 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/phy/sfp.c", i32 78, i32 20}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/phy/sfp.c", i32 79, i32 22}
!179 = !{ptr @.str.74, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/phy/sfp.c", i32 80, i32 21}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/phy/sfp.c", i32 81, i32 22}
!183 = !{ptr @.str.76, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/phy/sfp.c", i32 82, i32 22}
!185 = !{ptr @mod_state_strings, !186, !"mod_state_strings", i1 false, i1 false}
!186 = !{!"../drivers/net/phy/sfp.c", i32 75, i32 28}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/phy/sfp.c", i32 101, i32 10}
!189 = !{ptr @.str.78, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/phy/sfp.c", i32 93, i32 23}
!191 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/phy/sfp.c", i32 94, i32 19}
!193 = !{ptr @.str.80, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/phy/sfp.c", i32 95, i32 17}
!195 = !{ptr @dev_state_strings, !196, !"dev_state_strings", i1 false, i1 false}
!196 = !{!"../drivers/net/phy/sfp.c", i32 92, i32 27}
!197 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/phy/sfp.c", i32 143, i32 10}
!199 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/phy/sfp.c", i32 128, i32 17}
!201 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/phy/sfp.c", i32 129, i32 17}
!203 = !{ptr @.str.84, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/phy/sfp.c", i32 130, i32 17}
!205 = !{ptr @.str.85, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/phy/sfp.c", i32 131, i32 21}
!207 = !{ptr @.str.86, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/phy/sfp.c", i32 132, i32 26}
!209 = !{ptr @.str.87, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/phy/sfp.c", i32 133, i32 21}
!211 = !{ptr @.str.88, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/phy/sfp.c", i32 134, i32 20}
!213 = !{ptr @.str.89, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/phy/sfp.c", i32 135, i32 21}
!215 = !{ptr @.str.90, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/phy/sfp.c", i32 136, i32 19}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/phy/sfp.c", i32 137, i32 23}
!219 = !{ptr @sm_state_strings, !220, !"sm_state_strings", i1 false, i1 false}
!220 = !{!"../drivers/net/phy/sfp.c", i32 126, i32 27}
!221 = distinct !{null, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/phy/sfp.c", i32 122, i32 10}
!223 = !{ptr @.str.93, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/phy/sfp.c", i32 106, i32 19}
!225 = !{ptr @.str.94, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/phy/sfp.c", i32 107, i32 19}
!227 = !{ptr @.str.95, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/phy/sfp.c", i32 108, i32 23}
!229 = !{ptr @.str.96, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/phy/sfp.c", i32 109, i32 23}
!231 = !{ptr @.str.97, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/phy/sfp.c", i32 110, i32 21}
!233 = !{ptr @.str.98, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/phy/sfp.c", i32 111, i32 19}
!235 = !{ptr @.str.99, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/phy/sfp.c", i32 113, i32 21}
!237 = !{ptr @.str.100, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/phy/sfp.c", i32 114, i32 21}
!239 = !{ptr @.str.101, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/phy/sfp.c", i32 115, i32 20}
!241 = !{ptr @.str.102, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/phy/sfp.c", i32 116, i32 20}
!243 = !{ptr @event_strings, !244, !"event_strings", i1 false, i1 false}
!244 = !{!"../drivers/net/phy/sfp.c", i32 105, i32 27}
!245 = !{ptr @.str.103, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/phy/sfp.c", i32 2036, i32 6}
!247 = !{ptr @.str.104, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @sfp_sm_module._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @sfp_sm_module._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @sfp_sm_module._entry.105, !251, !"_entry", i1 false, i1 false}
!251 = !{!"../drivers/net/phy/sfp.c", i32 2049, i32 4}
!252 = !{ptr @sfp_sm_module._entry_ptr.106, !251, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.107, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/phy/sfp.c", i32 1961, i32 2}
!255 = !{ptr @.str.108, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @sfp_sm_mod_remove._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @sfp_sm_mod_remove._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.109, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/phy/sfp.c", i32 1711, i32 3}
!260 = !{ptr @.str.110, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @sfp_sm_mod_hpower._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @sfp_sm_mod_hpower._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.112, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/phy/sfp.c", i32 1729, i32 3}
!265 = !{ptr @sfp_sm_mod_hpower._entry.111, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @sfp_sm_mod_hpower._entry_ptr.113, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.115, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/phy/sfp.c", i32 1734, i32 3}
!269 = !{ptr @sfp_sm_mod_hpower._entry.114, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @sfp_sm_mod_hpower._entry_ptr.116, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.117, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/phy/sfp.c", i32 1817, i32 4}
!273 = !{ptr @.str.118, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @sfp_sm_mod_probe._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @sfp_sm_mod_probe._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.120, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/phy/sfp.c", i32 1822, i32 3}
!278 = !{ptr @sfp_sm_mod_probe._entry.119, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @sfp_sm_mod_probe._entry_ptr.121, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.123, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/phy/sfp.c", i32 1833, i32 3}
!282 = !{ptr @sfp_sm_mod_probe._entry.122, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @sfp_sm_mod_probe._entry_ptr.124, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.126, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/phy/sfp.c", i32 1835, i32 3}
!286 = !{ptr @sfp_sm_mod_probe._entry.125, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @sfp_sm_mod_probe._entry_ptr.127, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @sfp_sm_mod_probe._entry.128, !289, !"_entry", i1 false, i1 false}
!289 = !{!"../drivers/net/phy/sfp.c", i32 1842, i32 5}
!290 = !{ptr @sfp_sm_mod_probe._entry_ptr.129, !289, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @sfp_sm_mod_probe._entry.130, !292, !"_entry", i1 false, i1 false}
!292 = !{!"../drivers/net/phy/sfp.c", i32 1848, i32 4}
!293 = !{ptr @sfp_sm_mod_probe._entry_ptr.131, !292, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.132, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/phy/sfp.c", i32 1857, i32 43}
!296 = !{ptr @.str.133, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/phy/sfp.c", i32 1858, i32 46}
!298 = !{ptr @.str.135, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/phy/sfp.c", i32 1874, i32 4}
!300 = !{ptr @sfp_sm_mod_probe._entry.134, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @sfp_sm_mod_probe._entry_ptr.136, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.138, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/phy/sfp.c", i32 1878, i32 4}
!304 = !{ptr @sfp_sm_mod_probe._entry.137, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @sfp_sm_mod_probe._entry_ptr.139, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.140, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/phy/sfp.c", i32 1881, i32 29}
!308 = !{ptr @sfp_sm_mod_probe._entry.141, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../drivers/net/phy/sfp.c", i32 1890, i32 4}
!310 = !{ptr @sfp_sm_mod_probe._entry_ptr.142, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @sfp_sm_mod_probe._entry.143, !312, !"_entry", i1 false, i1 false}
!312 = !{!"../drivers/net/phy/sfp.c", i32 1895, i32 3}
!313 = !{ptr @sfp_sm_mod_probe._entry_ptr.144, !312, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.146, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/phy/sfp.c", i32 1902, i32 4}
!316 = !{ptr @sfp_sm_mod_probe._entry.145, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @sfp_sm_mod_probe._entry_ptr.147, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.149, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/phy/sfp.c", i32 1906, i32 4}
!320 = !{ptr @sfp_sm_mod_probe._entry.148, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @sfp_sm_mod_probe._entry_ptr.150, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.152, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/phy/sfp.c", i32 1917, i32 2}
!324 = !{ptr @sfp_sm_mod_probe._entry.151, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @sfp_sm_mod_probe._entry_ptr.153, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.155, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/phy/sfp.c", i32 1926, i32 3}
!328 = !{ptr @sfp_sm_mod_probe._entry.154, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @sfp_sm_mod_probe._entry_ptr.156, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.158, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/phy/sfp.c", i32 1934, i32 3}
!332 = !{ptr @sfp_sm_mod_probe._entry.157, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @sfp_sm_mod_probe._entry_ptr.159, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.160, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/phy/sfp.c", i32 1942, i32 35}
!336 = !{ptr @.str.161, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/phy/sfp.c", i32 1943, i32 33}
!338 = !{ptr @.str.162, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/phy/sfp.c", i32 1775, i32 3}
!340 = !{ptr @.str.163, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @sfp_cotsworks_fixup_check._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @sfp_cotsworks_fixup_check._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.165, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/phy/sfp.c", i32 1781, i32 4}
!345 = !{ptr @sfp_cotsworks_fixup_check._entry.164, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @sfp_cotsworks_fixup_check._entry_ptr.166, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.168, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/phy/sfp.c", i32 1792, i32 4}
!349 = !{ptr @sfp_cotsworks_fixup_check._entry.167, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @sfp_cotsworks_fixup_check._entry_ptr.169, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.170, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/phy/sfp.c", i32 1662, i32 4}
!353 = !{ptr @.str.171, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @sfp_module_parse_power._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @sfp_module_parse_power._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.173, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/phy/sfp.c", i32 1667, i32 4}
!358 = !{ptr @sfp_module_parse_power._entry.172, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @sfp_module_parse_power._entry_ptr.174, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.176, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/phy/sfp.c", i32 1693, i32 3}
!362 = !{ptr @sfp_module_parse_power._entry.175, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @sfp_module_parse_power._entry_ptr.177, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.178, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/phy/sfp.c", i32 2198, i32 5}
!366 = !{ptr @.str.179, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @sfp_sm_main._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @sfp_sm_main._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.181, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/phy/sfp.c", i32 2249, i32 4}
!371 = !{ptr @sfp_sm_main._entry.180, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @sfp_sm_main._entry_ptr.182, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.183, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/phy/sfp.c", i32 1410, i32 2}
!375 = !{ptr @sfp_module_tx_enable.__UNIQUE_ID_ddebug380, !374, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!376 = !{ptr @.str.184, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/phy/sfp.c", i32 1599, i32 3}
!378 = !{ptr @.str.185, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @sfp_sm_fault._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @sfp_sm_fault._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.187, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/phy/sfp.c", i32 1604, i32 4}
!383 = !{ptr @sfp_sm_fault._entry.186, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @sfp_sm_fault._entry_ptr.188, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.189, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/phy/sfp.c", i32 1519, i32 3}
!387 = !{ptr @.str.190, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @sfp_sm_probe_phy._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @sfp_sm_probe_phy._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.192, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/phy/sfp.c", i32 1526, i32 3}
!392 = !{ptr @sfp_sm_probe_phy._entry.191, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @sfp_sm_probe_phy._entry_ptr.193, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.195, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/phy/sfp.c", i32 1534, i32 3}
!396 = !{ptr @sfp_sm_probe_phy._entry.194, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @sfp_sm_probe_phy._entry_ptr.196, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @sfp_module_ops, !399, !"sfp_module_ops", i1 false, i1 false}
!399 = !{!"../drivers/net/phy/sfp.c", i32 2374, i32 36}
!400 = !{ptr @sfp_module_eeprom_by_page.__msg, !401, !"__msg", i1 false, i1 false}
!401 = !{!"../drivers/net/phy/sfp.c", i32 2355, i32 3}
!402 = !{ptr @sfp_module_eeprom_by_page.__msg.197, !403, !"__msg", i1 false, i1 false}
!403 = !{!"../drivers/net/phy/sfp.c", i32 2360, i32 3}
!404 = !{ptr @sfp_module_eeprom_by_page.__msg.198, !405, !"__msg", i1 false, i1 false}
!405 = !{!"../drivers/net/phy/sfp.c", i32 2366, i32 3}
!406 = !{ptr @.str.199, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/phy/sfp.c", i32 1446, i32 22}
!408 = !{ptr @sfp_debug_state_fops, !409, !"sfp_debug_state_fops", i1 false, i1 false}
!409 = !{!"../drivers/net/phy/sfp.c", i32 1440, i32 1}
!410 = !{ptr @.str.200, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/phy/sfp.c", i32 1421, i32 16}
!412 = !{ptr @.str.201, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/phy/sfp.c", i32 1423, i32 16}
!414 = !{ptr @.str.202, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/phy/sfp.c", i32 1426, i32 16}
!416 = !{ptr @.str.203, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/phy/sfp.c", i32 1428, i32 16}
!418 = !{ptr @.str.204, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/phy/sfp.c", i32 1430, i32 16}
!420 = !{ptr @.str.205, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/phy/sfp.c", i32 1432, i32 16}
!422 = !{ptr @.str.206, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/phy/sfp.c", i32 1434, i32 16}
!424 = !{ptr @.str.207, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/phy/sfp.c", i32 1435, i32 16}
!426 = !{ptr @.str.208, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/phy/sfp.c", i32 1436, i32 16}
!428 = !{ptr @.str.209, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/phy/sfp.c", i32 1437, i32 16}
!430 = !{ptr @sfp_of_match, !431, !"sfp_of_match", i1 false, i1 false}
!431 = !{!"../drivers/net/phy/sfp.c", i32 303, i32 34}
!432 = !{ptr @sff_data, !433, !"sff_data", i1 false, i1 false}
!433 = !{!"../drivers/net/phy/sfp.c", i32 273, i32 30}
!434 = !{i32 1, !"wchar_size", i32 2}
!435 = !{i32 1, !"min_enum_size", i32 4}
!436 = !{i32 8, !"branch-target-enforcement", i32 0}
!437 = !{i32 8, !"sign-return-address", i32 0}
!438 = !{i32 8, !"sign-return-address-all", i32 0}
!439 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!440 = !{i32 7, !"uwtable", i32 1}
!441 = !{i32 7, !"frame-pointer", i32 2}
!442 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!443 = !{!"branch_weights", i32 1, i32 2000}
!444 = !{i8 0, i8 2}
!445 = !{!"auto-init"}
!446 = !{i64 2149011300, i64 2149011305, i64 2149011318, i64 2149011362, i64 2149011396, i64 2149011417}
