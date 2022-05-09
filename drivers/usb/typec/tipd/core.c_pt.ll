; ModuleID = '/llk/IR_all_yes/drivers/usb/typec/tipd/core.c_pt.bc'
source_filename = "../drivers/usb/typec/tipd/core.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.typec_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.tps6598x = type { ptr, ptr, %struct.mutex, i8, ptr, ptr, %struct.usb_pd_identity, ptr, %struct.typec_capability, ptr, %struct.power_supply_desc, i32 }
%struct.usb_pd_identity = type { i32, i32, i32, [3 x i32] }
%struct.typec_capability = type { i32, i32, i16, i16, i32, i32, [3 x i32], i8, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tps6598x_rx_identity_reg = type <{ i8, %struct.usb_pd_identity }>
%struct.typec_partner_desc = type { i8, i32, ptr, i16 }

@__initcall__kmod_tps6598x__299_896_tps6598x_i2c_driver_init6 = internal global ptr @tps6598x_i2c_driver_init, section ".initcall6.init", align 4
@tps6598x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @tps6598x_remove, ptr @tps6598x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps6598x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps6598x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tps6598x_i2c_driver_exit = internal global ptr @tps6598x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [66 x i8] c"tps6598x.author=Heikki Krogerus <heikki.krogerus@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [46 x i8] c"tps6598x.file=drivers/usb/typec/tipd/tps6598x\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [24 x i8] c"tps6598x.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [70 x i8] c"tps6598x.description=TI TPS6598x USB Power Delivery Controller Driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tps6598x\00", [23 x i8] zeroinitializer }, align 32
@tps6598x_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps6598x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apple,cd321x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tps6598x_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps6598x\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tps6598x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tps->lock\00", [21 x i8] zeroinitializer }, align 32
@tps6598x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tps6598x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"core:719:(&tps6598x_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apple,cd321x\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connector\00", [22 x i8] zeroinitializer }, align 32
@tps6598x_ops = internal constant { %struct.typec_operations, [44 x i8] } { %struct.typec_operations { ptr null, ptr @tps6598x_dr_set, ptr @tps6598x_pr_set, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@tps6598x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 837, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register partner\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tps6598x_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/typec/tipd/core.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tps6598x_probe._entry_ptr = internal global ptr @tps6598x_probe._entry, section ".printk_index", align 4
@tps6598x_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 529, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: failed to read events\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tps6598x_interrupt\00", [45 x i8] zeroinitializer }, align 32
@tps6598x_interrupt._entry_ptr = internal global ptr @tps6598x_interrupt._entry, section ".printk_index", align 4
@__tracepoint_tps6598x_irq = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/typec/tipd/trace.h\00", [33 x i8] zeroinitializer }, align 32
@trace_tps6598x_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@tps6598x_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 420, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: failed to read status\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tps6598x_read_status\00", [43 x i8] zeroinitializer }, align 32
@tps6598x_read_status._entry_ptr = internal global ptr @tps6598x_read_status._entry, section ".printk_index", align 4
@tps6598x_read_power_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 450, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read power status: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tps6598x_read_power_status\00", [37 x i8] zeroinitializer }, align 32
@tps6598x_read_power_status._entry_ptr = internal global ptr @tps6598x_read_power_status._entry, section ".printk_index", align 4
@__tracepoint_tps6598x_power_status = external dso_local global %struct.tracepoint, align 4
@trace_tps6598x_power_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tps6598x_read_data_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 435, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read data status: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tps6598x_read_data_status\00", [38 x i8] zeroinitializer }, align 32
@tps6598x_read_data_status._entry_ptr = internal global ptr @tps6598x_read_data_status._entry, section ".printk_index", align 4
@__tracepoint_tps6598x_data_status = external dso_local global %struct.tracepoint, align 4
@trace_tps6598x_data_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tps6598x_handle_plug_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.21, ptr @.str.7, i32 465, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tps6598x_handle_plug_event\00", [37 x i8] zeroinitializer }, align 32
@tps6598x_handle_plug_event._entry_ptr = internal global ptr @tps6598x_handle_plug_event._entry, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SSPS\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cd321x_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.23, ptr @.str.7, i32 482, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cd321x_interrupt\00", [47 x i8] zeroinitializer }, align 32
@cd321x_interrupt._entry_ptr = internal global ptr @cd321x_interrupt._entry, section ".printk_index", align 4
@__tracepoint_cd321x_irq = external dso_local global %struct.tracepoint, align 4
@trace_cd321x_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@modes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [16 x i8] zeroinitializer }, align 32
@tps6598x_check_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 577, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dead-battery condition\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tps6598x_check_mode\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tps6598x_check_mode._entry_ptr = internal global ptr @tps6598x_check_mode._entry, section ".printk_index", align 4
@tps6598x_check_mode._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.7, i32 583, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"controller in unsupported mode \22%s\22\0A\00", [59 x i8] zeroinitializer }, align 32
@tps6598x_check_mode._entry_ptr.29 = internal global ptr @tps6598x_check_mode._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"APP \00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BOOT\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BIST\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DISC\00", [27 x i8] zeroinitializer }, align 32
@__tracepoint_tps6598x_status = external dso_local global %struct.tracepoint, align 4
@trace_tps6598x_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWUF\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWDF\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWSk\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SWSr\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@tps6598x_psy_usb_types = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 5, i32 6], [24 x i8] zeroinitializer }, align 32
@tps6598x_psy_props = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 65, i32 4], [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tps6598x-source-psy-\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1145914145]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 65]
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"tps6598x_i2c_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 887, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 889, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"tps6598x_of_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 874, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"tps6598x_id\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 881, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 716, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"tps6598x_regmap_config\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 590, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 719, i32 16 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 734, i32 40 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 778, i32 53 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"tps6598x_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 409, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 837, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 529, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [34 x i8] c"../drivers/usb/typec/tipd/trace.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 197, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 108, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 420, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 450, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 435, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 465, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 656, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 482, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 71, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 577, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 582, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 72, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 73, i32 20 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 74, i32 20 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 75, i32 20 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 351, i32 45 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 351, i32 54 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 381, i32 43 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 381, i32 52 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 679, i32 50 }
@___asan_gen_.205 = private unnamed_addr constant [23 x i8] c"tps6598x_psy_usb_types\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 103, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant [19 x i8] c"tps6598x_psy_props\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 98, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [33 x i8] c"../drivers/usb/typec/tipd/core.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 108, i32 47 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_tps6598x_i2c_driver_exit, ptr @__initcall__kmod_tps6598x__299_896_tps6598x_i2c_driver_init6, ptr @cd321x_interrupt._entry, ptr @cd321x_interrupt._entry_ptr, ptr @tps6598x_check_mode._entry, ptr @tps6598x_check_mode._entry.27, ptr @tps6598x_check_mode._entry_ptr, ptr @tps6598x_check_mode._entry_ptr.29, ptr @tps6598x_handle_plug_event._entry, ptr @tps6598x_handle_plug_event._entry_ptr, ptr @tps6598x_i2c_driver_exit, ptr @tps6598x_interrupt._entry, ptr @tps6598x_interrupt._entry_ptr, ptr @tps6598x_probe._entry, ptr @tps6598x_probe._entry_ptr, ptr @tps6598x_read_data_status._entry, ptr @tps6598x_read_data_status._entry_ptr, ptr @tps6598x_read_power_status._entry, ptr @tps6598x_read_power_status._entry_ptr, ptr @tps6598x_read_status._entry, ptr @tps6598x_read_status._entry_ptr, ptr @tps6598x_i2c_driver, ptr @.str, ptr @tps6598x_of_match, ptr @tps6598x_id, ptr @tps6598x_probe.__key, ptr @.str.1, ptr @tps6598x_probe._key, ptr @tps6598x_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tps6598x_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @modes, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @tps6598x_psy_usb_types, ptr @tps6598x_psy_props, ptr @.str.39], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_read_power_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_read_data_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_handle_plug_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cd321x_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_check_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_check_mode._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_psy_usb_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps6598x_psy_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6598x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps6598x_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tps6598x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tps6598x_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6598x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @tps6598x_disconnect(ptr noundef %1, i32 noundef 0)
  %port = getelementptr inbounds %struct.tps6598x, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  tail call void @typec_unregister_port(ptr noundef %3) #7
  %role_sw = getelementptr inbounds %struct.tps6598x, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %role_sw, align 4
  tail call void @usb_role_switch_put(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6598x_probe(ptr noundef %client) #2 align 64 {
entry:
  %data.i.i187 = alloca [65 x i8], align 1
  %val.addr.i = alloca i64, align 8
  %data.i.i.i171 = alloca [65 x i8], align 1
  %mode.i = alloca [5 x i8], align 4
  %data.i.i1.i = alloca [65 x i8], align 1
  %data.i.i.i = alloca [65 x i8], align 1
  %target_state.addr.i = alloca i8, align 1
  %state.i = alloca i8, align 1
  %data.i.i = alloca [65 x i8], align 1
  %typec_cap = alloca %struct.typec_capability, align 4
  %status = alloca i32, align 4
  %conf = alloca i32, align 4
  %vid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %typec_cap) #7
  %2 = call ptr @memset(ptr %typec_cap, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conf) #7
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %conf, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vid) #7
  %5 = ptrtoint ptr %vid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %vid, align 4, !annotation !138
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 248, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.tps6598x, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tps6598x_probe.__key) #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tps6598x_regmap_config, ptr noundef nonnull @tps6598x_probe._key, ptr noundef nonnull @.str.2) #7
  %regmap = getelementptr inbounds %struct.tps6598x, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i) #7
  %9 = call ptr @memset(ptr %data.i.i, i32 255, i32 65)
  %i2c_protocol.i.i = getelementptr inbounds %struct.tps6598x, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then1.i.i, label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @regmap_raw_read(ptr noundef %call4, i32 noundef 0, ptr noundef nonnull %vid, i32 noundef 4) #7
  br label %tps6598x_read32.exit

if.end2.i.i:                                      ; preds = %if.end10
  %call6.i.i = call i32 @regmap_raw_read(ptr noundef %call4, i32 noundef 0, ptr noundef nonnull %data.i.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end2.i.i.tps6598x_read32.exit_crit_edge

if.end2.i.i.tps6598x_read32.exit_crit_edge:       ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp11.i.i = icmp ult i8 %12, 4
  br i1 %cmp11.i.i, label %tps6598x_read32.exit.thread, label %tps6598x_read32.exit.thread203

tps6598x_read32.exit.thread:                      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %cleanup

tps6598x_read32.exit.thread203:                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %arrayidx15.i.i, align 1
  %15 = ptrtoint ptr %vid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %vid, align 4
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %lor.lhs.false

tps6598x_read32.exit:                             ; preds = %if.end2.i.i.tps6598x_read32.exit_crit_edge, %if.then1.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then1.i.i ], [ %call6.i.i, %if.end2.i.i.tps6598x_read32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %tps6598x_read32.exit.cleanup_crit_edge, label %lor.lhs.falsethread-pre-split

tps6598x_read32.exit.cleanup_crit_edge:           ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.falsethread-pre-split:                    ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %vid, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.falsethread-pre-split, %tps6598x_read32.exit.thread203
  %17 = phi i32 [ %.pr, %lor.lhs.falsethread-pre-split ], [ %14, %tps6598x_read32.exit.thread203 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i169 = call i32 %23(ptr noundef %19) #7
  %and.i = and i32 %call.i.i169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not = icmp eq i32 %and.i, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %i2c_protocol.i.i, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %i2c_protocol.i.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %tobool19.not = icmp eq ptr %1, null
  br i1 %tobool19.not, label %if.end18.if.end27_crit_edge, label %land.lhs.true

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end18
  %call20 = call i32 @of_device_is_compatible(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end27_crit_edge, label %if.then22

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then22:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %target_state.addr.i)
  %25 = ptrtoint ptr %target_state.addr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %target_state.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state.i) #7
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %state.i, align 1, !annotation !138
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i.i) #7
  %27 = call ptr @memset(ptr %data.i.i.i, i32 255, i32 65)
  %28 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  br i1 %tobool.not.i.i.i, label %tps6598x_read8.exit.i, label %if.end2.i.i.i

if.end2.i.i.i:                                    ; preds = %if.then22
  %call6.i.i.i = call i32 @regmap_raw_read(ptr noundef %30, i32 noundef 32, ptr noundef nonnull %data.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end9.i.i.i, label %if.end2.i.i.i.tps6598x_read8.exit.thread.i_crit_edge

if.end2.i.i.i.tps6598x_read8.exit.thread.i_crit_edge: ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read8.exit.thread.i

if.end9.i.i.i:                                    ; preds = %if.end2.i.i.i
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp11.i.i.i = icmp eq i8 %32, 0
  br i1 %cmp11.i.i.i, label %if.end9.i.i.i.tps6598x_read8.exit.thread.i_crit_edge, label %tps6598x_read8.exit.thread19.i

if.end9.i.i.i.tps6598x_read8.exit.thread.i_crit_edge: ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read8.exit.thread.i

tps6598x_read8.exit.thread19.i:                   ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx15.i.i.i, align 1
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %state.i, align 1
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i.i) #7
  br label %if.end.i

tps6598x_read8.exit.thread.i:                     ; preds = %if.end9.i.i.i.tps6598x_read8.exit.thread.i_crit_edge, %if.end2.i.i.i.tps6598x_read8.exit.thread.i_crit_edge
  %retval.0.i.i.ph.i = phi i32 [ -5, %if.end9.i.i.i.tps6598x_read8.exit.thread.i_crit_edge ], [ %call6.i.i.i, %if.end2.i.i.i.tps6598x_read8.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i.i) #7
  br label %cd321x_switch_power_state.exit.thread

