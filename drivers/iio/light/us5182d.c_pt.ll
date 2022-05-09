; ModuleID = '/llk/IR_all_yes/drivers/iio/light/us5182d.c_pt.bc'
source_filename = "../drivers/iio/light/us5182d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.us5182d_data = type { ptr, %struct.mutex, i32, i8, i8, ptr, i16, i16, i32, i32, i8, i8, i8, i8, i8 }

@__initcall__kmod_us5182d__289_981_us5182d_driver_init6 = internal global ptr @us5182d_driver_init, section ".initcall6.init", align 4
@us5182d_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @us5182d_probe, ptr @us5182d_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @us5182d_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @us5182d_pm_ops, ptr null, ptr null }, ptr @us5182d_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_us5182d_driver_exit = internal global ptr @us5182d_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [53 x i8] c"us5182d.author=Adriana Reus <adriana.reus@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [66 x i8] c"us5182d.description=Driver for us5182d Proximity and Light Sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [39 x i8] c"us5182d.file=drivers/iio/light/us5182d\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"us5182d.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"us5182d\00", [24 x i8] zeroinitializer }, align 32
@us5182d_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"upisemi,usd5182\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@us5182d_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @us5182d_suspend, ptr @us5182d_resume, ptr @us5182d_suspend, ptr @us5182d_resume, ptr @us5182d_suspend, ptr @us5182d_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @us5182d_suspend, ptr @us5182d_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@us5182d_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"usd5182\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@us5182d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@us5182d_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @us5182d_attr_group, ptr @us5182d_read_raw, ptr null, ptr null, ptr @us5182d_write_raw, ptr null, ptr null, ptr @us5182d_read_event_config, ptr @us5182d_write_event_config, ptr @us5182d_read_thresh, ptr @us5182d_write_thresh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@us5182d_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @us5182d_events, i32 2, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@us5182d_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 861, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to detect US5182 light chip\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"us5182d_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/us5182d.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@us5182d_probe._entry_ptr = internal global ptr @us5182d_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"us5182d-irq\00", [20 x i8] zeroinitializer }, align 32
@us5182d_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 873, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no valid irq found\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@us5182d_probe._entry_ptr.11 = internal global ptr @us5182d_probe._entry.8, section ".printk_index", align 4
@us5182d_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @us5182d_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@us5182d_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_illuminance_scale_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_in_illuminance_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.12, %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"0.0021 0.0039 0.0076 0.0196 0.0336 0.061 0.1078 0.1885\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"in_illuminance_scale_available\00", [33 x i8] zeroinitializer }, align 32
@us5182d_scales = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 188500, i32 107800, i32 61000, i32 33600, i32 19600, i32 7600, i32 3900, i32 2100], [32 x i8] zeroinitializer }, align 32
@us5182d_events = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@us5182d_irq_thread_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 818, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c transfer error in irq\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"us5182d_irq_thread_handler\00", [37 x i8] zeroinitializer }, align 32
@us5182d_irq_thread_handler._entry_ptr = internal global ptr @us5182d_irq_thread_handler._entry, section ".printk_index", align 4
@us5182d_irq_thread_handler._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 830, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@us5182d_irq_thread_handler._entry_ptr.17 = internal global ptr @us5182d_irq_thread_handler._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"upisemi,glass-coef\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"upisemi,dark-ths\00", [47 x i8] zeroinitializer }, align 32
@us5182d_dark_ths_vals = internal global { [8 x i16], [16 x i8] } { [8 x i16] [i16 170, i16 200, i16 512, i16 512, i16 800, i16 2000, i16 4000, i16 8000], [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"upisemi,upper-dark-gain\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"upisemi,lower-dark-gain\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"upisemi,continuous\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [10 x i64] [i64 8, i64 32, i64 2100, i64 3900, i64 7600, i64 19600, i64 33600, i64 61000, i64 107800, i64 188500]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"us5182d_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 969, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 971, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"us5182d_of_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 963, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"us5182d_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 944, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"us5182d_id\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 956, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 850, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"us5182d_info\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 706, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"us5182d_channels\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 184, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 860, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 869, i32 7 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 873, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"us5182d_attr_group\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 152, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"us5182d_attrs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 147, i32 26 }
@___asan_gen_.91 = private unnamed_addr constant [46 x i8] c"iio_const_attr_in_illuminance_scale_available\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 144, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"us5182d_scales\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 96, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"us5182d_events\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 169, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 818, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 830, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 763, i32 51 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 767, i32 9 }
@___asan_gen_.124 = private unnamed_addr constant [22 x i8] c"us5182d_dark_ths_vals\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 103, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 772, i32 9 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 776, i32 9 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [31 x i8] c"../drivers/iio/light/us5182d.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 780, i32 13 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_us5182d_driver_exit, ptr @__initcall__kmod_us5182d__289_981_us5182d_driver_init6, ptr @us5182d_driver_exit, ptr @us5182d_irq_thread_handler._entry, ptr @us5182d_irq_thread_handler._entry.16, ptr @us5182d_irq_thread_handler._entry_ptr, ptr @us5182d_irq_thread_handler._entry_ptr.17, ptr @us5182d_probe._entry, ptr @us5182d_probe._entry.8, ptr @us5182d_probe._entry_ptr, ptr @us5182d_probe._entry_ptr.11, ptr @us5182d_driver, ptr @.str, ptr @us5182d_of_match, ptr @us5182d_pm_ops, ptr @us5182d_id, ptr @us5182d_probe.__key, ptr @.str.1, ptr @us5182d_info, ptr @us5182d_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @us5182d_attr_group, ptr @us5182d_attrs, ptr @iio_const_attr_in_illuminance_scale_available, ptr @.str.12, ptr @.str.13, ptr @us5182d_scales, ptr @us5182d_events, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @us5182d_dark_ths_vals, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_illuminance_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_scales to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_events to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_irq_thread_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_irq_thread_handler._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us5182d_dark_ths_vals to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @us5182d_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @us5182d_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @us5182d_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 128) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %1, align 4
  %lock = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @us5182d_probe.__key) #6
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @us5182d_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @us5182d_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %num_channels, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext -78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 38
  br i1 %cmp.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp11 = icmp slt i32 %call4, 0
  %spec.select = select i1 %cmp11, i32 %call4, i32 -19
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13 = icmp sgt i32 %14, 0
  br i1 %cmp13, label %if.then14, label %do.end23

if.then14:                                        ; preds = %if.end12
  %call17 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %14, ptr noundef null, ptr noundef nonnull @us5182d_irq_thread_handler, i32 noundef 8200, ptr noundef nonnull @.str.7, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then14.cleanup_crit_edge, label %if.then14.if.end25_crit_edge

if.then14.if.end25_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.then14.if.end25_crit_edge
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %ga.i = getelementptr inbounds %struct.us5182d_data, ptr %16, i32 0, i32 2
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.18, ptr noundef %ga.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end25.if.end.i_crit_edge, label %if.then.i

