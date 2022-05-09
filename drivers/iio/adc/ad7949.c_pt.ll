; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7949.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7949.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.ad7949_adc_spec = type { i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad7949_adc_chip = type { %struct.mutex, ptr, ptr, ptr, i32, i8, i16, i32, [12 x i8], i16, i16, [124 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ad7949__330_438_ad7949_spi_driver_init6 = internal global ptr @ad7949_spi_driver_init, section ".initcall6.init", align 4
@ad7949_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7949_spi_id, ptr @ad7949_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7949_spi_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7949_spi_driver_exit = internal global ptr @ad7949_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author331 = internal constant [76 x i8] c"ad7949.author=Charles-Antoine Couret <charles-antoine.couret@essensium.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description332 = internal constant [65 x i8] c"ad7949.description=Analog Devices 14/16-bit 8-channel ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file333 = internal constant [35 x i8] c"ad7949.file=drivers/iio/adc/ad7949\00", section ".modinfo", align 1
@__UNIQUE_ID_license334 = internal constant [22 x i8] c"ad7949.license=GPL v2\00", section ".modinfo", align 1
@ad7949_spi_id = internal constant { [4 x %struct.spi_device_id], [48 x i8] } { [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7949\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad7682\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad7689\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7949\00", [25 x i8] zeroinitializer }, align 32
@ad7949_spi_of_id = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7949\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7682\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7689\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ad7949_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can not allocate iio device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ad7949_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/adc/ad7949.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7949_spi_probe._entry_ptr = internal global ptr @ad7949_spi_probe._entry, section ".printk_index", align 4
@ad7949_spi_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7949_spi_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7949_spi_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7949_adc_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [160 x i8] zeroinitializer }, align 32
@ad7949_adc_spec = internal constant { [3 x %struct.ad7949_adc_spec], [26 x i8] } { [3 x %struct.ad7949_adc_spec] [%struct.ad7949_adc_spec { i8 8, i8 14 }, %struct.ad7949_adc_spec { i8 4, i8 16 }, %struct.ad7949_adc_spec { i8 8, i8 16 }], [26 x i8] zeroinitializer }, align 32
@ad7949_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to find common BPW with spi controller\0A\00", [49 x i8] zeroinitializer }, align 32
@ad7949_spi_probe._entry_ptr.8 = internal global ptr @ad7949_spi_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"adi,internal-ref-microvolt\00", [37 x i8] zeroinitializer }, align 32
@ad7949_spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unsupported internal voltage reference\0A\00", [56 x i8] zeroinitializer }, align 32
@ad7949_spi_probe._entry_ptr.12 = internal global ptr @ad7949_spi_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vrefin\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ad7949_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fail to enable regulator\0A\00", [38 x i8] zeroinitializer }, align 32
@ad7949_spi_probe._entry_ptr.17 = internal global ptr @ad7949_spi_probe._entry.15, section ".printk_index", align 4
@ad7949_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ad7949_adc->lock\00", [46 x i8] zeroinitializer }, align 32
@ad7949_spi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"enable to init this device: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ad7949_spi_probe._entry_ptr.21 = internal global ptr @ad7949_spi_probe._entry.19, section ".printk_index", align 4
@ad7949_spi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fail to register iio device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ad7949_spi_probe._entry_ptr.24 = internal global ptr @ad7949_spi_probe._entry.22, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ad7949_spi_read_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unsupported BPW\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ad7949_spi_read_channel\00", [40 x i8] zeroinitializer }, align 32
@ad7949_spi_read_channel._entry_ptr = internal global ptr @ad7949_spi_read_channel._entry, section ".printk_index", align 4
@ad7949_spi_write_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.27, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ad7949_spi_write_cfg\00", [43 x i8] zeroinitializer }, align 32
@ad7949_spi_write_cfg._entry_ptr = internal global ptr @ad7949_spi_write_cfg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 32768]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2500000, i64 4096000]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 14, i64 16]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 14, i64 16]
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"ad7949_spi_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 430, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"ad7949_spi_id\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 422, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 432, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"ad7949_spi_of_id\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 414, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 321, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"ad7949_spi_info\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 271, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"ad7949_adc_channels\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 197, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"ad7949_adc_spec\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 61, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 347, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 353, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 363, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 368, i32 54 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 374, i32 55 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 389, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 399, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 403, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 409, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 182, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [28 x i8] c"../drivers/iio/adc/ad7949.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 115, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author331, ptr @__UNIQUE_ID_description332, ptr @__UNIQUE_ID_file333, ptr @__UNIQUE_ID_license334, ptr @__exitcall_ad7949_spi_driver_exit, ptr @__initcall__kmod_ad7949__330_438_ad7949_spi_driver_init6, ptr @ad7949_spi_driver_exit, ptr @ad7949_spi_probe._entry, ptr @ad7949_spi_probe._entry.10, ptr @ad7949_spi_probe._entry.15, ptr @ad7949_spi_probe._entry.19, ptr @ad7949_spi_probe._entry.22, ptr @ad7949_spi_probe._entry.6, ptr @ad7949_spi_probe._entry_ptr, ptr @ad7949_spi_probe._entry_ptr.12, ptr @ad7949_spi_probe._entry_ptr.17, ptr @ad7949_spi_probe._entry_ptr.21, ptr @ad7949_spi_probe._entry_ptr.24, ptr @ad7949_spi_probe._entry_ptr.8, ptr @ad7949_spi_read_channel._entry, ptr @ad7949_spi_read_channel._entry_ptr, ptr @ad7949_spi_write_cfg._entry, ptr @ad7949_spi_write_cfg._entry_ptr, ptr @ad7949_spi_driver, ptr @ad7949_spi_id, ptr @.str, ptr @ad7949_spi_of_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ad7949_spi_info, ptr @ad7949_adc_channels, ptr @ad7949_adc_spec, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @ad7949_spi_probe.__key, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_of_id to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_adc_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_adc_spec to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_read_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7949_spi_write_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7949_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7949_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7949_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7949_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7949_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_word_mask, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ad7949_spi_info, ptr %info, align 8
  %call2 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %name3 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %name3, align 8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ad7949_adc_channels, ptr %channels, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %indio_dev5 = getelementptr inbounds %struct.ad7949_adc_chip, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %indio_dev5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %indio_dev5, align 32
  %spi6 = getelementptr inbounds %struct.ad7949_adc_chip, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %spi6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spi, ptr %spi6, align 4
  %call7 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call7, i32 0, i32 1
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [3 x %struct.ad7949_adc_spec], ptr @ad7949_adc_spec, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %num_channels8 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %17 = ptrtoint ptr %num_channels8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %num_channels8, align 4
  %resolution = getelementptr [3 x %struct.ad7949_adc_spec], ptr @ad7949_adc_spec, i32 0, i32 %14, i32 1
  %18 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %resolution, align 1
  %resolution9 = getelementptr inbounds %struct.ad7949_adc_chip, ptr %10, i32 0, i32 5
  %20 = ptrtoint ptr %resolution9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %resolution9, align 4
  %conv11 = zext i8 %19 to i32
  %sub = add nsw i32 %conv11, -1
  %shl = shl nuw i32 1, %sub
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.else:                                          ; preds = %if.end
  %21 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end26 [
    i32 32768, label %if.else.if.end29_crit_edge
    i32 128, label %if.then21
  ]

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end29:                                         ; preds = %if.then21, %if.else.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %.sink = phi i8 [ 8, %if.then21 ], [ %19, %if.end.if.end29_crit_edge ], [ 16, %if.else.if.end29_crit_edge ]
  %bits_per_word17 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %22 = ptrtoint ptr %bits_per_word17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %bits_per_word17, align 1
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4096000, ptr %tmp, align 4
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.9, ptr noundef nonnull %tmp, i32 noundef 1) #5
  %24 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmp, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %25, label %do.end35 [
    i32 2500000, label %if.end29.sw.epilog_crit_edge
    i32 4096000, label %sw.bb31
  ]

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb31, %if.end29.sw.epilog_crit_edge
  %.sink171 = phi i32 [ 1, %sw.bb31 ], [ 0, %if.end29.sw.epilog_crit_edge ]
  %refsel32 = getelementptr inbounds %struct.ad7949_adc_chip, ptr %10, i32 0, i32 4
  %27 = ptrtoint ptr %refsel32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink171, ptr %refsel32, align 8
  %call36 = call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.13) #5
  %vref = getelementptr inbounds %struct.ad7949_adc_chip, ptr %10, i32 0, i32 1
  %28 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call36, ptr %vref, align 4
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %sw.epilog.if.end62.sink.split_crit_edge

