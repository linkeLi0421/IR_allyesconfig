; ModuleID = '/llk/IR_all_yes/drivers/power/supply/sbs-manager.c_pt.bc'
source_filename = "../drivers/power/supply/sbs-manager.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sbsm_data = type { ptr, ptr, ptr, i8, %struct.gpio_chip, i8, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }

@__initcall__kmod_sbs_manager__289_416_sbsm_driver_init6 = internal global ptr @sbsm_driver_init, section ".initcall6.init", align 4
@sbsm_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sbsm_probe, ptr null, ptr null, ptr null, ptr @sbsm_alert, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sbsm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sbsm_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sbsm_driver_exit = internal global ptr @sbsm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file290 = internal constant [50 x i8] c"sbs_manager.file=drivers/power/supply/sbs-manager\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [24 x i8] c"sbs_manager.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [71 x i8] c"sbs_manager.author=Karl-Heinz Schneider <karl-heinz@schneider-inet.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [58 x i8] c"sbs_manager.description=SBSM Smart Battery System Manager\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sbsm\00", [27 x i8] zeroinitializer }, align 32
@sbsm_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sbs,sbs-manager\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc1760\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sbsm_ids = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sbs-manager\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ltc1760\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc1760\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to alloc i2c mux\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register i2c mux channel %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sbsm_default_psy_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr null, i32 3, ptr null, i32 0, ptr @sbsm_props, i32 2, ptr @sbsm_get_property, ptr @sbsm_set_property, ptr @sbsm_prop_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sbsm-%s\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register power supply %s\0A\00", [60 x i8] zeroinitializer }, align 32
@sbsm_read_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 70, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read register 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sbsm_read_word\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/power/supply/sbs-manager.c\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sbsm_read_word._entry_ptr = internal global ptr @sbsm_read_word._entry, section ".printk_index", align 4
@sbsm_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 186, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to select channel %i\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sbsm_select\00", [20 x i8] zeroinitializer }, align 32
@sbsm_select._entry_ptr = internal global ptr @sbsm_select._entry, section ".printk_index", align 4
@sbsm_write_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.8, i32 87, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to write to register 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sbsm_write_word\00", [16 x i8] zeroinitializer }, align 32
@sbsm_write_word._entry_ptr = internal global ptr @sbsm_write_word._entry, section ".printk_index", align 4
@sbsm_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@sbsm_gpio_setup.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sbsm_gpio_setup.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"devm_gpiochip_add_data failed\0A\00", [33 x i8] zeroinitializer }, align 32
@sbsm_do_alert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.8, i32 228, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no driver alert()!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sbsm_do_alert\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sbsm_do_alert._entry_ptr = internal global ptr @sbsm_do_alert._entry, section ".printk_index", align 4
@sbsm_do_alert.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.18, ptr @.str.8, ptr @.str.21, i8 0, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sbs_manager\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"alert with no driver\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"sbsm_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 407, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 409, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"sbsm_dt_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 399, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"sbsm_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 391, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 342, i32 40 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 351, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 367, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"sbsm_default_psy_desc\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 303, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 373, i32 51 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 386, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 69, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 186, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 86, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [11 x i8] c"sbsm_props\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 53, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 274, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 296, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 298, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 228, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [38 x i8] c"../drivers/power/supply/sbs-manager.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 230, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_sbsm_driver_exit, ptr @__initcall__kmod_sbs_manager__289_416_sbsm_driver_init6, ptr @sbsm_do_alert._entry, ptr @sbsm_do_alert._entry_ptr, ptr @sbsm_driver_exit, ptr @sbsm_read_word._entry, ptr @sbsm_read_word._entry_ptr, ptr @sbsm_select._entry, ptr @sbsm_select._entry_ptr, ptr @sbsm_write_word._entry, ptr @sbsm_write_word._entry_ptr, ptr @sbsm_driver, ptr @.str, ptr @sbsm_dt_ids, ptr @sbsm_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sbsm_default_psy_desc, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sbsm_props, ptr @.str.15, ptr @sbsm_gpio_setup.lock_key, ptr @sbsm_gpio_setup.request_key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsm_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsm_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsm_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsm_default_psy_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsm_read_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsm_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsm_write_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsm_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsm_gpio_setup.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsm_gpio_setup.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbsm_do_alert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sbsm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sbsm_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sbsm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @sbsm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbsm_probe(ptr noundef %client, ptr noundef readonly %id) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %2 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %4)
  %cmp.not = icmp eq i16 %4, 10
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 380, i32 noundef 3520) #7
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %call.i, align 4
  %call11 = tail call ptr @strstr(ptr noundef %id, ptr noundef nonnull @.str.1)
  %tobool12 = icmp ne ptr %call11, null
  %is_ltc1760 = getelementptr inbounds %struct.sbsm_data, ptr %call.i, i32 0, i32 5
  %frombool = zext i1 %tobool12 to i8
  %11 = ptrtoint ptr %is_ltc1760 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %is_ltc1760, align 4
  %call.i129 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i129)
  %cmp1.i = icmp sgt i32 %call.i129, -1
  br i1 %cmp1.i, label %if.end9.if.end18_crit_edge, label %for.cond.i

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