if.end25.if.end.i_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %ga.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1000, ptr %ga.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end25.if.end.i_crit_edge
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 4
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %us5182d_dark_ths.i = getelementptr inbounds %struct.us5182d_data, ptr %16, i32 0, i32 5
  %22 = ptrtoint ptr %us5182d_dark_ths.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %us5182d_dark_ths.i, align 4
  %call5.i = tail call i32 @device_property_read_u16_array(ptr noundef %dev4.i, ptr noundef nonnull @.str.19, ptr noundef %23, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.then7.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %us5182d_dark_ths.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @us5182d_dark_ths_vals, ptr %us5182d_dark_ths.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %16, align 4
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %upper_dark_gain.i = getelementptr inbounds %struct.us5182d_data, ptr %16, i32 0, i32 4
  %call.i40.i = tail call i32 @device_property_read_u8_array(ptr noundef %dev11.i, ptr noundef nonnull @.str.20, ptr noundef %upper_dark_gain.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool13.not.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool13.not.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then14.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %upper_dark_gain.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %upper_dark_gain.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end9.i.if.end16.i_crit_edge
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %16, align 4
  %dev18.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  %lower_dark_gain.i = getelementptr inbounds %struct.us5182d_data, ptr %16, i32 0, i32 3
  %call.i41.i = tail call i32 @device_property_read_u8_array(ptr noundef %dev18.i, ptr noundef nonnull @.str.21, ptr noundef %lower_dark_gain.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool20.not.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool20.not.i, label %if.end16.i.us5182d_get_platform_data.exit_crit_edge, label %if.then21.i

if.end16.i.us5182d_get_platform_data.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_get_platform_data.exit

if.then21.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %lower_dark_gain.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 22, ptr %lower_dark_gain.i, align 4
  br label %us5182d_get_platform_data.exit

us5182d_get_platform_data.exit:                   ; preds = %if.then21.i, %if.end16.i.us5182d_get_platform_data.exit_crit_edge
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %16, align 4
  %dev25.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  %call.i42.i = tail call zeroext i1 @device_property_present(ptr noundef %dev25.i, ptr noundef nonnull @.str.22) #6
  %default_continuous.i = getelementptr inbounds %struct.us5182d_data, ptr %16, i32 0, i32 14
  %frombool.i = zext i1 %call.i42.i to i8
  %33 = ptrtoint ptr %default_continuous.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool.i, ptr %default_continuous.i, align 4
  %34 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 3, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %us5182d_get_platform_data.exit.cleanup_crit_edge, label %if.end.i90

us5182d_get_platform_data.exit.cleanup_crit_edge: ; preds = %us5182d_get_platform_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i90:                                       ; preds = %us5182d_get_platform_data.exit
  %opmode.i = getelementptr inbounds %struct.us5182d_data, ptr %35, i32 0, i32 10
  %38 = ptrtoint ptr %opmode.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %opmode.i, align 4
  %power_mode.i = getelementptr inbounds %struct.us5182d_data, ptr %35, i32 0, i32 11
  %39 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %power_mode.i, align 1
  %px_low_th.i = getelementptr inbounds %struct.us5182d_data, ptr %35, i32 0, i32 6
  %40 = ptrtoint ptr %px_low_th.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1000, ptr %px_low_th.i, align 4
  %px_high_th.i = getelementptr inbounds %struct.us5182d_data, ptr %35, i32 0, i32 7
  %41 = ptrtoint ptr %px_high_th.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 30000, ptr %px_high_th.i, align 2
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %35, align 4
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i90.cleanup_crit_edge, label %for.cond.i

if.end.i90.cleanup_crit_edge:                     ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i:                                       ; preds = %if.end.i90
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %35, align 4
  %call4.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 1, i8 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1.i)
  %cmp5.1.i = icmp slt i32 %call4.1.i, 0
  br i1 %cmp5.1.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.1.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %35, align 4
  %call4.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext 2, i8 noundef zeroext 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2.i)
  %cmp5.2.i = icmp slt i32 %call4.2.i, 0
  br i1 %cmp5.2.i, label %for.cond.1.i.cleanup_crit_edge, label %for.cond.2.i

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %48 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %35, align 4
  %call4.3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext 3, i8 noundef zeroext 56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3.i)
  %cmp5.3.i = icmp slt i32 %call4.3.i, 0
  br i1 %cmp5.3.i, label %for.cond.2.i.cleanup_crit_edge, label %for.cond.3.i

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %35, align 4
  %call4.4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 16, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4.i)
  %cmp5.4.i = icmp slt i32 %call4.4.i, 0
  br i1 %cmp5.4.i, label %for.cond.3.i.cleanup_crit_edge, label %for.cond.4.i

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %als_enabled.i = getelementptr inbounds %struct.us5182d_data, ptr %35, i32 0, i32 12
  %52 = ptrtoint ptr %als_enabled.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %als_enabled.i, align 2
  %px_enabled.i = getelementptr inbounds %struct.us5182d_data, ptr %35, i32 0, i32 13
  %53 = ptrtoint ptr %px_enabled.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %px_enabled.i, align 1
  %default_continuous.i91 = getelementptr inbounds %struct.us5182d_data, ptr %35, i32 0, i32 14
  %54 = ptrtoint ptr %default_continuous.i91 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %default_continuous.i91, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i92 = icmp eq i8 %55, 0
  br i1 %tobool.not.i92, label %if.then8.i, label %for.cond.4.i.if.end29_crit_edge

for.cond.4.i.if.end29_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then8.i:                                       ; preds = %for.cond.4.i
  %56 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %power_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp.i.i = icmp eq i8 %57, 1
  br i1 %cmp.i.i, label %if.then8.i.if.end12.i_crit_edge, label %if.end.i.i

if.then8.i.if.end12.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.end.i.i:                                       ; preds = %if.then8.i
  %58 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %35, align 4
  %call.i.i93 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %cmp2.i.i = icmp slt i32 %call.i.i93, 0
  br i1 %cmp2.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end5.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i.i:                                      ; preds = %if.end.i.i
  %60 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %35, align 4
  %62 = trunc i32 %call.i.i93 to i8
  %conv8.i.i = or i8 %62, -128
  %call9.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %61, i8 noundef zeroext 0, i8 noundef zeroext %conv8.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %if.end5.i.i.cleanup_crit_edge, label %if.then16.i.i

if.end5.i.i.cleanup_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %als_enabled.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %als_enabled.i, align 2
  %64 = ptrtoint ptr %px_enabled.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %px_enabled.i, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then16.i.i, %if.then8.i.if.end12.i_crit_edge
  %65 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %power_mode.i, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.end12.i, %for.cond.4.i.if.end29_crit_edge
  %66 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv.i, align 8
  %us5182d_dark_ths.i.i = getelementptr inbounds %struct.us5182d_data, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %us5182d_dark_ths.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %us5182d_dark_ths.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %69, align 2
  %dark_th.sroa.0.0.extract.shift.i.i = lshr i16 %71, 8
  %dark_th.sroa.0.0.extract.trunc.i.i = trunc i16 %dark_th.sroa.0.0.extract.shift.i.i to i8
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %67, align 4
  %call.i.i95 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %73, i8 noundef zeroext 39, i8 noundef zeroext %dark_th.sroa.0.0.extract.trunc.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %cmp.i.i96 = icmp slt i32 %call.i.i95, 0
  br i1 %cmp.i.i96, label %if.end29.out_err_crit_edge, label %us5182d_update_dark_th.exit.i

if.end29.out_err_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

us5182d_update_dark_th.exit.i:                    ; preds = %if.end29
  %dark_th.sroa.5.0.extract.trunc.i.i = trunc i16 %71 to i8
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %67, align 4
  %call4.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext 40, i8 noundef zeroext %dark_th.sroa.5.0.extract.trunc.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i97 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i97, label %us5182d_update_dark_th.exit.i.out_err_crit_edge, label %if.end.i99

