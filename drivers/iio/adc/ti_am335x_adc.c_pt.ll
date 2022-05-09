; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti_am335x_adc.c_pt.bc'
source_filename = "../drivers/iio/adc/ti_am335x_adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
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
%struct.tiadc_device = type { ptr, %struct.tiadc_dma, %struct.mutex, i32, i32, [8 x i8], [8 x i8], i32, [8 x i16], [8 x i32], [8 x i32], [8 x i32] }
%struct.tiadc_dma = type { %struct.dma_slave_config, ptr, i32, i32, ptr, i32, i32, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.ti_tscadc_dev = type { ptr, ptr, ptr, i32, ptr, i32, [2 x %struct.mfd_cell], i32, i32, i8, i8, %struct.wait_queue_head, %struct.spinlock, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.76, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.76 = type { i8, i8, i8, i8, i8, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_ti_am335x_adc__301_755_tiadc_driver_init6 = internal global ptr @tiadc_driver_init, section ".initcall6.init", align 4
@tiadc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tiadc_probe, ptr @tiadc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_adc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tiadc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tiadc_driver_exit = internal global ptr @tiadc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [51 x i8] c"ti_am335x_adc.description=TI ADC controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [50 x i8] c"ti_am335x_adc.author=Rachna Patil <rachna@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [49 x i8] c"ti_am335x_adc.file=drivers/iio/adc/ti_am335x_adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [26 x i8] c"ti_am335x_adc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TI-am335x-adc\00", [18 x i8] zeroinitializer }, align 32
@ti_adc_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3359-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tiadc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tiadc_suspend, ptr @tiadc_resume, ptr @tiadc_suspend, ptr @tiadc_resume, ptr @tiadc_suspend, ptr @tiadc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tiadc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 634, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not find valid DT data.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tiadc_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/adc/ti_am335x_adc.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tiadc_probe._entry_ptr = internal global ptr @tiadc_probe._entry, section ".printk_index", align 4
@tiadc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@tiadc_probe._entry_ptr.8 = internal global ptr @tiadc_probe._entry.6, section ".printk_index", align 4
@tiadc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @tiadc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tiadc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adc_dev->fifo1_lock\00", [43 x i8] zeroinitializer }, align 32
@tiadc_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @tiadc_buffer_preenable, ptr @tiadc_buffer_postenable, ptr @tiadc_buffer_predisable, ptr @tiadc_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,adc-channels\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,chan-step-avg\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,chan-step-opendelay\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,chan-step-sampledelay\00", [39 x i8] zeroinitializer }, align 32
@tiadc_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 604, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"chan %d: wrong step avg, truncated to %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tiadc_parse_dt\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tiadc_parse_dt._entry_ptr = internal global ptr @tiadc_parse_dt._entry, section ".printk_index", align 4
@tiadc_parse_dt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 611, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"chan %d: wrong open delay, truncated to 0x%lX\0A\00", [49 x i8] zeroinitializer }, align 32
@tiadc_parse_dt._entry_ptr.19 = internal global ptr @tiadc_parse_dt._entry.17, section ".printk_index", align 4
@tiadc_parse_dt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.3, i32 618, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"chan %d: wrong sample delay, truncated to 0x%lX\0A\00", [47 x i8] zeroinitializer }, align 32
@tiadc_parse_dt._entry_ptr.22 = internal global ptr @tiadc_parse_dt._entry.20, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@chan_name_ain = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN0\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN3\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN4\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN5\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN6\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN7\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fifo1\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"tiadc_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 746, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 748, i32 13 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"ti_adc_dt_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 739, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"tiadc_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 737, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 634, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 640, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"tiadc_info\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 526, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 654, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"tiadc_buffer_setup_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 363, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 576, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 589, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 591, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 593, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 602, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 609, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 616, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"chan_name_ain\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 389, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 390, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 391, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 392, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 393, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 394, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 395, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 396, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 397, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [35 x i8] c"../drivers/iio/adc/ti_am335x_adc.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 545, i32 57 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_tiadc_driver_exit, ptr @__initcall__kmod_ti_am335x_adc__301_755_tiadc_driver_init6, ptr @tiadc_driver_exit, ptr @tiadc_parse_dt._entry, ptr @tiadc_parse_dt._entry.17, ptr @tiadc_parse_dt._entry.20, ptr @tiadc_parse_dt._entry_ptr, ptr @tiadc_parse_dt._entry_ptr.19, ptr @tiadc_parse_dt._entry_ptr.22, ptr @tiadc_probe._entry, ptr @tiadc_probe._entry.6, ptr @tiadc_probe._entry_ptr, ptr @tiadc_probe._entry_ptr.8, ptr @tiadc_driver, ptr @.str, ptr @ti_adc_dt_ids, ptr @tiadc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @tiadc_info, ptr @tiadc_probe.__key, ptr @.str.9, ptr @tiadc_buffer_setup_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @chan_name_ain, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiadc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_adc_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiadc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiadc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiadc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiadc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiadc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiadc_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiadc_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiadc_parse_dt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiadc_parse_dt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_name_ain to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tiadc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tiadc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tiadc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 312) #6
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %3, align 4
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i, align 4, !annotation !88
  %call.i = tail call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %call1.i = call ptr @of_prop_next_u32(ptr noundef %call.i, ptr noundef null, ptr noundef nonnull %val.i) #6
  %tobool.not3.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not3.i, label %if.end9.for.end.i_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.for.end.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %cur.05.i = phi ptr [ %call33.i, %for.body.i.for.body.i_crit_edge ], [ %call1.i, %if.end9.for.body.i_crit_edge ]
  %channels.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %13 to i8
  %arrayidx.i = getelementptr %struct.tiadc_device, ptr %3, i32 0, i32 5, i32 %channels.04.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %arrayidx14.i = getelementptr %struct.tiadc_device, ptr %3, i32 0, i32 9, i32 %channels.04.i
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 152, ptr %arrayidx14.i, align 4
  %arrayidx31.i = getelementptr %struct.tiadc_device, ptr %3, i32 0, i32 10, i32 %channels.04.i
  %16 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx31.i, align 4
  %arrayidx32.i = getelementptr %struct.tiadc_device, ptr %3, i32 0, i32 11, i32 %channels.04.i
  %17 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %arrayidx32.i, align 4
  %inc.i = add i32 %channels.04.i, 1
  %call33.i = call ptr @of_prop_next_u32(ptr noundef %call.i, ptr noundef nonnull %cur.05.i, ptr noundef nonnull %val.i) #6
  %tobool.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end9.for.end.i_crit_edge
  %channels.0.lcssa.i = phi i32 [ 0, %if.end9.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %channels34.i = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %channels34.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %channels.0.lcssa.i, ptr %channels34.i, align 4
  %step_avg35.i = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 11
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.11, ptr noundef %step_avg35.i, i32 noundef %channels.0.lcssa.i, i32 noundef 0) #6
  %open_delay37.i = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 9
  %call.i1.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.12, ptr noundef %open_delay37.i, i32 noundef %channels.0.lcssa.i, i32 noundef 0) #6
  %sample_delay40.i = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 10
  %call.i2.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.13, ptr noundef %sample_delay40.i, i32 noundef %channels.0.lcssa.i, i32 noundef 0) #6
  %19 = ptrtoint ptr %channels34.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channels34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp6.i = icmp sgt i32 %20, 0
  br i1 %cmp6.i, label %for.end.i.for.body46.i_crit_edge, label %for.end.i.tiadc_parse_dt.exit_crit_edge

