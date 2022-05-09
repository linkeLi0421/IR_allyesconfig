; ModuleID = '/llk/IR_all_yes/drivers/iio/light/lm3533-als.c_pt.bc'
source_filename = "../drivers/iio/light/lm3533-als.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.70, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.70 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lm3533_als_attribute = type { %struct.device_attribute, i32, i8, i8 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.lm3533_als = type { ptr, ptr, i32, i32, %struct.atomic_t, %struct.mutex }
%struct.lm3533 = type { ptr, ptr, i32, i32, i8 }
%struct.lm3533_als_platform_data = type { i8, i8, [2 x i8] }

@__initcall__kmod_lm3533_als__229_919_lm3533_als_driver_init6 = internal global ptr @lm3533_als_driver_init, section ".initcall6.init", align 4
@lm3533_als_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lm3533_als_probe, ptr @lm3533_als_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lm3533_als_driver_exit = internal global ptr @lm3533_als_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [51 x i8] c"lm3533_als.author=Johan Hovold <jhovold@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [58 x i8] c"lm3533_als.description=LM3533 Ambient Light Sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [45 x i8] c"lm3533_als.file=drivers/iio/light/lm3533-als\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [23 x i8] c"lm3533_als.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias234 = internal constant [37 x i8] c"lm3533_als.alias=platform:lm3533-als\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lm3533-als\00", [21 x i8] zeroinitializer }, align 32
@lm3533_als_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 843, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lm3533_als_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/light/lm3533-als.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm3533_als_probe._entry_ptr = internal global ptr @lm3533_als_probe._entry, section ".printk_index", align 4
@lm3533_als_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr @lm3533_als_event_attribute_group, ptr @lm3533_als_attribute_group, ptr @lm3533_als_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@lm3533_als_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.70 zeroinitializer, i32 513, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 0, %struct.anon.70 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 0, i32 0, %struct.anon.70 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 2, i32 0, i32 0, i32 0, %struct.anon.70 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [64 x i8] zeroinitializer }, align 32
@lm3533_als_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&als->thresh_mutex\00", [45 x i8] zeroinitializer }, align 32
@lm3533_als_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 883, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to register ALS\0A\00", [40 x i8] zeroinitializer }, align 32
@lm3533_als_probe._entry_ptr.9 = internal global ptr @lm3533_als_probe._entry.7, section ".printk_index", align 4
@lm3533_als_event_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm3533_als_event_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm3533_als_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm3533_als_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm3533_als_event_attributes = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @dev_attr_in_illuminance0_thresh_either_en, ptr @lm3533_als_attr_in_illuminance0_thresh0_falling_value, ptr @lm3533_als_attr_in_illuminance0_thresh0_hysteresis, ptr @lm3533_als_attr_in_illuminance0_thresh0_raising_value, ptr @lm3533_als_attr_in_illuminance0_thresh1_falling_value, ptr @lm3533_als_attr_in_illuminance0_thresh1_hysteresis, ptr @lm3533_als_attr_in_illuminance0_thresh1_raising_value, ptr @lm3533_als_attr_in_illuminance0_thresh2_falling_value, ptr @lm3533_als_attr_in_illuminance0_thresh2_hysteresis, ptr @lm3533_als_attr_in_illuminance0_thresh2_raising_value, ptr @lm3533_als_attr_in_illuminance0_thresh3_falling_value, ptr @lm3533_als_attr_in_illuminance0_thresh3_hysteresis, ptr @lm3533_als_attr_in_illuminance0_thresh3_raising_value, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_in_illuminance0_thresh_either_en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_thresh_either_en, ptr @store_thresh_either_en }, [36 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh0_falling_value = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 2, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh0_hysteresis = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr null }, i32 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh0_raising_value = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh1_falling_value = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 2, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh1_hysteresis = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr null }, i32 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh1_raising_value = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 3, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh2_falling_value = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 2, i8 2, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh2_hysteresis = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr null }, i32 0, i8 2, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh2_raising_value = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 3, i8 2, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh3_falling_value = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 2, i8 3, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh3_hysteresis = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr null }, i32 0, i8 3, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_in_illuminance0_thresh3_raising_value = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 3, i8 3, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"in_illuminance0_thresh_either_en\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@lm3533_als_get_int_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get int mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lm3533_als_get_int_mode\00", [40 x i8] zeroinitializer }, align 32
@lm3533_als_get_int_mode._entry_ptr = internal global ptr @lm3533_als_get_int_mode._entry, section ".printk_index", align 4
@_lm3533_als_get_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to read zone\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_lm3533_als_get_zone\00", [43 x i8] zeroinitializer }, align 32
@_lm3533_als_get_zone._entry_ptr = internal global ptr @_lm3533_als_get_zone._entry, section ".printk_index", align 4
@lm3533_als_set_int_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set int mode %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lm3533_als_set_int_mode\00", [40 x i8] zeroinitializer }, align 32
@lm3533_als_set_int_mode._entry_ptr = internal global ptr @lm3533_als_set_int_mode._entry, section ".printk_index", align 4
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_illuminance0_thresh0_falling_value\00", [58 x i8] zeroinitializer }, align 32
@lm3533_als_get_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get target current\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lm3533_als_get_target\00", [42 x i8] zeroinitializer }, align 32
@lm3533_als_get_target._entry_ptr = internal global ptr @lm3533_als_get_target._entry, section ".printk_index", align 4
@lm3533_als_get_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get threshold\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lm3533_als_get_threshold\00", [39 x i8] zeroinitializer }, align 32
@lm3533_als_get_threshold._entry_ptr = internal global ptr @lm3533_als_get_threshold._entry, section ".printk_index", align 4
@lm3533_als_set_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set target current\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lm3533_als_set_target\00", [42 x i8] zeroinitializer }, align 32
@lm3533_als_set_target._entry_ptr = internal global ptr @lm3533_als_set_target._entry, section ".printk_index", align 4
@lm3533_als_set_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.25, ptr @.str.3, i32 353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lm3533_als_set_threshold\00", [39 x i8] zeroinitializer }, align 32
@lm3533_als_set_threshold._entry_ptr = internal global ptr @lm3533_als_set_threshold._entry, section ".printk_index", align 4
@lm3533_als_set_threshold._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 368, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set threshold\0A\00", [39 x i8] zeroinitializer }, align 32
@lm3533_als_set_threshold._entry_ptr.28 = internal global ptr @lm3533_als_set_threshold._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"in_illuminance0_thresh0_hysteresis\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_illuminance0_thresh0_raising_value\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_illuminance0_thresh1_falling_value\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"in_illuminance0_thresh1_hysteresis\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_illuminance0_thresh1_raising_value\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_illuminance0_thresh2_falling_value\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"in_illuminance0_thresh2_hysteresis\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_illuminance0_thresh2_raising_value\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_illuminance0_thresh3_falling_value\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"in_illuminance0_thresh3_hysteresis\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_illuminance0_thresh3_raising_value\00", [58 x i8] zeroinitializer }, align 32
@lm3533_als_attributes = internal global { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @dev_attr_in_illuminance0_zone, ptr @lm3533_als_attr_out_current0_current0_raw, ptr @lm3533_als_attr_out_current0_current1_raw, ptr @lm3533_als_attr_out_current0_current2_raw, ptr @lm3533_als_attr_out_current0_current3_raw, ptr @lm3533_als_attr_out_current0_current4_raw, ptr @lm3533_als_attr_out_current1_current0_raw, ptr @lm3533_als_attr_out_current1_current1_raw, ptr @lm3533_als_attr_out_current1_current2_raw, ptr @lm3533_als_attr_out_current1_current3_raw, ptr @lm3533_als_attr_out_current1_current4_raw, ptr @lm3533_als_attr_out_current2_current0_raw, ptr @lm3533_als_attr_out_current2_current1_raw, ptr @lm3533_als_attr_out_current2_current2_raw, ptr @lm3533_als_attr_out_current2_current3_raw, ptr @lm3533_als_attr_out_current2_current4_raw, ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_in_illuminance0_zone = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_zone, ptr null }, [36 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current0_current0_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current0_current1_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 0, i8 1 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current0_current2_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 0, i8 2 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current0_current3_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 0, i8 3 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current0_current4_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 0, i8 4 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current1_current0_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current1_current1_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 1, i8 1 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current1_current2_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 1, i8 2 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current1_current3_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 1, i8 3 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current1_current4_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 1, i8 4 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current2_current0_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 2, i8 0 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current2_current1_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 2, i8 1 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current2_current2_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 2, i8 2 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current2_current3_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 2, i8 3 }, [60 x i8] zeroinitializer }, align 32
@lm3533_als_attr_out_current2_current4_raw = internal global { %struct.lm3533_als_attribute, [60 x i8] } { %struct.lm3533_als_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_als_attr, ptr @store_als_attr }, i32 1, i8 2, i8 4 }, [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"in_illuminance0_zone\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current0_current0_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current0_current1_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current0_current2_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current0_current3_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current0_current4_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current1_current0_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current1_current1_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current1_current2_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current1_current3_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current1_current4_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current2_current0_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current2_current1_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current2_current2_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current2_current3_raw\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"out_current2_current4_raw\00", [38 x i8] zeroinitializer }, align 32
@lm3533_als_get_adc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to read adc\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm3533_als_get_adc\00", [45 x i8] zeroinitializer }, align 32
@lm3533_als_get_adc._entry_ptr = internal global ptr @lm3533_als_get_adc._entry, section ".printk_index", align 4
@lm3533_als_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 783, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to disable interrupts\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lm3533_als_setup_irq\00", [43 x i8] zeroinitializer }, align 32
@lm3533_als_setup_irq._entry_ptr = internal global ptr @lm3533_als_setup_irq._entry, section ".printk_index", align 4
@lm3533_als_setup_irq._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 792, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@lm3533_als_setup_irq._entry_ptr.62 = internal global ptr @lm3533_als_setup_irq._entry.60, section ".printk_index", align 4
@lm3533_als_set_input_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 731, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set input mode %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lm3533_als_set_input_mode\00", [38 x i8] zeroinitializer }, align 32
@lm3533_als_set_input_mode._entry_ptr = internal global ptr @lm3533_als_set_input_mode._entry, section ".printk_index", align 4
@lm3533_als_set_resistor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 743, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid resistor value\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lm3533_als_set_resistor\00", [40 x i8] zeroinitializer }, align 32
@lm3533_als_set_resistor._entry_ptr = internal global ptr @lm3533_als_set_resistor._entry, section ".printk_index", align 4
@lm3533_als_set_resistor._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 749, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set resistor\0A\00", [40 x i8] zeroinitializer }, align 32
@lm3533_als_set_resistor._entry_ptr.69 = internal global ptr @lm3533_als_set_resistor._entry.67, section ".printk_index", align 4
@lm3533_als_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 806, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to enable ALS\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lm3533_als_enable\00", [46 x i8] zeroinitializer }, align 32
@lm3533_als_enable._entry_ptr = internal global ptr @lm3533_als_enable._entry, section ".printk_index", align 4
@lm3533_als_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 818, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to disable ALS\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm3533_als_disable\00", [45 x i8] zeroinitializer }, align 32
@lm3533_als_disable._entry_ptr = internal global ptr @lm3533_als_disable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"lm3533_als_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 912, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 914, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 843, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"lm3533_als_info\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 823, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"lm3533_als_channels\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 233, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 863, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 883, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [33 x i8] c"lm3533_als_event_attribute_group\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 689, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"lm3533_als_attribute_group\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 713, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"lm3533_als_event_attributes\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 672, i32 26 }
@___asan_gen_.128 = private unnamed_addr constant [42 x i8] c"dev_attr_in_illuminance0_thresh_either_en\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [54 x i8] c"lm3533_als_attr_in_illuminance0_thresh0_falling_value\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [51 x i8] c"lm3533_als_attr_in_illuminance0_thresh0_hysteresis\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [54 x i8] c"lm3533_als_attr_in_illuminance0_thresh0_raising_value\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [54 x i8] c"lm3533_als_attr_in_illuminance0_thresh1_falling_value\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [51 x i8] c"lm3533_als_attr_in_illuminance0_thresh1_hysteresis\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [54 x i8] c"lm3533_als_attr_in_illuminance0_thresh1_raising_value\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [54 x i8] c"lm3533_als_attr_in_illuminance0_thresh2_falling_value\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [51 x i8] c"lm3533_als_attr_in_illuminance0_thresh2_hysteresis\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [54 x i8] c"lm3533_als_attr_in_illuminance0_thresh2_raising_value\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [54 x i8] c"lm3533_als_attr_in_illuminance0_thresh3_falling_value\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [51 x i8] c"lm3533_als_attr_in_illuminance0_thresh3_hysteresis\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [54 x i8] c"lm3533_als_attr_in_illuminance0_thresh3_raising_value\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 663, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 420, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 302, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 94, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 285, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 626, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 145, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 331, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 166, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 353, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 368, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 648, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 631, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 627, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 649, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 632, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 628, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 650, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 633, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 629, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 651, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 634, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant [22 x i8] c"lm3533_als_attributes\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 693, i32 26 }
@___asan_gen_.278 = private unnamed_addr constant [30 x i8] c"dev_attr_in_illuminance0_zone\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current0_current0_raw\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current0_current1_raw\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current0_current2_raw\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current0_current3_raw\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current0_current4_raw\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current1_current0_raw\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current1_current1_raw\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current1_current2_raw\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current1_current3_raw\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current1_current4_raw\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current2_current0_raw\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current2_current1_raw\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current2_current2_raw\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current2_current3_raw\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [42 x i8] c"lm3533_als_attr_out_current2_current4_raw\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 670, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 591, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 592, i32 8 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 593, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 594, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 595, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 597, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 598, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 599, i32 8 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 600, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 601, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 603, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 604, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 605, i32 8 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 606, i32 8 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 607, i32 8 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 77, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 783, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 791, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 730, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 743, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 749, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 806, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.437 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.438 = private constant [34 x i8] c"../drivers/iio/light/lm3533-als.c\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 818, i32 3 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_lm3533_als_driver_exit, ptr @__initcall__kmod_lm3533_als__229_919_lm3533_als_driver_init6, ptr @_lm3533_als_get_zone._entry, ptr @_lm3533_als_get_zone._entry_ptr, ptr @lm3533_als_disable._entry, ptr @lm3533_als_disable._entry_ptr, ptr @lm3533_als_driver_exit, ptr @lm3533_als_enable._entry, ptr @lm3533_als_enable._entry_ptr, ptr @lm3533_als_get_adc._entry, ptr @lm3533_als_get_adc._entry_ptr, ptr @lm3533_als_get_int_mode._entry, ptr @lm3533_als_get_int_mode._entry_ptr, ptr @lm3533_als_get_target._entry, ptr @lm3533_als_get_target._entry_ptr, ptr @lm3533_als_get_threshold._entry, ptr @lm3533_als_get_threshold._entry_ptr, ptr @lm3533_als_probe._entry, ptr @lm3533_als_probe._entry.7, ptr @lm3533_als_probe._entry_ptr, ptr @lm3533_als_probe._entry_ptr.9, ptr @lm3533_als_set_input_mode._entry, ptr @lm3533_als_set_input_mode._entry_ptr, ptr @lm3533_als_set_int_mode._entry, ptr @lm3533_als_set_int_mode._entry_ptr, ptr @lm3533_als_set_resistor._entry, ptr @lm3533_als_set_resistor._entry.67, ptr @lm3533_als_set_resistor._entry_ptr, ptr @lm3533_als_set_resistor._entry_ptr.69, ptr @lm3533_als_set_target._entry, ptr @lm3533_als_set_target._entry_ptr, ptr @lm3533_als_set_threshold._entry, ptr @lm3533_als_set_threshold._entry.26, ptr @lm3533_als_set_threshold._entry_ptr, ptr @lm3533_als_set_threshold._entry_ptr.28, ptr @lm3533_als_setup_irq._entry, ptr @lm3533_als_setup_irq._entry.60, ptr @lm3533_als_setup_irq._entry_ptr, ptr @lm3533_als_setup_irq._entry_ptr.62, ptr @lm3533_als_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lm3533_als_info, ptr @lm3533_als_channels, ptr @lm3533_als_probe.__key, ptr @.str.6, ptr @.str.8, ptr @lm3533_als_event_attribute_group, ptr @lm3533_als_attribute_group, ptr @lm3533_als_event_attributes, ptr @dev_attr_in_illuminance0_thresh_either_en, ptr @lm3533_als_attr_in_illuminance0_thresh0_falling_value, ptr @lm3533_als_attr_in_illuminance0_thresh0_hysteresis, ptr @lm3533_als_attr_in_illuminance0_thresh0_raising_value, ptr @lm3533_als_attr_in_illuminance0_thresh1_falling_value, ptr @lm3533_als_attr_in_illuminance0_thresh1_hysteresis, ptr @lm3533_als_attr_in_illuminance0_thresh1_raising_value, ptr @lm3533_als_attr_in_illuminance0_thresh2_falling_value, ptr @lm3533_als_attr_in_illuminance0_thresh2_hysteresis, ptr @lm3533_als_attr_in_illuminance0_thresh2_raising_value, ptr @lm3533_als_attr_in_illuminance0_thresh3_falling_value, ptr @lm3533_als_attr_in_illuminance0_thresh3_hysteresis, ptr @lm3533_als_attr_in_illuminance0_thresh3_raising_value, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @lm3533_als_attributes, ptr @dev_attr_in_illuminance0_zone, ptr @lm3533_als_attr_out_current0_current0_raw, ptr @lm3533_als_attr_out_current0_current1_raw, ptr @lm3533_als_attr_out_current0_current2_raw, ptr @lm3533_als_attr_out_current0_current3_raw, ptr @lm3533_als_attr_out_current0_current4_raw, ptr @lm3533_als_attr_out_current1_current0_raw, ptr @lm3533_als_attr_out_current1_current1_raw, ptr @lm3533_als_attr_out_current1_current2_raw, ptr @lm3533_als_attr_out_current1_current3_raw, ptr @lm3533_als_attr_out_current1_current4_raw, ptr @lm3533_als_attr_out_current2_current0_raw, ptr @lm3533_als_attr_out_current2_current1_raw, ptr @lm3533_als_attr_out_current2_current2_raw, ptr @lm3533_als_attr_out_current2_current3_raw, ptr @lm3533_als_attr_out_current2_current4_raw, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_event_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_event_attributes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in_illuminance0_thresh_either_en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh0_falling_value to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh0_hysteresis to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh0_raising_value to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh1_falling_value to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh1_hysteresis to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh1_raising_value to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh2_falling_value to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh2_hysteresis to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh2_raising_value to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh3_falling_value to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh3_hysteresis to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_in_illuminance0_thresh3_raising_value to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_get_int_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_lm3533_als_get_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_set_int_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_get_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_get_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_set_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_set_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_set_threshold._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attributes to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in_illuminance0_zone to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current0_current0_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current0_current1_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current0_current2_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current0_current3_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current0_current4_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current1_current0_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current1_current1_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current1_current2_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current1_current3_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current1_current4_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current2_current0_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current2_current1_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current2_current2_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current2_current3_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_attr_out_current2_current4_raw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_get_adc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_setup_irq._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_set_input_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_set_resistor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_set_resistor._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3533_als_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_als_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lm3533_als_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3533_als_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @lm3533_als_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_als_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 112) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %info = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @lm3533_als_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @lm3533_als_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 14
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %num_channels, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.dev_name.exit_crit_edge