for.cond.i:                                       ; preds = %if.end9
  %call.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i)
  %cmp1.1.i = icmp sgt i32 %call.1.i, -1
  br i1 %cmp1.1.i, label %for.cond.i.if.end18_crit_edge, label %for.cond.1.i

for.cond.i.if.end18_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2.i)
  %cmp1.2.i = icmp sgt i32 %call.2.i, -1
  br i1 %cmp1.2.i, label %for.cond.1.i.if.end18_crit_edge, label %sbsm_read_word.exit

for.cond.1.i.if.end18_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

sbsm_read_word.exit:                              ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.6, i32 noundef 4) #10
  br label %cleanup

if.end18:                                         ; preds = %for.cond.1.i.if.end18_crit_edge, %for.cond.i.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %call17.i.ph = phi i32 [ %call.2.i, %for.cond.1.i.if.end18_crit_edge ], [ %call.1.i, %for.cond.i.if.end18_crit_edge ], [ %call.i129, %if.end9.if.end18_crit_edge ]
  %and = and i32 %call17.i.ph, 15
  %supported_bats = getelementptr inbounds %struct.sbsm_data, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %supported_bats to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %supported_bats, align 4
  %call19 = tail call ptr @i2c_mux_alloc(ptr noundef %1, ptr noundef %dev2, i32 noundef 4, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @sbsm_select, ptr noundef null) #7
  %muxc = getelementptr inbounds %struct.sbsm_data, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %muxc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %muxc, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev2, i32 noundef -12, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %priv = getelementptr inbounds %struct.i2c_mux_core, ptr %call19, i32 0, i32 3
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %priv, align 4
  %call.i130 = tail call i32 @devm_add_action(ptr noundef %dev2, ptr noundef nonnull @sbsm_del_mux_adapter, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool.not.i = icmp eq i32 %call.i130, 0
  br i1 %tobool.not.i, label %for.body.preheader, label %devm_add_action_or_reset.exit.thread

for.body.preheader:                               ; preds = %if.end24
  %15 = ptrtoint ptr %supported_bats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %supported_bats, align 4
  %and33 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.body.preheader.for.inc_crit_edge, label %if.then35

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

devm_add_action_or_reset.exit.thread:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %muxc, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %18) #7
  br label %cleanup

if.then35:                                        ; preds = %for.body.preheader
  %19 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %muxc, align 4
  %call37 = tail call i32 @i2c_mux_add_adapter(ptr noundef %20, i32 noundef 0, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then35.for.inc_crit_edge, label %if.then35.if.then43_crit_edge

if.then35.if.then43_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then35.for.inc_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then35.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %21 = ptrtoint ptr %supported_bats to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %supported_bats, align 4
  %and33.1 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.1)
  %tobool34.not.1 = icmp eq i32 %and33.1, 0
  br i1 %tobool34.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then35.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then35.1:                                      ; preds = %for.inc
  %23 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %muxc, align 4
  %call37.1 = tail call i32 @i2c_mux_add_adapter(ptr noundef %24, i32 noundef 0, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.1)
  %tobool38.not.1 = icmp eq i32 %call37.1, 0
  br i1 %tobool38.not.1, label %if.then35.1.for.inc.1_crit_edge, label %if.then35.1.if.then43_crit_edge

if.then35.1.if.then43_crit_edge:                  ; preds = %if.then35.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then35.1.for.inc.1_crit_edge:                  ; preds = %if.then35.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then35.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %25 = ptrtoint ptr %supported_bats to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %supported_bats, align 4
  %and33.2 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.2)
  %tobool34.not.2 = icmp eq i32 %and33.2, 0
  br i1 %tobool34.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then35.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then35.2:                                      ; preds = %for.inc.1
  %27 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %muxc, align 4
  %call37.2 = tail call i32 @i2c_mux_add_adapter(ptr noundef %28, i32 noundef 0, i32 noundef 3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.2)
  %tobool38.not.2 = icmp eq i32 %call37.2, 0
  br i1 %tobool38.not.2, label %if.then35.2.for.inc.2_crit_edge, label %if.then35.2.if.then43_crit_edge

if.then35.2.if.then43_crit_edge:                  ; preds = %if.then35.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then35.2.for.inc.2_crit_edge:                  ; preds = %if.then35.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then35.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %29 = ptrtoint ptr %supported_bats to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %supported_bats, align 4
  %and33.3 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.3)
  %tobool34.not.3 = icmp eq i32 %and33.3, 0
  br i1 %tobool34.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then35.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then35.3:                                      ; preds = %for.inc.2
  %31 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %muxc, align 4
  %call37.3 = tail call i32 @i2c_mux_add_adapter(ptr noundef %32, i32 noundef 0, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.3)
  %tobool38.not.3 = icmp eq i32 %call37.3, 0
  br i1 %tobool38.not.3, label %if.then35.3.for.inc.3_crit_edge, label %if.then35.3.if.then43_crit_edge