tps6598x_read8.exit.i:                            ; preds = %if.then22
  %call.i.i.i = call i32 @regmap_raw_read(ptr noundef %30, i32 noundef 32, ptr noundef nonnull %state.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %tps6598x_read8.exit.i.if.end.i_crit_edge, label %tps6598x_read8.exit.i.cd321x_switch_power_state.exit.thread_crit_edge

tps6598x_read8.exit.i.cd321x_switch_power_state.exit.thread_crit_edge: ; preds = %tps6598x_read8.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cd321x_switch_power_state.exit.thread

tps6598x_read8.exit.i.if.end.i_crit_edge:         ; preds = %tps6598x_read8.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %tps6598x_read8.exit.i.if.end.i_crit_edge, %tps6598x_read8.exit.thread19.i
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %state.i, align 1
  %38 = ptrtoint ptr %target_state.addr.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %target_state.addr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp.i170 = icmp eq i8 %37, %39
  br i1 %cmp.i170, label %if.end.i.cd321x_switch_power_state.exit_crit_edge, label %if.end4.i

if.end.i.cd321x_switch_power_state.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cd321x_switch_power_state.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call fastcc i32 @tps6598x_exec_cmd(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull %target_state.addr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.cd321x_switch_power_state.exit.thread_crit_edge

if.end4.i.cd321x_switch_power_state.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cd321x_switch_power_state.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i1.i) #7
  %40 = call ptr @memset(ptr %data.i.i1.i, i32 255, i32 65)
  %41 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i.i3.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i3.i)
  %tobool.not.i.i4.i = icmp sgt i8 %bf.load.i.i3.i, -1
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  br i1 %tobool.not.i.i4.i, label %tps6598x_read8.exit16.i, label %if.end2.i.i10.i

if.end2.i.i10.i:                                  ; preds = %if.end8.i
  %call6.i.i8.i = call i32 @regmap_raw_read(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %data.i.i1.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i8.i)
  %tobool7.not.i.i9.i = icmp eq i32 %call6.i.i8.i, 0
  br i1 %tobool7.not.i.i9.i, label %if.end9.i.i12.i, label %if.end2.i.i10.i.tps6598x_read8.exit16.thread.i_crit_edge

if.end2.i.i10.i.tps6598x_read8.exit16.thread.i_crit_edge: ; preds = %if.end2.i.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read8.exit16.thread.i

if.end9.i.i12.i:                                  ; preds = %if.end2.i.i10.i
  %44 = ptrtoint ptr %data.i.i1.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data.i.i1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp11.i.i11.i = icmp eq i8 %45, 0
  br i1 %cmp11.i.i11.i, label %if.end9.i.i12.i.tps6598x_read8.exit16.thread.i_crit_edge, label %tps6598x_read8.exit16.thread24.i

if.end9.i.i12.i.tps6598x_read8.exit16.thread.i_crit_edge: ; preds = %if.end9.i.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read8.exit16.thread.i

tps6598x_read8.exit16.thread24.i:                 ; preds = %if.end9.i.i12.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i13.i = getelementptr inbounds [65 x i8], ptr %data.i.i1.i, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx15.i.i13.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx15.i.i13.i, align 1
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %state.i, align 1
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i1.i) #7
  br label %if.end12.i

tps6598x_read8.exit16.thread.i:                   ; preds = %if.end9.i.i12.i.tps6598x_read8.exit16.thread.i_crit_edge, %if.end2.i.i10.i.tps6598x_read8.exit16.thread.i_crit_edge
  %retval.0.i.i15.ph.i = phi i32 [ -5, %if.end9.i.i12.i.tps6598x_read8.exit16.thread.i_crit_edge ], [ %call6.i.i8.i, %if.end2.i.i10.i.tps6598x_read8.exit16.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i1.i) #7
  br label %cd321x_switch_power_state.exit.thread

tps6598x_read8.exit16.i:                          ; preds = %if.end8.i
  %call.i.i6.i = call i32 @regmap_raw_read(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %state.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6.i)
  %tobool10.not.i = icmp eq i32 %call.i.i6.i, 0
  br i1 %tobool10.not.i, label %tps6598x_read8.exit16.i.if.end12.i_crit_edge, label %tps6598x_read8.exit16.i.cd321x_switch_power_state.exit.thread_crit_edge

tps6598x_read8.exit16.i.cd321x_switch_power_state.exit.thread_crit_edge: ; preds = %tps6598x_read8.exit16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cd321x_switch_power_state.exit.thread

tps6598x_read8.exit16.i.if.end12.i_crit_edge:     ; preds = %tps6598x_read8.exit16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %tps6598x_read8.exit16.i.if.end12.i_crit_edge, %tps6598x_read8.exit16.thread24.i
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %state.i, align 1
  %51 = ptrtoint ptr %target_state.addr.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %target_state.addr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp15.not.i = icmp eq i8 %50, %52
  br i1 %cmp15.not.i, label %if.end12.i.cd321x_switch_power_state.exit_crit_edge, label %if.end12.i.cd321x_switch_power_state.exit.thread_crit_edge

if.end12.i.cd321x_switch_power_state.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cd321x_switch_power_state.exit.thread

if.end12.i.cd321x_switch_power_state.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cd321x_switch_power_state.exit

cd321x_switch_power_state.exit.thread:            ; preds = %if.end12.i.cd321x_switch_power_state.exit.thread_crit_edge, %tps6598x_read8.exit16.i.cd321x_switch_power_state.exit.thread_crit_edge, %tps6598x_read8.exit16.thread.i, %if.end4.i.cd321x_switch_power_state.exit.thread_crit_edge, %tps6598x_read8.exit.i.cd321x_switch_power_state.exit.thread_crit_edge, %tps6598x_read8.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.i15.ph.i, %tps6598x_read8.exit16.thread.i ], [ %retval.0.i.i.ph.i, %tps6598x_read8.exit.thread.i ], [ -22, %if.end12.i.cd321x_switch_power_state.exit.thread_crit_edge ], [ %call.i.i6.i, %tps6598x_read8.exit16.i.cd321x_switch_power_state.exit.thread_crit_edge ], [ %call5.i, %if.end4.i.cd321x_switch_power_state.exit.thread_crit_edge ], [ %call.i.i.i, %tps6598x_read8.exit.i.cd321x_switch_power_state.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %target_state.addr.i)
  br label %cleanup

cd321x_switch_power_state.exit:                   ; preds = %if.end12.i.cd321x_switch_power_state.exit_crit_edge, %if.end.i.cd321x_switch_power_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %target_state.addr.i)
  br label %if.end27

if.end27:                                         ; preds = %cd321x_switch_power_state.exit, %land.lhs.true.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %irq_handler.0 = phi ptr [ @cd321x_interrupt, %cd321x_switch_power_state.exit ], [ @tps6598x_interrupt, %land.lhs.true.if.end27_crit_edge ], [ @tps6598x_interrupt, %if.end18.if.end27_crit_edge ]
  %mask1.0 = phi i64 [ 1538, %cd321x_switch_power_state.exit ], [ 50331656, %land.lhs.true.if.end27_crit_edge ], [ 50331656, %if.end18.if.end27_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %mode.i) #7
  %53 = call ptr @memset(ptr %mode.i, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i.i171) #7
  %54 = call ptr @memset(ptr %data.i.i.i171, i32 255, i32 65)
  %55 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i.i.i173 = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i173)
  %tobool.not.i.i.i174 = icmp sgt i8 %bf.load.i.i.i173, -1
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  br i1 %tobool.not.i.i.i174, label %tps6598x_read32.exit.i, label %if.end2.i.i.i178

if.end2.i.i.i178:                                 ; preds = %if.end27
  %call6.i.i.i176 = call i32 @regmap_raw_read(ptr noundef %57, i32 noundef 3, ptr noundef nonnull %data.i.i.i171, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i176)
  %tobool7.not.i.i.i177 = icmp eq i32 %call6.i.i.i176, 0
  br i1 %tobool7.not.i.i.i177, label %if.end9.i.i.i180, label %if.end2.i.i.i178.tps6598x_read32.exit.thread.i_crit_edge

if.end2.i.i.i178.tps6598x_read32.exit.thread.i_crit_edge: ; preds = %if.end2.i.i.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit.thread.i

if.end9.i.i.i180:                                 ; preds = %if.end2.i.i.i178
  %58 = ptrtoint ptr %data.i.i.i171 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data.i.i.i171, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %59)
  %cmp11.i.i.i179 = icmp ult i8 %59, 4
  br i1 %cmp11.i.i.i179, label %if.end9.i.i.i180.tps6598x_read32.exit.thread.i_crit_edge, label %tps6598x_read32.exit.thread16.i

if.end9.i.i.i180.tps6598x_read32.exit.thread.i_crit_edge: ; preds = %if.end9.i.i.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit.thread.i

tps6598x_read32.exit.thread16.i:                  ; preds = %if.end9.i.i.i180
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i.i181 = getelementptr inbounds [65 x i8], ptr %data.i.i.i171, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx15.i.i.i181 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %arrayidx15.i.i.i181, align 1
  %62 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %mode.i, align 4
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i.i171) #7
  br label %if.end.i185

tps6598x_read32.exit.thread.i:                    ; preds = %if.end9.i.i.i180.tps6598x_read32.exit.thread.i_crit_edge, %if.end2.i.i.i178.tps6598x_read32.exit.thread.i_crit_edge
  %retval.0.i.i.ph.i182 = phi i32 [ -5, %if.end9.i.i.i180.tps6598x_read32.exit.thread.i_crit_edge ], [ %call6.i.i.i176, %if.end2.i.i.i178.tps6598x_read32.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i.i171) #7
  br label %tps6598x_check_mode.exit.thread

tps6598x_read32.exit.i:                           ; preds = %if.end27
  %call.i.i.i183 = call i32 @regmap_raw_read(ptr noundef %57, i32 noundef 3, ptr noundef nonnull %mode.i, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i.i171) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i183)
  %tobool.not.i184 = icmp eq i32 %call.i.i.i183, 0
  br i1 %tobool.not.i184, label %tps6598x_read32.exit.i.if.end.i185_crit_edge, label %tps6598x_read32.exit.i.tps6598x_check_mode.exit.thread_crit_edge

tps6598x_read32.exit.i.tps6598x_check_mode.exit.thread_crit_edge: ; preds = %tps6598x_read32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_check_mode.exit.thread

tps6598x_read32.exit.i.if.end.i185_crit_edge:     ; preds = %tps6598x_read32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i185

if.end.i185:                                      ; preds = %tps6598x_read32.exit.i.if.end.i185_crit_edge, %tps6598x_read32.exit.thread16.i
  %call2.i = call i32 @match_string(ptr noundef nonnull @modes, i32 noundef 4, ptr noundef nonnull %mode.i) #7
  %63 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i, label %do.end7.i [
    i32 0, label %if.end.i185.if.end31_crit_edge
    i32 1, label %do.end.i
  ]

if.end.i185.if.end31_crit_edge:                   ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end.i:                                         ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.24) #10
  br label %if.end31

do.end7.i:                                        ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.28, ptr noundef nonnull %mode.i) #10
  br label %tps6598x_check_mode.exit.thread

tps6598x_check_mode.exit.thread:                  ; preds = %do.end7.i, %tps6598x_read32.exit.i.tps6598x_check_mode.exit.thread_crit_edge, %tps6598x_read32.exit.thread.i
  %retval.0.i186.ph = phi i32 [ %retval.0.i.i.ph.i182, %tps6598x_read32.exit.thread.i ], [ %call.i.i.i183, %tps6598x_read32.exit.i.tps6598x_check_mode.exit.thread_crit_edge ], [ -19, %do.end7.i ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %mode.i) #7
  br label %cleanup

if.end31:                                         ; preds = %do.end.i, %if.end.i185.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %mode.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.addr.i)
  %68 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %mask1.0, ptr %val.addr.i, align 8
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i187) #7
  %69 = getelementptr inbounds i8, ptr %data.i.i187, i32 9
  %70 = call ptr @memset(ptr %69, i32 255, i32 56)
  %71 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i.i189 = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i189)
  %tobool.not.i.i190 = icmp sgt i8 %bf.load.i.i189, -1
  br i1 %tobool.not.i.i190, label %if.then1.i.i193, label %if.end2.i.i194

if.then1.i.i193:                                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call.i.i192 = call i32 @regmap_raw_write(ptr noundef %73, i32 noundef 22, ptr noundef nonnull %val.addr.i, i32 noundef 8) #7
  br label %tps6598x_write64.exit

if.end2.i.i194:                                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %74 = getelementptr inbounds i8, ptr %data.i.i187, i32 1
  %75 = ptrtoint ptr %data.i.i187 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 8, ptr %data.i.i187, align 1
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %mask1.0, ptr %74, align 1
  %77 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap, align 4
  %call8.i.i = call i32 @regmap_raw_write(ptr noundef %78, i32 noundef 22, ptr noundef nonnull %data.i.i187, i32 noundef 9) #7
  br label %tps6598x_write64.exit

tps6598x_write64.exit:                            ; preds = %if.end2.i.i194, %if.then1.i.i193
  %retval.0.i.i195 = phi i32 [ %call8.i.i, %if.end2.i.i194 ], [ %call.i.i192, %if.then1.i.i193 ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i187) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i195)
  %tobool33.not = icmp eq i32 %retval.0.i.i195, 0
  br i1 %tobool33.not, label %if.end35, label %tps6598x_write64.exit.cleanup_crit_edge

