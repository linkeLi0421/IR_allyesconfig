; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ds2760_battery.c_pt.bc'
source_filename = "../drivers/power/supply/ds2760_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
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
%struct.ds2760_device_info = type { ptr, i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.power_supply_desc, ptr, %struct.delayed_work, %struct.delayed_work, %struct.notifier_block }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }

@__param_str_cache_time = internal constant [26 x i8] c"ds2760_battery.cache_time\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@cache_time = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_cache_time = internal constant %struct.kernel_param { ptr @__param_str_cache_time, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @cache_time } }, section "__param", align 4
@__UNIQUE_ID_cache_timetype288 = internal constant [40 x i8] c"ds2760_battery.parmtype=cache_time:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cache_time289 = internal constant [58 x i8] c"ds2760_battery.parm=cache_time:cache time in milliseconds\00", section ".modinfo", align 1
@__param_str_pmod_enabled = internal constant [28 x i8] c"ds2760_battery.pmod_enabled\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@pmod_enabled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_pmod_enabled = internal constant %struct.kernel_param { ptr @__param_str_pmod_enabled, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @pmod_enabled } }, section "__param", align 4
@__UNIQUE_ID_pmod_enabledtype290 = internal constant [42 x i8] c"ds2760_battery.parmtype=pmod_enabled:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_pmod_enabled291 = internal constant [49 x i8] c"ds2760_battery.parm=pmod_enabled:PMOD enable bit\00", section ".modinfo", align 1
@__param_str_rated_capacity = internal constant [30 x i8] c"ds2760_battery.rated_capacity\00", align 1
@rated_capacity = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_rated_capacity = internal constant %struct.kernel_param { ptr @__param_str_rated_capacity, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @rated_capacity } }, section "__param", align 4
@__UNIQUE_ID_rated_capacitytype292 = internal constant [44 x i8] c"ds2760_battery.parmtype=rated_capacity:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rated_capacity293 = internal constant [75 x i8] c"ds2760_battery.parm=rated_capacity:rated battery capacity, 10*mAh or index\00", section ".modinfo", align 1
@__param_str_current_accum = internal constant [29 x i8] c"ds2760_battery.current_accum\00", align 1
@current_accum = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_current_accum = internal constant %struct.kernel_param { ptr @__param_str_current_accum, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @current_accum } }, section "__param", align 4
@__UNIQUE_ID_current_accumtype294 = internal constant [43 x i8] c"ds2760_battery.parmtype=current_accum:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_current_accum295 = internal constant [60 x i8] c"ds2760_battery.parm=current_accum:current accumulator value\00", section ".modinfo", align 1
@__initcall__kmod_ds2760_battery__300_809_w1_ds2760_family_init6 = internal global ptr @w1_ds2760_family_init, section ".initcall6.init", align 4
@w1_ds2760_family = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 48, ptr @w1_ds2760_fops, ptr @w1_ds2760_of_ids, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_ds2760_family_exit = internal global ptr @w1_ds2760_family_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [127 x i8] c"ds2760_battery.author=Szabolcs Gyurko <szabolcs.gyurko@tlt.hu>, Matt Reimer <mreimer@vpop.net>, Anton Vorontsov <cbou@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [74 x i8] c"ds2760_battery.description=1-wire Driver Dallas 2760 battery monitor chip\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [56 x i8] c"ds2760_battery.file=drivers/power/supply/ds2760_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [27 x i8] c"ds2760_battery.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [36 x i8] c"ds2760_battery.alias=w1-family-0x30\00", section ".modinfo", align 1
@w1_ds2760_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_ds2760_add_slave, ptr @w1_ds2760_remove_slave, ptr @w1_ds2760_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_ds2760_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,ds2760\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@w1_ds2760_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_ds2760_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ds2760-battery.%d\00", [46 x i8] zeroinitializer }, align 32
@ds2760_battery_props = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 12, i32 17, i32 22, i32 24, i32 25, i32 26, i32 52, i32 60, i32 47], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maxim,pmod-enabled\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"maxim,cache-time-ms\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rated-capacity-microamp-hours\00", [34 x i8] zeroinitializer }, align 32
@w1_ds2760_add_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 752, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register battery\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"w1_ds2760_add_slave\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/ds2760_battery.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w1_ds2760_add_slave._entry_ptr = internal global ptr @w1_ds2760_add_slave._entry, section ".printk_index", align 4
@w1_ds2760_add_slave.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&di->monitor_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@w1_ds2760_add_slave.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&di->monitor_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@w1_ds2760_add_slave.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&di->set_charged_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@w1_ds2760_add_slave.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&di->set_charged_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@ds2760_battery_external_power_changed.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.6, ptr @.str.18, i8 0, i8 123, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds2760_battery\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ds2760_battery_external_power_changed\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ds2760_battery_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 284, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"call to w1_ds2760_read failed (0x%p)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ds2760_battery_read_status\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ds2760_battery_read_status._entry_ptr = internal global ptr @ds2760_battery_read_status._entry, section ".printk_index", align 4
@rated_capacities = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 920, i32 920, i32 920, i32 920, i32 1440, i32 1440, i32 1440, i32 1440, i32 2880, i32 2880, i32 2880, i32 2880], [44 x i8] zeroinitializer }, align 32
@ds2760_battery_set_current_accum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 386, ptr @.str.21, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ACR write failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ds2760_battery_set_current_accum\00", [63 x i8] zeroinitializer }, align 32
@ds2760_battery_set_current_accum._entry_ptr = internal global ptr @ds2760_battery_set_current_accum._entry, section ".printk_index", align 4
@ds2760_battery_work.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.24, ptr @.str.6, ptr @.str.18, i8 0, i8 121, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ds2760_battery_work\00", [44 x i8] zeroinitializer }, align 32
@ds2760_battery_update_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 405, ptr @.str.27, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"not enough power to charge\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ds2760_battery_update_status\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@ds2760_battery_update_status._entry_ptr = internal global ptr @ds2760_battery_update_status._entry, section ".printk_index", align 4
@ds2760_battery_set_charged_work.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.28, ptr @.str.6, ptr @.str.18, i8 0, i8 126, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ds2760_battery_set_charged_work\00", [32 x i8] zeroinitializer }, align 32
@ds2760_battery_set_charged_work.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.28, ptr @.str.6, ptr @.str.29, i8 0, i8 -125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: bias = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@w1_ds2760_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @w1_ds2760_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@w1_ds2760_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_w1_slave, ptr null], [24 x i8] zeroinitializer }, align 32
@bin_attr_w1_slave = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 64, ptr null, ptr null, ptr @w1_slave_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w1_slave\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 12, i64 17, i64 22, i64 24, i64 25, i64 26, i64 47, i64 52, i64 60]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 26]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6]
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"cache_time\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 34, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"pmod_enabled\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 38, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"rated_capacity\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 42, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"current_accum\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 46, i32 21 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"w1_ds2760_family\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 804, i32 25 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"w1_ds2760_fops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 798, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"w1_ds2760_of_ids\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 792, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"w1_ds2760_groups\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 216, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 692, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"ds2760_battery_props\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 634, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 714, i32 44 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 718, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 722, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 752, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 757, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 758, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 494, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 283, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"rated_capacities\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 222, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 386, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 484, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 404, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 506, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 524, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"w1_ds2760_group\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 212, i32 37 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c"w1_ds2760_bin_attrs\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 207, i32 30 }
@___asan_gen_.174 = private unnamed_addr constant [18 x i8] c"bin_attr_w1_slave\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [41 x i8] c"../drivers/power/supply/ds2760_battery.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 205, i32 8 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_cache_time289, ptr @__UNIQUE_ID_cache_timetype288, ptr @__UNIQUE_ID_current_accum295, ptr @__UNIQUE_ID_current_accumtype294, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_pmod_enabled291, ptr @__UNIQUE_ID_pmod_enabledtype290, ptr @__UNIQUE_ID_rated_capacity293, ptr @__UNIQUE_ID_rated_capacitytype292, ptr @__exitcall_w1_ds2760_family_exit, ptr @__initcall__kmod_ds2760_battery__300_809_w1_ds2760_family_init6, ptr @__param_cache_time, ptr @__param_current_accum, ptr @__param_pmod_enabled, ptr @__param_rated_capacity, ptr @ds2760_battery_read_status._entry, ptr @ds2760_battery_read_status._entry_ptr, ptr @ds2760_battery_set_current_accum._entry, ptr @ds2760_battery_set_current_accum._entry_ptr, ptr @ds2760_battery_update_status._entry, ptr @ds2760_battery_update_status._entry_ptr, ptr @w1_ds2760_add_slave._entry, ptr @w1_ds2760_add_slave._entry_ptr, ptr @w1_ds2760_family_exit, ptr @cache_time, ptr @pmod_enabled, ptr @rated_capacity, ptr @current_accum, ptr @w1_ds2760_family, ptr @w1_ds2760_fops, ptr @w1_ds2760_of_ids, ptr @w1_ds2760_groups, ptr @.str, ptr @ds2760_battery_props, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @w1_ds2760_add_slave.__key, ptr @.str.9, ptr @w1_ds2760_add_slave.__key.10, ptr @.str.11, ptr @w1_ds2760_add_slave.__key.12, ptr @.str.13, ptr @w1_ds2760_add_slave.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @rated_capacities, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @w1_ds2760_group, ptr @w1_ds2760_bin_attrs, ptr @bin_attr_w1_slave, ptr @.str.30], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmod_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rated_capacity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_accum to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2760_family to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2760_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2760_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2760_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2760_battery_props to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2760_add_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2760_add_slave.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2760_add_slave.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2760_add_slave.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2760_add_slave.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2760_battery_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rated_capacities to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2760_battery_set_current_accum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2760_battery_update_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2760_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2760_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_w1_slave to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_ds2760_family_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_ds2760_family) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_ds2760_family_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_ds2760_family) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_ds2760_add_slave(ptr noundef %sl) #2 align 64 {
entry:
  %acr.i = alloca [2 x i8], align 1
  %rated_capacity.addr.i = alloca i8, align 1
  %status.addr.i = alloca i8, align 1
  %psy_cfg = alloca %struct.power_supply_config, align 4
  %name = alloca [32 x i8], align 1
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev1 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #7
  %1 = call ptr @memset(ptr %name, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 404, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.success_crit_edge, label %if.end

entry.success_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %success

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 30
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %3)
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i, align 4
  %bat_desc = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 19
  %5 = ptrtoint ptr %bat_desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %bat_desc, align 4
  %type = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %properties = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 19, i32 4
  %7 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ds2760_battery_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 19, i32 5
  %8 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 19, i32 6
  %9 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ds2760_battery_get_property, ptr %get_property, align 4
  %set_property = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 19, i32 7
  %10 = ptrtoint ptr %set_property to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ds2760_battery_set_property, ptr %set_property, align 4
  %property_is_writeable = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 19, i32 8
  %11 = ptrtoint ptr %property_is_writeable to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ds2760_battery_property_is_writeable, ptr %property_is_writeable, align 4
  %set_charged = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 19, i32 10
  %12 = ptrtoint ptr %set_charged to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ds2760_battery_set_charged, ptr %set_charged, align 4
  %external_power_changed = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 19, i32 9
  %13 = ptrtoint ptr %external_power_changed to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ds2760_battery_external_power_changed, ptr %external_power_changed, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %14 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %drv_data, align 4
  %of_node = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %if.end.if.end33_crit_edge, label %if.then16

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then16:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %tmp, align 4, !annotation !129
  %18 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %psy_cfg, align 4
  %call.i168 = call ptr @of_find_property(ptr noundef nonnull %16, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i168, null
  br i1 %tobool.i.not, label %if.then21, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  store i8 1, ptr @pmod_enabled, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then16.if.end22_crit_edge
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.2, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool25.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool25.not, label %if.then26, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp, align 4
  store i32 %22, ptr @cache_time, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22.if.end27_crit_edge
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call.i.i169 = call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull %tmp, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i169)
  %tobool30.not = icmp sgt i32 %call.i.i169, -1
  br i1 %tobool30.not, label %if.then31, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp, align 4
  %div = udiv i32 %26, 10
  store i32 %div, ptr @rated_capacity, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end.if.end33_crit_edge
  %charge_status = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 16
  %27 = ptrtoint ptr %charge_status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %charge_status, align 4
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %28 = ptrtoint ptr %family_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %family_data, align 4
  call fastcc void @ds2760_battery_read_status(ptr noundef nonnull %call.i)
  %arrayidx = getelementptr %struct.ds2760_device_info, ptr %call.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %31 = load i8, ptr @pmod_enabled, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool35.not = icmp eq i8 %31, 0
  %32 = and i8 %30, -33
  %masksel = select i1 %tobool35.not, i8 0, i8 32
  %status.0 = or i8 %masksel, %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.addr.i)
  %33 = ptrtoint ptr %status.addr.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %status.0, ptr %status.addr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %status.0)
  %cmp.i = icmp eq i8 %30, %status.0
  br i1 %cmp.i, label %if.end33.ds2760_battery_write_status.exit_crit_edge, label %if.end.i