if.then35.3.if.then43_crit_edge:                  ; preds = %if.then35.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then35.3.for.inc.3_crit_edge:                  ; preds = %if.then35.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then35.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %call47 = tail call ptr @devm_kmemdup(ptr noundef %dev2, ptr noundef nonnull @sbsm_default_psy_desc, i32 noundef 52, i32 noundef 3264) #7
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %for.inc.3.cleanup_crit_edge, label %if.end50

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %if.then35.3.if.then43_crit_edge, %if.then35.2.if.then43_crit_edge, %if.then35.1.if.then43_crit_edge, %if.then35.if.then43_crit_edge
  %i.0139.lcssa = phi i32 [ 1, %if.then35.if.then43_crit_edge ], [ 2, %if.then35.1.if.then43_crit_edge ], [ 3, %if.then35.2.if.then43_crit_edge ], [ 4, %if.then35.3.if.then43_crit_edge ]
  %call37.lcssa = phi i32 [ %call37, %if.then35.if.then43_crit_edge ], [ %call37.1, %if.then35.1.if.then43_crit_edge ], [ %call37.2, %if.then35.2.if.then43_crit_edge ], [ %call37.3, %if.then35.3.if.then43_crit_edge ]
  %call45 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev2, i32 noundef %call37.lcssa, ptr noundef nonnull @.str.3, i32 noundef %i.0139.lcssa) #7
  br label %cleanup

if.end50:                                         ; preds = %for.inc.3
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i131 = icmp eq ptr %34, null
  br i1 %tobool.not.i131, label %if.end.i, label %if.end50.dev_name.exit_crit_edge

if.end50.dev_name.exit_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end50.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %36, %if.end.i ], [ %34, %if.end50.dev_name.exit_crit_edge ]
  %call53 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev2, i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i) #7
  %37 = ptrtoint ptr %call47 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call53, ptr %call47, align 4
  %tobool56.not = icmp eq ptr %call53, null
  br i1 %tobool56.not, label %dev_name.exit.cleanup_crit_edge, label %if.end58

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %dev_name.exit
  %call59 = tail call fastcc i32 @sbsm_gpio_setup(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end58.cleanup_crit_edge, label %if.end63

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %38 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %drv_data, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %41 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %psy_cfg, align 4
  %call65 = call ptr @devm_power_supply_register(ptr noundef %dev2, ptr noundef nonnull %call47, ptr noundef nonnull %psy_cfg) #7
  %psy = getelementptr inbounds %struct.sbsm_data, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %psy to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call65, ptr %psy, align 4
  %cmp.i132 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then68, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %call65 to i32
  %44 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call47, align 4
  %call72 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev2, i32 noundef %43, ptr noundef nonnull @.str.5, ptr noundef %45) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end63.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.then43, %for.inc.3.cleanup_crit_edge, %devm_add_action_or_reset.exit.thread, %if.then22, %sbsm_read_word.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.then43 ], [ %call72, %if.then68 ], [ %call23, %if.then22 ], [ -22, %entry.cleanup_crit_edge ], [ -96, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call.2.i, %sbsm_read_word.exit ], [ -12, %for.inc.3.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ %call59, %if.end58.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ %call.i130, %devm_add_action_or_reset.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbsm_alert(ptr nocapture noundef readonly %client, i32 noundef %prot, i32 noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  br i1 %cmp1.i, label %entry.if.then_crit_edge, label %for.cond.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i)
  %cmp1.1.i = icmp sgt i32 %call.1.i, -1
  br i1 %cmp1.1.i, label %for.cond.i.if.then_crit_edge, label %for.cond.1.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2.i)
  %cmp1.2.i = icmp sgt i32 %call.2.i, -1
  br i1 %cmp1.2.i, label %for.cond.1.i.if.then_crit_edge, label %sbsm_read_word.exit

for.cond.1.i.if.then_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sbsm_read_word.exit:                              ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.6, i32 noundef 1) #10
  br label %if.end

if.then:                                          ; preds = %for.cond.1.i.if.then_crit_edge, %for.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call17.i.ph = phi i32 [ %call.2.i, %for.cond.1.i.if.then_crit_edge ], [ %call.1.i, %for.cond.i.if.then_crit_edge ], [ %call.i, %entry.if.then_crit_edge ]
  %last_state = getelementptr inbounds %struct.sbsm_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %last_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_state, align 4
  %xor = xor i32 %5, %call17.i.ph
  store i32 %call17.i.ph, ptr %last_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sbsm_read_word.exit
  %irq_bat.0 = phi i32 [ %xor, %if.then ], [ 0, %sbsm_read_word.exit ]
  %state.0 = phi i32 [ %call17.i.ph, %if.then ], [ 0, %sbsm_read_word.exit ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i36 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %7, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i36)
  %cmp1.i37 = icmp sgt i32 %call.i36, -1
  br i1 %cmp1.i37, label %if.end.land.lhs.true_crit_edge, label %for.cond.i40

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.cond.i40:                                     ; preds = %if.end
  %call.1.i38 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %7, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i38)
  %cmp1.1.i39 = icmp sgt i32 %call.1.i38, -1
  br i1 %cmp1.1.i39, label %for.cond.i40.land.lhs.true_crit_edge, label %for.cond.1.i43

