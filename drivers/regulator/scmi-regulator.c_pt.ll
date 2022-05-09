; ModuleID = '/llk/IR_all_yes/drivers/regulator/scmi-regulator.c_pt.bc'
source_filename = "../drivers/regulator/scmi-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device_id = type { i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
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
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.scmi_regulator_info = type { i32, ptr }
%struct.scmi_regulator = type { i32, ptr, ptr, ptr, ptr, %struct.regulator_desc, %struct.regulator_config }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_voltage_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_voltage_info = type { i32, i8, i8, i32, [16 x i8], i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_scmi_regulator__289_419_scmi_drv_init6 = internal global ptr @scmi_drv_init, section ".initcall6.init", align 4
@scmi_drv = internal global { %struct.scmi_driver, [36 x i8] } { %struct.scmi_driver { ptr @.str.1, ptr @scmi_regulator_probe, ptr @scmi_regulator_remove, ptr @scmi_regulator_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_scmi_drv_exit = internal global ptr @scmi_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [66 x i8] c"scmi_regulator.author=Cristian Marussi <cristian.marussi@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [53 x i8] c"scmi_regulator.description=ARM SCMI regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [53 x i8] c"scmi_regulator.file=drivers/regulator/scmi-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [30 x i8] c"scmi_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scmi_regulator\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scmi-regulator\00", [17 x i8] zeroinitializer }, align 32
@scmi_regulator_id_table = internal constant { [2 x %struct.scmi_device_id], [16 x i8] } { [2 x %struct.scmi_device_id] [%struct.scmi_device_id { i8 23, ptr @.str.30 }, %struct.scmi_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@voltage_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scmi_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"number of voltage domains invalid\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scmi_regulator_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/regulator/scmi-regulator.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scmi_regulator_probe._entry_ptr = internal global ptr @scmi_regulator_probe._entry, section ".printk_index", align 4
@scmi_regulator_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 322, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get voltage domains - err:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@scmi_regulator_probe._entry_ptr.9 = internal global ptr @scmi_regulator_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@scmi_regulator_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 382, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Regulator %s registered for domain [%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@scmi_regulator_probe._entry_ptr.14 = internal global ptr @scmi_regulator_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@process_scmi_regulator_of_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 272, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"SCMI Voltage Domain %d already in use. Skipping: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"process_scmi_regulator_of_node\00", [33 x i8] zeroinitializer }, align 32
@process_scmi_regulator_of_node._entry_ptr = internal global ptr @process_scmi_regulator_of_node._entry, section ".printk_index", align 4
@process_scmi_regulator_of_node.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Found SCMI Regulator entry -- OF node [%d] -> %s\0A\00", [46 x i8] zeroinitializer }, align 32
@scmi_regulator_common_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 210, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failure to get voltage domain %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"scmi_regulator_common_init\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@scmi_regulator_common_init._entry_ptr = internal global ptr @scmi_regulator_common_init._entry, section ".printk_index", align 4
@scmi_regulator_common_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.4, i32 222, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Negative voltages NOT supported...skip %s\0A\00", [53 x i8] zeroinitializer }, align 32
@scmi_regulator_common_init._entry_ptr.24 = internal global ptr @scmi_regulator_common_init._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@scmi_config_linear_regulator_mappings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid volt-range %d-%duV for domain %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"scmi_config_linear_regulator_mappings\00", [58 x i8] zeroinitializer }, align 32
@scmi_config_linear_regulator_mappings._entry_ptr = internal global ptr @scmi_config_linear_regulator_mappings._entry, section ".printk_index", align 4
@scmi_reg_fixed_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scmi_reg_enable, ptr @scmi_reg_disable, ptr @scmi_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@scmi_reg_linear_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @scmi_reg_set_voltage_sel, ptr null, ptr @scmi_reg_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scmi_reg_enable, ptr @scmi_reg_disable, ptr @scmi_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@scmi_reg_is_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 79, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d reading regulator %s status.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"scmi_reg_is_enabled\00", [44 x i8] zeroinitializer }, align 32
@scmi_reg_is_enabled._entry_ptr = internal global ptr @scmi_reg_is_enabled._entry, section ".printk_index", align 4
@scmi_reg_discrete_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_iterate, ptr @scmi_reg_set_voltage_sel, ptr null, ptr @scmi_reg_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scmi_reg_enable, ptr @scmi_reg_disable, ptr @scmi_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"regulator\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"scmi_drv\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 412, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 419, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 413, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"scmi_regulator_id_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 406, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"voltage_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 36, i32 45 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 316, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 320, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 346, i32 50 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 380, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 262, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 270, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 290, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 209, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 221, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 226, i32 52 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 155, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"scmi_reg_fixed_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 112, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"scmi_reg_linear_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 118, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 77, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"scmi_reg_discrete_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 128, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [38 x i8] c"../drivers/regulator/scmi-regulator.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 407, i32 28 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_scmi_drv_exit, ptr @__initcall__kmod_scmi_regulator__289_419_scmi_drv_init6, ptr @process_scmi_regulator_of_node._entry, ptr @process_scmi_regulator_of_node._entry_ptr, ptr @scmi_config_linear_regulator_mappings._entry, ptr @scmi_config_linear_regulator_mappings._entry_ptr, ptr @scmi_drv_exit, ptr @scmi_reg_is_enabled._entry, ptr @scmi_reg_is_enabled._entry_ptr, ptr @scmi_regulator_common_init._entry, ptr @scmi_regulator_common_init._entry.22, ptr @scmi_regulator_common_init._entry_ptr, ptr @scmi_regulator_common_init._entry_ptr.24, ptr @scmi_regulator_probe._entry, ptr @scmi_regulator_probe._entry.11, ptr @scmi_regulator_probe._entry.7, ptr @scmi_regulator_probe._entry_ptr, ptr @scmi_regulator_probe._entry_ptr.14, ptr @scmi_regulator_probe._entry_ptr.9, ptr @scmi_drv, ptr @.str, ptr @.str.1, ptr @scmi_regulator_id_table, ptr @voltage_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @scmi_reg_fixed_ops, ptr @scmi_reg_linear_ops, ptr @.str.28, ptr @.str.29, ptr @scmi_reg_discrete_ops, ptr @.str.30], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_drv to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_regulator_id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltage_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_regulator_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_regulator_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_scmi_regulator_of_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_regulator_common_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_regulator_common_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_config_linear_regulator_mappings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_reg_fixed_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_reg_linear_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_reg_is_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_reg_discrete_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_driver_register(ptr noundef nonnull @scmi_drv, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scmi_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @scmi_driver_unregister(ptr noundef nonnull @scmi_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_regulator_probe(ptr noundef %sdev) #2 align 64 {
entry:
  %ph = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handle1 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 4
  %0 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ph) #6
  %2 = ptrtoint ptr %ph to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ph, align 4, !annotation !87
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end:                                           ; preds = %entry
  %devm_protocol_get = getelementptr inbounds %struct.scmi_handle, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %devm_protocol_get to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devm_protocol_get, align 4
  %call = call ptr %4(ptr noundef %sdev, i8 noundef zeroext 23, ptr noundef nonnull %ph) #6
  store ptr %call, ptr @voltage_ops, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call to i32
  br label %cleanup63

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %8 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ph, align 4
  %call6 = call i32 %7(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp = icmp slt i32 %call6, 1
  br i1 %cmp, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  %dev = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  br i1 %tobool8.not, label %do.end, label %do.end12

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup63

do.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call6) #9
  br label %cleanup63

if.end15:                                         ; preds = %if.end5
  %dev16 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev16, i32 noundef 8, i32 noundef 3520) #6
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end15.cleanup63_crit_edge, label %if.end20

if.end15.cleanup63_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end20:                                         ; preds = %if.end15
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call6, i32 4) #6
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !88

devm_kcalloc.exit.thread:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %sregv116 = getelementptr inbounds %struct.scmi_regulator_info, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %sregv116 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %sregv116, align 4
  br label %cleanup63

devm_kcalloc.exit:                                ; preds = %if.end20
  %13 = extractvalue { i32, i1 } %10, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev16, i32 noundef %13, i32 noundef 3520) #6
  %sregv = getelementptr inbounds %struct.scmi_regulator_info, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %sregv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i, ptr %sregv, align 4
  %tobool24.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool24.not, label %devm_kcalloc.exit.cleanup63_crit_edge, label %if.end26

devm_kcalloc.exit.cleanup63_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup63

if.end26:                                         ; preds = %devm_kcalloc.exit
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call6, ptr %call.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call29 = call ptr @of_find_node_by_name(ptr noundef %19, ptr noundef nonnull @.str.10) #6
  %call30 = call ptr @of_get_next_child(ptr noundef %call29, ptr noundef null) #6
  %cmp31.not121 = icmp eq ptr %call30, null
  br i1 %cmp31.not121, label %if.end26.for.body39.preheader_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.for.body39.preheader_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39.preheader

for.cond37.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp38123 = icmp sgt i32 %call6, 0
  br i1 %cmp38123, label %for.cond37.preheader.for.body39.preheader_crit_edge, label %for.cond37.preheader.for.end61_crit_edge

for.cond37.preheader.for.end61_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end61

for.cond37.preheader.for.body39.preheader_crit_edge: ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.cond37.preheader.for.body39.preheader_crit_edge, %if.end26.for.body39.preheader_crit_edge
  br label %for.body39

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26.for.body_crit_edge
  %child.0122 = phi ptr [ %call36, %for.inc.for.body_crit_edge ], [ %call30, %if.end26.for.body_crit_edge ]
  %20 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ph, align 4
  %call32 = call fastcc i32 @process_scmi_regulator_of_node(ptr noundef %sdev, ptr noundef %21, ptr noundef nonnull %child.0122, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call32)
  %cmp33 = icmp eq i32 %call32, -12
  br i1 %cmp33, label %if.then34, label %for.inc

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %child.0122) #6
  br label %cleanup63