sw.epilog.if.end62.sink.split_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.sink.split

if.then39:                                        ; preds = %sw.epilog
  %29 = ptrtoint ptr %call36 to i32
  %cmp42.not = icmp eq ptr %call36, inttoptr (i32 -19 to ptr)
  br i1 %cmp42.not, label %if.end45, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.then39
  %call46 = call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.14) #5
  %30 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call46, ptr %vref, align 4
  %cmp.i168 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then50, label %if.end45.if.end62.sink.split_crit_edge

if.end45.if.end62.sink.split_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.sink.split

if.then50:                                        ; preds = %if.end45
  %31 = ptrtoint ptr %call46 to i32
  %cmp53.not = icmp eq ptr %call46, inttoptr (i32 -19 to ptr)
  br i1 %cmp53.not, label %if.then50.if.end62_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then50.if.end62_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.end62.sink.split:                              ; preds = %if.end45.if.end62.sink.split_crit_edge, %sw.epilog.if.end62.sink.split_crit_edge
  %.sink172 = phi i32 [ 2, %if.end45.if.end62.sink.split_crit_edge ], [ 3, %sw.epilog.if.end62.sink.split_crit_edge ]
  %refsel58 = getelementptr inbounds %struct.ad7949_adc_chip, ptr %10, i32 0, i32 4
  %32 = ptrtoint ptr %refsel58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink172, ptr %refsel58, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.then50.if.end62_crit_edge
  %refsel63 = getelementptr inbounds %struct.ad7949_adc_chip, ptr %10, i32 0, i32 4
  %33 = ptrtoint ptr %refsel63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %refsel63, align 8
  %and64 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.do.body82_crit_edge, label %if.then66