if.end33.ds2760_battery_write_status.exit_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2760_battery_write_status.exit

if.end.i:                                         ; preds = %if.end33
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %call.i.i170 = call fastcc i32 @w1_ds2760_io(ptr noundef %35, ptr noundef nonnull %status.addr.i, i32 noundef 49, i32 noundef 1, i32 noundef 1) #7
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %if.end.i.ds2760_battery_write_status.exit_crit_edge, label %if.end.i.i.i

if.end.i.ds2760_battery_write_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2760_battery_write_status.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 -80
  %master.i.i.i = getelementptr i8, ptr %37, i32 -12
  %38 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master.i.i.i, align 4
  %bus_mutex.i.i.i = getelementptr inbounds %struct.w1_master, ptr %39, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %bus_mutex.i.i.i, i32 noundef 0) #7
  %call.i.i.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i.i.i, label %if.end.i.i.i.w1_ds2760_store_eeprom.exit.i_crit_edge

if.end.i.i.i.w1_ds2760_store_eeprom.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w1_ds2760_store_eeprom.exit.i

if.then1.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master.i.i.i, align 4
  call void @w1_write_8(ptr noundef %41, i8 noundef zeroext 72) #7
  %42 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master.i.i.i, align 4
  call void @w1_write_8(ptr noundef %43, i8 noundef zeroext 48) #7
  br label %w1_ds2760_store_eeprom.exit.i

w1_ds2760_store_eeprom.exit.i:                    ; preds = %if.then1.i.i.i, %if.end.i.i.i.w1_ds2760_store_eeprom.exit.i_crit_edge
  %44 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %master.i.i.i, align 4
  %bus_mutex7.i.i.i = getelementptr inbounds %struct.w1_master, ptr %45, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex7.i.i.i) #7
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr.i = load ptr, ptr %call.i, align 4
  %tobool.not.i.i10.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i.i10.i, label %w1_ds2760_store_eeprom.exit.i.ds2760_battery_write_status.exit_crit_edge, label %if.end.i.i16.i

w1_ds2760_store_eeprom.exit.i.ds2760_battery_write_status.exit_crit_edge: ; preds = %w1_ds2760_store_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2760_battery_write_status.exit

if.end.i.i16.i:                                   ; preds = %w1_ds2760_store_eeprom.exit.i
  %add.ptr.i.i11.i = getelementptr i8, ptr %.pr.i, i32 -80
  %master.i.i12.i = getelementptr i8, ptr %.pr.i, i32 -12
  %47 = ptrtoint ptr %master.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master.i.i12.i, align 4
  %bus_mutex.i.i13.i = getelementptr inbounds %struct.w1_master, ptr %48, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %bus_mutex.i.i13.i, i32 noundef 0) #7
  %call.i.i14.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i11.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %cmp.i.i15.i = icmp eq i32 %call.i.i14.i, 0
  br i1 %cmp.i.i15.i, label %if.then1.i.i17.i, label %if.end.i.i16.i.if.end5.i.i19.i_crit_edge

if.end.i.i16.i.if.end5.i.i19.i_crit_edge:         ; preds = %if.end.i.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i19.i

if.then1.i.i17.i:                                 ; preds = %if.end.i.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %master.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %master.i.i12.i, align 4
  call void @w1_write_8(ptr noundef %50, i8 noundef zeroext -72) #7
  %51 = ptrtoint ptr %master.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %master.i.i12.i, align 4
  call void @w1_write_8(ptr noundef %52, i8 noundef zeroext 48) #7
  br label %if.end5.i.i19.i

if.end5.i.i19.i:                                  ; preds = %if.then1.i.i17.i, %if.end.i.i16.i.if.end5.i.i19.i_crit_edge
  %53 = ptrtoint ptr %master.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %master.i.i12.i, align 4
  %bus_mutex7.i.i18.i = getelementptr inbounds %struct.w1_master, ptr %54, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex7.i.i18.i) #7
  br label %ds2760_battery_write_status.exit

ds2760_battery_write_status.exit:                 ; preds = %if.end5.i.i19.i, %w1_ds2760_store_eeprom.exit.i.ds2760_battery_write_status.exit_crit_edge, %if.end.i.ds2760_battery_write_status.exit_crit_edge, %if.end33.ds2760_battery_write_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.addr.i)
  %55 = load i32, ptr @rated_capacity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool41.not = icmp eq i32 %55, 0
  br i1 %tobool41.not, label %ds2760_battery_write_status.exit.if.end44_crit_edge, label %if.then42

ds2760_battery_write_status.exit.if.end44_crit_edge: ; preds = %ds2760_battery_write_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then42:                                        ; preds = %ds2760_battery_write_status.exit
  %conv43 = trunc i32 %55 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rated_capacity.addr.i)
  %56 = ptrtoint ptr %rated_capacity.addr.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv43, ptr %rated_capacity.addr.i, align 1
  %arrayidx.i171 = getelementptr %struct.ds2760_device_info, ptr %call.i, i32 0, i32 2, i32 50
  %57 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i171, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %conv43)
  %cmp.i172 = icmp eq i8 %58, %conv43
  br i1 %cmp.i172, label %if.then42.ds2760_battery_write_rated_capacity.exit_crit_edge, label %if.end.i175

if.then42.ds2760_battery_write_rated_capacity.exit_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2760_battery_write_rated_capacity.exit

if.end.i175:                                      ; preds = %if.then42
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %call.i.i173 = call fastcc i32 @w1_ds2760_io(ptr noundef %60, ptr noundef nonnull %rated_capacity.addr.i, i32 noundef 50, i32 noundef 1, i32 noundef 1) #7
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %tobool.not.i.i.i174 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i.i174, label %if.end.i175.ds2760_battery_write_rated_capacity.exit_crit_edge, label %if.end.i.i.i181

