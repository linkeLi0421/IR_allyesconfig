; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/frequency/ad9832.c_pt.bc'
source_filename = "../drivers/staging/iio/frequency/ad9832.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad9832_state = type { ptr, ptr, ptr, ptr, i16, i16, i16, %struct.spi_transfer, %struct.spi_message, [4 x %struct.spi_transfer], %struct.spi_message, [2 x %struct.spi_transfer], %struct.spi_message, %struct.mutex, [68 x i8], %union.anon.85 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%union.anon.85 = type { [4 x i16], [120 x i8] }
%struct.ad9832_platform_data = type { i32, i32, i16, i16, i16, i16 }

@__initcall__kmod_ad9832__291_458_ad9832_driver_init6 = internal global ptr @ad9832_driver_init, section ".initcall6.init", align 4
@ad9832_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad9832_id, ptr @ad9832_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad9832_driver_exit = internal global ptr @ad9832_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [63 x i8] c"ad9832.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [52 x i8] c"ad9832.description=Analog Devices AD9832/AD9835 DDS\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"ad9832.file=drivers/staging/iio/frequency/ad9832\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [22 x i8] c"ad9832.license=GPL v2\00", section ".modinfo", align 1
@ad9832_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad9832\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad9835\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad9832\00", [25 x i8] zeroinitializer }, align 32
@ad9832_probe.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad9832_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/iio/frequency/ad9832.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no platform data?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@ad9832_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 331, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable specified AVDD supply\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad9832_probe._entry_ptr = internal global ptr @ad9832_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@ad9832_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 345, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable specified DVDD supply\0A\00", [56 x i8] zeroinitializer }, align 32
@ad9832_probe._entry_ptr.11 = internal global ptr @ad9832_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@ad9832_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad9832_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad9832_attribute_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad9832_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 413, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"device init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ad9832_probe._entry_ptr.16 = internal global ptr @ad9832_probe._entry.14, section ".printk_index", align 4
@ad9832_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad9832_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad9832_attributes = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @iio_dev_attr_out_altvoltage0_frequency0, ptr @iio_dev_attr_out_altvoltage0_frequency1, ptr getelementptr (i8, ptr @iio_const_attr_out_altvoltage0_frequency_scale, i64 4), ptr @iio_dev_attr_out_altvoltage0_phase0, ptr @iio_dev_attr_out_altvoltage0_phase1, ptr @iio_dev_attr_out_altvoltage0_phase2, ptr @iio_dev_attr_out_altvoltage0_phase3, ptr getelementptr (i8, ptr @iio_const_attr_out_altvoltage0_phase_scale, i64 4), ptr @iio_dev_attr_out_altvoltage0_pincontrol_en, ptr @iio_dev_attr_out_altvoltage0_frequencysymbol, ptr @iio_dev_attr_out_altvoltage0_phasesymbol, ptr @iio_dev_attr_out_altvoltage0_out_enable, ptr null], [44 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_frequency0 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9832_write }, i64 3, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_frequency1 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9832_write }, i64 7, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_out_altvoltage0_frequency_scale = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.19, %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_phase0 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9832_write }, i64 9, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_phase1 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9832_write }, i64 11, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_phase2 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9832_write }, i64 13, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_phase3 = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9832_write }, i64 15, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_out_altvoltage0_phase_scale = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.25, %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_pincontrol_en = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9832_write }, i64 18, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_frequencysymbol = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9832_write }, i64 17, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_phasesymbol = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9832_write }, i64 16, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_out_altvoltage0_out_enable = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9832_write }, i64 19, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"out_altvoltage0_frequency0\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"out_altvoltage0_frequency1\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"out_altvoltage0_frequency_scale\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"out_altvoltage0_phase0\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"out_altvoltage0_phase1\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"out_altvoltage0_phase2\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"out_altvoltage0_phase3\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0.0015339808\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"out_altvoltage0_phase_scale\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"out_altvoltage0_pincontrol_en\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"out_altvoltage0_frequencysymbol\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"out_altvoltage0_phasesymbol\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"out_altvoltage0_out_enable\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 7, i64 9, i64 11, i64 13, i64 15, i64 16, i64 17, i64 18, i64 19]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"ad9832_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 451, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"ad9832_id\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 444, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 453, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 315, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 325, i32 43 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 331, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 339, i32 43 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 345, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 353, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 366, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"ad9832_info\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 293, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 413, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"ad9832_attribute_group\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 289, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"ad9832_attributes\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 273, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_out_altvoltage0_frequency0\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_out_altvoltage0_frequency1\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [47 x i8] c"iio_const_attr_out_altvoltage0_frequency_scale\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [36 x i8] c"iio_dev_attr_out_altvoltage0_phase0\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [36 x i8] c"iio_dev_attr_out_altvoltage0_phase1\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [36 x i8] c"iio_dev_attr_out_altvoltage0_phase2\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [36 x i8] c"iio_dev_attr_out_altvoltage0_phase3\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [43 x i8] c"iio_const_attr_out_altvoltage0_phase_scale\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [43 x i8] c"iio_dev_attr_out_altvoltage0_pincontrol_en\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [45 x i8] c"iio_dev_attr_out_altvoltage0_frequencysymbol\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_out_altvoltage0_phasesymbol\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_out_altvoltage0_out_enable\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 255, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 256, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 258, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 260, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 261, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 262, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 263, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 266, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 268, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 257, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 264, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [42 x i8] c"../drivers/staging/iio/frequency/ad9832.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 270, i32 8 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_ad9832_driver_exit, ptr @__initcall__kmod_ad9832__291_458_ad9832_driver_init6, ptr @ad9832_driver_exit, ptr @ad9832_probe._entry, ptr @ad9832_probe._entry.14, ptr @ad9832_probe._entry.9, ptr @ad9832_probe._entry_ptr, ptr @ad9832_probe._entry_ptr.11, ptr @ad9832_probe._entry_ptr.16, ptr @ad9832_driver, ptr @ad9832_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @ad9832_probe.__key, ptr @.str.13, ptr @ad9832_info, ptr @.str.15, ptr @ad9832_attribute_group, ptr @ad9832_attributes, ptr @iio_dev_attr_out_altvoltage0_frequency0, ptr @iio_dev_attr_out_altvoltage0_frequency1, ptr @iio_const_attr_out_altvoltage0_frequency_scale, ptr @iio_dev_attr_out_altvoltage0_phase0, ptr @iio_dev_attr_out_altvoltage0_phase1, ptr @iio_dev_attr_out_altvoltage0_phase2, ptr @iio_dev_attr_out_altvoltage0_phase3, ptr @iio_const_attr_out_altvoltage0_phase_scale, ptr @iio_dev_attr_out_altvoltage0_pincontrol_en, ptr @iio_dev_attr_out_altvoltage0_frequencysymbol, ptr @iio_dev_attr_out_altvoltage0_phasesymbol, ptr @iio_dev_attr_out_altvoltage0_out_enable, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9832_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9832_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9832_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9832_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9832_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9832_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9832_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9832_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9832_attributes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_frequency0 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_frequency1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_out_altvoltage0_frequency_scale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_phase0 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_phase1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_phase2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_phase3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_out_altvoltage0_phase_scale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_pincontrol_en to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_frequencysymbol to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_phasesymbol to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_out_altvoltage0_out_enable to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9832_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad9832_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad9832_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad9832_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9832_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad9832_probe.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad9832_probe, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !97

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad9832_probe.__UNIQUE_ID_ddebug290, ptr noundef %spi, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call9 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 1152) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call9, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call15 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.4) #7
  %avdd = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %avdd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call15, ptr %avdd, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call23 = tail call i32 @regulator_enable(ptr noundef %call15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %6 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %avdd, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad9832_reg_disable, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end36, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call.i380 = tail call i32 @regulator_disable(ptr noundef %7) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %call38 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.8) #7
  %dvdd = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dvdd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call38, ptr %dvdd, align 8
  %cmp.i328 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %call46 = tail call i32 @regulator_enable(ptr noundef %call38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end53:                                         ; preds = %if.end44
  %10 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dvdd, align 8
  %call.i329 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad9832_reg_disable, ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool.not.i330 = icmp eq i32 %call.i329, 0
  br i1 %tobool.not.i330, label %if.end59, label %devm_add_action_or_reset.exit332

devm_add_action_or_reset.exit332:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %call.i381 = tail call i32 @regulator_disable(ptr noundef %11) #7
  br label %cleanup

if.end59:                                         ; preds = %if.end53
  %call61 = tail call ptr @devm_clk_get(ptr noundef %spi, ptr noundef nonnull @.str.12) #7
  %mclk = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call61, ptr %mclk, align 4
  %cmp.i333 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call61 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.end59
  %call69 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp = icmp slt i32 %call69, 0
  br i1 %cmp, label %if.end67.cleanup_crit_edge, label %if.end71

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %14 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mclk, align 4
  %call.i334 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad9832_clk_disable, ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i334)
  %tobool.not.i335 = icmp eq i32 %call.i334, 0
  br i1 %tobool.not.i335, label %if.end77, label %devm_add_action_or_reset.exit337