if.end62.do.body82_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body82

if.then66:                                        ; preds = %if.end62
  %35 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vref, align 4
  %call68 = call i32 @regulator_enable(ptr noundef %36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end74, label %if.end75

do.end74:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end75:                                         ; preds = %if.then66
  %37 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vref, align 4
  %call.i169 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ad7949_disable_reg, ptr noundef %38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool.not.i = icmp eq i32 %call.i169, 0
  br i1 %tobool.not.i, label %if.end75.do.body82_crit_edge, label %devm_add_action_or_reset.exit

if.end75.do.body82_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body82

devm_add_action_or_reset.exit:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call i32 @regulator_disable(ptr noundef %38) #5
  br label %cleanup

do.body82:                                        ; preds = %if.end75.do.body82_crit_edge, %if.end62.do.body82_crit_edge
  call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.18, ptr noundef nonnull @ad7949_spi_probe.__key) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %current_channel.i = getelementptr inbounds %struct.ad7949_adc_chip, ptr %10, i32 0, i32 7
  %39 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %current_channel.i, align 16
  %40 = ptrtoint ptr %refsel63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %refsel63, align 8
  %.tr.i = trunc i32 %41 to i16
  %42 = shl i16 %.tr.i, 3
  %43 = and i16 %42, 56
  %conv.i = or i16 %43, 15425
  %call.i170 = call fastcc i32 @ad7949_spi_write_cfg(ptr noundef %10, i16 noundef zeroext %conv.i, i16 noundef zeroext 16383) #5
  %44 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %current_channel.i, align 16
  %call129.i = call fastcc i32 @ad7949_spi_read_channel(ptr noundef %10, ptr noundef nonnull %val.i, i32 noundef %45) #5
  %46 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %current_channel.i, align 16
  %call131.i = call fastcc i32 @ad7949_spi_read_channel(ptr noundef %10, ptr noundef nonnull %val.i, i32 noundef %47) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool86.not = icmp eq i32 %call.i170, 0
  br i1 %tobool86.not, label %if.end91, label %do.end90