if.end.i175.ds2760_battery_write_rated_capacity.exit_crit_edge: ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2760_battery_write_rated_capacity.exit

if.end.i.i.i181:                                  ; preds = %if.end.i175
  %add.ptr.i.i.i176 = getelementptr i8, ptr %62, i32 -80
  %master.i.i.i177 = getelementptr i8, ptr %62, i32 -12
  %63 = ptrtoint ptr %master.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %master.i.i.i177, align 4
  %bus_mutex.i.i.i178 = getelementptr inbounds %struct.w1_master, ptr %64, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %bus_mutex.i.i.i178, i32 noundef 0) #7
  %call.i.i.i179 = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i.i176) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i179)
  %cmp.i.i.i180 = icmp eq i32 %call.i.i.i179, 0
  br i1 %cmp.i.i.i180, label %if.then1.i.i.i182, label %if.end.i.i.i181.w1_ds2760_store_eeprom.exit.i186_crit_edge

if.end.i.i.i181.w1_ds2760_store_eeprom.exit.i186_crit_edge: ; preds = %if.end.i.i.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %w1_ds2760_store_eeprom.exit.i186

if.then1.i.i.i182:                                ; preds = %if.end.i.i.i181
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %master.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %master.i.i.i177, align 4
  call void @w1_write_8(ptr noundef %66, i8 noundef zeroext 72) #7
  %67 = ptrtoint ptr %master.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %master.i.i.i177, align 4
  call void @w1_write_8(ptr noundef %68, i8 noundef zeroext 48) #7
  br label %w1_ds2760_store_eeprom.exit.i186

w1_ds2760_store_eeprom.exit.i186:                 ; preds = %if.then1.i.i.i182, %if.end.i.i.i181.w1_ds2760_store_eeprom.exit.i186_crit_edge
  %69 = ptrtoint ptr %master.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %master.i.i.i177, align 4
  %bus_mutex7.i.i.i183 = getelementptr inbounds %struct.w1_master, ptr %70, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex7.i.i.i183) #7
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr.i184 = load ptr, ptr %call.i, align 4
  %tobool.not.i.i10.i185 = icmp eq ptr %.pr.i184, null
  br i1 %tobool.not.i.i10.i185, label %w1_ds2760_store_eeprom.exit.i186.ds2760_battery_write_rated_capacity.exit_crit_edge, label %if.end.i.i16.i192

w1_ds2760_store_eeprom.exit.i186.ds2760_battery_write_rated_capacity.exit_crit_edge: ; preds = %w1_ds2760_store_eeprom.exit.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2760_battery_write_rated_capacity.exit

if.end.i.i16.i192:                                ; preds = %w1_ds2760_store_eeprom.exit.i186
  %add.ptr.i.i11.i187 = getelementptr i8, ptr %.pr.i184, i32 -80
  %master.i.i12.i188 = getelementptr i8, ptr %.pr.i184, i32 -12
  %72 = ptrtoint ptr %master.i.i12.i188 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %master.i.i12.i188, align 4
  %bus_mutex.i.i13.i189 = getelementptr inbounds %struct.w1_master, ptr %73, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %bus_mutex.i.i13.i189, i32 noundef 0) #7
  %call.i.i14.i190 = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i11.i187) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i190)
  %cmp.i.i15.i191 = icmp eq i32 %call.i.i14.i190, 0
  br i1 %cmp.i.i15.i191, label %if.then1.i.i17.i193, label %if.end.i.i16.i192.if.end5.i.i19.i195_crit_edge

if.end.i.i16.i192.if.end5.i.i19.i195_crit_edge:   ; preds = %if.end.i.i16.i192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i19.i195

if.then1.i.i17.i193:                              ; preds = %if.end.i.i16.i192
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %master.i.i12.i188 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %master.i.i12.i188, align 4
  call void @w1_write_8(ptr noundef %75, i8 noundef zeroext -72) #7
  %76 = ptrtoint ptr %master.i.i12.i188 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %master.i.i12.i188, align 4
  call void @w1_write_8(ptr noundef %77, i8 noundef zeroext 48) #7
  br label %if.end5.i.i19.i195

if.end5.i.i19.i195:                               ; preds = %if.then1.i.i17.i193, %if.end.i.i16.i192.if.end5.i.i19.i195_crit_edge
  %78 = ptrtoint ptr %master.i.i12.i188 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %master.i.i12.i188, align 4
  %bus_mutex7.i.i18.i194 = getelementptr inbounds %struct.w1_master, ptr %79, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex7.i.i18.i194) #7
  br label %ds2760_battery_write_rated_capacity.exit

ds2760_battery_write_rated_capacity.exit:         ; preds = %if.end5.i.i19.i195, %w1_ds2760_store_eeprom.exit.i186.ds2760_battery_write_rated_capacity.exit_crit_edge, %if.end.i175.ds2760_battery_write_rated_capacity.exit_crit_edge, %if.then42.ds2760_battery_write_rated_capacity.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rated_capacity.addr.i)
  br label %if.end44

if.end44:                                         ; preds = %ds2760_battery_write_rated_capacity.exit, %ds2760_battery_write_status.exit.if.end44_crit_edge
  %80 = load i32, ptr @current_accum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool45.not = icmp eq i32 %80, 0
  br i1 %tobool45.not, label %if.end44.if.end47_crit_edge, label %if.then46

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then46:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %acr.i) #7
  %81 = getelementptr inbounds [2 x i8], ptr %acr.i, i32 0, i32 1
  %mul.i = shl i32 %80, 2
  %div.i = udiv i32 %mul.i, 1000
  %shr.i = lshr i32 %div.i, 8
  %conv.i = trunc i32 %shr.i to i8
  %82 = ptrtoint ptr %acr.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i, ptr %acr.i, align 1
  %conv1.i = trunc i32 %div.i to i8
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv1.i, ptr %81, align 1
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  %call.i.i196 = call fastcc i32 @w1_ds2760_io(ptr noundef %85, ptr noundef nonnull %acr.i, i32 noundef 16, i32 noundef 2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i196)
  %cmp.i197 = icmp slt i32 %call.i.i196, 2
  br i1 %cmp.i197, label %do.end.i, label %if.then46.ds2760_battery_set_current_accum.exit_crit_edge

if.then46.ds2760_battery_set_current_accum.exit_crit_edge: ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2760_battery_set_current_accum.exit

do.end.i:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.22) #10
  br label %ds2760_battery_set_current_accum.exit

ds2760_battery_set_current_accum.exit:            ; preds = %do.end.i, %if.then46.ds2760_battery_set_current_accum.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %acr.i) #7
  br label %if.end47

if.end47:                                         ; preds = %ds2760_battery_set_current_accum.exit, %if.end44.if.end47_crit_edge
  %call49 = call ptr @power_supply_register(ptr noundef %dev1, ptr noundef %bat_desc, ptr noundef nonnull %psy_cfg) #7
  %bat = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 18
  %88 = ptrtoint ptr %bat to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call49, ptr %bat, align 4
  %cmp.i199 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %do.end, label %do.body58

do.end:                                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.4) #10
  %91 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bat, align 4
  %93 = ptrtoint ptr %92 to i32
  br label %success

do.body58:                                        ; preds = %if.end47
  %monitor_work = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 21
  call void @__init_work(ptr noundef %monitor_work, i32 noundef 0) #7
  %94 = ptrtoint ptr %monitor_work to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -64, ptr %monitor_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 21, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @w1_ds2760_add_slave.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry65 = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 21, i32 0, i32 1
  %95 = ptrtoint ptr %entry65 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %entry65, ptr %entry65, align 4
  %prev.i = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 21, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %entry65, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 21, i32 0, i32 2
  %97 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @ds2760_battery_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 21, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @w1_ds2760_add_slave.__key.10) #7
  %set_charged_work = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 22
  call void @__init_work(ptr noundef %set_charged_work, i32 noundef 0) #7
  %98 = ptrtoint ptr %set_charged_work to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -64, ptr %set_charged_work, align 4
  %lockdep_map86 = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 22, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map86, ptr noundef nonnull @.str.13, ptr noundef nonnull @w1_ds2760_add_slave.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry89 = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 22, i32 0, i32 1
  %99 = ptrtoint ptr %entry89 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %entry89, ptr %entry89, align 4
  %prev.i200 = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 22, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %prev.i200 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %entry89, ptr %prev.i200, align 4
  %func92 = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 22, i32 0, i32 2
  %101 = ptrtoint ptr %func92 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @ds2760_battery_set_charged_work, ptr %func92, align 4
  %timer97 = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 22, i32 1
  call void @init_timer_key(ptr noundef %timer97, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull @w1_ds2760_add_slave.__key.14) #7
  %call103 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull %name, i32 noundef 655370, i32 noundef 1) #7
  %monitor_wqueue = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 20
  %102 = ptrtoint ptr %monitor_wqueue to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call103, ptr %monitor_wqueue, align 4
  %tobool105.not = icmp eq ptr %call103, null
  br i1 %tobool105.not, label %if.then106, label %if.end107

if.then106:                                       ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bat, align 4
  call void @power_supply_unregister(ptr noundef %104) #7
  br label %success