us5182d_update_dark_th.exit.i.out_err_crit_edge:  ; preds = %us5182d_update_dark_th.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end.i99:                                       ; preds = %us5182d_update_dark_th.exit.i
  %76 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %67, align 4
  %lower_dark_gain.i98 = getelementptr inbounds %struct.us5182d_data, ptr %67, i32 0, i32 3
  %78 = ptrtoint ptr %lower_dark_gain.i98 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %lower_dark_gain.i98, align 4
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 41, i8 noundef zeroext %79) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i99.out_err_crit_edge, label %if.end5.i

if.end.i99.out_err_crit_edge:                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end5.i:                                        ; preds = %if.end.i99
  %80 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %67, align 4
  %upper_dark_gain.i100 = getelementptr inbounds %struct.us5182d_data, ptr %67, i32 0, i32 4
  %82 = ptrtoint ptr %upper_dark_gain.i100 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %upper_dark_gain.i100, align 1
  %call7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext 42, i8 noundef zeroext %83) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end5.i.out_err_crit_edge, label %us5182d_dark_gain_config.exit

if.end5.i.out_err_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

us5182d_dark_gain_config.exit:                    ; preds = %if.end5.i
  %84 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %67, align 4
  %call12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %85, i8 noundef zeroext 43, i8 noundef zeroext -128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp31 = icmp slt i32 %call12.i, 0
  br i1 %cmp31, label %us5182d_dark_gain_config.exit.out_err_crit_edge, label %if.end33

us5182d_dark_gain_config.exit.out_err_crit_edge:  ; preds = %us5182d_dark_gain_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end33:                                         ; preds = %us5182d_dark_gain_config.exit
  %default_continuous = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 14
  %86 = ptrtoint ptr %default_continuous to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %default_continuous, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool34.not = icmp eq i8 %87, 0
  br i1 %tobool34.not, label %if.end33.if.end41_crit_edge, label %if.then35

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then35:                                        ; preds = %if.end33
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp38 = icmp slt i32 %call.i, 0
  br i1 %cmp38, label %if.then35.out_err_crit_edge, label %if.then35.if.end41_crit_edge

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then35.out_err_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end41:                                         ; preds = %if.then35.if.end41_crit_edge, %if.end33.if.end41_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 3000) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  %call45 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end41.out_err_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41.out_err_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

out_err:                                          ; preds = %if.end41.out_err_crit_edge, %if.then35.out_err_crit_edge, %us5182d_dark_gain_config.exit.out_err_crit_edge, %if.end5.i.out_err_crit_edge, %if.end.i99.out_err_crit_edge, %us5182d_update_dark_th.exit.i.out_err_crit_edge, %if.end29.out_err_crit_edge
  %ret.0 = phi i32 [ %call12.i, %us5182d_dark_gain_config.exit.out_err_crit_edge ], [ %call.i, %if.then35.out_err_crit_edge ], [ %call45, %if.end41.out_err_crit_edge ], [ %call.i.i95, %if.end29.out_err_crit_edge ], [ %call7.i, %if.end5.i.out_err_crit_edge ], [ %call2.i, %if.end.i99.out_err_crit_edge ], [ %call4.i.i, %us5182d_update_dark_th.exit.i.out_err_crit_edge ]
  %power_mode.i102 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 11
  %88 = ptrtoint ptr %power_mode.i102 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %power_mode.i102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %89)
  %cmp.i103 = icmp eq i8 %89, 1
  br i1 %cmp.i103, label %out_err.cleanup_crit_edge, label %if.end.i105

out_err.cleanup_crit_edge:                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i105:                                      ; preds = %out_err
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %call.i104 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %91, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp2.i = icmp slt i32 %call.i104, 0
  br i1 %cmp2.i, label %if.end.i105.cleanup_crit_edge, label %if.end5.i106

if.end.i105.cleanup_crit_edge:                    ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i106:                                     ; preds = %if.end.i105
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %94 = trunc i32 %call.i104 to i8
  %conv8.i = or i8 %94, -128
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %93, i8 noundef zeroext 0, i8 noundef zeroext %conv8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end5.i106.cleanup_crit_edge, label %if.then16.i

if.end5.i106.cleanup_crit_edge:                   ; preds = %if.end5.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16.i:                                      ; preds = %if.end5.i106
  call void @__sanitizer_cov_trace_pc() #8
  %als_enabled.i107 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 12
  %95 = ptrtoint ptr %als_enabled.i107 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %als_enabled.i107, align 2
  %px_enabled.i108 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 13
  %96 = ptrtoint ptr %px_enabled.i108 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %px_enabled.i108, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then16.i, %if.end5.i106.cleanup_crit_edge, %if.end.i105.cleanup_crit_edge, %out_err.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end5.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.i90.cleanup_crit_edge, %us5182d_get_platform_data.exit.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end8 ], [ -12, %entry.cleanup_crit_edge ], [ %call17, %if.then14.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ %ret.0, %out_err.cleanup_crit_edge ], [ %ret.0, %if.end.i105.cleanup_crit_edge ], [ %ret.0, %if.end5.i106.cleanup_crit_edge ], [ %ret.0, %if.then16.i ], [ %call4.4.i, %for.cond.3.i.cleanup_crit_edge ], [ %call4.3.i, %for.cond.2.i.cleanup_crit_edge ], [ %call4.2.i, %for.cond.1.i.cleanup_crit_edge ], [ %call4.1.i, %for.cond.i.cleanup_crit_edge ], [ %call4.i, %if.end.i90.cleanup_crit_edge ], [ %call.i.i93, %if.end.i.i.cleanup_crit_edge ], [ %call9.i.i, %if.end5.i.i.cleanup_crit_edge ], [ %call1.i.i, %us5182d_get_platform_data.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  %power_mode.i = getelementptr inbounds %struct.us5182d_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %entry.us5182d_shutdown_en.exit_crit_edge, label %if.end.i

entry.us5182d_shutdown_en.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_shutdown_en.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp2.i = icmp slt i32 %call.i10, 0
  br i1 %cmp2.i, label %if.end.i.us5182d_shutdown_en.exit_crit_edge, label %if.end5.i

if.end.i.us5182d_shutdown_en.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_shutdown_en.exit

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %10 = trunc i32 %call.i10 to i8
  %conv8.i = or i8 %10, -128
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext %conv8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end5.i.us5182d_shutdown_en.exit_crit_edge, label %if.then16.i

if.end5.i.us5182d_shutdown_en.exit_crit_edge:     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_shutdown_en.exit

if.then16.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %als_enabled.i = getelementptr inbounds %struct.us5182d_data, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %als_enabled.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %als_enabled.i, align 2
  %px_enabled.i = getelementptr inbounds %struct.us5182d_data, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %px_enabled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %px_enabled.i, align 1
  br label %us5182d_shutdown_en.exit

us5182d_shutdown_en.exit:                         ; preds = %if.then16.i, %if.end5.i.us5182d_shutdown_en.exit_crit_edge, %if.end.i.us5182d_shutdown_en.exit_crit_edge, %entry.us5182d_shutdown_en.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.us5182d_shutdown_en.exit_crit_edge ], [ %call.i10, %if.end.i.us5182d_shutdown_en.exit_crit_edge ], [ %call9.i, %if.end5.i.us5182d_shutdown_en.exit_crit_edge ], [ %call9.i, %if.then16.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_irq_thread_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and = and i32 %call1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  %conv = zext i32 %cond to i64
  %shl = shl nuw nsw i64 %conv, 48
  %or7 = or i64 %shl, 34359738369
  %call8 = tail call i64 @iio_get_time_ns(ptr noundef %private) #6
  %call9 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef %or7, i64 noundef %call8) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = trunc i32 %call1 to i8
  %conv12 = and i8 %6, -5
  %call13 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext %conv12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.14) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock.i = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %power_mode.i = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %power_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.i = icmp eq i8 %4, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb.if.end.i45.i_crit_edge