do.end90:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.20, i32 noundef %call.i170) #8
  br label %cleanup

if.end91:                                         ; preds = %do.body82
  %call92 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end91.cleanup_crit_edge, label %do.end97

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.23, i32 noundef %call92) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.end91.cleanup_crit_edge, %do.end90, %devm_add_action_or_reset.exit, %do.end74, %if.then50.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %do.end35, %do.end26, %do.end
  %retval.0 = phi i32 [ -22, %do.end35 ], [ %call68, %do.end74 ], [ %call.i170, %do.end90 ], [ -22, %do.end26 ], [ -12, %do.end ], [ %29, %if.then39.cleanup_crit_edge ], [ %31, %if.then50.cleanup_crit_edge ], [ %call.i169, %devm_add_action_or_reset.exit ], [ %call92, %do.end97 ], [ 0, %if.end91.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7949_disable_reg(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7949_spi_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %val, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %mask, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #5
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %call1 = tail call fastcc i32 @ad7949_spi_read_channel(ptr noundef %1, ptr noundef nonnull %val, i32 noundef %4)
  tail call void @mutex_unlock(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1. = select i1 %cmp, i32 %call1, i32 1
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %refsel = getelementptr inbounds %struct.ad7949_adc_chip, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %refsel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refsel, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %6, label %sw.bb5.sw.epilog_crit_edge [
    i32 0, label %sw.bb5.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb7
    i32 2, label %sw.bb5.sw.bb8_crit_edge
    i32 3, label %sw.bb5.sw.bb8_crit_edge29
  ]

sw.bb5.sw.bb8_crit_edge29:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

sw.bb5.sw.bb8_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

sw.bb5.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %sw.bb5.sw.bb8_crit_edge, %sw.bb5.sw.bb8_crit_edge29
  %vref = getelementptr inbounds %struct.ad7949_adc_chip, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vref, align 4
  %call9 = tail call i32 @regulator_get_voltage(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %sw.bb8.cleanup_crit_edge, label %if.end12

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %div28 = udiv i32 %call9, 1000
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end12, %sw.bb7, %sw.bb5.sw.epilog.sink.split_crit_edge
  %div28.sink = phi i32 [ %div28, %if.end12 ], [ 4096, %sw.bb7 ], [ 2500, %sw.bb5.sw.epilog.sink.split_crit_edge ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div28.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb5.sw.epilog_crit_edge
  %resolution = getelementptr inbounds %struct.ad7949_adc_chip, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %resolution, align 4
  %conv = zext i8 %12 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %13 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb8.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ %call1., %sw.bb ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7949_spi_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %readval, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cfg = getelementptr inbounds %struct.ad7949_adc_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cfg, align 2
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %readval, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv1 = trunc i32 %writeval to i16
  %call2 = tail call fastcc i32 @ad7949_spi_write_cfg(ptr noundef %1, i16 noundef zeroext %conv1, i16 noundef zeroext 16383)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %call2, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7949_spi_read_channel(ptr noundef %ad7949_adc, ptr nocapture noundef writeonly %val, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  %msg.i.i81 = alloca %struct.spi_message, align 4
  %t.i82 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %channel.tr = trunc i32 %channel to i16
  %0 = shl i16 %channel.tr, 7
  %conv = and i16 %0, 896
  %current_channel = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 7
  %call = tail call fastcc i32 @ad7949_spi_write_cfg(ptr noundef %ad7949_adc, i16 noundef zeroext %conv, i16 noundef zeroext 896)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end16, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end12.1:                                       ; preds = %if.end16
  %call.1 = tail call fastcc i32 @ad7949_spi_write_cfg(ptr noundef %ad7949_adc, i16 noundef zeroext %conv, i16 noundef zeroext 896)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool14.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool14.not.1, label %do.end12.1.for.end_crit_edge, label %do.end12.1.cleanup_crit_edge

do.end12.1.cleanup_crit_edge:                     ; preds = %do.end12.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end12.1.for.end_crit_edge:                     ; preds = %do.end12.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end16:                                         ; preds = %entry
  %1 = ptrtoint ptr %current_channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %current_channel, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %channel)
  %cmp17 = icmp eq i32 %2, %channel
  br i1 %cmp17, label %if.end16.for.end_crit_edge, label %do.end12.1

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %do.end12.1.for.end_crit_edge
  %spi = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 3
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp22 = icmp eq i8 %6, 8
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.end
  %buf8b = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %7 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %8 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf8b, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %9 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %10 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then24.spi_read.exit_crit_edge

if.then24.spi_read.exit_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_read.exit

spi_read.exit:                                    ; preds = %if.end.i.i.i.i.i.i, %if.then24.spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  br label %if.end29

if.else:                                          ; preds = %for.end
  %buffer = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i82) #5
  %20 = call ptr @memset(ptr %t.i82, i32 0, i32 96)
  %rx_buf.i83 = getelementptr inbounds %struct.spi_transfer, ptr %t.i82, i32 0, i32 1
  %21 = ptrtoint ptr %rx_buf.i83 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buffer, ptr %rx_buf.i83, align 4
  %len1.i84 = getelementptr inbounds %struct.spi_transfer, ptr %t.i82, i32 0, i32 2
  %22 = ptrtoint ptr %len1.i84 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %len1.i84, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i81) #5
  %23 = getelementptr inbounds i8, ptr %msg.i.i81, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %msg.i.i81 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %msg.i.i81, ptr %msg.i.i81, align 4
  %prev.i.i.i.i.i.i85 = getelementptr inbounds %struct.list_head, ptr %msg.i.i81, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i81, ptr %prev.i.i.i.i.i.i85, align 4
  %resources.i.i.i.i.i86 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i81, i32 0, i32 10
  %27 = ptrtoint ptr %resources.i.i.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i.i.i.i86, ptr %resources.i.i.i.i.i86, align 4
  %prev.i2.i.i.i.i.i87 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i81, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i2.i.i.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i.i.i.i86, ptr %prev.i2.i.i.i.i.i87, align 4
  %transfer_list.i.i.i.i88 = getelementptr inbounds %struct.spi_transfer, ptr %t.i82, i32 0, i32 18
  %call.i.i.i.i.i.i89 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i88, ptr noundef nonnull %msg.i.i81, ptr noundef nonnull %msg.i.i81) #5
  br i1 %call.i.i.i.i.i.i89, label %if.end.i.i.i.i.i.i91, label %if.else.spi_read.exit93_crit_edge

if.else.spi_read.exit93_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_read.exit93

if.end.i.i.i.i.i.i91:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.i.i.i88, ptr %prev.i.i.i.i.i.i85, align 4
  %30 = ptrtoint ptr %transfer_list.i.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i81, ptr %transfer_list.i.i.i.i88, align 4
  %prev3.i.i.i.i.i.i90 = getelementptr inbounds %struct.spi_transfer, ptr %t.i82, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i81, ptr %prev3.i.i.i.i.i.i90, align 4
  %32 = ptrtoint ptr %msg.i.i81 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.i.i.i88, ptr %msg.i.i81, align 4
  br label %spi_read.exit93

spi_read.exit93:                                  ; preds = %if.end.i.i.i.i.i.i91, %if.else.spi_read.exit93_crit_edge
  %call.i.i92 = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i.i81) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i81) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i82) #5
  br label %if.end29

