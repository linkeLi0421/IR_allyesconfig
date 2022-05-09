; ModuleID = '/llk/IR_all_yes/drivers/hwmon/mc13783-adc.c_pt.bc'
source_filename = "../drivers/hwmon/mc13783-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.mc13783_adc_priv = type { ptr, ptr, [20 x i8] }

@__initcall__kmod_mc13783_adc__187_327_mc13783_adc_driver_init6 = internal global ptr @mc13783_adc_driver_init, section ".initcall6.init", align 4
@mc13783_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @mc13783_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.24, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mc13783_adc_idtable, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mc13783_adc_driver_exit = internal global ptr @mc13783_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [43 x i8] c"mc13783_adc.description=MC13783 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [51 x i8] c"mc13783_adc.author=Luotao Fu <l.fu@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [43 x i8] c"mc13783_adc.file=drivers/hwmon/mc13783-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [24 x i8] c"mc13783_adc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mc13783_group_base = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mc13783_attr_base, ptr null }, [44 x i8] zeroinitializer }, align 32
@mc13783_group_16chans = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mc13783_attr_16chans, ptr null }, [44 x i8] zeroinitializer }, align 32
@mc13783_group_ts = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mc13783_attr_ts, ptr null }, [44 x i8] zeroinitializer }, align 32
@mc13783_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"hwmon_device_register failed with %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mc13783_adc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/hwmon/mc13783-adc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mc13783_adc_probe._entry_ptr = internal global ptr @mc13783_adc_probe._entry, section ".printk_index", align 4
@mc13783_attr_base = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_name, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in16_input, ptr @sensor_dev_attr_temp1_input, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_bp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_gp_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_gp_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_gp_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in16_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_uid_show, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_temp_show, ptr null }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in16_input\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@mc13783_attr_16chans = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in11_input, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_gp_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_gp_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_gp_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_gp_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_input\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_input\00", [21 x i8] zeroinitializer }, align 32
@mc13783_attr_ts = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in12_input, ptr @sensor_dev_attr_in13_input, ptr @sensor_dev_attr_in14_input, ptr @sensor_dev_attr_in15_input, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_gp_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_gp_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in14_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_gp_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in15_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mc13783_adc_gp_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in12_input\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in13_input\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in14_input\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in15_input\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mc13783-adc\00", [20 x i8] zeroinitializer }, align 32
@mc13783_adc_idtable = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"mc13783-adc\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"mc13892-adc\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"mc13783_adc_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 319, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 239, i32 47 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"mc13783_group_base\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 189, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"mc13783_group_16chans\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 202, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"mc13783_group_ts\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 215, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 267, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"mc13783_attr_base\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 178, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in16_input\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 162, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 37, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 163, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 87, i32 22 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 164, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 165, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 166, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 175, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 176, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 159, i32 22 }
@___asan_gen_.112 = private unnamed_addr constant [21 x i8] c"mc13783_attr_16chans\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 194, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_input\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_input\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_input\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 167, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 168, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 169, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 170, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"mc13783_attr_ts\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 207, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in12_input\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in13_input\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in14_input\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in15_input\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 171, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 172, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 173, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 174, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 322, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"mc13783_adc_idtable\00", align 1
@___asan_gen_.170 = private constant [31 x i8] c"../drivers/hwmon/mc13783-adc.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 306, i32 40 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_mc13783_adc_driver_exit, ptr @__initcall__kmod_mc13783_adc__187_327_mc13783_adc_driver_init6, ptr @mc13783_adc_driver_exit, ptr @mc13783_adc_probe._entry, ptr @mc13783_adc_probe._entry_ptr, ptr @mc13783_adc_driver, ptr @.str, ptr @mc13783_group_base, ptr @mc13783_group_16chans, ptr @mc13783_group_ts, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mc13783_attr_base, ptr @dev_attr_name, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in16_input, ptr @sensor_dev_attr_temp1_input, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @mc13783_attr_16chans, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in11_input, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @mc13783_attr_ts, ptr @sensor_dev_attr_in12_input, ptr @sensor_dev_attr_in13_input, ptr @sensor_dev_attr_in14_input, ptr @sensor_dev_attr_in15_input, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @mc13783_adc_idtable], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_group_base to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_group_16chans to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_group_ts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_attr_base to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in16_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_attr_16chans to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_attr_ts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in14_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in15_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13783_adc_idtable to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @mc13783_adc_driver, ptr noundef nonnull @mc13783_adc_probe, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mc13783_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @mc13783_adc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_adc_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.mc13783_adc_priv, ptr %call.i, i32 0, i32 2
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 20, ptr noundef nonnull @.str, ptr noundef %1)
  %call8 = tail call ptr @strchr(ptr noundef %name, i32 noundef 45)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %call8, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call13 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @mc13783_group_base) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end16.if.end25_crit_edge, label %if.then18

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then18:                                        ; preds = %if.end16
  %call21 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @mc13783_group_16chans) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then18.if.end25_crit_edge, label %if.then18.out_err_create_16chans_crit_edge