for.end.i.tiadc_parse_dt.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tiadc_parse_dt.exit

for.end.i.for.body46.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body46.i

for.body46.i:                                     ; preds = %if.end131.i.for.body46.i_crit_edge, %for.end.i.for.body46.i_crit_edge
  %i.07.i = phi i32 [ %inc133.i, %if.end131.i.for.body46.i_crit_edge ], [ 0, %for.end.i.for.body46.i_crit_edge ]
  %arrayidx48.i = getelementptr %struct.tiadc_device, ptr %3, i32 0, i32 5, i32 %i.07.i
  %21 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %22 to i32
  %arrayidx51.i = getelementptr %struct.tiadc_device, ptr %3, i32 0, i32 11, i32 %i.07.i
  %23 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %cmp68.i = icmp ugt i32 %24, 16
  br i1 %cmp68.i, label %do.end72.i, label %for.body46.i.if.end.i_crit_edge

for.body46.i.if.end.i_crit_edge:                  ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end72.i:                                       ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv49.i, i32 noundef 16) #9
  %25 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %arrayidx51.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end72.i, %for.body46.i.if.end.i_crit_edge
  %arrayidx109.i = getelementptr %struct.tiadc_device, ptr %3, i32 0, i32 9, i32 %i.07.i
  %26 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %27)
  %cmp110.i = icmp ugt i32 %27, 262143
  br i1 %cmp110.i, label %do.end115.i, label %if.end.i.if.end119.i_crit_edge

if.end.i.if.end119.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119.i

do.end115.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv49.i, i32 noundef 262143) #9
  %28 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 262143, ptr %arrayidx109.i, align 4
  br label %if.end119.i

if.end119.i:                                      ; preds = %do.end115.i, %if.end.i.if.end119.i_crit_edge
  %arrayidx121.i = getelementptr %struct.tiadc_device, ptr %3, i32 0, i32 10, i32 %i.07.i
  %29 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx121.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %30)
  %cmp122.i = icmp ugt i32 %30, 255
  br i1 %cmp122.i, label %do.end127.i, label %if.end119.i.if.end131.i_crit_edge

if.end119.i.if.end131.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131.i

do.end127.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv49.i, i32 noundef 255) #9
  %31 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 255, ptr %arrayidx121.i, align 4
  br label %if.end131.i

if.end131.i:                                      ; preds = %do.end127.i, %if.end119.i.if.end131.i_crit_edge
  %inc133.i = add nuw nsw i32 %i.07.i, 1
  %32 = ptrtoint ptr %channels34.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channels34.i, align 4
  %cmp.i = icmp slt i32 %inc133.i, %33
  br i1 %cmp.i, label %if.end131.i.for.body46.i_crit_edge, label %if.end131.i.tiadc_parse_dt.exit_crit_edge

if.end131.i.tiadc_parse_dt.exit_crit_edge:        ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tiadc_parse_dt.exit

if.end131.i.for.body46.i_crit_edge:               ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46.i

tiadc_parse_dt.exit:                              ; preds = %if.end131.i.tiadc_parse_dt.exit_crit_edge, %for.end.i.tiadc_parse_dt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i74 = icmp eq ptr %35, null
  br i1 %tobool.not.i74, label %if.end.i75, label %tiadc_parse_dt.exit.dev_name.exit_crit_edge

tiadc_parse_dt.exit.dev_name.exit_crit_edge:      ; preds = %tiadc_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i75:                                       ; preds = %tiadc_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i75, %tiadc_parse_dt.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %37, %if.end.i75 ], [ %35, %tiadc_parse_dt.exit.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %38 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.0.i, ptr %name, align 8
  %39 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %40 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @tiadc_info, ptr %info, align 8
  call fastcc void @tiadc_step_config(ptr noundef nonnull %call)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %44, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 318767104) #6, !srcloc !90
  %fifo1_lock = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 2
  call void @__mutex_init(ptr noundef %fifo1_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @tiadc_probe.__key) #6
  %45 = ptrtoint ptr %channels34.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channels34.i, align 4
  %47 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i, align 8
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %49 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %num_channels.i, align 4
  %50 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %46, i32 88) #6
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %dev_name.exit.cleanup_crit_edge, label %devm_kcalloc.exit.i, !prof !91

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %dev_name.exit
  %52 = extractvalue { i32, i1 } %50, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %52, i32 noundef 3520) #6
  %tobool.not.i76 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i76, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp32.not.i = icmp eq i32 %46, 0
  br i1 %cmp32.not.i, label %for.cond.preheader.i.if.end21_crit_edge, label %for.cond.preheader.i.for.body.i80_crit_edge

for.cond.preheader.i.for.body.i80_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i80