if.end29:                                         ; preds = %spi_read.exit93, %spi_read.exit
  %ret.0 = phi i32 [ %call.i.i, %spi_read.exit ], [ %call.i.i92, %spi_read.exit93 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool30.not = icmp eq i32 %ret.0, 0
  br i1 %tobool30.not, label %if.end32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 429496) #5
  %34 = ptrtoint ptr %current_channel to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %channel, ptr %current_channel, align 16
  %35 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spi, align 4
  %bits_per_word35 = getelementptr inbounds %struct.spi_device, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %bits_per_word35 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bits_per_word35, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %38, label %do.end53 [
    i8 16, label %sw.bb
    i8 14, label %sw.bb40
    i8 8, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %buffer37 = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 9
  %40 = ptrtoint ptr %buffer37 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %buffer37, align 128
  %conv38 = zext i16 %41 to i32
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv38, ptr %val, align 4
  %resolution = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 5
  %43 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %resolution, align 4
  %conv39 = zext i8 %44 to i32
  %sub = sub nsw i32 16, %conv39
  %shr = lshr i32 %conv38, %sub
  store i32 %shr, ptr %val, align 4
  br label %cleanup

sw.bb40:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %buffer41 = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 9
  %45 = ptrtoint ptr %buffer41 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %buffer41, align 128
  %47 = and i16 %46, 16383
  %and43 = zext i16 %47 to i32
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and43, ptr %val, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %buf8b45 = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 10
  %49 = ptrtoint ptr %buf8b45 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %buf8b45, align 2
  %conv46 = zext i16 %50 to i32
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv46, ptr %val, align 4
  %resolution47 = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 5
  %52 = ptrtoint ptr %resolution47 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %resolution47, align 4
  %conv48 = zext i8 %53 to i32
  %sub49 = sub nsw i32 16, %conv48
  %shr50 = lshr i32 %conv46, %sub49
  store i32 %shr50, ptr %val, align 4
  br label %cleanup

do.end53:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %indio_dev = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 2
  %54 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %indio_dev, align 32
  %dev = getelementptr inbounds %struct.iio_dev, ptr %55, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %sw.bb44, %sw.bb40, %sw.bb, %if.end29.cleanup_crit_edge, %do.end12.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end53 ], [ %ret.0, %if.end29.cleanup_crit_edge ], [ 0, %sw.bb44 ], [ 0, %sw.bb40 ], [ 0, %sw.bb ], [ %call, %entry.cleanup_crit_edge ], [ %call.1, %do.end12.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7949_spi_write_cfg(ptr noundef %ad7949_adc, i16 noundef zeroext %val, i16 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  %msg.i.i56 = alloca %struct.spi_message, align 4
  %t.i57 = alloca %struct.spi_transfer, align 4
  %msg.i.i44 = alloca %struct.spi_message, align 4
  %t.i45 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and43 = and i16 %mask, %val
  %cfg = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 6
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cfg, align 2
  %neg = xor i16 %mask, -1
  %and4 = and i16 %1, %neg
  %or = or i16 %and4, %and43
  store i16 %or, ptr %cfg, align 2
  %spi = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 3
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits_per_word, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %5, label %do.end [
    i8 16, label %sw.bb
    i8 14, label %sw.bb13
    i8 8, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %shl = shl i16 %or, 2
  %buffer = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 9
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %shl, ptr %buffer, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %8 = getelementptr inbounds i8, ptr %t.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buffer, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %11 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %12 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %sw.bb.spi_write.exit_crit_edge

sw.bb.spi_write.exit_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %sw.bb.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %buffer15 = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 9
  %22 = ptrtoint ptr %buffer15 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %or, ptr %buffer15, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i45) #5
  %23 = getelementptr inbounds i8, ptr %t.i45, i32 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 92)
  %25 = ptrtoint ptr %t.i45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buffer15, ptr %t.i45, align 4
  %len1.i46 = getelementptr inbounds %struct.spi_transfer, ptr %t.i45, i32 0, i32 2
  %26 = ptrtoint ptr %len1.i46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %len1.i46, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i44) #5
  %27 = getelementptr inbounds i8, ptr %msg.i.i44, i32 8
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %29 = ptrtoint ptr %msg.i.i44 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %msg.i.i44, ptr %msg.i.i44, align 4
  %prev.i.i.i.i.i.i47 = getelementptr inbounds %struct.list_head, ptr %msg.i.i44, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i44, ptr %prev.i.i.i.i.i.i47, align 4
  %resources.i.i.i.i.i48 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i44, i32 0, i32 10
  %31 = ptrtoint ptr %resources.i.i.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %resources.i.i.i.i.i48, ptr %resources.i.i.i.i.i48, align 4
  %prev.i2.i.i.i.i.i49 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i44, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %prev.i2.i.i.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %resources.i.i.i.i.i48, ptr %prev.i2.i.i.i.i.i49, align 4
  %transfer_list.i.i.i.i50 = getelementptr inbounds %struct.spi_transfer, ptr %t.i45, i32 0, i32 18
  %call.i.i.i.i.i.i51 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i50, ptr noundef nonnull %msg.i.i44, ptr noundef nonnull %msg.i.i44) #5
  br i1 %call.i.i.i.i.i.i51, label %if.end.i.i.i.i.i.i53, label %sw.bb13.spi_write.exit55_crit_edge