tps6598x_write64.exit.cleanup_crit_edge:          ; preds = %tps6598x_write64.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %tps6598x_write64.exit
  %call36 = call fastcc i32 @tps6598x_read32(ptr noundef nonnull %call.i, i8 noundef zeroext 26, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end35.err_clear_mask_crit_edge, label %if.end39

if.end35.err_clear_mask_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_mask

if.end39:                                         ; preds = %if.end35
  %79 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %status, align 4
  call fastcc void @trace_tps6598x_status(i32 noundef %80)
  %call40 = call fastcc i32 @tps6598x_read32(ptr noundef nonnull %call.i, i8 noundef zeroext 40, ptr noundef nonnull %conf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end39.err_clear_mask_crit_edge, label %if.end43

if.end39.err_clear_mask_crit_edge:                ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_mask

if.end43:                                         ; preds = %if.end39
  %call45 = call ptr @device_get_named_child_node(ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end43.if.end48_crit_edge, label %if.then47

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void @fw_devlink_purge_absent_suppliers(ptr noundef nonnull %call45) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end43.if.end48_crit_edge
  %call49 = call ptr @fwnode_usb_role_switch_get(ptr noundef %call45) #7
  %role_sw = getelementptr inbounds %struct.tps6598x, ptr %call.i, i32 0, i32 7
  %81 = ptrtoint ptr %role_sw to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call49, ptr %role_sw, align 4
  %cmp.i196 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %call49 to i32
  br label %err_fwnode_put

if.end55:                                         ; preds = %if.end48
  %revision = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 2
  %83 = ptrtoint ptr %revision to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 288, ptr %revision, align 4
  %pd_revision = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 3
  %84 = ptrtoint ptr %pd_revision to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 512, ptr %pd_revision, align 2
  %prefer_role = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 5
  %85 = ptrtoint ptr %prefer_role to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %prefer_role, align 4
  %driver_data = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 9
  %86 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i, ptr %driver_data, align 4
  %ops = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 10
  %87 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @tps6598x_ops, ptr %ops, align 4
  %fwnode56 = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 8
  %88 = ptrtoint ptr %fwnode56 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call45, ptr %fwnode56, align 4
  %89 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %conf, align 4
  %and = and i32 %90, 7
  %91 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %and, label %if.end55.err_role_put_crit_edge [
    i32 1, label %if.end55.sw.bb_crit_edge
    i32 0, label %if.end55.sw.bb_crit_edge210
    i32 3, label %if.end55.sw.bb57_crit_edge
    i32 5, label %if.end55.sw.bb57_crit_edge211
    i32 2, label %sw.bb60
    i32 4, label %sw.bb63
    i32 6, label %sw.bb66
  ]

if.end55.sw.bb57_crit_edge211:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb57

if.end55.sw.bb57_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb57

if.end55.sw.bb_crit_edge210:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end55.sw.bb_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end55.err_role_put_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_role_put

sw.bb:                                            ; preds = %if.end55.sw.bb_crit_edge, %if.end55.sw.bb_crit_edge210
  %92 = ptrtoint ptr %typec_cap to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %typec_cap, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end55.sw.bb57_crit_edge, %if.end55.sw.bb57_crit_edge211
  %93 = ptrtoint ptr %typec_cap to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %typec_cap, align 4
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %typec_cap to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %typec_cap, align 4
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %typec_cap to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 2, ptr %typec_cap, align 4
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %typec_cap to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %typec_cap, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb66, %sw.bb63, %sw.bb60, %sw.bb57, %sw.bb
  %.sink = phi i32 [ 0, %sw.bb66 ], [ 0, %sw.bb63 ], [ 1, %sw.bb60 ], [ 2, %sw.bb57 ], [ 1, %sw.bb ]
  %data68 = getelementptr inbounds %struct.typec_capability, ptr %typec_cap, i32 0, i32 1
  %97 = ptrtoint ptr %data68 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %.sink, ptr %data68, align 4
  %call69 = call fastcc i32 @devm_tps6598_psy_register(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72:                                         ; preds = %sw.epilog
  %call74 = call ptr @typec_register_port(ptr noundef %dev, ptr noundef nonnull %typec_cap) #7
  %port = getelementptr inbounds %struct.tps6598x, ptr %call.i, i32 0, i32 4
  %98 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call74, ptr %port, align 4
  %cmp.i197 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %call74 to i32
  br label %err_role_put

if.end80:                                         ; preds = %if.end72
  call void @fwnode_handle_put(ptr noundef %call45) #7
  %100 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %status, align 4
  %and81 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end92_crit_edge, label %if.then83

if.end80.if.end92_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then83:                                        ; preds = %if.end80
  %call84 = call fastcc i32 @tps6598x_connect(ptr noundef nonnull %call.i, i32 noundef %101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then83.if.end92_crit_edge, label %do.end89

if.then83.if.end92_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

do.end89:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br label %if.end92

if.end92:                                         ; preds = %do.end89, %if.then83.if.end92_crit_edge, %if.end80.if.end92_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %102 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %104 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i198 = icmp eq ptr %105, null
  br i1 %tobool.not.i198, label %if.end.i199, label %if.end92.dev_name.exit_crit_edge

if.end92.dev_name.exit_crit_edge:                 ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i199:                                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i199, %if.end92.dev_name.exit_crit_edge
  %retval.0.i200 = phi ptr [ %107, %if.end.i199 ], [ %105, %if.end92.dev_name.exit_crit_edge ]
  %call96 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %103, ptr noundef null, ptr noundef nonnull %irq_handler.0, i32 noundef 8320, ptr noundef %retval.0.i200, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end100, label %if.then98

if.then98:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @tps6598x_disconnect(ptr noundef nonnull %call.i, i32 noundef 0)
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port, align 4
  call void @typec_unregister_port(ptr noundef %109) #7
  br label %err_role_put

if.end100:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %110 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_role_put:                                     ; preds = %if.then98, %if.then77, %if.end55.err_role_put_crit_edge
  %ret.0 = phi i32 [ %99, %if.then77 ], [ %call96, %if.then98 ], [ -19, %if.end55.err_role_put_crit_edge ]
  %111 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %role_sw, align 4
  call void @usb_role_switch_put(ptr noundef %112) #7
  br label %err_fwnode_put

err_fwnode_put:                                   ; preds = %err_role_put, %if.then52
  %ret.1 = phi i32 [ %82, %if.then52 ], [ %ret.0, %err_role_put ]
  call void @fwnode_handle_put(ptr noundef %call45) #7
  br label %err_clear_mask

err_clear_mask:                                   ; preds = %err_fwnode_put, %if.end39.err_clear_mask_crit_edge, %if.end35.err_clear_mask_crit_edge
  %ret.2 = phi i32 [ %call36, %if.end35.err_clear_mask_crit_edge ], [ %call40, %if.end39.err_clear_mask_crit_edge ], [ %ret.1, %err_fwnode_put ]
  %call102 = call fastcc i32 @tps6598x_write64(ptr noundef nonnull %call.i, i8 noundef zeroext 22, i64 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %err_clear_mask, %if.end100, %sw.epilog.cleanup_crit_edge, %tps6598x_write64.exit.cleanup_crit_edge, %tps6598x_check_mode.exit.thread, %cd321x_switch_power_state.exit.thread, %lor.lhs.false.cleanup_crit_edge, %tps6598x_read32.exit.cleanup_crit_edge, %tps6598x_read32.exit.thread, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then7 ], [ %ret.2, %err_clear_mask ], [ 0, %if.end100 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %tps6598x_read32.exit.cleanup_crit_edge ], [ %retval.0.i.i195, %tps6598x_write64.exit.cleanup_crit_edge ], [ %call69, %sw.epilog.cleanup_crit_edge ], [ -19, %tps6598x_read32.exit.thread ], [ %retval.0.i.ph, %cd321x_switch_power_state.exit.thread ], [ %retval.0.i186.ph, %tps6598x_check_mode.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vid) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %typec_cap) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tps6598x_disconnect(ptr nocapture noundef %tps, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %partner = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 5
  %0 = ptrtoint ptr %partner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %partner, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @typec_unregister_partner(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %partner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %partner, align 4
  %port = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 4
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  tail call void @typec_set_pwr_opmode(ptr noundef %4, i32 noundef 0) #7
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  %and = lshr i32 %status, 5
  %and.lobit = and i32 %and, 1
  tail call void @typec_set_pwr_role(ptr noundef %6, i32 noundef %and.lobit) #7
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  %and6 = lshr i32 %status, 7
  %and6.lobit = and i32 %and6, 1
  tail call void @typec_set_vconn_role(ptr noundef %8, i32 noundef %and6.lobit) #7
  %and12 = lshr i32 %status, 6
  %and12.lobit = and i32 %and12, 1
  %role_sw.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 7
  %9 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %role_sw.i, align 4
  %call.i = tail call i32 @usb_role_switch_set_role(ptr noundef %10, i32 noundef 0) #7
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port, align 4
  tail call void @typec_set_data_role(ptr noundef %12, i32 noundef %and12.lobit) #7
  %psy = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 9
  %13 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %psy, align 4
  tail call void @power_supply_changed(ptr noundef %14) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_unregister_partner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_pwr_opmode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_pwr_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_vconn_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_set_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @typec_set_data_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6598x_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %data.i.i76 = alloca [65 x i8], align 1
  %val.addr.i77 = alloca i64, align 8
  %data.i.i67 = alloca [65 x i8], align 1
  %val.addr.i = alloca i64, align 8
  %data.i.i51 = alloca [65 x i8], align 1
  %data.i.i = alloca [65 x i8], align 1
  %event1 = alloca i64, align 8
  %event2 = alloca i64, align 8
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event1) #7
  %0 = ptrtoint ptr %event1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %event1, align 8, !annotation !138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event2) #7
  %1 = ptrtoint ptr %event2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %event2, align 8, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !138
  %lock = getelementptr inbounds %struct.tps6598x, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i) #7
  %3 = call ptr @memset(ptr %data.i.i, i32 255, i32 65)
  %i2c_protocol.i.i = getelementptr inbounds %struct.tps6598x, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %regmap.i.i = getelementptr inbounds %struct.tps6598x, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i, label %if.then1.i.i, label %if.end2.i.i

if.then1.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @regmap_raw_read(ptr noundef %6, i32 noundef 20, ptr noundef nonnull %event1, i32 noundef 8) #7
  br label %tps6598x_read64.exit

if.end2.i.i:                                      ; preds = %entry
  %call6.i.i = call i32 @regmap_raw_read(ptr noundef %6, i32 noundef 20, ptr noundef nonnull %data.i.i, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end2.i.i.tps6598x_read64.exit_crit_edge

if.end2.i.i.tps6598x_read64.exit_crit_edge:       ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read64.exit

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp11.i.i = icmp ult i8 %8, 8
  br i1 %cmp11.i.i, label %if.end9.i.i.tps6598x_read64.exit_crit_edge, label %if.end14.i.i

if.end9.i.i.tps6598x_read64.exit_crit_edge:       ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read64.exit

if.end14.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %arrayidx15.i.i, align 1
  %11 = ptrtoint ptr %event1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %event1, align 8
  br label %tps6598x_read64.exit

tps6598x_read64.exit:                             ; preds = %if.end14.i.i, %if.end9.i.i.tps6598x_read64.exit_crit_edge, %if.end2.i.i.tps6598x_read64.exit_crit_edge, %if.then1.i.i
  %retval.0.i.i = phi i32 [ 0, %if.end14.i.i ], [ %call.i.i, %if.then1.i.i ], [ %call6.i.i, %if.end2.i.i.tps6598x_read64.exit_crit_edge ], [ -5, %if.end9.i.i.tps6598x_read64.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i51) #7
  %12 = call ptr @memset(ptr %data.i.i51, i32 255, i32 65)
  %13 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i.i53 = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i53)
  %tobool.not.i.i54 = icmp sgt i8 %bf.load.i.i53, -1
  %14 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i54, label %if.then1.i.i57, label %if.end2.i.i60

if.then1.i.i57:                                   ; preds = %tps6598x_read64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i56 = call i32 @regmap_raw_read(ptr noundef %15, i32 noundef 21, ptr noundef nonnull %event2, i32 noundef 8) #7
  br label %tps6598x_read64.exit66

if.end2.i.i60:                                    ; preds = %tps6598x_read64.exit
  %call6.i.i58 = call i32 @regmap_raw_read(ptr noundef %15, i32 noundef 21, ptr noundef nonnull %data.i.i51, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i58)
  %tobool7.not.i.i59 = icmp eq i32 %call6.i.i58, 0
  br i1 %tobool7.not.i.i59, label %if.end9.i.i62, label %if.end2.i.i60.tps6598x_read64.exit66_crit_edge

if.end2.i.i60.tps6598x_read64.exit66_crit_edge:   ; preds = %if.end2.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read64.exit66

if.end9.i.i62:                                    ; preds = %if.end2.i.i60
  %16 = ptrtoint ptr %data.i.i51 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data.i.i51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %17)
  %cmp11.i.i61 = icmp ult i8 %17, 8
  br i1 %cmp11.i.i61, label %if.end9.i.i62.tps6598x_read64.exit66_crit_edge, label %if.end14.i.i64

if.end9.i.i62.tps6598x_read64.exit66_crit_edge:   ; preds = %if.end9.i.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read64.exit66

if.end14.i.i64:                                   ; preds = %if.end9.i.i62
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i63 = getelementptr inbounds [65 x i8], ptr %data.i.i51, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx15.i.i63 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %arrayidx15.i.i63, align 1
  %20 = ptrtoint ptr %event2 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %event2, align 8
  br label %tps6598x_read64.exit66

tps6598x_read64.exit66:                           ; preds = %if.end14.i.i64, %if.end9.i.i62.tps6598x_read64.exit66_crit_edge, %if.end2.i.i60.tps6598x_read64.exit66_crit_edge, %if.then1.i.i57
  %retval.0.i.i65 = phi i32 [ 0, %if.end14.i.i64 ], [ %call.i.i56, %if.then1.i.i57 ], [ %call6.i.i58, %if.end2.i.i60.tps6598x_read64.exit66_crit_edge ], [ -5, %if.end9.i.i62.tps6598x_read64.exit66_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i51) #7
  %or = or i32 %retval.0.i.i65, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %tps6598x_read64.exit66
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  br label %err_unlock

if.end:                                           ; preds = %tps6598x_read64.exit66
  %23 = ptrtoint ptr %event1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %event1, align 8
  %25 = ptrtoint ptr %event2 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %event2, align 8
  call fastcc void @trace_tps6598x_irq(i64 noundef %24, i64 noundef %26)
  %27 = ptrtoint ptr %event1 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %event1, align 8
  %29 = ptrtoint ptr %event2 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %event2, align 8
  %or2 = or i64 %30, %28
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or2)
  %tobool3.not = icmp eq i64 %or2, 0
  br i1 %tobool3.not, label %if.end.err_unlock_crit_edge, label %if.end5

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc zeroext i1 @tps6598x_read_status(ptr noundef %data, ptr noundef nonnull %status)
  br i1 %call6, label %if.end8, label %if.end5.err_clear_ints_crit_edge

if.end5.err_clear_ints_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_ints

if.end8:                                          ; preds = %if.end5
  %31 = ptrtoint ptr %event1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %event1, align 8
  %33 = ptrtoint ptr %event2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %event2, align 8
  %or9 = or i64 %34, %32
  %and = and i64 %or9, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %if.end8.if.end15_crit_edge, label %if.then11

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.end8
  %call12 = call fastcc zeroext i1 @tps6598x_read_power_status(ptr noundef %data)
  br i1 %call12, label %if.then11.if.end15_crit_edge, label %if.then11.err_clear_ints_crit_edge

if.then11.err_clear_ints_crit_edge:               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_ints

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %if.then11.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %35 = ptrtoint ptr %event1 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %event1, align 8
  %37 = ptrtoint ptr %event2 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %event2, align 8
  %or16 = or i64 %38, %36
  %and17 = and i64 %or16, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end23_crit_edge, label %if.then19

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then19:                                        ; preds = %if.end15
  %call20 = call fastcc zeroext i1 @tps6598x_read_data_status(ptr noundef %data)
  br i1 %call20, label %if.then19.if.end23_crit_edge, label %if.then19.err_clear_ints_crit_edge

if.then19.err_clear_ints_crit_edge:               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_ints

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23:                                         ; preds = %if.then19.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %39 = ptrtoint ptr %event1 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %event1, align 8
  %41 = ptrtoint ptr %event2 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %event2, align 8
  %or24 = or i64 %42, %40
  %and25 = and i64 %or24, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %if.end23.err_clear_ints_crit_edge, label %if.then27

if.end23.err_clear_ints_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_ints

if.then27:                                        ; preds = %if.end23
  %43 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %status, align 4
  %and.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then27
  %call.i = call fastcc i32 @tps6598x_connect(ptr noundef %data, i32 noundef %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.err_clear_ints_crit_edge, label %do.end.i

if.then.i.err_clear_ints_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_ints

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.5) #10
  br label %err_clear_ints

if.else.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @tps6598x_disconnect(ptr noundef %data, i32 noundef %44) #7
  br label %err_clear_ints

err_clear_ints:                                   ; preds = %if.else.i, %do.end.i, %if.then.i.err_clear_ints_crit_edge, %if.end23.err_clear_ints_crit_edge, %if.then19.err_clear_ints_crit_edge, %if.then11.err_clear_ints_crit_edge, %if.end5.err_clear_ints_crit_edge
  %47 = ptrtoint ptr %event1 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %event1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.addr.i)
  %49 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %val.addr.i, align 8
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i67) #7
  %50 = getelementptr inbounds i8, ptr %data.i.i67, i32 9
  %51 = call ptr @memset(ptr %50, i32 255, i32 56)
  %52 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i.i69 = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i69)
  %tobool.not.i.i70 = icmp sgt i8 %bf.load.i.i69, -1
  br i1 %tobool.not.i.i70, label %if.then1.i.i73, label %if.end2.i.i74