for.cond.preheader.i.if.end21_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.body.i80:                                     ; preds = %for.body.i80.for.body.i80_crit_edge, %for.cond.preheader.i.for.body.i80_crit_edge
  %i.034.i = phi i32 [ %inc.i79, %for.body.i80.for.body.i80_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i80_crit_edge ]
  %chan.033.i = phi ptr [ %incdec.ptr.i, %for.body.i80.for.body.i80_crit_edge ], [ %call5.i.i.i, %for.cond.preheader.i.for.body.i80_crit_edge ]
  %53 = ptrtoint ptr %chan.033.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %chan.033.i, align 4
  %indexed.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.033.i, i32 0, i32 19
  %54 = ptrtoint ptr %indexed.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i = load i8, ptr %indexed.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %indexed.i, align 4
  %arrayidx.i77 = getelementptr %struct.tiadc_device, ptr %48, i32 0, i32 5, i32 %i.034.i
  %55 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i77, align 1
  %conv.i78 = zext i8 %56 to i32
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.033.i, i32 0, i32 1
  %57 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv.i78, ptr %channel.i, align 4
  %info_mask_separate.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.033.i, i32 0, i32 6
  %58 = ptrtoint ptr %info_mask_separate.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %info_mask_separate.i, align 4
  %info_mask_shared_by_type.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.033.i, i32 0, i32 8
  %59 = ptrtoint ptr %info_mask_shared_by_type.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %info_mask_shared_by_type.i, align 4
  %arrayidx3.i = getelementptr [8 x ptr], ptr @chan_name_ain, i32 0, i32 %conv.i78
  %60 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx3.i, align 4
  %datasheet_name.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.033.i, i32 0, i32 18
  %62 = ptrtoint ptr %datasheet_name.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %datasheet_name.i, align 4
  %scan_index.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.033.i, i32 0, i32 4
  %63 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %i.034.i, ptr %scan_index.i, align 4
  %scan_type.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.033.i, i32 0, i32 5
  %64 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 117, ptr %scan_type.i, align 4
  %realbits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.033.i, i32 0, i32 5, i32 1
  %65 = ptrtoint ptr %realbits.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 12, ptr %realbits.i, align 1
  %storagebits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan.033.i, i32 0, i32 5, i32 2
  %66 = ptrtoint ptr %storagebits.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 16, ptr %storagebits.i, align 2
  %inc.i79 = add nuw nsw i32 %i.034.i, 1
  %incdec.ptr.i = getelementptr %struct.iio_chan_spec, ptr %chan.033.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i79, %46
  br i1 %exitcond.not.i, label %for.body.i80.if.end21_crit_edge, label %for.body.i80.for.body.i80_crit_edge

for.body.i80.for.body.i80_crit_edge:              ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i80

for.body.i80.if.end21_crit_edge:                  ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %for.body.i80.if.end21_crit_edge, %for.cond.preheader.i.if.end21_crit_edge
  %channels6.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %67 = ptrtoint ptr %channels6.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call5.i.i.i, ptr %channels6.i, align 8
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 4
  %irq = getelementptr inbounds %struct.ti_tscadc_dev, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 4
  %call.i83 = call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, i32 noundef 4, ptr noundef nonnull @tiadc_buffer_setup_ops, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %tiadc_iio_buffered_hardware_setup.exit, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tiadc_iio_buffered_hardware_setup.exit:           ; preds = %if.end21
  %72 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name, align 8
  %call1.i85 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %71, ptr noundef nonnull @tiadc_irq_h, ptr noundef nonnull @tiadc_worker_h, i32 noundef 128, ptr noundef %73, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool25.not = icmp eq i32 %call1.i85, 0
  br i1 %tobool25.not, label %if.end27, label %tiadc_iio_buffered_hardware_setup.exit.cleanup_crit_edge

tiadc_iio_buffered_hardware_setup.exit.cleanup_crit_edge: ; preds = %tiadc_iio_buffered_hardware_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %tiadc_iio_buffered_hardware_setup.exit
  %call28 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %74 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call, ptr %driver_data.i.i, align 4
  %dma1.i = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #6
  %75 = ptrtoint ptr %dma1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %dma1.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 1, i32 0, i32 3
  %76 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %src_addr_width.i, align 4
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %3, align 4
  %tscadc_phys_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %tscadc_phys_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tscadc_phys_base.i, align 4
  %add.i = add i32 %80, 512
  %src_addr.i = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 1, i32 0, i32 1
  %81 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i, ptr %src_addr.i, align 4
  %82 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %mask.i, align 4
  call void @_set_bit(i32 noundef 12, ptr noundef nonnull %mask.i) #6
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %3, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %call.i88 = call ptr @dma_request_chan(ptr noundef %86, ptr noundef nonnull @.str.31) #6
  %chan.i = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i88, ptr %chan.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %tiadc_request_dma.exit, label %if.end.i91

if.end.i91:                                       ; preds = %if.end31
  %88 = ptrtoint ptr %call.i88 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i88, align 4
  %dev11.i = getelementptr inbounds %struct.dma_device, ptr %89, i32 0, i32 15
  %90 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev11.i, align 4
  %addr.i = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 1, i32 2
  %call.i.i89 = call ptr @dma_alloc_attrs(ptr noundef %91, i32 noundef 2048, ptr noundef %addr.i, i32 noundef 3264, i32 noundef 0) #6
  %buf.i = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 1, i32 4
  %92 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i.i89, ptr %buf.i, align 4
  %tobool.not.i90 = icmp eq ptr %call.i.i89, null
  br i1 %tobool.not.i90, label %err.i, label %if.end.i91.tiadc_request_dma.exit.thread_crit_edge

if.end.i91.tiadc_request_dma.exit.thread_crit_edge: ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %tiadc_request_dma.exit.thread

err.i:                                            ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %chan.i, align 4
  call void @dma_release_channel(ptr noundef %94) #6
  br label %tiadc_request_dma.exit.thread

tiadc_request_dma.exit.thread:                    ; preds = %err.i, %if.end.i91.tiadc_request_dma.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #6
  br label %cleanup

tiadc_request_dma.exit:                           ; preds = %if.end31
  %95 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %chan.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #6
  %cond = icmp eq ptr %call.i88, inttoptr (i32 -517 to ptr)
  br i1 %cond, label %err_dma, label %tiadc_request_dma.exit.cleanup_crit_edge