if.end10.dev_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end10.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.end10.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 15
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i, ptr %name, align 8
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %parent1.i = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %parent1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %parent1.i, align 8
  %17 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %call7, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 19
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %19, align 4
  %pdev17 = getelementptr inbounds %struct.lm3533_als, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %pdev17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pdev, ptr %pdev17, align 4
  %irq = getelementptr inbounds %struct.lm3533, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %irq18 = getelementptr inbounds %struct.lm3533_als, ptr %19, i32 0, i32 3
  %24 = ptrtoint ptr %irq18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %irq18, align 4
  %zone = getelementptr inbounds %struct.lm3533_als, ptr %19, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %zone, i32 noundef 4) #6
  %25 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %zone, align 4
  %thresh_mutex = getelementptr inbounds %struct.lm3533_als, ptr %19, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %thresh_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @lm3533_als_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %irq18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool23.not = icmp eq i32 %28, 0
  br i1 %tobool23.not, label %dev_name.exit.if.end29_crit_edge, label %if.then24

dev_name.exit.if.end29_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then24:                                        ; preds = %dev_name.exit
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %19, align 4
  %call.i = tail call i32 @lm3533_update(ptr noundef %30, i8 noundef zeroext 52, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i96 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i96, label %if.end.i97, label %do.end.i

do.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev17, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.58) #9
  br label %cleanup