devm_add_action_or_reset.exit337:                 ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  br label %cleanup

if.end77:                                         ; preds = %if.end71
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spi, ptr %3, align 128
  %lock = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ad9832_probe.__key) #7
  %call82 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %name83 = getelementptr inbounds %struct.iio_dev, ptr %call9, i32 0, i32 15
  %17 = ptrtoint ptr %name83 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call82, ptr %name83, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call9, i32 0, i32 17
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ad9832_info, ptr %info, align 8
  %19 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %call9, align 8
  %20 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 15
  %xfer = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %xfer, align 8
  %len = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %len, align 8
  %msg = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 8
  %23 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 8, i32 1
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 8, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 8, i32 10
  %27 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 8, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 7, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %msg, ptr noundef %msg) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end77.spi_message_add_tail.exit_crit_edge

if.end77.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 7, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end77.spi_message_add_tail.exit_crit_edge
  %freq_xfer = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 9
  %33 = ptrtoint ptr %freq_xfer to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %20, ptr %freq_xfer, align 16
  %len91 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 0, i32 2
  %34 = ptrtoint ptr %len91 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %len91, align 8
  %cs_change = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 0, i32 7
  %35 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %cs_change, align 4
  %arrayidx94 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 15, i32 0, i32 1
  %arrayidx96 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx94, ptr %arrayidx96, align 16
  %len100 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 1, i32 2
  %37 = ptrtoint ptr %len100 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %len100, align 8
  %cs_change103 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 1, i32 7
  %38 = ptrtoint ptr %cs_change103 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load104 = load i8, ptr %cs_change103, align 4
  %bf.set106 = or i8 %bf.load104, 64
  store i8 %bf.set106, ptr %cs_change103, align 4
  %arrayidx107 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 15, i32 0, i32 2
  %arrayidx109 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 2
  %39 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx107, ptr %arrayidx109, align 16
  %len113 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 2, i32 2
  %40 = ptrtoint ptr %len113 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %len113, align 8
  %cs_change116 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 2, i32 7
  %41 = ptrtoint ptr %cs_change116 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load117 = load i8, ptr %cs_change116, align 4
  %bf.set119 = or i8 %bf.load117, 64
  store i8 %bf.set119, ptr %cs_change116, align 4
  %arrayidx120 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 15, i32 0, i32 3
  %arrayidx122 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 3
  %42 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx120, ptr %arrayidx122, align 16
  %len126 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 3, i32 2
  %43 = ptrtoint ptr %len126 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %len126, align 8
  %freq_msg = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 10
  %44 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 10, i32 1
  %45 = call ptr @memset(ptr %44, i32 0, i32 40)
  %46 = ptrtoint ptr %freq_msg to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %freq_msg, ptr %freq_msg, align 4
  %prev.i.i.i338 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 10, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i338 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %freq_msg, ptr %prev.i.i.i338, align 4
  %resources.i.i339 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 10, i32 10
  %48 = ptrtoint ptr %resources.i.i339 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i339, ptr %resources.i.i339, align 4
  %prev.i2.i.i340 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 10, i32 10, i32 1
  %49 = ptrtoint ptr %prev.i2.i.i340 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i339, ptr %prev.i2.i.i340, align 4
  %transfer_list.i341 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 0, i32 18
  %call.i.i.i343 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i341, ptr noundef %freq_msg, ptr noundef %freq_msg) #7
  br i1 %call.i.i.i343, label %if.end.i.i.i345, label %spi_message_add_tail.exit.spi_message_add_tail.exit346_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit346_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit346