tiadc_request_dma.exit.cleanup_crit_edge:         ; preds = %tiadc_request_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_dma:                                          ; preds = %tiadc_request_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @iio_device_unregister(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err_dma, %tiadc_request_dma.exit.cleanup_crit_edge, %tiadc_request_dma.exit.thread, %if.end27.cleanup_crit_edge, %tiadc_iio_buffered_hardware_setup.exit.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -517, %err_dma ], [ -12, %do.end7 ], [ -22, %do.end ], [ %call1.i85, %tiadc_iio_buffered_hardware_setup.exit.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ 0, %tiadc_request_dma.exit.cleanup_crit_edge ], [ 0, %tiadc_request_dma.exit.thread ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ %call.i83, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %chan = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %buf = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %addr = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 2048, ptr noundef %11, i32 noundef %13, i32 noundef 0) #6
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan, align 4
  tail call void @dma_release_channel(ptr noundef %15) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @iio_device_unregister(ptr noundef %1) #6
  %channels.i = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels.i, align 4
  %notmask.i = shl nsw i32 -1, %17
  %sub.i = xor i32 %notmask.i, -1
  %add.i = sub i32 17, %17
  %shl3.i = shl i32 %sub.i, %add.i
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  tail call void @am335x_tsc_se_clr(ptr noundef %19, i32 noundef %shl3.i) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tiadc_step_config(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channels = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp232 = icmp sgt i32 %3, 0
  br i1 %cmp232, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0234 = phi i32 [ 0, %for.body.lr.ph ], [ %inc189, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 5, i32 %i.0234
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %arrayidx1 = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 11, i32 %i.0234
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.cttz.i32(i32 %7, i1 true), !range !92
  %.op = shl nuw nsw i32 %8, 2
  %.op.op = and i32 %.op, 28
  %.op.op.op = or i32 %.op.op, 67108864
  %stepconfig.0 = select i1 %tobool.not, i32 67108864, i32 %.op.op.op
  %mul = shl i32 %i.0234, 3
  %add = add i32 %mul, 100
  %9 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %10, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp ne i32 %and.i, 0
  %or48 = zext i1 %tobool.i.not to i32
  %shl72 = shl nuw nsw i32 %conv, 19
  %and73 = and i32 %shl72, 7864320
  %spec.select = or i32 %and73, %stepconfig.0
  %or74 = or i32 %spec.select, %or48
  %or125 = or i32 %or74, 25440256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or125) #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !90
  %add127 = add i32 %mul, 104
  %arrayidx135 = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 9, i32 %i.0234
  %16 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx135, align 4
  %arrayidx164 = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 10, i32 %i.0234
  %18 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx164, align 4
  %and156 = and i32 %17, 262143
  %shl184 = shl i32 %19, 24
  %or186 = or i32 %shl184, %and156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or186) #6
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %tscadc_base.i230 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %tscadc_base.i230 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tscadc_base.i230, align 8
  %add.ptr.i231 = getelementptr i8, ptr %24, i32 %add127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231, i32 %20) #6, !srcloc !90
  %conv187 = trunc i32 %i.0234 to i8
  %arrayidx188 = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 6, i32 %i.0234
  %25 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv187, ptr %arrayidx188, align 1
  %inc189 = add nuw nsw i32 %i.0234, 1
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channels, align 4
  %cmp = icmp slt i32 %inc189, %27
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_worker_h(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %data1 = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 240
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp30 = icmp sgt i32 %7, 0
  br i1 %cmp30, label %for.cond3.preheader.lr.ph, label %entry.for.end9_crit_edge

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end9

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 4
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.end.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %k.031 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %add, %for.end.for.cond3.preheader_crit_edge ]
  %8 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp428 = icmp sgt i32 %9, 1
  br i1 %cmp428, label %for.cond3.preheader.for.body5_crit_edge, label %for.cond3.preheader.for.end_crit_edge

for.cond3.preheader.for.end_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %i.029 = phi i32 [ %inc, %for.body5.for.body5_crit_edge ], [ 0, %for.cond3.preheader.for.body5_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %tscadc_base.i21 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %tscadc_base.i21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tscadc_base.i21, align 8
  %add.ptr.i22 = getelementptr i8, ptr %13, i32 512
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #6, !srcloc !93
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %16 = trunc i32 %15 to i16
  %conv = and i16 %16, 4095
  %arrayidx = getelementptr i16, ptr %data1, i32 %i.029
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.029, 1
  %18 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_bytes, align 4
  %div = sdiv i32 %19, 2
  %cmp4 = icmp slt i32 %inc, %div
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.end_crit_edge

for.body5.for.end_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5

for.end:                                          ; preds = %for.body5.for.end_crit_edge, %for.cond3.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond3.preheader.for.end_crit_edge ], [ %inc, %for.body5.for.end_crit_edge ]
  %call7 = tail call i32 @iio_push_to_buffers(ptr noundef %private, ptr noundef %data1) #6
  %add = add i32 %i.0.lcssa, %k.031
  %cmp = icmp slt i32 %add, %7
  br i1 %cmp, label %for.end.for.cond3.preheader_crit_edge, label %for.end.for.end9_crit_edge

for.end.for.end9_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end9

for.end.for.cond3.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond3.preheader

for.end9:                                         ; preds = %for.end.for.end9_crit_edge, %entry.for.end9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %tscadc_base.i23 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %tscadc_base.i23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tscadc_base.i23, align 8
  %add.ptr.i24 = getelementptr i8, ptr %23, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 536870912) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %tscadc_base.i25 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %tscadc_base.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tscadc_base.i25, align 8
  %add.ptr.i26 = getelementptr i8, ptr %27, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 536870912) #6, !srcloc !90
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_irq_h(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
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
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tscadc_base.i25 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %tscadc_base.i25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tscadc_base.i25, align 8
  %add.ptr.i26 = getelementptr i8, ptr %11, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #6, !srcloc !93
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %and3 = and i32 %13, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %and3) #6
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %tscadc_base.i27 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %tscadc_base.i27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tscadc_base.i27, align 8
  %add.ptr.i28 = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %14) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %tscadc_base.i29 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %tscadc_base.i29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tscadc_base.i29, align 8
  %add.ptr.i30 = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 -536870912) #6, !srcloc !90
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then
  %count.0 = phi i16 [ 0, %if.then ], [ %inc, %do.body.do.body_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %tscadc_base.i31 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %tscadc_base.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tscadc_base.i31, align 8
  %add.ptr.i32 = getelementptr i8, ptr %26, i32 68
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %27)
  %cmp.not = icmp ne i32 %27, 268435456
  %inc = add nuw nsw i16 %count.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %count.0)
  %cmp5 = icmp ult i16 %count.0, 100
  %or.cond = select i1 %cmp.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %13, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %tscadc_base.i33 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %tscadc_base.i33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tscadc_base.i33, align 8
  %add.ptr.i34 = getelementptr i8, ptr %32, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %28) #6, !srcloc !90
  br label %cleanup

