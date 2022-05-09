; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7768-1.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7768-1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.ad7768_clk_configuration = type { i32, i32, i32, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ad7768_state = type { ptr, ptr, %struct.mutex, ptr, i32, i32, %struct.completion, ptr, ptr, [1 x ptr], [76 x i8], %union.anon.85, [112 x i8] }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { i32, i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ad7768_1__315_688_ad7768_driver_init6 = internal global ptr @ad7768_driver_init, section ".initcall6.init", align 4
@ad7768_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7768_id_table, ptr @ad7768_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7768_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7768_driver_exit = internal global ptr @ad7768_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author316 = internal constant [53 x i8] c"ad7768_1.author=Stefan Popa <stefan.popa@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description317 = internal constant [56 x i8] c"ad7768_1.description=Analog Devices AD7768-1 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [39 x i8] c"ad7768_1.file=drivers/iio/adc/ad7768-1\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [24 x i8] c"ad7768_1.license=GPL v2\00", section ".modinfo", align 1
@ad7768_id_table = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7768-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ad7768-1\00", [23 x i8] zeroinitializer }, align 32
@ad7768_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7768-1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad7768_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable specified vref supply\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7768_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iio/adc/ad7768-1.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7768_probe._entry_ptr = internal global ptr @ad7768_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@ad7768_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad7768_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 24, i8 32, i8 8, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [40 x i8] zeroinitializer }, align 32
@ad7768_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7768_group, ptr @ad7768_read_raw, ptr null, ptr null, ptr @ad7768_write_raw, ptr @ad7768_read_label, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7768_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7768_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 627, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AD7768 setup failed\0A\00", [43 x i8] zeroinitializer }, align 32
@ad7768_probe._entry_ptr.11 = internal global ptr @ad7768_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@ad7768_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr null, ptr null, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@ad7768_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @ad7768_buffer_postenable, ptr @ad7768_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7768_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7768_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7768_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7768_sampling_freq_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@ad7768_clk_config = internal constant { [11 x %struct.ad7768_clk_configuration], [48 x i8] } { [11 x %struct.ad7768_clk_configuration] [%struct.ad7768_clk_configuration { i32 3, i32 9, i32 16, i32 3 }, %struct.ad7768_clk_configuration { i32 3, i32 10, i32 32, i32 3 }, %struct.ad7768_clk_configuration { i32 3, i32 0, i32 64, i32 3 }, %struct.ad7768_clk_configuration { i32 3, i32 1, i32 128, i32 3 }, %struct.ad7768_clk_configuration { i32 3, i32 2, i32 256, i32 3 }, %struct.ad7768_clk_configuration { i32 2, i32 2, i32 512, i32 2 }, %struct.ad7768_clk_configuration { i32 2, i32 3, i32 1024, i32 2 }, %struct.ad7768_clk_configuration { i32 2, i32 4, i32 2048, i32 2 }, %struct.ad7768_clk_configuration { i32 2, i32 5, i32 4096, i32 2 }, %struct.ad7768_clk_configuration { i32 1, i32 5, i32 8192, i32 2 }, %struct.ad7768_clk_configuration { i32 0, i32 5, i32 16384, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adi,sync-in\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"ad7768_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 680, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"ad7768_id_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 668, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 682, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"ad7768_of_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 674, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 589, i32 43 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 595, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 603, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 617, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"ad7768_channels\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 135, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"ad7768_info\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 432, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 627, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 631, i32 47 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"ad7768_trigger_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 531, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"ad7768_buffer_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 526, i32 42 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"ad7768_group\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 428, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"ad7768_attributes\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 423, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 357, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"ad7768_clk_config\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 121, i32 46 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 349, i32 48 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 420, i32 24 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 458, i32 51 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 561, i32 39 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [30 x i8] c"../drivers/iio/adc/ad7768-1.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 567, i32 42 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__exitcall_ad7768_driver_exit, ptr @__initcall__kmod_ad7768_1__315_688_ad7768_driver_init6, ptr @ad7768_driver_exit, ptr @ad7768_probe._entry, ptr @ad7768_probe._entry.9, ptr @ad7768_probe._entry_ptr, ptr @ad7768_probe._entry_ptr.11, ptr @ad7768_driver, ptr @ad7768_id_table, ptr @.str, ptr @ad7768_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ad7768_probe.__key, ptr @.str.8, ptr @ad7768_channels, ptr @ad7768_info, ptr @.str.10, ptr @.str.12, ptr @ad7768_trigger_ops, ptr @ad7768_buffer_ops, ptr @ad7768_group, ptr @ad7768_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @.str.13, ptr @ad7768_clk_config, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7768_clk_config to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7768_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7768_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7768_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7768_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7768_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #8
  %vref = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %vref, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call i32 @regulator_enable(ptr noundef %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7768_regulator_disable, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end21, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vref, align 4
  %call.i169 = tail call i32 @regulator_disable(ptr noundef %6) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %call23 = tail call ptr @devm_clk_get(ptr noundef %spi, ptr noundef nonnull @.str.7) #8
  %mclk = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call23, ptr %mclk, align 4
  %cmp.i159 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %call.i160 = tail call i32 @clk_prepare(ptr noundef %call23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool.not.i161 = icmp eq i32 %call.i160, 0
  br i1 %tobool.not.i161, label %if.end.i, label %if.end29.clk_prepare_enable.exit_crit_edge

if.end29.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end29
  %call1.i = tail call i32 @clk_enable(ptr noundef %call23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end33_crit_edge, label %if.then3.i

if.end.i.if.end33_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call23) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end29.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i160, %if.end29.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end33_crit_edge

clk_prepare_enable.exit.if.end33_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %clk_prepare_enable.exit.if.end33_crit_edge, %if.end.i.if.end33_crit_edge
  %call.i162 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7768_clk_disable, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool.not.i163 = icmp eq i32 %call.i162, 0
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mclk, align 4
  br i1 %tobool.not.i163, label %if.end38, label %devm_add_action_or_reset.exit166

devm_add_action_or_reset.exit166:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %call40 = tail call i32 @clk_get_rate(ptr noundef %10) #8
  %mclk_freq = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call40, ptr %mclk_freq, align 8
  %lock = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ad7768_probe.__key) #8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ad7768_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %num_channels, align 4
  %call44 = tail call ptr @spi_get_device_id(ptr noundef %spi) #8
  %name45 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %14 = ptrtoint ptr %name45 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call44, ptr %name45, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ad7768_info, ptr %info, align 8
  %16 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %call, align 8
  %call46 = tail call fastcc i32 @ad7768_setup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end51, label %if.end53

do.end51:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end53:                                         ; preds = %if.end38
  %17 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name45, align 8
  %call56 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #8
  %call57 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %spi, ptr noundef nonnull @.str.12, ptr noundef %18, i32 noundef %call56) #8
  %trig = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call57, ptr %trig, align 8
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %if.end53.cleanup_crit_edge, label %if.end61

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end61:                                         ; preds = %if.end53
  %20 = ptrtoint ptr %call57 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ad7768_trigger_ops, ptr %call57, align 8
  %21 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trig, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %22, i32 0, i32 4, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call, ptr %driver_data.i.i, align 4
  %24 = load ptr, ptr %trig, align 8
  %call66 = tail call i32 @__devm_iio_trigger_register(ptr noundef %spi, ptr noundef %24, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69:                                         ; preds = %if.end61
  %25 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trig, align 8
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %26, i32 0, i32 4
  %call.i167 = tail call ptr @get_device(ptr noundef %dev.i) #8
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %28) #8
  %trig72 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 10
  %29 = ptrtoint ptr %trig72 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %trig72, align 4
  %completion = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #8
  tail call fastcc void @ad7768_set_channel_label(ptr noundef nonnull %call)
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %33 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name45, align 8
  %call.i168 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %32, ptr noundef nonnull @ad7768_interrupt, ptr noundef null, i32 noundef 8193, ptr noundef %34, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool80.not = icmp eq i32 %call.i168, 0
  br i1 %tobool80.not, label %if.end82, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end82:                                         ; preds = %if.end69
  %call84 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @ad7768_trigger_handler, i32 noundef 0, ptr noundef nonnull @ad7768_buffer_ops, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end87:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %call89 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.end82.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %do.end51, %devm_add_action_or_reset.exit166, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then26, %devm_add_action_or_reset.exit, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %call12, %do.end ], [ %8, %if.then26 ], [ %call46, %do.end51 ], [ %call89, %if.end87 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %call.i162, %devm_add_action_or_reset.exit166 ], [ -12, %if.end53.cleanup_crit_edge ], [ %call66, %if.end61.cleanup_crit_edge ], [ %call.i168, %if.end69.cleanup_crit_edge ], [ %call84, %if.end82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7768_regulator_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vref = getelementptr inbounds %struct.ad7768_state, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vref, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7768_clk_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk = getelementptr inbounds %struct.ad7768_state, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7768_setup(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i22 = alloca %struct.spi_message, align 4
  %t.i.i23 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.ad7768_state, ptr %st, i32 0, i32 11
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 29, ptr %data.i, align 128
  %arrayidx4.i = getelementptr [2 x i8], ptr %data.i, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %arrayidx4.i, align 1
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %4 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ad7768_spi_reg_write.exit_crit_edge

entry.ad7768_spi_reg_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7768_spi_reg_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7768_spi_reg_write.exit

ad7768_spi_reg_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %entry.ad7768_spi_reg_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %ad7768_spi_reg_write.exit.cleanup_crit_edge

ad7768_spi_reg_write.exit.cleanup_crit_edge:      ; preds = %ad7768_spi_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ad7768_spi_reg_write.exit
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 29, ptr %data.i, align 128
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %arrayidx4.i, align 1
  %20 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i23) #8
  %22 = getelementptr inbounds i8, ptr %t.i.i23, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 92)
  %24 = ptrtoint ptr %t.i.i23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data.i, ptr %t.i.i23, align 4
  %len1.i.i26 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i23, i32 0, i32 2
  %25 = ptrtoint ptr %len1.i.i26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %len1.i.i26, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i22) #8
  %26 = getelementptr inbounds i8, ptr %msg.i.i.i22, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i.i.i22, ptr %msg.i.i.i22, align 4
  %prev.i.i.i.i.i.i.i27 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i22, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i22, ptr %prev.i.i.i.i.i.i.i27, align 4
  %resources.i.i.i.i.i.i28 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i22, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i.i.i.i28, ptr %resources.i.i.i.i.i.i28, align 4
  %prev.i2.i.i.i.i.i.i29 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i22, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i.i.i.i28, ptr %prev.i2.i.i.i.i.i.i29, align 4
  %transfer_list.i.i.i.i.i30 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i23, i32 0, i32 18
  %call.i.i.i.i.i.i.i31 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i30, ptr noundef nonnull %msg.i.i.i22, ptr noundef nonnull %msg.i.i.i22) #8
  br i1 %call.i.i.i.i.i.i.i31, label %if.end.i.i.i.i.i.i.i33, label %if.end.ad7768_spi_reg_write.exit35_crit_edge

if.end.ad7768_spi_reg_write.exit35_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7768_spi_reg_write.exit35

if.end.i.i.i.i.i.i.i33:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i.i.i30, ptr %prev.i.i.i.i.i.i.i27, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i22, ptr %transfer_list.i.i.i.i.i30, align 4
  %prev3.i.i.i.i.i.i.i32 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i23, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i22, ptr %prev3.i.i.i.i.i.i.i32, align 4
  %35 = ptrtoint ptr %msg.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i.i.i30, ptr %msg.i.i.i22, align 4
  br label %ad7768_spi_reg_write.exit35

ad7768_spi_reg_write.exit35:                      ; preds = %if.end.i.i.i.i.i.i.i33, %if.end.ad7768_spi_reg_write.exit35_crit_edge
  %call.i.i.i34 = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i.i.i22) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i22) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i34)
  %tobool2.not = icmp eq i32 %call.i.i.i34, 0
  br i1 %tobool2.not, label %if.end4, label %ad7768_spi_reg_write.exit35.cleanup_crit_edge