if.end.i.i.i345:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %prev.i.i.i338 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i341, ptr %prev.i.i.i338, align 4
  %51 = ptrtoint ptr %transfer_list.i341 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %freq_msg, ptr %transfer_list.i341, align 4
  %prev3.i.i.i344 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i344 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %freq_msg, ptr %prev3.i.i.i344, align 4
  %53 = ptrtoint ptr %freq_msg to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i341, ptr %freq_msg, align 4
  br label %spi_message_add_tail.exit346

spi_message_add_tail.exit346:                     ; preds = %if.end.i.i.i345, %spi_message_add_tail.exit.spi_message_add_tail.exit346_crit_edge
  %transfer_list.i347 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 1, i32 18
  %54 = ptrtoint ptr %prev.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i.i338, align 4
  %call.i.i.i349 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i347, ptr noundef %55, ptr noundef %freq_msg) #7
  br i1 %call.i.i.i349, label %if.end.i.i.i351, label %spi_message_add_tail.exit346.spi_message_add_tail.exit352_crit_edge

spi_message_add_tail.exit346.spi_message_add_tail.exit352_crit_edge: ; preds = %spi_message_add_tail.exit346
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit352

if.end.i.i.i351:                                  ; preds = %spi_message_add_tail.exit346
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %prev.i.i.i338 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %transfer_list.i347, ptr %prev.i.i.i338, align 4
  %57 = ptrtoint ptr %transfer_list.i347 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %freq_msg, ptr %transfer_list.i347, align 4
  %prev3.i.i.i350 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 1, i32 18, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i350 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i.i350, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %transfer_list.i347, ptr %55, align 4
  br label %spi_message_add_tail.exit352

spi_message_add_tail.exit352:                     ; preds = %if.end.i.i.i351, %spi_message_add_tail.exit346.spi_message_add_tail.exit352_crit_edge
  %transfer_list.i353 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 2, i32 18
  %60 = ptrtoint ptr %prev.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i338, align 4
  %call.i.i.i355 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i353, ptr noundef %61, ptr noundef %freq_msg) #7
  br i1 %call.i.i.i355, label %if.end.i.i.i357, label %spi_message_add_tail.exit352.spi_message_add_tail.exit358_crit_edge

spi_message_add_tail.exit352.spi_message_add_tail.exit358_crit_edge: ; preds = %spi_message_add_tail.exit352
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit358