sw.bb.if.end.i45.i_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i45.i

if.then.i:                                        ; preds = %sw.bb
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.us5182d_read_value.exit_crit_edge, label %us5182d_oneshot_en.exit.i

if.then.i.us5182d_read_value.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_read_value.exit

us5182d_oneshot_en.exit.i:                        ; preds = %if.then.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = trunc i32 %call.i.i to i8
  %conv.i.i = or i8 %9, 64
  %call2.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext %conv.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp2.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp2.i, label %us5182d_oneshot_en.exit.i.us5182d_read_value.exit_crit_edge, label %if.end5.i

us5182d_oneshot_en.exit.i.us5182d_read_value.exit_crit_edge: ; preds = %us5182d_oneshot_en.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_read_value.exit

if.end5.i:                                        ; preds = %us5182d_oneshot_en.exit.i
  %10 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr.i = load i8, ptr %power_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr.i)
  %cmp.i44.i = icmp eq i8 %.pr.i, 1
  br i1 %cmp.i44.i, label %if.end5.i.if.end10.i_crit_edge, label %if.end5.i.if.end.i45.i_crit_edge

if.end5.i.if.end.i45.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i45.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end.i45.i:                                     ; preds = %if.end5.i.if.end.i45.i_crit_edge, %sw.bb.if.end.i45.i_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i45.i.if.end10.i_crit_edge

if.end.i45.i.if.end10.i_crit_edge:                ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i.i.i:                                    ; preds = %if.end.i45.i
  %usage_count.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #6, !srcloc !87
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.us5182d_read_value.exit_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.us5182d_read_value.exit_crit_edge:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_read_value.exit

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !88
  br label %us5182d_read_value.exit

if.end10.i:                                       ; preds = %if.end.i45.i.if.end10.i_crit_edge, %if.end5.i.if.end10.i_crit_edge
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp11.i = icmp eq i32 %15, 6
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end10.i
  %16 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %power_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp.i.i47.i = icmp eq i8 %17, 1
  br i1 %cmp.i.i47.i, label %if.then.i.i48.i, label %if.then13.i.if.end5.i.i.i_crit_edge

if.then13.i.if.end5.i.i.i_crit_edge:              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i.i.i

if.then.i.i48.i:                                  ; preds = %if.then13.i
  %opmode.i.i.i.i = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %opmode.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %opmode.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.i.i.i.i = icmp eq i8 %19, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i48.i.if.end.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i48.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i48.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %if.end.i.i.i.i.out_poweroff.i_crit_edge, label %if.end6.i.i.i.i

if.end.i.i.i.i.out_poweroff.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_poweroff.i

if.end6.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = trunc i32 %call.i.i.i.i to i8
  %25 = and i8 %24, -49
  %conv9.i.i.i.i = or i8 %25, 16
  %call10.i.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 0, i8 noundef zeroext %conv9.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i.i)
  %cmp11.i.i.i.i = icmp slt i32 %call10.i.i.i.i, 0
  br i1 %cmp11.i.i.i.i, label %if.end6.i.i.i.i.out_poweroff.i_crit_edge, label %if.end14.i.i.i.i

if.end6.i.i.i.i.out_poweroff.i_crit_edge:         ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_poweroff.i

if.end14.i.i.i.i:                                 ; preds = %if.end6.i.i.i.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call16.i.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 33, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i.i.i)
  %cmp17.i.i.i.i = icmp slt i32 %call16.i.i.i.i, 0
  br i1 %cmp17.i.i.i.i, label %if.end14.i.i.i.i.out_poweroff.i_crit_edge, label %if.end20.i.i.i.i

if.end14.i.i.i.i.out_poweroff.i_crit_edge:        ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_poweroff.i

if.end20.i.i.i.i:                                 ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %opmode.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %opmode.i.i.i.i, align 4
  tail call void @msleep(i32 noundef 20) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end20.i.i.i.i, %if.then.i.i48.i.if.end.i.i.i_crit_edge
  %px_enabled.i.i.i = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %px_enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %px_enabled.i.i.i, align 1
  br label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i, %if.then13.i.if.end5.i.i.i_crit_edge
  %als_enabled.i.i.i = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %als_enabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %als_enabled.i.i.i, align 2, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i.i, label %if.end7.i.i.i, label %if.end5.i.i.i.if.end.i49.i_crit_edge

if.end5.i.i.i.if.end.i49.i_crit_edge:             ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i49.i

if.end7.i.i.i:                                    ; preds = %if.end5.i.i.i
  %px_enabled8.i.i.i = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 13
  %32 = ptrtoint ptr %px_enabled8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %px_enabled8.i.i.i, align 1, !range !85
  %34 = xor i8 %33, 1
  %opmode.i28.i.i.i = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %opmode.i28.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %opmode.i28.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %34)
  %cmp.i29.i.i.i = icmp eq i8 %36, %34
  br i1 %cmp.i29.i.i.i, label %if.end7.i.i.i.if.end16.i.i.i_crit_edge, label %if.end.i32.i.i.i

if.end7.i.i.i.if.end16.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.i.i

if.end.i32.i.i.i:                                 ; preds = %if.end7.i.i.i
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i30.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %38, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i.i)
  %cmp3.i31.i.i.i = icmp slt i32 %call.i30.i.i.i, 0
  br i1 %cmp3.i31.i.i.i, label %if.end.i32.i.i.i.out_poweroff.i_crit_edge, label %if.end6.i38.i.i.i

if.end.i32.i.i.i.out_poweroff.i_crit_edge:        ; preds = %if.end.i32.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_poweroff.i

if.end6.i38.i.i.i:                                ; preds = %if.end.i32.i.i.i
  %39 = shl nuw nsw i8 %34, 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %42 = trunc i32 %call.i30.i.i.i to i8
  %43 = and i8 %42, -49
  %conv9.i35.i.i.i = or i8 %43, %39
  %call10.i36.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 0, i8 noundef zeroext %conv9.i35.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i36.i.i.i)
  %cmp11.i37.i.i.i = icmp slt i32 %call10.i36.i.i.i, 0
  br i1 %cmp11.i37.i.i.i, label %if.end6.i38.i.i.i.out_poweroff.i_crit_edge, label %if.end14.i41.i.i.i

if.end6.i38.i.i.i.out_poweroff.i_crit_edge:       ; preds = %if.end6.i38.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_poweroff.i

if.end14.i41.i.i.i:                               ; preds = %if.end6.i38.i.i.i
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call16.i39.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 33, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i39.i.i.i)
  %cmp17.i40.i.i.i = icmp slt i32 %call16.i39.i.i.i, 0
  br i1 %cmp17.i40.i.i.i, label %if.end14.i41.i.i.i.out_poweroff.i_crit_edge, label %if.end20.i42.i.i.i

if.end14.i41.i.i.i.out_poweroff.i_crit_edge:      ; preds = %if.end14.i41.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_poweroff.i

if.end20.i42.i.i.i:                               ; preds = %if.end14.i41.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %opmode.i28.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %34, ptr %opmode.i28.i.i.i, align 4
  tail call void @msleep(i32 noundef 20) #6
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.end20.i42.i.i.i, %if.end7.i.i.i.if.end16.i.i.i_crit_edge
  %47 = ptrtoint ptr %als_enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %als_enabled.i.i.i, align 2
  br label %if.end.i49.i