if.then1.i.i73:                                   ; preds = %err_clear_ints
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i72 = call i32 @regmap_raw_write(ptr noundef %54, i32 noundef 24, ptr noundef nonnull %val.addr.i, i32 noundef 8) #7
  br label %tps6598x_write64.exit

if.end2.i.i74:                                    ; preds = %err_clear_ints
  call void @__sanitizer_cov_trace_pc() #9
  %55 = getelementptr inbounds i8, ptr %data.i.i67, i32 1
  %56 = ptrtoint ptr %data.i.i67 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 8, ptr %data.i.i67, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %48, ptr %55, align 1
  %58 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i.i, align 4
  %call8.i.i = call i32 @regmap_raw_write(ptr noundef %59, i32 noundef 24, ptr noundef nonnull %data.i.i67, i32 noundef 9) #7
  br label %tps6598x_write64.exit

tps6598x_write64.exit:                            ; preds = %if.end2.i.i74, %if.then1.i.i73
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i67) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.addr.i)
  %60 = ptrtoint ptr %event2 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %event2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.addr.i77)
  %62 = ptrtoint ptr %val.addr.i77 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %val.addr.i77, align 8
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i76) #7
  %63 = getelementptr inbounds i8, ptr %data.i.i76, i32 9
  %64 = call ptr @memset(ptr %63, i32 255, i32 56)
  %65 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i.i79 = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i79)
  %tobool.not.i.i80 = icmp sgt i8 %bf.load.i.i79, -1
  br i1 %tobool.not.i.i80, label %if.then1.i.i83, label %if.end2.i.i86

if.then1.i.i83:                                   ; preds = %tps6598x_write64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i82 = call i32 @regmap_raw_write(ptr noundef %67, i32 noundef 25, ptr noundef nonnull %val.addr.i77, i32 noundef 8) #7
  br label %tps6598x_write64.exit88

if.end2.i.i86:                                    ; preds = %tps6598x_write64.exit
  call void @__sanitizer_cov_trace_pc() #9
  %68 = getelementptr inbounds i8, ptr %data.i.i76, i32 1
  %69 = ptrtoint ptr %data.i.i76 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 8, ptr %data.i.i76, align 1
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 %61, ptr %68, align 1
  %71 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i.i, align 4
  %call8.i.i85 = call i32 @regmap_raw_write(ptr noundef %72, i32 noundef 25, ptr noundef nonnull %data.i.i76, i32 noundef 9) #7
  br label %tps6598x_write64.exit88

tps6598x_write64.exit88:                          ; preds = %if.end2.i.i86, %if.then1.i.i83
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i76) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.addr.i77)
  br label %err_unlock

err_unlock:                                       ; preds = %tps6598x_write64.exit88, %if.end.err_unlock_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef %lock) #7
  %73 = ptrtoint ptr %event1 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %event1, align 8
  %75 = ptrtoint ptr %event2 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %event2, align 8
  %or32 = or i64 %76, %74
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or32)
  %tobool33.not = icmp ne i64 %or32, 0
  %. = zext i1 %tobool33.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event1) #7
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tps6598x_read32(ptr nocapture noundef readonly %tps, i8 noundef zeroext %reg, ptr noundef %val) unnamed_addr #4 align 64 {
entry:
  %data.i = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i) #7
  %0 = call ptr @memset(ptr %data.i, i32 255, i32 65)
  %i2c_protocol.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 3
  %1 = ptrtoint ptr %i2c_protocol.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %i2c_protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %regmap.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %reg to i32
  br i1 %tobool.not.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @regmap_raw_read(ptr noundef %3, i32 noundef %conv.i, ptr noundef %val, i32 noundef 4) #7
  br label %tps6598x_block_read.exit

if.end2.i:                                        ; preds = %entry
  %call6.i = call i32 @regmap_raw_read(ptr noundef %3, i32 noundef %conv.i, ptr noundef nonnull %data.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end2.i.tps6598x_block_read.exit_crit_edge

if.end2.i.tps6598x_block_read.exit_crit_edge:     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_block_read.exit

if.end9.i:                                        ; preds = %if.end2.i
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp11.i = icmp ult i8 %5, 4
  br i1 %cmp11.i, label %if.end9.i.tps6598x_block_read.exit_crit_edge, label %if.end14.i

if.end9.i.tps6598x_block_read.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_block_read.exit

if.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i = getelementptr inbounds [65 x i8], ptr %data.i, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx15.i, align 1
  %8 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %val, align 1
  br label %tps6598x_block_read.exit

tps6598x_block_read.exit:                         ; preds = %if.end14.i, %if.end9.i.tps6598x_block_read.exit_crit_edge, %if.end2.i.tps6598x_block_read.exit_crit_edge, %if.then1.i
  %retval.0.i = phi i32 [ 0, %if.end14.i ], [ %call.i, %if.then1.i ], [ %call6.i, %if.end2.i.tps6598x_block_read.exit_crit_edge ], [ -5, %if.end9.i.tps6598x_block_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cd321x_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %data.i.i40 = alloca [65 x i8], align 1
  %val.addr.i = alloca i64, align 8
  %data.i.i = alloca [65 x i8], align 1
  %event = alloca i64, align 8
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #7
  %0 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %event, align 8, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %status, align 4, !annotation !138
  %lock = getelementptr inbounds %struct.tps6598x, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i) #7
  %2 = call ptr @memset(ptr %data.i.i, i32 255, i32 65)
  %i2c_protocol.i.i = getelementptr inbounds %struct.tps6598x, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %regmap.i.i = getelementptr inbounds %struct.tps6598x, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i, label %tps6598x_read64.exit, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %entry
  %call6.i.i = call i32 @regmap_raw_read(ptr noundef %5, i32 noundef 20, ptr noundef nonnull %data.i.i, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end2.i.i.tps6598x_read64.exit.thread_crit_edge

if.end2.i.i.tps6598x_read64.exit.thread_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read64.exit.thread

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %cmp11.i.i = icmp ult i8 %7, 8
  br i1 %cmp11.i.i, label %if.end9.i.i.tps6598x_read64.exit.thread_crit_edge, label %tps6598x_read64.exit.thread51

if.end9.i.i.tps6598x_read64.exit.thread_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read64.exit.thread

tps6598x_read64.exit.thread51:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %arrayidx15.i.i, align 1
  %10 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %event, align 8
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %if.end

tps6598x_read64.exit.thread:                      ; preds = %if.end9.i.i.tps6598x_read64.exit.thread_crit_edge, %if.end2.i.i.tps6598x_read64.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %do.end

tps6598x_read64.exit:                             ; preds = %entry
  %call.i.i = call i32 @regmap_raw_read(ptr noundef %5, i32 noundef 20, ptr noundef nonnull %event, i32 noundef 8) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %tps6598x_read64.exit.if.end_crit_edge, label %tps6598x_read64.exit.do.end_crit_edge

tps6598x_read64.exit.do.end_crit_edge:            ; preds = %tps6598x_read64.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

tps6598x_read64.exit.if.end_crit_edge:            ; preds = %tps6598x_read64.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %tps6598x_read64.exit.do.end_crit_edge, %tps6598x_read64.exit.thread
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.23) #10
  br label %err_unlock

if.end:                                           ; preds = %tps6598x_read64.exit.if.end_crit_edge, %tps6598x_read64.exit.thread51
  %13 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %event, align 8
  call fastcc void @trace_cd321x_irq(i64 noundef %14)
  %15 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool1.not = icmp eq i64 %16, 0
  br i1 %tobool1.not, label %if.end.err_unlock_crit_edge, label %if.end3

if.end.err_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc zeroext i1 @tps6598x_read_status(ptr noundef %data, ptr noundef nonnull %status)
  br i1 %call4, label %if.end6, label %if.end3.err_clear_ints_crit_edge

if.end3.err_clear_ints_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_ints

if.end6:                                          ; preds = %if.end3
  %17 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %event, align 8
  %and = and i64 %18, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool7.not = icmp eq i64 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end12_crit_edge, label %if.then8

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %if.end6
  %call9 = call fastcc zeroext i1 @tps6598x_read_power_status(ptr noundef %data)
  br i1 %call9, label %if.then8.if.end12_crit_edge, label %if.then8.err_clear_ints_crit_edge

if.then8.err_clear_ints_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_ints

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %if.then8.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %19 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %event, align 8
  %and13 = and i64 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end19_crit_edge, label %if.then15

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then15:                                        ; preds = %if.end12
  %call16 = call fastcc zeroext i1 @tps6598x_read_data_status(ptr noundef %data)
  br i1 %call16, label %if.then15.if.end19_crit_edge, label %if.then15.err_clear_ints_crit_edge

if.then15.err_clear_ints_crit_edge:               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_ints

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %if.then15.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %21 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %event, align 8
  %and20 = and i64 %22, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.end19.err_clear_ints_crit_edge, label %if.then22

if.end19.err_clear_ints_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_ints

if.then22:                                        ; preds = %if.end19
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then22
  %call.i = call fastcc i32 @tps6598x_connect(ptr noundef %data, i32 noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.err_clear_ints_crit_edge, label %do.end.i

if.then.i.err_clear_ints_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clear_ints

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.5) #10
  br label %err_clear_ints

if.else.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @tps6598x_disconnect(ptr noundef %data, i32 noundef %24) #7
  br label %err_clear_ints

err_clear_ints:                                   ; preds = %if.else.i, %do.end.i, %if.then.i.err_clear_ints_crit_edge, %if.end19.err_clear_ints_crit_edge, %if.then15.err_clear_ints_crit_edge, %if.then8.err_clear_ints_crit_edge, %if.end3.err_clear_ints_crit_edge
  %27 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %event, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.addr.i)
  %29 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %val.addr.i, align 8
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i40) #7
  %30 = getelementptr inbounds i8, ptr %data.i.i40, i32 9
  %31 = call ptr @memset(ptr %30, i32 255, i32 56)
  %32 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i.i42 = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i42)
  %tobool.not.i.i43 = icmp sgt i8 %bf.load.i.i42, -1
  br i1 %tobool.not.i.i43, label %if.then1.i.i46, label %if.end2.i.i47