if.end107:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %call.i201 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %call103, ptr noundef %monitor_work, i32 noundef 100) #7
  %pm_notifier = getelementptr inbounds %struct.ds2760_device_info, ptr %call.i, i32 0, i32 23
  %105 = ptrtoint ptr %pm_notifier to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @ds2760_pm_notifier, ptr %pm_notifier, align 4
  %call112 = call i32 @register_pm_notifier(ptr noundef %pm_notifier) #7
  br label %success

success:                                          ; preds = %if.end107, %if.then106, %do.end, %entry.success_crit_edge
  %retval2.0 = phi i32 [ %93, %do.end ], [ 0, %if.end107 ], [ -3, %if.then106 ], [ -12, %entry.success_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_ds2760_remove_slave(ptr nocapture noundef readonly %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %pm_notifier = getelementptr inbounds %struct.ds2760_device_info, ptr %1, i32 0, i32 23
  %call = tail call i32 @unregister_pm_notifier(ptr noundef %pm_notifier) #7
  %monitor_work = getelementptr inbounds %struct.ds2760_device_info, ptr %1, i32 0, i32 21
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %monitor_work) #7
  %set_charged_work = getelementptr inbounds %struct.ds2760_device_info, ptr %1, i32 0, i32 22
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %set_charged_work) #7
  %monitor_wqueue = getelementptr inbounds %struct.ds2760_device_info, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %monitor_wqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %monitor_wqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #7
  %bat = getelementptr inbounds %struct.ds2760_device_info, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bat, align 4
  tail call void @power_supply_unregister(ptr noundef %5) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2760_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %psp)
  %cond = icmp eq i32 %psp, 0
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %charge_status = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 16
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %entry
  tail call fastcc void @ds2760_battery_read_status(ptr noundef %call)
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %sw.epilog.cleanup_crit_edge [
    i32 12, label %sw.bb2
    i32 17, label %sw.bb3
    i32 22, label %sw.bb4
    i32 24, label %sw.bb5
    i32 25, label %sw.bb6
    i32 26, label %sw.bb7
    i32 52, label %sw.bb8
    i32 60, label %sw.bb9
    i32 47, label %sw.bb10
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %voltage_uV = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 4
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %current_uA = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 6
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %rated_capacity = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 11
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %full_active_uAh = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 13
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %empty_uAh = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 14
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %accum_current_uAh = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 8
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %temp_C = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 10
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %life_sec = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 15
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %rem_capacity = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %voltage_uV.sink = phi ptr [ %voltage_uV, %sw.bb2 ], [ %current_uA, %sw.bb3 ], [ %rated_capacity, %sw.bb4 ], [ %full_active_uAh, %sw.bb5 ], [ %empty_uAh, %sw.bb6 ], [ %accum_current_uAh, %sw.bb7 ], [ %temp_C, %sw.bb8 ], [ %life_sec, %sw.bb9 ], [ %rem_capacity, %sw.bb10 ], [ %charge_status, %sw.bb ]
  %1 = ptrtoint ptr %voltage_uV.sink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %voltage_uV.sink, align 4
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2760_battery_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  %acr.i = alloca [2 x i8], align 1
  %tmp.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 24, label %sw.bb
    i32 26, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %div = sdiv i32 %2, 1000
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #7
  %3 = getelementptr inbounds [2 x i8], ptr %tmp.i, i32 0, i32 1
  %4 = lshr i32 %div, 8
  %conv.i = trunc i32 %4 to i8
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %tmp.i, align 1
  %conv1.i = trunc i32 %div to i8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1.i, ptr %3, align 1
  %arrayidx3.i = getelementptr %struct.ds2760_device_info, ptr %call, i32 0, i32 2, i32 32
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %conv.i)
  %cmp.i = icmp eq i8 %8, %conv.i
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %arrayidx9.i = getelementptr %struct.ds2760_device_info, ptr %call, i32 0, i32 2, i32 33
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %conv1.i)
  %cmp11.i = icmp eq i8 %10, %conv1.i
  br i1 %cmp11.i, label %land.lhs.true.i.ds2760_battery_write_active_full.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i.ds2760_battery_write_active_full.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2760_battery_write_active_full.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %call.i.i = call fastcc i32 @w1_ds2760_io(ptr noundef %12, ptr noundef nonnull %tmp.i, i32 noundef 32, i32 noundef 2, i32 noundef 1) #7
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.end.i.w1_ds2760_recall_eeprom.exit.i_crit_edge, label %if.end.i.i.i

if.end.i.w1_ds2760_recall_eeprom.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w1_ds2760_recall_eeprom.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -80
  %master.i.i.i = getelementptr i8, ptr %14, i32 -12
  %15 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master.i.i.i, align 4
  %bus_mutex.i.i.i = getelementptr inbounds %struct.w1_master, ptr %16, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %bus_mutex.i.i.i, i32 noundef 0) #7
  %call.i.i.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i.i.i, label %if.end.i.i.i.w1_ds2760_store_eeprom.exit.i_crit_edge

if.end.i.i.i.w1_ds2760_store_eeprom.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w1_ds2760_store_eeprom.exit.i

if.then1.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master.i.i.i, align 4
  call void @w1_write_8(ptr noundef %18, i8 noundef zeroext 72) #7
  %19 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master.i.i.i, align 4
  call void @w1_write_8(ptr noundef %20, i8 noundef zeroext 32) #7
  br label %w1_ds2760_store_eeprom.exit.i

w1_ds2760_store_eeprom.exit.i:                    ; preds = %if.then1.i.i.i, %if.end.i.i.i.w1_ds2760_store_eeprom.exit.i_crit_edge
  %21 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master.i.i.i, align 4
  %bus_mutex7.i.i.i = getelementptr inbounds %struct.w1_master, ptr %22, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex7.i.i.i) #7
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load ptr, ptr %call, align 4
  %tobool.not.i.i30.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i.i30.i, label %w1_ds2760_store_eeprom.exit.i.w1_ds2760_recall_eeprom.exit.i_crit_edge, label %if.end.i.i36.i

w1_ds2760_store_eeprom.exit.i.w1_ds2760_recall_eeprom.exit.i_crit_edge: ; preds = %w1_ds2760_store_eeprom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w1_ds2760_recall_eeprom.exit.i

if.end.i.i36.i:                                   ; preds = %w1_ds2760_store_eeprom.exit.i
  %add.ptr.i.i31.i = getelementptr i8, ptr %.pr.i, i32 -80
  %master.i.i32.i = getelementptr i8, ptr %.pr.i, i32 -12
  %24 = ptrtoint ptr %master.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master.i.i32.i, align 4
  %bus_mutex.i.i33.i = getelementptr inbounds %struct.w1_master, ptr %25, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %bus_mutex.i.i33.i, i32 noundef 0) #7
  %call.i.i34.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i31.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34.i)
  %cmp.i.i35.i = icmp eq i32 %call.i.i34.i, 0
  br i1 %cmp.i.i35.i, label %if.then1.i.i37.i, label %if.end.i.i36.i.if.end5.i.i39.i_crit_edge

if.end.i.i36.i.if.end5.i.i39.i_crit_edge:         ; preds = %if.end.i.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i39.i

if.then1.i.i37.i:                                 ; preds = %if.end.i.i36.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %master.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master.i.i32.i, align 4
  call void @w1_write_8(ptr noundef %27, i8 noundef zeroext -72) #7
  %28 = ptrtoint ptr %master.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %master.i.i32.i, align 4
  call void @w1_write_8(ptr noundef %29, i8 noundef zeroext 32) #7
  br label %if.end5.i.i39.i

if.end5.i.i39.i:                                  ; preds = %if.then1.i.i37.i, %if.end.i.i36.i.if.end5.i.i39.i_crit_edge
  %30 = ptrtoint ptr %master.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master.i.i32.i, align 4
  %bus_mutex7.i.i38.i = getelementptr inbounds %struct.w1_master, ptr %31, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex7.i.i38.i) #7
  br label %w1_ds2760_recall_eeprom.exit.i

w1_ds2760_recall_eeprom.exit.i:                   ; preds = %if.end5.i.i39.i, %w1_ds2760_store_eeprom.exit.i.w1_ds2760_recall_eeprom.exit.i_crit_edge, %if.end.i.w1_ds2760_recall_eeprom.exit.i_crit_edge
  %32 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tmp.i, align 1
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx3.i, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 1
  %arrayidx22.i = getelementptr %struct.ds2760_device_info, ptr %call, i32 0, i32 2, i32 33
  %37 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx22.i, align 1
  br label %ds2760_battery_write_active_full.exit

ds2760_battery_write_active_full.exit:            ; preds = %w1_ds2760_recall_eeprom.exit.i, %land.lhs.true.i.ds2760_battery_write_active_full.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %acr.i) #7
  %40 = getelementptr inbounds [2 x i8], ptr %acr.i, i32 0, i32 1
  %mul.i = shl i32 %39, 2
  %div.i = udiv i32 %mul.i, 1000
  %shr.i = lshr i32 %div.i, 8
  %conv.i4 = trunc i32 %shr.i to i8
  %41 = ptrtoint ptr %acr.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i4, ptr %acr.i, align 1
  %conv1.i5 = trunc i32 %div.i to i8
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv1.i5, ptr %40, align 1
  %43 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call, align 4
  %call.i.i6 = call fastcc i32 @w1_ds2760_io(ptr noundef %44, ptr noundef nonnull %acr.i, i32 noundef 16, i32 noundef 2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i6)
  %cmp.i7 = icmp slt i32 %call.i.i6, 2
  br i1 %cmp.i7, label %do.end.i, label %sw.bb1.ds2760_battery_set_current_accum.exit_crit_edge

