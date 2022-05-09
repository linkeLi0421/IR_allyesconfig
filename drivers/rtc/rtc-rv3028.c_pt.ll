; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rv3028.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rv3028.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.rv3028_data = type { ptr, ptr, i32, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_param = type { i64, %union.anon.86, i32, i32 }
%union.anon.86 = type { i64 }

@__initcall__kmod_rtc_rv3028__302_988_rv3028_driver_init6 = internal global ptr @rv3028_driver_init, section ".initcall6.init", align 4
@rv3028_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @rv3028_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rv3028_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rv3028_driver_exit = internal global ptr @rv3028_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [68 x i8] c"rtc_rv3028.author=Alexandre Belloni <alexandre.belloni@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [55 x i8] c"rtc_rv3028.description=Micro Crystal RV3028 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [39 x i8] c"rtc_rv3028.file=drivers/rtc/rtc-rv3028\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"rtc_rv3028.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-rv3028\00", [21 x i8] zeroinitializer }, align 32
@rv3028_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microcrystal,rv3028\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rv3028_nvram\00", [19 x i8] zeroinitializer }, align 32
@__const.rv3028_probe.nvmem_cfg = private unnamed_addr constant { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, [1 x i8], ptr, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, ptr, i8, [3 x i8], ptr } { ptr null, ptr @.str.1, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 3, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @rv3028_nvram_read, ptr @rv3028_nvram_write, ptr null, i32 2, i32 1, i32 1, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null }, align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rv3028_eeprom\00", [18 x i8] zeroinitializer }, align 32
@__const.rv3028_probe.eeprom_cfg = private unnamed_addr constant { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, [1 x i8], ptr, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, ptr, i8, [3 x i8], ptr } { ptr null, ptr @.str.2, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 1, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @rv3028_eeprom_read, ptr @rv3028_eeprom_write, ptr null, i32 43, i32 1, i32 1, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null }, align 4
@rv3028_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 55, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rtc_rv3028:888:(&regmap_config)->lock\00", [58 x i8] zeroinitializer }, align 32
@rv3028_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 899, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"An alarm may have been missed.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rv3028_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-rv3028.c\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rv3028_probe._entry_ptr = internal global ptr @rv3028_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rv3028\00", [25 x i8] zeroinitializer }, align 32
@rv3028_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 911, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", [56 x i8] zeroinitializer }, align 32
@rv3028_probe._entry_ptr.12 = internal global ptr @rv3028_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trickle-resistor-ohms\00", [42 x i8] zeroinitializer }, align 32
@rv3028_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 945, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid trickle resistor value\0A\00", [32 x i8] zeroinitializer }, align 32
@rv3028_probe._entry_ptr.16 = internal global ptr @rv3028_probe._entry.14, section ".printk_index", align 4
@rv3028_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rv3028_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rv3028_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @rv3028_ioctl, ptr @rv3028_get_time, ptr @rv3028_set_time, ptr @rv3028_get_alarm, ptr @rv3028_set_alarm, ptr null, ptr @rv3028_alarm_irq_enable, ptr @rv3028_read_offset, ptr @rv3028_set_offset, ptr @rv3028_param_get, ptr @rv3028_param_set }, [52 x i8] zeroinitializer }, align 32
@dev_attr_timestamp0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timestamp0_show, ptr @timestamp0_store }, [36 x i8] zeroinitializer }, align 32
@rv3028_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 302, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"event detected\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rv3028_handle_irq\00", [46 x i8] zeroinitializer }, align 32
@rv3028_handle_irq._entry_ptr = internal global ptr @rv3028_handle_irq._entry, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timestamp0\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@rv3028_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_timestamp0, ptr @dev_attr_timestamp0_count, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_timestamp0_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timestamp0_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timestamp0_count\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rv3028-clkout\00", [18 x i8] zeroinitializer }, align 32
@rv3028_clkout_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @rv3028_clkout_prepare, ptr @rv3028_clkout_unprepare, ptr @rv3028_clkout_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rv3028_clkout_recalc_rate, ptr @rv3028_clkout_round_rate, ptr null, ptr null, ptr null, ptr @rv3028_clkout_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@clkout_rates = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 32768, i32 8192, i32 1024, i32 64, i32 32, i32 1], [40 x i8] zeroinitializer }, align 32
@switch.table.rv3028_param_set = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4, i32 12], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3000, i64 5000, i64 9000, i64 15000]
@__sancov_gen_cov_switch_values.25 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 32, i64 64, i64 1024, i64 8192, i64 32768]
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"rv3028_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 981, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 983, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"rv3028_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 975, i32 49 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 865, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 874, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 853, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 888, i32 19 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 899, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 909, i32 7 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 911, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 931, i32 46 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 945, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"rv3028_attr_group\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 176, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"rv3028_rtc_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 840, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [20 x i8] c"dev_attr_timestamp0\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 302, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 153, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 149, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"rv3028_attrs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 170, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant [26 x i8] c"dev_attr_timestamp0_count\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 168, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 165, i32 22 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 821, i32 14 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"rv3028_clkout_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 799, i32 29 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 829, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant [13 x i8] c"clkout_rates\00", align 1
@___asan_gen_.132 = private constant [28 x i8] c"../drivers/rtc/rtc-rv3028.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 710, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant [30 x i8] c"switch.table.rv3028_param_set\00", align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_rv3028_driver_exit, ptr @__initcall__kmod_rtc_rv3028__302_988_rv3028_driver_init6, ptr @rv3028_driver_exit, ptr @rv3028_handle_irq._entry, ptr @rv3028_handle_irq._entry_ptr, ptr @rv3028_probe._entry, ptr @rv3028_probe._entry.10, ptr @rv3028_probe._entry.14, ptr @rv3028_probe._entry_ptr, ptr @rv3028_probe._entry_ptr.12, ptr @rv3028_probe._entry_ptr.16, ptr @rv3028_driver, ptr @.str, ptr @rv3028_of_match, ptr @.str.1, ptr @.str.2, ptr @rv3028_probe._key, ptr @regmap_config, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @rv3028_attr_group, ptr @rv3028_rtc_ops, ptr @dev_attr_timestamp0, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @rv3028_attrs, ptr @dev_attr_timestamp0_count, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rv3028_clkout_ops, ptr @.str.24, ptr @clkout_rates, ptr @switch.table.rv3028_param_set], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3028_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3028_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3028_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3028_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3028_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3028_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3028_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3028_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timestamp0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3028_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3028_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timestamp0_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3028_clkout_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkout_rates to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rv3028_param_set to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rv3028_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rv3028_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @rv3028_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_probe(ptr noundef %client) #2 align 64 {
entry:
  %status = alloca i32, align 4
  %ohms = alloca i32, align 4
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  %eeprom_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ohms) #10
  %1 = ptrtoint ptr %ohms to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ohms, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #10
  %2 = call ptr @memcpy(ptr %nvmem_cfg, ptr @__const.rv3028_probe.nvmem_cfg, i32 88)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %eeprom_cfg) #10
  %3 = call ptr @memcpy(ptr %eeprom_cfg, ptr @__const.rv3028_probe.eeprom_cfg, i32 88)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup99_crit_edge, label %if.end