if.end.i49.i:                                     ; preds = %if.end16.i.i.i, %if.end5.i.i.i.if.end.i49.i_crit_edge
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %49, i8 noundef zeroext 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i49.i.out_poweroff.i_crit_edge, label %if.end16.thread78.i

if.end.i49.i.out_poweroff.i_crit_edge:            ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_poweroff.i

if.end16.thread78.i:                              ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  %ga.i.i = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %ga.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ga.i.i, align 4
  %mul.i.i = mul i32 %51, %call1.i.i
  %div.i.i = udiv i32 %mul.i.i, 1000
  %52 = tail call i32 @llvm.umin.i32(i32 %div.i.i, i32 65535) #6
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end10.i
  %call.i51.i = tail call fastcc i32 @us5182d_px_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %cmp.i52.i = icmp slt i32 %call.i51.i, 0
  br i1 %cmp.i52.i, label %if.else.i.out_poweroff.i_crit_edge, label %if.end16.i

if.else.i.out_poweroff.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_poweroff.i

if.end16.i:                                       ; preds = %if.else.i
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call1.i53.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %54, i8 noundef zeroext 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %cmp17.i = icmp slt i32 %call1.i53.i, 0
  br i1 %cmp17.i, label %if.end16.i.out_poweroff.i_crit_edge, label %if.end16.i.if.end20.i_crit_edge

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.end16.i.out_poweroff.i_crit_edge:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_poweroff.i

if.end20.i:                                       ; preds = %if.end16.i.if.end20.i_crit_edge, %if.end16.thread78.i
  %ret.081.i = phi i32 [ %52, %if.end16.thread78.i ], [ %call1.i53.i, %if.end16.i.if.end20.i_crit_edge ]
  %55 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %power_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp.i57.i = icmp eq i8 %56, 1
  br i1 %cmp.i57.i, label %if.end20.i.if.end_crit_edge, label %us5182d_set_power_state.exit60.i

if.end20.i.if.end_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

us5182d_set_power_state.exit60.i:                 ; preds = %if.end20.i
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call.i12.i.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4, i32 12, i32 22
  %59 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store volatile i64 %call.i12.i.i, ptr %last_busy.i.i.i, align 8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %dev6.i.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  %call.i13.i.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev6.i.i, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i.i)
  %cmp22.i = icmp slt i32 %call.i13.i.i, 0
  br i1 %cmp22.i, label %us5182d_set_power_state.exit60.i.us5182d_read_value.exit_crit_edge, label %us5182d_set_power_state.exit60.i.if.end_crit_edge

us5182d_set_power_state.exit60.i.if.end_crit_edge: ; preds = %us5182d_set_power_state.exit60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

us5182d_set_power_state.exit60.i.us5182d_read_value.exit_crit_edge: ; preds = %us5182d_set_power_state.exit60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_read_value.exit

out_poweroff.i:                                   ; preds = %if.end16.i.out_poweroff.i_crit_edge, %if.else.i.out_poweroff.i_crit_edge, %if.end.i49.i.out_poweroff.i_crit_edge, %if.end14.i41.i.i.i.out_poweroff.i_crit_edge, %if.end6.i38.i.i.i.out_poweroff.i_crit_edge, %if.end.i32.i.i.i.out_poweroff.i_crit_edge, %if.end14.i.i.i.i.out_poweroff.i_crit_edge, %if.end6.i.i.i.i.out_poweroff.i_crit_edge, %if.end.i.i.i.i.out_poweroff.i_crit_edge
  %ret.077.i = phi i32 [ %call1.i53.i, %if.end16.i.out_poweroff.i_crit_edge ], [ %call.i51.i, %if.else.i.out_poweroff.i_crit_edge ], [ %call16.i.i.i.i, %if.end14.i.i.i.i.out_poweroff.i_crit_edge ], [ %call10.i.i.i.i, %if.end6.i.i.i.i.out_poweroff.i_crit_edge ], [ %call.i.i.i.i, %if.end.i.i.i.i.out_poweroff.i_crit_edge ], [ %call16.i39.i.i.i, %if.end14.i41.i.i.i.out_poweroff.i_crit_edge ], [ %call10.i36.i.i.i, %if.end6.i38.i.i.i.out_poweroff.i_crit_edge ], [ %call.i30.i.i.i, %if.end.i32.i.i.i.out_poweroff.i_crit_edge ], [ %call1.i.i, %if.end.i49.i.out_poweroff.i_crit_edge ]
  %62 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %power_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp.i62.i = icmp eq i8 %63, 1
  br i1 %cmp.i62.i, label %out_poweroff.i.us5182d_read_value.exit_crit_edge, label %if.end.i63.i

out_poweroff.i.us5182d_read_value.exit_crit_edge: ; preds = %out_poweroff.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_read_value.exit

if.end.i63.i:                                     ; preds = %out_poweroff.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call.i12.i64.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i65.i = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4, i32 12, i32 22
  %66 = ptrtoint ptr %last_busy.i.i65.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store volatile i64 %call.i12.i64.i, ptr %last_busy.i.i65.i, align 8
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %dev6.i66.i = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 4
  %call.i13.i67.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev6.i66.i, i32 noundef 13) #6
  br label %us5182d_read_value.exit

us5182d_read_value.exit:                          ; preds = %if.end.i63.i, %out_poweroff.i.us5182d_read_value.exit_crit_edge, %us5182d_set_power_state.exit60.i.us5182d_read_value.exit_crit_edge, %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.us5182d_read_value.exit_crit_edge, %us5182d_oneshot_en.exit.i.us5182d_read_value.exit_crit_edge, %if.then.i.us5182d_read_value.exit_crit_edge
  %ret.1.i = phi i32 [ %call2.i.i, %us5182d_oneshot_en.exit.i.us5182d_read_value.exit_crit_edge ], [ %call.i13.i.i, %us5182d_set_power_state.exit60.i.us5182d_read_value.exit_crit_edge ], [ %ret.077.i, %out_poweroff.i.us5182d_read_value.exit_crit_edge ], [ %ret.077.i, %if.end.i63.i ], [ %call.i.i, %if.then.i.us5182d_read_value.exit_crit_edge ], [ %call.i.i.i, %if.then.i.i.i.us5182d_read_value.exit_crit_edge ], [ %call.i.i.i, %do.end11.i.i.i.i.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

if.end:                                           ; preds = %us5182d_set_power_state.exit60.i.if.end_crit_edge, %if.end20.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %69 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %ret.081.i, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %sw.bb2.cleanup_crit_edge, label %if.end6

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %val, align 4
  %and = and i32 %call3, 7
  %arrayidx = getelementptr [8 x i32], ptr @us5182d_scales, i32 0, i32 %and
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %75 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %sw.bb2.cleanup_crit_edge, %if.end, %us5182d_read_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end6 ], [ 1, %if.end ], [ %ret.1.i, %us5182d_read_value.exit ], [ %call3, %sw.bb2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  %or.cond = and i1 %cmp.not, %cond
  br i1 %or.cond, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %val2, label %for.body.preheader.cleanup_crit_edge [
    i32 188500, label %for.body.preheader.if.then3_crit_edge
    i32 107800, label %if.then3.fold.split
    i32 61000, label %if.then3.fold.split17
    i32 33600, label %if.then3.fold.split18
    i32 19600, label %if.then3.fold.split19
    i32 7600, label %if.then3.fold.split20
    i32 3900, label %if.then3.fold.split21
    i32 2100, label %if.then3.fold.split22
  ]

for.body.preheader.if.then3_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.fold.split:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3.fold.split17:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3.fold.split18:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3.fold.split19:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3.fold.split20:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3.fold.split21:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3.fold.split22:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %if.then3.fold.split22, %if.then3.fold.split21, %if.then3.fold.split20, %if.then3.fold.split19, %if.then3.fold.split18, %if.then3.fold.split17, %if.then3.fold.split, %for.body.preheader.if.then3_crit_edge
  %i.015.lcssa = phi i32 [ 0, %for.body.preheader.if.then3_crit_edge ], [ 1, %if.then3.fold.split ], [ 2, %if.then3.fold.split17 ], [ 3, %if.then3.fold.split18 ], [ 4, %if.then3.fold.split19 ], [ 5, %if.then3.fold.split20 ], [ 6, %if.then3.fold.split21 ], [ 7, %if.then3.fold.split22 ]
  %lock = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then3.us5182d_apply_scale.exit_crit_edge, label %if.end.i

if.then3.us5182d_apply_scale.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_apply_scale.exit

if.end.i:                                         ; preds = %if.then3
  %and.i = and i32 %call.i, 248
  %or.i = or i32 %and.i, %i.015.lcssa
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %conv.i = trunc i32 %or.i to i8
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.us5182d_apply_scale.exit_crit_edge, label %if.end6.i

if.end.i.us5182d_apply_scale.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_apply_scale.exit

if.end6.i:                                        ; preds = %if.end.i
  %us5182d_dark_ths.i.i = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %us5182d_dark_ths.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %us5182d_dark_ths.i.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %8, i32 %i.015.lcssa
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i.i, align 2
  %dark_th.sroa.0.0.extract.shift.i.i = lshr i16 %10, 8
  %dark_th.sroa.0.0.extract.trunc.i.i = trunc i16 %dark_th.sroa.0.0.extract.shift.i.i to i8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 39, i8 noundef zeroext %dark_th.sroa.0.0.extract.trunc.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end6.i.us5182d_apply_scale.exit_crit_edge, label %if.end.i.i

if.end6.i.us5182d_apply_scale.exit_crit_edge:     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %us5182d_apply_scale.exit

if.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %dark_th.sroa.5.0.extract.trunc.i.i = trunc i16 %10 to i8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call4.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 40, i8 noundef zeroext %dark_th.sroa.5.0.extract.trunc.i.i) #6
  br label %us5182d_apply_scale.exit