sw.bb1.ds2760_battery_set_current_accum.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2760_battery_set_current_accum.exit

do.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.22) #10
  br label %ds2760_battery_set_current_accum.exit

ds2760_battery_set_current_accum.exit:            ; preds = %do.end.i, %sw.bb1.ds2760_battery_set_current_accum.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %acr.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ds2760_battery_set_current_accum.exit, %ds2760_battery_write_active_full.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %ds2760_battery_set_current_accum.exit ], [ 0, %ds2760_battery_write_active_full.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ds2760_battery_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %psp, -24
  %switch.and = and i32 %0, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %1 = zext i1 %switch.selectcmp to i32
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds2760_battery_set_charged(ptr noundef %psy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %monitor_wqueue = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 20
  %0 = ptrtoint ptr %monitor_wqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %monitor_wqueue, align 4
  %set_charged_work = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 22
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %set_charged_work, i32 noundef 2000) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds2760_battery_external_power_changed(ptr noundef %psy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds2760_battery_external_power_changed.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds2760_battery_external_power_changed, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds2760_battery_external_power_changed.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %monitor_wqueue = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 20
  %2 = ptrtoint ptr %monitor_wqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %monitor_wqueue, align 4
  %monitor_work = getelementptr inbounds %struct.ds2760_device_info, ptr %call, i32 0, i32 21
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %monitor_work, i32 noundef 10) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds2760_battery_read_status(ptr noundef %di) unnamed_addr #2 align 64 {
entry:
  %scale = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %scale) #7
  %0 = getelementptr inbounds [5 x i32], ptr %scale, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i32], ptr %scale, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i32], ptr %scale, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i32], ptr %scale, i32 0, i32 4
  %update_time = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 1
  %4 = ptrtoint ptr %update_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %update_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = load i32, ptr @cache_time, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #7
  %8 = add i32 %5, %call2.i
  %sub = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %update_time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %update_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3 = icmp eq i32 %10, 0
  %. = select i1 %cmp3, i32 0, i32 12
  %.1 = select i1 %cmp3, i32 64, i32 14
  %11 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %di, align 4
  %raw = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %raw, i32 %.
  %call.i = tail call fastcc i32 @w1_ds2760_io(ptr noundef %12, ptr noundef %add.ptr, i32 noundef %., i32 noundef %.1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %.1)
  %cmp9.not = icmp eq i32 %call.i, %.1
  br i1 %cmp9.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %di, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.19, ptr noundef %14) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %update_time to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %update_time, align 4
  %arrayidx = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %arrayidx17 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 13
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17, align 1
  %21 = lshr i8 %20, 5
  %22 = zext i8 %21 to i32
  %or = or i32 %shl, %22
  %voltage_raw = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 3
  %23 = ptrtoint ptr %voltage_raw to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %voltage_raw, align 4
  %mul = mul nuw nsw i32 %or, 4880
  %voltage_uV = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 4
  %24 = ptrtoint ptr %voltage_uV to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %voltage_uV, align 4
  %arrayidx21 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 14
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx21, align 2
  %conv22 = sext i8 %26 to i32
  %shl23 = shl nsw i32 %conv22, 5
  %arrayidx25 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 15
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx25, align 1
  %29 = lshr i8 %28, 3
  %30 = zext i8 %29 to i32
  %or28 = or i32 %shl23, %30
  %current_raw = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 5
  %31 = ptrtoint ptr %current_raw to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or28, ptr %current_raw, align 4
  %mul30 = mul nsw i32 %or28, 625
  %current_uA = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 6
  %32 = ptrtoint ptr %current_uA to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul30, ptr %current_uA, align 4
  %arrayidx32 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 16
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx32, align 4
  %conv33 = sext i8 %34 to i32
  %shl34 = shl nsw i32 %conv33, 8
  %arrayidx36 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 17
  %35 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %36 to i32
  %or38 = or i32 %shl34, %conv37
  %accum_current_raw = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 7
  %37 = ptrtoint ptr %accum_current_raw to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or38, ptr %accum_current_raw, align 4
  %mul40 = mul nsw i32 %or38, 250
  %accum_current_uAh = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 8
  %38 = ptrtoint ptr %accum_current_uAh to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul40, ptr %accum_current_uAh, align 4
  %arrayidx42 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 24
  %39 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx42, align 4
  %conv43 = sext i8 %40 to i32
  %shl44 = shl nsw i32 %conv43, 3
  %arrayidx46 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 25
  %41 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx46, align 1
  %43 = lshr i8 %42, 5
  %44 = zext i8 %43 to i32
  %or49 = or i32 %shl44, %44
  %temp_raw = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 9
  %45 = ptrtoint ptr %temp_raw to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or49, ptr %temp_raw, align 4
  %div = sdiv i32 %or49, 4
  %add52 = add nsw i32 %div, %or49
  %temp_C = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 10
  %46 = ptrtoint ptr %temp_C to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add52, ptr %temp_C, align 4
  %arrayidx54 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 50
  %47 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx54, align 2
  %conv55 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %48)
  %cmp56 = icmp ult i8 %48, 13
  br i1 %cmp56, label %if.then58, label %if.else63

if.then58:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx62 = getelementptr [13 x i32], ptr @rated_capacities, i32 0, i32 %conv55
  %49 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx62, align 4
  br label %if.end69

if.else63:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %mul67 = mul nuw nsw i32 %conv55, 10
  br label %if.end69

if.end69:                                         ; preds = %if.else63, %if.then58
  %mul67.sink = phi i32 [ %50, %if.then58 ], [ %mul67, %if.else63 ]
  %51 = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 11
  %mul71 = mul i32 %mul67.sink, 1000
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul71, ptr %51, align 4
  %arrayidx73 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 32
  %53 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx73, align 4
  %conv74 = zext i8 %54 to i32
  %shl75 = shl nuw nsw i32 %conv74, 8
  %arrayidx77 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 33
  %55 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %56 to i32
  %or79 = or i32 %shl75, %conv78
  %full_active_uAh = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or79)
  %cmp81 = icmp eq i32 %or79, 0
  %div85 = sdiv i32 %mul71, 1000
  %spec.select = select i1 %cmp81, i32 %div85, i32 %or79
  %57 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %spec.select, ptr %scale, align 4
  %arrayidx96 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 34
  %58 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %59 to i32
  %add98 = add nsw i32 %spec.select, %conv97
  %60 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add98, ptr %0, align 4
  %arrayidx96.1 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 35
  %61 = ptrtoint ptr %arrayidx96.1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx96.1, align 1
  %conv97.1 = zext i8 %62 to i32
  %add98.1 = add nsw i32 %add98, %conv97.1
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add98.1, ptr %1, align 4
  %arrayidx96.2 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 36
  %64 = ptrtoint ptr %arrayidx96.2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx96.2, align 1
  %conv97.2 = zext i8 %65 to i32
  %add98.2 = add nsw i32 %add98.1, %conv97.2
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add98.2, ptr %2, align 4
  %arrayidx96.3 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 37
  %67 = ptrtoint ptr %arrayidx96.3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx96.3, align 1
  %conv97.3 = zext i8 %68 to i32
  %add98.3 = add i32 %add98.2, %conv97.3
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add98.3, ptr %3, align 4
  %div102 = sdiv i32 %add52, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add52)
  %cmp.i2 = icmp slt i32 %add52, 10
  br i1 %cmp.i2, label %if.then.i3, label %if.end.i4

if.then.i3:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %scale, align 4
  br label %battery_interpolate.exit

if.end.i4:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %div102)
  %cmp1.i = icmp ugt i32 %div102, 39
  br i1 %cmp1.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %3, align 4
  br label %battery_interpolate.exit

if.end4.i:                                        ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #9
  %div20.lhs.trunc.i = trunc i32 %div102 to i8
  %div20.lhs.trunc.i.frozen = freeze i8 %div20.lhs.trunc.i
  %div2021.i = udiv i8 %div20.lhs.trunc.i.frozen, 10
  %div20.zext.i = zext i8 %div2021.i to i32
  %74 = mul i8 %div2021.i, 10
  %rem2223.i.decomposed = sub i8 %div20.lhs.trunc.i.frozen, %74
  %rem22.zext.i = zext i8 %rem2223.i.decomposed to i32
  %arrayidx5.i = getelementptr i32, ptr %scale, i32 %div20.zext.i
  %75 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx5.i, align 4
  %add.i = add nuw nsw i32 %div20.zext.i, 1
  %arrayidx6.i = getelementptr i32, ptr %scale, i32 %add.i
  %77 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx6.i, align 4
  %sub.i = sub i32 %78, %76
  %mul.i = mul i32 %sub.i, %rem22.zext.i
  %div8.i = sdiv i32 %mul.i, 10
  %add9.i = add i32 %div8.i, %76
  br label %battery_interpolate.exit