entry.cleanup99_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup99

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @regmap_config, ptr noundef nonnull @rv3028_probe._key, ptr noundef nonnull @.str.3) #10
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call1 to i32
  br label %cleanup99

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call9 = call i32 @regmap_read(ptr noundef %call1, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end7.cleanup99_crit_edge, label %if.end11

if.end7.cleanup99_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup99

if.end11:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %do.end

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end11.if.end15_crit_edge
  %call17 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #10
  %rtc = getelementptr inbounds %struct.rv3028_data, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call17, ptr %rtc, align 4
  %cmp.i159 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call17 to i32
  br label %cleanup99

if.end23:                                         ; preds = %if.end15
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp24 = icmp sgt i32 %12, 0
  br i1 %cmp24, label %if.then25, label %if.end23.if.end37_crit_edge

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then25:                                        ; preds = %if.end23
  %call28 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %12, ptr noundef null, ptr noundef nonnull @rv3028_handle_irq, i32 noundef 8200, ptr noundef nonnull @.str.9, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end37thread-pre-split, label %if.end37.thread

if.end37.thread:                                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #13
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %irq, align 4
  br label %if.then40

if.end37thread-pre-split:                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %irq, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37thread-pre-split, %if.end23.if.end37_crit_edge
  %15 = phi i32 [ %.pr, %if.end37thread-pre-split ], [ %12, %if.end23.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool39.not = icmp eq i32 %15, 0
  br i1 %tobool39.not, label %if.end37.if.then40_crit_edge, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end37.if.then40_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.then40:                                        ; preds = %if.end37.if.then40_crit_edge, %if.end37.thread
  %16 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rtc, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %17, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %features) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end37.if.end42_crit_edge
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call.i160 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 15, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool45.not = icmp eq i32 %call.i160, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.cleanup99_crit_edge

if.end42.cleanup99_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup99

if.end47:                                         ; preds = %if.end42
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %call.i161 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 16, i32 noundef 132, i32 noundef 132, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool50.not = icmp eq i32 %call.i161, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.cleanup99_crit_edge

if.end47.cleanup99_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup99

if.end52:                                         ; preds = %if.end47
  %call.i162 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull %ohms, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool55.not = icmp eq i32 %call.i162, 0
  br i1 %tobool55.not, label %for.cond.preheader, label %if.end52.if.end74_crit_edge

if.end52.if.end74_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

for.cond.preheader:                               ; preds = %if.end52
  %22 = ptrtoint ptr %ohms to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ohms, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %for.inc.3 [
    i32 3000, label %for.cond.preheader.if.then64.critedge_crit_edge
    i32 5000, label %if.then64.critedge.fold.split
    i32 9000, label %if.then64.critedge.fold.split169
    i32 15000, label %if.then64.critedge.fold.split170
  ]

for.cond.preheader.if.then64.critedge_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64.critedge

for.inc.3:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  br label %if.end74

if.then64.critedge.fold.split:                    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64.critedge

if.then64.critedge.fold.split169:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64.critedge

if.then64.critedge.fold.split170:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64.critedge

if.then64.critedge:                               ; preds = %if.then64.critedge.fold.split170, %if.then64.critedge.fold.split169, %if.then64.critedge.fold.split, %for.cond.preheader.if.then64.critedge_crit_edge
  %i.0167.lcssa = phi i32 [ 32, %for.cond.preheader.if.then64.critedge_crit_edge ], [ 33, %if.then64.critedge.fold.split ], [ 34, %if.then64.critedge.fold.split169 ], [ 35, %if.then64.critedge.fold.split170 ]
  %call65 = call fastcc i32 @rv3028_update_cfg(ptr noundef nonnull %call.i, i32 noundef 55, i32 noundef 35, i32 noundef %i.0167.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.critedge.if.end74_crit_edge, label %if.then64.critedge.cleanup99_crit_edge

if.then64.critedge.cleanup99_crit_edge:           ; preds = %if.then64.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup99

if.then64.critedge.if.end74_crit_edge:            ; preds = %if.then64.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.end74:                                         ; preds = %if.then64.critedge.if.end74_crit_edge, %for.inc.3, %if.end52.if.end74_crit_edge
  %25 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtc, align 4
  %call76 = call i32 @rtc_add_group(ptr noundef %26, ptr noundef nonnull @rv3028_attr_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end74.cleanup99_crit_edge

if.end74.cleanup99_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup99

if.end79:                                         ; preds = %if.end74
  %27 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rtc, align 4
  %features81 = getelementptr inbounds %struct.rtc_device, ptr %28, i32 0, i32 21
  call void @_set_bit(i32 noundef 6, ptr noundef %features81) #10
  %29 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rtc, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 946684800, ptr %range_min, align 8
  %32 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %32, i32 0, i32 23
  %33 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 4102444799, ptr %range_max, align 8
  %34 = load ptr, ptr %rtc, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rv3028_rtc_ops, ptr %ops, align 8
  %36 = load ptr, ptr %rtc, align 4
  %call87 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end79.cleanup99_crit_edge

if.end79.cleanup99_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup99

if.end90:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %priv, align 4
  %40 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rtc, align 4
  %call93 = call i32 @devm_rtc_nvmem_register(ptr noundef %41, ptr noundef nonnull %nvmem_cfg) #10
  %priv94 = getelementptr inbounds %struct.nvmem_config, ptr %eeprom_cfg, i32 0, i32 21
  %42 = ptrtoint ptr %priv94 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %priv94, align 4
  %43 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rtc, align 4
  %call96 = call i32 @devm_rtc_nvmem_register(ptr noundef %44, ptr noundef nonnull %eeprom_cfg) #10
  %45 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rtc, align 4
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %max_user_freq to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %max_user_freq, align 8
  call fastcc void @rv3028_clkout_register_clk(ptr noundef nonnull %call.i, ptr noundef %client)
  br label %cleanup99

cleanup99:                                        ; preds = %if.end90, %if.end79.cleanup99_crit_edge, %if.end74.cleanup99_crit_edge, %if.then64.critedge.cleanup99_crit_edge, %if.end47.cleanup99_crit_edge, %if.end42.cleanup99_crit_edge, %if.then20, %if.end7.cleanup99_crit_edge, %if.then4, %entry.cleanup99_crit_edge
  %retval.1 = phi i32 [ %5, %if.then4 ], [ %10, %if.then20 ], [ 0, %if.end90 ], [ -12, %entry.cleanup99_crit_edge ], [ %call9, %if.end7.cleanup99_crit_edge ], [ %call.i160, %if.end42.cleanup99_crit_edge ], [ %call.i161, %if.end47.cleanup99_crit_edge ], [ %call76, %if.end74.cleanup99_crit_edge ], [ %call87, %if.end79.cleanup99_crit_edge ], [ %call65, %if.then64.critedge.cleanup99_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %eeprom_cfg) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ohms) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_nvram_read(ptr noundef %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 31
  %call = tail call i32 @regmap_bulk_read(ptr noundef %priv, i32 noundef %add, ptr noundef %val, i32 noundef %bytes) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_nvram_write(ptr noundef %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 31
  %call = tail call i32 @regmap_bulk_write(ptr noundef %priv, i32 noundef %add, ptr noundef %val, i32 noundef %bytes) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_eeprom_read(ptr nocapture noundef readonly %priv, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  %status = alloca i32, align 4
  %eerd = alloca i32, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eerd) #10
  %1 = ptrtoint ptr %eerd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %eerd, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !86
  %call = call fastcc i32 @rv3028_enter_eerd(ptr noundef %priv, ptr noundef nonnull %eerd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp109.not = icmp eq i32 %bytes, 0
  br i1 %cmp109.not, label %for.cond.preheader.restore_eerd_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.restore_eerd_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

for.body:                                         ; preds = %if.end58.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0110 = phi i32 [ %inc, %if.end58.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %add = add i32 %i.0110, %offset
  %call1 = call i32 @regmap_write(ptr noundef %4, i32 noundef 37, i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.restore_eerd_crit_edge

for.body.restore_eerd_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.end4:                                          ; preds = %for.body
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %call6 = call i32 @regmap_write(ptr noundef %6, i32 noundef 39, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.restore_eerd_crit_edge

if.end4.restore_eerd_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.end9:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %call11 = call i32 @regmap_write(ptr noundef %8, i32 noundef 39, i32 noundef 34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.restore_eerd_crit_edge

if.end9.restore_eerd_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.end14:                                         ; preds = %if.end9
  %call15 = call i64 @ktime_get() #10
  %add.i = add i64 %call15, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 691) #10
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %call28107 = call i32 @regmap_read(ptr noundef %10, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28107)
  %tobool29.not108 = icmp eq i32 %call28107, 0
  br i1 %tobool29.not108, label %if.end14.lor.lhs.false_crit_edge, label %if.end14.restore_eerd_crit_edge

if.end14.restore_eerd_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.end14.lor.lhs.false_crit_edge:                 ; preds = %if.end14
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then42.lor.lhs.false_crit_edge, %if.end14.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %and = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %lor.lhs.false.lor.end_crit_edge, label %land.lhs.true

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call34 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call34, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call34, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then42

if.then42:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #10
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %call28 = call i32 @regmap_read(ptr noundef %14, i32 noundef 14, ptr noundef nonnull %status) #10
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then42.lor.lhs.false_crit_edge, label %if.then42.restore_eerd_crit_edge

if.then42.restore_eerd_crit_edge:                 ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.then42.lor.lhs.false_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %call39 = call i32 @regmap_read(ptr noundef %16, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool45.not = icmp eq i32 %call39, 0
  br i1 %tobool45.not, label %for.end.lor.end_crit_edge, label %for.end.restore_eerd_crit_edge

for.end.restore_eerd_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %and46 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end53, label %lor.end.restore_eerd_crit_edge

lor.end.restore_eerd_crit_edge:                   ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.end53:                                         ; preds = %lor.end
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %call55 = call i32 @regmap_read(ptr noundef %20, i32 noundef 38, ptr noundef nonnull %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end53.restore_eerd_crit_edge

if.end53.restore_eerd_crit_edge:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.end58:                                         ; preds = %if.end53
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data, align 4
  %conv = trunc i32 %22 to i8
  %arrayidx = getelementptr i8, ptr %val, i32 %i.0110
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, %bytes
  br i1 %exitcond.not, label %if.end58.restore_eerd_crit_edge, label %if.end58.for.body_crit_edge

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end58.restore_eerd_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

restore_eerd:                                     ; preds = %if.end58.restore_eerd_crit_edge, %if.end53.restore_eerd_crit_edge, %lor.end.restore_eerd_crit_edge, %for.end.restore_eerd_crit_edge, %if.then42.restore_eerd_crit_edge, %if.end14.restore_eerd_crit_edge, %if.end9.restore_eerd_crit_edge, %if.end4.restore_eerd_crit_edge, %for.body.restore_eerd_crit_edge, %for.cond.preheader.restore_eerd_crit_edge
  %ret.1 = phi i32 [ 0, %for.cond.preheader.restore_eerd_crit_edge ], [ %call28, %if.then42.restore_eerd_crit_edge ], [ %call39, %for.end.restore_eerd_crit_edge ], [ %call28107, %if.end14.restore_eerd_crit_edge ], [ -110, %lor.end.restore_eerd_crit_edge ], [ 0, %if.end58.restore_eerd_crit_edge ], [ %call55, %if.end53.restore_eerd_crit_edge ], [ %call11, %if.end9.restore_eerd_crit_edge ], [ %call6, %if.end4.restore_eerd_crit_edge ], [ %call1, %for.body.restore_eerd_crit_edge ]
  %24 = ptrtoint ptr %eerd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eerd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end.i, label %restore_eerd.cleanup_crit_edge

restore_eerd.cleanup_crit_edge:                   ; preds = %restore_eerd
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %restore_eerd
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %restore_eerd.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.1, %restore_eerd.cleanup_crit_edge ], [ %ret.1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eerd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_eeprom_write(ptr nocapture noundef readonly %priv, i32 noundef %offset, ptr nocapture noundef readonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  %status = alloca i32, align 4
  %eerd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eerd) #10
  %1 = ptrtoint ptr %eerd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %eerd, align 4, !annotation !86
  %call = call fastcc i32 @rv3028_enter_eerd(ptr noundef %priv, ptr noundef nonnull %eerd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp110.not = icmp eq i32 %bytes, 0
  br i1 %cmp110.not, label %for.cond.preheader.restore_eerd_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.restore_eerd_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

for.cond:                                         ; preds = %lor.end
  %inc = add nuw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, %bytes
  br i1 %exitcond.not, label %for.cond.restore_eerd_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.restore_eerd_crit_edge:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0111 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %add = add i32 %i.0111, %offset
  %call1 = call i32 @regmap_write(ptr noundef %3, i32 noundef 37, i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.restore_eerd_crit_edge

for.body.restore_eerd_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.end4:                                          ; preds = %for.body
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %arrayidx = getelementptr i8, ptr %val, i32 %i.0111
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %call6 = call i32 @regmap_write(ptr noundef %5, i32 noundef 38, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.restore_eerd_crit_edge

if.end4.restore_eerd_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.end9:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %call11 = call i32 @regmap_write(ptr noundef %9, i32 noundef 39, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.restore_eerd_crit_edge

if.end9.restore_eerd_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.end14:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %call16 = call i32 @regmap_write(ptr noundef %11, i32 noundef 39, i32 noundef 33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.restore_eerd_crit_edge

if.end14.restore_eerd_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.end19:                                         ; preds = %if.end14
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 100000, i32 noundef 2) #10
  %call20 = call i64 @ktime_get() #10
  %add.i = add i64 %call20, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 651) #10
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %call34108 = call i32 @regmap_read(ptr noundef %13, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34108)
  %tobool35.not109 = icmp eq i32 %call34108, 0
  br i1 %tobool35.not109, label %if.end19.lor.lhs.false_crit_edge, label %if.end19.restore_eerd_crit_edge

if.end19.restore_eerd_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.end19.lor.lhs.false_crit_edge:                 ; preds = %if.end19
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then49.lor.lhs.false_crit_edge, %if.end19.lor.lhs.false_crit_edge
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  %and = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %lor.lhs.false.lor.end_crit_edge, label %land.lhs.true

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call40 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call40, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call40, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then49

if.then49:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #10
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %call34 = call i32 @regmap_read(ptr noundef %17, i32 noundef 14, ptr noundef nonnull %status) #10
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then49.lor.lhs.false_crit_edge, label %if.then49.restore_eerd_crit_edge

if.then49.restore_eerd_crit_edge:                 ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

if.then49.lor.lhs.false_crit_edge:                ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %call46 = call i32 @regmap_read(ptr noundef %19, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool52.not = icmp eq i32 %call46, 0
  br i1 %tobool52.not, label %for.end.lor.end_crit_edge, label %for.end.restore_eerd_crit_edge

for.end.restore_eerd_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  %and53 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %for.cond, label %lor.end.restore_eerd_crit_edge

lor.end.restore_eerd_crit_edge:                   ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %restore_eerd

restore_eerd:                                     ; preds = %lor.end.restore_eerd_crit_edge, %for.end.restore_eerd_crit_edge, %if.then49.restore_eerd_crit_edge, %if.end19.restore_eerd_crit_edge, %if.end14.restore_eerd_crit_edge, %if.end9.restore_eerd_crit_edge, %if.end4.restore_eerd_crit_edge, %for.body.restore_eerd_crit_edge, %for.cond.restore_eerd_crit_edge, %for.cond.preheader.restore_eerd_crit_edge
  %ret.1 = phi i32 [ 0, %for.cond.preheader.restore_eerd_crit_edge ], [ %call34, %if.then49.restore_eerd_crit_edge ], [ %call46, %for.end.restore_eerd_crit_edge ], [ %call34108, %if.end19.restore_eerd_crit_edge ], [ -110, %lor.end.restore_eerd_crit_edge ], [ 0, %for.cond.restore_eerd_crit_edge ], [ %call16, %if.end14.restore_eerd_crit_edge ], [ %call11, %if.end9.restore_eerd_crit_edge ], [ %call6, %if.end4.restore_eerd_crit_edge ], [ %call1, %for.body.restore_eerd_crit_edge ]
  %22 = ptrtoint ptr %eerd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eerd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end.i, label %restore_eerd.cleanup_crit_edge

restore_eerd.cleanup_crit_edge:                   ; preds = %restore_eerd
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %restore_eerd
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %restore_eerd.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.1, %restore_eerd.cleanup_crit_edge ], [ %ret.1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eerd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_id, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %and2 = and i32 %4, 8
  %5 = and i32 %4, -2
  %6 = shl nuw nsw i32 %and2, 3
  %7 = shl nuw nsw i32 %and2, 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %status, align 4
  %and7 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or10 = or i32 %5, 4
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or10, ptr %status, align 4
  %or11 = or i32 %7, 8
  %or12 = or i32 %6, 32
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %events.1 = phi i32 [ %or12, %if.then9 ], [ %6, %if.end.if.end13_crit_edge ]
  %ctrl.1 = phi i32 [ %or11, %if.then9 ], [ %7, %if.end.if.end13_crit_edge ]
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %and14 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end20, label %if.end20.thread

if.end20.thread:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %or17 = or i32 %11, 16
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or17, ptr %status, align 4
  %or18 = or i32 %ctrl.1, 32
  %or19 = or i32 %events.1, 16
  br label %if.then22

if.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events.1)
  %tobool21.not = icmp eq i32 %events.1, 0
  br i1 %tobool21.not, label %if.end20.if.end27_crit_edge, label %if.end20.if.then22_crit_edge

if.end20.if.then22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %if.end20.if.then22_crit_edge, %if.end20.thread
  %ctrl.255 = phi i32 [ %or18, %if.end20.thread ], [ %ctrl.1, %if.end20.if.then22_crit_edge ]
  %events.254 = phi i32 [ %or19, %if.end20.thread ], [ %events.1, %if.end20.if.then22_crit_edge ]
  %rtc = getelementptr inbounds %struct.rv3028_data, ptr %dev_id, i32 0, i32 1
  %13 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %14, i32 noundef 1, i32 noundef %events.254) #10
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 14, i32 noundef %18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 4
  %call.i50 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 16, i32 noundef %ctrl.255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end20.if.end27_crit_edge
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %and28 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.then30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %rtc31 = getelementptr inbounds %struct.rv3028_data, ptr %dev_id, i32 0, i32 1
  %23 = ptrtoint ptr %rtc31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtc31, align 4
  %25 = load ptr, ptr @dev_attr_timestamp0, align 4
  call void @sysfs_notify(ptr noundef %24, ptr noundef null, ptr noundef %25) #10
  %26 = ptrtoint ptr %rtc31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtc31, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.17) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end27.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then30 ], [ 1, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv3028_update_cfg(ptr nocapture noundef readonly %rv3028, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %eerd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eerd) #10
  %0 = ptrtoint ptr %eerd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %eerd, align 4, !annotation !86
  %call = call fastcc i32 @rv3028_enter_eerd(ptr noundef %rv3028, ptr noundef nonnull %eerd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rv3028, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %reg, i32 noundef %mask, i32 noundef %val, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  %3 = ptrtoint ptr %eerd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %eerd, align 4
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rv3028, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc i32 @rv3028_update_eeprom(ptr noundef %rv3028, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.then3.cleanup_crit_edge ], [ %call.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eerd) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv3028_clkout_register_clk(ptr noundef %rv3028, ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #10
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %4 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rv3028, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 14, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %6 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.23, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rv3028_clkout_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %num_parents, align 4
  %clkout_hw = getelementptr inbounds %struct.rv3028_data, ptr %rv3028, i32 0, i32 3
  %init1 = getelementptr inbounds %struct.rv3028_data, ptr %rv3028, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %init1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %init, ptr %init1, align 4
  %call3 = call i32 @of_property_read_string(ptr noundef %3, ptr noundef nonnull @.str.24, ptr noundef nonnull %init) #10
  %call6 = call ptr @devm_clk_register(ptr noundef %dev, ptr noundef %clkout_hw) #10
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv3028_enter_eerd(ptr nocapture noundef readonly %rv3028, ptr nocapture noundef %eerd) unnamed_addr #2 align 64 {
entry:
  %ctrl1 = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl1) #10
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ctrl1, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %status, align 4, !annotation !86
  %2 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rv3028, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 15, ptr noundef nonnull %ctrl1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl1, align 4
  %and = and i32 %5, 8
  %6 = ptrtoint ptr %eerd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %eerd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rv3028, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 15, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = call i64 @ktime_get() #10
  %add.i = add i64 %call9, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 208) #10
  %9 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rv3028, align 4
  %call2077 = call i32 @regmap_read(ptr noundef %10, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2077)
  %tobool21.not78 = icmp eq i32 %call2077, 0
  br i1 %tobool21.not78, label %if.end8.lor.lhs.false_crit_edge, label %if.end8.if.then44_crit_edge

if.end8.if.then44_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.end8.lor.lhs.false_crit_edge:                  ; preds = %if.end8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then35.lor.lhs.false_crit_edge, %if.end8.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %and22 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call27 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call27, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call27, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #10
  %13 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rv3028, align 4
  %call20 = call i32 @regmap_read(ptr noundef %14, i32 noundef 14, ptr noundef nonnull %status) #10
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then35.lor.lhs.false_crit_edge, label %if.then35.if.then44_crit_edge

if.then35.if.then44_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then35.lor.lhs.false_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rv3028, align 4
  %call32 = call i32 @regmap_read(ptr noundef %16, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool37.not = icmp eq i32 %call32, 0
  br i1 %tobool37.not, label %for.end.lor.rhs_crit_edge, label %for.end.if.then44_crit_edge

for.end.if.then44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %and38 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.if.then44_crit_edge

lor.rhs.if.then44_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then44:                                        ; preds = %lor.rhs.if.then44_crit_edge, %for.end.if.then44_crit_edge, %if.then35.if.then44_crit_edge, %if.end8.if.then44_crit_edge
  %tobool37.not70.ph = phi i32 [ %call2077, %if.end8.if.then44_crit_edge ], [ -110, %lor.rhs.if.then44_crit_edge ], [ %call32, %for.end.if.then44_crit_edge ], [ %call20, %if.then35.if.then44_crit_edge ]
  %19 = ptrtoint ptr %eerd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eerd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rv3028, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then44.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.end3.cleanup_crit_edge ], [ %tobool37.not70.ph, %if.then44.cleanup_crit_edge ], [ %tobool37.not70.ph, %if.end.i ], [ 0, %lor.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl1) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timestamp0_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  %count = alloca i32, align 4
  %date = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #10
  %4 = getelementptr inbounds i8, ptr %tm, i32 24
  %5 = call ptr @memset(ptr %4, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #10
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %count, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %date) #10
  %7 = getelementptr inbounds [6 x i8], ptr %date, i32 0, i32 1
  %8 = getelementptr inbounds [6 x i8], ptr %date, i32 0, i32 2
  %9 = getelementptr inbounds [6 x i8], ptr %date, i32 0, i32 3
  %10 = getelementptr inbounds [6 x i8], ptr %date, i32 0, i32 4
  %11 = getelementptr inbounds [6 x i8], ptr %date, i32 0, i32 5
  %12 = call ptr @memset(ptr %date, i32 255, i32 6)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call1 = call i32 @regmap_read(ptr noundef %14, i32 noundef 20, ptr noundef nonnull %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not = icmp eq i32 %16, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %call6 = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef 21, ptr noundef nonnull %date, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cond.end, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %if.end4
  %19 = ptrtoint ptr %date to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %date, align 1
  %call14 = call i32 @_bcd2bin(i8 noundef zeroext %20) #14
  %21 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call14, ptr %tm, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %7, align 1
  %call27 = call i32 @_bcd2bin(i8 noundef zeroext %23) #14
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %24 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call27, ptr %tm_min, align 4
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %8, align 1
  %call42 = call i32 @_bcd2bin(i8 noundef zeroext %26) #14
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %27 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call42, ptr %tm_hour, align 4
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %9, align 1
  %call57 = call i32 @_bcd2bin(i8 noundef zeroext %29) #14
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %30 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call57, ptr %tm_mday, align 4
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %10, align 1
  %call72 = call i32 @_bcd2bin(i8 noundef zeroext %32) #14
  %sub = add i32 %call72, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %33 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %tm_mon, align 4
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %11, align 1
  %call87 = call i32 @_bcd2bin(i8 noundef zeroext %35) #14
  %add90 = add i32 %call87, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %36 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add90, ptr %tm_year, align 4
  %call91 = call i32 @rtc_valid_tm(ptr noundef nonnull %tm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end94:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call95 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm) #10
  %call96 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i64 noundef %call95)
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %cond.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call96, %if.end94 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ %call91, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %date) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timestamp0_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 19, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 %count
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv3028_update_eeprom(ptr nocapture noundef readonly %rv3028, i32 noundef %eerd) unnamed_addr #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !86
  %1 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rv3028, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 39, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_eerd_crit_edge

entry.exit_eerd_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_eerd

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rv3028, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 39, i32 noundef 17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.exit_eerd_crit_edge

if.end.exit_eerd_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_eerd

if.end5:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 63000, i32 noundef 100000, i32 noundef 2) #10
  %call6 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call6, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 235) #10
  %5 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rv3028, align 4
  %call1763 = call i32 @regmap_read(ptr noundef %6, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1763)
  %tobool18.not64 = icmp eq i32 %call1763, 0
  br i1 %tobool18.not64, label %if.end5.lor.lhs.false_crit_edge, label %if.end5.exit_eerd_crit_edge

if.end5.exit_eerd_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_eerd

if.end5.lor.lhs.false_crit_edge:                  ; preds = %if.end5
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then31.lor.lhs.false_crit_edge, %if.end5.lor.lhs.false_crit_edge
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call23 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call23, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #10
  %9 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rv3028, align 4
  %call17 = call i32 @regmap_read(ptr noundef %10, i32 noundef 14, ptr noundef nonnull %status) #10
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then31.lor.lhs.false_crit_edge, label %if.then31.exit_eerd_crit_edge

if.then31.exit_eerd_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_eerd

if.then31.lor.lhs.false_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rv3028, align 4
  %call28 = call i32 @regmap_read(ptr noundef %12, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool33.not = icmp eq i32 %call28, 0
  br i1 %tobool33.not, label %for.end.lor.rhs_crit_edge, label %for.end.exit_eerd_crit_edge

for.end.exit_eerd_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_eerd

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and34 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %phi.sel = select i1 %tobool35.not, i32 0, i32 -110
  br label %exit_eerd

exit_eerd:                                        ; preds = %lor.rhs, %for.end.exit_eerd_crit_edge, %if.then31.exit_eerd_crit_edge, %if.end5.exit_eerd_crit_edge, %if.end.exit_eerd_crit_edge, %entry.exit_eerd_crit_edge
  %ret.0 = phi i32 [ %call, %entry.exit_eerd_crit_edge ], [ %call2, %if.end.exit_eerd_crit_edge ], [ %call28, %for.end.exit_eerd_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call1763, %if.end5.exit_eerd_crit_edge ], [ %call17, %if.then31.exit_eerd_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eerd)
  %tobool.not.i = icmp eq i32 %eerd, 0
  br i1 %tobool.not.i, label %if.end.i, label %exit_eerd.rv3028_exit_eerd.exit_crit_edge

exit_eerd.rv3028_exit_eerd.exit_crit_edge:        ; preds = %exit_eerd
  call void @__sanitizer_cov_trace_pc() #12
  br label %rv3028_exit_eerd.exit

if.end.i:                                         ; preds = %exit_eerd
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %rv3028 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rv3028, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %rv3028_exit_eerd.exit

rv3028_exit_eerd.exit:                            ; preds = %if.end.i, %exit_eerd.rv3028_exit_eerd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timestamp0_count_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #10
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %count, align 4, !annotation !86
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 20, ptr noundef nonnull %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_ioctl(ptr nocapture noundef readonly %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147192813, i32 %cmd)
  %cond6 = icmp eq i32 %cmd, -2147192813
  br i1 %cond6, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 1
  store i32 %and, ptr %status, align 4
  %7 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 597) #10
  %8 = call i32 @llvm.read_register.i32(metadata !76) #10
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !87
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  %11 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 %and, i32 -1226833921) #10, !srcloc !90
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !88
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_get_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %date = alloca [7 x i8], align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %date) #10
  %2 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 6
  %8 = call ptr @memset(ptr %date, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %status, align 4, !annotation !86
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %11, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call5 = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %date, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cond.end, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %date to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %date, align 1
  %18 = and i8 %17, 127
  %call22 = call i32 @_bcd2bin(i8 noundef zeroext %18) #14
  %19 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call22, ptr %tm, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %2, align 1
  %22 = and i8 %21, 127
  %call43 = call i32 @_bcd2bin(i8 noundef zeroext %22) #14
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %23 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call43, ptr %tm_min, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 1
  %26 = and i8 %25, 63
  %call66 = call i32 @_bcd2bin(i8 noundef zeroext %26) #14
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %27 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call66, ptr %tm_hour, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  %30 = and i8 %29, 127
  %and71 = zext i8 %30 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %31 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and71, ptr %tm_wday, align 4
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  %34 = and i8 %33, 63
  %call92 = call i32 @_bcd2bin(i8 noundef zeroext %34) #14
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %35 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call92, ptr %tm_mday, align 4
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %6, align 1
  %38 = and i8 %37, 31
  %call115 = call i32 @_bcd2bin(i8 noundef zeroext %38) #14
  %sub = add i32 %call115, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %39 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub, ptr %tm_mon, align 4
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %7, align 1
  %call130 = call i32 @_bcd2bin(i8 noundef zeroext %41) #14
  %add133 = add i32 %call130, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %42 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add133, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %date) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %date = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %date) #10
  %2 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 6
  %8 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm, align 4
  %call4 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #14
  %10 = ptrtoint ptr %date to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call4, ptr %date, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %11 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min, align 4
  %call17 = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #14
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call17, ptr %2, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %14 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_hour, align 4
  %call33 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #14
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call33, ptr %3, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %17 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_wday, align 4
  %conv39 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv39, ptr %4, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday, align 4
  %call51 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #14
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call51, ptr %5, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %23 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tm_mon, align 4
  %add57 = add i32 %24, 1
  %call71 = tail call zeroext i8 @_bin2bcd(i32 noundef %add57) #14
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call71, ptr %6, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %26 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_year, align 4
  %sub = add i32 %27, -100
  %call90 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #14
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call90, ptr %7, align 1
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call96 = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 0, ptr noundef nonnull %date, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool.not = icmp eq i32 %call96, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 14, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call96, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %date) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_get_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %alarmvals = alloca [3 x i8], align 1
  %status = alloca i32, align 4
  %ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %alarmvals) #10
  %2 = ptrtoint ptr %alarmvals to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %alarmvals, align 1, !annotation !86
  %3 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !86
  %5 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %status, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #10
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ctrl, align 4, !annotation !86
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 7, ptr noundef nonnull %alarmvals, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call3 = call i32 @regmap_read(ptr noundef %12, i32 noundef 14, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call7 = call i32 @regmap_read(ptr noundef %14, i32 noundef 16, ptr noundef nonnull %ctrl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %15 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %time, align 4
  %16 = ptrtoint ptr %alarmvals to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %alarmvals, align 1
  %18 = and i8 %17, 127
  %call23 = call i32 @_bcd2bin(i8 noundef zeroext %18) #14
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call23, ptr %tm_min, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %22 = and i8 %21, 63
  %call45 = call i32 @_bcd2bin(i8 noundef zeroext %22) #14
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call45, ptr %tm_hour, align 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %5, align 1
  %26 = and i8 %25, 63
  %call69 = call i32 @_bcd2bin(i8 noundef zeroext %26) #14
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call69, ptr %tm_mday, align 4
  %28 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctrl, align 4
  %30 = trunc i32 %29 to i8
  %31 = lshr i8 %30, 3
  %32 = and i8 %31, 1
  %33 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %alrm, align 4
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  %and77 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp ne i32 %and77, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool81 = icmp ne i8 %32, 0
  %spec.select = select i1 %tobool78.not, i1 %tobool81, i1 false
  %conv82 = zext i1 %spec.select to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %36 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv82, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %alarmvals) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_set_alarm(ptr nocapture noundef readonly %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %alarmvals = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %alarmvals) #10
  %2 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 2
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %4 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #10
  %6 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %time, align 4
  %sub = sub i32 60, %7
  %conv = sext i32 %sub to i64
  %add = add i64 %call2, %conv
  tail call void @rtc_time64_to_tm(i64 noundef %add, ptr noundef %time) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 16, i32 noundef 40, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %cond.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %if.end
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_min, align 4
  %call19 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #14
  %12 = ptrtoint ptr %alarmvals to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call19, ptr %alarmvals, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_hour, align 4
  %call36 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #14
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call36, ptr %2, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mday, align 4
  %call56 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #14
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call56, ptr %3, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i126 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 14, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool64.not = icmp eq i32 %call.i126, 0
  br i1 %tobool64.not, label %if.end66, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %cond.end
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call68 = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef 7, ptr noundef nonnull %alarmvals, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  %23 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool72.not = icmp eq i8 %24, 0
  br i1 %tobool72.not, label %if.end71.if.end88_crit_edge, label %if.then73

if.end71.if.end88_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %rtc = getelementptr inbounds %struct.rv3028_data, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtc, align 4
  %enabled74 = getelementptr inbounds %struct.rtc_device, ptr %26, i32 0, i32 15, i32 4
  %27 = ptrtoint ptr %enabled74 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enabled74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool75.not = icmp eq i32 %28, 0
  %spec.select = select i1 %tobool75.not, i8 0, i8 32
  %enabled81 = getelementptr inbounds %struct.rtc_device, ptr %26, i32 0, i32 14, i32 4
  %29 = ptrtoint ptr %enabled81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %enabled81, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool82.not = icmp eq i32 %30, 0
  %31 = or i8 %spec.select, 8
  %spec.select125 = select i1 %tobool82.not, i8 %spec.select, i8 %31
  %phi.cast = zext i8 %spec.select125 to i32
  br label %if.end88

if.end88:                                         ; preds = %if.then73, %if.end71.if.end88_crit_edge
  %ctrl.1 = phi i32 [ 0, %if.end71.if.end88_crit_edge ], [ %phi.cast, %if.then73 ]
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i127 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 16, i32 noundef 40, i32 noundef %ctrl.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.end66.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i127, %if.end88 ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i126, %cond.end.cleanup_crit_edge ], [ %call68, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %alarmvals) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rtc = getelementptr inbounds %struct.rv3028_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtc, align 4
  %enabled1 = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %enabled1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 32
  %enabled5 = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 14, i32 4
  %6 = ptrtoint ptr %enabled5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  %or8 = or i32 %spec.select, 8
  %spec.select30 = select i1 %tobool6.not, i32 %spec.select, i32 %or8
  br label %if.end10

if.end10:                                         ; preds = %if.then, %entry.if.end10_crit_edge
  %ctrl.1 = phi i32 [ 0, %entry.if.end10_crit_edge ], [ %spec.select30, %if.then ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 14, i32 noundef 20, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 16, i32 noundef 40, i32 noundef %ctrl.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end10.cleanup_crit_edge ], [ %call.i31, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_read_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %offset) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !86
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 54, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call4 = call i32 @regmap_read(ptr noundef %8, i32 noundef 55, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i32 %6, 24
  %shr.i = ashr exact i32 %shl, 23
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %shr = ashr i32 %10, 7
  %add = add nsw i32 %shr, %shr.i
  %mul = mul i32 %add, 953674
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp8 = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp8, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %mul
  %cond = sdiv i32 %cond.in, 1000
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call1, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_set_offset(ptr nocapture noundef readonly %dev, i32 noundef %offset) #2 align 64 {
entry:
  %eerd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eerd) #10
  %2 = ptrtoint ptr %eerd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %eerd, align 4, !annotation !86
  %3 = tail call i32 @llvm.smax.i32(i32 %offset, i32 -244141)
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 243187)
  %mul = mul nsw i32 %4, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp sgt i32 %3, 0
  %cond19.in.v = select i1 %cmp8, i32 476837, i32 -476837
  %cond19.in = add nsw i32 %mul, %cond19.in.v
  %cond19 = sdiv i32 %cond19.in, 953674
  %call20 = call fastcc i32 @rv3028_enter_eerd(ptr noundef %1, ptr noundef nonnull %eerd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %shr = ashr i32 %cond19, 1
  %call21 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 54, i32 noundef %shr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end.exit_eerd_crit_edge, label %if.end25

if.end.exit_eerd_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_eerd

if.end25:                                         ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %shl = shl nsw i32 %cond19, 7
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 55, i32 noundef 128, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp28 = icmp slt i32 %call.i, 0
  br i1 %cmp28, label %if.end25.exit_eerd_crit_edge, label %if.end31

if.end25.exit_eerd_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_eerd

if.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %eerd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eerd, align 4
  %call32 = tail call fastcc i32 @rv3028_update_eeprom(ptr noundef %1, i32 noundef %10)
  br label %cleanup

exit_eerd:                                        ; preds = %if.end25.exit_eerd_crit_edge, %if.end.exit_eerd_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end.exit_eerd_crit_edge ], [ %call.i, %if.end25.exit_eerd_crit_edge ]
  %11 = ptrtoint ptr %eerd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eerd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %exit_eerd.cleanup_crit_edge

exit_eerd.cleanup_crit_edge:                      ; preds = %exit_eerd
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %exit_eerd
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %exit_eerd.cleanup_crit_edge, %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end31 ], [ %call20, %entry.cleanup_crit_edge ], [ %ret.0, %exit_eerd.cleanup_crit_edge ], [ %ret.0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eerd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_param_get(ptr nocapture noundef readonly %dev, ptr nocapture noundef %param) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %param, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %1)
  %cond = icmp eq i64 %1, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 55, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %do.end14

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end14:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %and = lshr i32 %7, 2
  %shr = and i32 %and, 3
  store i32 %shr, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %switch.selectcmp = icmp eq i32 %shr, 3
  %switch.select = select i1 %switch.selectcmp, i64 2, i64 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %switch.selectcmp25 = icmp eq i32 %shr, 1
  %switch.select26 = select i1 %switch.selectcmp25, i64 1, i64 %switch.select
  %8 = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %switch.select26, ptr %8, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_param_set(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %param) #2 align 64 {
entry:
  %eerd.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %param, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %3)
  %cond = icmp eq i64 %3, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = getelementptr inbounds %struct.rtc_param, ptr %param, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %6)
  %7 = icmp ult i64 %6, 3
  br i1 %7, label %switch.lookup, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb
  %8 = trunc i64 %6 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rv3028_param_set, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eerd.i) #10
  %10 = ptrtoint ptr %eerd.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %eerd.i, align 4, !annotation !86
  %call.i = call fastcc i32 @rv3028_enter_eerd(ptr noundef %1, ptr noundef nonnull %eerd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %switch.lookup.rv3028_update_cfg.exit_crit_edge

switch.lookup.rv3028_update_cfg.exit_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %rv3028_update_cfg.exit

if.end.i:                                         ; preds = %switch.lookup
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 55, i32 noundef 12, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  %13 = ptrtoint ptr %eerd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eerd.i, align 4
  br i1 %tobool2.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then3.i.rv3028_update_cfg.exit_crit_edge

if.then3.i.rv3028_update_cfg.exit_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rv3028_update_cfg.exit

if.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %rv3028_update_cfg.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call fastcc i32 @rv3028_update_eeprom(ptr noundef %1, i32 noundef %14) #10
  br label %rv3028_update_cfg.exit

rv3028_update_cfg.exit:                           ; preds = %if.end5.i, %if.end.i.i, %if.then3.i.rv3028_update_cfg.exit_crit_edge, %switch.lookup.rv3028_update_cfg.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end5.i ], [ %call.i, %switch.lookup.rv3028_update_cfg.exit_crit_edge ], [ %call.i.i, %if.then3.i.rv3028_update_cfg.exit_crit_edge ], [ %call.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eerd.i) #10
  br label %cleanup