us5182d_apply_scale.exit:                         ; preds = %if.end.i.i, %if.end6.i.us5182d_apply_scale.exit_crit_edge, %if.end.i.us5182d_apply_scale.exit_crit_edge, %if.then3.us5182d_apply_scale.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then3.us5182d_apply_scale.exit_crit_edge ], [ %call2.i, %if.end.i.us5182d_apply_scale.exit_crit_edge ], [ %call4.i.i, %if.end.i.i ], [ %call.i.i, %if.end6.i.us5182d_apply_scale.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %us5182d_apply_scale.exit, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %us5182d_apply_scale.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %dir, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %rising_en = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 8
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock3 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock3, i32 noundef 0) #6
  %falling_en = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %sw.bb
  %falling_en.sink = phi ptr [ %falling_en, %sw.bb2 ], [ %rising_en, %sw.bb ]
  %lock3.sink = phi ptr [ %lock3, %sw.bb2 ], [ %lock, %sw.bb ]
  %3 = ptrtoint ptr %falling_en.sink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %falling_en.sink, align 4
  tail call void @mutex_unlock(ptr noundef %lock3.sink) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %4, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %dir, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %rising_en = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %rising_en to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rising_en, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %state)
  %cmp = icmp eq i32 %4, %state
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.end.i

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.i:                                         ; preds = %if.end
  %power_mode = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %power_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %power_mode, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end6

if.then.i.i:                                      ; preds = %if.end.i
  %usage_count.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #6, !srcloc !87
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !88
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %call7 = tail call fastcc i32 @us5182d_px_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.if.then57_crit_edge, label %if.end10

if.end6.if.then57_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %px_high_th = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %px_high_th to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %px_high_th, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end.if.end11_crit_edge
  %new_th.0 = phi i16 [ %10, %if.end10 ], [ -1, %if.end.if.end11_crit_edge ]
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call5.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %14, i8 noundef zeroext 10, i16 noundef zeroext %new_th.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp13 = icmp slt i32 %call5.i, 0
  br i1 %cmp13, label %if.end11.err_poweroff_crit_edge, label %if.end11.sw.epilog_crit_edge

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end11.err_poweroff_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_poweroff

sw.bb17:                                          ; preds = %entry
  %falling_en = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %falling_en to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %falling_en, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %state)
  %cmp18 = icmp eq i32 %16, %state
  br i1 %cmp18, label %sw.bb17.cleanup_crit_edge, label %if.end21

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool22.not = icmp eq i32 %state, 0
  br i1 %tobool22.not, label %if.end21.if.end33_crit_edge, label %if.end.i106

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end.i106:                                      ; preds = %if.end21
  %power_mode24 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %power_mode24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %power_mode24, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev.i107 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %call.i.i108 = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i107, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i108)
  %cmp.i.i109 = icmp slt i32 %call.i.i108, 0
  br i1 %cmp.i.i109, label %if.then.i.i114, label %if.end28

if.then.i.i114:                                   ; preds = %if.end.i106
  %usage_count.i.i.i110 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i110, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i110, i32 1, i32 3, i32 1) #6
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i110, ptr %usage_count.i.i.i110, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i110) #6, !srcloc !87
  %asmresult.i.i.i.i.i.i112 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i112)
  %cmp.not.i.i.i.i.i.i113 = icmp eq i32 %asmresult.i.i.i.i.i.i112, 0
  br i1 %cmp.not.i.i.i.i.i.i113, label %if.then.i.i114.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i115

if.then.i.i114.cleanup_crit_edge:                 ; preds = %if.then.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i.i.i115:                          ; preds = %if.then.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !88
  br label %cleanup

if.end28:                                         ; preds = %if.end.i106
  %call29 = tail call fastcc i32 @us5182d_px_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.if.then57_crit_edge, label %if.end32

if.end28.if.then57_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %px_low_th = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %px_low_th to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %px_low_th, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end21.if.end33_crit_edge
  %new_th.1 = phi i16 [ %22, %if.end32 ], [ 0, %if.end21.if.end33_crit_edge ]
  %23 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call5.i119 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %26, i8 noundef zeroext 8, i16 noundef zeroext %new_th.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i119)
  %cmp35 = icmp slt i32 %call5.i119, 0
  br i1 %cmp35, label %if.end33.err_poweroff_crit_edge, label %if.end33.sw.epilog_crit_edge

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end33.err_poweroff_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_poweroff

sw.epilog:                                        ; preds = %if.end33.sw.epilog_crit_edge, %if.end11.sw.epilog_crit_edge
  %falling_en.sink = phi ptr [ %rising_en, %if.end11.sw.epilog_crit_edge ], [ %falling_en, %if.end33.sw.epilog_crit_edge ]
  %27 = ptrtoint ptr %falling_en.sink to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %state, ptr %falling_en.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool39.not = icmp eq i32 %state, 0
  br i1 %tobool39.not, label %if.then40, label %sw.epilog.if.end45_crit_edge

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then40:                                        ; preds = %sw.epilog
  %power_mode.i120 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %power_mode.i120 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %power_mode.i120, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp.i121 = icmp eq i8 %29, 1
  br i1 %cmp.i121, label %if.then40.if.end45_crit_edge, label %us5182d_set_power_state.exit124

