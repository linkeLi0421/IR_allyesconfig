; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/max9611.c_pt.bc'
source_filename = "../drivers/iio/adc/max9611.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.max9611_dev = type { ptr, ptr, %struct.mutex, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_max9611__288_562_max9611_driver_init6 = internal global ptr @max9611_driver_init, section ".initcall6.init", align 4
@max9611_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max9611_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max9611_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max9611_driver_exit = internal global ptr @max9611_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"max9611.author=Jacopo Mondi <jacopo+renesas@jmondi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [76 x i8] c"max9611.description=Maxim max9611/12 current sense amplifier with 12bit ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"max9611.file=drivers/iio/adc/max9611\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"max9611.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max9611\00", [24 x i8] zeroinitializer }, align 32
@max9611_of_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max9611\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max9612\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.25 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shunt-resistor-micro-ohms\00", [38 x i8] zeroinitializer }, align 32
@max9611_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&max9611->lock\00", [17 x i8] zeroinitializer }, align 32
@max9611_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 537, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Missing %s property for %pfw node\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max9611_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iio/adc/max9611.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max9611_probe._entry_ptr = internal global ptr @max9611_probe._entry, section ".printk_index", align 4
@indio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @max9611_attribute_group, ptr @max9611_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max9611_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 2, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 3, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 2, i32 0, i32 0, i32 4, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@max9611_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 465, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"I2c adapter does not support smbus write_byte or read_word functionalities: aborting probe.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max9611_init\00", [19 x i8] zeroinitializer }, align 32
@max9611_init._entry_ptr = internal global ptr @max9611_init._entry, section ".printk_index", align 4
@max9611_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 481, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid value received from ADC 0x%4x: aborting\0A\00", [47 x i8] zeroinitializer }, align 32
@max9611_init._entry_ptr.12 = internal global ptr @max9611_init._entry.10, section ".printk_index", align 4
@max9611_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.5, i32 490, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"i2c write byte failed: 0x%2x - 0x%2x\0A\00", [58 x i8] zeroinitializer }, align 32
@max9611_init._entry_ptr.15 = internal global ptr @max9611_init._entry.13, section ".printk_index", align 4
@max9611_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.5, i32 498, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@max9611_init._entry_ptr.17 = internal global ptr @max9611_init._entry.16, section ".printk_index", align 4
@max9611_mux_conf = internal constant { [5 x [2 x i32]], [56 x i8] } { [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 3, i32 2], [2 x i32] [i32 6, i32 8]], [56 x i8] zeroinitializer }, align 32
@max9611_read_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.18, ptr @.str.5, i32 227, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max9611_read_single\00", [44 x i8] zeroinitializer }, align 32
@max9611_read_single._entry_ptr = internal global ptr @max9611_read_single._entry, section ".printk_index", align 4
@max9611_read_single._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.5, i32 239, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i2c read word from 0x%2x failed\0A\00", [63 x i8] zeroinitializer }, align 32
@max9611_read_single._entry_ptr.21 = internal global ptr @max9611_read_single._entry.19, section ".printk_index", align 4
@max9611_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @max9611_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@max9611_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_in_power_shunt_resistor, ptr @iio_dev_attr_in_current_shunt_resistor, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_power_shunt_resistor = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max9611_shunt_resistor_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_current_shunt_resistor = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max9611_shunt_resistor_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"in_power_shunt_resistor\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u.%06u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_current_shunt_resistor\00", [38 x i8] zeroinitializer }, align 32
@max9611_gain_conf = internal constant { [3 x [2 x i32]], [40 x i8] } { [3 x [2 x i32]] [[2 x i32] [i32 107500, i32 1], [2 x i32] [i32 26880, i32 1], [2 x i32] [i32 13440, i32 3]], [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max9612\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"max9611_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 555, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 557, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"max9611_of_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 506, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 516, i32 38 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 532, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 536, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"indio_info\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 450, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"max9611_channels\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 160, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 464, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 479, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 489, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 497, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"max9611_mux_conf\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 118, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 226, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 238, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"max9611_attribute_group\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 446, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"max9611_attributes\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 440, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant [37 x i8] c"iio_dev_attr_in_power_shunt_resistor\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [39 x i8] c"iio_dev_attr_in_current_shunt_resistor\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 435, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 432, i32 22 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 437, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"max9611_gain_conf\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 146, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [29 x i8] c"../drivers/iio/adc/max9611.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 508, i32 42 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max9611_driver_exit, ptr @__initcall__kmod_max9611__288_562_max9611_driver_init6, ptr @max9611_driver_exit, ptr @max9611_init._entry, ptr @max9611_init._entry.10, ptr @max9611_init._entry.13, ptr @max9611_init._entry.16, ptr @max9611_init._entry_ptr, ptr @max9611_init._entry_ptr.12, ptr @max9611_init._entry_ptr.15, ptr @max9611_init._entry_ptr.17, ptr @max9611_probe._entry, ptr @max9611_probe._entry_ptr, ptr @max9611_read_single._entry, ptr @max9611_read_single._entry.19, ptr @max9611_read_single._entry_ptr, ptr @max9611_read_single._entry_ptr.21, ptr @max9611_driver, ptr @.str, ptr @max9611_of_table, ptr @.str.1, ptr @max9611_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @indio_info, ptr @max9611_channels, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @max9611_mux_conf, ptr @.str.18, ptr @.str.20, ptr @max9611_attribute_group, ptr @max9611_attributes, ptr @iio_dev_attr_in_power_shunt_resistor, ptr @iio_dev_attr_in_current_shunt_resistor, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @max9611_gain_conf, ptr @.str.25], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_of_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @indio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_mux_conf to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_read_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_read_single._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_power_shunt_resistor to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_current_shunt_resistor to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max9611_gain_conf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max9611_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max9611_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max9611_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @max9611_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9611_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %regval.i = alloca i16, align 2
  %of_shunt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_shunt) #8
  %0 = ptrtoint ptr %of_shunt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %of_shunt, align 4, !annotation !84
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 104) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %3, align 4
  %i2c_client = getelementptr inbounds %struct.max9611_dev, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %i2c_client, align 4
  %lock = getelementptr inbounds %struct.max9611_dev, ptr %3, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @max9611_probe.__key) #8
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull %of_shunt, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = call ptr @dev_fwnode(ptr noundef %dev1) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %call11) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %6 = ptrtoint ptr %of_shunt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %of_shunt, align 4
  %shunt_resistor_uohm = getelementptr inbounds %struct.max9611_dev, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %shunt_resistor_uohm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %shunt_resistor_uohm, align 4
  %9 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i) #8
  %11 = ptrtoint ptr %regval.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %regval.i, align 2, !annotation !84
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 8
  %algo.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %algo.i.i.i, align 8
  %functionality.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %functionality.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %functionality.i.i.i, align 4
  %call.i.i.i = call i32 %17(ptr noundef %13) #8
  %and.i.i = and i32 %call.i.i.i, 2359296
  call void @__sanitizer_cov_trace_const_cmp4(i32 2359296, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 2359296
  br i1 %cmp.i.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.8) #11
  br label %max9611_init.exit.thread