if.then1.i.i46:                                   ; preds = %err_clear_ints
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i45 = call i32 @regmap_raw_write(ptr noundef %34, i32 noundef 24, ptr noundef nonnull %val.addr.i, i32 noundef 8) #7
  br label %tps6598x_write64.exit

if.end2.i.i47:                                    ; preds = %err_clear_ints
  call void @__sanitizer_cov_trace_pc() #9
  %35 = getelementptr inbounds i8, ptr %data.i.i40, i32 1
  %36 = ptrtoint ptr %data.i.i40 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 8, ptr %data.i.i40, align 1
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %28, ptr %35, align 1
  %38 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i.i, align 4
  %call8.i.i = call i32 @regmap_raw_write(ptr noundef %39, i32 noundef 24, ptr noundef nonnull %data.i.i40, i32 noundef 9) #7
  br label %tps6598x_write64.exit

tps6598x_write64.exit:                            ; preds = %if.end2.i.i47, %if.then1.i.i46
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i40) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.addr.i)
  br label %err_unlock

err_unlock:                                       ; preds = %tps6598x_write64.exit, %if.end.err_unlock_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef %lock) #7
  %40 = ptrtoint ptr %event to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %tobool26.not = icmp ne i64 %41, 0
  %. = zext i1 %tobool26.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #7
  ret i32 %.
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tps6598x_write64(ptr nocapture noundef readonly %tps, i8 noundef zeroext %reg, i64 noundef %val) unnamed_addr #4 align 64 {
entry:
  %data.i = alloca [65 x i8], align 1
  %val.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %val.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i) #7
  %1 = getelementptr inbounds i8, ptr %data.i, i32 9
  %2 = call ptr @memset(ptr %1, i32 255, i32 56)
  %i2c_protocol.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 3
  %3 = ptrtoint ptr %i2c_protocol.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %i2c_protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %reg to i32
  %call.i = call i32 @regmap_raw_write(ptr noundef %5, i32 noundef %conv.i, ptr noundef nonnull %val.addr, i32 noundef 8) #7
  br label %tps6598x_block_write.exit

if.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = getelementptr inbounds i8, ptr %data.i, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %data.i, align 1
  %8 = ptrtoint ptr %val.addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %val.addr, align 8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %6, align 1
  %regmap5.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 1
  %11 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap5.i, align 4
  %conv6.i = zext i8 %reg to i32
  %call8.i = call i32 @regmap_raw_write(ptr noundef %12, i32 noundef %conv6.i, ptr noundef nonnull %data.i, i32 noundef 9) #7
  br label %tps6598x_block_write.exit

tps6598x_block_write.exit:                        ; preds = %if.end2.i, %if.then1.i
  %retval.0.i = phi i32 [ %call8.i, %if.end2.i ], [ %call.i, %if.then1.i ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tps6598x_status(i32 noundef %status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_status, i32 0, i32 1), ptr blockaddress(@trace_tps6598x_status, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !139

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !141
  %call42 = tail call i32 @__traceiter_tps6598x_status(ptr noundef null, i32 noundef %status) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !142
  %13 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tps6598x_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_tps6598x_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 258, ptr noundef nonnull @.str.13) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_devlink_purge_absent_suppliers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_usb_role_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_tps6598_psy_register(ptr noundef %tps) unnamed_addr #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %1 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tps, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %entry.dev_name.exit_crit_edge ]
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %7 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tps, ptr %drv_data, align 4
  %call2 = tail call ptr @dev_fwnode(ptr noundef %2) #7
  %fwnode = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 1
  %8 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %fwnode, align 4
  %9 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tps, align 4
  %call4 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %10, i32 noundef 3264, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef %retval.0.i) #7
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %psy_desc = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 10
  %11 = ptrtoint ptr %psy_desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4, ptr %psy_desc, align 4
  %type = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %type, align 4
  %usb_types = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 10, i32 2
  %13 = ptrtoint ptr %usb_types to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tps6598x_psy_usb_types, ptr %usb_types, align 4
  %num_usb_types = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 10, i32 3
  %14 = ptrtoint ptr %num_usb_types to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %num_usb_types, align 4
  %properties = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 10, i32 4
  %15 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tps6598x_psy_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 10, i32 5
  %16 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 10, i32 6
  %17 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tps6598x_psy_get_prop, ptr %get_property, align 4
  %usb_type = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 11
  %18 = ptrtoint ptr %usb_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %usb_type, align 4
  %19 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tps, align 4
  %call13 = call ptr @devm_power_supply_register(ptr noundef %20, ptr noundef %psy_desc, ptr noundef nonnull %psy_cfg) #7
  %psy = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 9
  %21 = ptrtoint ptr %psy to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call13, ptr %psy, align 4
  %cmp.i.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %call13 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tps6598x_connect(ptr noundef %tps, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  %data.i.i68 = alloca [65 x i8], align 1
  %id.i = alloca %struct.tps6598x_rx_identity_reg, align 1
  %data.i.i = alloca [65 x i8], align 1
  %desc = alloca %struct.typec_partner_desc, align 4
  %pwr_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #7
  %0 = call ptr @memset(ptr %desc, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pwr_status) #7
  %1 = ptrtoint ptr %pwr_status to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %pwr_status, align 2, !annotation !138
  %partner = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 5
  %2 = ptrtoint ptr %partner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %partner, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i) #7
  %4 = call ptr @memset(ptr %data.i.i, i32 255, i32 65)
  %i2c_protocol.i.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 3
  %5 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %regmap.i.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i, label %if.then1.i.i, label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @regmap_raw_read(ptr noundef %7, i32 noundef 63, ptr noundef nonnull %pwr_status, i32 noundef 2) #7
  br label %tps6598x_read16.exit

if.end2.i.i:                                      ; preds = %if.end
  %call6.i.i = call i32 @regmap_raw_read(ptr noundef %7, i32 noundef 63, ptr noundef nonnull %data.i.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end2.i.i.tps6598x_read16.exit_crit_edge

if.end2.i.i.tps6598x_read16.exit_crit_edge:       ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read16.exit

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp11.i.i = icmp ult i8 %9, 2
  br i1 %cmp11.i.i, label %tps6598x_read16.exit.thread, label %tps6598x_read16.exit.thread83

tps6598x_read16.exit.thread:                      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %cleanup

tps6598x_read16.exit.thread83:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx15.i.i, align 1
  %12 = ptrtoint ptr %pwr_status to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %pwr_status, align 2
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %if.end2

tps6598x_read16.exit:                             ; preds = %if.end2.i.i.tps6598x_read16.exit_crit_edge, %if.then1.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then1.i.i ], [ %call6.i.i, %if.end2.i.i.tps6598x_read16.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %tps6598x_read16.exit.cleanup_crit_edge, label %tps6598x_read16.exit.if.end2_crit_edge

tps6598x_read16.exit.if.end2_crit_edge:           ; preds = %tps6598x_read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

tps6598x_read16.exit.cleanup_crit_edge:           ; preds = %tps6598x_read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %tps6598x_read16.exit.if.end2_crit_edge, %tps6598x_read16.exit.thread83
  %13 = ptrtoint ptr %pwr_status to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pwr_status, align 2
  %15 = lshr i16 %14, 2
  %16 = and i16 %15, 3
  %shr = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp3 = icmp eq i16 %16, 3
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %desc, align 4
  %bf.shl = select i1 %cmp3, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %desc, align 4
  %accessory = getelementptr inbounds %struct.typec_partner_desc, ptr %desc, i32 0, i32 1
  %18 = ptrtoint ptr %accessory to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %accessory, align 4
  %identity = getelementptr inbounds %struct.typec_partner_desc, ptr %desc, i32 0, i32 2
  %19 = ptrtoint ptr %identity to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %identity, align 4
  br i1 %cmp3, label %if.then7, label %if.end2.if.end13_crit_edge

if.end2.if.end13_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then7:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %id.i) #7
  %20 = getelementptr inbounds %struct.tps6598x_rx_identity_reg, ptr %id.i, i32 0, i32 1
  %21 = call ptr @memset(ptr %id.i, i32 255, i32 25)
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i68) #7
  %22 = call ptr @memset(ptr %data.i.i68, i32 255, i32 65)
  %23 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i.i70 = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i70)
  %tobool.not.i.i71 = icmp sgt i8 %bf.load.i.i70, -1
  %24 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i71, label %tps6598x_block_read.exit.i, label %if.end2.i.i75

if.end2.i.i75:                                    ; preds = %if.then7
  %call6.i.i73 = call i32 @regmap_raw_read(ptr noundef %25, i32 noundef 72, ptr noundef nonnull %data.i.i68, i32 noundef 26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i73)
  %tobool7.not.i.i74 = icmp eq i32 %call6.i.i73, 0
  br i1 %tobool7.not.i.i74, label %if.end9.i.i77, label %if.end2.i.i75.tps6598x_block_read.exit.thread.i_crit_edge

if.end2.i.i75.tps6598x_block_read.exit.thread.i_crit_edge: ; preds = %if.end2.i.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_block_read.exit.thread.i

if.end9.i.i77:                                    ; preds = %if.end2.i.i75
  %26 = ptrtoint ptr %data.i.i68 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data.i.i68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %27)
  %cmp11.i.i76 = icmp ult i8 %27, 25
  br i1 %cmp11.i.i76, label %if.end9.i.i77.tps6598x_block_read.exit.thread.i_crit_edge, label %tps6598x_block_read.exit.thread6.i

if.end9.i.i77.tps6598x_block_read.exit.thread.i_crit_edge: ; preds = %if.end9.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_block_read.exit.thread.i

tps6598x_block_read.exit.thread6.i:               ; preds = %if.end9.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i78 = getelementptr inbounds [65 x i8], ptr %data.i.i68, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %id.i, ptr %arrayidx15.i.i78, i32 25)
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i68) #7
  br label %if.end11

tps6598x_block_read.exit.thread.i:                ; preds = %if.end9.i.i77.tps6598x_block_read.exit.thread.i_crit_edge, %if.end2.i.i75.tps6598x_block_read.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %if.end9.i.i77.tps6598x_block_read.exit.thread.i_crit_edge ], [ %call6.i.i73, %if.end2.i.i75.tps6598x_block_read.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i68) #7
  br label %tps6598x_read_partner_identity.exit.thread

tps6598x_block_read.exit.i:                       ; preds = %if.then7
  %call.i.i79 = call i32 @regmap_raw_read(ptr noundef %25, i32 noundef 72, ptr noundef nonnull %id.i, i32 noundef 25) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool.not.i = icmp eq i32 %call.i.i79, 0
  br i1 %tobool.not.i, label %tps6598x_block_read.exit.i.if.end11_crit_edge, label %tps6598x_block_read.exit.i.tps6598x_read_partner_identity.exit.thread_crit_edge

tps6598x_block_read.exit.i.tps6598x_read_partner_identity.exit.thread_crit_edge: ; preds = %tps6598x_block_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read_partner_identity.exit.thread

tps6598x_block_read.exit.i.if.end11_crit_edge:    ; preds = %tps6598x_block_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

tps6598x_read_partner_identity.exit.thread:       ; preds = %tps6598x_block_read.exit.i.tps6598x_read_partner_identity.exit.thread_crit_edge, %tps6598x_block_read.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %tps6598x_block_read.exit.thread.i ], [ %call.i.i79, %tps6598x_block_read.exit.i.tps6598x_read_partner_identity.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %id.i) #7
  br label %cleanup

if.end11:                                         ; preds = %tps6598x_block_read.exit.i.if.end11_crit_edge, %tps6598x_block_read.exit.thread6.i
  %partner_identity.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 6
  %29 = call ptr @memcpy(ptr %partner_identity.i, ptr %20, i32 24)
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %id.i) #7
  %30 = ptrtoint ptr %identity to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %partner_identity.i, ptr %identity, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end2.if.end13_crit_edge
  %port = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 4
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 4
  call void @typec_set_pwr_opmode(ptr noundef %32, i32 noundef %shr) #7
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port, align 4
  %and15 = lshr i32 %status, 5
  %and15.lobit = and i32 %and15, 1
  call void @typec_set_pwr_role(ptr noundef %34, i32 noundef %and15.lobit) #7
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port, align 4
  %and19 = lshr i32 %status, 7
  %and19.lobit = and i32 %and19, 1
  call void @typec_set_vconn_role(ptr noundef %36, i32 noundef %and19.lobit) #7
  %and25 = lshr i32 %status, 6
  %and25.lobit = and i32 %and25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.lobit)
  %cmp.i.not = icmp eq i32 %and25.lobit, 0
  %..i = select i1 %cmp.i.not, i32 2, i32 1
  %role_sw.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 7
  %37 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %role_sw.i, align 4
  %call.i = call i32 @usb_role_switch_set_role(ptr noundef %38, i32 noundef %..i) #7
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port, align 4
  call void @typec_set_data_role(ptr noundef %40, i32 noundef %and25.lobit) #7
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %port, align 4
  %call32 = call ptr @typec_register_partner(ptr noundef %42, ptr noundef nonnull %desc) #7
  %43 = ptrtoint ptr %partner to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call32, ptr %partner, align 4
  %cmp.i80 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end13
  %45 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %identity, align 4
  %tobool41.not = icmp eq ptr %46, null
  br i1 %tobool41.not, label %if.end39.if.end45_crit_edge, label %if.then42

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = call i32 @typec_partner_set_identity(ptr noundef %call32) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge
  %psy = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 9
  %47 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %psy, align 4
  call void @power_supply_changed(ptr noundef %48) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then36, %tps6598x_read_partner_identity.exit.thread, %tps6598x_read16.exit.cleanup_crit_edge, %tps6598x_read16.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %44, %if.then36 ], [ 0, %if.end45 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.i, %tps6598x_read16.exit.cleanup_crit_edge ], [ -5, %tps6598x_read16.exit.thread ], [ %retval.0.i.ph, %tps6598x_read_partner_identity.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pwr_status) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tps6598x_irq(i64 noundef %event1, i64 noundef %event2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_irq, i32 0, i32 1), ptr blockaddress(@trace_tps6598x_irq, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !139

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !145
  %call42 = tail call i32 @__traceiter_tps6598x_irq(ptr noundef null, i64 noundef %event1, i64 noundef %event2) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !146
  %13 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tps6598x_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_tps6598x_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 215, ptr noundef nonnull @.str.13) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tps6598x_read_status(ptr nocapture noundef readonly %tps, ptr noundef %status) unnamed_addr #2 align 64 {