if.else:                                          ; preds = %entry
  %and7 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %tscadc_base.i35 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %tscadc_base.i35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tscadc_base.i35, align 8
  %add.ptr.i36 = getelementptr i8, ptr %36, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 536870912) #6, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 2, %if.then9 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
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
    i32 0, label %sw.epilog
    i32 2, label %sw.bb
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cond52 = icmp eq i32 %4, 0
  br i1 %cond52, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1800, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %realbits, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %val2, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %9 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %10, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %11 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel.i, align 4
  %arrayidx.i = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 5, i32 0
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.i)
  %cmp1.i = icmp eq i32 %12, %conv.i
  br i1 %cmp1.i, label %if.end.get_adc_chan_step_mask.exit_crit_edge, label %for.inc.i

if.end.get_adc_chan_step_mask.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_adc_chan_step_mask.exit

for.inc.i:                                        ; preds = %if.end
  %arrayidx.1.i = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.1.i)
  %cmp1.1.i = icmp eq i32 %12, %conv.1.i
  br i1 %cmp1.1.i, label %for.inc.i.get_adc_chan_step_mask.exit_crit_edge, label %for.inc.1.i

for.inc.i.get_adc_chan_step_mask.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_adc_chan_step_mask.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.2.i)
  %cmp1.2.i = icmp eq i32 %12, %conv.2.i
  br i1 %cmp1.2.i, label %for.inc.1.i.get_adc_chan_step_mask.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.get_adc_chan_step_mask.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_adc_chan_step_mask.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.3.i)
  %cmp1.3.i = icmp eq i32 %12, %conv.3.i
  br i1 %cmp1.3.i, label %for.inc.2.i.get_adc_chan_step_mask.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.get_adc_chan_step_mask.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_adc_chan_step_mask.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 5, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.4.i)
  %cmp1.4.i = icmp eq i32 %12, %conv.4.i
  br i1 %cmp1.4.i, label %for.inc.3.i.get_adc_chan_step_mask.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.get_adc_chan_step_mask.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_adc_chan_step_mask.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 5, i32 5
  %23 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.5.i)
  %cmp1.5.i = icmp eq i32 %12, %conv.5.i
  br i1 %cmp1.5.i, label %for.inc.4.i.get_adc_chan_step_mask.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.get_adc_chan_step_mask.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_adc_chan_step_mask.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 5, i32 6
  %25 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.6.i, align 1
  %conv.6.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.6.i)
  %cmp1.6.i = icmp eq i32 %12, %conv.6.i
  br i1 %cmp1.6.i, label %for.inc.5.i.get_adc_chan_step_mask.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.get_adc_chan_step_mask.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_adc_chan_step_mask.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 5, i32 7
  %27 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.7.i, align 1
  %conv.7.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.7.i)
  %cmp1.7.i = icmp eq i32 %12, %conv.7.i
  br i1 %cmp1.7.i, label %for.inc.6.i.get_adc_chan_step_mask.exit_crit_edge, label %get_adc_chan_step_mask.exit.thread

for.inc.6.i.get_adc_chan_step_mask.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_adc_chan_step_mask.exit

get_adc_chan_step_mask.exit.thread:               ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 89, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

get_adc_chan_step_mask.exit:                      ; preds = %for.inc.6.i.get_adc_chan_step_mask.exit_crit_edge, %for.inc.5.i.get_adc_chan_step_mask.exit_crit_edge, %for.inc.4.i.get_adc_chan_step_mask.exit_crit_edge, %for.inc.3.i.get_adc_chan_step_mask.exit_crit_edge, %for.inc.2.i.get_adc_chan_step_mask.exit_crit_edge, %for.inc.1.i.get_adc_chan_step_mask.exit_crit_edge, %for.inc.i.get_adc_chan_step_mask.exit_crit_edge, %if.end.get_adc_chan_step_mask.exit_crit_edge
  %i.027.lcssa.i = phi i32 [ 0, %if.end.get_adc_chan_step_mask.exit_crit_edge ], [ 1, %for.inc.i.get_adc_chan_step_mask.exit_crit_edge ], [ 2, %for.inc.1.i.get_adc_chan_step_mask.exit_crit_edge ], [ 3, %for.inc.2.i.get_adc_chan_step_mask.exit_crit_edge ], [ 4, %for.inc.3.i.get_adc_chan_step_mask.exit_crit_edge ], [ 5, %for.inc.4.i.get_adc_chan_step_mask.exit_crit_edge ], [ 6, %for.inc.5.i.get_adc_chan_step_mask.exit_crit_edge ], [ 7, %for.inc.6.i.get_adc_chan_step_mask.exit_crit_edge ]
  %arrayidx3.i = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 6, i32 %i.027.lcssa.i
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %30 to i32
  %shl.i = shl i32 2, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %30)
  %tobool.not = icmp ugt i8 %30, 30
  br i1 %tobool.not, label %get_adc_chan_step_mask.exit.cleanup_crit_edge, label %if.end6