for.inc:                                          ; preds = %for.body
  %call36 = call ptr @of_get_next_child(ptr noundef %call29, ptr noundef nonnull %child.0122) #6
  %cmp31.not = icmp eq ptr %call36, null
  br i1 %cmp31.not, label %for.cond37.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body39:                                       ; preds = %cleanup.for.body39_crit_edge, %for.body39.preheader
  %d.0124 = phi i32 [ %inc, %cleanup.for.body39_crit_edge ], [ 0, %for.body39.preheader ]
  %22 = ptrtoint ptr %sregv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sregv, align 4
  %arrayidx = getelementptr ptr, ptr %23, i32 %d.0124
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %tobool41.not = icmp eq ptr %25, null
  br i1 %tobool41.not, label %for.body39.cleanup_crit_edge, label %if.end43

for.body39.cleanup_crit_edge:                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %for.body39
  %sdev.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.scmi_device, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr @voltage_ops, align 4
  %info_get.i = getelementptr inbounds %struct.scmi_voltage_proto_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %info_get.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info_get.i, align 4
  %ph.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 2
  %31 = ptrtoint ptr %ph.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ph.i, align 4
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %25, align 4
  %call.i111 = call ptr %30(ptr noundef %32, i32 noundef %34) #6
  %tobool.not.i = icmp eq ptr %call.i111, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %25, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.19, i32 noundef %36) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end43
  %negative_volts_allowed.i = getelementptr inbounds %struct.scmi_voltage_info, ptr %call.i111, i32 0, i32 2
  %37 = ptrtoint ptr %negative_volts_allowed.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %negative_volts_allowed.i, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool3.not.i = icmp eq i8 %38, 0
  br i1 %tobool3.not.i, label %if.end8.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 4
  %39 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node.i, align 4
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %full_name.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.23, ptr noundef %42) #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %name.i = getelementptr inbounds %struct.scmi_voltage_info, ptr %call.i111, i32 0, i32 4
  %call9.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1.i, i32 noundef 3264, ptr noundef nonnull @.str.25, ptr noundef %name.i) #6
  %desc.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5
  %43 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i, ptr %desc.i, align 4
  %tobool13.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool13.not.i, label %if.end8.i.cleanup_crit_edge, label %if.end15.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.i:                                       ; preds = %if.end8.i
  %44 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %25, align 4
  %id18.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 6
  %46 = ptrtoint ptr %id18.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %id18.i, align 4
  %type.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 12
  %47 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %type.i, align 4
  %owner.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 13
  %48 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %owner.i, align 4
  %of_match_full_name.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 3
  %49 = ptrtoint ptr %of_match_full_name.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %of_match_full_name.i, align 4
  %of_node22.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 4
  %50 = ptrtoint ptr %of_node22.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node22.i, align 4
  %full_name23.i = getelementptr inbounds %struct.device_node, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %full_name23.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %full_name23.i, align 4
  %of_match.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 2
  %54 = ptrtoint ptr %of_match.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %of_match.i, align 4
  %regulators_node.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 4
  %55 = ptrtoint ptr %regulators_node.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.10, ptr %regulators_node.i, align 4
  %segmented.i = getelementptr inbounds %struct.scmi_voltage_info, ptr %call.i111, i32 0, i32 1
  %56 = ptrtoint ptr %segmented.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %segmented.i, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool26.not.i = icmp eq i8 %57, 0
  br i1 %tobool26.not.i, label %if.else.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end15.i
  %levels_uv.i.i = getelementptr inbounds %struct.scmi_voltage_info, ptr %call.i111, i32 0, i32 6
  %58 = ptrtoint ptr %levels_uv.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %levels_uv.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %59, i32 1
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %59, align 4
  %sub.i.i = sub i32 %61, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end30.i, label %if.end.i.i112