entry:
  %data.i.i = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i) #7
  %0 = call ptr @memset(ptr %data.i.i, i32 255, i32 65)
  %i2c_protocol.i.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 3
  %1 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %regmap.i.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i, label %tps6598x_read32.exit, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %entry
  %call6.i.i = call i32 @regmap_raw_read(ptr noundef %3, i32 noundef 26, ptr noundef nonnull %data.i.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end2.i.i.tps6598x_read32.exit.thread_crit_edge

if.end2.i.i.tps6598x_read32.exit.thread_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit.thread

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp11.i.i = icmp ult i8 %5, 4
  br i1 %cmp11.i.i, label %if.end9.i.i.tps6598x_read32.exit.thread_crit_edge, label %tps6598x_read32.exit.thread7

if.end9.i.i.tps6598x_read32.exit.thread_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit.thread

tps6598x_read32.exit.thread7:                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx15.i.i, align 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %status, align 1
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %if.end

tps6598x_read32.exit.thread:                      ; preds = %if.end9.i.i.tps6598x_read32.exit.thread_crit_edge, %if.end2.i.i.tps6598x_read32.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %do.end

tps6598x_read32.exit:                             ; preds = %entry
  %call.i.i = tail call i32 @regmap_raw_read(ptr noundef %3, i32 noundef 26, ptr noundef %status, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %tps6598x_read32.exit.if.end_crit_edge, label %tps6598x_read32.exit.do.end_crit_edge

tps6598x_read32.exit.do.end_crit_edge:            ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

tps6598x_read32.exit.if.end_crit_edge:            ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %tps6598x_read32.exit.do.end_crit_edge, %tps6598x_read32.exit.thread
  %9 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tps, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end:                                           ; preds = %tps6598x_read32.exit.if.end_crit_edge, %tps6598x_read32.exit.thread7
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  call fastcc void @trace_tps6598x_status(i32 noundef %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %tobool.not5 = phi i1 [ true, %if.end ], [ false, %do.end ]
  ret i1 %tobool.not5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tps6598x_read_power_status(ptr nocapture noundef readonly %tps) unnamed_addr #2 align 64 {
entry:
  %data.i.i = alloca [65 x i8], align 1
  %pwr_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pwr_status) #7
  %0 = ptrtoint ptr %pwr_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pwr_status, align 2, !annotation !138
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i) #7
  %1 = call ptr @memset(ptr %data.i.i, i32 255, i32 65)
  %i2c_protocol.i.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %regmap.i.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i, label %if.then1.i.i, label %if.end2.i.i

if.then1.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @regmap_raw_read(ptr noundef %4, i32 noundef 63, ptr noundef nonnull %pwr_status, i32 noundef 2) #7
  br label %tps6598x_read16.exit

if.end2.i.i:                                      ; preds = %entry
  %call6.i.i = call i32 @regmap_raw_read(ptr noundef %4, i32 noundef 63, ptr noundef nonnull %data.i.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end2.i.i.tps6598x_read16.exit_crit_edge

if.end2.i.i.tps6598x_read16.exit_crit_edge:       ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read16.exit

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp11.i.i = icmp ult i8 %6, 2
  br i1 %cmp11.i.i, label %tps6598x_read16.exit.thread, label %tps6598x_read16.exit.thread9

tps6598x_read16.exit.thread:                      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %do.end

tps6598x_read16.exit.thread9:                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx15.i.i, align 1
  %9 = ptrtoint ptr %pwr_status to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %pwr_status, align 2
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %if.end

tps6598x_read16.exit:                             ; preds = %if.end2.i.i.tps6598x_read16.exit_crit_edge, %if.then1.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then1.i.i ], [ %call6.i.i, %if.end2.i.i.tps6598x_read16.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %tps6598x_read16.exit.do.end_crit_edge, label %tps6598x_read16.exit.if.end_crit_edge

tps6598x_read16.exit.if.end_crit_edge:            ; preds = %tps6598x_read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

tps6598x_read16.exit.do.end_crit_edge:            ; preds = %tps6598x_read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %tps6598x_read16.exit.do.end_crit_edge, %tps6598x_read16.exit.thread
  %retval.0.i.i6 = phi i32 [ -5, %tps6598x_read16.exit.thread ], [ %retval.0.i.i, %tps6598x_read16.exit.do.end_crit_edge ]
  %10 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tps, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i.i6) #10
  br label %cleanup

if.end:                                           ; preds = %tps6598x_read16.exit.if.end_crit_edge, %tps6598x_read16.exit.thread9
  %12 = ptrtoint ptr %pwr_status to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pwr_status, align 2
  call fastcc void @trace_tps6598x_power_status(i16 noundef zeroext %13)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %cmp7 = phi i1 [ true, %if.end ], [ false, %do.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pwr_status) #7
  ret i1 %cmp7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tps6598x_read_data_status(ptr nocapture noundef readonly %tps) unnamed_addr #2 align 64 {
entry:
  %data.i.i = alloca [65 x i8], align 1
  %data_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_status) #7
  %0 = ptrtoint ptr %data_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data_status, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i) #7
  %1 = call ptr @memset(ptr %data.i.i, i32 255, i32 65)
  %i2c_protocol.i.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %regmap.i.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i, label %if.then1.i.i, label %if.end2.i.i

if.then1.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @regmap_raw_read(ptr noundef %4, i32 noundef 95, ptr noundef nonnull %data_status, i32 noundef 4) #7
  br label %tps6598x_read32.exit

if.end2.i.i:                                      ; preds = %entry
  %call6.i.i = call i32 @regmap_raw_read(ptr noundef %4, i32 noundef 95, ptr noundef nonnull %data.i.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end2.i.i.tps6598x_read32.exit_crit_edge

if.end2.i.i.tps6598x_read32.exit_crit_edge:       ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp11.i.i = icmp ult i8 %6, 4
  br i1 %cmp11.i.i, label %tps6598x_read32.exit.thread, label %tps6598x_read32.exit.thread9

tps6598x_read32.exit.thread:                      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %do.end

tps6598x_read32.exit.thread9:                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arrayidx15.i.i, align 1
  %9 = ptrtoint ptr %data_status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %data_status, align 4
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %if.end

tps6598x_read32.exit:                             ; preds = %if.end2.i.i.tps6598x_read32.exit_crit_edge, %if.then1.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then1.i.i ], [ %call6.i.i, %if.end2.i.i.tps6598x_read32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %tps6598x_read32.exit.do.end_crit_edge, label %tps6598x_read32.exit.if.end_crit_edge

tps6598x_read32.exit.if.end_crit_edge:            ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

tps6598x_read32.exit.do.end_crit_edge:            ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %tps6598x_read32.exit.do.end_crit_edge, %tps6598x_read32.exit.thread
  %retval.0.i.i6 = phi i32 [ -5, %tps6598x_read32.exit.thread ], [ %retval.0.i.i, %tps6598x_read32.exit.do.end_crit_edge ]
  %10 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tps, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i.i6) #10
  br label %cleanup

if.end:                                           ; preds = %tps6598x_read32.exit.if.end_crit_edge, %tps6598x_read32.exit.thread9
  %12 = ptrtoint ptr %data_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_status, align 4
  call fastcc void @trace_tps6598x_data_status(i32 noundef %13)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %cmp7 = phi i1 [ true, %if.end ], [ false, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_status) #7
  ret i1 %cmp7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tps6598x_irq(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tps6598x_power_status(i16 noundef zeroext %power_status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_power_status, i32 0, i32 1), ptr blockaddress(@trace_tps6598x_power_status, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !139

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !147
  %call42 = tail call i32 @__traceiter_tps6598x_power_status(ptr noundef null, i16 noundef zeroext %power_status) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !148
  %13 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_power_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_power_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tps6598x_power_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_tps6598x_power_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 278, ptr noundef nonnull @.str.13) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tps6598x_power_status(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tps6598x_data_status(i32 noundef %data_status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_data_status, i32 0, i32 1), ptr blockaddress(@trace_tps6598x_data_status, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !139

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !149
  %call42 = tail call i32 @__traceiter_tps6598x_data_status(ptr noundef null, i32 noundef %data_status) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_data_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tps6598x_data_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tps6598x_data_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_tps6598x_data_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 297, ptr noundef nonnull @.str.13) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tps6598x_data_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tps6598x_exec_cmd(ptr nocapture noundef readonly %tps, ptr noundef %cmd, i32 noundef %in_len, ptr noundef %in_data) unnamed_addr #2 align 64 {
entry:
  %data.i28 = alloca [65 x i8], align 1
  %data.i.i12 = alloca [65 x i8], align 1
  %data.i.i3 = alloca [65 x i8], align 1
  %data.i = alloca [65 x i8], align 1
  %data.i.i = alloca [65 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i) #7
  %1 = call ptr @memset(ptr %data.i.i, i32 255, i32 65)
  %i2c_protocol.i.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %regmap.i.i = getelementptr inbounds %struct.tps6598x, ptr %tps, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i, label %tps6598x_read32.exit, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %entry
  %call6.i.i = call i32 @regmap_raw_read(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %data.i.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end2.i.i.tps6598x_read32.exit.thread_crit_edge

if.end2.i.i.tps6598x_read32.exit.thread_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit.thread

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp11.i.i = icmp ult i8 %6, 4
  br i1 %cmp11.i.i, label %if.end9.i.i.tps6598x_read32.exit.thread_crit_edge, label %tps6598x_read32.exit.thread39

if.end9.i.i.tps6598x_read32.exit.thread_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit.thread

tps6598x_read32.exit.thread39:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arrayidx15.i.i, align 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %if.end

tps6598x_read32.exit.thread:                      ; preds = %if.end9.i.i.tps6598x_read32.exit.thread_crit_edge, %if.end2.i.i.tps6598x_read32.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ -5, %if.end9.i.i.tps6598x_read32.exit.thread_crit_edge ], [ %call6.i.i, %if.end2.i.i.tps6598x_read32.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %cleanup

tps6598x_read32.exit:                             ; preds = %entry
  %call.i.i = call i32 @regmap_raw_read(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %val, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.endthread-pre-split, label %tps6598x_read32.exit.cleanup_crit_edge

tps6598x_read32.exit.cleanup_crit_edge:           ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.endthread-pre-split:                           ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %tps6598x_read32.exit.thread39
  %11 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %8, %tps6598x_read32.exit.thread39 ]
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %11, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end3_crit_edge
    i32 1145914145, label %if.end.if.end3_crit_edge53
  ]

if.end.if.end3_crit_edge53:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.end.if.end3_crit_edge53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_len)
  %tobool4.not = icmp eq i32 %in_len, 0
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i) #7
  %13 = getelementptr inbounds i8, ptr %data.i, i32 2
  %14 = call ptr @memset(ptr %13, i32 255, i32 63)
  %15 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 4
  %call.i = call i32 @regmap_raw_write(ptr noundef %17, i32 noundef 9, ptr noundef %in_data, i32 noundef 1) #7
  br label %tps6598x_block_write.exit

if.end2.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %18 = getelementptr inbounds i8, ptr %data.i, i32 1
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %data.i, align 1
  %20 = ptrtoint ptr %in_data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %in_data, align 1
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %18, align 1
  %23 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i, align 4
  %call8.i = call i32 @regmap_raw_write(ptr noundef %24, i32 noundef 9, ptr noundef nonnull %data.i, i32 noundef 2) #7
  br label %tps6598x_block_write.exit

tps6598x_block_write.exit:                        ; preds = %if.end2.i, %if.then1.i
  %retval.0.i = phi i32 [ %call8.i, %if.end2.i ], [ %call.i, %if.then1.i ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %tps6598x_block_write.exit.if.end10_crit_edge, label %tps6598x_block_write.exit.cleanup_crit_edge

tps6598x_block_write.exit.cleanup_crit_edge:      ; preds = %tps6598x_block_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tps6598x_block_write.exit.if.end10_crit_edge:     ; preds = %tps6598x_block_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %tps6598x_block_write.exit.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i3) #7
  %25 = getelementptr inbounds i8, ptr %data.i.i3, i32 5
  %26 = call ptr @memset(ptr %25, i32 255, i32 60)
  %27 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i5 = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i5)
  %tobool.not.i.i6 = icmp sgt i8 %bf.load.i.i5, -1
  br i1 %tobool.not.i.i6, label %if.then1.i.i9, label %if.end2.i.i10

if.then1.i.i9:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i8 = call i32 @regmap_raw_write(ptr noundef %29, i32 noundef 8, ptr noundef %cmd, i32 noundef 4) #7
  br label %tps6598x_write_4cc.exit

if.end2.i.i10:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %30 = getelementptr inbounds i8, ptr %data.i.i3, i32 1
  %31 = ptrtoint ptr %data.i.i3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %data.i.i3, align 1
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %cmd, align 1
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %30, align 1
  %35 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i, align 4
  %call8.i.i = call i32 @regmap_raw_write(ptr noundef %36, i32 noundef 8, ptr noundef nonnull %data.i.i3, i32 noundef 5) #7
  br label %tps6598x_write_4cc.exit