ad7768_spi_reg_write.exit35.cleanup_crit_edge:    ; preds = %ad7768_spi_reg_write.exit35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %ad7768_spi_reg_write.exit35
  %36 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %st, align 128
  %call5 = call ptr @devm_gpiod_get(ptr noundef %37, ptr noundef nonnull @.str.16, i32 noundef 3) #8
  %gpio_sync_in = getelementptr inbounds %struct.ad7768_state, ptr %st, i32 0, i32 8
  %38 = ptrtoint ptr %gpio_sync_in to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call5, ptr %gpio_sync_in, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call fastcc i32 @ad7768_set_freq(ptr noundef %st, i32 noundef 32000)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %ad7768_spi_reg_write.exit35.cleanup_crit_edge, %ad7768_spi_reg_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %if.then8 ], [ %call12, %if.end11 ], [ %call.i.i.i, %ad7768_spi_reg_write.exit.cleanup_crit_edge ], [ %call.i.i.i34, %ad7768_spi_reg_write.exit35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad7768_set_channel_label(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  %label = alloca ptr, align 4
  %crt_ch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %label) #8
  %4 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %label, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crt_ch) #8
  %5 = ptrtoint ptr %crt_ch to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %crt_ch, align 4
  %call1 = tail call ptr @dev_fwnode(ptr noundef %3) #8
  %call2 = tail call ptr @fwnode_get_next_child_node(ptr noundef %call1, ptr noundef null) #8
  %tobool.not1 = icmp eq ptr %call2, null
  br i1 %tobool.not1, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %child.02 = phi ptr [ %call11, %for.inc.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %call.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.02, ptr noundef nonnull @.str.18, ptr noundef nonnull %crt_ch, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %crt_ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crt_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.end.for.inc_crit_edge, label %if.end6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @fwnode_property_read_string(ptr noundef nonnull %child.02, ptr noundef nonnull @.str.19, ptr noundef nonnull %label) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %label, align 4
  %10 = ptrtoint ptr %crt_ch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crt_ch, align 4
  %arrayidx = getelementptr %struct.ad7768_state, ptr %1, i32 0, i32 9, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.end6.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call11 = call ptr @fwnode_get_next_child_node(ptr noundef %call1, ptr noundef nonnull %child.02) #8
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crt_ch) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7768_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %3, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %trig = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trig, align 8
  tail call void @iio_trigger_poll(ptr noundef %5) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %completion = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %completion) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7768_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad7768_state, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %data = getelementptr inbounds %struct.ad7768_state, ptr %3, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %6 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_read.exit_crit_edge

