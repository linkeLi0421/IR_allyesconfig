; ModuleID = '/llk/IR_all_yes/drivers/iio/frequency/ad9523.c_pt.bc'
source_filename = "../drivers/iio/frequency/ad9523.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
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
%struct.ad9523_state = type { ptr, ptr, ptr, [14 x %struct.iio_chan_spec], ptr, ptr, ptr, i32, i32, [3 x i32], [10 x i8], %struct.mutex, [28 x i8], [2 x %union.anon.85], [120 x i8] }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%union.anon.85 = type { i32 }
%struct.ad9523_platform_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, ptr, [32 x i8] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.ad9523_channel_spec = type { i32, i8, i8, i8, i8, i8, i32, i8, i16, [16 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ad9523__298_1062_ad9523_driver_init6 = internal global ptr @ad9523_driver_init, section ".initcall6.init", align 4
@ad9523_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad9523_id, ptr @ad9523_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad9523_driver_exit = internal global ptr @ad9523_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [63 x i8] c"ad9523.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [55 x i8] c"ad9523.description=Analog Devices AD9523 CLOCKDIST/PLL\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [41 x i8] c"ad9523.file=drivers/iio/frequency/ad9523\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [22 x i8] c"ad9523.license=GPL v2\00", section ".modinfo", align 1
@ad9523_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad9523-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9523 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad9523\00", [25 x i8] zeroinitializer }, align 32
@ad9523_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 987, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no platform data?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad9523_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/frequency/ad9523.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad9523_probe._entry_ptr = internal global ptr @ad9523_probe._entry, section ".printk_index", align 4
@ad9523_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@ad9523_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad9523_attribute_group, ptr @ad9523_read_raw, ptr null, ptr null, ptr @ad9523_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad9523_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad9523_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad9523_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad9523_attributes = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @iio_dev_attr_sync_dividers, ptr @iio_dev_attr_store_eeprom, ptr @iio_dev_attr_pll2_feedback_clk_present, ptr @iio_dev_attr_pll2_reference_clk_present, ptr @iio_dev_attr_pll1_reference_clk_a_present, ptr @iio_dev_attr_pll1_reference_clk_b_present, ptr @iio_dev_attr_pll1_reference_clk_test_present, ptr @iio_dev_attr_vcxo_clk_present, ptr @iio_dev_attr_pll1_locked, ptr @iio_dev_attr_pll2_locked, ptr null], [52 x i8] zeroinitializer }, align 32
@iio_dev_attr_sync_dividers = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9523_store }, i64 8, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_store_eeprom = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ad9523_store }, i64 9, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_pll2_feedback_clk_present = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad9523_show, ptr null }, i64 6, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_pll2_reference_clk_present = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad9523_show, ptr null }, i64 7, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_pll1_reference_clk_a_present = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad9523_show, ptr null }, i64 2, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_pll1_reference_clk_b_present = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad9523_show, ptr null }, i64 3, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_pll1_reference_clk_test_present = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad9523_show, ptr null }, i64 4, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_vcxo_clk_present = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad9523_show, ptr null }, i64 5, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_pll1_locked = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad9523_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_pll2_locked = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad9523_show, ptr null }, i64 1, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sync_dividers\00", [18 x i8] zeroinitializer }, align 32
@ad9523_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read failed (%d)\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ad9523_read\00", [20 x i8] zeroinitializer }, align 32
@ad9523_read._entry_ptr = internal global ptr @ad9523_read._entry, section ".printk_index", align 4
@ad9523_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write failed (%d)\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad9523_write\00", [19 x i8] zeroinitializer }, align 32
@ad9523_write._entry_ptr = internal global ptr @ad9523_write._entry, section ".printk_index", align 4
@ad9523_store_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Verify EEPROM failed\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ad9523_store_eeprom\00", [44 x i8] zeroinitializer }, align 32
@ad9523_store_eeprom._entry_ptr = internal global ptr @ad9523_store_eeprom._entry, section ".printk_index", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"store_eeprom\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pll2_feedback_clk_present\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pll2_reference_clk_present\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pll1_reference_clk_a_present\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pll1_reference_clk_b_present\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pll1_reference_clk_test_present\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vcxo_clk_present\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll1_locked\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll2_locked\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 13, i64 14]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 13, i64 14]
@__sancov_gen_cov_switch_values.29 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.31 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"ad9523_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1055, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"ad9523_id\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1049, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1057, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 987, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 997, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 999, i32 42 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1011, i32 56 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1016, i32 54 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1026, i32 53 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"ad9523_info\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 751, i32 30 }
@___asan_gen_.80 = private unnamed_addr constant [23 x i8] c"ad9523_attribute_group\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 626, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"ad9523_attributes\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 612, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"iio_dev_attr_sync_dividers\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"iio_dev_attr_store_eeprom\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [39 x i8] c"iio_dev_attr_pll2_feedback_clk_present\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_pll2_reference_clk_present\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_pll1_reference_clk_a_present\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_pll1_reference_clk_b_present\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [45 x i8] c"iio_dev_attr_pll1_reference_clk_test_present\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [30 x i8] c"iio_dev_attr_vcxo_clk_present\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"iio_dev_attr_pll1_locked\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [25 x i8] c"iio_dev_attr_pll2_locked\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 602, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 325, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 356, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 477, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 607, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 592, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 554, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 597, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 572, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 577, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 582, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 587, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 562, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [34 x i8] c"../drivers/iio/frequency/ad9523.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 567, i32 8 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_ad9523_driver_exit, ptr @__initcall__kmod_ad9523__298_1062_ad9523_driver_init6, ptr @ad9523_driver_exit, ptr @ad9523_probe._entry, ptr @ad9523_probe._entry_ptr, ptr @ad9523_read._entry, ptr @ad9523_read._entry_ptr, ptr @ad9523_store_eeprom._entry, ptr @ad9523_store_eeprom._entry_ptr, ptr @ad9523_write._entry, ptr @ad9523_write._entry_ptr, ptr @ad9523_driver, ptr @ad9523_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ad9523_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ad9523_info, ptr @ad9523_attribute_group, ptr @ad9523_attributes, ptr @iio_dev_attr_sync_dividers, ptr @iio_dev_attr_store_eeprom, ptr @iio_dev_attr_pll2_feedback_clk_present, ptr @iio_dev_attr_pll2_reference_clk_present, ptr @iio_dev_attr_pll1_reference_clk_a_present, ptr @iio_dev_attr_pll1_reference_clk_b_present, ptr @iio_dev_attr_pll1_reference_clk_test_present, ptr @iio_dev_attr_vcxo_clk_present, ptr @iio_dev_attr_pll1_locked, ptr @iio_dev_attr_pll2_locked, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9523_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9523_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9523_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9523_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9523_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9523_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9523_attributes to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sync_dividers to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_store_eeprom to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_pll2_feedback_clk_present to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_pll2_reference_clk_present to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_pll1_reference_clk_a_present to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_pll1_reference_clk_b_present to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_pll1_reference_clk_test_present to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_vcxo_clk_present to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_pll1_locked to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_pll2_locked to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9523_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9523_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad9523_store_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9523_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad9523_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad9523_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad9523_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9523_probe(ptr noundef %spi) #2 align 64 {
entry:
  %active_mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 1536) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad9523_state, ptr %3, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ad9523_probe.__key) #7
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.7) #7
  %reg = getelementptr inbounds %struct.ad9523_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.if.end25_crit_edge, label %if.then13

if.end4.if.end25_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then13:                                        ; preds = %if.end4
  %call15 = tail call i32 @regulator_enable(ptr noundef %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad9523_reg_disable, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end18.if.end25_crit_edge, label %devm_add_action_or_reset.exit

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

devm_add_action_or_reset.exit:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %6) #7
  br label %cleanup

if.end25:                                         ; preds = %if.end18.if.end25_crit_edge, %if.end4.if.end25_crit_edge
  %call27 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef 7) #7
  %pwrdown_gpio = getelementptr inbounds %struct.ad9523_state, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %pwrdown_gpio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %pwrdown_gpio, align 4
  %cmp.i124 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %call35 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.9, i32 noundef 3) #7
  %reset_gpio = getelementptr inbounds %struct.ad9523_state, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call35, ptr %reset_gpio, align 32
  %cmp.i125 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end33
  %tobool43.not = icmp eq ptr %call35, null
  br i1 %tobool43.not, label %if.end41.if.end47_crit_edge, label %if.then44

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #7
  %12 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_gpio, align 32
  %call46 = tail call i32 @gpiod_direction_output(ptr noundef %13, i32 noundef 1) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end41.if.end47_crit_edge
  %call49 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.10, i32 noundef 7) #7
  %sync_gpio = getelementptr inbounds %struct.ad9523_state, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %sync_gpio to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call49, ptr %sync_gpio, align 4
  %cmp.i126 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call49 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spi, ptr %3, align 128
  %pdata57 = getelementptr inbounds %struct.ad9523_state, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %pdata57 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %pdata57, align 8
  %name = getelementptr inbounds %struct.ad9523_platform_data, ptr %1, i32 0, i32 30
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp58.not = icmp eq i8 %20, 0
  br i1 %cmp58.not, label %cond.false, label %if.end55.cond.end_crit_edge