tps6598x_write_4cc.exit:                          ; preds = %if.end2.i.i10, %if.then1.i.i9
  %retval.0.i.i11 = phi i32 [ %call8.i.i, %if.end2.i.i10 ], [ %call.i.i8, %if.then1.i.i9 ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i11)
  %cmp12 = icmp slt i32 %retval.0.i.i11, 0
  br i1 %cmp12, label %tps6598x_write_4cc.exit.cleanup_crit_edge, label %if.end14

tps6598x_write_4cc.exit.cleanup_crit_edge:        ; preds = %tps6598x_write_4cc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %tps6598x_write_4cc.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %37, 100
  %arrayidx15.i.i24 = getelementptr inbounds [65 x i8], ptr %data.i.i12, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end14
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i12) #7
  %38 = call ptr @memset(ptr %data.i.i12, i32 255, i32 65)
  %39 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.i14 = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i14)
  %tobool.not.i.i15 = icmp sgt i8 %bf.load.i.i14, -1
  %40 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i15, label %tps6598x_read32.exit27, label %if.end2.i.i21

if.end2.i.i21:                                    ; preds = %do.body
  %call6.i.i19 = call i32 @regmap_raw_read(ptr noundef %41, i32 noundef 8, ptr noundef nonnull %data.i.i12, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i19)
  %tobool7.not.i.i20 = icmp eq i32 %call6.i.i19, 0
  br i1 %tobool7.not.i.i20, label %if.end9.i.i23, label %if.end2.i.i21.tps6598x_read32.exit27.thread_crit_edge

if.end2.i.i21.tps6598x_read32.exit27.thread_crit_edge: ; preds = %if.end2.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit27.thread

if.end9.i.i23:                                    ; preds = %if.end2.i.i21
  %42 = ptrtoint ptr %data.i.i12 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %data.i.i12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp11.i.i22 = icmp ult i8 %43, 4
  br i1 %cmp11.i.i22, label %if.end9.i.i23.tps6598x_read32.exit27.thread_crit_edge, label %tps6598x_read32.exit27.thread44

if.end9.i.i23.tps6598x_read32.exit27.thread_crit_edge: ; preds = %if.end9.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit27.thread

tps6598x_read32.exit27.thread44:                  ; preds = %if.end9.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %arrayidx15.i.i24 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx15.i.i24, align 1
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i12) #7
  br label %if.end19

tps6598x_read32.exit27.thread:                    ; preds = %if.end9.i.i23.tps6598x_read32.exit27.thread_crit_edge, %if.end2.i.i21.tps6598x_read32.exit27.thread_crit_edge
  %retval.0.i.i26.ph = phi i32 [ -5, %if.end9.i.i23.tps6598x_read32.exit27.thread_crit_edge ], [ %call6.i.i19, %if.end2.i.i21.tps6598x_read32.exit27.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i12) #7
  br label %cleanup

tps6598x_read32.exit27:                           ; preds = %do.body
  %call.i.i17 = call i32 @regmap_raw_read(ptr noundef %41, i32 noundef 8, ptr noundef nonnull %val, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %tobool17.not = icmp eq i32 %call.i.i17, 0
  br i1 %tobool17.not, label %if.end19thread-pre-split, label %tps6598x_read32.exit27.cleanup_crit_edge

tps6598x_read32.exit27.cleanup_crit_edge:         ; preds = %tps6598x_read32.exit27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19thread-pre-split:                         ; preds = %tps6598x_read32.exit27
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr47 = load i32, ptr %val, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %tps6598x_read32.exit27.thread44
  %48 = phi i32 [ %.pr47, %if.end19thread-pre-split ], [ %45, %tps6598x_read32.exit27.thread44 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1145914145, i32 %48)
  %cmp20 = icmp eq i32 %48, 1145914145
  br i1 %cmp20, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp23 = icmp slt i32 %sub, 0
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %do.cond

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond:                                          ; preds = %if.end22
  %tobool26.not = icmp eq i32 %48, 0
  br i1 %tobool26.not, label %if.else, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else:                                          ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i28) #7
  %50 = call ptr @memset(ptr %data.i28, i32 255, i32 65)
  %51 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i30 = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i30)
  %tobool.not.i31 = icmp sgt i8 %bf.load.i30, -1
  %52 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i31, label %tps6598x_block_read.exit, label %if.end2.i35

if.end2.i35:                                      ; preds = %if.else
  %call6.i = call i32 @regmap_raw_read(ptr noundef %53, i32 noundef 9, ptr noundef nonnull %data.i28, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end2.i35.tps6598x_block_read.exit.thread_crit_edge

if.end2.i35.tps6598x_block_read.exit.thread_crit_edge: ; preds = %if.end2.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_block_read.exit.thread

if.end9.i:                                        ; preds = %if.end2.i35
  %54 = ptrtoint ptr %data.i28 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data.i28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp11.i = icmp eq i8 %55, 0
  br i1 %cmp11.i, label %if.end9.i.tps6598x_block_read.exit.thread_crit_edge, label %tps6598x_block_read.exit.thread50

if.end9.i.tps6598x_block_read.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_block_read.exit.thread

tps6598x_block_read.exit.thread50:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i = getelementptr inbounds [65 x i8], ptr %data.i28, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx15.i, align 1
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i28) #7
  br label %if.end37

tps6598x_block_read.exit.thread:                  ; preds = %if.end9.i.tps6598x_block_read.exit.thread_crit_edge, %if.end2.i35.tps6598x_block_read.exit.thread_crit_edge
  %retval.0.i36.ph = phi i32 [ -5, %if.end9.i.tps6598x_block_read.exit.thread_crit_edge ], [ %call6.i, %if.end2.i35.tps6598x_block_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i28) #7
  br label %cleanup

tps6598x_block_read.exit:                         ; preds = %if.else
  %call.i33 = call i32 @regmap_raw_read(ptr noundef %53, i32 noundef 9, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool34.not = icmp eq i32 %call.i33, 0
  br i1 %tobool34.not, label %tps6598x_block_read.exit.if.end37_crit_edge, label %tps6598x_block_read.exit.cleanup_crit_edge

tps6598x_block_read.exit.cleanup_crit_edge:       ; preds = %tps6598x_block_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tps6598x_block_read.exit.if.end37_crit_edge:      ; preds = %tps6598x_block_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end37:                                         ; preds = %tps6598x_block_read.exit.if.end37_crit_edge, %tps6598x_block_read.exit.thread50
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %switch.selectcmp = icmp eq i32 %60, 3
  %switch.select = sext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %switch.selectcmp1 = icmp eq i32 %60, 1
  %switch.select2 = select i1 %switch.selectcmp1, i32 -110, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %tps6598x_block_read.exit.cleanup_crit_edge, %tps6598x_block_read.exit.thread, %if.end22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %tps6598x_read32.exit27.cleanup_crit_edge, %tps6598x_read32.exit27.thread, %tps6598x_write_4cc.exit.cleanup_crit_edge, %tps6598x_block_write.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tps6598x_read32.exit.cleanup_crit_edge, %tps6598x_read32.exit.thread
  %retval.0 = phi i32 [ %call.i.i, %tps6598x_read32.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %retval.0.i, %tps6598x_block_write.exit.cleanup_crit_edge ], [ %retval.0.i.i11, %tps6598x_write_4cc.exit.cleanup_crit_edge ], [ %call.i33, %tps6598x_block_read.exit.cleanup_crit_edge ], [ %switch.select2, %if.end37 ], [ %retval.0.i.i.ph, %tps6598x_read32.exit.thread ], [ %retval.0.i.i26.ph, %tps6598x_read32.exit27.thread ], [ %retval.0.i36.ph, %tps6598x_block_read.exit.thread ], [ -110, %if.end22.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ %call.i.i17, %tps6598x_read32.exit27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cd321x_irq(i64 noundef %event) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cd321x_irq, i32 0, i32 1), ptr blockaddress(@trace_cd321x_irq, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !139

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !140

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !151
  %call42 = tail call i32 @__traceiter_cd321x_irq(ptr noundef null, i64 noundef %event) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !152
  %13 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !140

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cd321x_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cd321x_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cd321x_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_cd321x_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 231, ptr noundef nonnull @.str.13) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !144
  %31 = tail call i32 @llvm.read_register.i32(metadata !128) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cd321x_irq(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tps6598x_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6598x_dr_set(ptr noundef %port, i32 noundef %role) #2 align 64 {
entry:
  %data.i.i = alloca [65 x i8], align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role)
  %cmp = icmp eq i32 %role, 0
  %cond = select i1 %cmp, ptr @.str.34, ptr @.str.35
  %call = tail call ptr @typec_get_drvdata(ptr noundef %port) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !138
  %lock = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call1 = tail call fastcc i32 @tps6598x_exec_cmd(ptr noundef %call, ptr noundef nonnull %cond, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i) #7
  %1 = call ptr @memset(ptr %data.i.i, i32 255, i32 65)
  %i2c_protocol.i.i = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %regmap.i.i = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i, label %tps6598x_read32.exit, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.end
  %call6.i.i = call i32 @regmap_raw_read(ptr noundef %4, i32 noundef 26, ptr noundef nonnull %data.i.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end2.i.i.tps6598x_read32.exit.thread_crit_edge

if.end2.i.i.tps6598x_read32.exit.thread_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit.thread

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp11.i.i = icmp ult i8 %6, 4
  br i1 %cmp11.i.i, label %if.end9.i.i.tps6598x_read32.exit.thread_crit_edge, label %tps6598x_read32.exit.thread22

if.end9.i.i.tps6598x_read32.exit.thread_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit.thread

tps6598x_read32.exit.thread22:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arrayidx15.i.i, align 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %if.end5

tps6598x_read32.exit.thread:                      ; preds = %if.end9.i.i.tps6598x_read32.exit.thread_crit_edge, %if.end2.i.i.tps6598x_read32.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ -5, %if.end9.i.i.tps6598x_read32.exit.thread_crit_edge ], [ %call6.i.i, %if.end2.i.i.tps6598x_read32.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %out_unlock

tps6598x_read32.exit:                             ; preds = %if.end
  %call.i.i = call i32 @regmap_raw_read(ptr noundef %4, i32 noundef 26, ptr noundef nonnull %status, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %tps6598x_read32.exit.if.end5_crit_edge, label %tps6598x_read32.exit.out_unlock_crit_edge

tps6598x_read32.exit.out_unlock_crit_edge:        ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

tps6598x_read32.exit.if.end5_crit_edge:           ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %tps6598x_read32.exit.if.end5_crit_edge, %tps6598x_read32.exit.thread22
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %and = lshr i32 %11, 6
  %and.lobit = and i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %role)
  %cmp8.not = icmp eq i32 %and.lobit, %role
  br i1 %cmp8.not, label %if.end10, label %if.end5.out_unlock_crit_edge

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %role)
  %cmp.i = icmp eq i32 %role, 1
  %..i = select i1 %cmp.i, i32 1, i32 2
  %role_sw.i = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 7
  %12 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %role_sw.i, align 4
  %call.i = call i32 @usb_role_switch_set_role(ptr noundef %13, i32 noundef %..i) #7
  %port.i = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port.i, align 4
  call void @typec_set_data_role(ptr noundef %15, i32 noundef %role) #7
  br label %out_unlock

out_unlock:                                       ; preds = %if.end10, %if.end5.out_unlock_crit_edge, %tps6598x_read32.exit.out_unlock_crit_edge, %tps6598x_read32.exit.thread, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_unlock_crit_edge ], [ %call.i.i, %tps6598x_read32.exit.out_unlock_crit_edge ], [ 0, %if.end10 ], [ -71, %if.end5.out_unlock_crit_edge ], [ %retval.0.i.i.ph, %tps6598x_read32.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6598x_pr_set(ptr noundef %port, i32 noundef %role) #2 align 64 {
entry:
  %data.i.i = alloca [65 x i8], align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role)
  %cmp = icmp eq i32 %role, 0
  %cond = select i1 %cmp, ptr @.str.36, ptr @.str.37
  %call = tail call ptr @typec_get_drvdata(ptr noundef %port) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !138
  %lock = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call1 = tail call fastcc i32 @tps6598x_exec_cmd(ptr noundef %call, ptr noundef nonnull %cond, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i) #7
  %1 = call ptr @memset(ptr %data.i.i, i32 255, i32 65)
  %i2c_protocol.i.i = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %regmap.i.i = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i, label %tps6598x_read32.exit, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.end
  %call6.i.i = call i32 @regmap_raw_read(ptr noundef %4, i32 noundef 26, ptr noundef nonnull %data.i.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end2.i.i.tps6598x_read32.exit.thread_crit_edge

if.end2.i.i.tps6598x_read32.exit.thread_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit.thread

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp11.i.i = icmp ult i8 %6, 4
  br i1 %cmp11.i.i, label %if.end9.i.i.tps6598x_read32.exit.thread_crit_edge, label %tps6598x_read32.exit.thread23

if.end9.i.i.tps6598x_read32.exit.thread_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read32.exit.thread

tps6598x_read32.exit.thread23:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arrayidx15.i.i, align 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %if.end5

tps6598x_read32.exit.thread:                      ; preds = %if.end9.i.i.tps6598x_read32.exit.thread_crit_edge, %if.end2.i.i.tps6598x_read32.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ -5, %if.end9.i.i.tps6598x_read32.exit.thread_crit_edge ], [ %call6.i.i, %if.end2.i.i.tps6598x_read32.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %out_unlock

tps6598x_read32.exit:                             ; preds = %if.end
  %call.i.i = call i32 @regmap_raw_read(ptr noundef %4, i32 noundef 26, ptr noundef nonnull %status, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %tps6598x_read32.exit.if.end5_crit_edge, label %tps6598x_read32.exit.out_unlock_crit_edge

tps6598x_read32.exit.out_unlock_crit_edge:        ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

tps6598x_read32.exit.if.end5_crit_edge:           ; preds = %tps6598x_read32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %tps6598x_read32.exit.if.end5_crit_edge, %tps6598x_read32.exit.thread23
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %and = lshr i32 %11, 5
  %and.lobit = and i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %role)
  %cmp8.not = icmp eq i32 %and.lobit, %role
  br i1 %cmp8.not, label %if.end10, label %if.end5.out_unlock_crit_edge

if.end5.out_unlock_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %port11 = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %port11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port11, align 4
  call void @typec_set_pwr_role(ptr noundef %13, i32 noundef %role) #7
  br label %out_unlock

out_unlock:                                       ; preds = %if.end10, %if.end5.out_unlock_crit_edge, %tps6598x_read32.exit.out_unlock_crit_edge, %tps6598x_read32.exit.thread, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_unlock_crit_edge ], [ %call.i.i, %tps6598x_read32.exit.out_unlock_crit_edge ], [ 0, %if.end10 ], [ -71, %if.end5.out_unlock_crit_edge ], [ %retval.0.i.i.ph, %tps6598x_read32.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tps6598x_psy_get_prop(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %data.i.i.i = alloca [65 x i8], align 1
  %pwr_status.i = alloca i16, align 2
  %data.i.i = alloca [65 x i8], align 1
  %pwr_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pwr_status) #7
  %0 = ptrtoint ptr %pwr_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pwr_status, align 2, !annotation !138
  %1 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 65, label %sw.bb
    i32 4, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i) #7
  %2 = call ptr @memset(ptr %data.i.i, i32 255, i32 65)
  %i2c_protocol.i.i = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %i2c_protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i.i = load i8, ptr %i2c_protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %regmap.i.i = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  br i1 %tobool.not.i.i, label %if.then1.i.i, label %if.end2.i.i