sw.bb13.spi_write.exit55_crit_edge:               ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit55

if.end.i.i.i.i.i.i53:                             ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i47 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %transfer_list.i.i.i.i50, ptr %prev.i.i.i.i.i.i47, align 4
  %34 = ptrtoint ptr %transfer_list.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i44, ptr %transfer_list.i.i.i.i50, align 4
  %prev3.i.i.i.i.i.i52 = getelementptr inbounds %struct.spi_transfer, ptr %t.i45, i32 0, i32 18, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i44, ptr %prev3.i.i.i.i.i.i52, align 4
  %36 = ptrtoint ptr %msg.i.i44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %transfer_list.i.i.i.i50, ptr %msg.i.i44, align 4
  br label %spi_write.exit55

spi_write.exit55:                                 ; preds = %if.end.i.i.i.i.i.i53, %sw.bb13.spi_write.exit55_crit_edge
  %call.i.i54 = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i44) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i44) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i45) #5
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %shl22 = shl i16 %or, 2
  %buf8b = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 10
  %37 = ptrtoint ptr %buf8b to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %shl22, ptr %buf8b, align 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i57) #5
  %38 = getelementptr inbounds i8, ptr %t.i57, i32 4
  %39 = call ptr @memset(ptr %38, i32 0, i32 92)
  %40 = ptrtoint ptr %t.i57 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf8b, ptr %t.i57, align 4
  %len1.i58 = getelementptr inbounds %struct.spi_transfer, ptr %t.i57, i32 0, i32 2
  %41 = ptrtoint ptr %len1.i58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %len1.i58, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i56) #5
  %42 = getelementptr inbounds i8, ptr %msg.i.i56, i32 8
  %43 = call ptr @memset(ptr %42, i32 0, i32 40)
  %44 = ptrtoint ptr %msg.i.i56 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %msg.i.i56, ptr %msg.i.i56, align 4
  %prev.i.i.i.i.i.i59 = getelementptr inbounds %struct.list_head, ptr %msg.i.i56, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i56, ptr %prev.i.i.i.i.i.i59, align 4
  %resources.i.i.i.i.i60 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i56, i32 0, i32 10
  %46 = ptrtoint ptr %resources.i.i.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %resources.i.i.i.i.i60, ptr %resources.i.i.i.i.i60, align 4
  %prev.i2.i.i.i.i.i61 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i56, i32 0, i32 10, i32 1
  %47 = ptrtoint ptr %prev.i2.i.i.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %resources.i.i.i.i.i60, ptr %prev.i2.i.i.i.i.i61, align 4
  %transfer_list.i.i.i.i62 = getelementptr inbounds %struct.spi_transfer, ptr %t.i57, i32 0, i32 18
  %call.i.i.i.i.i.i63 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i62, ptr noundef nonnull %msg.i.i56, ptr noundef nonnull %msg.i.i56) #5
  br i1 %call.i.i.i.i.i.i63, label %if.end.i.i.i.i.i.i65, label %sw.bb19.spi_write.exit67_crit_edge

