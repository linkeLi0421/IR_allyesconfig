; ModuleID = '/llk/IR_all_yes/drivers/power/supply/cros_peripheral_charger.c_pt.bc'
source_filename = "../drivers/power/supply/cros_peripheral_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.charger_data = type { ptr, ptr, ptr, i32, [8 x ptr], %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.port_data = type { i32, [12 x i8], ptr, %struct.power_supply_desc, i32, i32, i32, ptr, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }

@__initcall__kmod_cros_peripheral_charger__186_382_cros_pchg_driver_init6 = internal global ptr @cros_pchg_driver_init, section ".initcall6.init", align 4
@cros_pchg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_pchg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_pchg_driver_exit = internal global ptr @cros_pchg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file187 = internal constant [74 x i8] c"cros_peripheral_charger.file=drivers/power/supply/cros_peripheral_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [36 x i8] c"cros_peripheral_charger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [74 x i8] c"cros_peripheral_charger.description=ChromeOS EC peripheral device charger\00", section ".modinfo", align 1
@__UNIQUE_ID_alias190 = internal constant [52 x i8] c"cros_peripheral_charger.alias=platform:cros-ec-pchg\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cros-ec-pchg\00", [19 x i8] zeroinitializer }, align 32
@cros_pchg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No peripheral charge ports (err:%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cros_pchg_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/power/supply/cros_peripheral_charger.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_pchg_probe._entry_ptr = internal global ptr @cros_pchg_probe._entry, section ".printk_index", align 4
@cros_pchg_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 320, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"EC_CMD_PCHG version %d isn't available.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cros_pchg_probe._entry_ptr.9 = internal global ptr @cros_pchg_probe._entry.6, section ".printk_index", align 4
@cros_pchg_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 327, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Too many peripheral charge ports (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@cros_pchg_probe._entry_ptr.12 = internal global ptr @cros_pchg_probe._entry.10, section ".printk_index", align 4
@cros_pchg_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d peripheral charge ports found\0A\00", [62 x i8] zeroinitializer }, align 32
@cros_pchg_probe._entry_ptr.15 = internal global ptr @cros_pchg_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peripheral%d\00", [19 x i8] zeroinitializer }, align 32
@cros_pchg_props = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 47, i32 66], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@cros_pchg_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 370, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register notifier (err:%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@cros_pchg_probe._entry_ptr.20 = internal global ptr @cros_pchg_probe._entry.18, section ".printk_index", align 4
@cros_pchg_port_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 115, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to get number or ports (err:%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros_pchg_port_count\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cros_pchg_port_count._entry_ptr = internal global ptr @cros_pchg_port_count._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cros_pchg_cmd_ver_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 99, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to get versions of EC_CMD_PCHG (err:%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cros_pchg_cmd_ver_check\00", [40 x i8] zeroinitializer }, align 32
@cros_pchg_cmd_ver_check._entry_ptr = internal global ptr @cros_pchg_cmd_ver_check._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cros_pchg_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 137, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to get port.%d status (err:%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros_pchg_get_status\00", [43 x i8] zeroinitializer }, align 32
@cros_pchg_get_status._entry_ptr = internal global ptr @cros_pchg_get_status._entry, section ".printk_index", align 4
@cros_pchg_get_status.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cros_peripheral_charger\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Port %d: state=%d battery=%d%%\0A\00", [32 x i8] zeroinitializer }, align 32
@cros_get_device_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 251, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to get device events (err:%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cros_get_device_event\00", [42 x i8] zeroinitializer }, align 32
@cros_get_device_event._entry_ptr = internal global ptr @cros_get_device_event._entry, section ".printk_index", align 4
@switch.table.cros_pchg_get_status = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 1, i32 4], [20 x i8] zeroinitializer }, align 32
@switch.table.cros_pchg_get_status.32 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 1], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 47, i64 66]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 47]
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"cros_pchg_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 375, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 377, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 314, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 319, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 326, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 331, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 342, i32 44 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"cros_pchg_props\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 46, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 356, i32 6 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 370, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 114, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 97, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 136, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 169, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [50 x i8] c"../drivers/power/supply/cros_peripheral_charger.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 251, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [34 x i8] c"switch.table.cros_pchg_get_status\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [37 x i8] c"switch.table.cros_pchg_get_status.32\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias190, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_cros_pchg_driver_exit, ptr @__initcall__kmod_cros_peripheral_charger__186_382_cros_pchg_driver_init6, ptr @cros_get_device_event._entry, ptr @cros_get_device_event._entry_ptr, ptr @cros_pchg_cmd_ver_check._entry, ptr @cros_pchg_cmd_ver_check._entry_ptr, ptr @cros_pchg_driver_exit, ptr @cros_pchg_get_status._entry, ptr @cros_pchg_get_status._entry_ptr, ptr @cros_pchg_port_count._entry, ptr @cros_pchg_port_count._entry_ptr, ptr @cros_pchg_probe._entry, ptr @cros_pchg_probe._entry.10, ptr @cros_pchg_probe._entry.13, ptr @cros_pchg_probe._entry.18, ptr @cros_pchg_probe._entry.6, ptr @cros_pchg_probe._entry_ptr, ptr @cros_pchg_probe._entry_ptr.12, ptr @cros_pchg_probe._entry_ptr.15, ptr @cros_pchg_probe._entry_ptr.20, ptr @cros_pchg_probe._entry_ptr.9, ptr @cros_pchg_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @cros_pchg_props, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @switch.table.cros_pchg_get_status, ptr @switch.table.cros_pchg_get_status.32], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_pchg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_pchg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_pchg_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_pchg_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_pchg_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_pchg_props to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_pchg_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_pchg_port_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_pchg_cmd_ver_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_pchg_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_get_device_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cros_pchg_get_status to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cros_pchg_get_status.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_pchg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_pchg_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_pchg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_pchg_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_pchg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ec_dev2 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ec_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ec_dev2, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup56_crit_edge, label %if.end

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %call.i, align 4
  %ec_dev5 = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ec_dev5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %ec_dev5, align 4
  %ec_device6 = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %ec_device6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %ec_device6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 21) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cros_pchg_port_count.exit.thread_crit_edge, label %if.end.i.i