if.end.i.i.i357:                                  ; preds = %spi_message_add_tail.exit352
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %prev.i.i.i338 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %transfer_list.i353, ptr %prev.i.i.i338, align 4
  %63 = ptrtoint ptr %transfer_list.i353 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %freq_msg, ptr %transfer_list.i353, align 4
  %prev3.i.i.i356 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 2, i32 18, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i356 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i.i356, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %transfer_list.i353, ptr %61, align 4
  br label %spi_message_add_tail.exit358

spi_message_add_tail.exit358:                     ; preds = %if.end.i.i.i357, %spi_message_add_tail.exit352.spi_message_add_tail.exit358_crit_edge
  %transfer_list.i359 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 3, i32 18
  %66 = ptrtoint ptr %prev.i.i.i338 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i.i338, align 4
  %call.i.i.i361 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i359, ptr noundef %67, ptr noundef %freq_msg) #7
  br i1 %call.i.i.i361, label %if.end.i.i.i363, label %spi_message_add_tail.exit358.spi_message_add_tail.exit364_crit_edge

spi_message_add_tail.exit358.spi_message_add_tail.exit364_crit_edge: ; preds = %spi_message_add_tail.exit358
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit364

if.end.i.i.i363:                                  ; preds = %spi_message_add_tail.exit358
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %prev.i.i.i338 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %transfer_list.i359, ptr %prev.i.i.i338, align 4
  %69 = ptrtoint ptr %transfer_list.i359 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %freq_msg, ptr %transfer_list.i359, align 4
  %prev3.i.i.i362 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 9, i32 3, i32 18, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i362 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i362, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %transfer_list.i359, ptr %67, align 4
  br label %spi_message_add_tail.exit364

spi_message_add_tail.exit364:                     ; preds = %if.end.i.i.i363, %spi_message_add_tail.exit358.spi_message_add_tail.exit364_crit_edge
  %phase_xfer = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 11
  %72 = ptrtoint ptr %phase_xfer to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %20, ptr %phase_xfer, align 8
  %len144 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 11, i32 0, i32 2
  %73 = ptrtoint ptr %len144 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %len144, align 8
  %cs_change147 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 11, i32 0, i32 7
  %74 = ptrtoint ptr %cs_change147 to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load148 = load i8, ptr %cs_change147, align 4
  %bf.set150 = or i8 %bf.load148, 64
  store i8 %bf.set150, ptr %cs_change147, align 4
  %arrayidx153 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 11, i32 1
  %75 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx94, ptr %arrayidx153, align 8
  %len157 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 11, i32 1, i32 2
  %76 = ptrtoint ptr %len157 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %len157, align 8
  %phase_msg = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 12
  %77 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 12, i32 1
  %78 = call ptr @memset(ptr %77, i32 0, i32 40)
  %79 = ptrtoint ptr %phase_msg to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %phase_msg, ptr %phase_msg, align 4
  %prev.i.i.i365 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 12, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i.i365 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %phase_msg, ptr %prev.i.i.i365, align 4
  %resources.i.i366 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 12, i32 10
  %81 = ptrtoint ptr %resources.i.i366 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %resources.i.i366, ptr %resources.i.i366, align 4
  %prev.i2.i.i367 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 12, i32 10, i32 1
  %82 = ptrtoint ptr %prev.i2.i.i367 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %resources.i.i366, ptr %prev.i2.i.i367, align 4
  %transfer_list.i368 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 11, i32 0, i32 18
  %call.i.i.i370 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i368, ptr noundef %phase_msg, ptr noundef %phase_msg) #7
  br i1 %call.i.i.i370, label %if.end.i.i.i372, label %spi_message_add_tail.exit364.spi_message_add_tail.exit373_crit_edge

spi_message_add_tail.exit364.spi_message_add_tail.exit373_crit_edge: ; preds = %spi_message_add_tail.exit364
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit373

if.end.i.i.i372:                                  ; preds = %spi_message_add_tail.exit364
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %prev.i.i.i365 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %transfer_list.i368, ptr %prev.i.i.i365, align 4
  %84 = ptrtoint ptr %transfer_list.i368 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %phase_msg, ptr %transfer_list.i368, align 4
  %prev3.i.i.i371 = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 11, i32 0, i32 18, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i371 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %phase_msg, ptr %prev3.i.i.i371, align 4
  %86 = ptrtoint ptr %phase_msg to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %transfer_list.i368, ptr %phase_msg, align 4
  br label %spi_message_add_tail.exit373

spi_message_add_tail.exit373:                     ; preds = %if.end.i.i.i372, %spi_message_add_tail.exit364.spi_message_add_tail.exit373_crit_edge
  %transfer_list.i374 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 11, i32 1, i32 18
  %87 = ptrtoint ptr %prev.i.i.i365 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prev.i.i.i365, align 4
  %call.i.i.i376 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i374, ptr noundef %88, ptr noundef %phase_msg) #7
  br i1 %call.i.i.i376, label %if.end.i.i.i378, label %spi_message_add_tail.exit373.spi_message_add_tail.exit379_crit_edge