entry.spi_read.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_read.exit

spi_read.exit:                                    ; preds = %if.end.i.i.i.i.i.i, %entry.spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %5, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %spi_read.exit.err_unlock_crit_edge, label %if.end

spi_read.exit.err_unlock_crit_edge:               ; preds = %spi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

if.end:                                           ; preds = %spi_read.exit
  %call4 = call i64 @iio_get_time_ns(ptr noundef %1) #8
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scan_timestamp.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %22, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %data, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %call4, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %data) #8
  br label %err_unlock

err_unlock:                                       ; preds = %iio_push_to_buffers_with_timestamp.exit, %spi_read.exit.err_unlock_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %25) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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
define internal i32 @ad7768_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
    i32 12, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %completion.i = getelementptr inbounds %struct.ad7768_state, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %completion.i, align 4
  %call1.i = tail call fastcc i32 @ad7768_set_mode(ptr noundef %4, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end._crit_edge, label %if.end.i

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

if.end.i:                                         ; preds = %if.end
  %call4.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i._crit_edge, label %if.end6.i

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

if.end6.i:                                        ; preds = %if.end.i
  %data.i.i = getelementptr inbounds %struct.ad7768_state, ptr %4, i32 0, i32 11
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 108, ptr %data.i.i, align 128
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 128
  %call.i.i = tail call i32 @spi_write_then_read(ptr noundef %8, ptr noundef %data.i.i, i32 noundef 1, ptr noundef %data.i.i, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end6.i._crit_edge, label %ad7768_spi_reg_read.exit.i

if.end6.i._crit_edge:                             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

ad7768_spi_reg_read.exit.i:                       ; preds = %if.end6.i
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data.i.i, align 128
  %call11.i = tail call fastcc i32 @ad7768_set_mode(ptr noundef %4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %ad7768_spi_reg_read.exit.i._crit_edge, label %if.end4

ad7768_spi_reg_read.exit.i._crit_edge:            ; preds = %ad7768_spi_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

if.end4:                                          ; preds = %ad7768_spi_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i = lshr i32 %10, 8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr.i.i, ptr %val, align 4
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  br label %cleanup

12:                                               ; preds = %ad7768_spi_reg_read.exit.i._crit_edge, %if.end6.i._crit_edge, %if.end.i._crit_edge, %if.end._crit_edge
  %retval.0.i31.ph = phi i32 [ %call11.i, %ad7768_spi_reg_read.exit.i._crit_edge ], [ %call1.i, %if.end._crit_edge ], [ -110, %if.end.i._crit_edge ], [ %call.i.i, %if.end6.i._crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %vref = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vref, align 4
  %call9 = tail call i32 @regulator_get_voltage(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %sw.bb8.cleanup_crit_edge, label %if.end12

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl nuw i32 %call9, 1
  %div = sdiv i32 %mul, 1000
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %realbits, align 1
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %val2, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %samp_freq = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %samp_freq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %samp_freq, align 4
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %if.end12, %sw.bb8.cleanup_crit_edge, %12, %if.end4, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb13 ], [ 11, %if.end12 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i31.ph, %12 ], [ 1, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7768_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %info)
  %cond = icmp eq i32 %info, 12
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call fastcc i32 @ad7768_set_freq(ptr noundef %1, i32 noundef %val)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7768_read_label(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %label) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ad7768_state, ptr %1, i32 0, i32 9, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %label, ptr noundef nonnull @.str.15, ptr noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7768_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %readval, null
  %2 = trunc i32 %reg to i8
  %conv.i13 = and i8 %2, 63
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv.i = or i8 %conv.i13, 64
  %data.i = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %data.i, align 128
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %call.i = tail call i32 @spi_write_then_read(ptr noundef %5, ptr noundef %data.i, i32 noundef 1, ptr noundef %data.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.err_unlock_crit_edge, label %ad7768_spi_reg_read.exit

if.then.err_unlock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock

ad7768_spi_reg_read.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data.i, align 128
  %shr.i = lshr i32 %7, 24
  %8 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr.i, ptr %readval, align 4
  br label %err_unlock

if.else:                                          ; preds = %entry
  %data.i14 = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %data.i14 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i13, ptr %data.i14, align 128
  %conv2.i = trunc i32 %writeval to i8
  %arrayidx4.i = getelementptr [2 x i8], ptr %data.i14, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2.i, ptr %arrayidx4.i, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %13 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 92)
  %15 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data.i14, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %17 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.else.ad7768_spi_reg_write.exit_crit_edge

if.else.ad7768_spi_reg_write.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7768_spi_reg_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7768_spi_reg_write.exit

ad7768_spi_reg_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %if.else.ad7768_spi_reg_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %12, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  br label %err_unlock

err_unlock:                                       ; preds = %ad7768_spi_reg_write.exit, %ad7768_spi_reg_read.exit, %if.then.err_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %ad7768_spi_reg_read.exit ], [ %call.i.i.i, %ad7768_spi_reg_write.exit ], [ %call.i, %if.then.err_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7768_sampling_freq_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mclk_freq = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk_freq, align 8
  %add = add i32 %3, 8
  %div218 = lshr i32 %add, 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.14, i32 noundef %div218) #8
  %4 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk_freq, align 8
  %add.1 = add i32 %5, 16
  %div2.119 = lshr i32 %add.1, 5
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call3
  %sub.1 = sub i32 4096, %call3
  %call3.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.14, i32 noundef %div2.119) #8
  %add4.1 = add i32 %call3.1, %call3
  %6 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk_freq, align 8
  %add.2 = add i32 %7, 32
  %div2.220 = lshr i32 %add.2, 6
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add4.1
  %sub.2 = sub i32 4096, %add4.1
  %call3.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.14, i32 noundef %div2.220) #8
  %add4.2 = add i32 %call3.2, %add4.1
  %8 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_freq, align 8
  %add.3 = add i32 %9, 64
  %div2.321 = lshr i32 %add.3, 7
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add4.2
  %sub.3 = sub i32 4096, %add4.2
  %call3.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.14, i32 noundef %div2.321) #8
  %add4.3 = add i32 %call3.3, %add4.2
  %10 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mclk_freq, align 8
  %add.4 = add i32 %11, 128
  %div2.422 = lshr i32 %add.4, 8
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add4.3
  %sub.4 = sub i32 4096, %add4.3
  %call3.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.14, i32 noundef %div2.422) #8
  %add4.4 = add i32 %call3.4, %add4.3
  %12 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mclk_freq, align 8
  %add.5 = add i32 %13, 256
  %div2.523 = lshr i32 %add.5, 9
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add4.4
  %sub.5 = sub i32 4096, %add4.4
  %call3.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.14, i32 noundef %div2.523) #8
  %add4.5 = add i32 %call3.5, %add4.4
  %14 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk_freq, align 8
  %add.6 = add i32 %15, 512
  %div2.624 = lshr i32 %add.6, 10
  %add.ptr.6 = getelementptr i8, ptr %buf, i32 %add4.5
  %sub.6 = sub i32 4096, %add4.5
  %call3.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6, i32 noundef %sub.6, ptr noundef nonnull @.str.14, i32 noundef %div2.624) #8
  %add4.6 = add i32 %call3.6, %add4.5
  %16 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mclk_freq, align 8
  %add.7 = add i32 %17, 1024
  %div2.725 = lshr i32 %add.7, 11
  %add.ptr.7 = getelementptr i8, ptr %buf, i32 %add4.6
  %sub.7 = sub i32 4096, %add4.6
  %call3.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7, i32 noundef %sub.7, ptr noundef nonnull @.str.14, i32 noundef %div2.725) #8
  %add4.7 = add i32 %call3.7, %add4.6
  %18 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mclk_freq, align 8
  %add.8 = add i32 %19, 2048
  %div2.826 = lshr i32 %add.8, 12
  %add.ptr.8 = getelementptr i8, ptr %buf, i32 %add4.7
  %sub.8 = sub i32 4096, %add4.7
  %call3.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.8, i32 noundef %sub.8, ptr noundef nonnull @.str.14, i32 noundef %div2.826) #8
  %add4.8 = add i32 %call3.8, %add4.7
  %20 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mclk_freq, align 8
  %add.9 = add i32 %21, 4096
  %div2.927 = lshr i32 %add.9, 13
  %add.ptr.9 = getelementptr i8, ptr %buf, i32 %add4.8
  %sub.9 = sub i32 4096, %add4.8
  %call3.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.9, i32 noundef %sub.9, ptr noundef nonnull @.str.14, i32 noundef %div2.927) #8
  %add4.9 = add i32 %call3.9, %add4.8
  %22 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mclk_freq, align 8
  %add.10 = add i32 %23, 8192
  %div2.1028 = lshr i32 %add.10, 14
  %add.ptr.10 = getelementptr i8, ptr %buf, i32 %add4.9
  %sub.10 = sub i32 4096, %add4.9
  %call3.10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.10, i32 noundef %sub.10, ptr noundef nonnull @.str.14, i32 noundef %div2.1028) #8
  %add4.10 = add i32 %call3.10, %add4.9
  %sub5 = add i32 %add4.10, -1
  %arrayidx6 = getelementptr i8, ptr %buf, i32 %sub5
  %24 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 10, ptr %arrayidx6, align 1
  ret i32 %add4.10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7768_set_mode(ptr noundef %st, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.ad7768_state, ptr %st, i32 0, i32 11
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 88, ptr %data.i, align 128
  %1 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %st, align 128
  %call.i = tail call i32 @spi_write_then_read(ptr noundef %2, ptr noundef %data.i, i32 noundef 1, ptr noundef %data.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %do.end15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end15:                                         ; preds = %entry
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data.i, align 128
  %shr.i = lshr i32 %4, 24
  %and = and i32 %shr.i, 248
  %and16 = and i32 %mode, 7
  %or = or i32 %and, %and16
  store i8 24, ptr %data.i, align 128
  %conv2.i = trunc i32 %or to i8
  %arrayidx4.i = getelementptr [2 x i8], ptr %data.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2.i, ptr %arrayidx4.i, align 1
  %6 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %8 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %12 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %do.end15.ad7768_spi_reg_write.exit_crit_edge

do.end15.ad7768_spi_reg_write.exit_crit_edge:     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7768_spi_reg_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7768_spi_reg_write.exit

ad7768_spi_reg_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %do.end15.ad7768_spi_reg_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ad7768_spi_reg_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %ad7768_spi_reg_write.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7768_set_freq(ptr noundef %st, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk_freq = getelementptr inbounds %struct.ad7768_state, ptr %st, i32 0, i32 4
  %0 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mclk_freq, align 8
  %div104 = lshr i32 %freq, 1
  %add = add i32 %1, %div104
  %div1 = udiv i32 %add, %freq
  %sub = add i32 %div1, -16
  %2 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub.1 = add i32 %div1, -32
  %3 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %2)
  %cmp6.1 = icmp ult i32 %3, %2
  %idx.1.1 = zext i1 %cmp6.1 to i32
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %2)
  %sub.2 = add i32 %div1, -64
  %5 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %4)
  %cmp6.2 = icmp ult i32 %5, %4
  %idx.1.2 = select i1 %cmp6.2, i32 2, i32 %idx.1.1
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %4)
  %sub.3 = add i32 %div1, -128
  %7 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %6)
  %cmp6.3 = icmp ult i32 %7, %6
  %idx.1.3 = select i1 %cmp6.3, i32 3, i32 %idx.1.2
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %6)
  %sub.4 = add i32 %div1, -256
  %9 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %8)
  %cmp6.4 = icmp ult i32 %9, %8
  %idx.1.4 = select i1 %cmp6.4, i32 4, i32 %idx.1.3
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %8)
  %sub.5 = add i32 %div1, -512
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %10)
  %cmp6.5 = icmp ult i32 %11, %10
  %idx.1.5 = select i1 %cmp6.5, i32 5, i32 %idx.1.4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %10)
  %sub.6 = add i32 %div1, -1024
  %13 = tail call i32 @llvm.abs.i32(i32 %sub.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %12)
  %cmp6.6 = icmp ult i32 %13, %12
  %idx.1.6 = select i1 %cmp6.6, i32 6, i32 %idx.1.5
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %12)
  %sub.7 = add i32 %div1, -2048
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %14)
  %cmp6.7 = icmp ult i32 %15, %14
  %idx.1.7 = select i1 %cmp6.7, i32 7, i32 %idx.1.6
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %14)
  %sub.8 = add i32 %div1, -4096
  %17 = tail call i32 @llvm.abs.i32(i32 %sub.8, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %16)
  %cmp6.8 = icmp ult i32 %17, %16
  %idx.1.8 = select i1 %cmp6.8, i32 8, i32 %idx.1.7
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %16)
  %sub.9 = add i32 %div1, -8192
  %19 = tail call i32 @llvm.abs.i32(i32 %sub.9, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %18)
  %cmp6.9 = icmp ult i32 %19, %18
  %idx.1.9 = select i1 %cmp6.9, i32 9, i32 %idx.1.8
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 %18)
  %sub.10 = add i32 %div1, -16384
  %21 = tail call i32 @llvm.abs.i32(i32 %sub.10, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp6.10 = icmp ult i32 %21, %20
  %idx.1.10 = select i1 %cmp6.10, i32 10, i32 %idx.1.9
  %arrayidx11 = getelementptr [11 x %struct.ad7768_clk_configuration], ptr @ad7768_clk_config, i32 0, i32 %idx.1.10
  %22 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11, align 4
  %shl = shl i32 %23, 4
  %and29 = and i32 %shl, 48
  %pwrmode = getelementptr [11 x %struct.ad7768_clk_configuration], ptr @ad7768_clk_config, i32 0, i32 %idx.1.10, i32 3
  %24 = ptrtoint ptr %pwrmode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pwrmode, align 4
  %and58 = and i32 %25, 3
  %or = or i32 %and58, %and29
  %data.i = getelementptr inbounds %struct.ad7768_state, ptr %st, i32 0, i32 11
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 21, ptr %data.i, align 128
  %conv2.i = trunc i32 %or to i8
  %arrayidx4.i = getelementptr [2 x i8], ptr %data.i, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv2.i, ptr %arrayidx4.i, align 1
  %28 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %30 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 92)
  %32 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %34 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %35 = call ptr @memset(ptr %34, i32 0, i32 40)
  %36 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %38 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ad7768_spi_reg_write.exit_crit_edge