if.then40.if.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

us5182d_set_power_state.exit124:                  ; preds = %if.then40
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i12.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4, i32 12, i32 22
  %32 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store volatile i64 %call.i12.i, ptr %last_busy.i.i, align 8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %dev6.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %call.i13.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev6.i, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %cmp42 = icmp slt i32 %call.i13.i, 0
  br i1 %cmp42, label %us5182d_set_power_state.exit124.cleanup_crit_edge, label %us5182d_set_power_state.exit124.if.end45_crit_edge

us5182d_set_power_state.exit124.if.end45_crit_edge: ; preds = %us5182d_set_power_state.exit124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

us5182d_set_power_state.exit124.cleanup_crit_edge: ; preds = %us5182d_set_power_state.exit124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %us5182d_set_power_state.exit124.if.end45_crit_edge, %if.then40.if.end45_crit_edge, %sw.epilog.if.end45_crit_edge
  %falling_en46 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %falling_en46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %falling_en46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool47.not = icmp eq i32 %36, 0
  br i1 %tobool47.not, label %land.lhs.true, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end45
  %rising_en48 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %rising_en48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rising_en48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool49.not = icmp eq i32 %38, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true50:                                  ; preds = %land.lhs.true
  %default_continuous = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %default_continuous to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %default_continuous, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool51.not = icmp eq i8 %40, 0
  br i1 %tobool51.not, label %if.then52, label %land.lhs.true50.cleanup_crit_edge

land.lhs.true50.cleanup_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  %power_mode53 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 11
  %41 = ptrtoint ptr %power_mode53 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %power_mode53, align 1
  br label %cleanup

err_poweroff:                                     ; preds = %if.end33.err_poweroff_crit_edge, %if.end11.err_poweroff_crit_edge
  %ret.0 = phi i32 [ %call5.i119, %if.end33.err_poweroff_crit_edge ], [ %call5.i, %if.end11.err_poweroff_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool56.not = icmp eq i32 %state, 0
  br i1 %tobool56.not, label %err_poweroff.cleanup_crit_edge, label %err_poweroff.if.then57_crit_edge

err_poweroff.if.then57_crit_edge:                 ; preds = %err_poweroff
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

err_poweroff.cleanup_crit_edge:                   ; preds = %err_poweroff
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then57:                                        ; preds = %err_poweroff.if.then57_crit_edge, %if.end28.if.then57_crit_edge, %if.end6.if.then57_crit_edge
  %ret.0142 = phi i32 [ %ret.0, %err_poweroff.if.then57_crit_edge ], [ %call7, %if.end6.if.then57_crit_edge ], [ %call29, %if.end28.if.then57_crit_edge ]
  %power_mode.i125 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %power_mode.i125 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %power_mode.i125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp.i126 = icmp eq i8 %43, 1
  br i1 %cmp.i126, label %if.then57.cleanup_crit_edge, label %if.end.i127

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i127:                                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i12.i128 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i129 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4, i32 12, i32 22
  %46 = ptrtoint ptr %last_busy.i.i129 to i32
  call void @__asan_store8_noabort(i32 %46)
  store volatile i64 %call.i12.i128, ptr %last_busy.i.i129, align 8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %dev6.i130 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  %call.i13.i131 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev6.i130, i32 noundef 13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i127, %if.then57.cleanup_crit_edge, %err_poweroff.cleanup_crit_edge, %if.then52, %land.lhs.true50.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %us5182d_set_power_state.exit124.cleanup_crit_edge, %do.end11.i.i.i.i.i.i115, %if.then.i.i114.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb17.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %land.lhs.true50.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ %ret.0, %err_poweroff.cleanup_crit_edge ], [ %call.i13.i, %us5182d_set_power_state.exit124.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0142, %if.then57.cleanup_crit_edge ], [ %ret.0142, %if.end.i127 ], [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ], [ %call.i.i108, %if.then.i.i114.cleanup_crit_edge ], [ %call.i.i108, %do.end11.i.i.i.i.i.i115 ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_read_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %dir, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %px_high_th = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 7
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock3 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock3, i32 noundef 0) #6
  %px_low_th = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %sw.bb
  %.sink.in = phi ptr [ %px_high_th, %sw.bb ], [ %px_low_th, %sw.bb2 ]
  %lock.sink = phi ptr [ %lock, %sw.bb ], [ %lock3, %sw.bb2 ]
  %3 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %3)
  %.sink = load i16, ptr %.sink.in, align 2
  %conv = zext i16 %.sink to i32
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %lock.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_write_thresh(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %val)
  %2 = icmp ult i32 %val, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp3.not = icmp eq i32 %val2, 0
  %or.cond47 = and i1 %2, %cmp3.not
  br i1 %or.cond47, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %dir, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %lock = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %rising_en = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %rising_en to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rising_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %.pre = trunc i32 %val to i16
  br i1 %tobool.not, label %sw.bb.if.end10_crit_edge, label %if.then4

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %sw.bb
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call5.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext 10, i16 noundef zeroext %.pre) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6 = icmp slt i32 %call5.i, 0
  br i1 %cmp6, label %if.then4.err_crit_edge, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4.err_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %sw.bb.if.end10_crit_edge
  %px_high_th = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %px_high_th to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %.pre, ptr %px_high_th, align 2
  br label %cleanup.sink.split

sw.bb13:                                          ; preds = %if.end
  %lock14 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock14, i32 noundef 0) #6
  %falling_en = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %falling_en to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %falling_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  %.pre50 = trunc i32 %val to i16
  br i1 %tobool15.not, label %sw.bb13.if.end23_crit_edge, label %if.then16

sw.bb13.if.end23_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then16:                                        ; preds = %sw.bb13
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call5.i49 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %16, i8 noundef zeroext 8, i16 noundef zeroext %.pre50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i49)
  %cmp19 = icmp slt i32 %call5.i49, 0
  br i1 %cmp19, label %if.then16.err_crit_edge, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then16.err_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end23:                                         ; preds = %if.then16.if.end23_crit_edge, %sw.bb13.if.end23_crit_edge
  %px_low_th = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %px_low_th to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %.pre50, ptr %px_low_th, align 4
  br label %cleanup.sink.split