if.end.i97:                                       ; preds = %if.then24
  %33 = ptrtoint ptr %irq18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq18, align 4
  %35 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev17, align 4
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i97.dev_name.exit.i_crit_edge

if.end.i97.dev_name.exit.i_crit_edge:             ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #8
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev3.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i97.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %40, %if.end.i.i ], [ %38, %if.end.i97.dev_name.exit.i_crit_edge ]
  %call5.i = tail call i32 @request_threaded_irq(i32 noundef %34, ptr noundef null, ptr noundef nonnull @lm3533_als_isr, i32 noundef 8200, ptr noundef %retval.0.i.i, ptr noundef nonnull %call7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %dev_name.exit.i.if.end29_crit_edge, label %do.end10.i

dev_name.exit.i.if.end29_crit_edge:               ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end10.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev17, align 4
  %dev12.i = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %irq18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.61, i32 noundef %44) #9
  br label %cleanup

if.end29:                                         ; preds = %dev_name.exit.i.if.end29_crit_edge, %dev_name.exit.if.end29_crit_edge
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i = load i8, ptr %5, align 4
  %46 = lshr i8 %bf.load.i, 6
  %47 = and i8 %46, 2
  %48 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %19, align 4
  %call.i.i99 = tail call i32 @lm3533_update(ptr noundef %49, i8 noundef zeroext 49, i8 noundef zeroext %47, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99)
  %tobool1.not.i.i = icmp eq i32 %call.i.i99, 0
  br i1 %tobool1.not.i.i, label %if.end.i100, label %lm3533_als_set_input_mode.exit.i

lm3533_als_set_input_mode.exit.i:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev17, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  %bf.load.lobit.i = lshr i8 %bf.load.i, 7
  %52 = zext i8 %bf.load.lobit.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.63, i32 noundef %52) #9
  br label %err_free_irq

if.end.i100:                                      ; preds = %if.end29
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load2.i = load i8, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load2.i)
  %tobool5.not.i = icmp sgt i8 %bf.load2.i, -1
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i100.if.end33_crit_edge

if.end.i100.if.end33_crit_edge:                   ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then6.i:                                       ; preds = %if.end.i100
  %r_select.i = getelementptr inbounds %struct.lm3533_als_platform_data, ptr %5, i32 0, i32 1
  %54 = ptrtoint ptr %r_select.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %r_select.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %56 = icmp slt i8 %55, 1
  br i1 %56, label %if.then6.i.lm3533_als_set_resistor.exit.i_crit_edge, label %if.end.i.i102

if.then6.i.lm3533_als_set_resistor.exit.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm3533_als_set_resistor.exit.i