spi_message_add_tail.exit373.spi_message_add_tail.exit379_crit_edge: ; preds = %spi_message_add_tail.exit373
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit379

if.end.i.i.i378:                                  ; preds = %spi_message_add_tail.exit373
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %prev.i.i.i365 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %transfer_list.i374, ptr %prev.i.i.i365, align 4
  %90 = ptrtoint ptr %transfer_list.i374 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %phase_msg, ptr %transfer_list.i374, align 4
  %prev3.i.i.i377 = getelementptr %struct.ad9832_state, ptr %3, i32 0, i32 11, i32 1, i32 18, i32 1
  %91 = ptrtoint ptr %prev3.i.i.i377 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %prev3.i.i.i377, align 4
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %transfer_list.i374, ptr %88, align 4
  br label %spi_message_add_tail.exit379

spi_message_add_tail.exit379:                     ; preds = %if.end.i.i.i378, %spi_message_add_tail.exit373.spi_message_add_tail.exit379_crit_edge
  %ctrl_src = getelementptr inbounds %struct.ad9832_state, ptr %3, i32 0, i32 6
  %93 = ptrtoint ptr %ctrl_src to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 14336, ptr %ctrl_src, align 4
  %94 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -2048, ptr %20, align 128
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %3, align 128
  %call168 = tail call i32 @spi_sync(ptr noundef %96, ptr noundef %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end175, label %do.end173

do.end173:                                        ; preds = %spi_message_add_tail.exit379
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end175:                                        ; preds = %spi_message_add_tail.exit379
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %1, align 4
  %call176 = tail call fastcc i32 @ad9832_write_frequency(ptr noundef %3, i32 noundef 3, i32 noundef %98)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end179, label %if.end175.cleanup_crit_edge

if.end175.cleanup_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end179:                                        ; preds = %if.end175
  %freq1 = getelementptr inbounds %struct.ad9832_platform_data, ptr %1, i32 0, i32 1
  %99 = ptrtoint ptr %freq1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %freq1, align 4
  %call180 = tail call fastcc i32 @ad9832_write_frequency(ptr noundef %3, i32 noundef 7, i32 noundef %100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end183, label %if.end179.cleanup_crit_edge

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end183:                                        ; preds = %if.end179
  %phase0 = getelementptr inbounds %struct.ad9832_platform_data, ptr %1, i32 0, i32 2
  %101 = ptrtoint ptr %phase0 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %phase0, align 4
  %conv184 = zext i16 %102 to i32
  %call185 = tail call fastcc i32 @ad9832_write_phase(ptr noundef %3, i32 noundef 9, i32 noundef %conv184)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %if.end183.cleanup_crit_edge

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end188:                                        ; preds = %if.end183
  %phase1 = getelementptr inbounds %struct.ad9832_platform_data, ptr %1, i32 0, i32 3
  %103 = ptrtoint ptr %phase1 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %phase1, align 2
  %conv189 = zext i16 %104 to i32
  %call190 = tail call fastcc i32 @ad9832_write_phase(ptr noundef %3, i32 noundef 11, i32 noundef %conv189)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end193, label %if.end188.cleanup_crit_edge

if.end188.cleanup_crit_edge:                      ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end193:                                        ; preds = %if.end188
  %phase2 = getelementptr inbounds %struct.ad9832_platform_data, ptr %1, i32 0, i32 4
  %105 = ptrtoint ptr %phase2 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %phase2, align 4
  %conv194 = zext i16 %106 to i32
  %call195 = tail call fastcc i32 @ad9832_write_phase(ptr noundef %3, i32 noundef 13, i32 noundef %conv194)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end198, label %if.end193.cleanup_crit_edge

if.end193.cleanup_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end198:                                        ; preds = %if.end193
  %phase3 = getelementptr inbounds %struct.ad9832_platform_data, ptr %1, i32 0, i32 5
  %107 = ptrtoint ptr %phase3 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %phase3, align 2
  %conv199 = zext i16 %108 to i32
  %call200 = tail call fastcc i32 @ad9832_write_phase(ptr noundef %3, i32 noundef 15, i32 noundef %conv199)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end203, label %if.end198.cleanup_crit_edge

if.end198.cleanup_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end203:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  %call205 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end203, %if.end198.cleanup_crit_edge, %if.end193.cleanup_crit_edge, %if.end188.cleanup_crit_edge, %if.end183.cleanup_crit_edge, %if.end179.cleanup_crit_edge, %if.end175.cleanup_crit_edge, %do.end173, %devm_add_action_or_reset.exit337, %if.end67.cleanup_crit_edge, %if.then64, %devm_add_action_or_reset.exit332, %do.end51, %if.then41, %devm_add_action_or_reset.exit, %do.end28, %if.then18, %if.end7.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ %5, %if.then18 ], [ %call23, %do.end28 ], [ %9, %if.then41 ], [ %call46, %do.end51 ], [ %13, %if.then64 ], [ %call168, %do.end173 ], [ %call205, %if.end203 ], [ -19, %if.then5 ], [ -12, %if.end7.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call.i329, %devm_add_action_or_reset.exit332 ], [ %call69, %if.end67.cleanup_crit_edge ], [ %call.i334, %devm_add_action_or_reset.exit337 ], [ %call176, %if.end175.cleanup_crit_edge ], [ %call180, %if.end179.cleanup_crit_edge ], [ %call185, %if.end183.cleanup_crit_edge ], [ %call190, %if.end188.cleanup_crit_edge ], [ %call195, %if.end193.cleanup_crit_edge ], [ %call200, %if.end198.cleanup_crit_edge ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad9832_reg_disable(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad9832_clk_disable(ptr noundef %clk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %clk) #7
  tail call void @clk_unprepare(ptr noundef %clk) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad9832_write_frequency(ptr noundef %st, i32 noundef %addr, i32 noundef %fout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk = getelementptr inbounds %struct.ad9832_state, ptr %st, i32 0, i32 3
  %0 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mclk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #7
  %div43 = lshr i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div43, i32 %fout)
  %cmp = icmp ult i32 %div43, %fout
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mclk, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fout)
  %cmp167.i = icmp eq i32 %fout, 0
  br i1 %cmp167.i, label %if.end.ad9832_calc_freqreg.exit_crit_edge, label %if.else177.i, !prof !98

if.end.ad9832_calc_freqreg.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9832_calc_freqreg.exit

if.else177.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i32 %fout to i64
  %mul.i = shl nuw i64 %conv.i, 32
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call2, i64 %mul.i) #11, !srcloc !99
  %asmresult1.i.i = extractvalue { i64, i64 } %4, 1
  %extract.t288.i = trunc i64 %asmresult1.i.i to i32
  br label %ad9832_calc_freqreg.exit

ad9832_calc_freqreg.exit:                         ; preds = %if.else177.i, %if.end.ad9832_calc_freqreg.exit_crit_edge
  %freqreg.0.off0.i = phi i32 [ %extract.t288.i, %if.else177.i ], [ 0, %if.end.ad9832_calc_freqreg.exit_crit_edge ]
  %or = tail call i32 @llvm.fshl.i32(i32 %addr, i32 %freqreg.0.off0.i, i32 8)
  %5 = trunc i32 %or to i16
  %conv = or i16 %5, 12288
  %6 = getelementptr inbounds %struct.ad9832_state, ptr %st, i32 0, i32 15
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %6, align 128
  %sub = shl i32 %addr, 8
  %shl5 = add i32 %sub, 65280
  %shr7 = lshr i32 %freqreg.0.off0.i, 16
  %and8 = and i32 %shr7, 255
  %or6 = or i32 %and8, %shl5
  %8 = trunc i32 %or6 to i16
  %conv10 = or i16 %8, 8192
  %arrayidx11 = getelementptr %struct.ad9832_state, ptr %st, i32 0, i32 15, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv10, ptr %arrayidx11, align 2
  %shl13 = add i32 %sub, 65024
  %shr15 = lshr i32 %freqreg.0.off0.i, 8
  %and16 = and i32 %shr15, 255
  %or14 = or i32 %and16, %shl13
  %10 = trunc i32 %or14 to i16
  %conv18 = or i16 %10, 12288
  %arrayidx19 = getelementptr %struct.ad9832_state, ptr %st, i32 0, i32 15, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv18, ptr %arrayidx19, align 4
  %shl21 = add i32 %sub, 64768
  %and24 = and i32 %freqreg.0.off0.i, 255
  %or22 = or i32 %and24, %shl21
  %12 = trunc i32 %or22 to i16
  %conv26 = or i16 %12, 8192
  %arrayidx27 = getelementptr %struct.ad9832_state, ptr %st, i32 0, i32 15, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv26, ptr %arrayidx27, align 2
  %14 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %st, align 128
  %freq_msg = getelementptr inbounds %struct.ad9832_state, ptr %st, i32 0, i32 10
  %call28 = tail call i32 @spi_sync(ptr noundef %15, ptr noundef %freq_msg) #7
  br label %cleanup

cleanup:                                          ; preds = %ad9832_calc_freqreg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %ad9832_calc_freqreg.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad9832_write_phase(ptr noundef %st, i32 noundef %addr, i32 noundef %phase) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %phase)
  %cmp = icmp ugt i32 %phase, 4096
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %addr, 8
  %shr = lshr i32 %phase, 8
  %or = or i32 %shr, %shl
  %0 = trunc i32 %or to i16
  %conv = or i16 %0, 4096
  %1 = getelementptr inbounds %struct.ad9832_state, ptr %st, i32 0, i32 15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %1, align 128
  %shl2 = add i32 %shl, 65280
  %and4 = and i32 %phase, 255
  %or5 = or i32 %shl2, %and4
  %conv6 = trunc i32 %or5 to i16
  %arrayidx7 = getelementptr %struct.ad9832_state, ptr %st, i32 0, i32 15, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv6, ptr %arrayidx7, align 2
  %4 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %st, align 128
  %phase_msg = getelementptr inbounds %struct.ad9832_state, ptr %st, i32 0, i32 12
  %call = tail call i32 @spi_sync(ptr noundef %5, ptr noundef %phase_msg) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9832_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !100
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.error_ret_crit_edge