entry.ad7768_spi_reg_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7768_spi_reg_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7768_spi_reg_write.exit

ad7768_spi_reg_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %entry.ad7768_spi_reg_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %29, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp59 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp59, label %ad7768_spi_reg_write.exit.cleanup_crit_edge, label %if.end61

ad7768_spi_reg_write.exit.cleanup_crit_edge:      ; preds = %ad7768_spi_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end61:                                         ; preds = %ad7768_spi_reg_write.exit
  %dec_rate = getelementptr [11 x %struct.ad7768_clk_configuration], ptr @ad7768_clk_config, i32 0, i32 %idx.1.10, i32 1
  %44 = ptrtoint ptr %dec_rate to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dec_rate, align 4
  %dec_rate.off.i = add i32 %45, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec_rate.off.i)
  %switch.i = icmp ult i32 %dec_rate.off.i, 2
  %shl.i = shl nuw nsw i32 %45, 4
  %and15.i = and i32 %shl.i, 112
  %and39.i = and i32 %45, 7
  %mode.0.i = select i1 %switch.i, i32 %and15.i, i32 %and39.i
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 25, ptr %data.i, align 128
  %conv2.i.i = trunc i32 %mode.0.i to i8
  %47 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv2.i.i, ptr %arrayidx4.i, align 1
  %48 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %50 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %51 = call ptr @memset(ptr %50, i32 0, i32 92)
  %52 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %data.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %54 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %55 = call ptr @memset(ptr %54, i32 0, i32 40)
  %56 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %58 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %59 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end61.ad7768_spi_reg_write.exit.i_crit_edge