if.end.i:                                         ; preds = %if.end12
  %call1.i = call fastcc i32 @max9611_read_single(ptr noundef %3, i32 noundef 4, ptr noundef nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.max9611_init.exit.thread_crit_edge

if.end.i.max9611_init.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max9611_init.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %regval.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %regval.i, align 2
  %22 = and i16 %21, -128
  call void @__sanitizer_cov_trace_const_cmp2(i16 32640, i16 %22)
  %cmp.i = icmp ugt i16 %22, 32640
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9856, i16 %21)
  %cmp9.i = icmp ult i16 %21, -9856
  %or.cond.i = and i1 %cmp9.i, %cmp.i
  br i1 %or.cond.i, label %do.end17.i, label %if.end20.i

do.end17.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %conv19.i = zext i16 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef %conv19.i) #11
  br label %max9611_init.exit.thread

if.end20.i:                                       ; preds = %if.end4.i
  %25 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_client, align 4
  %call22.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 10, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end29.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.14, i32 noundef 10, i32 noundef 0) #11
  br label %max9611_init.exit.thread

if.end29.i:                                       ; preds = %if.end20.i
  %29 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_client, align 4
  %call31.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 11, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end16, label %do.end36.i

do.end36.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.14, i32 noundef 11, i32 noundef 0) #11
  br label %max9611_init.exit.thread