for.cond.i40.land.lhs.true_crit_edge:             ; preds = %for.cond.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.cond.1.i43:                                   ; preds = %for.cond.i40
  %call.2.i41 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %7, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2.i41)
  %cmp1.2.i42 = icmp sgt i32 %call.2.i41, -1
  br i1 %cmp1.2.i42, label %for.cond.1.i43.land.lhs.true_crit_edge, label %sbsm_read_word.exit47

for.cond.1.i43.land.lhs.true_crit_edge:           ; preds = %for.cond.1.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

sbsm_read_word.exit47:                            ; preds = %for.cond.1.i43
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i44 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i44, ptr noundef nonnull @.str.6, i32 noundef 2) #10
  br label %if.end10

land.lhs.true:                                    ; preds = %for.cond.1.i43.land.lhs.true_crit_edge, %for.cond.i40.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call17.i46.ph = phi i32 [ %call.2.i41, %for.cond.1.i43.land.lhs.true_crit_edge ], [ %call.1.i38, %for.cond.i40.land.lhs.true_crit_edge ], [ %call.i36, %if.end.land.lhs.true_crit_edge ]
  %last_state_cont = getelementptr inbounds %struct.sbsm_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %last_state_cont to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_state_cont, align 4
  %xor7 = xor i32 %9, %call17.i46.ph
  %and = and i32 %xor7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %supported_bats = getelementptr inbounds %struct.sbsm_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %supported_bats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %supported_bats, align 4
  %and9 = and i32 %11, %state.0
  %or = or i32 %and9, %irq_bat.0
  %psy = getelementptr inbounds %struct.sbsm_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %psy, align 4
  tail call void @power_supply_changed(ptr noundef %13) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %sbsm_read_word.exit47
  %call17.i4654 = phi i32 [ %call17.i46.ph, %if.then8 ], [ %call17.i46.ph, %land.lhs.true.if.end10_crit_edge ], [ %call.2.i41, %sbsm_read_word.exit47 ]
  %irq_bat.1 = phi i32 [ %or, %if.then8 ], [ %irq_bat.0, %land.lhs.true.if.end10_crit_edge ], [ %irq_bat.0, %sbsm_read_word.exit47 ]
  %last_state_cont11 = getelementptr inbounds %struct.sbsm_data, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %last_state_cont11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call17.i4654, ptr %last_state_cont11, align 4
  %muxc = getelementptr inbounds %struct.sbsm_data, ptr %1, i32 0, i32 1
  %and13 = and i32 %irq_bat.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.for.inc_crit_edge, label %if.then15

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %muxc, align 4
  %arrayidx = getelementptr %struct.i2c_mux_core, ptr %16, i32 0, i32 8, i32 0
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9
  %call16 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @sbsm_do_alert) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end10.for.inc_crit_edge
  %and13.1 = and i32 %irq_bat.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.1)
  %tobool14.not.1 = icmp eq i32 %and13.1, 0
  br i1 %tobool14.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then15.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then15.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %muxc, align 4
  %arrayidx.1 = getelementptr %struct.i2c_mux_core, ptr %20, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.1, align 4
  %dev.1 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  %call16.1 = tail call i32 @device_for_each_child(ptr noundef %dev.1, ptr noundef null, ptr noundef nonnull @sbsm_do_alert) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then15.1, %for.inc.for.inc.1_crit_edge
  %and13.2 = and i32 %irq_bat.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.2)
  %tobool14.not.2 = icmp eq i32 %and13.2, 0
  br i1 %tobool14.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then15.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then15.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %muxc, align 4
  %arrayidx.2 = getelementptr %struct.i2c_mux_core, ptr %24, i32 0, i32 8, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.2, align 4
  %dev.2 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 9
  %call16.2 = tail call i32 @device_for_each_child(ptr noundef %dev.2, ptr noundef null, ptr noundef nonnull @sbsm_do_alert) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then15.2, %for.inc.1.for.inc.2_crit_edge
  %and13.3 = and i32 %irq_bat.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.3)
  %tobool14.not.3 = icmp eq i32 %and13.3, 0
  br i1 %tobool14.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then15.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then15.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %muxc, align 4
  %arrayidx.3 = getelementptr %struct.i2c_mux_core, ptr %28, i32 0, i32 8, i32 3
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.3, align 4
  %dev.3 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9
  %call16.3 = tail call i32 @device_for_each_child(ptr noundef %dev.3, ptr noundef null, ptr noundef nonnull @sbsm_do_alert) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then15.3, %for.inc.2.for.inc.3_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbsm_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %cur_chan = getelementptr inbounds %struct.sbsm_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cur_chan, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %chan)
  %cmp = icmp eq i32 %conv, %chan
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %chan, 11
  %shl = shl nuw i32 1, %add
  %conv3 = trunc i32 %shl to i16
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 1, i16 noundef zeroext %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  br i1 %cmp1.i, label %if.end.sbsm_write_word.exit_crit_edge, label %for.cond.i