if.end.i.i112:                                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %tobool.not.i.i = icmp eq i32 %61, %63
  br i1 %tobool.not.i.i, label %if.then7.i.i, label %if.else.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i112
  call void @__sanitizer_cov_trace_pc() #8
  %fixed_uV.i.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 17
  %64 = ptrtoint ptr %fixed_uV.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %61, ptr %fixed_uV.i.i, align 4
  %n_voltages.i.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 8
  %65 = ptrtoint ptr %n_voltages.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %n_voltages.i.i, align 4
  br label %if.end47

if.else.i.i:                                      ; preds = %if.end.i.i112
  call void @__sanitizer_cov_trace_pc() #8
  %min_uV.i.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 14
  %66 = ptrtoint ptr %min_uV.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %min_uV.i.i, align 4
  %67 = ptrtoint ptr %levels_uv.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %levels_uv.i.i, align 4
  %arrayidx16.i.i = getelementptr i32, ptr %68, i32 2
  %69 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx16.i.i, align 4
  %uV_step.i.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 15
  %71 = ptrtoint ptr %uV_step.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %uV_step.i.i, align 4
  %linear_min_sel.i.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 16
  %72 = ptrtoint ptr %linear_min_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %linear_min_sel.i.i, align 4
  %div.i.i = udiv i32 %sub.i.i, %70
  %add.i.i = add nuw i32 %div.i.i, 1
  %n_voltages22.i.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 8
  %73 = ptrtoint ptr %n_voltages22.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add.i.i, ptr %n_voltages22.i.i, align 4
  br label %if.end47