cleanup:                                          ; preds = %rv3028_update_cfg.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %rv3028_update_cfg.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_clkout_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 53, i32 noundef 192) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rv3028_clkout_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 53, i32 noundef 0) #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 14, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_clkout_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %clkout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clkout) #10
  %0 = ptrtoint ptr %clkout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clkout, align 4, !annotation !86
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 53, ptr noundef nonnull %clkout) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %clkout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clkout, align 4
  %and = lshr i32 %4, 7
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clkout) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_clkout_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %clkout = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clkout) #10
  %0 = ptrtoint ptr %clkout to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %clkout, align 4, !annotation !86
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 53, ptr noundef nonnull %clkout) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %clkout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clkout, align 4
  %and = and i32 %4, 7
  %arrayidx = getelementptr [6 x i32], ptr @clkout_rates, i32 0, i32 %and
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clkout) #10
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_clkout_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %rate)
  %cmp1.not = icmp ult i32 %rate, 32768
  br i1 %cmp1.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %rate)
  %cmp1.not.1 = icmp ult i32 %rate, 8192
  br i1 %cmp1.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %rate)
  %cmp1.not.2 = icmp ult i32 %rate, 1024
  br i1 %cmp1.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %rate)
  %cmp1.not.3 = icmp ult i32 %rate, 64
  br i1 %cmp1.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rate)
  %cmp1.not.4 = icmp ult i32 %rate, 32
  br i1 %cmp1.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1.not.5 = icmp ne i32 %rate, 0
  %spec.select = zext i1 %cmp1.not.5 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32768, %entry.cleanup_crit_edge ], [ 8192, %for.cond.cleanup_crit_edge ], [ 1024, %for.cond.1.cleanup_crit_edge ], [ 64, %for.cond.2.cleanup_crit_edge ], [ 32, %for.cond.3.cleanup_crit_edge ], [ %spec.select, %for.cond.4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3028_clkout_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %eerd.i = alloca i32, align 4
  %enabled = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #10
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enabled, align 4, !annotation !86
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 53, ptr noundef nonnull %enabled) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call2 = call i32 @regmap_write(ptr noundef %4, i32 noundef 53, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enabled, align 4
  %and = and i32 %6, 128
  store i32 %and, ptr %enabled, align 4
  %7 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %rate, label %if.end5.cleanup_crit_edge [
    i32 32768, label %if.end5.if.then8_crit_edge
    i32 8192, label %if.then8.fold.split
    i32 1024, label %if.then8.fold.split26
    i32 64, label %if.then8.fold.split27
    i32 32, label %if.then8.fold.split28
    i32 1, label %if.then8.fold.split29
  ]

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.fold.split:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split26:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split27:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split28:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8.fold.split29:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %if.then8.fold.split29, %if.then8.fold.split28, %if.then8.fold.split27, %if.then8.fold.split26, %if.then8.fold.split, %if.end5.if.then8_crit_edge
  %i.024.lcssa = phi i32 [ 0, %if.end5.if.then8_crit_edge ], [ 1, %if.then8.fold.split ], [ 2, %if.then8.fold.split26 ], [ 3, %if.then8.fold.split27 ], [ 4, %if.then8.fold.split28 ], [ 5, %if.then8.fold.split29 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eerd.i) #10
  %8 = ptrtoint ptr %eerd.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %eerd.i, align 4, !annotation !86
  %call.i = call fastcc i32 @rv3028_enter_eerd(ptr noundef %add.ptr, ptr noundef nonnull %eerd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.rv3028_update_cfg.exit_crit_edge

if.then8.rv3028_update_cfg.exit_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %rv3028_update_cfg.exit

if.end.i:                                         ; preds = %if.then8
  %or = or i32 %and, %i.024.lcssa
  %or9 = or i32 %or, 64
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 53, i32 noundef 255, i32 noundef %or9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  %11 = ptrtoint ptr %eerd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eerd.i, align 4
  br i1 %tobool2.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then3.i.rv3028_update_cfg.exit_crit_edge

if.then3.i.rv3028_update_cfg.exit_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rv3028_update_cfg.exit

if.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %rv3028_update_cfg.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = call fastcc i32 @rv3028_update_eeprom(ptr noundef %add.ptr, i32 noundef %12) #10
  br label %rv3028_update_cfg.exit

rv3028_update_cfg.exit:                           ; preds = %if.end5.i, %if.end.i.i, %if.then3.i.rv3028_update_cfg.exit_crit_edge, %if.then8.rv3028_update_cfg.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end5.i ], [ %call.i, %if.then8.rv3028_update_cfg.exit_crit_edge ], [ %call.i.i, %if.then3.i.rv3028_update_cfg.exit_crit_edge ], [ %call.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eerd.i) #10
  br label %cleanup

cleanup:                                          ; preds = %rv3028_update_cfg.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %rv3028_update_cfg.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !62, !64, !66, !68, !70, !72, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_rtc_rv3028__302_988_rv3028_driver_init6, !1, !"__initcall__kmod_rtc_rv3028__302_988_rv3028_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rv3028.c", i32 988, i32 1}
!2 = !{ptr @__exitcall_rv3028_driver_exit, !1, !"__exitcall_rv3028_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-rv3028.c", i32 990, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-rv3028.c", i32 991, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-rv3028.c", i32 992, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-rv3028.c", i32 983, i32 11}
!12 = !{ptr @rv3028_driver, !13, !"rv3028_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-rv3028.c", i32 981, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-rv3028.c", i32 865, i32 11}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-rv3028.c", i32 874, i32 11}
!18 = !{ptr @rv3028_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-rv3028.c", i32 888, i32 19}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-rv3028.c", i32 899, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rv3028_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @rv3028_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-rv3028.c", i32 909, i32 7}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-rv3028.c", i32 911, i32 4}
!33 = !{ptr @rv3028_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rv3028_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-rv3028.c", i32 931, i32 46}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-rv3028.c", i32 945, i32 4}
!39 = !{ptr @rv3028_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rv3028_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @regmap_config, !42, !"regmap_config", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-rv3028.c", i32 853, i32 35}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-rv3028.c", i32 302, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rv3028_handle_irq._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rv3028_handle_irq._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-rv3028.c", i32 153, i32 8}
!50 = !{ptr @dev_attr_timestamp0, !49, !"dev_attr_timestamp0", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-rv3028.c", i32 149, i32 22}
!53 = distinct !{null, !54, !"rv3028_trickle_resistors", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-rv3028.c", i32 104, i32 12}
!55 = !{ptr @rv3028_attr_group, !56, !"rv3028_attr_group", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-rv3028.c", i32 176, i32 37}
!57 = !{ptr @rv3028_attrs, !58, !"rv3028_attrs", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-rv3028.c", i32 170, i32 26}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-rv3028.c", i32 168, i32 8}
!61 = !{ptr @dev_attr_timestamp0_count, !60, !"dev_attr_timestamp0_count", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-rv3028.c", i32 165, i32 22}
!64 = !{ptr @rv3028_rtc_ops, !65, !"rv3028_rtc_ops", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-rv3028.c", i32 840, i32 35}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-rv3028.c", i32 821, i32 14}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-rv3028.c", i32 829, i32 32}
!70 = !{ptr @rv3028_clkout_ops, !71, !"rv3028_clkout_ops", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-rv3028.c", i32 799, i32 29}
!72 = !{ptr @clkout_rates, !73, !"clkout_rates", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-rv3028.c", i32 710, i32 12}
!74 = !{ptr @rv3028_of_match, !75, !"rv3028_of_match", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-rv3028.c", i32 975, i32 49}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i64 6449936}
!88 = !{i64 6450133}
!89 = !{i64 2153935366}
!90 = !{i64 2155935918, i64 2155936198, i64 2155936532, i64 2155936866}