if.end61.ad7768_spi_reg_write.exit.i_crit_edge:   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7768_spi_reg_write.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %61 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %63 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ad7768_spi_reg_write.exit.i

ad7768_spi_reg_write.exit.i:                      ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end61.ad7768_spi_reg_write.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %49, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp41.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp41.i, label %ad7768_spi_reg_write.exit.i.cleanup_crit_edge, label %if.end66

ad7768_spi_reg_write.exit.i.cleanup_crit_edge:    ; preds = %ad7768_spi_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %ad7768_spi_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_sync_in.i = getelementptr inbounds %struct.ad7768_state, ptr %st, i32 0, i32 8
  %64 = ptrtoint ptr %gpio_sync_in.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gpio_sync_in.i, align 4
  call void @gpiod_set_value(ptr noundef %65, i32 noundef 1) #8
  %66 = ptrtoint ptr %gpio_sync_in.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gpio_sync_in.i, align 4
  call void @gpiod_set_value(ptr noundef %67, i32 noundef 0) #8
  %68 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mclk_freq, align 8
  %clk_div71 = getelementptr [11 x %struct.ad7768_clk_configuration], ptr @ad7768_clk_config, i32 0, i32 %idx.1.10, i32 2
  %70 = ptrtoint ptr %clk_div71 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %clk_div71, align 4
  %div73105 = lshr i32 %71, 1
  %add74 = add i32 %div73105, %69
  %div75 = udiv i32 %add74, %71
  %samp_freq = getelementptr inbounds %struct.ad7768_state, ptr %st, i32 0, i32 5
  %72 = ptrtoint ptr %samp_freq to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div75, ptr %samp_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %ad7768_spi_reg_write.exit.i.cleanup_crit_edge, %ad7768_spi_reg_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66 ], [ %call.i.i.i, %ad7768_spi_reg_write.exit.cleanup_crit_edge ], [ %call.i.i.i.i, %ad7768_spi_reg_write.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7768_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %data.i = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 20, ptr %data.i, align 128
  %arrayidx4.i = getelementptr [2 x i8], ptr %data.i, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %arrayidx4.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %6 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 92)
  %8 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %10 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ad7768_spi_reg_write.exit_crit_edge