if.end.cros_pchg_port_count.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_pchg_port_count.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %10 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %call7.i.i.i.i, align 8
  %cmd_offset.i.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cmd_offset.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add3.i.i = add nuw nsw i32 %conv.i.i, 308
  %command4.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %command4.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add3.i.i, ptr %command4.i.i, align 4
  %outsize5.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %outsize5.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %outsize5.i.i, align 8
  %insize6.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %insize6.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %insize6.i.i, align 4
  %16 = ptrtoint ptr %ec_device6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ec_device6, align 4
  %call10.i.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %17, ptr noundef nonnull %call7.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i.i)
  %cmp11.i.i = icmp sgt i32 %call10.i.i, -1
  br i1 %cmp11.i.i, label %cros_pchg_port_count.exit, label %cros_pchg_ec_command.exit.thread9.i

cros_pchg_ec_command.exit.thread9.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %cros_pchg_port_count.exit.thread

cros_pchg_port_count.exit.thread:                 ; preds = %cros_pchg_ec_command.exit.thread9.i, %if.end.cros_pchg_port_count.exit.thread_crit_edge
  %retval.0.i8.i = phi i32 [ %call10.i.i, %cros_pchg_ec_command.exit.thread9.i ], [ -12, %if.end.cros_pchg_port_count.exit.thread_crit_edge ]
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i8.i) #11
  br label %do.end

cros_pchg_port_count.exit:                        ; preds = %if.end.i.i
  %data15.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %data15.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %rsp.sroa.0.0.copyload.i = load i8, ptr %data15.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  %conv.i = zext i8 %rsp.sroa.0.0.copyload.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rsp.sroa.0.0.copyload.i)
  %cmp = icmp eq i8 %rsp.sroa.0.0.copyload.i, 0
  br i1 %cmp, label %cros_pchg_port_count.exit.do.end_crit_edge, label %if.end9

cros_pchg_port_count.exit.do.end_crit_edge:       ; preds = %cros_pchg_port_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %cros_pchg_port_count.exit.do.end_crit_edge, %cros_pchg_port_count.exit.thread
  %retval.0.i136 = phi i32 [ %retval.0.i8.i, %cros_pchg_port_count.exit.thread ], [ 0, %cros_pchg_port_count.exit.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i136) #11
  br label %cleanup56