if.then18.out_err_create_16chans_crit_edge:       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err_create_16chans

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %if.then18.if.end25_crit_edge, %if.end16.if.end25_crit_edge
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call1.i = tail call i32 @mc13xxx_get_flags(ptr noundef %14) #9
  %and.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not = icmp eq i32 %and.i, 0
  br i1 %tobool27.not, label %if.then28, label %if.end25.if.end35_crit_edge

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then28:                                        ; preds = %if.end25
  %call31 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @mc13783_group_ts) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then28.if.end35_crit_edge, label %if.then28.out_err_create_ts_crit_edge

if.then28.out_err_create_ts_crit_edge:            ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err_create_ts

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end35:                                         ; preds = %if.then28.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  %call37 = tail call ptr @hwmon_device_register(ptr noundef %dev) #9
  %hwmon_dev = getelementptr inbounds %struct.mc13783_adc_priv, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call37, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40:                                        ; preds = %if.end35
  %16 = ptrtoint ptr %call37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %16) #12
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call1.i92 = tail call i32 @mc13xxx_get_flags(ptr noundef %20) #9
  %and.i93 = and i32 %call1.i92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %tobool46.not = icmp eq i32 %and.i93, 0
  br i1 %tobool46.not, label %if.then47, label %if.then40.out_err_create_ts_crit_edge

if.then40.out_err_create_ts_crit_edge:            ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err_create_ts

if.then47:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @mc13783_group_ts) #9
  br label %out_err_create_ts

out_err_create_ts:                                ; preds = %if.then47, %if.then40.out_err_create_ts_crit_edge, %if.then28.out_err_create_ts_crit_edge
  %ret.0 = phi i32 [ %16, %if.then40.out_err_create_ts_crit_edge ], [ %16, %if.then47 ], [ %call31, %if.then28.out_err_create_ts_crit_edge ]
  %21 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_data, align 4
  %and52 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %out_err_create_ts.out_err_create_16chans_crit_edge, label %if.then54

out_err_create_ts.out_err_create_16chans_crit_edge: ; preds = %out_err_create_ts
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err_create_16chans

if.then54:                                        ; preds = %out_err_create_ts
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @mc13783_group_16chans) #9
  br label %out_err_create_16chans

out_err_create_16chans:                           ; preds = %if.then54, %out_err_create_ts.out_err_create_16chans_crit_edge, %if.then18.out_err_create_16chans_crit_edge
  %ret.1 = phi i32 [ %call21, %if.then18.out_err_create_16chans_crit_edge ], [ %ret.0, %if.then54 ], [ %ret.0, %out_err_create_ts.out_err_create_16chans_crit_edge ]
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @mc13783_group_base) #9
  br label %cleanup