sw.bb19.spi_write.exit67_crit_edge:               ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit67

if.end.i.i.i.i.i.i65:                             ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %transfer_list.i.i.i.i62, ptr %prev.i.i.i.i.i.i59, align 4
  %49 = ptrtoint ptr %transfer_list.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %msg.i.i56, ptr %transfer_list.i.i.i.i62, align 4
  %prev3.i.i.i.i.i.i64 = getelementptr inbounds %struct.spi_transfer, ptr %t.i57, i32 0, i32 18, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i56, ptr %prev3.i.i.i.i.i.i64, align 4
  %51 = ptrtoint ptr %msg.i.i56 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %transfer_list.i.i.i.i62, ptr %msg.i.i56, align 4
  br label %spi_write.exit67

spi_write.exit67:                                 ; preds = %if.end.i.i.i.i.i.i65, %sw.bb19.spi_write.exit67_crit_edge
  %call.i.i66 = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i56) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i56) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i57) #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %indio_dev = getelementptr inbounds %struct.ad7949_adc_chip, ptr %ad7949_adc, i32 0, i32 2
  %52 = ptrtoint ptr %indio_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %indio_dev, align 32
  %dev = getelementptr inbounds %struct.iio_dev, ptr %53, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  br label %cleanup

sw.epilog:                                        ; preds = %spi_write.exit67, %spi_write.exit55, %spi_write.exit
  %ret.0 = phi i32 [ %call.i.i66, %spi_write.exit67 ], [ %call.i.i54, %spi_write.exit55 ], [ %call.i.i, %spi_write.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 429496) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_ad7949__330_438_ad7949_spi_driver_init6, !1, !"__initcall__kmod_ad7949__330_438_ad7949_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7949.c", i32 438, i32 1}