if.end.i.i102:                                    ; preds = %if.then6.i
  %57 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %19, align 4
  %call.i18.i = tail call i32 @lm3533_write(ptr noundef %58, i8 noundef zeroext 48, i8 noundef zeroext %55) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %tobool.not.i.i101 = icmp eq i32 %call.i18.i, 0
  br i1 %tobool.not.i.i101, label %if.end.i.i102.if.end33_crit_edge, label %if.end.i.i102.lm3533_als_set_resistor.exit.i_crit_edge

if.end.i.i102.lm3533_als_set_resistor.exit.i_crit_edge: ; preds = %if.end.i.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm3533_als_set_resistor.exit.i

if.end.i.i102.if.end33_crit_edge:                 ; preds = %if.end.i.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

lm3533_als_set_resistor.exit.i:                   ; preds = %if.end.i.i102.lm3533_als_set_resistor.exit.i_crit_edge, %if.then6.i.lm3533_als_set_resistor.exit.i_crit_edge
  %.str.68.sink.i.i = phi ptr [ @.str.65, %if.then6.i.lm3533_als_set_resistor.exit.i_crit_edge ], [ @.str.68, %if.end.i.i102.lm3533_als_set_resistor.exit.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ -22, %if.then6.i.lm3533_als_set_resistor.exit.i_crit_edge ], [ %call.i18.i, %if.end.i.i102.lm3533_als_set_resistor.exit.i_crit_edge ]
  %59 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev17, align 4
  %dev10.i.i = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i.i, ptr noundef nonnull %.str.68.sink.i.i) #9
  br label %err_free_irq

if.end33:                                         ; preds = %if.end.i.i102.if.end33_crit_edge, %if.end.i100.if.end33_crit_edge
  %61 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %19, align 4
  %call.i104 = tail call i32 @lm3533_update(ptr noundef %62, i8 noundef zeroext 49, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i105 = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i105, label %if.end37, label %lm3533_als_enable.exit

lm3533_als_enable.exit:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev17, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.70) #9
  br label %err_free_irq

if.end37:                                         ; preds = %if.end33
  %call38 = tail call i32 @__iio_device_register(ptr noundef nonnull %call7, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %do.end43

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  tail call fastcc void @lm3533_als_disable(ptr noundef %19)
  br label %err_free_irq

err_free_irq:                                     ; preds = %do.end43, %lm3533_als_enable.exit, %lm3533_als_set_resistor.exit.i, %lm3533_als_set_input_mode.exit.i
  %ret.0 = phi i32 [ %call.i104, %lm3533_als_enable.exit ], [ %call38, %do.end43 ], [ %call.i.i99, %lm3533_als_set_input_mode.exit.i ], [ %retval.0.ph.i.i, %lm3533_als_set_resistor.exit.i ]
  %65 = ptrtoint ptr %irq18 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool48.not = icmp eq i32 %66, 0
  br i1 %tobool48.not, label %err_free_irq.cleanup_crit_edge, label %if.then49

err_free_irq.cleanup_crit_edge:                   ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then49:                                        ; preds = %err_free_irq
  call void @__sanitizer_cov_trace_pc() #8
  %call51 = tail call ptr @free_irq(i32 noundef %66, ptr noundef nonnull %call7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %err_free_irq.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end10.i, %do.end.i, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ %ret.0, %if.then49 ], [ %ret.0, %err_free_irq.cleanup_crit_edge ], [ %call5.i, %do.end10.i ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_als_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1.i = tail call i32 @lm3533_update(ptr noundef %5, i8 noundef zeroext 52, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %entry.lm3533_als_set_int_mode.exit_crit_edge, label %do.end.i

entry.lm3533_als_set_int_mode.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm3533_als_set_int_mode.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16, i32 noundef 0) #9
  br label %lm3533_als_set_int_mode.exit

lm3533_als_set_int_mode.exit:                     ; preds = %do.end.i, %entry.lm3533_als_set_int_mode.exit_crit_edge
  tail call void @iio_device_unregister(ptr noundef %1) #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @lm3533_update(ptr noundef %7, i8 noundef zeroext 49, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lm3533_als_set_int_mode.exit.lm3533_als_disable.exit_crit_edge, label %do.end.i12

lm3533_als_set_int_mode.exit.lm3533_als_disable.exit_crit_edge: ; preds = %lm3533_als_set_int_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm3533_als_disable.exit

do.end.i12:                                       ; preds = %lm3533_als_set_int_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i = getelementptr inbounds %struct.lm3533_als, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %dev.i11 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i11, ptr noundef nonnull @.str.72) #9
  br label %lm3533_als_disable.exit

lm3533_als_disable.exit:                          ; preds = %do.end.i12, %lm3533_als_set_int_mode.exit.lm3533_als_disable.exit_crit_edge
  %irq = getelementptr inbounds %struct.lm3533_als, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %lm3533_als_disable.exit.if.end_crit_edge, label %if.then

lm3533_als_disable.exit.if.end_crit_edge:         ; preds = %lm3533_als_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lm3533_als_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lm3533_als_disable.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lm3533_als_disable(ptr nocapture noundef readonly %als) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %als to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %als, align 4
  %call = tail call i32 @lm3533_update(ptr noundef %1, i8 noundef zeroext 49, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.lm3533_als, ptr %als, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_als_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %val.i15 = alloca i8, align 1
  %val.i.i.i = alloca i8, align 1
  %target.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chan, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %2, label %sw.bb.cleanup_crit_edge [
    i32 6, label %sw.bb1
    i32 1, label %sw.bb2
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %val.i, align 1, !annotation !217
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call1.i = call i32 @lm3533_read(ptr noundef %8, i8 noundef zeroext 55, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.56) #9
  br label %lm3533_als_get_adc.exit

if.end4.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %val, align 4
  br label %lm3533_als_get_adc.exit

lm3533_als_get_adc.exit:                          ; preds = %if.end4.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %sw.epilog7

sw.bb2:                                           ; preds = %sw.bb
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %target.i) #6
  %14 = ptrtoint ptr %target.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %target.i, align 1, !annotation !217
  %priv.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %15 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.lm3533_als, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i.i, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %zone2.i.i = getelementptr inbounds %struct.lm3533_als, ptr %16, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %zone2.i.i, i32 noundef 4) #6
  %20 = ptrtoint ptr %zone2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %zone2.i.i, align 4
  %conv.i.i = trunc i32 %21 to i8
  br label %if.end.i

if.else.i.i:                                      ; preds = %sw.bb2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i) #6
  %22 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %val.i.i.i, align 1, !annotation !217
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %16, align 4
  %call1.i.i.i = call i32 @lm3533_read(ptr noundef %24, i8 noundef zeroext 52, ptr noundef nonnull %val.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %_lm3533_als_get_zone.exit.thread.i.i, label %lm3533_als_get_zone.exit.i

_lm3533_als_get_zone.exit.thread.i.i:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val.i.i.i, align 1
  %27 = lshr i8 %26, 2
  %28 = and i8 %27, 7
  %29 = call i8 @llvm.umin.i8(i8 %28, i8 4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #6
  br label %if.end.i

lm3533_als_get_zone.exit.i:                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #6
  br label %lm3533_als_get_current.exit

if.end.i:                                         ; preds = %_lm3533_als_get_zone.exit.thread.i.i, %if.then.i.i
  %zone.0.ph.i = phi i8 [ %conv.i.i, %if.then.i.i ], [ %29, %_lm3533_als_get_zone.exit.thread.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i.i = icmp ugt i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %zone.0.ph.i)
  %cmp1.i.i = icmp ugt i8 %zone.0.ph.i, 4
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %if.end.i.lm3533_als_get_current.exit_crit_edge, label %if.end3.i.i

if.end.i.lm3533_als_get_current.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm3533_als_get_current.exit

if.end3.i.i:                                      ; preds = %if.end.i
  %30 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i.i.i, align 8
  %32 = trunc i32 %13 to i8
  %33 = mul nuw nsw i8 %32, 5
  %34 = add nuw nsw i8 %33, 96
  %conv.i.i.i = add nuw nsw i8 %34, %zone.0.ph.i
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %31, align 4
  %call5.i.i = call i32 @lm3533_read(ptr noundef %36, i8 noundef zeroext %conv.i.i.i, ptr noundef nonnull %target.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i13.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i13.i, label %if.end4.i14, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.19) #9
  br label %lm3533_als_get_current.exit

if.end4.i14:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %target.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %target.i, align 1
  %conv5.i = zext i8 %38 to i32
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv5.i, ptr %val, align 4
  br label %lm3533_als_get_current.exit

lm3533_als_get_current.exit:                      ; preds = %if.end4.i14, %do.end.i.i, %if.end.i.lm3533_als_get_current.exit_crit_edge, %lm3533_als_get_zone.exit.i
  %retval.0.i = phi i32 [ 0, %if.end4.i14 ], [ %call1.i.i.i, %lm3533_als_get_zone.exit.i ], [ %call5.i.i, %do.end.i.i ], [ -22, %if.end.i.lm3533_als_get_current.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %target.i) #6
  br label %sw.epilog7

sw.bb4:                                           ; preds = %entry
  %priv.i.i16 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %40 = ptrtoint ptr %priv.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv.i.i16, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i15) #6
  %42 = ptrtoint ptr %val.i15 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %val.i15, align 1, !annotation !217
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %41, align 4
  %call1.i17 = call i32 @lm3533_read(ptr noundef %44, i8 noundef zeroext 56, ptr noundef nonnull %val.i15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %if.end4.i22, label %do.end.i20

do.end.i20:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i19 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i19, ptr noundef nonnull @.str.56) #9
  br label %lm3533_als_get_adc.exit23

if.end4.i22:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %val.i15 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val.i15, align 1
  %conv.i21 = zext i8 %46 to i32
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv.i21, ptr %val, align 4
  br label %lm3533_als_get_adc.exit23

lm3533_als_get_adc.exit23:                        ; preds = %if.end4.i22, %do.end.i20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i15) #6
  br label %sw.epilog7

