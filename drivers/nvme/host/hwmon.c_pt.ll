; ModuleID = '/llk/IR_all_yes/drivers/nvme/host/hwmon.c_pt.bc'
source_filename = "../drivers/nvme/host/hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.nvme_ctrl = type { i8, i32, i8, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.device, ptr, ptr, %struct.cdev, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.list_head, ptr, [12 x i8], i16, i32, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, [3 x i16], i16, i16, i16, i16, i16, i32, %struct.atomic_t, i8, i32, i32, i16, i8, i8, i16, i16, i32, i32, i32, i32, i32, i8, i32, [32 x %struct.nvme_id_power_state], ptr, %struct.xarray, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.nvme_command, %struct.work_struct, i32, i8, i8, i32, i32, %struct.mutex, ptr, i32, %struct.timer_list, %struct.work_struct, i64, i8, i32, i32, i32, i16, i32, i32, i16, i16, i32, i32, ptr, ptr, i32, %struct.nvme_fault_inject }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.nvme_command = type { %union.anon.83 }
%union.anon.83 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.84 }
%struct.anon.84 = type { i64, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvme_fault_inject = type { %struct.fault_attr, ptr, i8, i16 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.nvme_hwmon_data = type { ptr, %struct.nvme_smart_log, %struct.mutex }
%struct.nvme_smart_log = type { i8, [2 x i8], i8, i8, i8, i8, [25 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i32, i32, [8 x i16], i32, i32, i32, i32, [280 x i8] }

@nvme_hwmon_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&data->read_lock\00", [47 x i8] zeroinitializer }, align 32
@nvme_hwmon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read smart log (error %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvme_hwmon_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nvme/host/hwmon.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvme_hwmon_init._entry_ptr = internal global ptr @nvme_hwmon_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nvme\00", [27 x i8] zeroinitializer }, align 32
@nvme_hwmon_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @nvme_hwmon_ops, ptr @nvme_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@nvme_hwmon_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to instantiate hwmon device\0A\00", [60 x i8] zeroinitializer }, align 32
@nvme_hwmon_init._entry_ptr.9 = internal global ptr @nvme_hwmon_init._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvme_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @nvme_hwmon_is_visible, ptr @nvme_hwmon_read, ptr @nvme_hwmon_read_string, ptr @nvme_hwmon_write }, [16 x i8] zeroinitializer }, align 32
@nvme_hwmon_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.19, ptr @.compoundliteral.21, ptr null], [20 x i8] zeroinitializer }, align 32
@nvme_hwmon_sensor_names = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sensor 1\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sensor 2\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sensor 3\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sensor 4\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sensor 5\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sensor 6\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sensor 7\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sensor 8\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 2106018, i32 2097314, i32 2097314, i32 2097314, i32 2097314, i32 2097314, i32 2097314, i32 2097314, i32 2097314, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.20 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6, i64 10]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 13]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 236, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 240, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 245, i32 47 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"nvme_hwmon_chip_info\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 219, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 249, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"nvme_hwmon_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 212, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"nvme_hwmon_info\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 188, i32 41 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"nvme_hwmon_sensor_names\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 132, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 133, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 134, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 135, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 136, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 137, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 138, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 139, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 140, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [29 x i8] c"../drivers/nvme/host/hwmon.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 141, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @nvme_hwmon_init._entry, ptr @nvme_hwmon_init._entry.7, ptr @nvme_hwmon_init._entry_ptr, ptr @nvme_hwmon_init._entry_ptr.9, ptr @nvme_hwmon_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nvme_hwmon_chip_info, ptr @.str.8, ptr @nvme_hwmon_ops, ptr @nvme_hwmon_info, ptr @nvme_hwmon_sensor_names, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.compoundliteral, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_hwmon_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_hwmon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_hwmon_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_hwmon_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_hwmon_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_hwmon_sensor_names to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_hwmon_init(ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 608) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctrl, ptr %call7.i.i, align 8
  %read_lock = getelementptr inbounds %struct.nvme_hwmon_data, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %read_lock, ptr noundef nonnull @.str, ptr noundef nonnull @nvme_hwmon_init.__key) #8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call7.i.i, align 8
  %log.i = getelementptr inbounds %struct.nvme_hwmon_data, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call i32 @nvme_get_log(ptr noundef %5, i32 noundef -1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %log.i, i32 noundef 512, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %call.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @hwmon_device_register_with_info(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @nvme_hwmon_chip_info, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.8) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %6 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %hwmon_device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 18
  %7 = ptrtoint ptr %hwmon_device to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %hwmon_device, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end14, %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end7 ], [ %6, %do.end14 ], [ 0, %if.end16 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvme_hwmon_exit(ptr nocapture noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon_device = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 18
  %0 = ptrtoint ptr %hwmon_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon_device, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void @hwmon_device_unregister(ptr noundef nonnull %1) #8
  %4 = ptrtoint ptr %hwmon_device to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %hwmon_device, align 4
  tail call void @kfree(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_get_log(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @nvme_hwmon_is_visible(ptr nocapture noundef readonly %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %attr, -1
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 31)
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 3, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge43
    i32 6, label %sw.bb18
    i32 0, label %entry.sw.bb22_crit_edge
    i32 10, label %entry.sw.bb22_crit_edge44
  ]

entry.sw.bb22_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

entry.sw.bb22_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

entry.sw.bb2_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not = icmp eq i32 %channel, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %3 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_data, align 4
  %cctemp = getelementptr inbounds %struct.nvme_ctrl, ptr %4, i32 0, i32 54
  %5 = ptrtoint ptr %cctemp to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cctemp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool1.not = icmp eq i16 %6, 0
  br i1 %tobool1.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool3.not = icmp eq i32 %channel, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true9.critedge

land.lhs.true4:                                   ; preds = %sw.bb2
  %7 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_data, align 4
  %wctemp = getelementptr inbounds %struct.nvme_ctrl, ptr %8, i32 0, i32 53
  %9 = ptrtoint ptr %wctemp to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wctemp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool7.not = icmp eq i16 %10, 0
  br i1 %tobool7.not, label %land.lhs.true4.sw.epilog_crit_edge, label %land.lhs.true4.if.then12_crit_edge

land.lhs.true4.if.then12_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

land.lhs.true4.sw.epilog_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true9.critedge:                          ; preds = %sw.bb2
  %sub = add i32 %channel, -1
  %arrayidx = getelementptr %struct.nvme_hwmon_data, ptr %_data, i32 0, i32 1, i32 19, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool11.not = icmp eq i16 %12, 0
  br i1 %tobool11.not, label %land.lhs.true9.critedge.sw.epilog_crit_edge, label %land.lhs.true9.critedge.if.then12_crit_edge

land.lhs.true9.critedge.if.then12_crit_edge:      ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

land.lhs.true9.critedge.sw.epilog_crit_edge:      ; preds = %land.lhs.true9.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then12:                                        ; preds = %land.lhs.true9.critedge.if.then12_crit_edge, %land.lhs.true4.if.then12_crit_edge
  %13 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_data, align 4
  %quirks = getelementptr inbounds %struct.nvme_ctrl, ptr %14, i32 0, i32 61
  %15 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks, align 8
  %and = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %. = select i1 %tobool14.not, i16 420, i16 292
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool19.not = icmp eq i32 %channel, 0
  br i1 %tobool19.not, label %sw.bb18.cleanup_crit_edge, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb22:                                          ; preds = %entry.sw.bb22_crit_edge, %entry.sw.bb22_crit_edge44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool23.not = icmp eq i32 %channel, 0
  br i1 %tobool23.not, label %sw.bb22.cleanup_crit_edge, label %lor.lhs.false24

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false24:                                  ; preds = %sw.bb22
  %sub27 = add i32 %channel, -1
  %arrayidx28 = getelementptr %struct.nvme_hwmon_data, ptr %_data, i32 0, i32 1, i32 19, i32 %sub27
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool30.not = icmp eq i16 %18, 0
  br i1 %tobool30.not, label %lor.lhs.false24.sw.epilog_crit_edge, label %lor.lhs.false24.cleanup_crit_edge

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false24.sw.epilog_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false24.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %land.lhs.true9.critedge.sw.epilog_crit_edge, %land.lhs.true4.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false24.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %if.then12, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog ], [ 292, %land.lhs.true.cleanup_crit_edge ], [ %., %if.then12 ], [ 292, %sw.bb18.cleanup_crit_edge ], [ 292, %lor.lhs.false24.cleanup_crit_edge ], [ 292, %sw.bb22.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %status.i45 = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %log1 = getelementptr inbounds %struct.nvme_hwmon_data, ptr %1, i32 0, i32 1
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %attr, label %sw.epilog [
    i32 7, label %sw.bb
    i32 5, label %sw.bb3
    i32 9, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %shl.i = shl i32 %channel, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %status.i, align 4, !annotation !52
  %call.i = call i32 @nvme_get_features(ptr noundef %4, i32 noundef 4, i32 noundef %shl.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.nvme_get_temp_thresh.exit_crit_edge, label %if.end2.i

sw.bb.nvme_get_temp_thresh.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvme_get_temp_thresh.exit

if.end2.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.end2.i.nvme_get_temp_thresh.exit_crit_edge, label %if.end5.i

if.end2.i.nvme_get_temp_thresh.exit_crit_edge:    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvme_get_temp_thresh.exit

if.end5.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i, align 4
  %and.i = and i32 %7, 65535
  %mul.i.i = mul nuw nsw i32 %and.i, 1000
  %add.i.i.i = add nsw i32 %mul.i.i, -273150
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i.i.i, ptr %val, align 4
  br label %nvme_get_temp_thresh.exit

nvme_get_temp_thresh.exit:                        ; preds = %if.end5.i, %if.end2.i.nvme_get_temp_thresh.exit_crit_edge, %sw.bb.nvme_get_temp_thresh.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ -5, %sw.bb.nvme_get_temp_thresh.exit_crit_edge ], [ %call.i, %if.end2.i.nvme_get_temp_thresh.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %shl.i46 = shl i32 %channel, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i45) #8
  %11 = ptrtoint ptr %status.i45 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %status.i45, align 4, !annotation !52
  %or.i47 = or i32 %shl.i46, 1048576
  %call.i48 = call i32 @nvme_get_features(ptr noundef %10, i32 noundef 4, i32 noundef %or.i47, ptr noundef null, i32 noundef 0, ptr noundef nonnull %status.i45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp sgt i32 %call.i48, 0
  br i1 %cmp.i49, label %sw.bb3.nvme_get_temp_thresh.exit57_crit_edge, label %if.end2.i51

sw.bb3.nvme_get_temp_thresh.exit57_crit_edge:     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvme_get_temp_thresh.exit57

if.end2.i51:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp3.i50 = icmp slt i32 %call.i48, 0
  br i1 %cmp3.i50, label %if.end2.i51.nvme_get_temp_thresh.exit57_crit_edge, label %if.end5.i55

if.end2.i51.nvme_get_temp_thresh.exit57_crit_edge: ; preds = %if.end2.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %nvme_get_temp_thresh.exit57

if.end5.i55:                                      ; preds = %if.end2.i51
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %status.i45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status.i45, align 4
  %and.i52 = and i32 %13, 65535
  %mul.i.i53 = mul nuw nsw i32 %and.i52, 1000
  %add.i.i.i54 = add nsw i32 %mul.i.i53, -273150
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i.i.i54, ptr %val, align 4
  br label %nvme_get_temp_thresh.exit57

nvme_get_temp_thresh.exit57:                      ; preds = %if.end5.i55, %if.end2.i51.nvme_get_temp_thresh.exit57_crit_edge, %sw.bb3.nvme_get_temp_thresh.exit57_crit_edge
  %retval.0.i56 = phi i32 [ 0, %if.end5.i55 ], [ -5, %sw.bb3.nvme_get_temp_thresh.exit57_crit_edge ], [ %call.i48, %if.end2.i51.nvme_get_temp_thresh.exit57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i45) #8
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %cctemp = getelementptr inbounds %struct.nvme_ctrl, ptr %16, i32 0, i32 54
  %17 = ptrtoint ptr %cctemp to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cctemp, align 2
  %conv = zext i16 %18 to i32
  %mul.i = mul nuw nsw i32 %conv, 1000
  %add.i.i = add nsw i32 %mul.i, -273150
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i.i, ptr %val, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %read_lock = getelementptr inbounds %struct.nvme_hwmon_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %read_lock, i32 noundef 0) #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i58 = tail call i32 @nvme_get_log(ptr noundef %21, i32 noundef -1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %log1, i32 noundef 512, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not = icmp eq i32 %call.i58, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.unlock_crit_edge

sw.epilog.unlock_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end:                                           ; preds = %sw.epilog
  %22 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %attr, label %if.end.unlock_crit_edge [
    i32 1, label %sw.bb10
    i32 13, label %sw.bb18
  ]

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool11.not = icmp eq i32 %channel, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %temperature = getelementptr inbounds %struct.nvme_hwmon_data, ptr %1, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %temperature to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %temperature, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #8
  br label %if.end16

if.else:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %channel, -1
  %arrayidx = getelementptr %struct.nvme_hwmon_data, ptr %1, i32 0, i32 1, i32 19, i32 %sub
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %temp.0.in = phi i16 [ %28, %if.else ], [ %25, %if.then12 ]
  %temp.0 = zext i16 %temp.0.in to i32
  %mul.i59 = mul nuw nsw i32 %temp.0, 1000
  %add.i.i60 = add nsw i32 %mul.i59, -273150
  br label %unlock.sink.split

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %log1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %log1, align 4
  %31 = lshr i8 %30, 1
  %.lobit = and i8 %31, 1
  %32 = zext i8 %.lobit to i32
  br label %unlock.sink.split

unlock.sink.split:                                ; preds = %sw.bb18, %if.end16
  %add.i.i60.sink = phi i32 [ %add.i.i60, %if.end16 ], [ %32, %sw.bb18 ]
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i.i60.sink, ptr %val, align 4
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %if.end.unlock_crit_edge, %sw.epilog.unlock_crit_edge
  %err.0 = phi i32 [ %call.i58, %sw.epilog.unlock_crit_edge ], [ -95, %if.end.unlock_crit_edge ], [ 0, %unlock.sink.split ]
  tail call void @mutex_unlock(ptr noundef %read_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %sw.bb6, %nvme_get_temp_thresh.exit57, %nvme_get_temp_thresh.exit
  %retval.0 = phi i32 [ %err.0, %unlock ], [ 0, %sw.bb6 ], [ %retval.0.i56, %nvme_get_temp_thresh.exit57 ], [ %retval.0.i, %nvme_get_temp_thresh.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nvme_hwmon_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [9 x ptr], ptr @nvme_hwmon_sensor_names, i32 0, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %str, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_hwmon_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %attr, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 5, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %shl.i = shl i32 %channel, 16
  %sub.i.i.i = add i32 %val, 273150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, 0
  %cond.in.v.i.i = select i1 %cmp.i.i, i32 273650, i32 272650
  %cond.in.i.i = add i32 %cond.in.v.i.i, %val
  %cond.i.i = sdiv i32 %cond.in.i.i, 1000
  %5 = tail call i32 @llvm.smax.i32(i32 %cond.i.i, i32 0) #8
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 65535) #8
  %or.i = or i32 %6, %shl.i
  %call8.i = tail call i32 @nvme_set_features(ptr noundef %4, i32 noundef 4, i32 noundef %or.i, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp sgt i32 %call8.i, 0
  %retval.0.i = select i1 %cmp9.i, i32 -5, i32 %call8.i
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %shl.i8 = shl i32 %channel, 16
  %sub.i.i.i9 = add i32 %val, 273150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i9)
  %cmp.i.i10 = icmp sgt i32 %sub.i.i.i9, 0
  %cond.in.v.i.i11 = select i1 %cmp.i.i10, i32 273650, i32 272650
  %cond.in.i.i12 = add i32 %cond.in.v.i.i11, %val
  %cond.i.i13 = sdiv i32 %cond.in.i.i12, 1000
  %9 = tail call i32 @llvm.smax.i32(i32 %cond.i.i13, i32 0) #8
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 65535) #8
  %or.i14 = or i32 %10, %shl.i8
  %or7.i15 = or i32 %or.i14, 1048576
  %call8.i16 = tail call i32 @nvme_set_features(ptr noundef %8, i32 noundef 4, i32 noundef %or7.i15, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i16)
  %cmp9.i17 = icmp sgt i32 %call8.i16, 0
  %retval.0.i18 = select i1 %cmp9.i17, i32 -5, i32 %call8.i16
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i18, %sw.bb2 ], [ %retval.0.i, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_get_features(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_set_features(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @nvme_hwmon_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/nvme/host/hwmon.c", i32 236, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/nvme/host/hwmon.c", i32 240, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nvme_hwmon_init._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @nvme_hwmon_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/nvme/host/hwmon.c", i32 245, i32 47}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/nvme/host/hwmon.c", i32 249, i32 3}
!15 = !{ptr @nvme_hwmon_init._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @nvme_hwmon_init._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @nvme_hwmon_chip_info, !18, !"nvme_hwmon_chip_info", i1 false, i1 false}
!18 = !{!"../drivers/nvme/host/hwmon.c", i32 219, i32 37}
!19 = !{ptr @nvme_hwmon_ops, !20, !"nvme_hwmon_ops", i1 false, i1 false}
!20 = !{!"../drivers/nvme/host/hwmon.c", i32 212, i32 31}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/nvme/host/hwmon.c", i32 133, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/nvme/host/hwmon.c", i32 134, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/nvme/host/hwmon.c", i32 135, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/nvme/host/hwmon.c", i32 136, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/nvme/host/hwmon.c", i32 137, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/nvme/host/hwmon.c", i32 138, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nvme/host/hwmon.c", i32 139, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nvme/host/hwmon.c", i32 140, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nvme/host/hwmon.c", i32 141, i32 2}
!39 = !{ptr @nvme_hwmon_sensor_names, !40, !"nvme_hwmon_sensor_names", i1 false, i1 false}
!40 = !{!"../drivers/nvme/host/hwmon.c", i32 132, i32 27}
!41 = !{ptr @nvme_hwmon_info, !42, !"nvme_hwmon_info", i1 false, i1 false}
!42 = !{!"../drivers/nvme/host/hwmon.c", i32 188, i32 41}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