if.else.i:                                        ; preds = %if.end15.i
  %num_levels.i.i = getelementptr inbounds %struct.scmi_voltage_info, ptr %call.i111, i32 0, i32 5
  %74 = ptrtoint ptr %num_levels.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_levels.i.i, align 4
  %n_voltages.i66.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 8
  %76 = ptrtoint ptr %n_voltages.i66.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %n_voltages.i66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i67.i = icmp ugt i32 %75, 1
  %levels_uv.i68.i = getelementptr inbounds %struct.scmi_voltage_info, ptr %call.i111, i32 0, i32 6
  %77 = ptrtoint ptr %levels_uv.i68.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %levels_uv.i68.i, align 4
  br i1 %cmp.i67.i, label %if.then.i.i, label %if.else.i70.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %volt_table.i.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 23
  %79 = ptrtoint ptr %volt_table.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %volt_table.i.i, align 4
  br label %if.end47

if.else.i70.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %78, align 4
  %fixed_uV.i69.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 17
  %82 = ptrtoint ptr %fixed_uV.i69.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %fixed_uV.i69.i, align 4
  br label %if.end47

if.end30.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sdev.i, align 4
  %dev.i.i = getelementptr inbounds %struct.scmi_device, ptr %84, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.26, i32 noundef %63, i32 noundef %61, i32 noundef %45) #9
  br label %cleanup