!2 = !{ptr @__exitcall_ad7949_spi_driver_exit, !1, !"__exitcall_ad7949_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author331, !4, !"__UNIQUE_ID_author331", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7949.c", i32 440, i32 1}
!5 = !{ptr @__UNIQUE_ID_description332, !6, !"__UNIQUE_ID_description332", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7949.c", i32 441, i32 1}
!7 = !{ptr @__UNIQUE_ID_file333, !8, !"__UNIQUE_ID_file333", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7949.c", i32 442, i32 1}
!9 = !{ptr @__UNIQUE_ID_license334, !8, !"__UNIQUE_ID_license334", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7949.c", i32 432, i32 12}
!12 = !{ptr @ad7949_spi_driver, !13, !"ad7949_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7949.c", i32 430, i32 26}
!14 = !{ptr @ad7949_spi_id, !15, !"ad7949_spi_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7949.c", i32 422, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7949.c", i32 321, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ad7949_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ad7949_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ad7949.c", i32 347, i32 3}
!26 = !{ptr @ad7949_spi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ad7949_spi_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ad7949.c", i32 353, i32 32}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ad7949.c", i32 363, i32 3}
!32 = !{ptr @ad7949_spi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ad7949_spi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ad7949.c", i32 368, i32 54}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ad7949.c", i32 374, i32 55}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/ad7949.c", i32 389, i32 4}
!40 = !{ptr @ad7949_spi_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ad7949_spi_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @ad7949_spi_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/ad7949.c", i32 399, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/ad7949.c", i32 403, i32 3}
!47 = !{ptr @ad7949_spi_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ad7949_spi_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/ad7949.c", i32 409, i32 3}
!51 = !{ptr @ad7949_spi_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ad7949_spi_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @ad7949_spi_info, !54, !"ad7949_spi_info", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/ad7949.c", i32 271, i32 30}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/ad7949.c", i32 182, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ad7949_spi_read_channel._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ad7949_spi_read_channel._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/ad7949.c", i32 115, i32 3}
!62 = !{ptr @ad7949_spi_write_cfg._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ad7949_spi_write_cfg._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @ad7949_adc_channels, !65, !"ad7949_adc_channels", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/ad7949.c", i32 197, i32 35}
!66 = !{ptr @ad7949_adc_spec, !67, !"ad7949_adc_spec", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/ad7949.c", i32 61, i32 37}
!68 = !{ptr @ad7949_spi_of_id, !69, !"ad7949_spi_of_id", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/ad7949.c", i32 414, i32 34}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