battery_interpolate.exit:                         ; preds = %if.end4.i, %if.then2.i, %if.then.i3
  %retval.0.i5 = phi i32 [ %71, %if.then.i3 ], [ %73, %if.then2.i ], [ %add9.i, %if.end4.i ]
  %mul106 = mul i32 %retval.0.i5, 1000
  %79 = ptrtoint ptr %full_active_uAh to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mul106, ptr %full_active_uAh, align 4
  %arrayidx108 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 63
  %80 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %81 to i32
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv109, ptr %3, align 4
  %arrayidx119 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 62
  %83 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %84 to i32
  %add121 = add nuw nsw i32 %conv109, %conv120
  %85 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add121, ptr %2, align 4
  %arrayidx119.1 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 61
  %86 = ptrtoint ptr %arrayidx119.1 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx119.1, align 1
  %conv120.1 = zext i8 %87 to i32
  %add121.1 = add nuw nsw i32 %add121, %conv120.1
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add121.1, ptr %1, align 4
  %arrayidx119.2 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 60
  %89 = ptrtoint ptr %arrayidx119.2 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx119.2, align 1
  %conv120.2 = zext i8 %90 to i32
  %add121.2 = add nuw nsw i32 %add121.1, %conv120.2
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add121.2, ptr %0, align 4
  %arrayidx119.3 = getelementptr %struct.ds2760_device_info, ptr %di, i32 0, i32 2, i32 59
  %92 = ptrtoint ptr %arrayidx119.3 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx119.3, align 1
  %conv120.3 = zext i8 %93 to i32
  %add121.3 = add nuw nsw i32 %add121.2, %conv120.3
  %94 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add121.3, ptr %scale, align 4
  br i1 %cmp.i2, label %if.then.i7, label %if.end.i9

if.then.i7:                                       ; preds = %battery_interpolate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %scale, align 4
  br label %battery_interpolate.exit26

if.end.i9:                                        ; preds = %battery_interpolate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %div102)
  %cmp1.i8 = icmp ugt i32 %div102, 39
  br i1 %cmp1.i8, label %if.then2.i11, label %if.end4.i24

if.then2.i11:                                     ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %3, align 4
  br label %battery_interpolate.exit26

if.end4.i24:                                      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #9
  %div20.lhs.trunc.i12 = trunc i32 %div102 to i8
  %div20.lhs.trunc.i12.frozen = freeze i8 %div20.lhs.trunc.i12
  %div2021.i13 = udiv i8 %div20.lhs.trunc.i12.frozen, 10
  %div20.zext.i14 = zext i8 %div2021.i13 to i32
  %99 = mul i8 %div2021.i13, 10
  %rem2223.i15.decomposed = sub i8 %div20.lhs.trunc.i12.frozen, %99
  %rem22.zext.i16 = zext i8 %rem2223.i15.decomposed to i32
  %arrayidx5.i17 = getelementptr i32, ptr %scale, i32 %div20.zext.i14
  %100 = ptrtoint ptr %arrayidx5.i17 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx5.i17, align 4
  %add.i18 = add nuw nsw i32 %div20.zext.i14, 1
  %arrayidx6.i19 = getelementptr i32, ptr %scale, i32 %add.i18
  %102 = ptrtoint ptr %arrayidx6.i19 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx6.i19, align 4
  %sub.i20 = sub i32 %103, %101
  %mul.i21 = mul i32 %sub.i20, %rem22.zext.i16
  %div8.i22 = sdiv i32 %mul.i21, 10
  %add9.i23 = add i32 %div8.i22, %101
  br label %battery_interpolate.exit26

battery_interpolate.exit26:                       ; preds = %if.end4.i24, %if.then2.i11, %if.then.i7
  %retval.0.i25 = phi i32 [ %96, %if.then.i7 ], [ %98, %if.then2.i11 ], [ %add9.i23, %if.end4.i24 ]
  %empty_uAh = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 14
  %mul130 = mul i32 %retval.0.i25, 1000
  %104 = ptrtoint ptr %empty_uAh to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %mul130, ptr %empty_uAh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul106, i32 %mul130)
  %cmp133 = icmp eq i32 %mul106, %mul130
  br i1 %cmp133, label %if.end152.thread34, label %if.end146

if.end152.thread34:                               ; preds = %battery_interpolate.exit26
  call void @__sanitizer_cov_trace_pc() #9
  %105 = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 12
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %105, align 4
  br label %if.end158

if.end146:                                        ; preds = %battery_interpolate.exit26
  %sub139 = sub i32 %mul40, %mul130
  %mul140 = mul i32 %sub139, 100
  %sub143 = sub i32 %mul106, %mul130
  %div144 = sdiv i32 %mul140, %sub143
  %107 = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 12
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %div144, ptr %107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div144)
  %cmp148 = icmp slt i32 %div144, 0
  br i1 %cmp148, label %if.end152.thread, label %if.end152

if.end152.thread:                                 ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %107, align 4
  br label %if.end158

if.end152:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %div144)
  %cmp154 = icmp ugt i32 %div144, 100
  br i1 %cmp154, label %if.then156, label %if.end152.if.end158_crit_edge

if.end152.if.end158_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 100, ptr %107, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end152.if.end158_crit_edge, %if.end152.thread, %if.end152.thread34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %mul30)
  %cmp160 = icmp slt i32 %mul30, -100
  br i1 %cmp160, label %if.then162, label %if.else171

if.then162:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  %sub165 = sub i32 %mul40, %mul130
  %mul166.neg = mul i32 %sub165, -36
  %mul30.nonneg = sub nsw i32 0, %mul30
  %div16928 = udiv i32 %mul30.nonneg, 100
  %div16928.neg = sub nsw i32 0, %div16928
  %div170 = sdiv i32 %mul166.neg, %div16928.neg
  %life_sec = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 15
  %111 = ptrtoint ptr %life_sec to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %div170, ptr %life_sec, align 4
  br label %cleanup

if.else171:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  %life_sec172 = getelementptr inbounds %struct.ds2760_device_info, ptr %di, i32 0, i32 15
  %112 = ptrtoint ptr %life_sec172 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %life_sec172, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else171, %if.then162, %do.end, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %scale) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds2760_battery_work(ptr noundef %work) #2 align 64 {
entry:
  %acr.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -192
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds2760_battery_work.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds2760_battery_work, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds2760_battery_work.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.24) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %charge_status.i = getelementptr i8, ptr %work, i32 -68
  %2 = ptrtoint ptr %charge_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %charge_status.i, align 4
  tail call fastcc void @ds2760_battery_read_status(ptr noundef %add.ptr) #7
  %4 = ptrtoint ptr %charge_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %charge_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %do.end.if.end.i_crit_edge

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %full_counter.i = getelementptr i8, ptr %work, i32 -64
  %6 = ptrtoint ptr %full_counter.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %full_counter.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end.if.end.i_crit_edge
  %bat.i = getelementptr i8, ptr %work, i32 -60
  %7 = ptrtoint ptr %bat.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bat.i, align 4
  %call2.i = tail call i32 @power_supply_am_i_supplied(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.else34.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %current_uA.i = getelementptr i8, ptr %work, i32 -108
  %9 = ptrtoint ptr %current_uA.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_uA.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %10)
  %cmp4.i = icmp sgt i32 %10, 10000
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %charge_status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %charge_status.i, align 4
  %full_counter7.i = getelementptr i8, ptr %work, i32 -64
  %12 = ptrtoint ptr %full_counter7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %full_counter7.i, align 4
  br label %if.end37.i

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5000, i32 %10)
  %cmp9.i = icmp slt i32 %10, -5000
  br i1 %cmp9.i, label %if.then10.i, label %if.else17.i

if.then10.i:                                      ; preds = %if.else.i
  %13 = ptrtoint ptr %charge_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %charge_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp12.not.i = icmp eq i32 %14, 3
  br i1 %cmp12.not.i, label %if.then10.i.if.end14.i_crit_edge, label %do.end.i

if.then10.i.if.end14.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.end.i:                                         ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %16, ptr noundef nonnull @.str.25) #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i, %if.then10.i.if.end14.i_crit_edge
  %17 = ptrtoint ptr %charge_status.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %charge_status.i, align 4
  %full_counter16.i = getelementptr i8, ptr %work, i32 -64
  %18 = ptrtoint ptr %full_counter16.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %full_counter16.i, align 4
  br label %if.end37.i

if.else17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %10)
  %cmp19.i = icmp slt i32 %10, 10000
  br i1 %cmp19.i, label %land.lhs.true.i, label %if.else17.i.if.end37.i_crit_edge

if.else17.i.if.end37.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

land.lhs.true.i:                                  ; preds = %if.else17.i
  %19 = ptrtoint ptr %charge_status.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %charge_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp21.not.i = icmp eq i32 %20, 4
  br i1 %cmp21.not.i, label %land.lhs.true.i.if.end37.i_crit_edge, label %if.then22.i

land.lhs.true.i.if.end37.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  %full_counter23.i = getelementptr i8, ptr %work, i32 -64
  %21 = ptrtoint ptr %full_counter23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %full_counter23.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %full_counter23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp25.i = icmp slt i32 %inc.i, 2
  br i1 %cmp25.i, label %if.then26.i, label %if.else28.i

if.then26.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %charge_status.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %charge_status.i, align 4
  br label %if.end37.i