if.end47:                                         ; preds = %if.else.i70.i, %if.then.i.i, %if.else.i.i, %if.then7.i.i
  %scmi_reg_fixed_ops.sink.i.sink.i = phi ptr [ @scmi_reg_linear_ops, %if.else.i.i ], [ @scmi_reg_fixed_ops, %if.then7.i.i ], [ @scmi_reg_discrete_ops, %if.then.i.i ], [ @scmi_reg_fixed_ops, %if.else.i70.i ]
  %85 = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 5, i32 10
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %scmi_reg_fixed_ops.sink.i.sink.i, ptr %85, align 4
  %conf.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 6
  %87 = ptrtoint ptr %conf.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %dev1.i, ptr %conf.i, align 4
  %driver_data.i = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 6, i32 2
  %88 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %25, ptr %driver_data.i, align 4
  %call49 = call ptr @devm_regulator_register(ptr noundef %dev16, ptr noundef %desc.i, ptr noundef %conf.i) #6
  %rdev = getelementptr inbounds %struct.scmi_regulator, ptr %25, i32 0, i32 3
  %89 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call49, ptr %rdev, align 4
  %cmp.i113 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.then52, label %do.end57

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %rdev, align 4
  br label %cleanup

do.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %desc.i, align 4
  %93 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %25, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.12, ptr noundef %92, i32 noundef %94) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %if.then52, %if.end30.i, %if.end8.i.cleanup_crit_edge, %do.end7.i, %do.end.i, %for.body39.cleanup_crit_edge
  %inc = add nuw nsw i32 %d.0124, 1
  %exitcond.not = icmp eq i32 %inc, %call6
  br i1 %exitcond.not, label %cleanup.for.end61_crit_edge, label %cleanup.for.body39_crit_edge

cleanup.for.body39_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

cleanup.for.end61_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end61

for.end61:                                        ; preds = %cleanup.for.end61_crit_edge, %for.cond37.preheader.for.end61_crit_edge
  %driver_data.i114 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3, i32 8
  %95 = ptrtoint ptr %driver_data.i114 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i, ptr %driver_data.i114, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %for.end61, %if.then34, %devm_kcalloc.exit.cleanup63_crit_edge, %devm_kcalloc.exit.thread, %if.end15.cleanup63_crit_edge, %do.end12, %do.end, %if.then3, %entry.cleanup63_crit_edge
  %retval.0 = phi i32 [ %5, %if.then3 ], [ -12, %if.then34 ], [ 0, %for.end61 ], [ -19, %entry.cleanup63_crit_edge ], [ %call6, %do.end12 ], [ -22, %do.end ], [ -12, %if.end15.cleanup63_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup63_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ph) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scmi_regulator_remove(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13 = icmp sgt i32 %3, 0
  br i1 %cmp13, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sregv = getelementptr inbounds %struct.scmi_regulator_info, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %d.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %sregv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sregv, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %d.014
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end3:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %of_node = getelementptr inbounds %struct.scmi_regulator, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 4
  tail call void @of_node_put(ptr noundef %9) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %d.014, 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_scmi_regulator_of_node(ptr noundef %sdev, ptr noundef %ph, ptr noundef %np, ptr nocapture noundef readonly %rinfo) unnamed_addr #2 align 64 {
entry:
  %dom = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dom) #6
  %0 = ptrtoint ptr %dom to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dom, align 4, !annotation !87
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.15, ptr noundef nonnull %dom, i32 noundef 1, i32 noundef 0) #6
  %1 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dom, align 4
  %4 = ptrtoint ptr %rinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rinfo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %sregv = getelementptr inbounds %struct.scmi_regulator_info, ptr %rinfo, i32 0, i32 1
  %6 = ptrtoint ptr %sregv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sregv, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %9, null
  %dev6 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %10 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %full_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.16, i32 noundef %3, ptr noundef %11) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev6, i32 noundef 288, i32 noundef 3520) #6
  %12 = ptrtoint ptr %sregv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sregv, align 4
  %14 = ptrtoint ptr %dom to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dom, align 4
  %arrayidx9 = getelementptr ptr, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %arrayidx9, align 4
  %17 = load ptr, ptr %sregv, align 4
  %18 = load i32, ptr %dom, align 4
  %arrayidx11 = getelementptr ptr, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %if.end5.cleanup_crit_edge, label %if.end14

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %20, align 4
  %22 = ptrtoint ptr %sregv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sregv, align 4
  %24 = ptrtoint ptr %dom to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dom, align 4
  %arrayidx18 = getelementptr ptr, ptr %23, i32 %25
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx18, align 4
  %sdev19 = getelementptr inbounds %struct.scmi_regulator, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %sdev19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sdev, ptr %sdev19, align 4
  %29 = load ptr, ptr %sregv, align 4
  %arrayidx21 = getelementptr ptr, ptr %29, i32 %25
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx21, align 4
  %ph22 = getelementptr inbounds %struct.scmi_regulator, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ph22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ph, ptr %ph22, align 4
  %call23 = call ptr @of_node_get(ptr noundef %np) #6
  %33 = ptrtoint ptr %sregv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sregv, align 4
  %35 = ptrtoint ptr %dom to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dom, align 4
  %arrayidx25 = getelementptr ptr, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx25, align 4
  %of_node = getelementptr inbounds %struct.scmi_regulator, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %np, ptr %of_node, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_scmi_regulator_of_node.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@process_scmi_regulator_of_node, %cleanup)) #6
          to label %if.then32 [label %cleanup], !srcloc !90