cleanup:                                          ; preds = %out_err_create_16chans, %if.end35.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_err_create_16chans ], [ -12, %entry.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.mc13783_adc_priv, ptr %1, i32 0, i32 2
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %name)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_adc_bp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  %sample.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr i8, ptr %dev, i32 956
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %driver_data1 = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sample.i) #9
  %8 = call ptr @memset(ptr %sample.i, i32 255, i32 16)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call1.i = call i32 @mc13xxx_adc_do_conversion(ptr noundef %10, i32 noundef 3, i32 noundef %7, i8 noundef zeroext 0, i1 noundef zeroext false, ptr noundef nonnull %sample.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %mc13783_adc_read.exit

mc13783_adc_read.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = call i32 @llvm.umin.i32(i32 %7, i32 15) #9
  %and.i = and i32 %11, 4
  %rem.i = and i32 %11, 3
  %arrayidx.i = getelementptr [4 x i32], ptr %sample.i, i32 0, i32 %rem.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %cmp4.not.i, i32 2, i32 14
  %shr.i = lshr i32 %13, %cond.i
  %and5.i = and i32 %shr.i, 1023
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample.i) #9
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %mul7 = mul nuw nsw i32 %and5.i, 9
  %add11 = add nuw nsw i32 %mul7, 2
  %div1223 = lshr i32 %add11, 2
  %add13 = add nuw nsw i32 %div1223, 2400
  %add = add nuw nsw i32 %mul7, 1
  %div524 = lshr i32 %add, 1
  %storemerge = select i1 %tobool2.not, i32 %add13, i32 %div524
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %storemerge)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mc13783_adc_read.exit
  %retval.0 = phi i32 [ %call15, %if.end ], [ %call1.i, %mc13783_adc_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_adc_do_conversion(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_adc_gp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  %sample.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sample.i) #9
  %4 = call ptr @memset(ptr %sample.i, i32 255, i32 16)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call1.i = call i32 @mc13xxx_adc_do_conversion(ptr noundef %6, i32 noundef 3, i32 noundef %3, i8 noundef zeroext 0, i1 noundef zeroext false, ptr noundef nonnull %sample.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %mc13783_adc_read.exit

mc13783_adc_read.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call i32 @llvm.umin.i32(i32 %3, i32 15) #9
  %and.i = and i32 %7, 4
  %rem.i = and i32 %7, 3
  %arrayidx.i = getelementptr [4 x i32], ptr %sample.i, i32 0, i32 %rem.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %cmp4.not.i, i32 2, i32 14
  %shr.i = lshr i32 %9, %cond.i
  %and5.i = and i32 %shr.i, 1023
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample.i) #9
  %mul = mul nuw nsw i32 %and5.i, 9
  %add = add nuw nsw i32 %mul, 2
  %div16 = lshr i32 %add, 2
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %div16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mc13783_adc_read.exit
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1.i, %mc13783_adc_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_adc_uid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  %sample.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr i8, ptr %dev, i32 956
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %driver_data1 = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sample.i) #9
  %8 = call ptr @memset(ptr %sample.i, i32 255, i32 16)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call1.i = call i32 @mc13xxx_adc_do_conversion(ptr noundef %10, i32 noundef 3, i32 noundef %7, i8 noundef zeroext 0, i1 noundef zeroext false, ptr noundef nonnull %sample.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %mc13783_adc_read.exit

mc13783_adc_read.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = call i32 @llvm.umin.i32(i32 %7, i32 15) #9
  %and.i = and i32 %11, 4
  %rem.i = and i32 %11, 3
  %arrayidx.i = getelementptr [4 x i32], ptr %sample.i, i32 0, i32 %rem.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %cmp4.not.i, i32 2, i32 14
  %shr.i = lshr i32 %13, %cond.i
  %and5.i = and i32 %shr.i, 1023
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample.i) #9
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %storemerge.in.in.v = select i1 %tobool2.not, i32 2555, i32 4800
  %storemerge.in.in = mul nuw nsw i32 %and5.i, %storemerge.in.in.v
  %storemerge.in = add nuw nsw i32 %storemerge.in.in, 512
  %storemerge = lshr i32 %storemerge.in, 10
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %storemerge)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mc13783_adc_read.exit
  %retval.0 = phi i32 [ %call14, %if.end ], [ %call1.i, %mc13783_adc_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_adc_temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  %sample.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr i8, ptr %dev, i32 956
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %driver_data1 = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %index.i = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sample.i) #9
  %8 = call ptr @memset(ptr %sample.i, i32 255, i32 16)
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call1.i = call i32 @mc13xxx_adc_do_conversion(ptr noundef %10, i32 noundef 3, i32 noundef %7, i8 noundef zeroext 0, i1 noundef zeroext false, ptr noundef nonnull %sample.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %mc13783_adc_read.exit

mc13783_adc_read.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = call i32 @llvm.umin.i32(i32 %7, i32 15) #9
  %and.i = and i32 %11, 4
  %rem.i = and i32 %11, 3
  %arrayidx.i = getelementptr [4 x i32], ptr %sample.i, i32 0, i32 %rem.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp4.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %cmp4.not.i, i32 2, i32 14
  %shr.i = lshr i32 %13, %cond.i
  %and5.i = and i32 %shr.i, 1023
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample.i) #9
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul nuw nsw i32 %and5.i, 4244
  %add5 = add nsw i32 %mul, -2635915
  %div6 = udiv i32 %add5, 10
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul7.neg = mul nsw i32 %and5.i, -1140
  %sub = add nsw i32 %mul7.neg, 346480
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %ret.0 = phi i32 [ %div6, %if.then3 ], [ %sub, %if.else ]
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %ret.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %mc13783_adc_read.exit
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call1.i, %mc13783_adc_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_get_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13783_adc_remove(ptr noundef %pdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_entry, align 4
  %driver_data1 = getelementptr inbounds %struct.platform_device_id, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data1, align 4
  %hwmon_dev = getelementptr inbounds %struct.mc13783_adc_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %7) #9
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call1.i = tail call i32 @mc13xxx_get_flags(ptr noundef %11) #9
  %and.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @mc13783_group_ts) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev5, ptr noundef nonnull @mc13783_group_16chans) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev8, ptr noundef nonnull @mc13783_group_base) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !53, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_mc13783_adc__187_327_mc13783_adc_driver_init6, !1, !"__initcall__kmod_mc13783_adc__187_327_mc13783_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/mc13783-adc.c", i32 327, i32 1}