if.end55.cond.end_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %call61 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end55.cond.end_crit_edge
  %cond = phi ptr [ %call61, %cond.false ], [ %name, %if.end55.cond.end_crit_edge ]
  %name64 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %21 = ptrtoint ptr %name64 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cond, ptr %name64, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ad9523_info, ptr %info, align 8
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %call, align 8
  %ad9523_channels = getelementptr inbounds %struct.ad9523_state, ptr %3, i32 0, i32 3
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ad9523_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.ad9523_platform_data, ptr %1, i32 0, i32 28
  %25 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_channels, align 4
  %num_channels66 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %27 = ptrtoint ptr %num_channels66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %num_channels66, align 4
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 8
  %pdata1.i = getelementptr inbounds %struct.ad9523_state, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_mask.i) #7
  %32 = ptrtoint ptr %active_mask.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %active_mask.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %29, align 128
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode.i, align 8
  %and.i = shl i32 %36, 3
  %37 = and i32 %and.i, 128
  %or.i = xor i32 %37, 160
  %call2.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65536, i32 noundef %or.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i127 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i127, label %cond.end.ad9523_setup.exit.thread_crit_edge, label %if.end.i

cond.end.ad9523_setup.exit.thread_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end.i:                                         ; preds = %cond.end
  %call3.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65540, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.ad9523_setup.exit.thread_crit_edge, label %if.end6.i

if.end.i.ad9523_setup.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %call.i.i128 = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 66100, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128)
  %cmp8.i = icmp slt i32 %call.i.i128, 0
  br i1 %cmp8.i, label %if.end6.i.ad9523_setup.exit.thread_crit_edge, label %if.end10.i

if.end6.i.ad9523_setup.exit.thread_crit_edge:     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end10.i:                                       ; preds = %if.end6.i
  %refa_r_div.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 9
  %38 = ptrtoint ptr %refa_r_div.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %refa_r_div.i, align 4
  %conv.i = zext i16 %39 to i32
  %call11.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 131089, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.ad9523_setup.exit.thread_crit_edge, label %if.end15.i

if.end10.i.ad9523_setup.exit.thread_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end15.i:                                       ; preds = %if.end10.i
  %refb_r_div.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 10
  %40 = ptrtoint ptr %refb_r_div.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %refb_r_div.i, align 2
  %conv16.i = zext i16 %41 to i32
  %call17.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 131091, i32 noundef %conv16.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end15.i.ad9523_setup.exit.thread_crit_edge, label %if.end21.i

if.end15.i.ad9523_setup.exit.thread_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end21.i:                                       ; preds = %if.end15.i
  %pll1_feedback_div.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 11
  %42 = ptrtoint ptr %pll1_feedback_div.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pll1_feedback_div.i, align 4
  %conv22.i = zext i16 %43 to i32
  %call23.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 131095, i32 noundef %conv22.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.end21.i.ad9523_setup.exit.thread_crit_edge, label %if.end27.i

if.end21.i.ad9523_setup.exit.thread_crit_edge:    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end27.i:                                       ; preds = %if.end21.i
  %pll1_charge_pump_current_nA.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 12
  %44 = ptrtoint ptr %pll1_charge_pump_current_nA.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %pll1_charge_pump_current_nA.i, align 2
  %46 = udiv i16 %45, 500
  %47 = and i16 %46, 127
  %48 = or i16 %47, 768
  %or30.i = zext i16 %48 to i32
  %call32.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 131097, i32 noundef %or30.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.end27.i.ad9523_setup.exit.thread_crit_edge, label %if.end36.i

if.end27.i.ad9523_setup.exit.thread_crit_edge:    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end36.i:                                       ; preds = %if.end27.i
  %refa_diff_rcv_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 1
  %49 = ptrtoint ptr %refa_diff_rcv_en.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %refa_diff_rcv_en.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool37.not.i = icmp eq i8 %50, 0
  %refb_diff_rcv_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 2
  %51 = ptrtoint ptr %refb_diff_rcv_en.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %refb_diff_rcv_en.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool40.not.i = icmp eq i8 %52, 0
  %cond42.i = select i1 %tobool40.not.i, i32 0, i32 16
  %osc_in_diff_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 4
  %53 = ptrtoint ptr %osc_in_diff_en.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %osc_in_diff_en.i, align 1, !range !97
  %55 = zext i8 %54 to i32
  %osc_in_cmos_neg_inp_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 8
  %56 = ptrtoint ptr %osc_in_cmos_neg_inp_en.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %osc_in_cmos_neg_inp_en.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool48.not.i = icmp eq i8 %57, 0
  %cond50.i = select i1 %tobool48.not.i, i32 0, i32 2
  %cond60.i = select i1 %tobool40.not.i, i32 0, i32 64
  %or43.i = select i1 %tobool37.not.i, i32 0, i32 40
  %or47.i = or i32 %cond42.i, %or43.i
  %or51.i = or i32 %or47.i, %55
  %or56.i = or i32 %or51.i, %cond60.i
  %or61.i = or i32 %or56.i, %cond50.i
  %call62.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65562, i32 noundef %or61.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %if.end36.i.ad9523_setup.exit.thread_crit_edge, label %if.end66.i

if.end36.i.ad9523_setup.exit.thread_crit_edge:    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end66.i:                                       ; preds = %if.end36.i
  %zd_in_diff_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 3
  %58 = ptrtoint ptr %zd_in_diff_en.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %zd_in_diff_en.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool67.not.i = icmp eq i8 %59, 0
  %cond69.i = select i1 %tobool67.not.i, i32 0, i32 4
  %zd_in_cmos_neg_inp_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 7
  %60 = ptrtoint ptr %zd_in_cmos_neg_inp_en.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %zd_in_cmos_neg_inp_en.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool70.not.i = icmp eq i8 %61, 0
  %cond72.i = select i1 %tobool70.not.i, i32 0, i32 8
  %or73.i = or i32 %cond72.i, %cond69.i
  %zero_delay_mode_internal_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 13
  %62 = ptrtoint ptr %zero_delay_mode_internal_en.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %zero_delay_mode_internal_en.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool74.not.i = icmp eq i8 %63, 0
  %cond76.i = select i1 %tobool74.not.i, i32 0, i32 32
  %or77.i = or i32 %or73.i, %cond76.i
  %osc_in_feedback_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 14
  %64 = ptrtoint ptr %osc_in_feedback_en.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %osc_in_feedback_en.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool78.not.i = icmp eq i8 %65, 0
  %cond80.i = select i1 %tobool78.not.i, i32 0, i32 16
  %or81.i = or i32 %or77.i, %cond80.i
  %refa_cmos_neg_inp_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 5
  %66 = ptrtoint ptr %refa_cmos_neg_inp_en.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %refa_cmos_neg_inp_en.i, align 4, !range !97
  %68 = zext i8 %67 to i32
  %or85.i = or i32 %or81.i, %68
  %refb_cmos_neg_inp_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 6
  %69 = ptrtoint ptr %refb_cmos_neg_inp_en.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %refb_cmos_neg_inp_en.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool86.not.i = icmp eq i8 %70, 0
  %cond88.i = select i1 %tobool86.not.i, i32 0, i32 2
  %or89.i = or i32 %or85.i, %cond88.i
  %call90.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65563, i32 noundef %or89.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp91.i = icmp slt i32 %call90.i, 0
  br i1 %cmp91.i, label %if.end66.i.ad9523_setup.exit.thread_crit_edge, label %if.end94.i

if.end66.i.ad9523_setup.exit.thread_crit_edge:    ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end94.i:                                       ; preds = %if.end66.i
  %ref_mode.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 16
  %71 = ptrtoint ptr %ref_mode.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ref_mode.i, align 4
  %shl.i = shl i32 %72, 2
  %or95.i = or i32 %shl.i, 128
  %call96.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65564, i32 noundef %or95.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %cmp97.i = icmp slt i32 %call96.i, 0
  br i1 %cmp97.i, label %if.end94.i.ad9523_setup.exit.thread_crit_edge, label %if.end100.i

if.end94.i.ad9523_setup.exit.thread_crit_edge:    ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end100.i:                                      ; preds = %if.end94.i
  %pll1_loop_filter_rzero.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 15
  %73 = ptrtoint ptr %pll1_loop_filter_rzero.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pll1_loop_filter_rzero.i, align 4
  %and101.i = and i32 %74, 15
  %call102.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65565, i32 noundef %and101.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %cmp103.i = icmp slt i32 %call102.i, 0
  br i1 %cmp103.i, label %if.end100.i.ad9523_setup.exit.thread_crit_edge, label %if.end106.i

if.end100.i.ad9523_setup.exit.thread_crit_edge:   ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end106.i:                                      ; preds = %if.end100.i
  %pll2_charge_pump_current_nA.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 17
  %75 = ptrtoint ptr %pll2_charge_pump_current_nA.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pll2_charge_pump_current_nA.i, align 4
  %div107.i = udiv i32 %76, 3500
  %call108.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65776, i32 noundef %div107.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %cmp109.i = icmp slt i32 %call108.i, 0
  br i1 %cmp109.i, label %if.end106.i.ad9523_setup.exit.thread_crit_edge, label %if.end112.i