if.then32:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dom to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dom, align 4
  %full_name34 = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %42 = ptrtoint ptr %full_name34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %full_name34, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_scmi_regulator_of_node.__UNIQUE_ID_ddebug288, ptr noundef %dev6, ptr noundef nonnull @.str.18, i32 noundef %41, ptr noundef %43) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end14, %if.end5.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %1, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dom) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reg_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = load ptr, ptr @voltage_ops, align 4
  %config_set = getelementptr inbounds %struct.scmi_voltage_proto_ops, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %config_set to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %config_set, align 4
  %ph = getelementptr inbounds %struct.scmi_regulator, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ph, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call, align 4
  %call1 = tail call i32 %2(ptr noundef %4, i32 noundef %6, i32 noundef 7) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reg_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = load ptr, ptr @voltage_ops, align 4
  %config_set = getelementptr inbounds %struct.scmi_voltage_proto_ops, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %config_set to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %config_set, align 4
  %ph = getelementptr inbounds %struct.scmi_regulator, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ph, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call, align 4
  %call1 = tail call i32 %2(ptr noundef %4, i32 noundef %6, i32 noundef 0) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reg_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !87
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %1 = load ptr, ptr @voltage_ops, align 4
  %config_get = getelementptr inbounds %struct.scmi_voltage_proto_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config_get, align 4
  %ph = getelementptr inbounds %struct.scmi_regulator, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ph, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %call1 = call i32 %3(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sdev = getelementptr inbounds %struct.scmi_regulator, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  %dev = getelementptr inbounds %struct.scmi_device, ptr %9, i32 0, i32 3
  %desc = getelementptr inbounds %struct.scmi_regulator, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call1, ptr noundef %11) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config, align 4
  %and = and i32 %13, 7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %and, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reg_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %ops = getelementptr inbounds %struct.scmi_regulator, ptr %call, i32 0, i32 5, i32 10
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 %3(ptr noundef %rdev, i32 noundef %selector) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = load ptr, ptr @voltage_ops, align 4
  %level_set = getelementptr inbounds %struct.scmi_voltage_proto_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %level_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %level_set, align 4
  %ph = getelementptr inbounds %struct.scmi_regulator, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ph, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 4
  %call2 = tail call i32 %6(ptr noundef %8, i32 noundef %10, i32 noundef 0, i32 noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_reg_get_voltage_sel(ptr noundef %rdev) #2 align 64 {
entry:
  %volt_uV = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %volt_uV) #6
  %0 = ptrtoint ptr %volt_uV to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %volt_uV, align 4, !annotation !87
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %1 = load ptr, ptr @voltage_ops, align 4
  %level_get = getelementptr inbounds %struct.scmi_voltage_proto_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %level_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %level_get, align 4
  %ph = getelementptr inbounds %struct.scmi_regulator, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ph, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %call1 = call i32 %3(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %volt_uV) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.scmi_regulator, ptr %call, i32 0, i32 5, i32 10
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %map_voltage = getelementptr inbounds %struct.regulator_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %map_voltage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map_voltage, align 4
  %12 = ptrtoint ptr %volt_uV to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %volt_uV, align 4
  %call2 = call i32 %11(ptr noundef %rdev, i32 noundef %13, i32 noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %volt_uV) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_scmi_regulator__289_419_scmi_drv_init6, !1, !"__initcall__kmod_scmi_regulator__289_419_scmi_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/scmi-regulator.c", i32 419, i32 1}