entry.error_ret_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ret

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %address, align 8
  %conv = trunc i64 %4 to i32
  %5 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %if.end.sw.epilog_crit_edge [
    i32 3, label %if.end.sw.bb_crit_edge
    i32 7, label %if.end.sw.bb_crit_edge123
    i32 9, label %if.end.sw.bb6_crit_edge
    i32 11, label %if.end.sw.bb6_crit_edge124
    i32 13, label %if.end.sw.bb6_crit_edge125
    i32 15, label %if.end.sw.bb6_crit_edge126
    i32 18, label %sw.bb10
    i32 17, label %sw.bb24
    i32 16, label %sw.bb48
    i32 19, label %sw.bb69
  ]

if.end.sw.bb6_crit_edge126:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end.sw.bb6_crit_edge125:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end.sw.bb6_crit_edge124:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

if.end.sw.bb_crit_edge123:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge123
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %call5 = call fastcc i32 @ad9832_write_frequency(ptr noundef %1, i32 noundef %conv, i32 noundef %7)
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge124, %if.end.sw.bb6_crit_edge125, %if.end.sw.bb6_crit_edge126
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %9)
  %cmp.i = icmp ugt i32 %9, 4096
  br i1 %cmp.i, label %sw.bb6.sw.epilog_crit_edge, label %if.end.i

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 %conv, 8
  %shr.i = lshr i32 %9, 8
  %or.i = or i32 %shr.i, %shl.i
  %10 = trunc i32 %or.i to i16
  %conv.i = or i16 %10, 4096
  %11 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %11, align 128
  %shl2.i = add nuw nsw i32 %shl.i, 65280
  %and4.i = and i32 %9, 255
  %or5.i = or i32 %and4.i, %shl2.i
  %conv6.i = trunc i32 %or5.i to i16
  %arrayidx7.i = getelementptr %struct.ad9832_state, ptr %1, i32 0, i32 15, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6.i, ptr %arrayidx7.i, align 2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 128
  %phase_msg.i = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 12
  %call.i121 = call i32 @spi_sync(ptr noundef %15, ptr noundef %phase_msg.i) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  %ctrl_ss15 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %ctrl_ss15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ctrl_ss15, align 2
  %20 = and i16 %19, -4097
  %masksel = select i1 %tobool11.not, i16 4096, i16 0
  %.sink = or i16 %20, %masksel
  store i16 %.sink, ptr %ctrl_ss15, align 2
  %21 = or i16 %.sink, -32768
  %22 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %21, ptr %22, align 128
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  %msg = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 8
  %call23 = call i32 @spi_sync(ptr noundef %25, ptr noundef %msg) #7
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %27, label %sw.bb24.sw.epilog_crit_edge [
    i32 1, label %if.then26
    i32 0, label %if.then33
  ]

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then26:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_fp = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %ctrl_fp to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ctrl_fp, align 16
  %31 = or i16 %30, 2048
  store i16 %31, ptr %ctrl_fp, align 16
  br label %if.end40