if.end9:                                          ; preds = %cros_pchg_port_count.exit
  %21 = ptrtoint ptr %ec_dev5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ec_dev5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i117 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i.i118 = icmp eq ptr %call7.i.i.i.i117, null
  br i1 %tobool.not.i.i118, label %if.end9.cros_pchg_cmd_ver_check.exit.thread_crit_edge, label %if.end.i.i128

if.end9.cros_pchg_cmd_ver_check.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_pchg_cmd_ver_check.exit.thread

if.end.i.i128:                                    ; preds = %if.end9
  %24 = ptrtoint ptr %call7.i.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %call7.i.i.i.i117, align 8
  %cmd_offset.i.i119 = getelementptr inbounds %struct.cros_ec_dev, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %cmd_offset.i.i119 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cmd_offset.i.i119, align 2
  %conv.i.i120 = zext i16 %26 to i32
  %add3.i.i121 = add nuw nsw i32 %conv.i.i120, 8
  %command4.i.i122 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i117, i32 0, i32 1
  %27 = ptrtoint ptr %command4.i.i122 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add3.i.i121, ptr %command4.i.i122, align 4
  %outsize5.i.i123 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i117, i32 0, i32 2
  %28 = ptrtoint ptr %outsize5.i.i123 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %outsize5.i.i123, align 8
  %insize6.i.i124 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i117, i32 0, i32 3
  %29 = ptrtoint ptr %insize6.i.i124 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %insize6.i.i124, align 4
  %data.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i117, i32 0, i32 5
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 309, ptr %data.i.i, align 4
  %31 = ptrtoint ptr %ec_device6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ec_device6, align 4
  %call10.i.i126 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %32, ptr noundef nonnull %call7.i.i.i.i117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i.i126)
  %cmp11.i.i127 = icmp sgt i32 %call10.i.i126, -1
  br i1 %cmp11.i.i127, label %cros_pchg_cmd_ver_check.exit, label %cros_pchg_ec_command.exit.thread10.i

cros_pchg_ec_command.exit.thread10.i:             ; preds = %if.end.i.i128
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i117) #7
  br label %cros_pchg_cmd_ver_check.exit.thread

cros_pchg_cmd_ver_check.exit.thread:              ; preds = %cros_pchg_ec_command.exit.thread10.i, %if.end9.cros_pchg_cmd_ver_check.exit.thread_crit_edge
  %retval.0.i9.i = phi i32 [ %call10.i.i126, %cros_pchg_ec_command.exit.thread10.i ], [ -12, %if.end9.cros_pchg_cmd_ver_check.exit.thread_crit_edge ]
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i9.i) #11
  br label %do.end14

cros_pchg_cmd_ver_check.exit:                     ; preds = %if.end.i.i128
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %rsp.sroa.0.0.copyload.i130 = load i32, ptr %data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i117) #7
  %and.i = and i32 %rsp.sroa.0.0.copyload.i130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %cros_pchg_cmd_ver_check.exit.do.end14_crit_edge, label %if.end15

cros_pchg_cmd_ver_check.exit.do.end14_crit_edge:  ; preds = %cros_pchg_cmd_ver_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end14:                                         ; preds = %cros_pchg_cmd_ver_check.exit.do.end14_crit_edge, %cros_pchg_cmd_ver_check.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 1) #11
  br label %cleanup56

if.end15:                                         ; preds = %cros_pchg_cmd_ver_check.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %rsp.sroa.0.0.copyload.i)
  %cmp16 = icmp ugt i8 %rsp.sroa.0.0.copyload.i, 8
  br i1 %cmp16, label %do.end20, label %for.body.lr.ph

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #11
  br label %cleanup56