if.end.sbsm_write_word.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sbsm_write_word.exit

for.cond.i:                                       ; preds = %if.end
  %call.1.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 1, i16 noundef zeroext %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i)
  %cmp1.1.i = icmp sgt i32 %call.1.i, -1
  br i1 %cmp1.1.i, label %for.cond.i.sbsm_write_word.exit_crit_edge, label %for.cond.1.i

for.cond.i.sbsm_write_word.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sbsm_write_word.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 1, i16 noundef zeroext %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2.i)
  %cmp1.2.i = icmp sgt i32 %call.2.i, -1
  br i1 %cmp1.2.i, label %for.cond.1.i.sbsm_write_word.exit_crit_edge, label %sbsm_write_word.exit.thread

for.cond.1.i.sbsm_write_word.exit_crit_edge:      ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sbsm_write_word.exit

sbsm_write_word.exit.thread:                      ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 1) #10
  br label %do.end

sbsm_write_word.exit:                             ; preds = %for.cond.1.i.sbsm_write_word.exit_crit_edge, %for.cond.i.sbsm_write_word.exit_crit_edge, %if.end.sbsm_write_word.exit_crit_edge
  %call17.i = phi i32 [ %call.i, %if.end.sbsm_write_word.exit_crit_edge ], [ %call.1.i, %for.cond.i.sbsm_write_word.exit_crit_edge ], [ %call.2.i, %for.cond.1.i.sbsm_write_word.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  br i1 %tobool.not, label %if.else, label %sbsm_write_word.exit.do.end_crit_edge

sbsm_write_word.exit.do.end_crit_edge:            ; preds = %sbsm_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %sbsm_write_word.exit.do.end_crit_edge, %sbsm_write_word.exit.thread
  %call17.i23 = phi i32 [ %call.2.i, %sbsm_write_word.exit.thread ], [ %call17.i, %sbsm_write_word.exit.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %chan) #10
  br label %cleanup

if.else:                                          ; preds = %sbsm_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv7 = trunc i32 %chan to i8
  %6 = ptrtoint ptr %cur_chan to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7, ptr %cur_chan, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ %call17.i23, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbsm_del_mux_adapter(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %muxc = getelementptr inbounds %struct.sbsm_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %muxc, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbsm_gpio_setup(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.sbsm_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @device_property_present(ptr noundef %dev2, ptr noundef nonnull @.str.15) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  br i1 %cmp1.i, label %if.end.if.end5_crit_edge, label %for.cond.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.i:                                       ; preds = %if.end
  %call.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i)
  %cmp1.1.i = icmp sgt i32 %call.1.i, -1
  br i1 %cmp1.1.i, label %for.cond.i.if.end5_crit_edge, label %for.cond.1.i

for.cond.i.if.end5_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2.i)
  %cmp1.2.i = icmp sgt i32 %call.2.i, -1
  br i1 %cmp1.2.i, label %for.cond.1.i.if.end5_crit_edge, label %sbsm_read_word.exit

for.cond.1.i.if.end5_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

sbsm_read_word.exit:                              ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.6, i32 noundef 1) #10
  br label %cleanup

if.end5:                                          ; preds = %for.cond.1.i.if.end5_crit_edge, %for.cond.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call17.i.ph = phi i32 [ %call.2.i, %for.cond.1.i.if.end5_crit_edge ], [ %call.1.i, %for.cond.i.if.end5_crit_edge ], [ %call.i, %if.end.if.end5_crit_edge ]
  %last_state = getelementptr inbounds %struct.sbsm_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %last_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call17.i.ph, ptr %last_state, align 4
  %call.i43 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i43)
  %cmp1.i44 = icmp sgt i32 %call.i43, -1
  br i1 %cmp1.i44, label %if.end5.if.end9_crit_edge, label %for.cond.i47

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.cond.i47:                                     ; preds = %if.end5
  %call.1.i45 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i45)
  %cmp1.1.i46 = icmp sgt i32 %call.1.i45, -1
  br i1 %cmp1.1.i46, label %for.cond.i47.if.end9_crit_edge, label %for.cond.1.i50

for.cond.i47.if.end9_crit_edge:                   ; preds = %for.cond.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.cond.1.i50:                                   ; preds = %for.cond.i47
  %call.2.i48 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2.i48)
  %cmp1.2.i49 = icmp sgt i32 %call.2.i48, -1
  br i1 %cmp1.2.i49, label %for.cond.1.i50.if.end9_crit_edge, label %sbsm_read_word.exit54

for.cond.1.i50.if.end9_crit_edge:                 ; preds = %for.cond.1.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