sw.epilog7:                                       ; preds = %lm3533_als_get_adc.exit23, %lm3533_als_get_current.exit, %lm3533_als_get_adc.exit
  %ret.0 = phi i32 [ %call1.i17, %lm3533_als_get_adc.exit23 ], [ %retval.0.i, %lm3533_als_get_current.exit ], [ %call1.i, %lm3533_als_get_adc.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  %.ret.0 = select i1 %tobool.not, i32 1, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog7, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %.ret.0, %sw.epilog7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_thresh_either_en(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %irq = getelementptr inbounds %struct.lm3533_als, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val.i, align 1, !annotation !217
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call1.i = call i32 @lm3533_read(ptr noundef %6, i8 noundef zeroext 52, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %lm3533_als_get_int_mode.exit.thread, label %lm3533_als_get_int_mode.exit

lm3533_als_get_int_mode.exit.thread:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i, align 1
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %if.end5

lm3533_als_get_int_mode.exit:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %cleanup

if.end5:                                          ; preds = %lm3533_als_get_int_mode.exit.thread, %entry.if.end5_crit_edge
  %enable.1 = phi i32 [ %10, %lm3533_als_get_int_mode.exit.thread ], [ 0, %entry.if.end5_crit_edge ]
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %enable.1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lm3533_als_get_int_mode.exit
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call1.i, %lm3533_als_get_int_mode.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_thresh_either_en(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #6
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %enable, align 4, !annotation !217
  %irq = getelementptr inbounds %struct.lm3533_als, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.lm3533_als, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  %tobool7.not.not = xor i1 %tobool7.not, true
  %brmerge = select i1 %tobool8.not, i1 true, i1 %tobool7.not.not
  br i1 %brmerge, label %if.end5.if.end17_crit_edge, label %if.then10

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then10:                                        ; preds = %if.end5
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %flags.i = getelementptr inbounds %struct.lm3533_als, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %zone2.i = getelementptr inbounds %struct.lm3533_als, ptr %11, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %zone2.i, i32 noundef 4) #6
  %15 = ptrtoint ptr %zone2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %zone2.i, align 4
  %conv.i = trunc i32 %16 to i8
  br label %if.end14

if.else.i:                                        ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #6
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %val.i.i, align 1, !annotation !217
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 4
  %call1.i.i = call i32 @lm3533_read(ptr noundef %19, i8 noundef zeroext 52, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %_lm3533_als_get_zone.exit.thread.i, label %lm3533_als_get_zone.exit

_lm3533_als_get_zone.exit.thread.i:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i.i, align 1
  %22 = lshr i8 %21, 2
  %23 = and i8 %22, 7
  %24 = call i8 @llvm.umin.i8(i8 %23, i8 4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  br label %if.end14

lm3533_als_get_zone.exit:                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  br label %cleanup

if.end14:                                         ; preds = %_lm3533_als_get_zone.exit.thread.i, %if.then.i
  %zone.0.ph = phi i8 [ %conv.i, %if.then.i ], [ %24, %_lm3533_als_get_zone.exit.thread.i ]
  %zone15 = getelementptr inbounds %struct.lm3533_als, ptr %1, i32 0, i32 4
  %conv = zext i8 %zone.0.ph to i32
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %zone15, i32 noundef 4) #6
  %25 = ptrtoint ptr %zone15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %conv, ptr %zone15, align 4
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #6
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %if.end5.if.end17_crit_edge
  %26 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enable, align 4
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i47 = icmp ne i32 %27, 0
  %..i = zext i1 %tobool.not.i47 to i8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call1.i = call i32 @lm3533_update(ptr noundef %31, i8 noundef zeroext 52, i8 noundef zeroext %..i, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %27) #9
  br i1 %tobool7.not, label %if.then22, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %32 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool26.not = icmp eq i32 %33, 0
  br i1 %tobool26.not, label %if.then27, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %if.then22, %if.then20.cleanup_crit_edge, %lm3533_als_get_zone.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call1.i.i, %lm3533_als_get_zone.exit ], [ %call1.i, %if.then22 ], [ %call1.i, %if.then20.cleanup_crit_edge ], [ %len, %if.then27 ], [ %len, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_update(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_als_attr(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  %falling.i = alloca i8, align 1
  %raising.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !217
  %type = getelementptr inbounds %struct.lm3533_als_attribute, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb8
    i32 3, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val1 = getelementptr inbounds %struct.lm3533_als_attribute, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %val1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val1, align 4
  %priv.i.i = getelementptr i8, ptr %dev, i32 1080
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %falling.i) #6
  %8 = ptrtoint ptr %falling.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %falling.i, align 1, !annotation !217
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %raising.i) #6
  %9 = ptrtoint ptr %raising.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %raising.i, align 1, !annotation !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp.i = icmp ugt i8 %5, 3
  br i1 %cmp.i, label %sw.epilog.thread58, label %if.end.i.i

sw.epilog.thread58:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %raising.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %falling.i) #6
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb
  %thresh_mutex.i = getelementptr inbounds %struct.lm3533_als, ptr %7, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %thresh_mutex.i, i32 noundef 0) #6
  %10 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i.i, align 8
  %12 = shl nuw nsw i8 %5, 1
  %conv3.i.i.i = add nuw nsw i8 %12, 81
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %11, align 4
  %call2.i.i = call i32 @lm3533_read(ptr noundef %14, i8 noundef zeroext %conv3.i.i.i, ptr noundef nonnull %falling.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i28.i, label %if.end.i.i.sw.epilog.thread62_crit_edge

if.end.i.i.sw.epilog.thread62_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread62

if.end.i28.i:                                     ; preds = %if.end.i.i
  %15 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i.i, align 8
  %conv3.i.i25.i = add nuw nsw i8 %12, 80
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call2.i26.i = call i32 @lm3533_read(ptr noundef %18, i8 noundef zeroext %conv3.i.i25.i, ptr noundef nonnull %raising.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i26.i)
  %tobool3.not.i27.i = icmp eq i32 %call2.i26.i, 0
  br i1 %tobool3.not.i27.i, label %sw.epilog, label %if.end.i28.i.sw.epilog.thread62_crit_edge

if.end.i28.i.sw.epilog.thread62_crit_edge:        ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread62

sw.bb3:                                           ; preds = %entry
  %val14 = getelementptr inbounds %struct.lm3533_als_attribute, ptr %attr, i32 0, i32 2
  %19 = ptrtoint ptr %val14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val14, align 4
  %val2 = getelementptr inbounds %struct.lm3533_als_attribute, ptr %attr, i32 0, i32 3
  %21 = ptrtoint ptr %val2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp.i30 = icmp ugt i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp1.i = icmp ugt i8 %22, 4
  %or.cond.i = or i1 %cmp.i30, %cmp1.i
  br i1 %or.cond.i, label %sw.bb3.cleanup_crit_edge, label %if.end3.i

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %sw.bb3
  %priv.i.i31 = getelementptr i8, ptr %dev, i32 1080
  %23 = ptrtoint ptr %priv.i.i31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i.i31, align 8
  %mul.i.i = mul nuw nsw i8 %20, 5
  %add.i.i = add nuw nsw i8 %mul.i.i, 96
  %add1.i.i = add nuw nsw i8 %add.i.i, %22
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call5.i = call i32 @lm3533_read(ptr noundef %26, i8 noundef zeroext %add1.i.i, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end3.i.if.end_crit_edge, label %do.end.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %val19 = getelementptr inbounds %struct.lm3533_als_attribute, ptr %attr, i32 0, i32 2
  %27 = ptrtoint ptr %val19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp.i33 = icmp ugt i8 %28, 3
  br i1 %cmp.i33, label %sw.bb8.cleanup_crit_edge, label %if.end.i

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb8
  %priv.i.i34 = getelementptr i8, ptr %dev, i32 1080
  %29 = ptrtoint ptr %priv.i.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv.i.i34, align 8
  %mul.i.i35 = shl nuw nsw i8 %28, 1
  %add2.i.i = add nuw nsw i8 %mul.i.i35, 81
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call2.i = call i32 @lm3533_read(ptr noundef %32, i8 noundef zeroext %add2.i.i, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end_crit_edge, label %do.end.i38

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i38:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %val113 = getelementptr inbounds %struct.lm3533_als_attribute, ptr %attr, i32 0, i32 2
  %33 = ptrtoint ptr %val113 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %val113, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp.i40 = icmp ugt i8 %34, 3
  br i1 %cmp.i40, label %sw.bb12.cleanup_crit_edge, label %if.end.i47

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i47:                                       ; preds = %sw.bb12
  %priv.i.i41 = getelementptr i8, ptr %dev, i32 1080
  %35 = ptrtoint ptr %priv.i.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv.i.i41, align 8
  %mul.i.i42 = shl nuw nsw i8 %34, 1
  %add.i.i43 = add nuw nsw i8 %mul.i.i42, 80
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call2.i45 = call i32 @lm3533_read(ptr noundef %38, i8 noundef zeroext %add.i.i43, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i45)
  %tobool3.not.i46 = icmp eq i32 %call2.i45, 0
  br i1 %tobool3.not.i46, label %if.end.i47.if.end_crit_edge, label %do.end.i49

if.end.i47.if.end_crit_edge:                      ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i49:                                       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %cleanup

sw.epilog.thread62:                               ; preds = %if.end.i28.i.sw.epilog.thread62_crit_edge, %if.end.i.i.sw.epilog.thread62_crit_edge
  %ret.0.i.ph = phi i32 [ %call2.i.i, %if.end.i.i.sw.epilog.thread62_crit_edge ], [ %call2.i26.i, %if.end.i28.i.sw.epilog.thread62_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  call void @mutex_unlock(ptr noundef %thresh_mutex.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %raising.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %falling.i) #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %raising.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %raising.i, align 1
  %41 = ptrtoint ptr %falling.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %falling.i, align 1
  %sub.i = sub i8 %40, %42
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %sub.i, ptr %val, align 1
  call void @mutex_unlock(ptr noundef %thresh_mutex.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %raising.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %falling.i) #6
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.end.i47.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.end3.i.if.end_crit_edge
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %val, align 1
  %conv16 = zext i8 %45 to i32
  %call17 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %conv16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.thread62, %do.end.i49, %sw.bb12.cleanup_crit_edge, %do.end.i38, %sw.bb8.cleanup_crit_edge, %do.end.i, %sw.bb3.cleanup_crit_edge, %sw.epilog.thread58, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end ], [ -22, %sw.epilog.thread58 ], [ %ret.0.i.ph, %sw.epilog.thread62 ], [ %call2.i45, %do.end.i49 ], [ -22, %sw.bb12.cleanup_crit_edge ], [ %call2.i, %do.end.i38 ], [ -22, %sw.bb8.cleanup_crit_edge ], [ %call5.i, %do.end.i ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_als_attr(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !217
  %call2 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.lm3533_als_attribute, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %2, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %val1 = getelementptr inbounds %struct.lm3533_als_attribute, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %val1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val1, align 4
  %val2 = getelementptr inbounds %struct.lm3533_als_attribute, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %val2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp ugt i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp1.i = icmp ugt i8 %7, 4
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %sw.bb.cleanup_crit_edge, label %if.end3.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %sw.bb
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %priv.i.i = getelementptr i8, ptr %dev, i32 1080
  %10 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i.i, align 8
  %mul.i.i = mul nuw nsw i8 %5, 5
  %add.i.i = add nuw nsw i8 %mul.i.i, 96
  %add1.i.i = add nuw nsw i8 %add.i.i, %7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call5.i = call i32 @lm3533_write(ptr noundef %13, i8 noundef zeroext %add1.i.i, i8 noundef zeroext %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end3.i.sw.epilog.thread28_crit_edge, label %do.end.i

if.end3.i.sw.epilog.thread28_crit_edge:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread28

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val16 = getelementptr inbounds %struct.lm3533_als_attribute, ptr %attr, i32 0, i32 2
  %14 = ptrtoint ptr %val16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val16, align 4
  %conv7 = zext i8 %15 to i32
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val, align 1
  %call8 = call fastcc i32 @lm3533_als_set_threshold(ptr noundef %add.ptr.i, i32 noundef %conv7, i1 noundef zeroext false, i8 noundef zeroext %17)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %val110 = getelementptr inbounds %struct.lm3533_als_attribute, ptr %attr, i32 0, i32 2
  %18 = ptrtoint ptr %val110 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val110, align 4
  %conv11 = zext i8 %19 to i32
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  %call12 = call fastcc i32 @lm3533_als_set_threshold(ptr noundef %add.ptr.i, i32 noundef %conv11, i1 noundef zeroext true, i8 noundef zeroext %21)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb5
  %ret.0 = phi i32 [ %call12, %sw.bb9 ], [ %call8, %sw.bb5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool13.not = icmp eq i32 %ret.0, 0
  br i1 %tobool13.not, label %sw.epilog.sw.epilog.thread28_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.sw.epilog.thread28_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread28

sw.epilog.thread28:                               ; preds = %sw.epilog.sw.epilog.thread28_crit_edge, %if.end3.i.sw.epilog.thread28_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.thread28, %sw.epilog.cleanup_crit_edge, %do.end.i, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %len, %sw.epilog.thread28 ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ %call5.i, %do.end.i ], [ -22, %sw.bb.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm3533_als_set_threshold(ptr noundef %indio_dev, i32 noundef %nr, i1 noundef zeroext %raising, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %val2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val2) #6
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val2, align 1, !annotation !217
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %nr)
  %cmp = icmp ugt i32 %nr, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lnot.i = xor i1 %raising, true
  %mul.i = shl nuw nsw i32 %nr, 1
  %add.i = add nuw nsw i32 %mul.i, 80
  %conv1.i = zext i1 %lnot.i to i32
  %add2.i = or i32 %add.i, %conv1.i
  %conv3.i = trunc i32 %add2.i to i8
  %conv1.i50 = zext i1 %raising to i32
  %add2.i51 = or i32 %add.i, %conv1.i50
  %conv3.i52 = trunc i32 %add2.i51 to i8
  %thresh_mutex = getelementptr inbounds %struct.lm3533_als, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %thresh_mutex, i32 noundef 0) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call4 = call i32 @lm3533_read(ptr noundef %4, i8 noundef zeroext %conv3.i52, ptr noundef nonnull %val2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out.sink.split_crit_edge

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val2, align 1
  br i1 %raising, label %land.lhs.true, label %land.lhs.true13.critedge

land.lhs.true:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %val)
  %cmp10 = icmp ugt i8 %6, %val
  br i1 %cmp10, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.lhs.true13.critedge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %val)
  %cmp16 = icmp ult i8 %6, %val
  br i1 %cmp16, label %land.lhs.true13.critedge.out_crit_edge, label %land.lhs.true13.critedge.if.end19_crit_edge

land.lhs.true13.critedge.if.end19_crit_edge:      ; preds = %land.lhs.true13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true13.critedge.out_crit_edge:           ; preds = %land.lhs.true13.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %land.lhs.true13.critedge.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call21 = call i32 @lm3533_write(ptr noundef %8, i8 noundef zeroext %conv3.i, i8 noundef zeroext %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.out_crit_edge, label %if.end19.out.sink.split_crit_edge

if.end19.out.sink.split_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out.sink.split:                                   ; preds = %if.end19.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.21, %if.end.out.sink.split_crit_edge ], [ @.str.27, %if.end19.out.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call4, %if.end.out.sink.split_crit_edge ], [ %call21, %if.end19.out.sink.split_crit_edge ]
  %dev27 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull %.str.27.sink) #9
  br label %out

out:                                              ; preds = %out.sink.split, %if.end19.out_crit_edge, %land.lhs.true13.critedge.out_crit_edge, %land.lhs.true.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end19.out_crit_edge ], [ -22, %land.lhs.true13.critedge.out_crit_edge ], [ -22, %land.lhs.true.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %thresh_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val2) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lm3533_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_zone(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %flags.i = getelementptr inbounds %struct.lm3533_als, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %zone2.i = getelementptr inbounds %struct.lm3533_als, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %zone2.i, i32 noundef 4) #6
  %5 = ptrtoint ptr %zone2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %zone2.i, align 4
  %conv.i = trunc i32 %6 to i8
  br label %if.end

if.else.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #6
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %val.i.i, align 1, !annotation !217
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call1.i.i = call i32 @lm3533_read(ptr noundef %9, i8 noundef zeroext 52, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %_lm3533_als_get_zone.exit.thread.i, label %lm3533_als_get_zone.exit

_lm3533_als_get_zone.exit.thread.i:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i.i, align 1
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 7
  %14 = call i8 @llvm.umin.i8(i8 %13, i8 4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  br label %if.end

lm3533_als_get_zone.exit:                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %_lm3533_als_get_zone.exit.thread.i, %if.then.i
  %zone.0.ph = phi i8 [ %conv.i, %if.then.i ], [ %14, %_lm3533_als_get_zone.exit.thread.i ]
  %conv = zext i8 %zone.0.ph to i32
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lm3533_als_get_zone.exit
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1.i.i, %lm3533_als_get_zone.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3533_als_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val.i, align 1, !annotation !217
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1.i = call i32 @lm3533_read(ptr noundef %4, i8 noundef zeroext 52, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %_lm3533_als_get_zone.exit

_lm3533_als_get_zone.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 7
  %9 = call i8 @llvm.umin.i8(i8 %8, i8 4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %zone2 = getelementptr inbounds %struct.lm3533_als, ptr %1, i32 0, i32 4
  %conv = zext i8 %9 to i32
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %zone2, i32 noundef 4) #6
  %10 = ptrtoint ptr %zone2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %conv, ptr %zone2, align 4
  %call3 = call i64 @iio_get_time_ns(ptr noundef %dev_id) #6
  %call4 = call i32 @iio_push_event(ptr noundef %dev_id, i64 noundef 25769803776, i64 noundef %call3) #6
  br label %out

out:                                              ; preds = %if.end, %_lm3533_als_get_zone.exit
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !172, !173, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @__initcall__kmod_lm3533_als__229_919_lm3533_als_driver_init6, !1, !"__initcall__kmod_lm3533_als__229_919_lm3533_als_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/lm3533-als.c", i32 919, i32 1}
!2 = !{ptr @__exitcall_lm3533_als_driver_exit, !1, !"__exitcall_lm3533_als_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/lm3533-als.c", i32 921, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/lm3533-als.c", i32 922, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/lm3533-als.c", i32 923, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias234, !11, !"__UNIQUE_ID_alias234", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/lm3533-als.c", i32 924, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/lm3533-als.c", i32 914, i32 11}
!14 = !{ptr @lm3533_als_driver, !15, !"lm3533_als_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/lm3533-als.c", i32 912, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/lm3533-als.c", i32 843, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lm3533_als_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lm3533_als_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lm3533_als_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/light/lm3533-als.c", i32 863, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/lm3533-als.c", i32 883, i32 3}
!29 = !{ptr @lm3533_als_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lm3533_als_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @lm3533_als_info, !32, !"lm3533_als_info", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/lm3533-als.c", i32 823, i32 30}
!33 = !{ptr @lm3533_als_event_attribute_group, !34, !"lm3533_als_event_attribute_group", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/lm3533-als.c", i32 689, i32 37}
!35 = !{ptr @lm3533_als_event_attributes, !36, !"lm3533_als_event_attributes", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/lm3533-als.c", i32 672, i32 26}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/lm3533-als.c", i32 663, i32 8}
!39 = !{ptr @dev_attr_in_illuminance0_thresh_either_en, !38, !"dev_attr_in_illuminance0_thresh_either_en", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/light/lm3533-als.c", i32 420, i32 35}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/lm3533-als.c", i32 302, i32 3}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @lm3533_als_get_int_mode._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @lm3533_als_get_int_mode._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/light/lm3533-als.c", i32 94, i32 3}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @_lm3533_als_get_zone._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @_lm3533_als_get_zone._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/lm3533-als.c", i32 285, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @lm3533_als_set_int_mode._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @lm3533_als_set_int_mode._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/light/lm3533-als.c", i32 626, i32 8}
!59 = !{ptr @lm3533_als_attr_in_illuminance0_thresh0_falling_value, !58, !"lm3533_als_attr_in_illuminance0_thresh0_falling_value", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/light/lm3533-als.c", i32 145, i32 3}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @lm3533_als_get_target._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @lm3533_als_get_target._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/lm3533-als.c", i32 331, i32 3}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @lm3533_als_get_threshold._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @lm3533_als_get_threshold._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/lm3533-als.c", i32 166, i32 3}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @lm3533_als_set_target._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @lm3533_als_set_target._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/light/lm3533-als.c", i32 353, i32 3}
!77 = !{ptr @lm3533_als_set_threshold._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @lm3533_als_set_threshold._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/light/lm3533-als.c", i32 368, i32 3}
!81 = !{ptr @lm3533_als_set_threshold._entry.26, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @lm3533_als_set_threshold._entry_ptr.28, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/light/lm3533-als.c", i32 648, i32 8}
!85 = !{ptr @lm3533_als_attr_in_illuminance0_thresh0_hysteresis, !84, !"lm3533_als_attr_in_illuminance0_thresh0_hysteresis", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/light/lm3533-als.c", i32 631, i32 8}
!88 = !{ptr @lm3533_als_attr_in_illuminance0_thresh0_raising_value, !87, !"lm3533_als_attr_in_illuminance0_thresh0_raising_value", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/light/lm3533-als.c", i32 627, i32 8}
!91 = !{ptr @lm3533_als_attr_in_illuminance0_thresh1_falling_value, !90, !"lm3533_als_attr_in_illuminance0_thresh1_falling_value", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/light/lm3533-als.c", i32 649, i32 8}
!94 = !{ptr @lm3533_als_attr_in_illuminance0_thresh1_hysteresis, !93, !"lm3533_als_attr_in_illuminance0_thresh1_hysteresis", i1 false, i1 false}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/light/lm3533-als.c", i32 632, i32 8}
!97 = !{ptr @lm3533_als_attr_in_illuminance0_thresh1_raising_value, !96, !"lm3533_als_attr_in_illuminance0_thresh1_raising_value", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/light/lm3533-als.c", i32 628, i32 8}
!100 = !{ptr @lm3533_als_attr_in_illuminance0_thresh2_falling_value, !99, !"lm3533_als_attr_in_illuminance0_thresh2_falling_value", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/light/lm3533-als.c", i32 650, i32 8}
!103 = !{ptr @lm3533_als_attr_in_illuminance0_thresh2_hysteresis, !102, !"lm3533_als_attr_in_illuminance0_thresh2_hysteresis", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/light/lm3533-als.c", i32 633, i32 8}
!106 = !{ptr @lm3533_als_attr_in_illuminance0_thresh2_raising_value, !105, !"lm3533_als_attr_in_illuminance0_thresh2_raising_value", i1 false, i1 false}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/light/lm3533-als.c", i32 629, i32 8}
!109 = !{ptr @lm3533_als_attr_in_illuminance0_thresh3_falling_value, !108, !"lm3533_als_attr_in_illuminance0_thresh3_falling_value", i1 false, i1 false}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/light/lm3533-als.c", i32 651, i32 8}
!112 = !{ptr @lm3533_als_attr_in_illuminance0_thresh3_hysteresis, !111, !"lm3533_als_attr_in_illuminance0_thresh3_hysteresis", i1 false, i1 false}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/light/lm3533-als.c", i32 634, i32 8}
!115 = !{ptr @lm3533_als_attr_in_illuminance0_thresh3_raising_value, !114, !"lm3533_als_attr_in_illuminance0_thresh3_raising_value", i1 false, i1 false}
!116 = !{ptr @lm3533_als_attribute_group, !117, !"lm3533_als_attribute_group", i1 false, i1 false}
!117 = !{!"../drivers/iio/light/lm3533-als.c", i32 713, i32 37}
!118 = !{ptr @lm3533_als_attributes, !119, !"lm3533_als_attributes", i1 false, i1 false}
!119 = !{!"../drivers/iio/light/lm3533-als.c", i32 693, i32 26}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/light/lm3533-als.c", i32 670, i32 8}
!122 = !{ptr @dev_attr_in_illuminance0_zone, !121, !"dev_attr_in_illuminance0_zone", i1 false, i1 false}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/light/lm3533-als.c", i32 591, i32 8}
!125 = !{ptr @lm3533_als_attr_out_current0_current0_raw, !124, !"lm3533_als_attr_out_current0_current0_raw", i1 false, i1 false}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/light/lm3533-als.c", i32 592, i32 8}
!128 = !{ptr @lm3533_als_attr_out_current0_current1_raw, !127, !"lm3533_als_attr_out_current0_current1_raw", i1 false, i1 false}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/light/lm3533-als.c", i32 593, i32 8}
!131 = !{ptr @lm3533_als_attr_out_current0_current2_raw, !130, !"lm3533_als_attr_out_current0_current2_raw", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/light/lm3533-als.c", i32 594, i32 8}
!134 = !{ptr @lm3533_als_attr_out_current0_current3_raw, !133, !"lm3533_als_attr_out_current0_current3_raw", i1 false, i1 false}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/light/lm3533-als.c", i32 595, i32 8}
!137 = !{ptr @lm3533_als_attr_out_current0_current4_raw, !136, !"lm3533_als_attr_out_current0_current4_raw", i1 false, i1 false}
!138 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/iio/light/lm3533-als.c", i32 597, i32 8}
!140 = !{ptr @lm3533_als_attr_out_current1_current0_raw, !139, !"lm3533_als_attr_out_current1_current0_raw", i1 false, i1 false}
!141 = !{ptr @.str.47, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/light/lm3533-als.c", i32 598, i32 8}
!143 = !{ptr @lm3533_als_attr_out_current1_current1_raw, !142, !"lm3533_als_attr_out_current1_current1_raw", i1 false, i1 false}
!144 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/iio/light/lm3533-als.c", i32 599, i32 8}
!146 = !{ptr @lm3533_als_attr_out_current1_current2_raw, !145, !"lm3533_als_attr_out_current1_current2_raw", i1 false, i1 false}
!147 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/light/lm3533-als.c", i32 600, i32 8}
!149 = !{ptr @lm3533_als_attr_out_current1_current3_raw, !148, !"lm3533_als_attr_out_current1_current3_raw", i1 false, i1 false}
!150 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/iio/light/lm3533-als.c", i32 601, i32 8}
!152 = !{ptr @lm3533_als_attr_out_current1_current4_raw, !151, !"lm3533_als_attr_out_current1_current4_raw", i1 false, i1 false}
!153 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/iio/light/lm3533-als.c", i32 603, i32 8}
!155 = !{ptr @lm3533_als_attr_out_current2_current0_raw, !154, !"lm3533_als_attr_out_current2_current0_raw", i1 false, i1 false}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/iio/light/lm3533-als.c", i32 604, i32 8}
!158 = !{ptr @lm3533_als_attr_out_current2_current1_raw, !157, !"lm3533_als_attr_out_current2_current1_raw", i1 false, i1 false}
!159 = !{ptr @.str.53, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/iio/light/lm3533-als.c", i32 605, i32 8}
!161 = !{ptr @lm3533_als_attr_out_current2_current2_raw, !160, !"lm3533_als_attr_out_current2_current2_raw", i1 false, i1 false}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/iio/light/lm3533-als.c", i32 606, i32 8}
!164 = !{ptr @lm3533_als_attr_out_current2_current3_raw, !163, !"lm3533_als_attr_out_current2_current3_raw", i1 false, i1 false}
!165 = !{ptr @.str.55, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/iio/light/lm3533-als.c", i32 607, i32 8}
!167 = !{ptr @lm3533_als_attr_out_current2_current4_raw, !166, !"lm3533_als_attr_out_current2_current4_raw", i1 false, i1 false}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/iio/light/lm3533-als.c", i32 77, i32 3}
!170 = !{ptr @.str.57, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @lm3533_als_get_adc._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @lm3533_als_get_adc._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @lm3533_als_channels, !174, !"lm3533_als_channels", i1 false, i1 false}
!174 = !{!"../drivers/iio/light/lm3533-als.c", i32 233, i32 35}
!175 = !{ptr @.str.58, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/iio/light/lm3533-als.c", i32 783, i32 3}
!177 = !{ptr @.str.59, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @lm3533_als_setup_irq._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @lm3533_als_setup_irq._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.61, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/iio/light/lm3533-als.c", i32 791, i32 3}
!182 = !{ptr @lm3533_als_setup_irq._entry.60, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @lm3533_als_setup_irq._entry_ptr.62, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.63, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/iio/light/lm3533-als.c", i32 730, i32 3}
!186 = !{ptr @.str.64, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @lm3533_als_set_input_mode._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @lm3533_als_set_input_mode._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.65, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/iio/light/lm3533-als.c", i32 743, i32 3}
!191 = !{ptr @.str.66, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @lm3533_als_set_resistor._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @lm3533_als_set_resistor._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.68, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/iio/light/lm3533-als.c", i32 749, i32 3}
!196 = !{ptr @lm3533_als_set_resistor._entry.67, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @lm3533_als_set_resistor._entry_ptr.69, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.70, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/iio/light/lm3533-als.c", i32 806, i32 3}
!200 = !{ptr @.str.71, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @lm3533_als_enable._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @lm3533_als_enable._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.72, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/iio/light/lm3533-als.c", i32 818, i32 3}
!205 = !{ptr @.str.73, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @lm3533_als_disable._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @lm3533_als_disable._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{!"auto-init"}