if.end106.i.ad9523_setup.exit.thread_crit_edge:   ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end112.i:                                      ; preds = %if.end106.i
  %pll2_ndiv_a_cnt.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 18
  %77 = ptrtoint ptr %pll2_ndiv_a_cnt.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %pll2_ndiv_a_cnt.i, align 4
  %79 = shl i8 %78, 6
  %pll2_ndiv_b_cnt.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 19
  %80 = ptrtoint ptr %pll2_ndiv_b_cnt.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %pll2_ndiv_b_cnt.i, align 1
  %82 = and i8 %81, 63
  %or119481.i = or i8 %82, %79
  %or119.i = zext i8 %or119481.i to i32
  %call120.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65777, i32 noundef %or119.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %cmp121.i = icmp slt i32 %call120.i, 0
  br i1 %cmp121.i, label %if.end112.i.ad9523_setup.exit.thread_crit_edge, label %if.end124.i

if.end112.i.ad9523_setup.exit.thread_crit_edge:   ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end124.i:                                      ; preds = %if.end112.i
  %pll2_freq_doubler_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 20
  %83 = ptrtoint ptr %pll2_freq_doubler_en.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pll2_freq_doubler_en.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool125.not.i = icmp eq i8 %84, 0
  %or128.i = select i1 %tobool125.not.i, i32 19, i32 51
  %call129.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65778, i32 noundef %or128.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %cmp130.i = icmp slt i32 %call129.i, 0
  br i1 %cmp130.i, label %if.end124.i.ad9523_setup.exit.thread_crit_edge, label %if.end133.i

if.end124.i.ad9523_setup.exit.thread_crit_edge:   ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end133.i:                                      ; preds = %if.end124.i
  %85 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %31, align 4
  %conv134.i = zext i32 %86 to i64
  %87 = ptrtoint ptr %pll2_freq_doubler_en.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pll2_freq_doubler_en.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool136.not.i = icmp eq i8 %88, 0
  %89 = select i1 %tobool136.not.i, i64 1, i64 2
  %mul.i = mul nuw nsw i64 %89, %conv134.i
  %90 = ptrtoint ptr %pll2_ndiv_b_cnt.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %pll2_ndiv_b_cnt.i, align 1
  %conv141.i = zext i8 %91 to i32
  %mul142.i = shl nuw nsw i32 %conv141.i, 2
  %92 = ptrtoint ptr %pll2_ndiv_a_cnt.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %pll2_ndiv_a_cnt.i, align 4
  %conv144.i = zext i8 %93 to i32
  %add.i = add nuw nsw i32 %mul142.i, %conv144.i
  %94 = zext i32 %add.i to i64
  %mul146.i = mul nuw nsw i64 %mul.i, %94
  %pll2_r2_div.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 21
  %95 = ptrtoint ptr %pll2_r2_div.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %pll2_r2_div.i, align 1
  %conv147.i = zext i8 %96 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul146.i)
  %cmp164.i.i.i = icmp ult i64 %mul146.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !98

if.then168.i.i.i:                                 ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul146.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %conv147.i
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv147.i, i64 %mul146.i) #11, !srcloc !99
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %97, 1
  %extract.t485.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t485.i, %if.else174.i.i.i ]
  %vco_freq.i = getelementptr inbounds %struct.ad9523_state, ptr %29, i32 0, i32 8
  %98 = ptrtoint ptr %vco_freq.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %dividend.addr.0.i.i.off0.i, ptr %vco_freq.i, align 4
  %call150.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65779, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150.i)
  %cmp151.i = icmp slt i32 %call150.i, 0
  br i1 %cmp151.i, label %div_u64.exit.i.ad9523_setup.exit.thread_crit_edge, label %if.end154.i

div_u64.exit.i.ad9523_setup.exit.thread_crit_edge: ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end154.i:                                      ; preds = %div_u64.exit.i
  %pll2_vco_div_m1.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 22
  %99 = ptrtoint ptr %pll2_vco_div_m1.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %pll2_vco_div_m1.i, align 4
  %101 = add i8 %100, 1
  %102 = and i8 %101, 3
  %and156.i = zext i8 %102 to i32
  %pll2_vco_div_m2.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 23
  %103 = ptrtoint ptr %pll2_vco_div_m2.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %pll2_vco_div_m2.i, align 1
  %conv158.i = zext i8 %104 to i32
  %sub159.i = shl nuw nsw i32 %conv158.i, 4
  %and160.i = add nuw nsw i32 %sub159.i, 16
  %shl161.i = and i32 %and160.i, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool165.not.i = icmp eq i8 %100, 0
  %cond166.i = select i1 %tobool165.not.i, i32 4, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool170.not.i = icmp eq i8 %104, 0
  %cond171.i = select i1 %tobool170.not.i, i32 64, i32 0
  %or162.i = or i32 %cond166.i, %and156.i
  %or167.i = or i32 %or162.i, %cond171.i
  %or172.i = or i32 %or167.i, %shl161.i
  %call173.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65780, i32 noundef %or172.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173.i)
  %cmp174.i = icmp slt i32 %call173.i, 0
  br i1 %cmp174.i, label %if.end154.i.ad9523_setup.exit.thread_crit_edge, label %if.end177.i

if.end154.i.ad9523_setup.exit.thread_crit_edge:   ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end177.i:                                      ; preds = %if.end154.i
  %105 = ptrtoint ptr %pll2_vco_div_m1.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %pll2_vco_div_m1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool179.not.i = icmp eq i8 %106, 0
  br i1 %tobool179.not.i, label %if.end177.i.if.end185.i_crit_edge, label %if.then180.i

if.end177.i.if.end185.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.i

if.then180.i:                                     ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %vco_freq.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vco_freq.i, align 4
  %conv183.i = zext i8 %106 to i32
  %div184.i = udiv i32 %108, %conv183.i
  %vco_out_freq.i = getelementptr inbounds %struct.ad9523_state, ptr %29, i32 0, i32 9
  %109 = ptrtoint ptr %vco_out_freq.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %div184.i, ptr %vco_out_freq.i, align 16
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.then180.i, %if.end177.i.if.end185.i_crit_edge
  %110 = ptrtoint ptr %pll2_vco_div_m2.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %pll2_vco_div_m2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool187.not.i = icmp eq i8 %111, 0
  br i1 %tobool187.not.i, label %if.end185.i.if.end195.i_crit_edge, label %if.then188.i

if.end185.i.if.end195.i_crit_edge:                ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195.i

if.then188.i:                                     ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %vco_freq.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %vco_freq.i, align 4
  %conv191.i = zext i8 %111 to i32
  %div192.i = udiv i32 %113, %conv191.i
  %arrayidx194.i = getelementptr %struct.ad9523_state, ptr %29, i32 0, i32 9, i32 1
  %114 = ptrtoint ptr %arrayidx194.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %div192.i, ptr %arrayidx194.i, align 4
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.then188.i, %if.end185.i.if.end195.i_crit_edge
  %115 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %31, align 4
  %arrayidx198.i = getelementptr %struct.ad9523_state, ptr %29, i32 0, i32 9, i32 2
  %117 = ptrtoint ptr %arrayidx198.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx198.i, align 8
  %118 = ptrtoint ptr %pll2_r2_div.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %pll2_r2_div.i, align 1
  %120 = and i8 %119, 31
  %and201.i = zext i8 %120 to i32
  %call203.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 65783, i32 noundef %and201.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203.i)
  %cmp204.i = icmp slt i32 %call203.i, 0
  br i1 %cmp204.i, label %if.end195.i.ad9523_setup.exit.thread_crit_edge, label %if.end207.i

if.end195.i.ad9523_setup.exit.thread_crit_edge:   ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end207.i:                                      ; preds = %if.end195.i
  %cpole1.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 26
  %121 = ptrtoint ptr %cpole1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cpole1.i, align 4
  %and208.i = and i32 %122, 7
  %rzero.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 25
  %123 = ptrtoint ptr %rzero.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rzero.i, align 4
  %and210.i = shl i32 %124, 3
  %shl211.i = and i32 %and210.i, 56
  %or212.i = or i32 %shl211.i, %and208.i
  %rpole2.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 24
  %125 = ptrtoint ptr %rpole2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rpole2.i, align 4
  %and213.i = shl i32 %126, 6
  %shl214.i = and i32 %and213.i, 448
  %or215.i = or i32 %or212.i, %shl214.i
  %rzero_bypass_en.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 27
  %127 = ptrtoint ptr %rzero_bypass_en.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %rzero_bypass_en.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool216.not.i = icmp eq i8 %128, 0
  %cond218.i = select i1 %tobool216.not.i, i32 0, i32 256
  %or219.i = or i32 %or215.i, %cond218.i
  %call220.i = tail call fastcc i32 @ad9523_write(ptr noundef nonnull %call, i32 noundef 131318, i32 noundef %or219.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220.i)
  %cmp221.i = icmp slt i32 %call220.i, 0
  br i1 %cmp221.i, label %if.end207.i.ad9523_setup.exit.thread_crit_edge, label %for.cond.preheader.i

