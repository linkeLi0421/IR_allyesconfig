; ModuleID = '/llk/IR_all_yes/drivers/hwmon/sht15.c_pt.bc'
source_filename = "../drivers/hwmon/sht15.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.sht15_temppair = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sht15_data = type { ptr, ptr, %struct.work_struct, %struct.wait_queue_head, i16, i16, i8, i8, i8, i32, i8, i8, i32, i32, %struct.mutex, ptr, ptr, ptr, %struct.notifier_block, i32, i8, %struct.work_struct, %struct.atomic_t }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_sht15__288_1064_sht15_driver_init6 = internal global ptr @sht15_driver_init, section ".initcall6.init", align 4
@sht15_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sht15_probe, ptr @sht15_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sht15_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sht15_device_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sht15_driver_exit = internal global ptr @sht15_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [31 x i8] c"sht15.file=drivers/hwmon/sht15\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [18 x i8] c"sht15.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [73 x i8] c"sht15.description=Sensirion SHT15 temperature and humidity sensor driver\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sht15\00", [26 x i8] zeroinitializer }, align 32
@sht15_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,sht15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sht15_device_ids = internal constant { [6 x %struct.platform_device_id], [48 x i8] } { [6 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"sht10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"sht11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"sht15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"sht71\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.platform_device_id { [20 x i8] c"sht75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sht15_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&data->read_work)\00", [60 x i8] zeroinitializer }, align 32
@sht15_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&data->update_supply_work)\00", [51 x i8] zeroinitializer }, align 32
@sht15_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&data->read_lock\00", [47 x i8] zeroinitializer }, align 32
@sht15_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&data->wait_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@sht15_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 947, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sht15_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/hwmon/sht15.c\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sht15_probe._entry_ptr = internal global ptr @sht15_probe._entry, section ".printk_index", align 4
@sht15_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.11, i32 959, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"regulator notifier request failed\0A\00", [61 x i8] zeroinitializer }, align 32
@sht15_probe._entry_ptr.16 = internal global ptr @sht15_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"clk\00", [28 x i8] zeroinitializer }, align 32
@sht15_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.11, i32 969, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"clock line GPIO request failed\0A\00", [32 x i8] zeroinitializer }, align 32
@sht15_probe._entry_ptr.20 = internal global ptr @sht15_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@sht15_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.11, i32 975, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"data line GPIO request failed\0A\00", [33 x i8] zeroinitializer }, align 32
@sht15_probe._entry_ptr.24 = internal global ptr @sht15_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sht15 data\00", [21 x i8] zeroinitializer }, align 32
@sht15_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str.11, i32 985, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get irq for data line\0A\00", [63 x i8] zeroinitializer }, align 32
@sht15_probe._entry_ptr.28 = internal global ptr @sht15_probe._entry.26, section ".printk_index", align 4
@sht15_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sht15_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sht15_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.10, ptr @.str.11, i32 998, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sysfs create failed\0A\00", [43 x i8] zeroinitializer }, align 32
@sht15_probe._entry_ptr.31 = internal global ptr @sht15_probe._entry.29, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@sht15_crc8_table = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\001bS\C4\F5\A6\97\B9\88\DB\EA}L\1F.Cr!\10\87\B6\E5\D4\FA\CB\98\A9>\0F\\m\86\B7\E4\D5Bs \11?\0E]l\FB\CA\99\A8\C5\F4\A7\96\010cR|M\1E/\B8\89\DA\EB=\0C_n\F9\C8\9B\AA\84\B5\E6\D7@q\22\13~O\1C-\BA\8B\D8\E9\C7\F6\A5\94\032aP\BB\8A\D9\E8\7FN\1D,\023`Q\C6\F7\A4\95\F8\C9\9A\AB<\0D^oAp#\12\85\B4\E7\D6zK\18)\BE\8F\DC\ED\C3\F2\A1\90\076eT9\08[j\FD\CC\9F\AE\80\B1\E2\D3Du&\17\FC\CD\9E\AF8\09ZkEt'\16\81\B0\E3\D2\BF\8E\DD\EC{J\19(\067dU\C2\F3\A0\91Gv%\14\83\B2\E1\D0\FE\CF\9C\AD:\0BXi\045fW\C0\F1\A2\93\BD\8C\DF\EEyH\1B*\C1\F0\A3\92\054gVxI\1A+\BC\8D\DE\EF\82\B3\E0\D1Fw$\15;\0AYh\FF\CE\9D\AC", [64 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sht15_wait_for_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.11, i32 301, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Command not acknowledged\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sht15_wait_for_response\00", [40 x i8] zeroinitializer }, align 32
@sht15_wait_for_response._entry_ptr = internal global ptr @sht15_wait_for_response._entry, section ".printk_index", align 4
@sht15_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_humidity1_input, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_humidity1_fault, ptr @sensor_dev_attr_heater_enable, ptr @dev_attr_name, ptr null], [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sht15_temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_humidity1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sht15_humidity_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sht15_status_show, ptr null }, i32 64 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_humidity1_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sht15_status_show, ptr null }, i32 64 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_heater_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sht15_status_show, ptr @sht15_status_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sht15_measurement._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.11, i32 571, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"CRC validation failed, unable to restore device settings\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sht15_measurement\00", [46 x i8] zeroinitializer }, align 32
@sht15_measurement._entry_ptr = internal global ptr @sht15_measurement._entry, section ".printk_index", align 4
@temppoints = internal constant { [5 x %struct.sht15_temppair], [56 x i8] } { [5 x %struct.sht15_temppair] [%struct.sht15_temppair { i32 2500000, i32 -39400 }, %struct.sht15_temppair { i32 3000000, i32 -39600 }, %struct.sht15_temppair { i32 3500000, i32 -39700 }, %struct.sht15_temppair { i32 4000000, i32 -39800 }, %struct.sht15_temppair { i32 5000000, i32 -40100 }], [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"humidity1_input\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@sht15_update_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.40, ptr @.str.11, i32 494, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sht15_update_status\00", [44 x i8] zeroinitializer }, align 32
@sht15_update_status._entry_ptr = internal global ptr @sht15_update_status._entry, section ".printk_index", align 4
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"humidity1_fault\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"heater_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"sht15_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1055, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1057, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"sht15_dt_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 909, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"sht15_device_ids\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1045, i32 40 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 925, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 926, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 928, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 930, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 936, i32 53 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 946, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 958, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 966, i32 41 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 969, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 972, i32 42 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 975, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 982, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 985, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"sht15_attr_group\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 795, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 998, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"sht15_crc8_table\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 84, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 301, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"sht15_attrs\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 785, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_humidity1_input\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_fault\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_humidity1_fault\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_heater_enable\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 777, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 745, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 569, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant [11 x i8] c"temppoints\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 75, i32 36 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 778, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 779, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 492, i32 6 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 781, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 783, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 784, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [25 x i8] c"../drivers/hwmon/sht15.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 774, i32 22 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_sht15_driver_exit, ptr @__initcall__kmod_sht15__288_1064_sht15_driver_init6, ptr @sht15_driver_exit, ptr @sht15_measurement._entry, ptr @sht15_measurement._entry_ptr, ptr @sht15_probe._entry, ptr @sht15_probe._entry.14, ptr @sht15_probe._entry.18, ptr @sht15_probe._entry.22, ptr @sht15_probe._entry.26, ptr @sht15_probe._entry.29, ptr @sht15_probe._entry_ptr, ptr @sht15_probe._entry_ptr.16, ptr @sht15_probe._entry_ptr.20, ptr @sht15_probe._entry_ptr.24, ptr @sht15_probe._entry_ptr.28, ptr @sht15_probe._entry_ptr.31, ptr @sht15_update_status._entry, ptr @sht15_update_status._entry_ptr, ptr @sht15_wait_for_response._entry, ptr @sht15_wait_for_response._entry_ptr, ptr @sht15_driver, ptr @.str, ptr @sht15_dt_match, ptr @sht15_device_ids, ptr @sht15_probe.__key, ptr @.str.1, ptr @sht15_probe.__key.2, ptr @.str.3, ptr @sht15_probe.__key.4, ptr @.str.5, ptr @sht15_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @sht15_attr_group, ptr @.str.30, ptr @sht15_crc8_table, ptr @.str.32, ptr @.str.33, ptr @sht15_attrs, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_humidity1_input, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_humidity1_fault, ptr @sensor_dev_attr_heater_enable, ptr @dev_attr_name, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @temppoints, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_device_ids to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_crc8_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_wait_for_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_humidity1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_humidity1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_heater_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_measurement._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temppoints to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht15_update_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sht15_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sht15_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sht15_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sht15_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht15_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 300, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup133_crit_edge, label %do.body

entry.cleanup133_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

do.body:                                          ; preds = %entry
  %read_work = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %read_work, i32 noundef 0) #8
  %0 = ptrtoint ptr %read_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %read_work, align 4
  %lockdep_map = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @sht15_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry5 = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sht15_bh_read_data, ptr %func, align 4
  %update_supply_work = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 21
  tail call void @__init_work(ptr noundef %update_supply_work, i32 noundef 0) #8
  %4 = ptrtoint ptr %update_supply_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %update_supply_work, align 4
  %lockdep_map13 = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 21, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map13, ptr noundef nonnull @.str.3, ptr noundef nonnull @sht15_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry15 = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 21, i32 1
  %5 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i201 = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 21, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i201 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry15, ptr %prev.i201, align 4
  %func17 = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 21, i32 2
  %7 = ptrtoint ptr %func17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sht15_update_voltage, ptr %func17, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %read_lock = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %read_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @sht15_probe.__key.4) #8
  %dev24 = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 15
  %9 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev24, align 4
  %wait_queue = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue, ptr noundef nonnull @.str.7, ptr noundef nonnull @sht15_probe.__key.6) #8
  %10 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev24, align 4
  %call29 = tail call ptr @devm_regulator_get_optional(ptr noundef %11, ptr noundef nonnull @.str.8) #8
  %reg = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 17
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body.if.end58_crit_edge, label %if.then32

do.body.if.end58_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then32:                                        ; preds = %do.body
  %call34 = tail call i32 @regulator_get_voltage(ptr noundef %call29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then32.if.end37_crit_edge, label %if.then36

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %supply_uv = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 19
  %13 = ptrtoint ptr %supply_uv to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call34, ptr %supply_uv, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then32.if.end37_crit_edge
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %call39 = tail call i32 @regulator_enable(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp.not = icmp eq i32 %call39, 0
  br i1 %cmp.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call39) #11
  br label %cleanup133

if.end45:                                         ; preds = %if.end37
  %nb = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 18
  %16 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sht15_invalidate_voltage, ptr %nb, align 4
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  %call48 = tail call i32 @regulator_register_notifier(ptr noundef %18, ptr noundef %nb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end45.if.end58_crit_edge, label %do.end53

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg, align 4
  %call56 = tail call i32 @regulator_disable(ptr noundef %20) #8
  br label %cleanup133

if.end58:                                         ; preds = %if.end45.if.end58_crit_edge, %do.body.if.end58_crit_edge
  %call60 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 3) #8
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call60, ptr %call.i, align 4
  %cmp.i202 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then63, label %if.end70

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call60 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %err_release_reg

if.end70:                                         ; preds = %if.end58
  %call72 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 1) #8
  %data73 = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %data73 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call72, ptr %data73, align 4
  %cmp.i203 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then76, label %if.end83

if.then76:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call72 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  br label %err_release_reg

if.end83:                                         ; preds = %if.end70
  %call86 = tail call i32 @gpiod_to_irq(ptr noundef %call72) #8
  %call.i204 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call86, ptr noundef nonnull @sht15_interrupt_fired, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool88.not = icmp eq i32 %call.i204, 0
  br i1 %tobool88.not, label %if.end94, label %do.end92

do.end92:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  br label %err_release_reg

if.end94:                                         ; preds = %if.end83
  %25 = ptrtoint ptr %data73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data73, align 4
  %call96 = tail call i32 @gpiod_to_irq(ptr noundef %26) #8
  tail call void @disable_irq_nosync(i32 noundef %call96) #8
  %call97 = tail call fastcc i32 @sht15_connection_reset(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end94.err_release_reg_crit_edge

if.end94.err_release_reg_crit_edge:               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_reg

if.end100:                                        ; preds = %if.end94
  %call.i205 = tail call fastcc i32 @sht15_send_cmd(ptr noundef nonnull %call.i, i8 noundef zeroext 30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool.not.i = icmp eq i32 %call.i205, 0
  br i1 %tobool.not.i, label %if.end104, label %if.end100.err_release_reg_crit_edge

if.end100.err_release_reg_crit_edge:              ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_reg

if.end104:                                        ; preds = %if.end100
  tail call void @msleep(i32 noundef 11) #8
  %val_status.i = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %val_status.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %val_status.i, align 4
  %call106 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @sht15_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end113, label %do.end111

do.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %err_release_reg

if.end113:                                        ; preds = %if.end104
  %28 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev24, align 4
  %call115 = tail call ptr @hwmon_device_register(ptr noundef %29) #8
  %hwmon_dev = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 16
  %30 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call115, ptr %hwmon_dev, align 4
  %cmp.i206 = icmp ugt ptr %call115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %if.then118, label %if.end113.cleanup133_crit_edge

if.end113.cleanup133_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

if.then118:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %call115 to i32
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @sht15_attr_group) #8
  br label %err_release_reg

err_release_reg:                                  ; preds = %if.then118, %do.end111, %if.end100.err_release_reg_crit_edge, %if.end94.err_release_reg_crit_edge, %do.end92, %if.then76, %if.then63
  %ret.0 = phi i32 [ %22, %if.then63 ], [ %24, %if.then76 ], [ %call.i204, %do.end92 ], [ %call97, %if.end94.err_release_reg_crit_edge ], [ %call106, %do.end111 ], [ %31, %if.then118 ], [ %call.i205, %if.end100.err_release_reg_crit_edge ]
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg, align 4
  %cmp.i207 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %err_release_reg.cleanup133_crit_edge, label %if.then126

err_release_reg.cleanup133_crit_edge:             ; preds = %err_release_reg
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup133

if.then126:                                       ; preds = %err_release_reg
  call void @__sanitizer_cov_trace_pc() #10
  %nb128 = getelementptr inbounds %struct.sht15_data, ptr %call.i, i32 0, i32 18
  %call129 = tail call i32 @regulator_unregister_notifier(ptr noundef %33, ptr noundef %nb128) #8
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg, align 4
  %call131 = tail call i32 @regulator_disable(ptr noundef %35) #8
  br label %cleanup133

cleanup133:                                       ; preds = %if.then126, %err_release_reg.cleanup133_crit_edge, %if.end113.cleanup133_crit_edge, %do.end53, %do.end43, %entry.cleanup133_crit_edge
  %retval.1 = phi i32 [ -12, %entry.cleanup133_crit_edge ], [ 0, %if.end113.cleanup133_crit_edge ], [ %ret.0, %if.then126 ], [ %ret.0, %err_release_reg.cleanup133_crit_edge ], [ %call39, %do.end43 ], [ %call48, %do.end53 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht15_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %read_lock = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %read_lock, i32 noundef 0) #8
  %call.i = tail call fastcc i32 @sht15_send_cmd(ptr noundef %1, i8 noundef zeroext 30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 11) #8
  %val_status.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %val_status.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %val_status.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %4) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @sht15_attr_group) #8
  %reg = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %nb = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 18
  %call6 = tail call i32 @regulator_unregister_notifier(ptr noundef %6, ptr noundef %nb) #8
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %call8 = tail call i32 @regulator_disable(ptr noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %read_lock) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sht15_bh_read_data(ptr noundef %work_s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work_s, i32 -8
  %data1 = getelementptr i8, ptr %work_s, i32 -4
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body.i.preheader_crit_edge, label %if.then

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

if.then:                                          ; preds = %entry
  %interrupt_handled = getelementptr i8, ptr %work_s, i32 288
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %interrupt_handled, i32 noundef 4) #8
  %2 = ptrtoint ptr %interrupt_handled to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %interrupt_handled, align 4
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1, align 4
  %call3 = tail call i32 @gpiod_to_irq(ptr noundef %4) #8
  tail call void @enable_irq(i32 noundef %call3) #8
  %5 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data1, align 4
  %call5 = tail call i32 @gpiod_get_value(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %call.i.i113 = tail call zeroext i1 @__kasan_check_read(ptr noundef %interrupt_handled, i32 noundef 4) #8
  %7 = ptrtoint ptr %interrupt_handled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %interrupt_handled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %lor.lhs.false.for.body.i.preheader_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.for.body.i.preheader_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %lor.lhs.false.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %byte.013.i = phi i8 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %shl.i = shl i8 %byte.013.i, 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  %12 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data1, align 4
  %call.i = tail call i32 @gpiod_get_value(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp ne i32 %call.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i8
  %or.i = or i8 %shl.i, %lnot.ext.i
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #8
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %sht15_read_byte.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sht15_read_byte.exit:                             ; preds = %for.body.i
  %call15 = tail call fastcc i32 @sht15_ack(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %sht15_read_byte.exit.wakeup_crit_edge

sht15_read_byte.exit.wakeup_crit_edge:            ; preds = %sht15_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wakeup

if.end18:                                         ; preds = %sht15_read_byte.exit
  %conv13 = zext i8 %or.i to i16
  br label %for.body.i124

for.body.i124:                                    ; preds = %for.body.i124.for.body.i124_crit_edge, %if.end18
  %byte.013.i115 = phi i8 [ 0, %if.end18 ], [ %or.i121, %for.body.i124.for.body.i124_crit_edge ]
  %i.012.i116 = phi i32 [ 0, %if.end18 ], [ %inc.i122, %for.body.i124.for.body.i124_crit_edge ]
  %shl.i117 = shl i8 %byte.013.i115, 1
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #8
  %20 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data1, align 4
  %call.i118 = tail call i32 @gpiod_get_value(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool.i119 = icmp ne i32 %call.i118, 0
  %lnot.ext.i120 = zext i1 %tobool.i119 to i8
  %or.i121 = or i8 %shl.i117, %lnot.ext.i120
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  tail call void @gpiod_set_value(ptr noundef %23, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #8
  %inc.i122 = add nuw nsw i32 %i.012.i116, 1
  %exitcond.not.i123 = icmp eq i32 %inc.i122, 8
  br i1 %exitcond.not.i123, label %sht15_read_byte.exit125, label %for.body.i124.for.body.i124_crit_edge

for.body.i124.for.body.i124_crit_edge:            ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i124

sht15_read_byte.exit125:                          ; preds = %for.body.i124
  %shl = shl nuw i16 %conv13, 8
  %conv20 = zext i8 %or.i121 to i16
  %or = or i16 %shl, %conv20
  %checksumming = getelementptr i8, ptr %work_s, i32 102
  %25 = ptrtoint ptr %checksumming to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %checksumming, align 2, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool23.not = icmp eq i8 %26, 0
  br i1 %tobool23.not, label %sht15_read_byte.exit125.if.end70_crit_edge, label %if.then24

sht15_read_byte.exit125.if.end70_crit_edge:       ; preds = %sht15_read_byte.exit125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then24:                                        ; preds = %sht15_read_byte.exit125
  %call25 = tail call fastcc i32 @sht15_ack(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.for.body.i136_crit_edge, label %if.then24.wakeup_crit_edge

if.then24.wakeup_crit_edge:                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %wakeup

if.then24.for.body.i136_crit_edge:                ; preds = %if.then24
  br label %for.body.i136

for.body.i136:                                    ; preds = %for.body.i136.for.body.i136_crit_edge, %if.then24.for.body.i136_crit_edge
  %byte.013.i127 = phi i8 [ %or.i133, %for.body.i136.for.body.i136_crit_edge ], [ 0, %if.then24.for.body.i136_crit_edge ]
  %i.012.i128 = phi i32 [ %inc.i134, %for.body.i136.for.body.i136_crit_edge ], [ 0, %if.then24.for.body.i136_crit_edge ]
  %shl.i129 = shl i8 %byte.013.i127, 1
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  tail call void @gpiod_set_value(ptr noundef %28, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #8
  %30 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data1, align 4
  %call.i130 = tail call i32 @gpiod_get_value(ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool.i131 = icmp ne i32 %call.i130, 0
  %lnot.ext.i132 = zext i1 %tobool.i131 to i8
  %or.i133 = or i8 %shl.i129, %lnot.ext.i132
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  tail call void @gpiod_set_value(ptr noundef %33, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #8
  %inc.i134 = add nuw nsw i32 %i.012.i128, 1
  %exitcond.not.i135 = icmp eq i32 %inc.i134, 8
  br i1 %exitcond.not.i135, label %cond.false, label %for.body.i136.for.body.i136_crit_edge

for.body.i136.for.body.i136_crit_edge:            ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i136

cond.false:                                       ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i = zext i8 %or.i133 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  %state = getelementptr i8, ptr %work_s, i32 104
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp = icmp eq i32 %38, 1
  %conv58 = select i1 %cmp, i8 3, i8 5
  %val_status.i = getelementptr i8, ptr %work_s, i32 100
  %39 = ptrtoint ptr %val_status.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %val_status.i, align 4
  %41 = and i8 %40, 15
  %idxprom.i.i = zext i8 %41 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i, align 1
  %xor37.i = xor i8 %conv58, %43
  %xor.i = zext i8 %xor37.i to i32
  %arrayidx.i138 = getelementptr [256 x i8], ptr @sht15_crc8_table, i32 0, i32 %xor.i
  %44 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i138, align 1
  %xor37.i.1 = xor i8 %or.i, %45
  %xor.i.1 = zext i8 %xor37.i.1 to i32
  %arrayidx.i138.1 = getelementptr [256 x i8], ptr @sht15_crc8_table, i32 0, i32 %xor.i.1
  %46 = ptrtoint ptr %arrayidx.i138.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i138.1, align 1
  %xor37.i.2 = xor i8 %or.i121, %47
  %xor.i.2 = zext i8 %xor37.i.2 to i32
  %arrayidx.i138.2 = getelementptr [256 x i8], ptr @sht15_crc8_table, i32 0, i32 %xor.i.2
  %48 = ptrtoint ptr %arrayidx.i138.2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i138.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %36)
  %cmp68 = icmp eq i8 %49, %36
  %checksum_ok = getelementptr i8, ptr %work_s, i32 101
  %frombool = zext i1 %cmp68 to i8
  %50 = ptrtoint ptr %checksum_ok to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %frombool, ptr %checksum_ok, align 1
  br label %if.end70

if.end70:                                         ; preds = %cond.false, %sht15_read_byte.exit125.if.end70_crit_edge
  %51 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data1, align 4
  %call.i139 = tail call i32 @gpiod_direction_output(ptr noundef %52, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i140 = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i140, label %if.end74, label %if.end70.wakeup_crit_edge

if.end70.wakeup_crit_edge:                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %wakeup

if.end74:                                         ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #8
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 4
  tail call void @gpiod_set_value(ptr noundef %55, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #8
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr, align 4
  tail call void @gpiod_set_value(ptr noundef %58, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #8
  %state75 = getelementptr i8, ptr %work_s, i32 104
  %60 = ptrtoint ptr %state75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state75, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %61, label %if.end74.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb76
  ]

if.end74.sw.epilog_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %val_temp = getelementptr i8, ptr %work_s, i32 96
  %63 = ptrtoint ptr %val_temp to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %or, ptr %val_temp, align 4
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %val_humid = getelementptr i8, ptr %work_s, i32 98
  %64 = ptrtoint ptr %val_humid to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %or, ptr %val_humid, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb76, %sw.bb, %if.end74.sw.epilog_crit_edge
  %65 = ptrtoint ptr %state75 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %state75, align 4
  br label %wakeup

wakeup:                                           ; preds = %sw.epilog, %if.end70.wakeup_crit_edge, %if.then24.wakeup_crit_edge, %sht15_read_byte.exit.wakeup_crit_edge
  %wait_queue = getelementptr i8, ptr %work_s, i32 44
  tail call void @__wake_up(ptr noundef %wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %wakeup, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sht15_update_voltage(ptr nocapture noundef %work_s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr i8, ptr %work_s, i32 -24
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %call = tail call i32 @regulator_get_voltage(ptr noundef %1) #8
  %supply_uv = getelementptr i8, ptr %work_s, i32 -8
  %2 = ptrtoint ptr %supply_uv to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %supply_uv, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht15_invalidate_voltage(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %event)
  %cmp = icmp eq i32 %event, 64
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %supply_uv_valid = getelementptr i8, ptr %nb, i32 16
  %0 = ptrtoint ptr %supply_uv_valid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %supply_uv_valid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %update_supply_work = getelementptr i8, ptr %nb, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %update_supply_work) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht15_interrupt_fired(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq_nosync(i32 noundef %irq) #8
  %interrupt_handled = getelementptr inbounds %struct.sht15_data, ptr %d, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %interrupt_handled, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %interrupt_handled, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %interrupt_handled, ptr %interrupt_handled, i32 1, ptr elementtype(i32) %interrupt_handled) #8, !srcloc !118
  %state = getelementptr inbounds %struct.sht15_data, ptr %d, i32 0, i32 9
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_work = getelementptr inbounds %struct.sht15_data, ptr %d, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i3 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %read_work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sht15_connection_reset(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %call = tail call i32 @gpiod_direction_output(ptr noundef %1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #8
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %22, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #8
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %25, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #8
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %28, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #8
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %31, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #8
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %34, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #8
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %37, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #8
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %40, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #8
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %43, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #8
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %46, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #8
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %49, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #8
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %52, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #8
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %55, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #8
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %58, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sht15_soft_reset(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sht15_send_cmd(ptr noundef %data, i8 noundef zeroext 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 11) #8
  %val_status = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %val_status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %val_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sht15_ack(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %call = tail call i32 @gpiod_direction_output(ptr noundef %1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #8
  %9 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data1, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 1) #8
  %11 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data1, align 4
  %call5 = tail call i32 @gpiod_direction_input(ptr noundef %12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sht15_send_cmd(ptr nocapture noundef readonly %data, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1.i = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1.i, align 4
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #8
  %9 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data1.i, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #8
  %18 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data1.i, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %22, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.07.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %byte.addr.06.i = phi i8 [ %cmd, %if.end ], [ %shl.i, %for.body.i.for.body.i_crit_edge ]
  %24 = lshr i8 %byte.addr.06.i, 7
  %and.lobit.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data1.i, align 4
  tail call void @gpiod_set_value(ptr noundef %26, i32 noundef %and.lobit.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #8
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %29, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %32, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #8
  %shl.i = shl i8 %byte.addr.06.i, 1
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %sht15_send_byte.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sht15_send_byte.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @sht15_wait_for_response(ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %sht15_send_byte.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sht15_send_byte.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sht15_wait_for_response(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %call = tail call i32 @gpiod_direction_input(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  %5 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data1, align 4
  %call3 = tail call i32 @gpiod_get_value(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #8
  br i1 %tobool4.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 15
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.32) #11
  %call7 = tail call fastcc i32 @sht15_connection_reset(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %.call7 = select i1 %tobool8.not, i32 -5, i32 %call7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ %.call7, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht15_temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %read_lock.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %read_lock.i, i32 noundef 0) #8
  %last_measurement.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %last_measurement.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_measurement.i, align 4
  %add.i = add i32 %3, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %measurements_valid.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %measurements_valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %measurements_valid.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.cond.false_crit_edge

lor.lhs.false.i.cond.false_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %state.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %state.i, align 4
  %call.i = tail call fastcc i32 @sht15_measurement(ptr noundef %1, i32 noundef 5, i32 noundef 160) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.sht15_update_measurements.exit_crit_edge

if.then.i.sht15_update_measurements.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sht15_update_measurements.exit

if.end.i:                                         ; preds = %if.then.i
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state.i, align 4
  %call4.i = tail call fastcc i32 @sht15_measurement(ptr noundef %1, i32 noundef 3, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.sht15_update_measurements.exit_crit_edge

if.end.i.sht15_update_measurements.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sht15_update_measurements.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %measurements_valid8.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %measurements_valid8.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %measurements_valid8.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %last_measurement.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_measurement.i, align 4
  br label %cond.false

sht15_update_measurements.exit:                   ; preds = %if.end.i.sht15_update_measurements.exit_crit_edge, %if.then.i.sht15_update_measurements.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i.sht15_update_measurements.exit_crit_edge ], [ %call4.i, %if.end.i.sht15_update_measurements.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %read_lock.i) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end7.i, %lor.lhs.false.i.cond.false_crit_edge
  tail call void @mutex_unlock(ptr noundef %read_lock.i) #8
  %val_status.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %val_status.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val_status.i, align 4
  %supply_uv.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %supply_uv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %supply_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %15)
  %cmp2.i = icmp sgt i32 %15, 4000000
  br i1 %cmp2.i, label %cond.false.if.then.i7_crit_edge, label %for.cond.1.i

cond.false.if.then.i7_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i7

for.cond.1.i:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3500000, i32 %15)
  %cmp2.1.i = icmp sgt i32 %15, 3500000
  br i1 %cmp2.1.i, label %for.cond.1.i.if.then.i7_crit_edge, label %for.cond.2.i

for.cond.1.i.if.then.i7_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i7

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %15)
  %cmp2.2.i = icmp sgt i32 %15, 3000000
  br i1 %cmp2.2.i, label %for.cond.2.i.if.then.i7_crit_edge, label %for.cond.3.i

for.cond.2.i.if.then.i7_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i7

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %15)
  %cmp2.3.i = icmp sgt i32 %15, 2500000
  br i1 %cmp2.3.i, label %for.cond.3.i.if.then.i7_crit_edge, label %for.cond.3.i.sht15_calc_temp.exit_crit_edge

for.cond.3.i.sht15_calc_temp.exit_crit_edge:      ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sht15_calc_temp.exit

for.cond.3.i.if.then.i7_crit_edge:                ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i7

if.then.i7:                                       ; preds = %for.cond.3.i.if.then.i7_crit_edge, %for.cond.2.i.if.then.i7_crit_edge, %for.cond.1.i.if.then.i7_crit_edge, %cond.false.if.then.i7_crit_edge
  %sub.lcssa.i = phi i32 [ 3, %cond.false.if.then.i7_crit_edge ], [ 2, %for.cond.1.i.if.then.i7_crit_edge ], [ 1, %for.cond.2.i.if.then.i7_crit_edge ], [ 0, %for.cond.3.i.if.then.i7_crit_edge ]
  %.lcssa.i = phi i32 [ 4000000, %cond.false.if.then.i7_crit_edge ], [ 3500000, %for.cond.1.i.if.then.i7_crit_edge ], [ 3000000, %for.cond.2.i.if.then.i7_crit_edge ], [ 2500000, %for.cond.3.i.if.then.i7_crit_edge ]
  %i.0.lcssa41.i = phi i32 [ 4, %cond.false.if.then.i7_crit_edge ], [ 3, %for.cond.1.i.if.then.i7_crit_edge ], [ 2, %for.cond.2.i.if.then.i7_crit_edge ], [ 1, %for.cond.3.i.if.then.i7_crit_edge ]
  %sub8.i = sub nsw i32 %15, %.lcssa.i
  %arrayidx9.i = getelementptr [5 x %struct.sht15_temppair], ptr @temppoints, i32 0, i32 %i.0.lcssa41.i
  %d110.i = getelementptr [5 x %struct.sht15_temppair], ptr @temppoints, i32 0, i32 %i.0.lcssa41.i, i32 1
  %16 = ptrtoint ptr %d110.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d110.i, align 4
  %d113.i = getelementptr [5 x %struct.sht15_temppair], ptr @temppoints, i32 0, i32 %sub.lcssa.i, i32 1
  %18 = ptrtoint ptr %d113.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d113.i, align 4
  %sub14.i = sub i32 %17, %19
  %mul.i = mul i32 %sub14.i, %sub8.i
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9.i, align 4
  %sub20.i = sub i32 %21, %.lcssa.i
  %div.i = sdiv i32 %mul.i, %sub20.i
  %add.i6 = add i32 %div.i, %19
  br label %sht15_calc_temp.exit

sht15_calc_temp.exit:                             ; preds = %if.then.i7, %for.cond.3.i.sht15_calc_temp.exit_crit_edge
  %d1.0.i = phi i32 [ %add.i6, %if.then.i7 ], [ -39400, %for.cond.3.i.sht15_calc_temp.exit_crit_edge ]
  %22 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i8 = icmp eq i8 %22, 0
  %cond.i = select i1 %tobool.not.i8, i32 10, i32 40
  %val_temp.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %val_temp.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %val_temp.i, align 4
  %conv24.i = zext i16 %24 to i32
  %mul25.i = mul nuw nsw i32 %cond.i, %conv24.i
  %add26.i = add i32 %mul25.i, %d1.0.i
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %add26.i)
  br label %cond.end

cond.end:                                         ; preds = %sht15_calc_temp.exit, %sht15_update_measurements.exit
  %cond = phi i32 [ %call3, %sht15_calc_temp.exit ], [ %ret.0.i, %sht15_update_measurements.exit ]
  ret i32 %cond
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sht15_measurement(ptr noundef %data, i32 noundef %command, i32 noundef %timeout_msecs) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %command to i8
  %call = tail call fastcc i32 @sht15_send_cmd(ptr noundef %data, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup105_crit_edge

entry.cleanup105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.end:                                           ; preds = %entry
  %data1 = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %call2 = tail call i32 @gpiod_direction_input(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup105_crit_edge

if.end.cleanup105_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.end5:                                          ; preds = %if.end
  %interrupt_handled = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %interrupt_handled, i32 noundef 4) #8
  %2 = ptrtoint ptr %interrupt_handled to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %interrupt_handled, align 4
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1, align 4
  %call7 = tail call i32 @gpiod_to_irq(ptr noundef %4) #8
  tail call void @enable_irq(i32 noundef %call7) #8
  %5 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data1, align 4
  %call9 = tail call i32 @gpiod_get_value(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.then11, label %if.end5.if.else.i_crit_edge

if.end5.if.else.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then11:                                        ; preds = %if.end5
  %7 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data1, align 4
  %call13 = tail call i32 @gpiod_to_irq(ptr noundef %8) #8
  tail call void @disable_irq_nosync(i32 noundef %call13) #8
  %call.i.i148 = tail call zeroext i1 @__kasan_check_read(ptr noundef %interrupt_handled, i32 noundef 4) #8
  %9 = ptrtoint ptr %interrupt_handled to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %interrupt_handled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not = icmp eq i32 %10, 0
  br i1 %tobool16.not, label %if.then17, label %if.then11.if.else.i_crit_edge

if.then11.if.else.i_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %read_work = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i156 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %read_work) #8
  br label %if.else.i

if.else.i:                                        ; preds = %if.then17, %if.then11.if.else.i_crit_edge, %if.end5.if.else.i_crit_edge
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_msecs) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 544) #8
  %state = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 9
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp25 = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool29.not = icmp eq i32 %call2.i, 0
  %14 = select i1 %cmp25, i1 %tobool29.not, i1 false
  %__ret.0 = select i1 %14, i32 1, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool34.not = icmp eq i32 %__ret.0, 0
  %15 = select i1 %cmp25, i1 true, i1 %tobool34.not
  br i1 %15, label %if.else.i.if.end65_crit_edge, label %if.then36

if.else.i.if.end65_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then36:                                        ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i152 = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_msecs) #8
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wait_queue = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 3
  %call39161 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp42162 = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i152)
  %tobool48.not163 = icmp eq i32 %call2.i152, 0
  %19 = select i1 %cmp42162, i1 %tobool48.not163, i1 false
  %__ret37.1164 = select i1 %19, i32 1, i32 %call2.i152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.1164)
  %tobool55.not165 = icmp eq i32 %__ret37.1164, 0
  %20 = select i1 %cmp42162, i1 true, i1 %tobool55.not165
  br i1 %20, label %if.then36.for.end_crit_edge, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  br label %cleanup

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then36.cleanup_crit_edge
  %__ret37.1166 = phi i32 [ %__ret37.1, %cleanup.cleanup_crit_edge ], [ %__ret37.1164, %if.then36.cleanup_crit_edge ]
  %call62 = call i32 @schedule_timeout(i32 noundef %__ret37.1166) #8
  %call39 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp42 = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool48.not = icmp eq i32 %call62, 0
  %23 = select i1 %cmp42, i1 %tobool48.not, i1 false
  %__ret37.1 = select i1 %23, i32 1, i32 %call62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.1)
  %tobool55.not = icmp eq i32 %__ret37.1, 0
  %24 = select i1 %cmp42, i1 true, i1 %tobool55.not
  br i1 %24, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then36.for.end_crit_edge
  %__ret37.1.lcssa = phi i32 [ %__ret37.1164, %if.then36.for.end_crit_edge ], [ %__ret37.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end65

if.end65:                                         ; preds = %for.end, %if.else.i.if.end65_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.else.i.if.end65_crit_edge ], [ %__ret37.1.lcssa, %for.end ]
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp68.not = icmp eq i32 %26, 0
  br i1 %cmp68.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state, align 4
  br label %cleanup105

if.else:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp72 = icmp eq i32 %__ret.1, 0
  br i1 %cmp72, label %if.then74, label %if.end82

if.then74:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data1, align 4
  %call76 = call i32 @gpiod_to_irq(ptr noundef %29) #8
  call void @disable_irq_nosync(i32 noundef %call76) #8
  %call77 = call fastcc i32 @sht15_connection_reset(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  %.call77 = select i1 %tobool78.not, i32 -62, i32 %call77
  br label %cleanup105

if.end82:                                         ; preds = %if.else
  %checksumming = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 8
  %30 = ptrtoint ptr %checksumming to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %checksumming, align 2, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool83.not = icmp eq i8 %31, 0
  br i1 %tobool83.not, label %if.end82.cleanup105_crit_edge, label %land.lhs.true85

if.end82.cleanup105_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

land.lhs.true85:                                  ; preds = %if.end82
  %checksum_ok = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 7
  %32 = ptrtoint ptr %checksum_ok to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %checksum_ok, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool86.not = icmp eq i8 %33, 0
  br i1 %tobool86.not, label %if.then87, label %land.lhs.true85.cleanup105_crit_edge

land.lhs.true85.cleanup105_crit_edge:             ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.then87:                                        ; preds = %land.lhs.true85
  %val_status = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 6
  %34 = ptrtoint ptr %val_status to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %val_status, align 4
  %36 = and i8 %35, 7
  %call90 = call fastcc i32 @sht15_soft_reset(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.then87.cleanup105_crit_edge

if.then87.cleanup105_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.end93:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool94.not = icmp eq i8 %36, 0
  br i1 %tobool94.not, label %if.end93.cleanup105_crit_edge, label %if.then95

if.end93.cleanup105_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.then95:                                        ; preds = %if.end93
  %call96 = call fastcc i32 @sht15_send_status(ptr noundef %data, i8 noundef zeroext %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then95.cleanup105_crit_edge, label %do.end101

if.then95.cleanup105_crit_edge:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

do.end101:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 15
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.36) #11
  br label %cleanup105

cleanup105:                                       ; preds = %do.end101, %if.then95.cleanup105_crit_edge, %if.end93.cleanup105_crit_edge, %if.then87.cleanup105_crit_edge, %land.lhs.true85.cleanup105_crit_edge, %if.end82.cleanup105_crit_edge, %if.then74, %if.then70, %if.end.cleanup105_crit_edge, %entry.cleanup105_crit_edge
  %retval.0 = phi i32 [ -5, %if.then70 ], [ %call96, %do.end101 ], [ %call, %entry.cleanup105_crit_edge ], [ %call2, %if.end.cleanup105_crit_edge ], [ %.call77, %if.then74 ], [ %call90, %if.then87.cleanup105_crit_edge ], [ -11, %if.then95.cleanup105_crit_edge ], [ -11, %if.end93.cleanup105_crit_edge ], [ 0, %land.lhs.true85.cleanup105_crit_edge ], [ 0, %if.end82.cleanup105_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sht15_send_status(ptr nocapture noundef %data, i8 noundef zeroext %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sht15_send_cmd(ptr noundef %data, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data1 = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %call2 = tail call i32 @gpiod_direction_output(ptr noundef %1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end5
  %i.07.i = phi i32 [ 0, %if.end5 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %byte.addr.06.i = phi i8 [ %status, %if.end5 ], [ %shl.i, %for.body.i.for.body.i_crit_edge ]
  %3 = lshr i8 %byte.addr.06.i, 7
  %and.lobit.i = zext i8 %3 to i32
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef %and.lobit.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #8
  %shl.i = shl i8 %byte.addr.06.i, 1
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %sht15_send_byte.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sht15_send_byte.exit:                             ; preds = %for.body.i
  %call6 = tail call fastcc i32 @sht15_wait_for_response(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %sht15_send_byte.exit.cleanup_crit_edge

sht15_send_byte.exit.cleanup_crit_edge:           ; preds = %sht15_send_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %sht15_send_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %val_status = getelementptr inbounds %struct.sht15_data, ptr %data, i32 0, i32 6
  %13 = ptrtoint ptr %val_status to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %status, ptr %val_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sht15_send_byte.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %sht15_send_byte.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht15_humidity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %read_lock.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %read_lock.i, i32 noundef 0) #8
  %last_measurement.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %last_measurement.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_measurement.i, align 4
  %add.i = add i32 %3, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %measurements_valid.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %measurements_valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %measurements_valid.i, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.cond.false_crit_edge

lor.lhs.false.i.cond.false_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %state.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %state.i, align 4
  %call.i = tail call fastcc i32 @sht15_measurement(ptr noundef %1, i32 noundef 5, i32 noundef 160) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.sht15_update_measurements.exit_crit_edge

if.then.i.sht15_update_measurements.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sht15_update_measurements.exit

if.end.i:                                         ; preds = %if.then.i
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state.i, align 4
  %call4.i = tail call fastcc i32 @sht15_measurement(ptr noundef %1, i32 noundef 3, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.sht15_update_measurements.exit_crit_edge

if.end.i.sht15_update_measurements.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sht15_update_measurements.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %measurements_valid8.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %measurements_valid8.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %measurements_valid8.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %last_measurement.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_measurement.i, align 4
  br label %cond.false

sht15_update_measurements.exit:                   ; preds = %if.end.i.sht15_update_measurements.exit_crit_edge, %if.then.i.sht15_update_measurements.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i.sht15_update_measurements.exit_crit_edge ], [ %call4.i, %if.end.i.sht15_update_measurements.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %read_lock.i) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end7.i, %lor.lhs.false.i.cond.false_crit_edge
  tail call void @mutex_unlock(ptr noundef %read_lock.i) #8
  %val_status.i.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %val_status.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val_status.i.i, align 4
  %supply_uv.i.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %supply_uv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %supply_uv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %15)
  %cmp2.i.i = icmp sgt i32 %15, 4000000
  br i1 %cmp2.i.i, label %cond.false.if.then.i.i_crit_edge, label %for.cond.1.i.i

cond.false.if.then.i.i_crit_edge:                 ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.cond.1.i.i:                                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3500000, i32 %15)
  %cmp2.1.i.i = icmp sgt i32 %15, 3500000
  br i1 %cmp2.1.i.i, label %for.cond.1.i.i.if.then.i.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %15)
  %cmp2.2.i.i = icmp sgt i32 %15, 3000000
  br i1 %cmp2.2.i.i, label %for.cond.2.i.i.if.then.i.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %15)
  %cmp2.3.i.i = icmp sgt i32 %15, 2500000
  br i1 %cmp2.3.i.i, label %for.cond.3.i.i.if.then.i.i_crit_edge, label %for.cond.3.i.i.sht15_calc_humid.exit_crit_edge

for.cond.3.i.i.sht15_calc_humid.exit_crit_edge:   ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sht15_calc_humid.exit

for.cond.3.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.cond.3.i.i.if.then.i.i_crit_edge, %for.cond.2.i.i.if.then.i.i_crit_edge, %for.cond.1.i.i.if.then.i.i_crit_edge, %cond.false.if.then.i.i_crit_edge
  %sub.lcssa.i.i = phi i32 [ 3, %cond.false.if.then.i.i_crit_edge ], [ 2, %for.cond.1.i.i.if.then.i.i_crit_edge ], [ 1, %for.cond.2.i.i.if.then.i.i_crit_edge ], [ 0, %for.cond.3.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ 4000000, %cond.false.if.then.i.i_crit_edge ], [ 3500000, %for.cond.1.i.i.if.then.i.i_crit_edge ], [ 3000000, %for.cond.2.i.i.if.then.i.i_crit_edge ], [ 2500000, %for.cond.3.i.i.if.then.i.i_crit_edge ]
  %i.0.lcssa41.i.i = phi i32 [ 4, %cond.false.if.then.i.i_crit_edge ], [ 3, %for.cond.1.i.i.if.then.i.i_crit_edge ], [ 2, %for.cond.2.i.i.if.then.i.i_crit_edge ], [ 1, %for.cond.3.i.i.if.then.i.i_crit_edge ]
  %sub8.i.i = sub nsw i32 %15, %.lcssa.i.i
  %arrayidx9.i.i = getelementptr [5 x %struct.sht15_temppair], ptr @temppoints, i32 0, i32 %i.0.lcssa41.i.i
  %d110.i.i = getelementptr [5 x %struct.sht15_temppair], ptr @temppoints, i32 0, i32 %i.0.lcssa41.i.i, i32 1
  %16 = ptrtoint ptr %d110.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %d110.i.i, align 4
  %d113.i.i = getelementptr [5 x %struct.sht15_temppair], ptr @temppoints, i32 0, i32 %sub.lcssa.i.i, i32 1
  %18 = ptrtoint ptr %d113.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d113.i.i, align 4
  %sub14.i.i = sub i32 %17, %19
  %mul.i.i = mul i32 %sub14.i.i, %sub8.i.i
  %20 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9.i.i, align 4
  %sub20.i.i = sub i32 %21, %.lcssa.i.i
  %div.i.i = sdiv i32 %mul.i.i, %sub20.i.i
  %add.i.i = add i32 %19, -25000
  %phi.bo.i = add i32 %add.i.i, %div.i.i
  br label %sht15_calc_humid.exit

sht15_calc_humid.exit:                            ; preds = %if.then.i.i, %for.cond.3.i.i.sht15_calc_humid.exit_crit_edge
  %d1.0.i.i = phi i32 [ %phi.bo.i, %if.then.i.i ], [ -64400, %for.cond.3.i.i.sht15_calc_humid.exit_crit_edge ]
  %22 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 10, i32 40
  %val_temp.i.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %val_temp.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %val_temp.i.i, align 4
  %conv24.i.i = zext i16 %24 to i32
  %mul25.i.i = mul nuw nsw i32 %cond.i.i, %conv24.i.i
  %..i = select i1 %tobool.not.i.i, i32 40500, i32 648000
  %.22.i = select i1 %tobool.not.i.i, i32 -28, i32 -7200
  %.23.i = select i1 %tobool.not.i.i, i32 80, i32 1280
  %val_humid.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %val_humid.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %val_humid.i, align 2
  %conv1.i = zext i16 %26 to i32
  %mul.i = mul i32 %..i, %conv1.i
  %div.i = sdiv i32 %mul.i, 1000
  %add.i6 = add nsw i32 %div.i, -4000
  %mul6.i = mul nsw i32 %.22.i, %conv1.i
  %mul7.i = mul i32 %mul6.i, %conv1.i
  %div8.i = sdiv i32 %mul7.i, 10000
  %add9.i = add nsw i32 %add.i6, %div8.i
  %sub.i7 = add i32 %mul25.i.i, %d1.0.i.i
  %mul12.i = mul nuw nsw i32 %.23.i, %conv1.i
  %add13.i = add nuw nsw i32 %mul12.i, 10000
  %mul14.i = mul i32 %add13.i, %sub.i7
  %div15.i = sdiv i32 %mul14.i, 1000000
  %add16.i = add nsw i32 %add9.i, %div15.i
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %add16.i)
  br label %cond.end

cond.end:                                         ; preds = %sht15_calc_humid.exit, %sht15_update_measurements.exit
  %cond = phi i32 [ %call3, %sht15_calc_humid.exit ], [ %ret.0.i, %sht15_update_measurements.exit ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht15_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %read_lock.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %read_lock.i, i32 noundef 0) #8
  %last_status.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %last_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_status.i, align 4
  %add.i = add i32 %5, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %status_valid.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %status_valid.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status_valid.i, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.cond.false_crit_edge

lor.lhs.false.i.cond.false_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call.i = tail call fastcc i32 @sht15_send_cmd(ptr noundef %1, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i.sht15_update_status.exit.thread_crit_edge

if.then.i.sht15_update_status.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sht15_update_status.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %data2.i.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i
  %byte.013.i.i = phi i8 [ 0, %if.end.i ], [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.012.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl i8 %byte.013.i.i, 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  %12 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data2.i.i, align 4
  %call.i.i = tail call i32 @gpiod_get_value(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp ne i32 %call.i.i, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i8
  %or.i.i = or i8 %shl.i.i, %lnot.ext.i.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #8
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %sht15_read_byte.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

sht15_read_byte.exit.i:                           ; preds = %for.body.i.i
  %checksumming.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %checksumming.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %checksumming.i, align 2, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not.i = icmp eq i8 %18, 0
  br i1 %tobool4.not.i, label %sht15_read_byte.exit.i.if.end36.i_crit_edge, label %if.then5.i

sht15_read_byte.exit.i.if.end36.i_crit_edge:      ; preds = %sht15_read_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then5.i:                                       ; preds = %sht15_read_byte.exit.i
  %call6.i = tail call fastcc i32 @sht15_ack(ptr noundef %1) #8
  br label %for.body.i111.i

for.body.i111.i:                                  ; preds = %for.body.i111.i.for.body.i111.i_crit_edge, %if.then5.i
  %byte.013.i102.i = phi i8 [ 0, %if.then5.i ], [ %or.i108.i, %for.body.i111.i.for.body.i111.i_crit_edge ]
  %i.012.i103.i = phi i32 [ 0, %if.then5.i ], [ %inc.i109.i, %for.body.i111.i.for.body.i111.i_crit_edge ]
  %shl.i104.i = shl i8 %byte.013.i102.i, 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %20, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #8
  %22 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data2.i.i, align 4
  %call.i105.i = tail call i32 @gpiod_get_value(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i)
  %tobool.i106.i = icmp ne i32 %call.i105.i, 0
  %lnot.ext.i107.i = zext i1 %tobool.i106.i to i8
  %or.i108.i = or i8 %shl.i104.i, %lnot.ext.i107.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %25, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #8
  %inc.i109.i = add nuw nsw i32 %i.012.i103.i, 1
  %exitcond.not.i110.i = icmp eq i32 %inc.i109.i, 8
  br i1 %exitcond.not.i110.i, label %cond.false.i, label %for.body.i111.i.for.body.i111.i_crit_edge

for.body.i111.i.for.body.i111.i_crit_edge:        ; preds = %for.body.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i111.i

cond.false.i:                                     ; preds = %for.body.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i.i = zext i8 %or.i108.i to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i, align 1
  %val_status.i.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %val_status.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val_status.i.i, align 4
  %31 = and i8 %30, 15
  %idxprom.i.i.i = zext i8 %31 to i32
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i, align 1
  %xor37.i.i = xor i8 %33, 7
  %xor.i.i = zext i8 %xor37.i.i to i32
  %arrayidx.i113.i = getelementptr [256 x i8], ptr @sht15_crc8_table, i32 0, i32 %xor.i.i
  %34 = ptrtoint ptr %arrayidx.i113.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i113.i, align 1
  %xor37.i.1.i = xor i8 %35, %or.i.i
  %xor.i.1.i = zext i8 %xor37.i.1.i to i32
  %arrayidx.i113.1.i = getelementptr [256 x i8], ptr @sht15_crc8_table, i32 0, i32 %xor.i.1.i
  %36 = ptrtoint ptr %arrayidx.i113.1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i113.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %28)
  %cmp34.i = icmp eq i8 %37, %28
  %checksum_ok.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 7
  %frombool.i = zext i1 %cmp34.i to i8
  %38 = ptrtoint ptr %checksum_ok.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool.i, ptr %checksum_ok.i, align 1
  br label %if.end36.i

if.end36.i:                                       ; preds = %cond.false.i, %sht15_read_byte.exit.i.if.end36.i_crit_edge
  %39 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data2.i.i, align 4
  %call.i114.i = tail call i32 @gpiod_direction_output(ptr noundef %40, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114.i)
  %tobool.not.i115.i = icmp eq i32 %call.i114.i, 0
  br i1 %tobool.not.i115.i, label %if.end40.i, label %if.end36.i.sht15_update_status.exit.thread_crit_edge

if.end36.i.sht15_update_status.exit.thread_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sht15_update_status.exit.thread

if.end40.i:                                       ; preds = %if.end36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %43, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %46, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #8
  %48 = ptrtoint ptr %checksumming.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %checksumming.i, align 2, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool42.not.i = icmp eq i8 %49, 0
  br i1 %tobool42.not.i, label %if.end40.i.if.end61.i_crit_edge, label %land.lhs.true.i

if.end40.i.if.end61.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

land.lhs.true.i:                                  ; preds = %if.end40.i
  %checksum_ok44.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %checksum_ok44.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %checksum_ok44.i, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool45.not.i = icmp eq i8 %51, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %land.lhs.true.i.if.end61.i_crit_edge

land.lhs.true.i.if.end61.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.then46.i:                                      ; preds = %land.lhs.true.i
  %val_status.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %val_status.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %val_status.i, align 4
  %54 = and i8 %53, 7
  %call.i116.i = tail call fastcc i32 @sht15_send_cmd(ptr noundef %1, i8 noundef zeroext 30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i)
  %tobool.not.i117.i = icmp eq i32 %call.i116.i, 0
  br i1 %tobool.not.i117.i, label %if.end53.i, label %if.then46.i.sht15_update_status.exit.thread_crit_edge

if.then46.i.sht15_update_status.exit.thread_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sht15_update_status.exit.thread

if.end53.i:                                       ; preds = %if.then46.i
  tail call void @msleep(i32 noundef 11) #8
  %55 = ptrtoint ptr %val_status.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %val_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool54.not.i = icmp eq i8 %54, 0
  br i1 %tobool54.not.i, label %if.end53.i.sht15_update_status.exit.thread_crit_edge, label %if.then55.i

if.end53.i.sht15_update_status.exit.thread_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sht15_update_status.exit.thread

if.then55.i:                                      ; preds = %if.end53.i
  %call56.i = tail call fastcc i32 @sht15_send_status(ptr noundef %1, i8 noundef zeroext %54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.then55.i.sht15_update_status.exit.thread_crit_edge, label %do.end.i

if.then55.i.sht15_update_status.exit.thread_crit_edge: ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sht15_update_status.exit.thread

do.end.i:                                         ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 15
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.36) #11
  br label %sht15_update_status.exit.thread

if.end61.i:                                       ; preds = %land.lhs.true.i.if.end61.i_crit_edge, %if.end40.i.if.end61.i_crit_edge
  %val_status62.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 6
  %58 = ptrtoint ptr %val_status62.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %or.i.i, ptr %val_status62.i, align 4
  %status_valid63.i = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 11
  %59 = ptrtoint ptr %status_valid63.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %status_valid63.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %61 = ptrtoint ptr %last_status.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %last_status.i, align 4
  br label %cond.false

sht15_update_status.exit.thread:                  ; preds = %do.end.i, %if.then55.i.sht15_update_status.exit.thread_crit_edge, %if.end53.i.sht15_update_status.exit.thread_crit_edge, %if.then46.i.sht15_update_status.exit.thread_crit_edge, %if.end36.i.sht15_update_status.exit.thread_crit_edge, %if.then.i.sht15_update_status.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call.i116.i, %if.then46.i.sht15_update_status.exit.thread_crit_edge ], [ %call.i114.i, %if.end36.i.sht15_update_status.exit.thread_crit_edge ], [ -11, %if.end53.i.sht15_update_status.exit.thread_crit_edge ], [ -11, %if.then55.i.sht15_update_status.exit.thread_crit_edge ], [ %call56.i, %do.end.i ], [ %call.i, %if.then.i.sht15_update_status.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %read_lock.i) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end61.i, %lor.lhs.false.i.cond.false_crit_edge
  tail call void @mutex_unlock(ptr noundef %read_lock.i) #8
  %val_status = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %val_status to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %val_status, align 4
  %conv2 = zext i8 %63 to i32
  %and = and i32 %3, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4 = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool4 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %lnot.ext)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sht15_update_status.exit.thread
  %cond = phi i32 [ %call6, %cond.false ], [ %ret.0.i.ph, %sht15_update_status.exit.thread ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht15_status_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !119
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_lock = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %read_lock, i32 noundef 0) #8
  %val_status = getelementptr inbounds %struct.sht15_data, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %val_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val_status, align 4
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  %7 = and i8 %4, 3
  %8 = or i8 %7, 4
  %status.0 = select i1 %tobool3.not, i8 %7, i8 %8
  %call11 = call fastcc i32 @sht15_send_status(ptr noundef %1, i8 noundef zeroext %status.0)
  call void @mutex_unlock(ptr noundef %read_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  %cond = select i1 %tobool13.not, i32 %count, i32 %call11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !71, !73, !74, !76, !78, !79, !80, !81, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @__initcall__kmod_sht15__288_1064_sht15_driver_init6, !1, !"__initcall__kmod_sht15__288_1064_sht15_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/sht15.c", i32 1064, i32 1}
!2 = !{ptr @__exitcall_sht15_driver_exit, !1, !"__exitcall_sht15_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/sht15.c", i32 1066, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description291, !7, !"__UNIQUE_ID_description291", i1 false, i1 false}
!7 = !{!"../drivers/hwmon/sht15.c", i32 1067, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/sht15.c", i32 1057, i32 11}
!10 = !{ptr @sht15_driver, !11, !"sht15_driver", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/sht15.c", i32 1055, i32 31}
!12 = !{ptr @sht15_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/sht15.c", i32 925, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sht15_probe.__key.2, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/sht15.c", i32 926, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sht15_probe.__key.4, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/sht15.c", i32 928, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sht15_probe.__key.6, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/sht15.c", i32 930, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/sht15.c", i32 936, i32 53}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/sht15.c", i32 946, i32 4}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sht15_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @sht15_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/sht15.c", i32 958, i32 4}
!36 = !{ptr @sht15_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sht15_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/sht15.c", i32 966, i32 41}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/sht15.c", i32 969, i32 3}
!42 = !{ptr @sht15_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sht15_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/sht15.c", i32 972, i32 42}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/sht15.c", i32 975, i32 3}
!48 = !{ptr @sht15_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sht15_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/sht15.c", i32 982, i32 11}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/sht15.c", i32 985, i32 3}
!54 = !{ptr @sht15_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sht15_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/sht15.c", i32 998, i32 3}
!58 = !{ptr @sht15_probe._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @sht15_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @sht15_crc8_table, !61, !"sht15_crc8_table", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/sht15.c", i32 84, i32 17}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/sht15.c", i32 301, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sht15_wait_for_response._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @sht15_wait_for_response._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @sht15_attr_group, !68, !"sht15_attr_group", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/sht15.c", i32 795, i32 37}
!69 = !{ptr @sht15_attrs, !70, !"sht15_attrs", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/sht15.c", i32 785, i32 26}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/sht15.c", i32 777, i32 8}
!73 = !{ptr @sensor_dev_attr_temp1_input, !72, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/sht15.c", i32 745, i32 34}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/sht15.c", i32 569, i32 5}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @sht15_measurement._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @sht15_measurement._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @temppoints, !82, !"temppoints", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/sht15.c", i32 75, i32 36}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/sht15.c", i32 778, i32 8}
!85 = !{ptr @sensor_dev_attr_humidity1_input, !84, !"sensor_dev_attr_humidity1_input", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/sht15.c", i32 779, i32 8}
!88 = !{ptr @sensor_dev_attr_temp1_fault, !87, !"sensor_dev_attr_temp1_fault", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/sht15.c", i32 492, i32 6}
!91 = !{ptr @sht15_update_status._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @sht15_update_status._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/sht15.c", i32 781, i32 8}
!95 = !{ptr @sensor_dev_attr_humidity1_fault, !94, !"sensor_dev_attr_humidity1_fault", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/sht15.c", i32 783, i32 8}
!98 = !{ptr @sensor_dev_attr_heater_enable, !97, !"sensor_dev_attr_heater_enable", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/sht15.c", i32 784, i32 8}
!101 = !{ptr @dev_attr_name, !100, !"dev_attr_name", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/sht15.c", i32 774, i32 22}
!104 = !{ptr @sht15_dt_match, !105, !"sht15_dt_match", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/sht15.c", i32 909, i32 34}
!106 = !{ptr @sht15_device_ids, !107, !"sht15_device_ids", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/sht15.c", i32 1045, i32 40}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i8 0, i8 2}
!118 = !{i64 2148261360, i64 2148261386, i64 2148261415, i64 2148261449, i64 2148261480, i64 2148261503}
!119 = !{!"auto-init"}