get_adc_chan_step_mask.exit.cleanup_crit_edge:    ; preds = %get_adc_chan_step_mask.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %get_adc_chan_step_mask.exit
  %fifo1_lock = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %fifo1_lock, i32 noundef 0) #6
  %call7 = tail call fastcc i32 @tiadc_wait_idle(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.err_unlock.thread_crit_edge

if.end6.err_unlock.thread_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock.thread

if.end10:                                         ; preds = %if.end6
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %34, i32 240
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool12.not94 = icmp eq i32 %35, 0
  br i1 %tobool12.not94, label %if.end10.while.end_crit_edge, label %while.body.preheader

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %if.end10
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %fifo1count.095 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %36, %while.body.preheader ]
  %dec = add i32 %fifo1count.095, -1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %tscadc_base.i83 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %tscadc_base.i83 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tscadc_base.i83, align 8
  %add.ptr.i84 = getelementptr i8, ptr %40, i32 512
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end10.while.end_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  tail call void @am335x_tsc_se_set_once(ptr noundef %43, i32 noundef %shl.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %channels = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channels, align 4
  %mul = mul i32 %46, 83
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #6
  %add = add i32 %call2.i, %44
  br label %while.cond15

while.cond15:                                     ; preds = %if.end20.while.cond15_crit_edge, %while.end
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %tscadc_base.i85 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %tscadc_base.i85 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tscadc_base.i85, align 8
  %add.ptr.i86 = getelementptr i8, ptr %50, i32 240
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i86) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool18.not = icmp eq i32 %51, 0
  br i1 %tobool18.not, label %if.end20, label %for.body.preheader

if.end20:                                         ; preds = %while.cond15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %52
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then22, label %if.end20.while.cond15_crit_edge

if.end20.while.cond15_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond15

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  tail call void @am335x_tsc_se_adc_done(ptr noundef %54) #6
  br label %err_unlock.thread

for.body.preheader:                               ; preds = %while.cond15
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %55 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %scan_index, align 4
  %arrayidx = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 6, i32 %56
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx, align 1
  %conv26 = zext i8 %58 to i32
  %59 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  %umax = call i32 @llvm.umax.i32(i32 %59, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %found.0.off099 = phi i1 [ %found.1.off0, %for.inc.for.body_crit_edge ], [ false, %for.body.preheader ]
  %i.098 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %tscadc_base.i87 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %tscadc_base.i87 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tscadc_base.i87, align 8
  %add.ptr.i88 = getelementptr i8, ptr %63, i32 512
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #6, !srcloc !93
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %and = lshr i32 %65, 16
  %shr = and i32 %and, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv26)
  %cmp30 = icmp eq i32 %shr, %conv26
  br i1 %cmp30, label %if.then32, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv34 = and i32 %65, 4095
  %66 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv34, ptr %val, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %for.body.for.inc_crit_edge
  %found.1.off0 = phi i1 [ true, %if.then32 ], [ %found.0.off099, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  tail call void @am335x_tsc_se_adc_done(ptr noundef %68) #6
  br i1 %found.1.off0, label %69, label %for.end.err_unlock.thread_crit_edge

for.end.err_unlock.thread_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock.thread

err_unlock.thread:                                ; preds = %for.end.err_unlock.thread_crit_edge, %if.then22, %if.end6.err_unlock.thread_crit_edge
  %ret.0.ph = phi i32 [ -16, %for.end.err_unlock.thread_crit_edge ], [ -11, %if.then22 ], [ %call7, %if.end6.err_unlock.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %fifo1_lock) #6
  br label %cleanup

69:                                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %fifo1_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %69, %err_unlock.thread, %get_adc_chan_step_mask.exit.cleanup_crit_edge, %get_adc_chan_step_mask.exit.thread, %sw.epilog.cleanup_crit_edge, %sw.bb1, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb1 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -16, %sw.epilog.cleanup_crit_edge ], [ -22, %get_adc_chan_step_mask.exit.cleanup_crit_edge ], [ -22, %get_adc_chan_step_mask.exit.thread ], [ 1, %69 ], [ %ret.0.ph, %err_unlock.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tiadc_wait_idle(ptr nocapture noundef readonly %adc_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.tiadc_device, ptr %adc_dev, i32 0, i32 3
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channels, align 4
  %mul = mul i32 %1, 83000
  %conv = sext i32 %mul to i64
  %call = tail call i64 @ktime_get() #6
  %mul.i = mul nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 104) #6
  %2 = ptrtoint ptr %adc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adc_dev, align 4
  %tscadc_base42 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tscadc_base42 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tscadc_base42, align 8
  %add.ptr43 = getelementptr i8, ptr %5, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %7 = and i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not45 = icmp eq i32 %7, 0
  br i1 %tobool.not45, label %entry.for.end.thread_crit_edge, label %if.end12.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

if.end12.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool13.not = icmp eq i32 %mul, 0
  br label %if.end12

if.end12:                                         ; preds = %if.then29.if.end12_crit_edge, %if.end12.lr.ph
  br i1 %tobool13.not, label %if.end12.if.then29_crit_edge, label %land.lhs.true

if.end12.if.then29_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

land.lhs.true:                                    ; preds = %if.end12
  %call14 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.then29_crit_edge

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

if.then29:                                        ; preds = %land.lhs.true.if.then29_crit_edge, %if.end12.if.then29_crit_edge
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %8 = ptrtoint ptr %adc_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adc_dev, align 4
  %tscadc_base = getelementptr inbounds %struct.ti_tscadc_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %tscadc_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tscadc_base, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 68
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %13 = and i32 %12, 536870912
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then29.for.end.thread_crit_edge, label %if.then29.if.end12_crit_edge

if.then29.if.end12_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then29.for.end.thread_crit_edge:               ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %adc_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adc_dev, align 4
  %tscadc_base22 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %tscadc_base22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tscadc_base22, align 8
  %add.ptr23 = getelementptr i8, ptr %17, i32 68
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %19 = and i32 %18, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool33.not = icmp eq i32 %19, 0
  br i1 %tobool33.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %20

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then29.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %20

20:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %21 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @am335x_tsc_se_set_once(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @am335x_tsc_se_adc_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call fastcc i32 @tiadc_wait_idle(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -536870912) #6, !srcloc !90
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tscadc_base.i12 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %tscadc_base.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tscadc_base.i12, align 8
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 240
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #6, !srcloc !93
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp16 = icmp sgt i32 %11, 0
  br i1 %cmp16, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %tscadc_base.i14 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %tscadc_base.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tscadc_base.i14, align 8
  %add.ptr.i15 = getelementptr i8, ptr %15, i32 512
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_buffer_postenable(ptr noundef %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call fastcc void @tiadc_step_config(ptr noundef %indio_dev)
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %2 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_scan_mask, align 4
  %channels = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channels, align 4
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %3, i32 noundef %5, i32 noundef 0) #6
  %conv341 = and i32 %call2, 255
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv341, i32 %7)
  %cmp42 = icmp slt i32 %conv341, %7
  br i1 %cmp42, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %total_ch_enabled = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %7, %for.body.lr.ph ], [ %16, %for.body.for.body_crit_edge ]
  %conv344 = phi i32 [ %conv341, %for.body.lr.ph ], [ %conv3, %for.body.for.body_crit_edge ]
  %enb.043 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.tiadc_device, ptr %1, i32 0, i32 6, i32 %conv344
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  %shl = shl i32 2, %conv.i
  %or = or i32 %shl, %enb.043
  %11 = ptrtoint ptr %total_ch_enabled to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_ch_enabled, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %total_ch_enabled, align 4
  %13 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %active_scan_mask, align 4
  %add = add nuw nsw i32 %conv344, 1
  %call11 = tail call i32 @_find_next_bit_be(ptr noundef %14, i32 noundef %8, i32 noundef %add) #6
  %conv3 = and i32 %call11, 255
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channels, align 4
  %cmp = icmp slt i32 %conv3, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %enb.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %buffer_en_ch_steps = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %buffer_en_ch_steps to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %enb.0.lcssa, ptr %buffer_en_ch_steps, align 4
  %chan = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %current_period.i = getelementptr inbounds %struct.tiadc_device, ptr %21, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %current_period.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %current_period.i, align 4
  %total_ch_enabled.i = getelementptr inbounds %struct.tiadc_device, ptr %21, i32 0, i32 4
  %23 = ptrtoint ptr %total_ch_enabled.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_ch_enabled.i, align 4
  %rem.i = srem i32 20, %24
  %25 = trunc i32 %rem.i to i8
  %conv.i38 = sub nsw i8 19, %25
  %fifo_thresh.i = getelementptr inbounds %struct.tiadc_device, ptr %21, i32 0, i32 1, i32 7
  %26 = ptrtoint ptr %fifo_thresh.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i38, ptr %fifo_thresh.i, align 4
  %conv6.i = zext i8 %conv.i38 to i32
  %conv6.tr.i = zext i8 %conv.i38 to i16
  %27 = shl nuw nsw i16 %conv6.tr.i, 1
  %rem7.rhs.trunc.i = add nuw nsw i16 %27, 2
  %rem710.i = urem i16 1024, %rem7.rhs.trunc.i
  %narrow.i = sub nuw nsw i16 1024, %rem710.i
  %sub8.i = zext i16 %narrow.i to i32
  %period_size.i = getelementptr inbounds %struct.tiadc_device, ptr %21, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %period_size.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub8.i, ptr %period_size.i, align 4
  %add11.i = add nuw nsw i32 %conv6.i, 1
  %src_maxburst.i = getelementptr inbounds %struct.tiadc_device, ptr %21, i32 0, i32 1, i32 0, i32 5
  %29 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add11.i, ptr %src_maxburst.i, align 4
  %chan.i = getelementptr inbounds %struct.tiadc_device, ptr %21, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i