sbsm_read_word.exit54:                            ; preds = %for.cond.1.i50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.6, i32 noundef 2) #10
  br label %cleanup

if.end9:                                          ; preds = %for.cond.1.i50.if.end9_crit_edge, %for.cond.i47.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %call17.i53.ph = phi i32 [ %call.2.i48, %for.cond.1.i50.if.end9_crit_edge ], [ %call.1.i45, %for.cond.i47.if.end9_crit_edge ], [ %call.i43, %if.end5.if.end9_crit_edge ]
  %last_state_cont = getelementptr inbounds %struct.sbsm_data, ptr %data, i32 0, i32 8
  %3 = ptrtoint ptr %last_state_cont to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call17.i53.ph, ptr %last_state_cont, align 4
  %get = getelementptr inbounds %struct.sbsm_data, ptr %data, i32 0, i32 4, i32 10
  %4 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sbsm_gpio_get_value, ptr %get, align 4
  %direction_input = getelementptr inbounds %struct.sbsm_data, ptr %data, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sbsm_gpio_direction_input, ptr %direction_input, align 4
  %can_sleep = getelementptr inbounds %struct.sbsm_data, ptr %data, i32 0, i32 4, i32 23
  %6 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %can_sleep, align 4
  %base = getelementptr inbounds %struct.sbsm_data, ptr %data, i32 0, i32 4, i32 19
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.sbsm_data, ptr %data, i32 0, i32 4, i32 20
  %8 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4, ptr %ngpio, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name, ptr %chip, align 4
  %parent = getelementptr inbounds %struct.sbsm_data, ptr %data, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev2, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.sbsm_data, ptr %data, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %owner, align 4
  %call10 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev2, ptr noundef %chip, ptr noundef %data, ptr noundef nonnull @sbsm_gpio_setup.lock_key, ptr noundef nonnull @sbsm_gpio_setup.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev2, i32 noundef %call10, ptr noundef nonnull @.str.16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %sbsm_read_word.exit54, %sbsm_read_word.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then11 ], [ 0, %entry.cleanup_crit_edge ], [ %call.2.i, %sbsm_read_word.exit ], [ %call.2.i48, %sbsm_read_word.exit54 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbsm_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %2, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  br i1 %cmp1.i, label %sw.bb.if.end_crit_edge, label %for.cond.i

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i:                                       ; preds = %sw.bb
  %call.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %2, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i)
  %cmp1.1.i = icmp sgt i32 %call.1.i, -1
  br i1 %cmp1.1.i, label %for.cond.i.if.end_crit_edge, label %for.cond.1.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %2, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2.i)
  %cmp1.2.i = icmp sgt i32 %call.2.i, -1
  br i1 %cmp1.2.i, label %for.cond.1.i.if.end_crit_edge, label %sbsm_read_word.exit

for.cond.1.i.if.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sbsm_read_word.exit:                              ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.6, i32 noundef 2) #10
  br label %cleanup

if.end:                                           ; preds = %for.cond.1.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %call17.i.ph = phi i32 [ %call.2.i, %for.cond.1.i.if.end_crit_edge ], [ %call.1.i, %for.cond.i.if.end_crit_edge ], [ %call.i, %sw.bb.if.end_crit_edge ]
  %and = and i32 %call17.i.ph, 1
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %call.i40 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %5, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i40)
  %cmp1.i41 = icmp sgt i32 %call.i40, -1
  br i1 %cmp1.i41, label %sw.bb3.if.end8_crit_edge, label %for.cond.i44

sw.bb3.if.end8_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.cond.i44:                                     ; preds = %sw.bb3
  %call.1.i42 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %5, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i42)
  %cmp1.1.i43 = icmp sgt i32 %call.1.i42, -1
  br i1 %cmp1.1.i43, label %for.cond.i44.if.end8_crit_edge, label %for.cond.1.i47

for.cond.i44.if.end8_crit_edge:                   ; preds = %for.cond.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.cond.1.i47:                                   ; preds = %for.cond.i44
  %call.2.i45 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %5, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2.i45)
  %cmp1.2.i46 = icmp sgt i32 %call.2.i45, -1
  br i1 %cmp1.2.i46, label %for.cond.1.i47.if.end8_crit_edge, label %sbsm_read_word.exit51

for.cond.1.i47.if.end8_crit_edge:                 ; preds = %for.cond.1.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

sbsm_read_word.exit51:                            ; preds = %for.cond.1.i47
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i48 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i48, ptr noundef nonnull @.str.6, i32 noundef 1) #10
  br label %cleanup