entry.ad7768_spi_reg_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7768_spi_reg_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7768_spi_reg_write.exit

ad7768_spi_reg_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %entry.ad7768_spi_reg_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %5, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7768_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %data.i = getelementptr inbounds %struct.ad7768_state, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 108, ptr %data.i, align 128
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %call.i = tail call i32 @spi_write_then_read(ptr noundef %4, ptr noundef %data.i, i32 noundef 1, ptr noundef %data.i, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.ad7768_spi_reg_read.exit_crit_edge, label %if.end.i

entry.ad7768_spi_reg_read.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad7768_spi_reg_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data.i, align 128
  %shr.i = lshr i32 %6, 8
  br label %ad7768_spi_reg_read.exit

ad7768_spi_reg_read.exit:                         ; preds = %if.end.i, %entry.ad7768_spi_reg_read.exit_crit_edge
  %retval.0.i = phi i32 [ %shr.i, %if.end.i ], [ %call.i, %entry.ad7768_spi_reg_read.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_ad7768_1__315_688_ad7768_driver_init6, !1, !"__initcall__kmod_ad7768_1__315_688_ad7768_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7768-1.c", i32 688, i32 1}
!2 = !{ptr @__exitcall_ad7768_driver_exit, !1, !"__exitcall_ad7768_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author316, !4, !"__UNIQUE_ID_author316", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7768-1.c", i32 690, i32 1}
!5 = !{ptr @__UNIQUE_ID_description317, !6, !"__UNIQUE_ID_description317", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7768-1.c", i32 691, i32 1}
!7 = !{ptr @__UNIQUE_ID_file318, !8, !"__UNIQUE_ID_file318", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7768-1.c", i32 692, i32 1}
!9 = !{ptr @__UNIQUE_ID_license319, !8, !"__UNIQUE_ID_license319", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7768-1.c", i32 682, i32 11}
!12 = !{ptr @ad7768_driver, !13, !"ad7768_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7768-1.c", i32 680, i32 26}
!14 = !{ptr @ad7768_id_table, !15, !"ad7768_id_table", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7768-1.c", i32 668, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7768-1.c", i32 589, i32 43}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ad7768-1.c", i32 595, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ad7768_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ad7768_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ad7768-1.c", i32 603, i32 37}
!28 = !{ptr @ad7768_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ad7768-1.c", i32 617, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/ad7768-1.c", i32 627, i32 3}
!33 = !{ptr @ad7768_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ad7768_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/ad7768-1.c", i32 631, i32 47}
!37 = !{ptr @ad7768_channels, !38, !"ad7768_channels", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/ad7768-1.c", i32 135, i32 35}
!39 = !{ptr @ad7768_info, !40, !"ad7768_info", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/ad7768-1.c", i32 432, i32 30}
!41 = !{ptr @ad7768_group, !42, !"ad7768_group", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/ad7768-1.c", i32 428, i32 37}
!43 = !{ptr @ad7768_attributes, !44, !"ad7768_attributes", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/ad7768-1.c", i32 423, i32 26}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/ad7768-1.c", i32 357, i32 8}
!47 = !{ptr @iio_dev_attr_sampling_frequency_available, !46, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/ad7768-1.c", i32 349, i32 48}
!50 = !{ptr @ad7768_clk_config, !51, !"ad7768_clk_config", i1 false, i1 false}
!51 = !{!"../drivers/iio/adc/ad7768-1.c", i32 121, i32 46}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/ad7768-1.c", i32 420, i32 24}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/ad7768-1.c", i32 458, i32 51}
!56 = !{ptr @ad7768_trigger_ops, !57, !"ad7768_trigger_ops", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/ad7768-1.c", i32 531, i32 37}
!58 = !{ptr @init_completion.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../include/linux/completion.h", i32 87, i32 2}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/ad7768-1.c", i32 561, i32 39}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/ad7768-1.c", i32 567, i32 42}
!65 = !{ptr @ad7768_buffer_ops, !66, !"ad7768_buffer_ops", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/ad7768-1.c", i32 526, i32 42}
!67 = !{ptr @ad7768_of_match, !68, !"ad7768_of_match", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/ad7768-1.c", i32 674, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
!79 = !{i8 0, i8 2}