err:                                              ; preds = %if.then16.err_crit_edge, %if.then4.err_crit_edge
  %ret.0 = phi i32 [ %call5.i49, %if.then16.err_crit_edge ], [ %call5.i, %if.then4.err_crit_edge ]
  %lock26 = getelementptr inbounds %struct.us5182d_data, ptr %1, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err, %if.end23, %if.end10
  %lock.sink = phi ptr [ %lock, %if.end10 ], [ %lock14, %if.end23 ], [ %lock26, %err ]
  %retval.0.ph = phi i32 [ 0, %if.end10 ], [ 0, %if.end23 ], [ %ret.0, %err ]
  tail call void @mutex_unlock(ptr noundef %lock.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @us5182d_px_enable(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power_mode = getelementptr inbounds %struct.us5182d_data, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %opmode.i = getelementptr inbounds %struct.us5182d_data, ptr %data, i32 0, i32 10
  %2 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.i = icmp eq i8 %3, 2
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = trunc i32 %call.i to i8
  %9 = and i8 %8, -49
  %conv9.i = or i8 %9, 32
  %call10.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext %conv9.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end6.i.cleanup_crit_edge, label %if.end14.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14.i:                                       ; preds = %if.end6.i
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call16.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 33, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end14.i.cleanup_crit_edge, label %if.end20.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %opmode.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %opmode.i, align 4
  tail call void @msleep(i32 noundef 20) #6
  br label %if.end

if.end:                                           ; preds = %if.end20.i, %if.then.if.end_crit_edge
  %als_enabled = getelementptr inbounds %struct.us5182d_data, ptr %data, i32 0, i32 12
  %13 = ptrtoint ptr %als_enabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %als_enabled, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %px_enabled = getelementptr inbounds %struct.us5182d_data, ptr %data, i32 0, i32 13
  %14 = ptrtoint ptr %px_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %px_enabled, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %als_enabled8 = getelementptr inbounds %struct.us5182d_data, ptr %data, i32 0, i32 12
  %16 = ptrtoint ptr %als_enabled8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %als_enabled8, align 2, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  %conv11 = select i1 %tobool9.not, i8 2, i8 0
  %opmode.i28 = getelementptr inbounds %struct.us5182d_data, ptr %data, i32 0, i32 10
  %18 = ptrtoint ptr %opmode.i28 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %opmode.i28, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %conv11)
  %cmp.i29 = icmp eq i8 %19, %conv11
  br i1 %cmp.i29, label %if.end7.if.end16_crit_edge, label %if.end.i32

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.i32:                                       ; preds = %if.end7
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %call.i30 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp3.i31 = icmp slt i32 %call.i30, 0
  br i1 %cmp3.i31, label %if.end.i32.cleanup_crit_edge, label %if.end6.i38

if.end.i32.cleanup_crit_edge:                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i38:                                      ; preds = %if.end.i32
  %22 = shl nuw nsw i8 %conv11, 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = trunc i32 %call.i30 to i8
  %26 = and i8 %25, -49
  %conv9.i35 = or i8 %26, %22
  %call10.i36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext %conv9.i35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i36)
  %cmp11.i37 = icmp slt i32 %call10.i36, 0
  br i1 %cmp11.i37, label %if.end6.i38.cleanup_crit_edge, label %if.end14.i41

if.end6.i38.cleanup_crit_edge:                    ; preds = %if.end6.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14.i41:                                     ; preds = %if.end6.i38
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %call16.i39 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 33, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i39)
  %cmp17.i40 = icmp slt i32 %call16.i39, 0
  br i1 %cmp17.i40, label %if.end14.i41.cleanup_crit_edge, label %if.end20.i42

if.end14.i41.cleanup_crit_edge:                   ; preds = %if.end14.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.i42:                                     ; preds = %if.end14.i41
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %opmode.i28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv11, ptr %opmode.i28, align 4
  tail call void @msleep(i32 noundef 20) #6
  br label %if.end16

if.end16:                                         ; preds = %if.end20.i42, %if.end7.if.end16_crit_edge
  %30 = ptrtoint ptr %px_enabled to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %px_enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end14.i41.cleanup_crit_edge, %if.end6.i38.cleanup_crit_edge, %if.end.i32.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %if.end5.cleanup_crit_edge ], [ %call16.i, %if.end14.i.cleanup_crit_edge ], [ %call10.i, %if.end6.i.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ %call16.i39, %if.end14.i41.cleanup_crit_edge ], [ %call10.i36, %if.end6.i38.cleanup_crit_edge ], [ %call.i30, %if.end.i32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %power_mode = getelementptr inbounds %struct.us5182d_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %10 = trunc i32 %call.i to i8
  %conv8.i = or i8 %10, -128
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext %conv8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end5.i.cleanup_crit_edge, label %if.then16.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %als_enabled.i = getelementptr inbounds %struct.us5182d_data, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %als_enabled.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %als_enabled.i, align 2
  %px_enabled.i = getelementptr inbounds %struct.us5182d_data, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %px_enabled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %px_enabled.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then16.i, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ %call9.i, %if.end5.i.cleanup_crit_edge ], [ %call9.i, %if.then16.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @us5182d_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %power_mode = getelementptr inbounds %struct.us5182d_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext 127) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ %call9.i, %if.end5.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !41, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_us5182d__289_981_us5182d_driver_init6, !1, !"__initcall__kmod_us5182d__289_981_us5182d_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/us5182d.c", i32 981, i32 1}
!2 = !{ptr @__exitcall_us5182d_driver_exit, !1, !"__exitcall_us5182d_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/us5182d.c", i32 983, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/us5182d.c", i32 984, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/us5182d.c", i32 985, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/us5182d.c", i32 971, i32 11}
!12 = !{ptr @us5182d_driver, !13, !"us5182d_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/us5182d.c", i32 969, i32 26}
!14 = !{ptr @us5182d_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/us5182d.c", i32 850, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/us5182d.c", i32 860, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @us5182d_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @us5182d_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/us5182d.c", i32 869, i32 7}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/us5182d.c", i32 873, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @us5182d_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @us5182d_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @us5182d_info, !33, !"us5182d_info", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/us5182d.c", i32 706, i32 30}
!34 = !{ptr @us5182d_attr_group, !35, !"us5182d_attr_group", i1 false, i1 false}
!35 = !{!"../drivers/iio/light/us5182d.c", i32 152, i32 37}
!36 = !{ptr @us5182d_attrs, !37, !"us5182d_attrs", i1 false, i1 false}
!37 = !{!"../drivers/iio/light/us5182d.c", i32 147, i32 26}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/light/us5182d.c", i32 144, i32 8}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @iio_const_attr_in_illuminance_scale_available, !39, !"iio_const_attr_in_illuminance_scale_available", i1 false, i1 false}
!42 = !{ptr @us5182d_scales, !43, !"us5182d_scales", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/us5182d.c", i32 96, i32 18}
!44 = !{ptr @us5182d_channels, !45, !"us5182d_channels", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/us5182d.c", i32 184, i32 35}
!46 = !{ptr @us5182d_events, !47, !"us5182d_events", i1 false, i1 false}
!47 = !{!"../drivers/iio/light/us5182d.c", i32 169, i32 36}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/us5182d.c", i32 818, i32 3}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @us5182d_irq_thread_handler._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @us5182d_irq_thread_handler._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @us5182d_irq_thread_handler._entry.16, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/iio/light/us5182d.c", i32 830, i32 3}
!55 = !{ptr @us5182d_irq_thread_handler._entry_ptr.17, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/light/us5182d.c", i32 763, i32 51}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/us5182d.c", i32 767, i32 9}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/light/us5182d.c", i32 772, i32 9}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/us5182d.c", i32 776, i32 9}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/light/us5182d.c", i32 780, i32 13}
!66 = !{ptr @us5182d_dark_ths_vals, !67, !"us5182d_dark_ths_vals", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/us5182d.c", i32 103, i32 12}
!68 = distinct !{null, !69, !"us5182d_regvals", i1 false, i1 false}
!69 = !{!"../drivers/iio/light/us5182d.c", i32 159, i32 3}
!70 = !{ptr @us5182d_of_match, !71, !"us5182d_of_match", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/us5182d.c", i32 963, i32 34}
!72 = !{ptr @us5182d_pm_ops, !73, !"us5182d_pm_ops", i1 false, i1 false}
!73 = !{!"../drivers/iio/light/us5182d.c", i32 944, i32 32}
!74 = !{ptr @us5182d_id, !75, !"us5182d_id", i1 false, i1 false}
!75 = !{!"../drivers/iio/light/us5182d.c", i32 956, i32 35}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i8 0, i8 2}
!86 = !{i64 2148230201}
!87 = !{i64 715024, i64 715049, i64 715071, i64 715087, i64 715099, i64 715119, i64 715143, i64 715159, i64 715171}
!88 = !{i64 2148230389}