if.else28.i:                                      ; preds = %if.then22.i
  %24 = ptrtoint ptr %charge_status.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %charge_status.i, align 4
  %full_active_uAh.i = getelementptr i8, ptr %work, i32 -80
  %25 = ptrtoint ptr %full_active_uAh.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %full_active_uAh.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %acr.i.i) #7
  %27 = getelementptr inbounds [2 x i8], ptr %acr.i.i, i32 0, i32 1
  %mul.i.i = shl i32 %26, 2
  %div.i.i = udiv i32 %mul.i.i, 1000
  %shr.i.i = lshr i32 %div.i.i, 8
  %conv.i.i = trunc i32 %shr.i.i to i8
  %28 = ptrtoint ptr %acr.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i.i, ptr %acr.i.i, align 1
  %conv1.i.i = trunc i32 %div.i.i to i8
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv1.i.i, ptr %27, align 1
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i = call fastcc i32 @w1_ds2760_io(ptr noundef %31, ptr noundef nonnull %acr.i.i, i32 noundef 16, i32 noundef 2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.else28.i.ds2760_battery_set_current_accum.exit.i_crit_edge

if.else28.i.ds2760_battery_set_current_accum.exit.i_crit_edge: ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2760_battery_set_current_accum.exit.i

do.end.i.i:                                       ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.22) #10
  br label %ds2760_battery_set_current_accum.exit.i

ds2760_battery_set_current_accum.exit.i:          ; preds = %do.end.i.i, %if.else28.i.ds2760_battery_set_current_accum.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %acr.i.i) #7
  br label %if.end37.i

if.else34.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %charge_status.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %charge_status.i, align 4
  %full_counter36.i = getelementptr i8, ptr %work, i32 -64
  %35 = ptrtoint ptr %full_counter36.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %full_counter36.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else34.i, %ds2760_battery_set_current_accum.exit.i, %if.then26.i, %land.lhs.true.i.if.end37.i_crit_edge, %if.else17.i.if.end37.i_crit_edge, %if.end14.i, %if.then5.i
  %36 = ptrtoint ptr %charge_status.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %charge_status.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %3)
  %cmp39.not.i = icmp eq i32 %37, %3
  br i1 %cmp39.not.i, label %if.end37.i.ds2760_battery_update_status.exit_crit_edge, label %if.then40.i

if.end37.i.ds2760_battery_update_status.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ds2760_battery_update_status.exit

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %bat.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bat.i, align 4
  call void @power_supply_changed(ptr noundef %39) #7
  br label %ds2760_battery_update_status.exit

ds2760_battery_update_status.exit:                ; preds = %if.then40.i, %if.end37.i.ds2760_battery_update_status.exit_crit_edge
  %monitor_wqueue = getelementptr i8, ptr %work, i32 -4
  %40 = ptrtoint ptr %monitor_wqueue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %monitor_wqueue, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %work, i32 noundef 6000) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds2760_battery_set_charged_work(ptr noundef %work) #2 align 64 {
entry:
  %bias = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bias) #7
  %add.ptr = getelementptr i8, ptr %work, i32 -292
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds2760_battery_set_charged_work.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds2760_battery_set_charged_work, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds2760_battery_set_charged_work.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.28) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @ds2760_battery_read_status(ptr noundef %add.ptr)
  %bat = getelementptr i8, ptr %work, i32 -160
  %2 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bat, align 4
  %call6 = tail call i32 @power_supply_am_i_supplied(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %current_raw = getelementptr i8, ptr %work, i32 -212
  %4 = ptrtoint ptr %current_raw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_raw, align 4
  %arrayidx = getelementptr i8, ptr %work, i32 -233
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = trunc i32 %5 to i8
  %conv12 = add i8 %7, %8
  %9 = ptrtoint ptr %bias to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv12, ptr %bias, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds2760_battery_set_charged_work.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds2760_battery_set_charged_work, %do.end32)) #7
          to label %if.then27 [label %do.end32], !srcloc !131

if.then27:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %12 = ptrtoint ptr %bias to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bias, align 1
  %conv29 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds2760_battery_set_charged_work.__UNIQUE_ID_ddebug299, ptr noundef %11, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %conv29) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %if.end9
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %call.i = call fastcc i32 @w1_ds2760_io(ptr noundef %15, ptr noundef nonnull %bias, i32 noundef 51, i32 noundef 1, i32 noundef 1) #7
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %do.end32.w1_ds2760_recall_eeprom.exit_crit_edge, label %if.end.i.i

do.end32.w1_ds2760_recall_eeprom.exit_crit_edge:  ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %w1_ds2760_recall_eeprom.exit

if.end.i.i:                                       ; preds = %do.end32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -80
  %master.i.i = getelementptr i8, ptr %17, i32 -12
  %18 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master.i.i, align 4
  %bus_mutex.i.i = getelementptr inbounds %struct.w1_master, ptr %19, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %bus_mutex.i.i, i32 noundef 0) #7
  %call.i.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end.i.i.w1_ds2760_store_eeprom.exit_crit_edge

if.end.i.i.w1_ds2760_store_eeprom.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w1_ds2760_store_eeprom.exit

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master.i.i, align 4
  call void @w1_write_8(ptr noundef %21, i8 noundef zeroext 72) #7
  %22 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master.i.i, align 4
  call void @w1_write_8(ptr noundef %23, i8 noundef zeroext 48) #7
  br label %w1_ds2760_store_eeprom.exit

w1_ds2760_store_eeprom.exit:                      ; preds = %if.then1.i.i, %if.end.i.i.w1_ds2760_store_eeprom.exit_crit_edge
  %24 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master.i.i, align 4
  %bus_mutex7.i.i = getelementptr inbounds %struct.w1_master, ptr %25, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex7.i.i) #7
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load ptr, ptr %add.ptr, align 4
  %tobool.not.i.i55 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.i55, label %w1_ds2760_store_eeprom.exit.w1_ds2760_recall_eeprom.exit_crit_edge, label %if.end.i.i61

w1_ds2760_store_eeprom.exit.w1_ds2760_recall_eeprom.exit_crit_edge: ; preds = %w1_ds2760_store_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %w1_ds2760_recall_eeprom.exit

if.end.i.i61:                                     ; preds = %w1_ds2760_store_eeprom.exit
  %add.ptr.i.i56 = getelementptr i8, ptr %.pr, i32 -80
  %master.i.i57 = getelementptr i8, ptr %.pr, i32 -12
  %27 = ptrtoint ptr %master.i.i57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master.i.i57, align 4
  %bus_mutex.i.i58 = getelementptr inbounds %struct.w1_master, ptr %28, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %bus_mutex.i.i58, i32 noundef 0) #7
  %call.i.i59 = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %cmp.i.i60 = icmp eq i32 %call.i.i59, 0
  br i1 %cmp.i.i60, label %if.then1.i.i62, label %if.end.i.i61.if.end5.i.i64_crit_edge

if.end.i.i61.if.end5.i.i64_crit_edge:             ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i64

if.then1.i.i62:                                   ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %master.i.i57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %master.i.i57, align 4
  call void @w1_write_8(ptr noundef %30, i8 noundef zeroext -72) #7
  %31 = ptrtoint ptr %master.i.i57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master.i.i57, align 4
  call void @w1_write_8(ptr noundef %32, i8 noundef zeroext 48) #7
  br label %if.end5.i.i64

if.end5.i.i64:                                    ; preds = %if.then1.i.i62, %if.end.i.i61.if.end5.i.i64_crit_edge
  %33 = ptrtoint ptr %master.i.i57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master.i.i57, align 4
  %bus_mutex7.i.i63 = getelementptr inbounds %struct.w1_master, ptr %34, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex7.i.i63) #7
  br label %w1_ds2760_recall_eeprom.exit

w1_ds2760_recall_eeprom.exit:                     ; preds = %if.end5.i.i64, %w1_ds2760_store_eeprom.exit.w1_ds2760_recall_eeprom.exit_crit_edge, %do.end32.w1_ds2760_recall_eeprom.exit_crit_edge
  %35 = ptrtoint ptr %bias to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bias, align 1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %w1_ds2760_recall_eeprom.exit, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bias) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2760_pm_notifier(ptr noundef %notifier, i32 noundef %pm_event, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pm_event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %pm_event, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge8
    i32 6, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge9
    i32 4, label %entry.sw.bb1_crit_edge10
  ]

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8
  %charge_status = getelementptr i8, ptr %notifier, i32 -268
  %1 = ptrtoint ptr %charge_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %charge_status, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge9, %entry.sw.bb1_crit_edge10
  %charge_status2 = getelementptr i8, ptr %notifier, i32 -268
  %2 = ptrtoint ptr %charge_status2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %charge_status2, align 4
  %bat = getelementptr i8, ptr %notifier, i32 -260
  %3 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bat, align 4
  tail call void @power_supply_changed(ptr noundef %4) #7
  %monitor_wqueue = getelementptr i8, ptr %notifier, i32 -204
  %5 = ptrtoint ptr %monitor_wqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %monitor_wqueue, align 4
  %monitor_work = getelementptr i8, ptr %notifier, i32 -200
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %monitor_work, i32 noundef 100) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_ds2760_io(ptr noundef %dev, ptr noundef %buf, i32 noundef %addr, i32 noundef %count, i32 noundef %io) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -80
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %master = getelementptr i8, ptr %dev, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %addr)
  %2 = icmp ugt i32 %addr, 64
  br i1 %2, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3:                                          ; preds = %if.end
  %add = add i32 %count, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp4 = icmp ugt i32 %add, 64
  %sub = sub nuw nsw i32 64, %addr
  %spec.select = select i1 %cmp4, i32 %sub, i32 %count
  %call = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then8, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %io)
  %tobool9.not = icmp eq i32 %io, 0
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @w1_write_8(ptr noundef %4, i8 noundef zeroext 105) #7
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %conv = trunc i32 %addr to i8
  tail call void @w1_write_8(ptr noundef %6, i8 noundef zeroext %conv) #7
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master, align 4
  %call14 = tail call zeroext i8 @w1_read_block(ptr noundef %8, ptr noundef %buf, i32 noundef %spec.select) #7
  %conv15 = zext i8 %call14 to i32
  br label %out

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @w1_write_8(ptr noundef %4, i8 noundef zeroext 108) #7
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  %conv18 = trunc i32 %addr to i8
  tail call void @w1_write_8(ptr noundef %10, i8 noundef zeroext %conv18) #7
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  tail call void @w1_write_block(ptr noundef %12, ptr noundef %buf, i32 noundef %spec.select) #7
  br label %out