if.then1.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @regmap_raw_read(ptr noundef %5, i32 noundef 63, ptr noundef nonnull %pwr_status, i32 noundef 2) #7
  br label %tps6598x_read16.exit

if.end2.i.i:                                      ; preds = %sw.bb
  %call6.i.i = call i32 @regmap_raw_read(ptr noundef %5, i32 noundef 63, ptr noundef nonnull %data.i.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end2.i.i.tps6598x_read16.exit_crit_edge

if.end2.i.i.tps6598x_read16.exit_crit_edge:       ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read16.exit

if.end9.i.i:                                      ; preds = %if.end2.i.i
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp11.i.i = icmp ult i8 %7, 2
  br i1 %cmp11.i.i, label %tps6598x_read16.exit.thread, label %tps6598x_read16.exit.thread17

tps6598x_read16.exit.thread:                      ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %cleanup

tps6598x_read16.exit.thread17:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %arrayidx15.i.i, align 1
  %10 = ptrtoint ptr %pwr_status to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %pwr_status, align 2
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  br label %if.end

tps6598x_read16.exit:                             ; preds = %if.end2.i.i.tps6598x_read16.exit_crit_edge, %if.then1.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then1.i.i ], [ %call6.i.i, %if.end2.i.i.tps6598x_read16.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %tps6598x_read16.exit.cleanup_crit_edge, label %tps6598x_read16.exit.if.end_crit_edge

tps6598x_read16.exit.if.end_crit_edge:            ; preds = %tps6598x_read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

tps6598x_read16.exit.cleanup_crit_edge:           ; preds = %tps6598x_read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %tps6598x_read16.exit.if.end_crit_edge, %tps6598x_read16.exit.thread17
  %retval.0.i.i20 = phi i32 [ 0, %tps6598x_read16.exit.thread17 ], [ %retval.0.i.i, %tps6598x_read16.exit.if.end_crit_edge ]
  %11 = ptrtoint ptr %pwr_status to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pwr_status, align 2
  %13 = and i16 %12, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %13)
  %cmp2 = icmp eq i16 %13, 12
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pwr_status.i) #7
  %16 = ptrtoint ptr %pwr_status.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %pwr_status.i, align 2, !annotation !138
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %data.i.i.i) #7
  %17 = call ptr @memset(ptr %data.i.i.i, i32 255, i32 65)
  %i2c_protocol.i.i.i = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 3
  %18 = ptrtoint ptr %i2c_protocol.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.i.i = load i8, ptr %i2c_protocol.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  %regmap.i.i.i = getelementptr inbounds %struct.tps6598x, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then1.i.i.i, label %if.end2.i.i.i

if.then1.i.i.i:                                   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call i32 @regmap_raw_read(ptr noundef %20, i32 noundef 63, ptr noundef nonnull %pwr_status.i, i32 noundef 2) #7
  br label %tps6598x_read16.exit.i

if.end2.i.i.i:                                    ; preds = %sw.bb6
  %call6.i.i.i = call i32 @regmap_raw_read(ptr noundef %20, i32 noundef 63, ptr noundef nonnull %data.i.i.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end9.i.i.i, label %if.end2.i.i.i.tps6598x_read16.exit.i_crit_edge

if.end2.i.i.i.tps6598x_read16.exit.i_crit_edge:   ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_read16.exit.i

if.end9.i.i.i:                                    ; preds = %if.end2.i.i.i
  %21 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp11.i.i.i = icmp ult i8 %22, 2
  br i1 %cmp11.i.i.i, label %tps6598x_read16.exit.thread.i, label %tps6598x_read16.exit.thread12.i

tps6598x_read16.exit.thread.i:                    ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i.i) #7
  br label %tps6598x_psy_get_online.exit

tps6598x_read16.exit.thread12.i:                  ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.i.i.i = getelementptr inbounds [65 x i8], ptr %data.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %arrayidx15.i.i.i, align 1
  %25 = ptrtoint ptr %pwr_status.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %pwr_status.i, align 2
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i.i) #7
  br label %if.end.i

tps6598x_read16.exit.i:                           ; preds = %if.end2.i.i.i.tps6598x_read16.exit.i_crit_edge, %if.then1.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %if.then1.i.i.i ], [ %call6.i.i.i, %if.end2.i.i.i.tps6598x_read16.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %data.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp.i, label %tps6598x_read16.exit.i.tps6598x_psy_get_online.exit_crit_edge, label %tps6598x_read16.exit.i.if.end.i_crit_edge

tps6598x_read16.exit.i.if.end.i_crit_edge:        ; preds = %tps6598x_read16.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

tps6598x_read16.exit.i.tps6598x_psy_get_online.exit_crit_edge: ; preds = %tps6598x_read16.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tps6598x_psy_get_online.exit

if.end.i:                                         ; preds = %tps6598x_read16.exit.i.if.end.i_crit_edge, %tps6598x_read16.exit.thread12.i
  %26 = ptrtoint ptr %pwr_status.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pwr_status.i, align 2
  %28 = and i16 %27, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %28)
  %.not.i = icmp eq i16 %28, 3
  %storemerge.i = zext i1 %.not.i to i32
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge.i, ptr %val, align 4
  br label %tps6598x_psy_get_online.exit

tps6598x_psy_get_online.exit:                     ; preds = %if.end.i, %tps6598x_read16.exit.i.tps6598x_psy_get_online.exit_crit_edge, %tps6598x_read16.exit.thread.i
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %retval.0.i.i.i, %tps6598x_read16.exit.i.tps6598x_psy_get_online.exit_crit_edge ], [ -5, %tps6598x_read16.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pwr_status.i) #7
  br label %cleanup

cleanup:                                          ; preds = %tps6598x_psy_get_online.exit, %if.else, %if.then4, %tps6598x_read16.exit.cleanup_crit_edge, %tps6598x_read16.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %tps6598x_read16.exit.cleanup_crit_edge ], [ %retval.0.i, %tps6598x_psy_get_online.exit ], [ %retval.0.i.i20, %if.then4 ], [ %retval.0.i.i20, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ -5, %tps6598x_read16.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pwr_status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @typec_register_partner(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @typec_partner_set_identity(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !72, !74, !76, !77, !78, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.named.register.sp = !{!128}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_tps6598x__299_896_tps6598x_i2c_driver_init6, !1, !"__initcall__kmod_tps6598x__299_896_tps6598x_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/typec/tipd/core.c", i32 896, i32 1}
!2 = !{ptr @__exitcall_tps6598x_i2c_driver_exit, !1, !"__exitcall_tps6598x_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author300, !4, !"__UNIQUE_ID_author300", i1 false, i1 false}
!4 = !{!"../drivers/usb/typec/tipd/core.c", i32 898, i32 1}
!5 = !{ptr @__UNIQUE_ID_file301, !6, !"__UNIQUE_ID_file301", i1 false, i1 false}
!6 = !{!"../drivers/usb/typec/tipd/core.c", i32 899, i32 1}
!7 = !{ptr @__UNIQUE_ID_license302, !6, !"__UNIQUE_ID_license302", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description303, !9, !"__UNIQUE_ID_description303", i1 false, i1 false}
!9 = !{!"../drivers/usb/typec/tipd/core.c", i32 900, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/typec/tipd/core.c", i32 889, i32 11}
!12 = !{ptr @tps6598x_i2c_driver, !13, !"tps6598x_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/typec/tipd/core.c", i32 887, i32 26}
!14 = !{ptr @tps6598x_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/usb/typec/tipd/core.c", i32 716, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tps6598x_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/usb/typec/tipd/core.c", i32 719, i32 16}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/typec/tipd/core.c", i32 734, i32 40}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/typec/tipd/core.c", i32 778, i32 53}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/typec/tipd/core.c", i32 837, i32 4}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tps6598x_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @tps6598x_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/typec/tipd/core.c", i32 529, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tps6598x_interrupt._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @tps6598x_interrupt._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/usb/typec/tipd/trace.h", i32 197, i32 1}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!41 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/typec/tipd/core.c", i32 420, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tps6598x_read_status._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @tps6598x_read_status._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/typec/tipd/core.c", i32 450, i32 3}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @tps6598x_read_power_status._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @tps6598x_read_power_status._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/usb/typec/tipd/trace.h", i32 260, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/typec/tipd/core.c", i32 435, i32 3}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @tps6598x_read_data_status._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @tps6598x_read_data_status._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../drivers/usb/typec/tipd/trace.h", i32 280, i32 1}
!65 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/typec/tipd/core.c", i32 465, i32 4}
!68 = !{ptr @tps6598x_handle_plug_event._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @tps6598x_handle_plug_event._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @tps6598x_regmap_config, !71, !"tps6598x_regmap_config", i1 false, i1 false}
!71 = !{!"../drivers/usb/typec/tipd/core.c", i32 590, i32 35}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/typec/tipd/core.c", i32 656, i32 31}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/typec/tipd/core.c", i32 482, i32 3}
!76 = !{ptr @cd321x_interrupt._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @cd321x_interrupt._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../drivers/usb/typec/tipd/trace.h", i32 217, i32 1}
!80 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/typec/tipd/core.c", i32 577, i32 3}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tps6598x_check_mode._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @tps6598x_check_mode._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/typec/tipd/core.c", i32 582, i32 3}
!89 = !{ptr @tps6598x_check_mode._entry.27, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tps6598x_check_mode._entry_ptr.29, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/typec/tipd/core.c", i32 72, i32 19}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/typec/tipd/core.c", i32 73, i32 20}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/typec/tipd/core.c", i32 74, i32 20}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/typec/tipd/core.c", i32 75, i32 20}
!99 = !{ptr @modes, !100, !"modes", i1 false, i1 false}
!100 = !{!"../drivers/usb/typec/tipd/core.c", i32 71, i32 26}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../drivers/usb/typec/tipd/trace.h", i32 233, i32 1}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = !{ptr @tps6598x_ops, !105, !"tps6598x_ops", i1 false, i1 false}
!105 = !{!"../drivers/usb/typec/tipd/core.c", i32 409, i32 38}
!106 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/typec/tipd/core.c", i32 351, i32 45}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/typec/tipd/core.c", i32 351, i32 54}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/typec/tipd/core.c", i32 381, i32 43}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/typec/tipd/core.c", i32 381, i32 52}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/typec/tipd/core.c", i32 679, i32 50}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/typec/tipd/core.c", i32 108, i32 47}
!118 = distinct !{null, !119, !"tps6598x_psy_name_prefix", i1 false, i1 false}
!119 = !{!"../drivers/usb/typec/tipd/core.c", i32 108, i32 20}
!120 = !{ptr @tps6598x_psy_usb_types, !121, !"tps6598x_psy_usb_types", i1 false, i1 false}
!121 = !{!"../drivers/usb/typec/tipd/core.c", i32 103, i32 35}
!122 = !{ptr @tps6598x_psy_props, !123, !"tps6598x_psy_props", i1 false, i1 false}
!123 = !{!"../drivers/usb/typec/tipd/core.c", i32 98, i32 35}
!124 = !{ptr @tps6598x_of_match, !125, !"tps6598x_of_match", i1 false, i1 false}
!125 = !{!"../drivers/usb/typec/tipd/core.c", i32 874, i32 34}
!126 = !{ptr @tps6598x_id, !127, !"tps6598x_id", i1 false, i1 false}
!127 = !{!"../drivers/usb/typec/tipd/core.c", i32 881, i32 35}
!128 = !{!"sp"}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
!139 = !{i64 2149006027, i64 2149006032, i64 2149006045, i64 2149006089, i64 2149006123, i64 2149006144}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i64 2155837121}
!142 = !{i64 2155837326}
!143 = !{i64 2150157531}
!144 = !{i64 2150158567}
!145 = !{i64 2155805874}
!146 = !{i64 2155806089}
!147 = !{i64 2155853387}
!148 = !{i64 2155853616}
!149 = !{i64 2155874037}
!150 = !{i64 2155874262}
!151 = !{i64 2155821501}
!152 = !{i64 2155821694}