if.end8:                                          ; preds = %for.cond.1.i47.if.end8_crit_edge, %for.cond.i44.if.end8_crit_edge, %sw.bb3.if.end8_crit_edge
  %call17.i50.ph = phi i32 [ %call.2.i45, %for.cond.1.i47.if.end8_crit_edge ], [ %call.1.i42, %for.cond.i44.if.end8_crit_edge ], [ %call.i40, %sw.bb3.if.end8_crit_edge ]
  %and9 = and i32 %call17.i50.ph, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %val, align 4
  %is_ltc1760 = getelementptr inbounds %struct.sbsm_data, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %is_ltc1760 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_ltc1760, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %call.i52 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %11, i8 noundef zeroext 60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i52)
  %cmp1.i53 = icmp sgt i32 %call.i52, -1
  br i1 %cmp1.i53, label %if.then14.if.else_crit_edge, label %for.cond.i56

if.then14.if.else_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.cond.i56:                                     ; preds = %if.then14
  %call.1.i54 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %11, i8 noundef zeroext 60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i54)
  %cmp1.1.i55 = icmp sgt i32 %call.1.i54, -1
  br i1 %cmp1.1.i55, label %for.cond.i56.if.else_crit_edge, label %for.cond.1.i59

for.cond.i56.if.else_crit_edge:                   ; preds = %for.cond.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.cond.1.i59:                                   ; preds = %for.cond.i56
  %call.2.i57 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %11, i8 noundef zeroext 60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2.i57)
  %cmp1.2.i58 = icmp sgt i32 %call.2.i57, -1
  br i1 %cmp1.2.i58, label %for.cond.1.i59.if.else_crit_edge, label %sbsm_read_word.exit63

for.cond.1.i59.if.else_crit_edge:                 ; preds = %for.cond.1.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sbsm_read_word.exit63:                            ; preds = %for.cond.1.i59
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i60 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i60, ptr noundef nonnull @.str.6, i32 noundef 60) #10
  br label %cleanup

if.else:                                          ; preds = %for.cond.1.i59.if.else_crit_edge, %for.cond.i56.if.else_crit_edge, %if.then14.if.else_crit_edge
  %call17.i62.ph = phi i32 [ %call.2.i57, %for.cond.1.i59.if.else_crit_edge ], [ %call.1.i54, %for.cond.i56.if.else_crit_edge ], [ %call.i52, %if.then14.if.else_crit_edge ]
  %and19 = and i32 %call17.i62.ph, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else.cleanup_crit_edge, label %if.then21

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.else.cleanup_crit_edge, %sbsm_read_word.exit63, %if.end12.cleanup_crit_edge, %if.then11, %sbsm_read_word.exit51, %if.end, %sbsm_read_word.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ %call.2.i, %sbsm_read_word.exit ], [ %call.2.i45, %sbsm_read_word.exit51 ], [ %call.2.i57, %sbsm_read_word.exit63 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbsm_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %psp)
  %cond2 = icmp eq i32 %psp, 1
  br i1 %cond2, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %is_ltc1760 = getelementptr inbounds %struct.sbsm_data, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %is_ltc1760 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ltc1760, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  %conv = select i1 %cmp, i16 128, i16 0
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %5, i8 noundef zeroext 60, i16 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  br i1 %cmp1.i, label %if.end.sw.epilog_crit_edge, label %for.cond.i

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.i:                                       ; preds = %if.end
  %call.1.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %5, i8 noundef zeroext 60, i16 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i)
  %cmp1.1.i = icmp sgt i32 %call.1.i, -1
  br i1 %cmp1.1.i, label %for.cond.i.sw.epilog_crit_edge, label %for.cond.1.i

for.cond.i.sw.epilog_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %5, i8 noundef zeroext 60, i16 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2.i)
  %cmp1.2.i = icmp sgt i32 %call.2.i, -1
  br i1 %cmp1.2.i, label %for.cond.1.i.sw.epilog_crit_edge, label %for.cond.2.i

for.cond.1.i.sw.epilog_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef 60) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.cond.2.i, %for.cond.1.i.sw.epilog_crit_edge, %for.cond.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %sw.bb.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ], [ %call.2.i, %for.cond.2.i ], [ %call.i, %if.end.sw.epilog_crit_edge ], [ %call.1.i, %for.cond.i.sw.epilog_crit_edge ], [ %call.2.i, %for.cond.1.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbsm_prop_is_writeable(ptr noundef %psy, i32 noundef %psp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %psp)
  %cmp = icmp eq i32 %psp, 1
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %is_ltc1760 = getelementptr inbounds %struct.sbsm_data, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %is_ltc1760 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_ltc1760, align 4, !range !76
  %tobool = zext i8 %1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbsm_gpio_get_value(ptr noundef %gc, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  br i1 %cmp1.i, label %entry.sbsm_read_word.exit_crit_edge, label %for.cond.i

entry.sbsm_read_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sbsm_read_word.exit

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.1.i)
  %cmp1.1.i = icmp sgt i32 %call.1.i, -1
  br i1 %cmp1.1.i, label %for.cond.i.sbsm_read_word.exit_crit_edge, label %for.cond.1.i

for.cond.i.sbsm_read_word.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sbsm_read_word.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.2.i)
  %cmp1.2.i = icmp sgt i32 %call.2.i, -1
  br i1 %cmp1.2.i, label %for.cond.1.i.sbsm_read_word.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.sbsm_read_word.exit_crit_edge:       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sbsm_read_word.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.6, i32 noundef 1) #10
  br label %sbsm_read_word.exit