if.then.dmaengine_slave_config.exit.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_slave_config.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dma1.i = getelementptr inbounds %struct.tiadc_device, ptr %21, i32 0, i32 1
  %call.i.i = tail call i32 %35(ptr noundef %31, ptr noundef %dma1.i) #6
  %36 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr.i = load ptr, ptr %chan.i, align 4
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i, %if.then.dmaengine_slave_config.exit.i_crit_edge
  %37 = phi ptr [ %31, %if.then.dmaengine_slave_config.exit.i_crit_edge ], [ %.pr.i, %if.then.i.i ]
  %addr.i = getelementptr inbounds %struct.tiadc_device, ptr %21, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 4
  %40 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %period_size.i, align 4
  %mul16.i = shl i32 %41, 1
  %tobool.not.i1.i = icmp eq ptr %37, null
  br i1 %tobool.not.i1.i, label %dmaengine_slave_config.exit.i.if.end_crit_edge, label %lor.lhs.false.i.i

dmaengine_slave_config.exit.i.if.end_crit_edge:   ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i.i:                                ; preds = %dmaengine_slave_config.exit.i
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %37, align 4
  %tobool1.not.i.i = icmp eq ptr %43, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.end_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_dma_cyclic.i.i = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 40
  %44 = ptrtoint ptr %device_prep_dma_cyclic.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_prep_dma_cyclic.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.if.end_crit_edge, label %dmaengine_prep_dma_cyclic.exit.i

lor.lhs.false2.i.i.if.end_crit_edge:              ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dmaengine_prep_dma_cyclic.exit.i:                 ; preds = %lor.lhs.false2.i.i
  %call.i2.i = tail call ptr %45(ptr noundef nonnull %37, i32 noundef %39, i32 noundef %mul16.i, i32 noundef %41, i32 noundef 2, i32 noundef 1) #6
  %tobool.not.i = icmp eq ptr %call.i2.i, null
  br i1 %tobool.not.i, label %dmaengine_prep_dma_cyclic.exit.i.if.end_crit_edge, label %if.end.i

dmaengine_prep_dma_cyclic.exit.i.if.end_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %dmaengine_prep_dma_cyclic.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i2.i, i32 0, i32 6
  %46 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @tiadc_dma_rx_complete, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i2.i, i32 0, i32 8
  %47 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %indio_dev, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i2.i, i32 0, i32 4
  %48 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i3.i = tail call i32 %49(ptr noundef nonnull %call.i2.i) #6
  %cookie.i = getelementptr inbounds %struct.tiadc_device, ptr %21, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call.i3.i, ptr %cookie.i, align 4
  %51 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chan.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 50
  %55 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %56(ptr noundef %52) #6
  %57 = ptrtoint ptr %fifo_thresh.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %fifo_thresh.i, align 4
  %conv22.i = zext i8 %58 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %59 = shl nuw i32 %conv22.i, 24
  %60 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %21, align 4
  %tscadc_base.i.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %tscadc_base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tscadc_base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %59) #6, !srcloc !90
  %64 = ptrtoint ptr %fifo_thresh.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %fifo_thresh.i, align 4
  %conv24.i = zext i8 %65 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %66 = shl nuw i32 %conv24.i, 24
  %67 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %21, align 4
  %tscadc_base.i4.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %tscadc_base.i4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tscadc_base.i4.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %70, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %66) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %71 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %21, align 4
  %tscadc_base.i6.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %tscadc_base.i6.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tscadc_base.i6.i, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %74, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 33554432) #6, !srcloc !90
  br label %if.end