!2 = !{ptr @__exitcall_scmi_drv_exit, !1, !"__exitcall_scmi_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/regulator/scmi-regulator.c", i32 421, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/regulator/scmi-regulator.c", i32 422, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/regulator/scmi-regulator.c", i32 423, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/scmi-regulator.c", i32 413, i32 11}
!13 = !{ptr @scmi_drv, !14, !"scmi_drv", i1 false, i1 false}
!14 = !{!"../drivers/regulator/scmi-regulator.c", i32 412, i32 27}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/scmi-regulator.c", i32 316, i32 4}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @scmi_regulator_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @scmi_regulator_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/scmi-regulator.c", i32 320, i32 4}
!25 = !{ptr @scmi_regulator_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @scmi_regulator_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/regulator/scmi-regulator.c", i32 346, i32 50}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/regulator/scmi-regulator.c", i32 380, i32 3}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @scmi_regulator_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @scmi_regulator_probe._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @voltage_ops, !35, !"voltage_ops", i1 false, i1 false}
!35 = !{!"../drivers/regulator/scmi-regulator.c", i32 36, i32 45}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/scmi-regulator.c", i32 262, i32 33}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/scmi-regulator.c", i32 270, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @process_scmi_regulator_of_node._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @process_scmi_regulator_of_node._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/scmi-regulator.c", i32 290, i32 2}
!45 = !{ptr @process_scmi_regulator_of_node.__UNIQUE_ID_ddebug288, !44, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/regulator/scmi-regulator.c", i32 209, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @scmi_regulator_common_init._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @scmi_regulator_common_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/regulator/scmi-regulator.c", i32 221, i32 3}
!54 = !{ptr @scmi_regulator_common_init._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @scmi_regulator_common_init._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/regulator/scmi-regulator.c", i32 226, i32 52}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/regulator/scmi-regulator.c", i32 155, i32 3}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @scmi_config_linear_regulator_mappings._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @scmi_config_linear_regulator_mappings._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @scmi_reg_fixed_ops, !64, !"scmi_reg_fixed_ops", i1 false, i1 false}
!64 = !{!"../drivers/regulator/scmi-regulator.c", i32 112, i32 35}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/scmi-regulator.c", i32 77, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @scmi_reg_is_enabled._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @scmi_reg_is_enabled._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @scmi_reg_linear_ops, !71, !"scmi_reg_linear_ops", i1 false, i1 false}
!71 = !{!"../drivers/regulator/scmi-regulator.c", i32 118, i32 35}
!72 = !{ptr @scmi_reg_discrete_ops, !73, !"scmi_reg_discrete_ops", i1 false, i1 false}
!73 = !{!"../drivers/regulator/scmi-regulator.c", i32 128, i32 35}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/regulator/scmi-regulator.c", i32 407, i32 28}
!76 = !{ptr @scmi_regulator_id_table, !77, !"scmi_regulator_id_table", i1 false, i1 false}
!77 = !{!"../drivers/regulator/scmi-regulator.c", i32 406, i32 36}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i8 0, i8 2}
!90 = !{i64 2148964410, i64 2148964415, i64 2148964428, i64 2148964472, i64 2148964506, i64 2148964527}