sbsm_read_word.exit:                              ; preds = %for.cond.2.i, %for.cond.1.i.sbsm_read_word.exit_crit_edge, %for.cond.i.sbsm_read_word.exit_crit_edge, %entry.sbsm_read_word.exit_crit_edge
  %call17.i = phi i32 [ %call.2.i, %for.cond.2.i ], [ %call.i, %entry.sbsm_read_word.exit_crit_edge ], [ %call.1.i, %for.cond.i.sbsm_read_word.exit_crit_edge ], [ %call.2.i, %for.cond.1.i.sbsm_read_word.exit_crit_edge ]
  %shl = shl nuw i32 1, %off
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17.i)
  %cmp.inv = icmp sgt i32 %call17.i, -1
  %and = select i1 %cmp.inv, i32 %shl, i32 -1
  %retval.0 = and i32 %and, %call17.i
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sbsm_gpio_direction_input(ptr nocapture noundef readnone %gc, i32 noundef %off) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbsm_do_alert(ptr noundef %dev, ptr nocapture noundef readnone %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @i2c_verify_client(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %addr = getelementptr inbounds %struct.i2c_client, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %1)
  %cmp.not = icmp eq i16 %1, 11
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %call, i32 0, i32 4
  %driver3 = getelementptr inbounds %struct.i2c_client, ptr %call, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %driver3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver3, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.body14, label %if.then5

if.then5:                                         ; preds = %if.end
  %alert = getelementptr i8, ptr %3, i32 -8
  %4 = ptrtoint ptr %alert to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alert, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %do.end, label %if.then9

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0) #7
  br label %if.end26

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.17) #10
  br label %if.end26

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbsm_do_alert.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbsm_do_alert, %if.end26)) #7
          to label %if.then21 [label %if.end26], !srcloc !77

if.then21:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbsm_do_alert.__UNIQUE_ID_ddebug288, ptr noundef %dev2, ptr noundef nonnull @.str.21) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %do.body14, %do.end, %if.then9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end26 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !51, !53, !55, !56, !57, !58, !59, !61, !62, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_sbs_manager__289_416_sbsm_driver_init6, !1, !"__initcall__kmod_sbs_manager__289_416_sbsm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/sbs-manager.c", i32 416, i32 1}
!2 = !{ptr @__exitcall_sbsm_driver_exit, !1, !"__exitcall_sbsm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file290, !4, !"__UNIQUE_ID_file290", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/sbs-manager.c", i32 418, i32 1}
!5 = !{ptr @__UNIQUE_ID_license291, !4, !"__UNIQUE_ID_license291", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author292, !7, !"__UNIQUE_ID_author292", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/sbs-manager.c", i32 419, i32 1}
!8 = !{ptr @__UNIQUE_ID_description293, !9, !"__UNIQUE_ID_description293", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/sbs-manager.c", i32 420, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/sbs-manager.c", i32 409, i32 11}
!12 = !{ptr @sbsm_driver, !13, !"sbsm_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/sbs-manager.c", i32 407, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/sbs-manager.c", i32 342, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/sbs-manager.c", i32 351, i32 38}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/sbs-manager.c", i32 367, i32 34}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/sbs-manager.c", i32 373, i32 51}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/sbs-manager.c", i32 386, i32 10}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/sbs-manager.c", i32 69, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sbsm_read_word._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @sbsm_read_word._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/sbs-manager.c", i32 186, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sbsm_select._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @sbsm_select._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/sbs-manager.c", i32 86, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sbsm_write_word._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @sbsm_write_word._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @sbsm_default_psy_desc, !43, !"sbsm_default_psy_desc", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/sbs-manager.c", i32 303, i32 39}
!44 = !{ptr @sbsm_props, !45, !"sbsm_props", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/sbs-manager.c", i32 53, i32 35}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/sbs-manager.c", i32 274, i32 36}
!48 = !{ptr @sbsm_gpio_setup.lock_key, !49, !"lock_key", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/sbs-manager.c", i32 296, i32 8}
!50 = !{ptr @sbsm_gpio_setup.request_key, !49, !"request_key", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/sbs-manager.c", i32 298, i32 34}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/sbs-manager.c", i32 228, i32 4}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sbsm_do_alert._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @sbsm_do_alert._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/sbs-manager.c", i32 230, i32 3}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sbsm_do_alert.__UNIQUE_ID_ddebug288, !60, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!63 = !{ptr @sbsm_dt_ids, !64, !"sbsm_dt_ids", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/sbs-manager.c", i32 399, i32 34}
!65 = !{ptr @sbsm_ids, !66, !"sbsm_ids", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/sbs-manager.c", i32 391, i32 35}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i8 0, i8 2}
!77 = !{i64 2148309840, i64 2148309845, i64 2148309858, i64 2148309902, i64 2148309936, i64 2148309957}