if.end:                                           ; preds = %if.end.i, %dmaengine_prep_dma_cyclic.exit.i.if.end_crit_edge, %lor.lhs.false2.i.i.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge, %dmaengine_slave_config.exit.i.if.end_crit_edge, %for.end.if.end_crit_edge
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  tail call void @am335x_tsc_se_set_cache(ptr noundef %76, i32 noundef %enb.0.lcssa) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %80, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -536870912) #6, !srcloc !90
  %81 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chan, align 4
  %tobool15.not = icmp eq ptr %82, null
  %spec.select = select i1 %tobool15.not, i32 1610612736, i32 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %tscadc_base.i39 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %tscadc_base.i39 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tscadc_base.i39, align 8
  %add.ptr.i40 = getelementptr i8, ptr %86, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %spec.select) #6, !srcloc !90
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -536870912) #6, !srcloc !90
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %buffer_en_ch_steps = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %buffer_en_ch_steps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_en_ch_steps, align 4
  tail call void @am335x_tsc_se_clr(ptr noundef %7, i32 noundef %9) #6
  %10 = ptrtoint ptr %buffer_en_ch_steps to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buffer_en_ch_steps, align 4
  %total_ch_enabled = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %total_ch_enabled to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %total_ch_enabled, align 4
  %chan = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %tscadc_base.i17 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %tscadc_base.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tscadc_base.i17, align 8
  %add.ptr.i18 = getelementptr i8, ptr %17, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 33554432) #6, !srcloc !90
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 47
  %22 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %23(ptr noundef %19) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %tscadc_base.i19 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %tscadc_base.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tscadc_base.i19, align 8
  %add.ptr.i20 = getelementptr i8, ptr %27, i32 240
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #6, !srcloc !93
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp23 = icmp sgt i32 %29, 0
  br i1 %cmp23, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %tscadc_base.i21 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %tscadc_base.i21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tscadc_base.i21, align 8
  %add.ptr.i22 = getelementptr i8, ptr %33, i32 512
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %29
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tiadc_step_config(ptr noundef %indio_dev)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @am335x_tsc_se_set_cache(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tiadc_dma_rx_complete(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %param, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %buf = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %current_period = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %current_period to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_period, align 4
  %period_size = getelementptr inbounds %struct.tiadc_device, ptr %1, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_size, align 4
  %sub = sub i32 1, %5
  store i32 %sub, ptr %current_period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp18 = icmp sgt i32 %7, 0
  br i1 %cmp18, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mul = mul i32 %7, %5
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %param, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %data.019 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr6, %for.body.for.body_crit_edge ]
  %call5 = tail call i32 @iio_push_to_buffers(ptr noundef %param, ptr noundef %data.019) #6
  %8 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_bytes, align 4
  %add.ptr6 = getelementptr i8, ptr %data.019, i32 %9
  %add = add i32 %9, %i.020
  %10 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size, align 4
  %cmp = icmp slt i32 %add, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @am335x_tsc_se_clr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %9 = and i32 %8, -285212673
  %10 = or i32 %9, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %tscadc_base.i5 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %tscadc_base.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tscadc_base.i5, align 8
  %add.ptr.i6 = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %10) #6, !srcloc !90
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiadc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tscadc_base.i = getelementptr inbounds %struct.ti_tscadc_dev, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tscadc_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tscadc_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %9 = and i32 %8, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %tscadc_base.i8 = getelementptr inbounds %struct.ti_tscadc_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %tscadc_base.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tscadc_base.i8, align 8
  %add.ptr.i9 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %9) #6, !srcloc !90
  tail call fastcc void @tiadc_step_config(ptr noundef %1)
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %buffer_en_ch_steps = getelementptr inbounds %struct.tiadc_device, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %buffer_en_ch_steps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_en_ch_steps, align 4
  tail call void @am335x_tsc_se_set_cache(ptr noundef %15, i32 noundef %17) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_ti_am335x_adc__301_755_tiadc_driver_init6, !1, !"__initcall__kmod_ti_am335x_adc__301_755_tiadc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 755, i32 1}
!2 = !{ptr @__exitcall_tiadc_driver_exit, !1, !"__exitcall_tiadc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 757, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 758, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 759, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 748, i32 13}
!12 = !{ptr @tiadc_driver, !13, !"tiadc_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 746, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 634, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tiadc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tiadc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 640, i32 3}
!24 = !{ptr @tiadc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tiadc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @tiadc_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 654, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 576, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 589, i32 35}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 591, i32 35}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 593, i32 35}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 602, i32 4}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @tiadc_parse_dt._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @tiadc_parse_dt._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 609, i32 4}
!45 = !{ptr @tiadc_parse_dt._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tiadc_parse_dt._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 616, i32 4}
!49 = !{ptr @tiadc_parse_dt._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tiadc_parse_dt._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @tiadc_info, !52, !"tiadc_info", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 526, i32 30}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 390, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 391, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 392, i32 2}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 393, i32 2}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 394, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 395, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 396, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 397, i32 2}
!69 = !{ptr @chan_name_ain, !70, !"chan_name_ain", i1 false, i1 false}
!70 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 389, i32 27}
!71 = !{ptr @tiadc_buffer_setup_ops, !72, !"tiadc_buffer_setup_ops", i1 false, i1 false}
!72 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 363, i32 42}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 545, i32 57}
!75 = !{ptr @ti_adc_dt_ids, !76, !"ti_adc_dt_ids", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 739, i32 34}
!77 = !{ptr @tiadc_pm_ops, !78, !"tiadc_pm_ops", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/ti_am335x_adc.c", i32 737, i32 8}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"auto-init"}
!89 = !{i64 2154443478}
!90 = !{i64 5038229}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i32 0, i32 33}
!93 = !{i64 5038647}
!94 = !{i64 2154443247}
!95 = !{i64 2154446646}
!96 = !{i64 2154447224}