max9611_init.exit.thread:                         ; preds = %do.end36.i, %do.end27.i, %do.end17.i, %if.end.i.max9611_init.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call1.i, %if.end.i.max9611_init.exit.thread_crit_edge ], [ -22, %do.end.i ], [ %call31.i, %do.end36.i ], [ %call22.i, %do.end27.i ], [ -5, %do.end17.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 3300, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i) #8
  %call17 = call ptr @device_get_match_data(ptr noundef %dev1) #8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %33 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call17, ptr %name, align 8
  %34 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %35 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @indio_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %36 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @max9611_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %37 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %num_channels, align 4
  %call18 = call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %max9611_init.exit.thread, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end10 ], [ %call18, %if.end16 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %max9611_init.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_shunt) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max9611_read_single(ptr noundef %max9611, i32 noundef %selector, ptr nocapture noundef writeonly %raw_val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [5 x [2 x i32]], ptr @max9611_mux_conf, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = trunc i32 %1 to i8
  %conv = and i8 %2, 15
  %arrayidx3 = getelementptr [5 x [2 x i32]], ptr @max9611_mux_conf, i32 0, i32 %selector, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx3, align 4
  %lock = getelementptr inbounds %struct.max9611_dev, ptr %max9611, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %i2c_client = getelementptr inbounds %struct.max9611_dev, ptr %max9611, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_client, align 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 10, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %max9611 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %max9611, align 4
  %conv5 = zext i8 %conv to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14, i32 noundef 10, i32 noundef %conv5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv4 = trunc i32 %4 to i8
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 3300, i32 noundef 2) #8
  %9 = ptrtoint ptr %i2c_client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client, align 4
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %10, i8 noundef zeroext %conv4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %max9611 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %max9611, align 4
  %conv15 = and i32 %4, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.20, i32 noundef %conv15) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %call.i to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %14 = ptrtoint ptr %raw_val to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %raw_val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end13, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %do.end13 ], [ 0, %if.end17 ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9611_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %gain_selector = alloca i32, align 4
  %adc_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gain_selector) #8
  %2 = ptrtoint ptr %gain_selector to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %gain_selector, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %adc_data) #8
  %3 = ptrtoint ptr %adc_data to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %adc_data, align 2, !annotation !84
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb10
    i32 2, label %sw.bb11
    i32 1, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 2, label %sw.bb1
    i32 0, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %call2 = call fastcc i32 @max9611_read_single(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %adc_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %adc_data, align 2
  %10 = lshr i16 %9, 7
  %11 = zext i16 %10 to i32
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %call4 = call fastcc i32 @max9611_read_single(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %adc_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %adc_data, align 2
  %15 = lshr i16 %14, 4
  %16 = zext i16 %15 to i32
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %address12 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %19 = ptrtoint ptr %address12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %address12, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %20, label %sw.bb11.cleanup_crit_edge [
    i32 2, label %sw.bb13
    i32 0, label %sw.bb14
  ]

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb13:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1000000, ptr %val, align 4
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2083, ptr %val2, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 14, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %address17 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %25 = ptrtoint ptr %address17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %address17, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %26, label %sw.bb16.cleanup_crit_edge [
    i32 1, label %sw.bb18
    i32 3, label %sw.bb29
    i32 4, label %sw.bb44
  ]

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb18:                                          ; preds = %sw.bb16
  %call.i = call fastcc i32 @max9611_read_single(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %adc_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i:                                       ; preds = %if.end.i
  %call.1.i = call fastcc i32 @max9611_read_single(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %adc_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1.i:                                       ; preds = %for.cond.i
  %28 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %adc_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp1.not.1.i = icmp eq i16 %29, 0
  br i1 %cmp1.not.1.i, label %for.cond.1.i, label %if.end.1.i.if.end22_crit_edge

if.end.1.i.if.end22_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

for.cond.1.i:                                     ; preds = %if.end.1.i
  %call.2.i = call fastcc i32 @max9611_read_single(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %adc_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %for.cond.1.i.cleanup_crit_edge

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.2.i:                                       ; preds = %for.cond.1.i
  %30 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %adc_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp1.not.2.i = icmp eq i16 %31, 0
  br i1 %cmp1.not.2.i, label %if.end.2.i.cleanup_crit_edge, label %if.end.2.i.if.end22_crit_edge

if.end.2.i.if.end22_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end.2.i.cleanup_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb18
  %32 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %adc_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp1.not.i = icmp eq i16 %33, 0
  br i1 %cmp1.not.i, label %for.cond.i, label %if.end.i.if.end22_crit_edge

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %if.end.i.if.end22_crit_edge, %if.end.2.i.if.end22_crit_edge, %if.end.1.i.if.end22_crit_edge
  %.lcssa14.i = phi i32 [ 0, %if.end.i.if.end22_crit_edge ], [ 1, %if.end.1.i.if.end22_crit_edge ], [ 2, %if.end.2.i.if.end22_crit_edge ]
  %34 = ptrtoint ptr %gain_selector to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.lcssa14.i, ptr %gain_selector, align 4
  %arrayidx = getelementptr [3 x [2 x i32]], ptr @max9611_gain_conf, i32 0, i32 %.lcssa14.i
  %arrayidx23 = getelementptr i32, ptr %arrayidx, i32 1
  %35 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx23, align 4
  %37 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %adc_data, align 2
  %39 = trunc i32 %36 to i16
  %conv25 = sub i16 %38, %39
  store i16 %conv25, ptr %adc_data, align 2
  %40 = lshr i16 %conv25, 4
  %41 = zext i16 %40 to i32
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %43, %41
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul, ptr %val, align 4
  %45 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1000000, ptr %val2, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %sw.bb16
  %call.i107 = call fastcc i32 @max9611_read_single(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %adc_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %if.end.i120, label %sw.bb29.cleanup_crit_edge

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i111:                                    ; preds = %if.end.i120
  %call.1.i109 = call fastcc i32 @max9611_read_single(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %adc_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i109)
  %tobool.not.1.i110 = icmp eq i32 %call.1.i109, 0
  br i1 %tobool.not.1.i110, label %if.end.1.i113, label %for.cond.i111.cleanup_crit_edge

for.cond.i111.cleanup_crit_edge:                  ; preds = %for.cond.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1.i113:                                    ; preds = %for.cond.i111
  %46 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %adc_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp1.not.1.i112 = icmp eq i16 %47, 0
  br i1 %cmp1.not.1.i112, label %for.cond.1.i116, label %if.end.1.i113.if.end33_crit_edge

if.end.1.i113.if.end33_crit_edge:                 ; preds = %if.end.1.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.cond.1.i116:                                  ; preds = %if.end.1.i113
  %call.2.i114 = call fastcc i32 @max9611_read_single(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %adc_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i114)
  %tobool.not.2.i115 = icmp eq i32 %call.2.i114, 0
  br i1 %tobool.not.2.i115, label %if.end.2.i118, label %for.cond.1.i116.cleanup_crit_edge

for.cond.1.i116.cleanup_crit_edge:                ; preds = %for.cond.1.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.2.i118:                                    ; preds = %for.cond.1.i116
  %48 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %adc_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp1.not.2.i117 = icmp eq i16 %49, 0
  br i1 %cmp1.not.2.i117, label %if.end.2.i118.cleanup_crit_edge, label %if.end.2.i118.if.end33_crit_edge

if.end.2.i118.if.end33_crit_edge:                 ; preds = %if.end.2.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end.2.i118.cleanup_crit_edge:                  ; preds = %if.end.2.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i120:                                      ; preds = %sw.bb29
  %50 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %adc_data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp1.not.i119 = icmp eq i16 %51, 0
  br i1 %cmp1.not.i119, label %for.cond.i111, label %if.end.i120.if.end33_crit_edge

if.end.i120.if.end33_crit_edge:                   ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %if.end.i120.if.end33_crit_edge, %if.end.2.i118.if.end33_crit_edge, %if.end.1.i113.if.end33_crit_edge
  %.lcssa14.i121 = phi i32 [ 0, %if.end.i120.if.end33_crit_edge ], [ 1, %if.end.1.i113.if.end33_crit_edge ], [ 2, %if.end.2.i118.if.end33_crit_edge ]
  %52 = ptrtoint ptr %gain_selector to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.lcssa14.i121, ptr %gain_selector, align 4
  %arrayidx34 = getelementptr [3 x [2 x i32]], ptr @max9611_gain_conf, i32 0, i32 %.lcssa14.i121
  %arrayidx36 = getelementptr i32, ptr %arrayidx34, i32 1
  %53 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx36, align 4
  %55 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %adc_data, align 2
  %57 = trunc i32 %54 to i16
  %conv39 = sub i16 %56, %57
  store i16 %conv39, ptr %adc_data, align 2
  %58 = lshr i16 %conv39, 4
  %59 = zext i16 %58 to i32
  %60 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx34, align 4
  %mul43 = mul i32 %61, %59
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul43, ptr %val, align 4
  %shunt_resistor_uohm = getelementptr inbounds %struct.max9611_dev, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %shunt_resistor_uohm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %shunt_resistor_uohm, align 4
  %65 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %val2, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %sw.bb16
  %call45 = call fastcc i32 @max9611_read_single(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %adc_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %sw.bb44.cleanup_crit_edge

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %sw.bb44
  %66 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %adc_data, align 2
  %sub50 = add i16 %67, -1
  store i16 %sub50, ptr %adc_data, align 2
  %68 = lshr i16 %sub50, 4
  %narrow = mul nuw i16 %68, 14
  %mul54 = zext i16 %narrow to i32
  %69 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul54, ptr %val, align 4
  %call55 = call fastcc i32 @max9611_read_csa_voltage(ptr noundef %1, ptr noundef nonnull %adc_data, ptr noundef nonnull %gain_selector)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %gain_selector to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %gain_selector, align 4
  %arrayidx59 = getelementptr [3 x [2 x i32]], ptr @max9611_gain_conf, i32 0, i32 %71
  %arrayidx61 = getelementptr i32, ptr %arrayidx59, i32 1
  %72 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx61, align 4
  %74 = ptrtoint ptr %adc_data to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %adc_data, align 2
  %76 = trunc i32 %73 to i16
  %conv64 = sub i16 %75, %76
  store i16 %conv64, ptr %adc_data, align 2
  %77 = lshr i16 %conv64, 4
  %78 = zext i16 %77 to i32
  %79 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx59, align 4
  %mul68 = mul i32 %80, %78
  %div = udiv i32 %mul68, 1000
  %81 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val, align 4
  %mul69 = mul i32 %div, %82
  store i32 %mul69, ptr %val, align 4
  %shunt_resistor_uohm70 = getelementptr inbounds %struct.max9611_dev, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %shunt_resistor_uohm70 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %shunt_resistor_uohm70, align 4
  %85 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end48.cleanup_crit_edge, %sw.bb44.cleanup_crit_edge, %if.end33, %if.end.2.i118.cleanup_crit_edge, %for.cond.1.i116.cleanup_crit_edge, %for.cond.i111.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %if.end22, %if.end.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %sw.bb14, %sw.bb13, %sw.bb11.cleanup_crit_edge, %sw.bb10, %if.end7, %sw.bb3.cleanup_crit_edge, %if.end, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %if.end58 ], [ 10, %if.end33 ], [ 10, %if.end22 ], [ 1, %sw.bb14 ], [ 10, %sw.bb13 ], [ 1, %sw.bb10 ], [ 1, %if.end7 ], [ 1, %if.end ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb44.cleanup_crit_edge ], [ -22, %if.end48.cleanup_crit_edge ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ], [ -22, %for.cond.1.i.cleanup_crit_edge ], [ -22, %if.end.2.i.cleanup_crit_edge ], [ -22, %sw.bb29.cleanup_crit_edge ], [ -22, %for.cond.i111.cleanup_crit_edge ], [ -22, %for.cond.1.i116.cleanup_crit_edge ], [ -22, %if.end.2.i118.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %adc_data) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gain_selector) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max9611_shunt_resistor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %shunt_resistor_uohm = getelementptr inbounds %struct.max9611_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %shunt_resistor_uohm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shunt_resistor_uohm, align 4
  %.frozen = freeze i32 %3
  %div = udiv i32 %.frozen, 1000000
  %4 = mul i32 %div, 1000000
  %rem.decomposed = sub i32 %.frozen, %4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %div, i32 noundef %rem.decomposed)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max9611_read_csa_voltage(ptr noundef %max9611, ptr nocapture noundef %adc_raw, ptr nocapture noundef writeonly %csa_gain) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @max9611_read_single(ptr noundef %max9611, i32 noundef 0, ptr noundef %adc_raw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %call.1 = tail call fastcc i32 @max9611_read_single(ptr noundef %max9611, i32 noundef 1, ptr noundef %adc_raw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  %0 = ptrtoint ptr %adc_raw to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %adc_raw, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp1.not.1 = icmp eq i16 %1, 0
  br i1 %cmp1.not.1, label %for.cond.1, label %if.end.1.if.then3_crit_edge

if.end.1.if.then3_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.cond.1:                                       ; preds = %if.end.1
  %call.2 = tail call fastcc i32 @max9611_read_single(ptr noundef %max9611, i32 noundef 2, ptr noundef %adc_raw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  %2 = ptrtoint ptr %adc_raw to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %adc_raw, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp1.not.2 = icmp eq i16 %3, 0
  br i1 %cmp1.not.2, label %if.end.2.cleanup_crit_edge, label %if.end.2.if.then3_crit_edge

if.end.2.if.then3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %adc_raw to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %adc_raw, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp1.not = icmp eq i16 %5, 0
  br i1 %cmp1.not, label %for.cond, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.2.if.then3_crit_edge, %if.end.1.if.then3_crit_edge
  %.lcssa14 = phi i32 [ 0, %if.end.if.then3_crit_edge ], [ 1, %if.end.1.if.then3_crit_edge ], [ 2, %if.end.2.if.then3_crit_edge ]
  %6 = ptrtoint ptr %csa_gain to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.lcssa14, ptr %csa_gain, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ], [ -5, %if.end.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !62, !64, !66, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_max9611__288_562_max9611_driver_init6, !1, !"__initcall__kmod_max9611__288_562_max9611_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/max9611.c", i32 562, i32 1}
!2 = !{ptr @__exitcall_max9611_driver_exit, !1, !"__exitcall_max9611_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/max9611.c", i32 564, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/max9611.c", i32 565, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/max9611.c", i32 566, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/max9611.c", i32 557, i32 14}
!12 = !{ptr @max9611_driver, !13, !"max9611_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/max9611.c", i32 555, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/max9611.c", i32 516, i32 38}
!16 = !{ptr @max9611_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/max9611.c", i32 532, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/max9611.c", i32 536, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @max9611_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @max9611_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/max9611.c", i32 464, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @max9611_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @max9611_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/max9611.c", i32 479, i32 3}
!34 = !{ptr @max9611_init._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @max9611_init._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/max9611.c", i32 489, i32 3}
!38 = !{ptr @max9611_init._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @max9611_init._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @max9611_init._entry.16, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/max9611.c", i32 497, i32 3}
!42 = !{ptr @max9611_init._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/max9611.c", i32 226, i32 3}
!45 = !{ptr @max9611_read_single._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @max9611_read_single._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/max9611.c", i32 238, i32 3}
!49 = !{ptr @max9611_read_single._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @max9611_read_single._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @max9611_mux_conf, !52, !"max9611_mux_conf", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/max9611.c", i32 118, i32 27}
!53 = !{ptr @indio_info, !54, !"indio_info", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/max9611.c", i32 450, i32 30}
!55 = !{ptr @max9611_attribute_group, !56, !"max9611_attribute_group", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/max9611.c", i32 446, i32 37}
!57 = !{ptr @max9611_attributes, !58, !"max9611_attributes", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/max9611.c", i32 440, i32 26}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/max9611.c", i32 435, i32 8}
!61 = !{ptr @iio_dev_attr_in_power_shunt_resistor, !60, !"iio_dev_attr_in_power_shunt_resistor", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/max9611.c", i32 432, i32 22}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/max9611.c", i32 437, i32 8}
!66 = !{ptr @iio_dev_attr_in_current_shunt_resistor, !65, !"iio_dev_attr_in_current_shunt_resistor", i1 false, i1 false}
!67 = !{ptr @max9611_gain_conf, !68, !"max9611_gain_conf", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/max9611.c", i32 146, i32 27}
!69 = !{ptr @max9611_channels, !70, !"max9611_channels", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/max9611.c", i32 160, i32 35}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/max9611.c", i32 508, i32 42}
!73 = !{ptr @max9611_of_table, !74, !"max9611_of_table", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/max9611.c", i32 506, i32 34}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