if.end207.i.ad9523_setup.exit.thread_crit_edge:   ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

for.cond.preheader.i:                             ; preds = %if.end207.i
  %num_channels.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 28
  %129 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp225488.i = icmp sgt i32 %130, 0
  br i1 %cmp225488.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %channels.i = getelementptr inbounds %struct.ad9523_platform_data, ptr %31, i32 0, i32 29
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0489.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %131 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %channels.i, align 4
  %arrayidx227.i = getelementptr %struct.ad9523_channel_spec, ptr %132, i32 %i.0489.i
  %133 = ptrtoint ptr %arrayidx227.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx227.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %134)
  %cmp228.i = icmp ult i32 %134, 14
  br i1 %cmp228.i, label %if.then230.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then230.i:                                     ; preds = %for.body.i
  %shl.i.i = shl nuw nsw i32 1, %134
  %135 = ptrtoint ptr %active_mask.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %active_mask.i, align 4
  %or.i.i = or i32 %136, %shl.i.i
  store i32 %or.i.i, ptr %active_mask.i, align 4
  %137 = ptrtoint ptr %arrayidx227.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx227.i, align 4
  %mul233.i = mul i32 %138, 3
  %add234.i = add i32 %mul233.i, 402
  %or235.i = or i32 %add234.i, 196608
  %driver_mode.i = getelementptr %struct.ad9523_channel_spec, ptr %132, i32 %i.0489.i, i32 6
  %139 = ptrtoint ptr %driver_mode.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %driver_mode.i, align 4
  %and236.i = and i32 %140, 15
  %channel_divider.i = getelementptr %struct.ad9523_channel_spec, ptr %132, i32 %i.0489.i, i32 8
  %141 = ptrtoint ptr %channel_divider.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %channel_divider.i, align 2
  %143 = add i16 %142, 1023
  %144 = and i16 %143, 1023
  %and240.i = zext i16 %144 to i32
  %shl241.i = shl nuw nsw i32 %and240.i, 8
  %or242.i = or i32 %shl241.i, %and236.i
  %divider_phase.i = getelementptr %struct.ad9523_channel_spec, ptr %132, i32 %i.0489.i, i32 7
  %145 = ptrtoint ptr %divider_phase.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %divider_phase.i, align 4
  %147 = and i8 %146, 63
  %and244.i = zext i8 %147 to i32
  %shl245.i = shl nuw nsw i32 %and244.i, 18
  %or246.i = or i32 %or242.i, %shl245.i
  %sync_ignore_en.i = getelementptr %struct.ad9523_channel_spec, ptr %132, i32 %i.0489.i, i32 2
  %148 = ptrtoint ptr %sync_ignore_en.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %sync_ignore_en.i, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool247.not.i = icmp eq i8 %149, 0
  %cond249.i = select i1 %tobool247.not.i, i32 0, i32 64
  %or250.i = or i32 %or246.i, %cond249.i
  %divider_output_invert_en.i = getelementptr %struct.ad9523_channel_spec, ptr %132, i32 %i.0489.i, i32 1
  %150 = ptrtoint ptr %divider_output_invert_en.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %divider_output_invert_en.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool251.not.i = icmp eq i8 %151, 0
  %cond253.i = select i1 %tobool251.not.i, i32 0, i32 128
  %or254.i = or i32 %or250.i, %cond253.i
  %low_power_mode_en.i = getelementptr %struct.ad9523_channel_spec, ptr %132, i32 %i.0489.i, i32 3
  %152 = ptrtoint ptr %low_power_mode_en.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %low_power_mode_en.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool255.not.i = icmp eq i8 %153, 0
  %cond257.i = select i1 %tobool255.not.i, i32 0, i32 16
  %or258.i = or i32 %or254.i, %cond257.i
  %output_dis.i = getelementptr %struct.ad9523_channel_spec, ptr %132, i32 %i.0489.i, i32 5
  %154 = ptrtoint ptr %output_dis.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %output_dis.i, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool259.not.i = icmp eq i8 %155, 0
  %cond261.i = select i1 %tobool259.not.i, i32 0, i32 32
  %or262.i = or i32 %or258.i, %cond261.i
  %call263.i = tail call fastcc i32 @ad9523_write(ptr noundef %call, i32 noundef %or235.i, i32 noundef %or262.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263.i)
  %cmp264.i = icmp slt i32 %call263.i, 0
  br i1 %cmp264.i, label %if.then230.i.ad9523_setup.exit.thread_crit_edge, label %if.end267.i

if.then230.i.ad9523_setup.exit.thread_crit_edge:  ; preds = %if.then230.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end267.i:                                      ; preds = %if.then230.i
  %156 = ptrtoint ptr %arrayidx227.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx227.i, align 4
  %use_alt_clock_src.i = getelementptr %struct.ad9523_channel_spec, ptr %132, i32 %i.0489.i, i32 4
  %158 = ptrtoint ptr %use_alt_clock_src.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %use_alt_clock_src.i, align 1, !range !97
  %160 = zext i8 %159 to i32
  %call271.i = tail call fastcc i32 @ad9523_vco_out_map(ptr noundef %call, i32 noundef %157, i32 noundef %160) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271.i)
  %cmp272.i = icmp slt i32 %call271.i, 0
  br i1 %cmp272.i, label %if.end267.i.ad9523_setup.exit.thread_crit_edge, label %if.end275.i

if.end267.i.ad9523_setup.exit.thread_crit_edge:   ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end275.i:                                      ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx276.i = getelementptr %struct.ad9523_state, ptr %29, i32 0, i32 3, i32 %i.0489.i
  %161 = ptrtoint ptr %arrayidx276.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 15, ptr %arrayidx276.i, align 4
  %output.i = getelementptr %struct.ad9523_state, ptr %29, i32 0, i32 3, i32 %i.0489.i, i32 19
  %162 = ptrtoint ptr %output.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %bf.load.i = load i8, ptr %output.i, align 4
  %bf.set283.i = or i8 %bf.load.i, 96
  store i8 %bf.set283.i, ptr %output.i, align 4
  %163 = ptrtoint ptr %arrayidx227.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx227.i, align 4
  %channel.i = getelementptr %struct.ad9523_state, ptr %29, i32 0, i32 3, i32 %i.0489.i, i32 1
  %165 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %channel.i, align 4
  %extended_name.i = getelementptr %struct.ad9523_channel_spec, ptr %132, i32 %i.0489.i, i32 9
  %extend_name.i = getelementptr %struct.ad9523_state, ptr %29, i32 0, i32 3, i32 %i.0489.i, i32 17
  %166 = ptrtoint ptr %extend_name.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %extended_name.i, ptr %extend_name.i, align 4
  %info_mask_separate.i = getelementptr %struct.ad9523_state, ptr %29, i32 0, i32 3, i32 %i.0489.i, i32 6
  %167 = ptrtoint ptr %info_mask_separate.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 24577, ptr %info_mask_separate.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end275.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0489.i, 1
  %168 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %num_channels.i, align 4
  %cmp225.i = icmp slt i32 %inc.i, %169
  br i1 %cmp225.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call292.i = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %active_mask.i, i32 noundef 14, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call292.i)
  %cmp294491.i = icmp slt i32 %call292.i, 14
  br i1 %cmp294491.i, label %for.end.i.for.body296.i_crit_edge, label %for.end.i.for.end308.i_crit_edge

for.end.i.for.end308.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end308.i

for.end.i.for.body296.i_crit_edge:                ; preds = %for.end.i
  br label %for.body296.i

for.body296.i:                                    ; preds = %for.inc305.i.for.body296.i_crit_edge, %for.end.i.for.body296.i_crit_edge
  %i.1492.i = phi i32 [ %call307.i, %for.inc305.i.for.body296.i_crit_edge ], [ %call292.i, %for.end.i.for.body296.i_crit_edge ]
  %mul297.i = mul i32 %i.1492.i, 3
  %add298.i = add i32 %mul297.i, 402
  %or299.i = or i32 %add298.i, 196608
  %call300.i = call fastcc i32 @ad9523_write(ptr noundef %call, i32 noundef %or299.i, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300.i)
  %cmp301.i = icmp slt i32 %call300.i, 0
  br i1 %cmp301.i, label %for.body296.i.ad9523_setup.exit.thread_crit_edge, label %for.inc305.i

for.body296.i.ad9523_setup.exit.thread_crit_edge: ; preds = %for.body296.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

for.inc305.i:                                     ; preds = %for.body296.i
  %add306.i = add nsw i32 %i.1492.i, 1
  %call307.i = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %active_mask.i, i32 noundef 14, i32 noundef %add306.i) #7
  %cmp294.i = icmp slt i32 %call307.i, 14
  br i1 %cmp294.i, label %for.inc305.i.for.body296.i_crit_edge, label %for.inc305.i.for.end308.i_crit_edge

for.inc305.i.for.end308.i_crit_edge:              ; preds = %for.inc305.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end308.i

for.inc305.i.for.body296.i_crit_edge:             ; preds = %for.inc305.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body296.i