for.body.lr.ph:                                   ; preds = %if.end15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %conv.i) #11
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %num_registered_psy = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc43, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %36 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %call.i133 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 92, i32 noundef 3520) #7
  %tobool27.not = icmp eq ptr %call.i133, null
  br i1 %tobool27.not, label %for.body.cleanup.thread_crit_edge, label %if.end29

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end29:                                         ; preds = %for.body
  %charger30 = getelementptr inbounds %struct.port_data, ptr %call.i133, i32 0, i32 7
  %37 = ptrtoint ptr %charger30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %charger30, align 4
  %38 = ptrtoint ptr %call.i133 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.0141, ptr %call.i133, align 4
  %name = getelementptr inbounds %struct.port_data, ptr %call.i133, i32 0, i32 1
  %call31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 12, ptr noundef nonnull @.str.16, i32 noundef %i.0141)
  %psy_desc32 = getelementptr inbounds %struct.port_data, ptr %call.i133, i32 0, i32 3
  %39 = ptrtoint ptr %psy_desc32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %name, ptr %psy_desc32, align 4
  %type = getelementptr inbounds %struct.port_data, ptr %call.i133, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type, align 4
  %get_property = getelementptr inbounds %struct.port_data, ptr %call.i133, i32 0, i32 3, i32 6
  %41 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @cros_pchg_get_prop, ptr %get_property, align 4
  %external_power_changed = getelementptr inbounds %struct.port_data, ptr %call.i133, i32 0, i32 3, i32 9
  %42 = ptrtoint ptr %external_power_changed to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %external_power_changed, align 4
  %properties = getelementptr inbounds %struct.port_data, ptr %call.i133, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @cros_pchg_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.port_data, ptr %call.i133, i32 0, i32 3, i32 5
  %44 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %num_properties, align 4
  %45 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i133, ptr %drv_data, align 4
  %call36 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef %psy_desc32, ptr noundef nonnull %psy_cfg) #7
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %for.inc

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %call36 to i32
  %call40 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %46, ptr noundef nonnull @.str.17) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then38, %for.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call40, %if.then38 ], [ -12, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  br label %cleanup56

for.inc:                                          ; preds = %if.end29
  %psy42 = getelementptr inbounds %struct.port_data, ptr %call.i133, i32 0, i32 2
  %47 = ptrtoint ptr %psy42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call36, ptr %psy42, align 4
  %48 = ptrtoint ptr %num_registered_psy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_registered_psy, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %num_registered_psy, align 4
  %arrayidx = getelementptr %struct.charger_data, ptr %call.i, i32 0, i32 4, i32 %49
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i133, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  %inc43 = add nuw nsw i32 %i.0141, 1
  %exitcond.not = icmp eq i32 %inc43, %conv.i
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %num_registered_psy44 = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 3
  %51 = ptrtoint ptr %num_registered_psy44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_registered_psy44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool45.not = icmp eq i32 %52, 0
  br i1 %tobool45.not, label %for.end.cleanup56_crit_edge, label %if.end47

for.end.cleanup56_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

if.end47:                                         ; preds = %for.end
  %notifier = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 5
  %53 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @cros_ec_notify, ptr %notifier, align 4
  %54 = ptrtoint ptr %ec_dev2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ec_dev2, align 8
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %55, i32 0, i32 22
  %call49 = call i32 @blocking_notifier_chain_register(ptr noundef %event_notifier, ptr noundef %notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end47.cleanup56_crit_edge

if.end47.cleanup56_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call49) #11
  br label %cleanup56

cleanup56:                                        ; preds = %do.end54, %if.end47.cleanup56_crit_edge, %for.end.cleanup56_crit_edge, %cleanup.thread, %do.end20, %do.end14, %do.end, %entry.cleanup56_crit_edge
  %retval.2 = phi i32 [ -19, %do.end ], [ -105, %do.end20 ], [ -95, %do.end14 ], [ -12, %entry.cleanup56_crit_edge ], [ -19, %for.end.cleanup56_crit_edge ], [ 0, %do.end54 ], [ 0, %if.end47.cleanup56_crit_edge ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_pchg_get_prop(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 47, label %entry.sw.bb_crit_edge15
    i32 1, label %entry.sw.bb_crit_edge16
    i32 66, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %last_update.i = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_update.i, align 4
  %add.neg.i = add i32 %1, -50
  %sub.i = sub i32 %add.neg.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %sw.bb.cros_pchg_get_port_status.exit_crit_edge, label %if.end.i

sw.bb.cros_pchg_get_port_status.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_pchg_get_port_status.exit

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call fastcc i32 @cros_pchg_get_status(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.cros_pchg_get_port_status.exit_crit_edge, label %if.end4.i

if.end.i.cros_pchg_get_port_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_pchg_get_port_status.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %5 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %last_update.i, align 4
  br label %cros_pchg_get_port_status.exit

cros_pchg_get_port_status.exit:                   ; preds = %if.end4.i, %if.end.i.cros_pchg_get_port_status.exit_crit_edge, %sw.bb.cros_pchg_get_port_status.exit_crit_edge
  %6 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %psp, label %cros_pchg_get_port_status.exit.cleanup_crit_edge [
    i32 0, label %sw.bb2
    i32 47, label %sw.bb3
    i32 1, label %sw.bb4
  ]

cros_pchg_get_port_status.exit.cleanup_crit_edge: ; preds = %cros_pchg_get_port_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %cros_pchg_get_port_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  %psy_status = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 4
  br label %cleanup.sink.split.sink.split

sw.bb3:                                           ; preds = %cros_pchg_get_port_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  %battery_percentage = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 5
  br label %cleanup.sink.split.sink.split

sw.bb4:                                           ; preds = %cros_pchg_get_port_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  %charge_type = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 6
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %sw.bb4, %sw.bb3, %sw.bb2
  %charge_type.sink = phi ptr [ %charge_type, %sw.bb4 ], [ %battery_percentage, %sw.bb3 ], [ %psy_status, %sw.bb2 ]
  %7 = ptrtoint ptr %charge_type.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %charge_type.sink, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 2, %entry.cleanup.sink.split_crit_edge ], [ %8, %cleanup.sink.split.sink.split ]
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cros_pchg_get_port_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %cros_pchg_get_port_status.exit.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_notify(ptr nocapture noundef readonly %nb, i32 noundef %queued_during_suspend, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cros_ec_get_host_event(ptr noundef %data) #7
  %add.ptr = getelementptr i8, ptr %nb, i32 -48
  %0 = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %ec_dev1.i.i = getelementptr i8, ptr %nb, i32 -44
  %3 = ptrtoint ptr %ec_dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ec_dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 25) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end3.cros_get_device_event.exit.thread_crit_edge, label %if.end.i.i

if.end3.cros_get_device_event.exit.thread_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_get_device_event.exit.thread

if.end.i.i:                                       ; preds = %if.end3
  %6 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %call7.i.i.i.i, align 8
  %cmd_offset.i.i = getelementptr inbounds %struct.cros_ec_dev, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cmd_offset.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add3.i.i = add nuw nsw i32 %conv.i.i, 170
  %command4.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %command4.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add3.i.i, ptr %command4.i.i, align 4
  %outsize5.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %outsize5.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %outsize5.i.i, align 8
  %insize6.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %insize6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %insize6.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %data.i.i, align 4
  %req.sroa.4.0.data.i.sroa_idx.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 1, i32 1
  %13 = ptrtoint ptr %req.sroa.4.0.data.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %req.sroa.4.0.data.i.sroa_idx.i, align 8
  %ec_device.i.i = getelementptr i8, ptr %nb, i32 -40
  %14 = ptrtoint ptr %ec_device.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ec_device.i.i, align 4
  %call10.i.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %15, ptr noundef nonnull %call7.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i.i)
  %cmp11.i.i = icmp sgt i32 %call10.i.i, -1
  br i1 %cmp11.i.i, label %cros_get_device_event.exit, label %cros_pchg_ec_command.exit.thread11.i

cros_pchg_ec_command.exit.thread11.i:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %cros_get_device_event.exit.thread

cros_get_device_event.exit.thread:                ; preds = %cros_pchg_ec_command.exit.thread11.i, %if.end3.cros_get_device_event.exit.thread_crit_edge
  %retval.0.i10.i = phi i32 [ %call10.i.i, %cros_pchg_ec_command.exit.thread11.i ], [ -12, %if.end3.cros_get_device_event.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i10.i) #11
  br label %cleanup

cros_get_device_event.exit:                       ; preds = %if.end.i.i
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %rsp.sroa.0.0.copyload.i = load i32, ptr %data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  %and5 = and i32 %rsp.sroa.0.0.copyload.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %cros_get_device_event.exit.cleanup_crit_edge, label %if.end8

cros_get_device_event.exit.cleanup_crit_edge:     ; preds = %cros_get_device_event.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %cros_get_device_event.exit
  %num_registered_psy.i = getelementptr i8, ptr %nb, i32 -36
  %17 = ptrtoint ptr %num_registered_psy.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_registered_psy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.i = icmp sgt i32 %18, 0
  br i1 %cmp1.i, label %if.end8.for.body.i_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

for.body.i:                                       ; preds = %cros_pchg_get_port_status.exit.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %cros_pchg_get_port_status.exit.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.charger_data, ptr %add.ptr, i32 0, i32 4, i32 %i.02.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %call1.i.i = tail call fastcc i32 @cros_pchg_get_status(ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %for.body.i.cros_pchg_get_port_status.exit.i_crit_edge, label %if.end4.i.i

for.body.i.cros_pchg_get_port_status.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_pchg_get_port_status.exit.i

if.end4.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %last_update5.i.i = getelementptr inbounds %struct.port_data, ptr %20, i32 0, i32 8
  %22 = ptrtoint ptr %last_update5.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %last_update5.i.i, align 4
  br label %cros_pchg_get_port_status.exit.i

cros_pchg_get_port_status.exit.i:                 ; preds = %if.end4.i.i, %for.body.i.cros_pchg_get_port_status.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %23 = ptrtoint ptr %num_registered_psy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_registered_psy.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %24
  br i1 %cmp.i, label %cros_pchg_get_port_status.exit.i.for.body.i_crit_edge, label %cros_pchg_get_port_status.exit.i.cleanup_crit_edge

cros_pchg_get_port_status.exit.i.cleanup_crit_edge: ; preds = %cros_pchg_get_port_status.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cros_pchg_get_port_status.exit.i.for.body.i_crit_edge: ; preds = %cros_pchg_get_port_status.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup:                                          ; preds = %cros_pchg_get_port_status.exit.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %cros_get_device_event.exit.cleanup_crit_edge, %cros_get_device_event.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %cros_get_device_event.exit.cleanup_crit_edge ], [ 0, %cros_get_device_event.exit.thread ], [ 1, %if.end8.cleanup_crit_edge ], [ 1, %cros_pchg_get_port_status.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_pchg_get_status(ptr nocapture noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %charger1 = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %charger1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %charger1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %psy_status = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %psy_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %psy_status, align 4
  %battery_percentage = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 5
  %6 = ptrtoint ptr %battery_percentage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %battery_percentage, align 4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %ec_dev1.i = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ec_dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ec_dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 36) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %conv = trunc i32 %9 to i8
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call7.i.i.i, align 8
  %cmd_offset.i = getelementptr inbounds %struct.cros_ec_dev, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cmd_offset.i, align 2
  %conv.i = zext i16 %15 to i32
  %add3.i = add nuw nsw i32 %conv.i, 309
  %command4.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %command4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add3.i, ptr %command4.i, align 4
  %outsize5.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %outsize5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %outsize5.i, align 8
  %insize6.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %insize6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %insize6.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %data.i, align 4
  %ec_device.i = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %ec_device.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ec_device.i, align 4
  %call10.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %21, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i)
  %cmp11.i = icmp sgt i32 %call10.i, -1
  br i1 %cmp11.i, label %if.end, label %cros_pchg_ec_command.exit.thread77

cros_pchg_ec_command.exit.thread77:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %do.end

do.end:                                           ; preds = %cros_pchg_ec_command.exit.thread77, %entry.do.end_crit_edge
  %retval.0.i6976 = phi i32 [ %call10.i, %cros_pchg_ec_command.exit.thread77 ], [ -12, %entry.do.end_crit_edge ]
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %23, i32 noundef %retval.0.i6976) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %rsp.sroa.4.0.data15.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 1, i32 1
  %24 = ptrtoint ptr %rsp.sroa.4.0.data15.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %rsp.sroa.4.0.copyload = load i8, ptr %rsp.sroa.4.0.data15.i.sroa_idx, align 8
  %rsp.sroa.7.0.data15.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 5
  %25 = ptrtoint ptr %rsp.sroa.7.0.data15.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %rsp.sroa.7.0.copyload = load i8, ptr %rsp.sroa.7.0.data15.i.sroa_idx, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  %switch.tableidx = add i8 %rsp.sroa.4.0.copyload, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %26 = icmp ult i8 %switch.tableidx, 3
  br i1 %26, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cros_pchg_get_status, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %29 = sext i8 %switch.tableidx to i32
  %switch.gep83 = getelementptr inbounds [3 x i32], ptr @switch.table.cros_pchg_get_status.32, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep83 to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load84 = load i32, ptr %switch.gep83, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %.sink82 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %.sink = phi i32 [ 1, %if.end.sw.epilog_crit_edge ], [ %switch.load84, %switch.lookup ]
  %31 = ptrtoint ptr %psy_status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink82, ptr %psy_status, align 4
  %charge_type16 = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 6
  %32 = ptrtoint ptr %charge_type16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %charge_type16, align 4
  %conv18 = zext i8 %rsp.sroa.7.0.copyload to i32
  %33 = ptrtoint ptr %battery_percentage to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv18, ptr %battery_percentage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink82, i32 %5)
  %cmp21.not = icmp eq i32 %.sink82, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv18)
  %cmp24.not = icmp eq i32 %7, %conv18
  %or.cond = select i1 %cmp21.not, i1 %cmp24.not, i1 false
  br i1 %or.cond, label %sw.epilog.do.body28_crit_edge, label %if.then26