if.then33:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_fp34 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %ctrl_fp34 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ctrl_fp34, align 16
  %34 = and i16 %33, -2049
  store i16 %34, ptr %ctrl_fp34, align 16
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.then26
  %ctrl_fp41 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %ctrl_fp41 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ctrl_fp41, align 16
  %37 = or i16 %36, 24576
  %38 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 15
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %37, ptr %38, align 128
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 128
  %msg46 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 8
  %call47 = call i32 @spi_sync(ptr noundef %41, ptr noundef %msg46) #7
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp49 = icmp ugt i32 %43, 3
  br i1 %cmp49, label %sw.bb48.sw.epilog_crit_edge, label %if.end52

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end52:                                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_fp53 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %ctrl_fp53 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ctrl_fp53, align 16
  %46 = and i16 %45, -1537
  %.tr = trunc i32 %43 to i16
  %47 = shl nuw nsw i16 %.tr, 9
  %48 = and i16 %47, 1536
  %conv61 = or i16 %46, %48
  store i16 %conv61, ptr %ctrl_fp53, align 16
  %49 = or i16 %conv61, 24576
  %50 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 15
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %49, ptr %50, align 128
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 128
  %msg67 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 8
  %call68 = call i32 @spi_sync(ptr noundef %53, ptr noundef %msg67) #7
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool70.not = icmp eq i32 %55, 0
  %ctrl_src76 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %ctrl_src76 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %ctrl_src76, align 4
  %58 = or i16 %57, 4096
  %59 = and i16 %57, -14337
  %.sink122 = select i1 %tobool70.not, i16 %58, i16 %59
  store i16 %.sink122, ptr %ctrl_src76, align 4
  %60 = or i16 %.sink122, -16384
  %61 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 15
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %60, ptr %61, align 128
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 128
  %msg86 = getelementptr inbounds %struct.ad9832_state, ptr %1, i32 0, i32 8
  %call87 = call i32 @spi_sync(ptr noundef %64, ptr noundef %msg86) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb69, %if.end52, %sw.bb48.sw.epilog_crit_edge, %if.end40, %sw.bb24.sw.epilog_crit_edge, %sw.bb10, %if.end.i, %sw.bb6.sw.epilog_crit_edge, %sw.bb, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call87, %sw.bb69 ], [ %call68, %if.end52 ], [ %call47, %if.end40 ], [ %call23, %sw.bb10 ], [ %call5, %sw.bb ], [ -22, %sw.bb24.sw.epilog_crit_edge ], [ -22, %sw.bb48.sw.epilog_crit_edge ], [ -19, %if.end.sw.epilog_crit_edge ], [ %call.i121, %if.end.i ], [ -22, %sw.bb6.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %error_ret

error_ret:                                        ; preds = %sw.epilog, %entry.error_ret_crit_edge
  %ret.1 = phi i32 [ %call.i, %entry.error_ret_crit_edge ], [ %ret.0, %sw.epilog ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool89.not = icmp eq i32 %ret.1, 0
  %len.ret.1 = select i1 %tobool89.not, i32 %len, i32 %ret.1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %len.ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_ad9832__291_458_ad9832_driver_init6, !1, !"__initcall__kmod_ad9832__291_458_ad9832_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 458, i32 1}
!2 = !{ptr @__exitcall_ad9832_driver_exit, !1, !"__exitcall_ad9832_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 460, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 461, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 462, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 453, i32 11}
!12 = !{ptr @ad9832_driver, !13, !"ad9832_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 451, i32 26}
!14 = !{ptr @ad9832_id, !15, !"ad9832_id", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 444, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 315, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ad9832_probe.__UNIQUE_ID_ddebug290, !17, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 325, i32 43}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 331, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ad9832_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @ad9832_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 339, i32 43}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 345, i32 3}
!33 = !{ptr @ad9832_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ad9832_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 353, i32 37}
!37 = !{ptr @ad9832_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 366, i32 2}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 413, i32 3}
!42 = !{ptr @ad9832_probe._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ad9832_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ad9832_info, !45, !"ad9832_info", i1 false, i1 false}
!45 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 293, i32 30}
!46 = !{ptr @ad9832_attribute_group, !47, !"ad9832_attribute_group", i1 false, i1 false}
!47 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 289, i32 37}
!48 = !{ptr @ad9832_attributes, !49, !"ad9832_attributes", i1 false, i1 false}
!49 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 273, i32 26}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 255, i32 8}
!52 = !{ptr @iio_dev_attr_out_altvoltage0_frequency0, !51, !"iio_dev_attr_out_altvoltage0_frequency0", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 256, i32 8}
!55 = !{ptr @iio_dev_attr_out_altvoltage0_frequency1, !54, !"iio_dev_attr_out_altvoltage0_frequency1", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 258, i32 8}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @iio_const_attr_out_altvoltage0_frequency_scale, !57, !"iio_const_attr_out_altvoltage0_frequency_scale", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 260, i32 8}
!62 = !{ptr @iio_dev_attr_out_altvoltage0_phase0, !61, !"iio_dev_attr_out_altvoltage0_phase0", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 261, i32 8}
!65 = !{ptr @iio_dev_attr_out_altvoltage0_phase1, !64, !"iio_dev_attr_out_altvoltage0_phase1", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 262, i32 8}
!68 = !{ptr @iio_dev_attr_out_altvoltage0_phase2, !67, !"iio_dev_attr_out_altvoltage0_phase2", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 263, i32 8}
!71 = !{ptr @iio_dev_attr_out_altvoltage0_phase3, !70, !"iio_dev_attr_out_altvoltage0_phase3", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 266, i32 8}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @iio_const_attr_out_altvoltage0_phase_scale, !73, !"iio_const_attr_out_altvoltage0_phase_scale", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 268, i32 8}
!78 = !{ptr @iio_dev_attr_out_altvoltage0_pincontrol_en, !77, !"iio_dev_attr_out_altvoltage0_pincontrol_en", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 257, i32 8}
!81 = !{ptr @iio_dev_attr_out_altvoltage0_frequencysymbol, !80, !"iio_dev_attr_out_altvoltage0_frequencysymbol", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 264, i32 8}
!84 = !{ptr @iio_dev_attr_out_altvoltage0_phasesymbol, !83, !"iio_dev_attr_out_altvoltage0_phasesymbol", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/iio/frequency/ad9832.c", i32 270, i32 8}
!87 = !{ptr @iio_dev_attr_out_altvoltage0_out_enable, !86, !"iio_dev_attr_out_altvoltage0_out_enable", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2148732316, i64 2148732321, i64 2148732334, i64 2148732378, i64 2148732412, i64 2148732433}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2147985149, i64 2147985429, i64 2147985763, i64 2147986097}
!100 = !{!"auto-init"}