for.end308.i:                                     ; preds = %for.inc305.i.for.end308.i_crit_edge, %for.end.i.for.end308.i_crit_edge
  %call309.i = call fastcc i32 @ad9523_write(ptr noundef %call, i32 noundef 66099, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309.i)
  %cmp310.i = icmp slt i32 %call309.i, 0
  br i1 %cmp310.i, label %for.end308.i.ad9523_setup.exit.thread_crit_edge, label %if.end313.i

for.end308.i.ad9523_setup.exit.thread_crit_edge:  ; preds = %for.end308.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

if.end313.i:                                      ; preds = %for.end308.i
  %call314.i = call fastcc i32 @ad9523_write(ptr noundef %call, i32 noundef 197170, i32 noundef 770) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314.i)
  %cmp315.i = icmp slt i32 %call314.i, 0
  br i1 %cmp315.i, label %if.end313.i.ad9523_setup.exit.thread_crit_edge, label %ad9523_setup.exit

if.end313.i.ad9523_setup.exit.thread_crit_edge:   ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad9523_setup.exit.thread

ad9523_setup.exit.thread:                         ; preds = %if.end313.i.ad9523_setup.exit.thread_crit_edge, %for.end308.i.ad9523_setup.exit.thread_crit_edge, %for.body296.i.ad9523_setup.exit.thread_crit_edge, %if.end267.i.ad9523_setup.exit.thread_crit_edge, %if.then230.i.ad9523_setup.exit.thread_crit_edge, %if.end207.i.ad9523_setup.exit.thread_crit_edge, %if.end195.i.ad9523_setup.exit.thread_crit_edge, %if.end154.i.ad9523_setup.exit.thread_crit_edge, %div_u64.exit.i.ad9523_setup.exit.thread_crit_edge, %if.end124.i.ad9523_setup.exit.thread_crit_edge, %if.end112.i.ad9523_setup.exit.thread_crit_edge, %if.end106.i.ad9523_setup.exit.thread_crit_edge, %if.end100.i.ad9523_setup.exit.thread_crit_edge, %if.end94.i.ad9523_setup.exit.thread_crit_edge, %if.end66.i.ad9523_setup.exit.thread_crit_edge, %if.end36.i.ad9523_setup.exit.thread_crit_edge, %if.end27.i.ad9523_setup.exit.thread_crit_edge, %if.end21.i.ad9523_setup.exit.thread_crit_edge, %if.end15.i.ad9523_setup.exit.thread_crit_edge, %if.end10.i.ad9523_setup.exit.thread_crit_edge, %if.end6.i.ad9523_setup.exit.thread_crit_edge, %if.end.i.ad9523_setup.exit.thread_crit_edge, %cond.end.ad9523_setup.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call314.i, %if.end313.i.ad9523_setup.exit.thread_crit_edge ], [ %call309.i, %for.end308.i.ad9523_setup.exit.thread_crit_edge ], [ %call220.i, %if.end207.i.ad9523_setup.exit.thread_crit_edge ], [ %call203.i, %if.end195.i.ad9523_setup.exit.thread_crit_edge ], [ %call173.i, %if.end154.i.ad9523_setup.exit.thread_crit_edge ], [ %call150.i, %div_u64.exit.i.ad9523_setup.exit.thread_crit_edge ], [ %call129.i, %if.end124.i.ad9523_setup.exit.thread_crit_edge ], [ %call120.i, %if.end112.i.ad9523_setup.exit.thread_crit_edge ], [ %call108.i, %if.end106.i.ad9523_setup.exit.thread_crit_edge ], [ %call102.i, %if.end100.i.ad9523_setup.exit.thread_crit_edge ], [ %call96.i, %if.end94.i.ad9523_setup.exit.thread_crit_edge ], [ %call90.i, %if.end66.i.ad9523_setup.exit.thread_crit_edge ], [ %call62.i, %if.end36.i.ad9523_setup.exit.thread_crit_edge ], [ %call32.i, %if.end27.i.ad9523_setup.exit.thread_crit_edge ], [ %call23.i, %if.end21.i.ad9523_setup.exit.thread_crit_edge ], [ %call17.i, %if.end15.i.ad9523_setup.exit.thread_crit_edge ], [ %call11.i, %if.end10.i.ad9523_setup.exit.thread_crit_edge ], [ %call.i.i128, %if.end6.i.ad9523_setup.exit.thread_crit_edge ], [ %call3.i, %if.end.i.ad9523_setup.exit.thread_crit_edge ], [ %call2.i, %cond.end.ad9523_setup.exit.thread_crit_edge ], [ %call300.i, %for.body296.i.ad9523_setup.exit.thread_crit_edge ], [ %call271.i, %if.end267.i.ad9523_setup.exit.thread_crit_edge ], [ %call263.i, %if.then230.i.ad9523_setup.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_mask.i) #7
  br label %cleanup

ad9523_setup.exit:                                ; preds = %if.end313.i
  %call.i482.i = call fastcc i32 @ad9523_write(ptr noundef %call, i32 noundef 66100, i32 noundef 1) #7
  %170 = call i32 @llvm.smin.i32(i32 %call.i482.i, i32 0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_mask.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i482.i)
  %cmp68 = icmp slt i32 %call.i482.i, 0
  br i1 %cmp68, label %ad9523_setup.exit.cleanup_crit_edge, label %if.end71