sw.epilog.do.body28_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

if.then26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %psy = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 2
  %34 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %psy, align 4
  tail call void @power_supply_changed(ptr noundef %35) #7
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %sw.epilog.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_pchg_get_status.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cros_pchg_get_status, %cleanup)) #7
          to label %if.then33 [label %cleanup], !srcloc !79

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %conv36 = zext i8 %rsp.sroa.4.0.copyload to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_pchg_get_status.__UNIQUE_ID_ddebug185, ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %37, i32 noundef %conv36, i32 noundef %conv18) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body28, %do.end
  %retval.0 = phi i32 [ %retval.0.i6976, %do.end ], [ 0, %if.then33 ], [ 0, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_host_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_cros_peripheral_charger__186_382_cros_pchg_driver_init6, !1, !"__initcall__kmod_cros_peripheral_charger__186_382_cros_pchg_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 382, i32 1}
!2 = !{ptr @__exitcall_cros_pchg_driver_exit, !1, !"__exitcall_cros_pchg_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file187, !4, !"__UNIQUE_ID_file187", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 384, i32 1}
!5 = !{ptr @__UNIQUE_ID_license188, !4, !"__UNIQUE_ID_license188", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description189, !7, !"__UNIQUE_ID_description189", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 385, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias190, !9, !"__UNIQUE_ID_alias190", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 386, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 377, i32 11}
!12 = !{ptr @cros_pchg_driver, !13, !"cros_pchg_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 375, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 314, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cros_pchg_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cros_pchg_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 319, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cros_pchg_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @cros_pchg_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 326, i32 3}
!29 = !{ptr @cros_pchg_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @cros_pchg_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 331, i32 2}
!33 = !{ptr @cros_pchg_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cros_pchg_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 342, i32 44}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 356, i32 6}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 370, i32 3}
!41 = !{ptr @cros_pchg_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cros_pchg_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 114, i32 3}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cros_pchg_port_count._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @cros_pchg_port_count._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 97, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cros_pchg_cmd_ver_check._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @cros_pchg_cmd_ver_check._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 136, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cros_pchg_get_status._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @cros_pchg_get_status._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 169, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cros_pchg_get_status.__UNIQUE_ID_ddebug185, !60, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!63 = !{ptr @cros_pchg_props, !64, !"cros_pchg_props", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 46, i32 35}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/cros_peripheral_charger.c", i32 251, i32 3}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cros_get_device_event._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @cros_get_device_event._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148961237, i64 2148961242, i64 2148961255, i64 2148961299, i64 2148961333, i64 2148961354}