out:                                              ; preds = %if.else, %if.then10, %if.end3.out_crit_edge, %if.end.out_crit_edge
  %count.addr.1 = phi i32 [ %spec.select, %if.end3.out_crit_edge ], [ %spec.select, %if.else ], [ %conv15, %if.then10 ], [ 0, %if.end.out_crit_edge ]
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 4
  %bus_mutex23 = getelementptr inbounds %struct.w1_master, ptr %14, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex23) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.1, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_am_i_supplied(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_slave_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %off to i32
  %call.i = tail call fastcc i32 @w1_ds2760_io(ptr noundef %kobj, ptr noundef %buf, i32 noundef %conv, i32 noundef %count, i32 noundef 0) #7
  ret i32 %call.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !36, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !102, !103, !105, !106, !108, !109, !111, !113, !115, !117, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__param_cache_time, !1, !"__param_cache_time", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ds2760_battery.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_cache_timetype288, !1, !"__UNIQUE_ID_cache_timetype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_cache_time289, !4, !"__UNIQUE_ID_cache_time289", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/ds2760_battery.c", i32 36, i32 1}
!5 = !{ptr @__param_pmod_enabled, !6, !"__param_pmod_enabled", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/ds2760_battery.c", i32 39, i32 1}
!7 = !{ptr @__UNIQUE_ID_pmod_enabledtype290, !6, !"__UNIQUE_ID_pmod_enabledtype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_pmod_enabled291, !9, !"__UNIQUE_ID_pmod_enabled291", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/ds2760_battery.c", i32 40, i32 1}
!10 = !{ptr @__param_rated_capacity, !11, !"__param_rated_capacity", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/ds2760_battery.c", i32 43, i32 1}
!12 = !{ptr @__UNIQUE_ID_rated_capacitytype292, !11, !"__UNIQUE_ID_rated_capacitytype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_rated_capacity293, !14, !"__UNIQUE_ID_rated_capacity293", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/ds2760_battery.c", i32 44, i32 1}
!15 = !{ptr @__param_current_accum, !16, !"__param_current_accum", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/ds2760_battery.c", i32 47, i32 1}
!17 = !{ptr @__UNIQUE_ID_current_accumtype294, !16, !"__UNIQUE_ID_current_accumtype294", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_current_accum295, !19, !"__UNIQUE_ID_current_accum295", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/ds2760_battery.c", i32 48, i32 1}
!20 = !{ptr @__initcall__kmod_ds2760_battery__300_809_w1_ds2760_family_init6, !21, !"__initcall__kmod_ds2760_battery__300_809_w1_ds2760_family_init6", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/ds2760_battery.c", i32 809, i32 1}
!22 = !{ptr @__exitcall_w1_ds2760_family_exit, !21, !"__exitcall_w1_ds2760_family_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author301, !24, !"__UNIQUE_ID_author301", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/ds2760_battery.c", i32 811, i32 1}
!25 = !{ptr @__UNIQUE_ID_description302, !26, !"__UNIQUE_ID_description302", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/ds2760_battery.c", i32 814, i32 1}
!27 = !{ptr @__UNIQUE_ID_file303, !28, !"__UNIQUE_ID_file303", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/ds2760_battery.c", i32 815, i32 1}
!29 = !{ptr @__UNIQUE_ID_license304, !28, !"__UNIQUE_ID_license304", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_alias305, !31, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/ds2760_battery.c", i32 816, i32 1}
!32 = !{ptr @pmod_enabled, !33, !"pmod_enabled", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/ds2760_battery.c", i32 38, i32 13}
!34 = !{ptr @rated_capacity, !35, !"rated_capacity", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/ds2760_battery.c", i32 42, i32 21}
!36 = !{ptr @current_accum, !37, !"current_accum", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/ds2760_battery.c", i32 46, i32 21}
!38 = !{ptr @__param_str_cache_time, !1, !"__param_str_cache_time", i1 false, i1 false}
!39 = !{ptr @cache_time, !40, !"cache_time", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/ds2760_battery.c", i32 34, i32 21}
!41 = !{ptr @__param_str_pmod_enabled, !6, !"__param_str_pmod_enabled", i1 false, i1 false}
!42 = !{ptr @__param_str_rated_capacity, !11, !"__param_str_rated_capacity", i1 false, i1 false}
!43 = !{ptr @__param_str_current_accum, !16, !"__param_str_current_accum", i1 false, i1 false}
!44 = !{ptr @w1_ds2760_family, !45, !"w1_ds2760_family", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/ds2760_battery.c", i32 804, i32 25}
!46 = !{ptr @w1_ds2760_fops, !47, !"w1_ds2760_fops", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/ds2760_battery.c", i32 798, i32 35}
!48 = !{ptr @.str, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/ds2760_battery.c", i32 692, i32 31}
!50 = !{ptr @.str.1, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/ds2760_battery.c", i32 714, i32 44}
!52 = !{ptr @.str.2, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/ds2760_battery.c", i32 718, i32 8}
!54 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/ds2760_battery.c", i32 722, i32 8}
!56 = !{ptr @.str.4, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/ds2760_battery.c", i32 752, i32 3}
!58 = !{ptr @.str.5, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @w1_ds2760_add_slave._entry, !57, !"_entry", i1 false, i1 false}
!63 = !{ptr @w1_ds2760_add_slave._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @w1_ds2760_add_slave.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/ds2760_battery.c", i32 757, i32 2}
!66 = !{ptr @.str.9, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @w1_ds2760_add_slave.__key.10, !65, !"__key", i1 false, i1 false}
!68 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @w1_ds2760_add_slave.__key.12, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/ds2760_battery.c", i32 758, i32 2}
!71 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @w1_ds2760_add_slave.__key.14, !70, !"__key", i1 false, i1 false}
!73 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ds2760_battery_props, !75, !"ds2760_battery_props", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/ds2760_battery.c", i32 634, i32 35}
!76 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/ds2760_battery.c", i32 494, i32 2}
!78 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ds2760_battery_external_power_changed.__UNIQUE_ID_ddebug297, !77, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!81 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/ds2760_battery.c", i32 283, i32 3}
!83 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ds2760_battery_read_status._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @ds2760_battery_read_status._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @rated_capacities, !88, !"rated_capacities", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/ds2760_battery.c", i32 222, i32 12}
!89 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/ds2760_battery.c", i32 386, i32 3}
!91 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ds2760_battery_set_current_accum._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @ds2760_battery_set_current_accum._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/ds2760_battery.c", i32 484, i32 2}
!96 = !{ptr @ds2760_battery_work.__UNIQUE_ID_ddebug296, !95, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/ds2760_battery.c", i32 404, i32 5}
!99 = !{ptr @.str.26, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ds2760_battery_update_status._entry, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @ds2760_battery_update_status._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.28, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/ds2760_battery.c", i32 506, i32 2}
!105 = !{ptr @ds2760_battery_set_charged_work.__UNIQUE_ID_ddebug298, !104, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!106 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/ds2760_battery.c", i32 524, i32 2}
!108 = !{ptr @ds2760_battery_set_charged_work.__UNIQUE_ID_ddebug299, !107, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!109 = !{ptr @w1_ds2760_groups, !110, !"w1_ds2760_groups", i1 false, i1 false}
!110 = !{!"../drivers/power/supply/ds2760_battery.c", i32 216, i32 38}
!111 = !{ptr @w1_ds2760_group, !112, !"w1_ds2760_group", i1 false, i1 false}
!112 = !{!"../drivers/power/supply/ds2760_battery.c", i32 212, i32 37}
!113 = !{ptr @w1_ds2760_bin_attrs, !114, !"w1_ds2760_bin_attrs", i1 false, i1 false}
!114 = !{!"../drivers/power/supply/ds2760_battery.c", i32 207, i32 30}
!115 = !{ptr @.str.30, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/power/supply/ds2760_battery.c", i32 205, i32 8}
!117 = !{ptr @bin_attr_w1_slave, !116, !"bin_attr_w1_slave", i1 false, i1 false}
!118 = !{ptr @w1_ds2760_of_ids, !119, !"w1_ds2760_of_ids", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/ds2760_battery.c", i32 792, i32 34}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{i8 0, i8 2}
!131 = !{i64 2148974193, i64 2148974198, i64 2148974211, i64 2148974255, i64 2148974289, i64 2148974310}