ad9523_setup.exit.cleanup_crit_edge:              ; preds = %ad9523_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %ad9523_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call73 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %ad9523_setup.exit.cleanup_crit_edge, %ad9523_setup.exit.thread, %if.then52, %if.then38, %if.then30, %devm_add_action_or_reset.exit, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %8, %if.then30 ], [ %10, %if.then38 ], [ %15, %if.then52 ], [ %call73, %if.end71 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call15, %if.then13.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %170, %ad9523_setup.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %ad9523_setup.exit.thread ]
  ret i32 %retval.0
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
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad9523_reg_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9523_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad9523_state, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %mul = mul i32 %3, 3
  %add = add i32 %mul, 402
  %or = or i32 %add, 196608
  %call1 = tail call fastcc i32 @ad9523_read(ptr noundef %indio_dev, i32 noundef %or)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 13, label %sw.bb3
    i32 14, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and = lshr i32 %call1, 5
  %and.lobit = and i32 %and, 1
  %5 = xor i32 %and.lobit, 1
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad9523_state, ptr %1, i32 0, i32 10, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %10 to i32
  %arrayidx5 = getelementptr %struct.ad9523_state, ptr %1, i32 0, i32 9, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5, align 4
  %13 = lshr i32 %call1, 8
  %and6 = and i32 %13, 1023
  %add7 = add nuw nsw i32 %and6, 1
  %div = udiv i32 %12, %add7
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = lshr i32 %call1, 18
  %and10 = and i32 %15, 63
  %mul11 = mul nuw nsw i32 %and10, 3141592
  %16 = lshr i32 %call1, 8
  %and13 = and i32 %16, 1023
  %add14 = add nuw nsw i32 %and13, 1
  %div15 = udiv i32 %mul11, %add14
  %div15.frozen = freeze i32 %div15
  %div16 = udiv i32 %div15.frozen, 1000000
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div16, ptr %val, align 4
  %18 = mul i32 %div16, 1000000
  %rem.decomposed = sub i32 %div15.frozen, %18
  %19 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %rem.decomposed, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb8 ], [ 1, %sw.bb3 ], [ 1, %sw.bb ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9523_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad9523_state, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %mul = mul i32 %3, 3
  %add = add i32 %mul, 402
  %or = or i32 %add, 196608
  %call1 = tail call fastcc i32 @ad9523_read(ptr noundef %indio_dev, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %mask, label %if.end.out_crit_edge [
    i32 0, label %sw.bb
    i32 13, label %sw.bb5
    i32 14, label %sw.bb27
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call1, -33
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %or3 = or i32 %call1, 32
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp6 = icmp slt i32 %val, 1
  br i1 %cmp6, label %sw.bb5.out_crit_edge, label %if.end8

sw.bb5.out_crit_edge:                             ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %sw.bb5
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %6, label %if.end8.if.end13_crit_edge [
    i32 0, label %if.end8.sw.bb.i_crit_edge
    i32 1, label %if.end8.sw.bb.i_crit_edge101
    i32 2, label %if.end8.sw.bb.i_crit_edge102
    i32 3, label %if.end8.sw.bb.i_crit_edge103
    i32 4, label %if.end8.sw.bb1.i_crit_edge
    i32 5, label %if.end8.sw.bb1.i_crit_edge104
    i32 6, label %if.end8.sw.bb1.i_crit_edge105
    i32 7, label %if.end8.sw.bb1.i_crit_edge106
    i32 8, label %if.end8.sw.bb1.i_crit_edge107
    i32 9, label %if.end8.sw.bb1.i_crit_edge108
  ]

if.end8.sw.bb1.i_crit_edge108:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end8.sw.bb1.i_crit_edge107:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end8.sw.bb1.i_crit_edge106:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end8.sw.bb1.i_crit_edge105:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end8.sw.bb1.i_crit_edge104:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end8.sw.bb1.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end8.sw.bb.i_crit_edge103:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge102:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge101:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end8.sw.bb.i_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

sw.bb.i:                                          ; preds = %if.end8.sw.bb.i_crit_edge, %if.end8.sw.bb.i_crit_edge101, %if.end8.sw.bb.i_crit_edge102, %if.end8.sw.bb.i_crit_edge103
  %arrayidx.i = getelementptr %struct.ad9523_state, ptr %8, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %val)
  %cmp.i = icmp eq i32 %11, %val
  br label %ad9523_set_clock_provider.exit

sw.bb1.i:                                         ; preds = %if.end8.sw.bb1.i_crit_edge, %if.end8.sw.bb1.i_crit_edge104, %if.end8.sw.bb1.i_crit_edge105, %if.end8.sw.bb1.i_crit_edge106, %if.end8.sw.bb1.i_crit_edge107, %if.end8.sw.bb1.i_crit_edge108
  %vco_out_freq2.i = getelementptr inbounds %struct.ad9523_state, ptr %8, i32 0, i32 9
  %12 = ptrtoint ptr %vco_out_freq2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vco_out_freq2.i, align 16
  %arrayidx5.i = getelementptr %struct.ad9523_state, ptr %8, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i, align 4
  %16 = urem i32 %13, %val
  %17 = urem i32 %15, %val
  %18 = add nuw i32 %16, %val
  %sub.i = sub i32 %13, %18
  %19 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #7
  %20 = add nuw i32 %17, %val
  %sub11.i = sub i32 %15, %20
  %21 = tail call i32 @llvm.abs.i32(i32 %sub11.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp19.i = icmp sgt i32 %19, %21
  br label %ad9523_set_clock_provider.exit

ad9523_set_clock_provider.exit:                   ; preds = %sw.bb1.i, %sw.bb.i
  %use_alt_clk_src.0.in.i = phi i1 [ %cmp19.i, %sw.bb1.i ], [ %cmp.i, %sw.bb.i ]
  %conv.i = zext i1 %use_alt_clk_src.0.in.i to i32
  %call21.i = tail call fastcc i32 @ad9523_vco_out_map(ptr noundef %indio_dev, i32 noundef %6, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp11 = icmp slt i32 %call21.i, 0
  br i1 %cmp11, label %ad9523_set_clock_provider.exit.out_crit_edge, label %ad9523_set_clock_provider.exit.if.end13_crit_edge

ad9523_set_clock_provider.exit.if.end13_crit_edge: ; preds = %ad9523_set_clock_provider.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

ad9523_set_clock_provider.exit.out_crit_edge:     ; preds = %ad9523_set_clock_provider.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %ad9523_set_clock_provider.exit.if.end13_crit_edge, %if.end8.if.end13_crit_edge
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad9523_state, ptr %1, i32 0, i32 10, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %25 to i32
  %arrayidx15 = getelementptr %struct.ad9523_state, ptr %1, i32 0, i32 9, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx15, align 4
  %div = udiv i32 %27, %val
  %28 = tail call i32 @llvm.smax.i32(i32 %div, i32 1)
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 1024)
  %and24 = and i32 %call1, -261889
  %sub = shl nuw nsw i32 %29, 8
  %and25 = add nuw nsw i32 %sub, 261888
  %shl = and i32 %and25, 261888
  %or26 = or i32 %shl, %and24
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mul28 = mul i32 %val, 1000000
  %rem = srem i32 %val2, 1000000
  %add29 = add i32 %rem, %mul28
  %30 = lshr i32 %call1, 8
  %and30 = and i32 %30, 1023
  %add31 = add nuw nsw i32 %and30, 1
  %mul32 = mul i32 %add31, %add29
  call void @__sanitizer_cov_trace_const_cmp4(i32 3141591, i32 %mul32)
  %cmp35 = icmp sgt i32 %mul32, 3141591
  %div33 = sdiv i32 %mul32, 3141592
  %31 = tail call i32 @llvm.smin.i32(i32 %div33, i32 63)
  %and46 = and i32 %call1, -16515073
  %.op = shl nsw i32 %31, 18
  %.op.op = and i32 %.op, 16515072
  %shl48 = select i1 %cmp35, i32 %.op.op, i32 0
  %or49 = or i32 %shl48, %and46
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb27, %if.end13, %if.else, %if.then2
  %reg.0 = phi i32 [ %or49, %sw.bb27 ], [ %or26, %if.end13 ], [ %and, %if.then2 ], [ %or3, %if.else ]
  %32 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel, align 4
  %mul51 = mul i32 %33, 3
  %add52 = add i32 %mul51, 402
  %or53 = or i32 %add52, 196608
  %call54 = tail call fastcc i32 @ad9523_write(ptr noundef %indio_dev, i32 noundef %or53, i32 noundef %reg.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %sw.epilog.out_crit_edge, label %if.end57

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end57:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc i32 @ad9523_write(ptr noundef %indio_dev, i32 noundef 66100, i32 noundef 1) #7
  br label %out

out:                                              ; preds = %if.end57, %sw.epilog.out_crit_edge, %ad9523_set_clock_provider.exit.out_crit_edge, %sw.bb5.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %call54, %sw.epilog.out_crit_edge ], [ %call54, %if.end57 ], [ %call21.i, %ad9523_set_clock_provider.exit.out_crit_edge ], [ -22, %sw.bb5.out_crit_edge ], [ -22, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9523_reg_access(ptr noundef %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad9523_state, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %cmp = icmp eq ptr %readval, null
  %or = or i32 %reg, 65536
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @ad9523_write(ptr noundef %indio_dev, i32 noundef %or, i32 noundef %writeval)
  %call.i = tail call fastcc i32 @ad9523_write(ptr noundef %indio_dev, i32 noundef 66100, i32 noundef 1) #7
  br label %out_unlock

if.else:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @ad9523_read(ptr noundef %indio_dev, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.else.out_unlock_crit_edge, label %if.end

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call4, ptr %readval, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %if.else.out_unlock_crit_edge, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.else.out_unlock_crit_edge ], [ 0, %if.end ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9523_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %state, align 1, !annotation !100
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ad9523_state, ptr %1, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %address, align 8
  %conv = trunc i64 %6 to i32
  %7 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %conv, label %if.end4.sw.epilog.thread_crit_edge [
    i32 8, label %sw.bb
    i32 9, label %sw.bb6
  ]

if.end4.sw.epilog.thread_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %if.end4
  %call.i21 = call fastcc i32 @ad9523_read(ptr noundef %add.ptr.i, i32 noundef 197170) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.i = icmp slt i32 %call.i21, 0
  br i1 %cmp.i, label %sw.bb.sw.epilog.thread_crit_edge, label %if.end.i

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end.i:                                         ; preds = %sw.bb
  %or.i = or i32 %call.i21, 65536
  %call1.i = call fastcc i32 @ad9523_write(ptr noundef %add.ptr.i, i32 noundef 197170, i32 noundef %or.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.sw.epilog.thread_crit_edge, label %if.end4.i

if.end.i.sw.epilog.thread_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i = call fastcc i32 @ad9523_write(ptr noundef %add.ptr.i, i32 noundef 66100, i32 noundef 1) #7
  %and.i = and i32 %call.i21, -65537
  %call6.i = call fastcc i32 @ad9523_write(ptr noundef %add.ptr.i, i32 noundef 197170, i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end4.i.sw.epilog.thread_crit_edge, label %if.end9.i

if.end4.i.sw.epilog.thread_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i25.i = call fastcc i32 @ad9523_write(ptr noundef %add.ptr.i, i32 noundef 66100, i32 noundef 1) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4
  %call.i22 = call fastcc i32 @ad9523_write(ptr noundef %add.ptr.i, i32 noundef 68354, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp.i23 = icmp slt i32 %call.i22, 0
  br i1 %cmp.i23, label %sw.bb6.sw.epilog.thread_crit_edge, label %if.end.i26

sw.bb6.sw.epilog.thread_crit_edge:                ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end.i26:                                       ; preds = %sw.bb6
  %call1.i24 = call fastcc i32 @ad9523_write(ptr noundef %add.ptr.i, i32 noundef 68355, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %cmp2.i25 = icmp slt i32 %call1.i24, 0
  br i1 %cmp2.i25, label %if.end.i26.sw.epilog.thread_crit_edge, label %do.body.i

if.end.i26.sw.epilog.thread_crit_edge:            ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

do.body.i:                                        ; preds = %if.end.i26
  call void @msleep(i32 noundef 20) #7
  %call5.i = call fastcc i32 @ad9523_read(ptr noundef %add.ptr.i, i32 noundef 68352) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.body.i.sw.epilog.thread_crit_edge, label %do.cond.i

do.body.i.sw.epilog.thread_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

do.cond.i:                                        ; preds = %do.body.i
  %and.i27 = and i32 %call5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.not.i = icmp eq i32 %and.i27, 0
  br i1 %tobool.not.i, label %do.cond.i.do.end.i_crit_edge, label %do.body.i.1

do.cond.i.do.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.body.i.1:                                      ; preds = %do.cond.i
  call void @msleep(i32 noundef 20) #7
  %call5.i.1 = call fastcc i32 @ad9523_read(ptr noundef %add.ptr.i, i32 noundef 68352) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.1)
  %cmp6.i.1 = icmp slt i32 %call5.i.1, 0
  br i1 %cmp6.i.1, label %do.body.i.1.sw.epilog.thread_crit_edge, label %do.cond.i.1

do.body.i.1.sw.epilog.thread_crit_edge:           ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

do.cond.i.1:                                      ; preds = %do.body.i.1
  %and.i27.1 = and i32 %call5.i.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.1)
  %tobool.not.i.1 = icmp eq i32 %and.i27.1, 0
  br i1 %tobool.not.i.1, label %do.cond.i.1.do.end.i_crit_edge, label %do.body.i.2

do.cond.i.1.do.end.i_crit_edge:                   ; preds = %do.cond.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.cond.i.1
  call void @msleep(i32 noundef 20) #7
  %call5.i.2 = call fastcc i32 @ad9523_read(ptr noundef %add.ptr.i, i32 noundef 68352) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.2)
  %cmp6.i.2 = icmp slt i32 %call5.i.2, 0
  br i1 %cmp6.i.2, label %do.body.i.2.sw.epilog.thread_crit_edge, label %do.cond.i.2

do.body.i.2.sw.epilog.thread_crit_edge:           ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

do.cond.i.2:                                      ; preds = %do.body.i.2
  %and.i27.2 = and i32 %call5.i.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.2)
  %tobool.not.i.2 = icmp eq i32 %and.i27.2, 0
  br i1 %tobool.not.i.2, label %do.cond.i.2.do.end.i_crit_edge, label %do.body.i.3

do.cond.i.2.do.end.i_crit_edge:                   ; preds = %do.cond.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.cond.i.2
  call void @msleep(i32 noundef 20) #7
  %call5.i.3 = call fastcc i32 @ad9523_read(ptr noundef %add.ptr.i, i32 noundef 68352) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.3)
  %cmp6.i.3 = icmp slt i32 %call5.i.3, 0
  br i1 %cmp6.i.3, label %do.body.i.3.sw.epilog.thread_crit_edge, label %do.cond.i.3

do.body.i.3.sw.epilog.thread_crit_edge:           ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

do.cond.i.3:                                      ; preds = %do.body.i.3
  %and.i27.3 = and i32 %call5.i.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.3)
  %tobool.not.i.3 = icmp eq i32 %and.i27.3, 0
  br i1 %tobool.not.i.3, label %do.cond.i.3.do.end.i_crit_edge, label %do.body.i.4

do.cond.i.3.do.end.i_crit_edge:                   ; preds = %do.cond.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.body.i.4:                                      ; preds = %do.cond.i.3
  call void @msleep(i32 noundef 20) #7
  %call5.i.4 = call fastcc i32 @ad9523_read(ptr noundef %add.ptr.i, i32 noundef 68352) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.4)
  %cmp6.i.4 = icmp slt i32 %call5.i.4, 0
  br i1 %cmp6.i.4, label %do.body.i.4.sw.epilog.thread_crit_edge, label %do.body.i.4.do.end.i_crit_edge

do.body.i.4.do.end.i_crit_edge:                   ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.body.i.4.sw.epilog.thread_crit_edge:           ; preds = %do.body.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

do.end.i:                                         ; preds = %do.body.i.4.do.end.i_crit_edge, %do.cond.i.3.do.end.i_crit_edge, %do.cond.i.2.do.end.i_crit_edge, %do.cond.i.1.do.end.i_crit_edge, %do.cond.i.do.end.i_crit_edge
  %call10.i = call fastcc i32 @ad9523_write(ptr noundef %add.ptr.i, i32 noundef 68354, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end.i.sw.epilog.thread_crit_edge, label %if.end13.i

do.end.i.sw.epilog.thread_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end13.i:                                       ; preds = %do.end.i
  %call14.i = call fastcc i32 @ad9523_read(ptr noundef %add.ptr.i, i32 noundef 68353) #7
  %8 = and i32 %call14.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %.not.i = icmp eq i32 %8, 1
  br i1 %.not.i, label %do.end23.i, label %if.end13.i.sw.epilog_crit_edge

if.end13.i.sw.epilog_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end23.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %do.end23.i, %do.end.i.sw.epilog.thread_crit_edge, %do.body.i.4.sw.epilog.thread_crit_edge, %do.body.i.3.sw.epilog.thread_crit_edge, %do.body.i.2.sw.epilog.thread_crit_edge, %do.body.i.1.sw.epilog.thread_crit_edge, %do.body.i.sw.epilog.thread_crit_edge, %if.end.i26.sw.epilog.thread_crit_edge, %sw.bb6.sw.epilog.thread_crit_edge, %if.end4.i.sw.epilog.thread_crit_edge, %if.end.i.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %if.end4.sw.epilog.thread_crit_edge
  %ret.0.ph = phi i32 [ -5, %do.end23.i ], [ %call10.i, %do.end.i.sw.epilog.thread_crit_edge ], [ %call1.i24, %if.end.i26.sw.epilog.thread_crit_edge ], [ %call.i22, %sw.bb6.sw.epilog.thread_crit_edge ], [ %call6.i, %if.end4.i.sw.epilog.thread_crit_edge ], [ %call1.i, %if.end.i.sw.epilog.thread_crit_edge ], [ %call.i21, %sw.bb.sw.epilog.thread_crit_edge ], [ -19, %if.end4.sw.epilog.thread_crit_edge ], [ %call5.i, %do.body.i.sw.epilog.thread_crit_edge ], [ %call5.i.1, %do.body.i.1.sw.epilog.thread_crit_edge ], [ %call5.i.2, %do.body.i.2.sw.epilog.thread_crit_edge ], [ %call5.i.3, %do.body.i.3.sw.epilog.thread_crit_edge ], [ %call5.i.4, %do.body.i.4.sw.epilog.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end13.i.sw.epilog_crit_edge, %if.end9.i
  %ret.0 = phi i32 [ %call.i25.i, %if.end9.i ], [ %call14.i, %if.end13.i.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool9.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool9.not, i32 %len, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.epilog.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %len, %if.end.cleanup_crit_edge ], [ %ret.0.ph, %sw.epilog.thread ], [ %spec.select, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad9523_read(ptr noundef %indio_dev, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #7
  %2 = getelementptr inbounds i8, ptr %t, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %data = getelementptr inbounds %struct.ad9523_state, ptr %1, i32 0, i32 13
  %arrayidx1 = getelementptr [4 x i8], ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx1, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %len, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 1
  %arrayidx4 = getelementptr %struct.ad9523_state, ptr %1, i32 0, i32 13, i32 1
  %shr = lshr i32 %addr, 16
  %sub = sub nsw i32 4, %shr
  %arrayidx5 = getelementptr [4 x i8], ptr %arrayidx4, i32 0, i32 %sub
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx5, ptr %rx_buf, align 4
  %len6 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %7 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr, ptr %len6, align 4
  %sub13 = shl nuw nsw i32 %shr, 13
  %shl = add nsw i32 %sub13, -8192
  %and = and i32 %addr, 4095
  %or = or i32 %shl, %and
  %or14 = or i32 %or, 32768
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or14, ptr %data, align 128
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i, ptr noundef %22, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.1.i.i, label %if.end.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge

spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_sync_transfer.exit

if.end.i.i.i.1.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.1.i.i, ptr %prev.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %transfer_list.i.1.i.i, align 4
  %prev3.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i.1.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.1.i.i, ptr %22, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i) #10
  br label %if.end

if.else:                                          ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx4, align 4
  %.neg = mul nsw i32 %shr, -8
  %mul = add nsw i32 %.neg, 24
  %shr22 = lshr i32 16777215, %mul
  %and23 = and i32 %28, %shr22
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %and23, %if.else ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad9523_write(ptr noundef %indio_dev, i32 noundef %addr, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #7
  %2 = getelementptr inbounds i8, ptr %t, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %data = getelementptr inbounds %struct.ad9523_state, ptr %1, i32 0, i32 13
  %arrayidx1 = getelementptr [4 x i8], ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx1, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %len, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1
  %arrayidx4 = getelementptr %struct.ad9523_state, ptr %1, i32 0, i32 13, i32 1
  %shr = lshr i32 %addr, 16
  %sub = sub nsw i32 4, %shr
  %arrayidx5 = getelementptr [4 x i8], ptr %arrayidx4, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx5, ptr %arrayinit.element, align 4
  %len6 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %7 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr, ptr %len6, align 4
  %sub13 = shl nuw nsw i32 %shr, 13
  %shl = add nsw i32 %sub13, -8192
  %and = and i32 %addr, 4095
  %or14 = or i32 %shl, %and
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or14, ptr %data, align 128
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %val, ptr %arrayidx4, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #7
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i, ptr noundef %23, ptr noundef nonnull %msg.i) #7
  br i1 %call.i.i.i.1.i.i, label %if.end.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge

spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_sync_transfer.exit

if.end.i.i.i.1.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.1.i.i, ptr %prev.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %transfer_list.i.1.i.i, align 4
  %prev3.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i.1.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.1.i.i, ptr %23, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %spi_sync_transfer.exit.if.end_crit_edge

spi_sync_transfer.exit.if.end_crit_edge:          ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %spi_sync_transfer.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad9523_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -8
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad9523_state, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call2 = tail call fastcc i32 @ad9523_read(ptr noundef %add.ptr.i, i32 noundef 66092)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %address, align 8
  %conv = trunc i64 %3 to i32
  %4 = lshr i32 %call2, %conv
  %5 = and i32 %4, 1
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then ], [ %call2, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad9523_vco_out_map(ptr noundef %indio_dev, i32 noundef %ch, i32 noundef %out) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %ch to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %ch, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge66
    i32 2, label %entry.sw.bb_crit_edge67
    i32 3, label %entry.sw.bb_crit_edge68
    i32 4, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.bb5_crit_edge69
    i32 6, label %entry.sw.bb5_crit_edge70
    i32 7, label %entry.sw.bb19_crit_edge
    i32 8, label %entry.sw.bb19_crit_edge71
    i32 9, label %entry.sw.bb19_crit_edge72
  ]

entry.sw.bb19_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

entry.sw.bb19_crit_edge71:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

entry.sw.bb19_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb19

entry.sw.bb5_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb_crit_edge68:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge67:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge66:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge66, %entry.sw.bb_crit_edge67, %entry.sw.bb_crit_edge68
  %call1 = tail call fastcc i32 @ad9523_read(ptr noundef %indio_dev, i32 noundef 65979)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 1, %ch
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %tobool.not = icmp eq i32 %out, 0
  %or = or i32 %call1, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %call1, %neg
  %out.addr.0 = select i1 %tobool.not, i32 0, i32 2
  %ret.0 = select i1 %tobool.not, i32 %and, i32 %or
  %call4 = tail call fastcc i32 @ad9523_write(ptr noundef %indio_dev, i32 noundef 65979, i32 noundef %ret.0)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge69, %entry.sw.bb5_crit_edge70
  %call6 = tail call fastcc i32 @ad9523_read(ptr noundef %indio_dev, i32 noundef 65978)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %sw.bb5.sw.epilog_crit_edge, label %if.end9

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end9:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %shl10 = shl nuw nsw i32 2, %ch
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %tobool11.not = icmp eq i32 %out, 0
  %or13 = or i32 %call6, %shl10
  %neg15 = xor i32 %shl10, -1
  %and16 = and i32 %call6, %neg15
  %ret.1 = select i1 %tobool11.not, i32 %and16, i32 %or13
  %call18 = tail call fastcc i32 @ad9523_write(ptr noundef %indio_dev, i32 noundef 65978, i32 noundef %ret.1)
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry.sw.bb19_crit_edge, %entry.sw.bb19_crit_edge71, %entry.sw.bb19_crit_edge72
  %call20 = tail call fastcc i32 @ad9523_read(ptr noundef %indio_dev, i32 noundef 65979)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %sw.bb19.sw.epilog_crit_edge, label %if.end23

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end23:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %sub24 = add nsw i32 %ch, -7
  %shl25 = shl nuw nsw i32 16, %sub24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %tobool26.not = icmp eq i32 %out, 0
  %or28 = or i32 %call20, %shl25
  %neg30 = xor i32 %shl25, -1
  %and31 = and i32 %call20, %neg30
  %ret.2 = select i1 %tobool26.not, i32 %and31, i32 %or28
  %call33 = tail call fastcc i32 @ad9523_write(ptr noundef %indio_dev, i32 noundef 65979, i32 noundef %ret.2)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end23, %sw.bb19.sw.epilog_crit_edge, %if.end9, %sw.bb5.sw.epilog_crit_edge, %if.end, %sw.bb.sw.epilog_crit_edge
  %out.addr.1 = phi i32 [ %out, %sw.bb19.sw.epilog_crit_edge ], [ %out, %if.end23 ], [ %out, %sw.bb5.sw.epilog_crit_edge ], [ %out, %if.end9 ], [ %out, %sw.bb.sw.epilog_crit_edge ], [ %out.addr.0, %if.end ]
  %ret.3 = phi i32 [ %call20, %sw.bb19.sw.epilog_crit_edge ], [ %call33, %if.end23 ], [ %call6, %sw.bb5.sw.epilog_crit_edge ], [ %call18, %if.end9 ], [ %call1, %sw.bb.sw.epilog_crit_edge ], [ %call4, %if.end ]
  %conv = trunc i32 %out.addr.1 to i8
  %arrayidx = getelementptr %struct.ad9523_state, ptr %1, i32 0, i32 10, i32 %ch
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !64, !65, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_ad9523__298_1062_ad9523_driver_init6, !1, !"__initcall__kmod_ad9523__298_1062_ad9523_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/frequency/ad9523.c", i32 1062, i32 1}
!2 = !{ptr @__exitcall_ad9523_driver_exit, !1, !"__exitcall_ad9523_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author299, !4, !"__UNIQUE_ID_author299", i1 false, i1 false}
!4 = !{!"../drivers/iio/frequency/ad9523.c", i32 1064, i32 1}
!5 = !{ptr @__UNIQUE_ID_description300, !6, !"__UNIQUE_ID_description300", i1 false, i1 false}
!6 = !{!"../drivers/iio/frequency/ad9523.c", i32 1065, i32 1}
!7 = !{ptr @__UNIQUE_ID_file301, !8, !"__UNIQUE_ID_file301", i1 false, i1 false}
!8 = !{!"../drivers/iio/frequency/ad9523.c", i32 1066, i32 1}
!9 = !{ptr @__UNIQUE_ID_license302, !8, !"__UNIQUE_ID_license302", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/frequency/ad9523.c", i32 1057, i32 11}
!12 = !{ptr @ad9523_driver, !13, !"ad9523_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/frequency/ad9523.c", i32 1055, i32 26}
!14 = !{ptr @ad9523_id, !15, !"ad9523_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/frequency/ad9523.c", i32 1049, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/frequency/ad9523.c", i32 987, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ad9523_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ad9523_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ad9523_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/frequency/ad9523.c", i32 997, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/frequency/ad9523.c", i32 999, i32 42}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/frequency/ad9523.c", i32 1011, i32 56}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/frequency/ad9523.c", i32 1016, i32 54}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/frequency/ad9523.c", i32 1026, i32 53}
!35 = !{ptr @ad9523_info, !36, !"ad9523_info", i1 false, i1 false}
!36 = !{!"../drivers/iio/frequency/ad9523.c", i32 751, i32 30}
!37 = !{ptr @ad9523_attribute_group, !38, !"ad9523_attribute_group", i1 false, i1 false}
!38 = !{!"../drivers/iio/frequency/ad9523.c", i32 626, i32 37}
!39 = !{ptr @ad9523_attributes, !40, !"ad9523_attributes", i1 false, i1 false}
!40 = !{!"../drivers/iio/frequency/ad9523.c", i32 612, i32 26}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/frequency/ad9523.c", i32 602, i32 8}
!43 = !{ptr @iio_dev_attr_sync_dividers, !42, !"iio_dev_attr_sync_dividers", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/frequency/ad9523.c", i32 325, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ad9523_read._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ad9523_read._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/frequency/ad9523.c", i32 356, i32 3}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ad9523_write._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ad9523_write._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/frequency/ad9523.c", i32 477, i32 3}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ad9523_store_eeprom._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ad9523_store_eeprom._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/frequency/ad9523.c", i32 607, i32 8}
!61 = !{ptr @iio_dev_attr_store_eeprom, !60, !"iio_dev_attr_store_eeprom", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/frequency/ad9523.c", i32 592, i32 8}
!64 = !{ptr @iio_dev_attr_pll2_feedback_clk_present, !63, !"iio_dev_attr_pll2_feedback_clk_present", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/frequency/ad9523.c", i32 554, i32 22}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/frequency/ad9523.c", i32 597, i32 8}
!69 = !{ptr @iio_dev_attr_pll2_reference_clk_present, !68, !"iio_dev_attr_pll2_reference_clk_present", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/frequency/ad9523.c", i32 572, i32 8}
!72 = !{ptr @iio_dev_attr_pll1_reference_clk_a_present, !71, !"iio_dev_attr_pll1_reference_clk_a_present", i1 false, i1 false}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/frequency/ad9523.c", i32 577, i32 8}
!75 = !{ptr @iio_dev_attr_pll1_reference_clk_b_present, !74, !"iio_dev_attr_pll1_reference_clk_b_present", i1 false, i1 false}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/frequency/ad9523.c", i32 582, i32 8}
!78 = !{ptr @iio_dev_attr_pll1_reference_clk_test_present, !77, !"iio_dev_attr_pll1_reference_clk_test_present", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/frequency/ad9523.c", i32 587, i32 8}
!81 = !{ptr @iio_dev_attr_vcxo_clk_present, !80, !"iio_dev_attr_vcxo_clk_present", i1 false, i1 false}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/frequency/ad9523.c", i32 562, i32 8}
!84 = !{ptr @iio_dev_attr_pll1_locked, !83, !"iio_dev_attr_pll1_locked", i1 false, i1 false}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/frequency/ad9523.c", i32 567, i32 8}
!87 = !{ptr @iio_dev_attr_pll2_locked, !86, !"iio_dev_attr_pll2_locked", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i8 0, i8 2}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2148330436, i64 2148330716, i64 2148331050, i64 2148331384}
!100 = !{!"auto-init"}