!2 = !{ptr @__exitcall_mc13783_adc_driver_exit, !1, !"__exitcall_mc13783_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/mc13783-adc.c", i32 329, i32 1}
!5 = !{ptr @__UNIQUE_ID_author189, !6, !"__UNIQUE_ID_author189", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/mc13783-adc.c", i32 330, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/mc13783-adc.c", i32 331, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/mc13783-adc.c", i32 239, i32 47}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/mc13783-adc.c", i32 267, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mc13783_adc_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @mc13783_adc_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @mc13783_group_base, !21, !"mc13783_group_base", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/mc13783-adc.c", i32 189, i32 37}
!22 = !{ptr @mc13783_attr_base, !23, !"mc13783_attr_base", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/mc13783-adc.c", i32 178, i32 26}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/mc13783-adc.c", i32 162, i32 8}
!26 = !{ptr @dev_attr_name, !25, !"dev_attr_name", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/mc13783-adc.c", i32 37, i32 22}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/mc13783-adc.c", i32 163, i32 8}
!31 = !{ptr @sensor_dev_attr_in2_input, !30, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/mc13783-adc.c", i32 87, i32 22}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/mc13783-adc.c", i32 164, i32 8}
!36 = !{ptr @sensor_dev_attr_in5_input, !35, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/mc13783-adc.c", i32 165, i32 8}
!39 = !{ptr @sensor_dev_attr_in6_input, !38, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/mc13783-adc.c", i32 166, i32 8}
!42 = !{ptr @sensor_dev_attr_in7_input, !41, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/mc13783-adc.c", i32 175, i32 8}
!45 = !{ptr @sensor_dev_attr_in16_input, !44, !"sensor_dev_attr_in16_input", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/mc13783-adc.c", i32 176, i32 8}
!48 = !{ptr @sensor_dev_attr_temp1_input, !47, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/mc13783-adc.c", i32 159, i32 22}
!51 = !{ptr @mc13783_group_16chans, !52, !"mc13783_group_16chans", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/mc13783-adc.c", i32 202, i32 37}
!53 = !{ptr @mc13783_attr_16chans, !54, !"mc13783_attr_16chans", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/mc13783-adc.c", i32 194, i32 26}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/mc13783-adc.c", i32 167, i32 8}
!57 = !{ptr @sensor_dev_attr_in8_input, !56, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/mc13783-adc.c", i32 168, i32 8}
!60 = !{ptr @sensor_dev_attr_in9_input, !59, !"sensor_dev_attr_in9_input", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/mc13783-adc.c", i32 169, i32 8}
!63 = !{ptr @sensor_dev_attr_in10_input, !62, !"sensor_dev_attr_in10_input", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/mc13783-adc.c", i32 170, i32 8}
!66 = !{ptr @sensor_dev_attr_in11_input, !65, !"sensor_dev_attr_in11_input", i1 false, i1 false}
!67 = !{ptr @mc13783_group_ts, !68, !"mc13783_group_ts", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/mc13783-adc.c", i32 215, i32 37}
!69 = !{ptr @mc13783_attr_ts, !70, !"mc13783_attr_ts", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/mc13783-adc.c", i32 207, i32 26}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/mc13783-adc.c", i32 171, i32 8}
!73 = !{ptr @sensor_dev_attr_in12_input, !72, !"sensor_dev_attr_in12_input", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/mc13783-adc.c", i32 172, i32 8}
!76 = !{ptr @sensor_dev_attr_in13_input, !75, !"sensor_dev_attr_in13_input", i1 false, i1 false}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/mc13783-adc.c", i32 173, i32 8}
!79 = !{ptr @sensor_dev_attr_in14_input, !78, !"sensor_dev_attr_in14_input", i1 false, i1 false}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/mc13783-adc.c", i32 174, i32 8}
!82 = !{ptr @sensor_dev_attr_in15_input, !81, !"sensor_dev_attr_in15_input", i1 false, i1 false}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/mc13783-adc.c", i32 322, i32 11}
!85 = !{ptr @mc13783_adc_driver, !86, !"mc13783_adc_driver", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/mc13783-adc.c", i32 319, i32 31}
!87 = !{ptr @mc13783_adc_idtable, !88, !"mc13783_adc_idtable", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/mc13783-adc.c", i32 306, i32 40}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
