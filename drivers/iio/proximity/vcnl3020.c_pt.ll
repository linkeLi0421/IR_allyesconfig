; ModuleID = '/llk/IR_all_yes/drivers/iio/proximity/vcnl3020.c_pt.bc'
source_filename = "../drivers/iio/proximity/vcnl3020.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.vcnl3020_data = type { ptr, ptr, i8, %struct.mutex, [24 x i8], i16, [126 x i8] }

@__initcall__kmod_vcnl3020__288_667_vcnl3020_driver_init6 = internal global ptr @vcnl3020_driver_init, section ".initcall6.init", align 4
@vcnl3020_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @vcnl3020_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vcnl3020_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_vcnl3020_driver_exit = internal global ptr @vcnl3020_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [55 x i8] c"vcnl3020.author=Ivan Mikhaylov <i.mikhaylov@yadro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [61 x i8] c"vcnl3020.description=Vishay VCNL3020 proximity sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [45 x i8] c"vcnl3020.file=drivers/iio/proximity/vcnl3020\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"vcnl3020.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vcnl3020\00", [23 x i8] zeroinitializer }, align 32
@vcnl3020_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"vishay,vcnl3020\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vcnl3020_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vcnl3020_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 143, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"vcnl3020:611:(&vcnl3020_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@vcnl3020_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 613, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap_init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vcnl3020_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/proximity/vcnl3020.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vcnl3020_probe._entry_ptr = internal global ptr @vcnl3020_probe._entry, section ".printk_index", align 4
@vcnl3020_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @vcnl3020_read_raw, ptr null, ptr @vcnl3020_read_avail, ptr @vcnl3020_write_raw, ptr null, ptr null, ptr @vcnl3020_read_event_config, ptr @vcnl3020_write_event_config, ptr @vcnl3020_read_event, ptr @vcnl3020_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@vcnl3020_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 4097, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @vcnl3020_event_spec, i32 3, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@vcnl3020_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 644, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error (%d) irq request failed (%u)\0A\00", [60 x i8] zeroinitializer }, align 32
@vcnl3020_probe._entry_ptr.9 = internal global ptr @vcnl3020_probe._entry.7, section ".printk_index", align 4
@vcnl3020_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error (%d) reading product revision\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vcnl3020_init\00", [18 x i8] zeroinitializer }, align 32
@vcnl3020_init._entry_ptr = internal global ptr @vcnl3020_init._entry, section ".printk_index", align 4
@vcnl3020_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Product id (%x) did not match vcnl3020 (%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@vcnl3020_init._entry_ptr.14 = internal global ptr @vcnl3020_init._entry.12, section ".printk_index", align 4
@vcnl3020_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@vcnl3020_get_and_apply_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error (%d) setting property (%s)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vcnl3020_get_and_apply_property\00", [32 x i8] zeroinitializer }, align 32
@vcnl3020_get_and_apply_property._entry_ptr = internal global ptr @vcnl3020_get_and_apply_property._entry, section ".printk_index", align 4
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vishay,led-current-microamp\00", [36 x i8] zeroinitializer }, align 32
@vcnl3020_measure_proximity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 197, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Error (%d) reading vcnl3020 command register\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vcnl3020_measure_proximity\00", [37 x i8] zeroinitializer }, align 32
@vcnl3020_measure_proximity._entry_ptr = internal global ptr @vcnl3020_measure_proximity._entry, section ".printk_index", align 4
@vcnl3020_is_in_periodic_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 167, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error (%d) reading command register\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vcnl3020_is_in_periodic_mode\00", [35 x i8] zeroinitializer }, align 32
@vcnl3020_is_in_periodic_mode._entry_ptr = internal global ptr @vcnl3020_is_in_periodic_mode._entry, section ".printk_index", align 4
@vcnl3020_prox_sampling_frequency = internal constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] [i32 1, i32 950000], [2 x i32] [i32 3, i32 906250], [2 x i32] [i32 7, i32 812500], [2 x i32] [i32 16, i32 625000], [2 x i32] [i32 31, i32 250000], [2 x i32] [i32 62, i32 500000], [2 x i32] [i32 125, i32 0], [2 x i32] [i32 250, i32 0]], [32 x i8] zeroinitializer }, align 32
@vcnl3020_write_proxy_samp_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error (%d) writing proximity rate register\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vcnl3020_write_proxy_samp_freq\00", [33 x i8] zeroinitializer }, align 32
@vcnl3020_write_proxy_samp_freq._entry_ptr = internal global ptr @vcnl3020_write_proxy_samp_freq._entry, section ".printk_index", align 4
@vcnl3020_is_thr_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 281, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error (%d) reading ICR register\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vcnl3020_is_thr_enabled\00", [40 x i8] zeroinitializer }, align 32
@vcnl3020_is_thr_enabled._entry_ptr = internal global ptr @vcnl3020_is_thr_enabled._entry, section ".printk_index", align 4
@vcnl3020_enable_periodic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error (%d) writing command register\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vcnl3020_enable_periodic\00", [39 x i8] zeroinitializer }, align 32
@vcnl3020_enable_periodic._entry_ptr = internal global ptr @vcnl3020_enable_periodic._entry, section ".printk_index", align 4
@vcnl3020_enable_periodic._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.28, ptr @.str.4, i32 394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@vcnl3020_enable_periodic._entry_ptr.30 = internal global ptr @vcnl3020_enable_periodic._entry.29, section ".printk_index", align 4
@vcnl3020_disable_periodic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.31, ptr @.str.4, i32 412, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vcnl3020_disable_periodic\00", [38 x i8] zeroinitializer }, align 32
@vcnl3020_disable_periodic._entry_ptr = internal global ptr @vcnl3020_disable_periodic._entry, section ".printk_index", align 4
@vcnl3020_disable_periodic._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 419, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error (%d) writing ICR register\0A\00", [63 x i8] zeroinitializer }, align 32
@vcnl3020_disable_periodic._entry_ptr.34 = internal global ptr @vcnl3020_disable_periodic._entry.32, section ".printk_index", align 4
@vcnl3020_disable_periodic._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.4, i32 427, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error (%d) writing ISR register\0A\00", [63 x i8] zeroinitializer }, align 32
@vcnl3020_disable_periodic._entry_ptr.37 = internal global ptr @vcnl3020_disable_periodic._entry.35, section ".printk_index", align 4
@vcnl3020_event_spec = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@vcnl3020_handle_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 583, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error (%d) reading reg (0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vcnl3020_handle_irq_thread\00", [37 x i8] zeroinitializer }, align 32
@vcnl3020_handle_irq_thread._entry_ptr = internal global ptr @vcnl3020_handle_irq_thread._entry, section ".printk_index", align 4
@vcnl3020_handle_irq_thread._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 599, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error (%d) writing in reg (0x%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@vcnl3020_handle_irq_thread._entry_ptr.42 = internal global ptr @vcnl3020_handle_irq_thread._entry.40, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 12]
@__sancov_gen_cov_switch_values.43 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 3, i64 7, i64 16, i64 31, i64 62, i64 125, i64 250]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"vcnl3020_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 660, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 662, i32 13 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"vcnl3020_of_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 652, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"vcnl3020_regmap_config\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 567, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 611, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 613, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"vcnl3020_info\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 557, i32 30 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"vcnl3020_channels\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 493, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 642, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 140, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 146, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 153, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 126, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 106, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 196, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 166, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [33 x i8] c"vcnl3020_prox_sampling_frequency\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 57, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 264, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 280, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 382, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 393, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 411, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 418, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 426, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c"vcnl3020_event_spec\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 477, i32 36 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 582, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [36 x i8] c"../drivers/iio/proximity/vcnl3020.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 598, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_vcnl3020_driver_exit, ptr @__initcall__kmod_vcnl3020__288_667_vcnl3020_driver_init6, ptr @vcnl3020_disable_periodic._entry, ptr @vcnl3020_disable_periodic._entry.32, ptr @vcnl3020_disable_periodic._entry.35, ptr @vcnl3020_disable_periodic._entry_ptr, ptr @vcnl3020_disable_periodic._entry_ptr.34, ptr @vcnl3020_disable_periodic._entry_ptr.37, ptr @vcnl3020_driver_exit, ptr @vcnl3020_enable_periodic._entry, ptr @vcnl3020_enable_periodic._entry.29, ptr @vcnl3020_enable_periodic._entry_ptr, ptr @vcnl3020_enable_periodic._entry_ptr.30, ptr @vcnl3020_get_and_apply_property._entry, ptr @vcnl3020_get_and_apply_property._entry_ptr, ptr @vcnl3020_handle_irq_thread._entry, ptr @vcnl3020_handle_irq_thread._entry.40, ptr @vcnl3020_handle_irq_thread._entry_ptr, ptr @vcnl3020_handle_irq_thread._entry_ptr.42, ptr @vcnl3020_init._entry, ptr @vcnl3020_init._entry.12, ptr @vcnl3020_init._entry_ptr, ptr @vcnl3020_init._entry_ptr.14, ptr @vcnl3020_is_in_periodic_mode._entry, ptr @vcnl3020_is_in_periodic_mode._entry_ptr, ptr @vcnl3020_is_thr_enabled._entry, ptr @vcnl3020_is_thr_enabled._entry_ptr, ptr @vcnl3020_measure_proximity._entry, ptr @vcnl3020_measure_proximity._entry_ptr, ptr @vcnl3020_probe._entry, ptr @vcnl3020_probe._entry.7, ptr @vcnl3020_probe._entry_ptr, ptr @vcnl3020_probe._entry_ptr.9, ptr @vcnl3020_write_proxy_samp_freq._entry, ptr @vcnl3020_write_proxy_samp_freq._entry_ptr, ptr @vcnl3020_driver, ptr @.str, ptr @vcnl3020_of_match, ptr @vcnl3020_probe._key, ptr @vcnl3020_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vcnl3020_info, ptr @vcnl3020_channels, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @vcnl3020_init.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @vcnl3020_prox_sampling_frequency, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @vcnl3020_event_spec, ptr @.str.38, ptr @.str.39, ptr @.str.41], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_get_and_apply_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_measure_proximity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_is_in_periodic_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_prox_sampling_frequency to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_write_proxy_samp_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_is_thr_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_enable_periodic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_enable_periodic._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_disable_periodic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_disable_periodic._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_disable_periodic._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_event_spec to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_handle_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcnl3020_handle_irq_thread._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl3020_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @vcnl3020_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vcnl3020_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @vcnl3020_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl3020_probe(ptr noundef %client) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @vcnl3020_regmap_config, ptr noundef nonnull @vcnl3020_probe._key, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 256) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %2, align 128
  %dev10 = getelementptr inbounds %struct.vcnl3020_data, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg.i, align 4, !annotation !120
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 128
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 129, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef %call.i) #9
  br label %vcnl3020_init.exit.thread

if.end.i:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 33
  br i1 %cmp.not.i, label %if.end6.i, label %do.end4.i

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %12, i32 noundef 33) #9
  br label %vcnl3020_init.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %rev.i = getelementptr inbounds %struct.vcnl3020_data, ptr %2, i32 0, i32 2
  %15 = ptrtoint ptr %rev.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 33, ptr %rev.i, align 8
  %lock.i = getelementptr inbounds %struct.vcnl3020_data, ptr %2, i32 0, i32 3
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @vcnl3020_init.__key) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i.i, align 4, !annotation !120
  %17 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev10, align 4
  %call.i.i.i = call i32 @device_property_read_u32_array(ptr noundef %18, ptr noundef nonnull @.str.18, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end6.i.if.end14_crit_edge

if.end6.i.if.end14_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end.i.i:                                       ; preds = %if.end6.i
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i.i, align 4
  %div.i.i = udiv i32 %20, 10000
  store i32 %div.i.i, ptr %val.i.i, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 128
  %call6.i.i = call i32 @regmap_write(ptr noundef %22, i32 noundef 131, i32 noundef %div.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end14_crit_edge, label %vcnl3020_init.exit

if.end.i.i.if.end14_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

vcnl3020_init.exit.thread:                        ; preds = %do.end4.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -19, %do.end4.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %cleanup

vcnl3020_init.exit:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.16, i32 noundef %call6.i.i, ptr noundef nonnull @.str.18) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.i.if.end14_crit_edge, %if.end6.i.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  %info = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 17
  %25 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @vcnl3020_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 13
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vcnl3020_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 14
  %27 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 15
  %28 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str, ptr %name, align 8
  %29 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %call4, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool15.not = icmp eq i32 %31, 0
  br i1 %tobool15.not, label %if.end14.if.end29_crit_edge, label %if.then16

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then16:                                        ; preds = %if.end14
  %call20 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %31, ptr noundef null, ptr noundef nonnull @vcnl3020_handle_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then16.if.end29_crit_edge, label %do.end25

if.then16.if.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end25:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call20, i32 noundef %33) #9
  br label %cleanup

if.end29:                                         ; preds = %if.then16.if.end29_crit_edge, %if.end14.if.end29_crit_edge
  %call31 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call4, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end25, %vcnl3020_init.exit, %vcnl3020_init.exit.thread, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %call20, %do.end25 ], [ %call31, %if.end29 ], [ -12, %if.end.cleanup_crit_edge ], [ %call6.i.i, %vcnl3020_init.exit ], [ %retval.0.i.ph, %vcnl3020_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl3020_handle_irq_thread(i32 noundef %irq, ptr noundef %p) #2 align 64 {
entry:
  %isr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isr) #6
  %2 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %isr, align 4, !annotation !120
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 142, ptr noundef nonnull %isr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.38, i32 noundef %call1, i32 noundef 142) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %isr, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i64 @iio_get_time_ns(ptr noundef %p) #6
  %call6 = call i32 @iio_push_event(ptr noundef %p, i64 noundef 281509336449025, i64 noundef %call5) #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %11 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %isr, align 4
  %and8 = and i32 %12, 2
  %call9 = call i32 @regmap_write(ptr noundef %10, i32 noundef 142, i32 noundef %and8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end4.cleanup_crit_edge, label %do.end14

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.41, i32 noundef %call9, i32 noundef 142) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %do.end14 ], [ 1, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl3020_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %prox_rate.i = alloca i32, align 4
  %cmd.i.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 12, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg.i, align 4, !annotation !120
  %lock.i = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i.i) #6
  %4 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cmd.i.i, align 4, !annotation !120
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %call.i.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 128, ptr noundef nonnull %cmd.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %vcnl3020_is_in_periodic_mode.exit.i, label %vcnl3020_is_in_periodic_mode.exit.thread.i

vcnl3020_is_in_periodic_mode.exit.thread.i:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef %call.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i) #6
  br label %if.end.i

vcnl3020_is_in_periodic_mode.exit.i:              ; preds = %sw.bb
  %9 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd.i.i, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.not.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i) #6
  br i1 %tobool1.i.not.i, label %vcnl3020_is_in_periodic_mode.exit.i.if.end.i_crit_edge, label %vcnl3020_is_in_periodic_mode.exit.i.vcnl3020_measure_proximity.exit.thread_crit_edge

vcnl3020_is_in_periodic_mode.exit.i.vcnl3020_measure_proximity.exit.thread_crit_edge: ; preds = %vcnl3020_is_in_periodic_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_measure_proximity.exit.thread

vcnl3020_is_in_periodic_mode.exit.i.if.end.i_crit_edge: ; preds = %vcnl3020_is_in_periodic_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %vcnl3020_is_in_periodic_mode.exit.i.if.end.i_crit_edge, %vcnl3020_is_in_periodic_mode.exit.thread.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 128
  %call1.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 128, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.vcnl3020_measure_proximity.exit.thread_crit_edge

if.end.i.vcnl3020_measure_proximity.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_measure_proximity.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call i64 @ktime_get() #6
  %add.i.i = add i64 %call4.i, 100000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 194) #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 128
  %call1582.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 128, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1582.i)
  %tobool16.not83.i = icmp eq i32 %call1582.i, 0
  br i1 %tobool16.not83.i, label %if.end3.i.lor.lhs.false.i_crit_edge, label %if.end3.i.do.end41.i_crit_edge

if.end3.i.do.end41.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41.i

if.end3.i.lor.lhs.false.i_crit_edge:              ; preds = %if.end3.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then29.i.lor.lhs.false.i_crit_edge, %if.end3.i.lor.lhs.false.i_crit_edge
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call21.i = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call21.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call21.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then29.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 5001, i32 noundef 20000, i32 noundef 2) #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 128
  %call15.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 128, ptr noundef nonnull %reg.i) #6
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then29.i.lor.lhs.false.i_crit_edge, label %if.then29.i.do.end41.i_crit_edge

if.then29.i.do.end41.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41.i

if.then29.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 128
  %call26.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 128, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool31.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool31.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.do.end41.i_crit_edge

for.end.i.do.end41.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41.i

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg.i, align 4
  %and32.i = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %lor.rhs.i.do.end41.i_crit_edge, label %if.end42.i

lor.rhs.i.do.end41.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41.i

do.end41.i:                                       ; preds = %lor.rhs.i.do.end41.i_crit_edge, %for.end.i.do.end41.i_crit_edge, %if.then29.i.do.end41.i_crit_edge, %if.end3.i.do.end41.i_crit_edge
  %tobool31.not75.ph.i = phi i32 [ %call1582.i, %if.end3.i.do.end41.i_crit_edge ], [ %call26.i, %for.end.i.do.end41.i_crit_edge ], [ -110, %lor.rhs.i.do.end41.i_crit_edge ], [ %call15.i, %if.then29.i.do.end41.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.19, i32 noundef %tobool31.not75.ph.i) #9
  br label %vcnl3020_measure_proximity.exit.thread

if.end42.i:                                       ; preds = %lor.rhs.i
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 128
  %buf.i = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 5
  %call44.i = call i32 @regmap_bulk_read(ptr noundef %26, i32 noundef 135, ptr noundef %buf.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %27, label %if.end42.i.vcnl3020_measure_proximity.exit.thread_crit_edge

if.end42.i.vcnl3020_measure_proximity.exit.thread_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_measure_proximity.exit.thread

vcnl3020_measure_proximity.exit.thread:           ; preds = %if.end42.i.vcnl3020_measure_proximity.exit.thread_crit_edge, %do.end41.i, %if.end.i.vcnl3020_measure_proximity.exit.thread_crit_edge, %vcnl3020_is_in_periodic_mode.exit.i.vcnl3020_measure_proximity.exit.thread_crit_edge
  %rc.0.i.ph = phi i32 [ -16, %vcnl3020_is_in_periodic_mode.exit.i.vcnl3020_measure_proximity.exit.thread_crit_edge ], [ %call44.i, %if.end42.i.vcnl3020_measure_proximity.exit.thread_crit_edge ], [ %tobool31.not75.ph.i, %do.end41.i ], [ %call1.i, %if.end.i.vcnl3020_measure_proximity.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %cleanup

27:                                               ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %buf.i, align 128
  %conv.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i, ptr %val, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prox_rate.i) #6
  %31 = ptrtoint ptr %prox_rate.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %prox_rate.i, align 4, !annotation !120
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 128
  %call.i = call i32 @regmap_read(ptr noundef %33, i32 noundef 130, ptr noundef nonnull %prox_rate.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i12 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i12, label %if.end.i13, label %vcnl3020_read_proxy_samp_freq.exit

if.end.i13:                                       ; preds = %sw.bb2
  %34 = ptrtoint ptr %prox_rate.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prox_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp.i = icmp ugt i32 %35, 7
  br i1 %cmp.i, label %vcnl3020_read_proxy_samp_freq.exit.thread, label %vcnl3020_read_proxy_samp_freq.exit.thread19

vcnl3020_read_proxy_samp_freq.exit.thread:        ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prox_rate.i) #6
  br label %42

vcnl3020_read_proxy_samp_freq.exit.thread19:      ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [8 x [2 x i32]], ptr @vcnl3020_prox_sampling_frequency, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %val, align 4
  %arrayidx5.i = getelementptr [8 x [2 x i32]], ptr @vcnl3020_prox_sampling_frequency, i32 0, i32 %35, i32 1
  %39 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx5.i, align 4
  %41 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %val2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prox_rate.i) #6
  br label %cleanup

vcnl3020_read_proxy_samp_freq.exit:               ; preds = %sw.bb2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prox_rate.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %vcnl3020_read_proxy_samp_freq.exit._crit_edge, label %vcnl3020_read_proxy_samp_freq.exit.cleanup_crit_edge

vcnl3020_read_proxy_samp_freq.exit.cleanup_crit_edge: ; preds = %vcnl3020_read_proxy_samp_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

vcnl3020_read_proxy_samp_freq.exit._crit_edge:    ; preds = %vcnl3020_read_proxy_samp_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %42

42:                                               ; preds = %vcnl3020_read_proxy_samp_freq.exit._crit_edge, %vcnl3020_read_proxy_samp_freq.exit.thread
  %retval.0.i18 = phi i32 [ -22, %vcnl3020_read_proxy_samp_freq.exit.thread ], [ %call.i, %vcnl3020_read_proxy_samp_freq.exit._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %42, %vcnl3020_read_proxy_samp_freq.exit.cleanup_crit_edge, %vcnl3020_read_proxy_samp_freq.exit.thread19, %27, %vcnl3020_measure_proximity.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %27 ], [ %rc.0.i.ph, %vcnl3020_measure_proximity.exit.thread ], [ %retval.0.i18, %42 ], [ 2, %vcnl3020_read_proxy_samp_freq.exit.cleanup_crit_edge ], [ 2, %vcnl3020_read_proxy_samp_freq.exit.thread19 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vcnl3020_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vcnl3020_prox_sampling_frequency, ptr %vals, align 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %type, align 4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %length, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl3020_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %cmd.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock.i = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i.i) #6
  %2 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cmd.i.i, align 4, !annotation !120
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %call.i.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 128, ptr noundef nonnull %cmd.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %vcnl3020_is_in_periodic_mode.exit.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.21, i32 noundef %call.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i) #6
  br label %for.cond.preheader.i

vcnl3020_is_in_periodic_mode.exit.i:              ; preds = %sw.bb
  %7 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd.i.i, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.not.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i.i) #6
  br i1 %tobool1.i.not.i, label %vcnl3020_is_in_periodic_mode.exit.i.for.cond.preheader.i_crit_edge, label %vcnl3020_is_in_periodic_mode.exit.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge

vcnl3020_is_in_periodic_mode.exit.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge: ; preds = %vcnl3020_is_in_periodic_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_write_proxy_samp_freq.exit

vcnl3020_is_in_periodic_mode.exit.i.for.cond.preheader.i_crit_edge: ; preds = %vcnl3020_is_in_periodic_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %vcnl3020_is_in_periodic_mode.exit.i.for.cond.preheader.i_crit_edge, %do.end.i.i
  %9 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %val, label %for.cond.preheader.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 3, label %land.lhs.true.1.i
    i32 7, label %land.lhs.true.2.i
    i32 16, label %land.lhs.true.3.i
    i32 31, label %land.lhs.true.4.i
    i32 62, label %land.lhs.true.5.i
    i32 125, label %land.lhs.true.6.i
    i32 250, label %land.lhs.true.7.i
  ]

for.cond.preheader.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_write_proxy_samp_freq.exit

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 950000, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 950000
  br i1 %cmp5.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %land.lhs.true.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge

land.lhs.true.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_write_proxy_samp_freq.exit

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.1.i:                                ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 906250, i32 %val2)
  %cmp5.1.i = icmp eq i32 %val2, 906250
  br i1 %cmp5.1.i, label %land.lhs.true.1.i.if.end10.i_crit_edge, label %land.lhs.true.1.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge

land.lhs.true.1.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_write_proxy_samp_freq.exit

land.lhs.true.1.i.if.end10.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.2.i:                                ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 812500, i32 %val2)
  %cmp5.2.i = icmp eq i32 %val2, 812500
  br i1 %cmp5.2.i, label %land.lhs.true.2.i.if.end10.i_crit_edge, label %land.lhs.true.2.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge

land.lhs.true.2.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_write_proxy_samp_freq.exit

land.lhs.true.2.i.if.end10.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.3.i:                                ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 625000, i32 %val2)
  %cmp5.3.i = icmp eq i32 %val2, 625000
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.if.end10.i_crit_edge, label %land.lhs.true.3.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge

land.lhs.true.3.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_write_proxy_samp_freq.exit

land.lhs.true.3.i.if.end10.i_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.4.i:                                ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.4.i = icmp eq i32 %val2, 250000
  br i1 %cmp5.4.i, label %land.lhs.true.4.i.if.end10.i_crit_edge, label %land.lhs.true.4.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge

land.lhs.true.4.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_write_proxy_samp_freq.exit

land.lhs.true.4.i.if.end10.i_crit_edge:           ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.5.i:                                ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.5.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.5.i, label %land.lhs.true.5.i.if.end10.i_crit_edge, label %land.lhs.true.5.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge

land.lhs.true.5.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_write_proxy_samp_freq.exit

land.lhs.true.5.i.if.end10.i_crit_edge:           ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.6.i:                                ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.6.i = icmp eq i32 %val2, 0
  br i1 %cmp5.6.i, label %land.lhs.true.6.i.if.end10.i_crit_edge, label %land.lhs.true.6.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge

land.lhs.true.6.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge: ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_write_proxy_samp_freq.exit

land.lhs.true.6.i.if.end10.i_crit_edge:           ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.7.i:                                ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.7.i = icmp eq i32 %val2, 0
  br i1 %cmp5.7.i, label %land.lhs.true.7.i.if.end10.i_crit_edge, label %land.lhs.true.7.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge

land.lhs.true.7.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge: ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_write_proxy_samp_freq.exit

land.lhs.true.7.i.if.end10.i_crit_edge:           ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true.7.i.if.end10.i_crit_edge, %land.lhs.true.6.i.if.end10.i_crit_edge, %land.lhs.true.5.i.if.end10.i_crit_edge, %land.lhs.true.4.i.if.end10.i_crit_edge, %land.lhs.true.3.i.if.end10.i_crit_edge, %land.lhs.true.2.i.if.end10.i_crit_edge, %land.lhs.true.1.i.if.end10.i_crit_edge, %land.lhs.true.i.if.end10.i_crit_edge
  %i.029.lcssa.i = phi i32 [ 0, %land.lhs.true.i.if.end10.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.end10.i_crit_edge ], [ 2, %land.lhs.true.2.i.if.end10.i_crit_edge ], [ 3, %land.lhs.true.3.i.if.end10.i_crit_edge ], [ 4, %land.lhs.true.4.i.if.end10.i_crit_edge ], [ 5, %land.lhs.true.5.i.if.end10.i_crit_edge ], [ 6, %land.lhs.true.6.i.if.end10.i_crit_edge ], [ 7, %land.lhs.true.7.i.if.end10.i_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 128
  %call11.i = call i32 @regmap_write(ptr noundef %11, i32 noundef 130, i32 noundef %i.029.lcssa.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end10.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge, label %do.end.i

if.end10.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_write_proxy_samp_freq.exit

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %call11.i) #9
  br label %vcnl3020_write_proxy_samp_freq.exit

vcnl3020_write_proxy_samp_freq.exit:              ; preds = %do.end.i, %if.end10.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge, %land.lhs.true.7.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge, %land.lhs.true.6.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge, %land.lhs.true.5.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge, %land.lhs.true.4.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge, %land.lhs.true.3.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge, %land.lhs.true.2.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge, %land.lhs.true.1.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge, %land.lhs.true.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge, %for.cond.preheader.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge, %vcnl3020_is_in_periodic_mode.exit.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge
  %rc.0.i = phi i32 [ %call11.i, %do.end.i ], [ 0, %if.end10.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge ], [ -16, %vcnl3020_is_in_periodic_mode.exit.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge ], [ -22, %land.lhs.true.7.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge ], [ -22, %land.lhs.true.6.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge ], [ -22, %land.lhs.true.5.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge ], [ -22, %land.lhs.true.4.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge ], [ -22, %land.lhs.true.3.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge ], [ -22, %land.lhs.true.2.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge ], [ -22, %land.lhs.true.1.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge ], [ -22, %land.lhs.true.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge ], [ -22, %for.cond.preheader.i.vcnl3020_write_proxy_samp_freq.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %vcnl3020_write_proxy_samp_freq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %vcnl3020_write_proxy_samp_freq.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl3020_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  %icr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cond = icmp eq i32 %3, 8
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %icr.i) #6
  %4 = ptrtoint ptr %icr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %icr.i, align 4, !annotation !120
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 137, ptr noundef nonnull %icr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.25, i32 noundef %call.i) #9
  br label %vcnl3020_is_thr_enabled.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %icr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %icr.i, align 4
  %and.i = lshr i32 %10, 1
  %and.i.lobit = and i32 %and.i, 1
  br label %vcnl3020_is_thr_enabled.exit

vcnl3020_is_thr_enabled.exit:                     ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %and.i.lobit, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %vcnl3020_is_thr_enabled.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %vcnl3020_is_thr_enabled.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl3020_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  %icr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cond = icmp eq i32 %1, 8
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %lock.i.i = getelementptr inbounds %struct.vcnl3020_data, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %call.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 128, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.vcnl3020_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.27, i32 noundef %call.i.i) #9
  br label %vcnl3020_enable_periodic.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 128
  %call2.i.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 137, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.vcnl3020_enable_periodic.exit.i_crit_edge, label %do.end7.i.i

if.end.i.i.vcnl3020_enable_periodic.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_enable_periodic.exit.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev8.i.i = getelementptr inbounds %struct.vcnl3020_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dev8.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.25, i32 noundef %call2.i.i) #9
  br label %vcnl3020_enable_periodic.exit.i

vcnl3020_enable_periodic.exit.i:                  ; preds = %do.end7.i.i, %if.end.i.i.vcnl3020_enable_periodic.exit.i_crit_edge, %do.end.i.i
  %rc.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %call2.i.i, %do.end7.i.i ], [ 0, %if.end.i.i.vcnl3020_enable_periodic.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #6
  br label %return

if.else.i:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %icr.i.i) #6
  %12 = ptrtoint ptr %icr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %icr.i.i, align 4, !annotation !120
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 128
  %call.i9.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 137, ptr noundef nonnull %icr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool.not.i10.i, label %vcnl3020_is_thr_enabled.exit.i, label %vcnl3020_is_thr_enabled.exit.thread.i

vcnl3020_is_thr_enabled.exit.thread.i:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i11.i = getelementptr inbounds %struct.vcnl3020_data, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i11.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.25, i32 noundef %call.i9.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icr.i.i) #6
  br label %return

vcnl3020_is_thr_enabled.exit.i:                   ; preds = %if.else.i
  %17 = ptrtoint ptr %icr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %icr.i.i, align 4
  %and.i.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.not.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %icr.i.i) #6
  br i1 %tobool1.i.not.i, label %vcnl3020_is_thr_enabled.exit.i.return_crit_edge, label %if.end.i

vcnl3020_is_thr_enabled.exit.i.return_crit_edge:  ; preds = %vcnl3020_is_thr_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %vcnl3020_is_thr_enabled.exit.i
  %lock.i14.i = getelementptr inbounds %struct.vcnl3020_data, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i14.i, i32 noundef 0) #6
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 128
  %call.i15.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 128, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not.i16.i, label %if.end.i21.i, label %do.end.i18.i

do.end.i18.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i17.i = getelementptr inbounds %struct.vcnl3020_data, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i17.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.27, i32 noundef %call.i15.i) #9
  br label %vcnl3020_disable_periodic.exit.i

if.end.i21.i:                                     ; preds = %if.end.i
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 128
  %call2.i19.i = call i32 @regmap_write(ptr noundef %24, i32 noundef 137, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i19.i)
  %tobool3.not.i20.i = icmp eq i32 %call2.i19.i, 0
  br i1 %tobool3.not.i20.i, label %if.end9.i.i, label %do.end7.i23.i

do.end7.i23.i:                                    ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev8.i22.i = getelementptr inbounds %struct.vcnl3020_data, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %dev8.i22.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev8.i22.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.33, i32 noundef %call2.i19.i) #9
  br label %vcnl3020_disable_periodic.exit.i

if.end9.i.i:                                      ; preds = %if.end.i21.i
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 128
  %call11.i.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 142, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end9.i.i.vcnl3020_disable_periodic.exit.i_crit_edge, label %do.end16.i.i

if.end9.i.i.vcnl3020_disable_periodic.exit.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vcnl3020_disable_periodic.exit.i

do.end16.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev17.i.i = getelementptr inbounds %struct.vcnl3020_data, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %dev17.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev17.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.36, i32 noundef %call11.i.i) #9
  br label %vcnl3020_disable_periodic.exit.i

vcnl3020_disable_periodic.exit.i:                 ; preds = %do.end16.i.i, %if.end9.i.i.vcnl3020_disable_periodic.exit.i_crit_edge, %do.end7.i23.i, %do.end.i18.i
  %rc.0.i24.i = phi i32 [ %call.i15.i, %do.end.i18.i ], [ %call2.i19.i, %do.end7.i23.i ], [ %call11.i.i, %do.end16.i.i ], [ 0, %if.end9.i.i.vcnl3020_disable_periodic.exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i14.i) #6
  br label %return

return:                                           ; preds = %vcnl3020_disable_periodic.exit.i, %vcnl3020_is_thr_enabled.exit.i.return_crit_edge, %vcnl3020_is_thr_enabled.exit.thread.i, %vcnl3020_enable_periodic.exit.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %rc.0.i.i, %vcnl3020_enable_periodic.exit.i ], [ %rc.0.i24.i, %vcnl3020_disable_periodic.exit.i ], [ 0, %vcnl3020_is_thr_enabled.exit.i.return_crit_edge ], [ 0, %vcnl3020_is_thr_enabled.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl3020_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %info)
  %cond = icmp eq i32 %info, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %dir, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %buf = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef 140, ptr noundef %buf, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.bb1.cleanup_crit_edge, label %sw.bb1.cleanup.sink.split_crit_edge

sw.bb1.cleanup.sink.split_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  %buf6 = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 5
  %call7 = tail call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 138, ptr noundef %buf6, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %sw.bb4.cleanup_crit_edge, label %sw.bb4.cleanup.sink.split_crit_edge

sw.bb4.cleanup.sink.split_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb4.cleanup.sink.split_crit_edge, %sw.bb1.cleanup.sink.split_crit_edge
  %buf6.sink = phi ptr [ %buf, %sw.bb1.cleanup.sink.split_crit_edge ], [ %buf6, %sw.bb4.cleanup.sink.split_crit_edge ]
  %7 = ptrtoint ptr %buf6.sink to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %buf6.sink, align 128
  %conv13 = zext i16 %8 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv13, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb4.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1.cleanup_crit_edge ], [ %call7, %sw.bb4.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcnl3020_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %info)
  %cond = icmp eq i32 %info, 1
  br i1 %cond, label %sw.bb, label %entry.err_unlock_crit_edge

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock

sw.bb:                                            ; preds = %entry
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %dir, label %sw.bb.err_unlock_crit_edge [
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
  ]

sw.bb.err_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %val to i16
  %buf = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %buf, align 128
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %call3 = tail call i32 @regmap_bulk_write(ptr noundef %5, i32 noundef 140, ptr noundef %buf, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %spec.store.select = select i1 %cmp, i32 %call3, i32 1
  br label %err_unlock

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %conv6 = trunc i32 %val to i16
  %buf7 = getelementptr inbounds %struct.vcnl3020_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %buf7 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv6, ptr %buf7, align 128
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  %call10 = tail call i32 @regmap_bulk_write(ptr noundef %8, i32 noundef 138, ptr noundef %buf7, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  %spec.store.select17 = select i1 %cmp11, i32 %call10, i32 1
  br label %err_unlock

err_unlock:                                       ; preds = %sw.bb5, %sw.bb1, %sw.bb.err_unlock_crit_edge, %entry.err_unlock_crit_edge
  %rc.0 = phi i32 [ %spec.store.select17, %sw.bb5 ], [ %spec.store.select, %sw.bb1 ], [ -22, %sw.bb.err_unlock_crit_edge ], [ -22, %entry.err_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_vcnl3020__288_667_vcnl3020_driver_init6, !1, !"__initcall__kmod_vcnl3020__288_667_vcnl3020_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 667, i32 1}
!2 = !{ptr @__exitcall_vcnl3020_driver_exit, !1, !"__exitcall_vcnl3020_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 669, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 670, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 671, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 662, i32 13}
!12 = !{ptr @vcnl3020_driver, !13, !"vcnl3020_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 660, i32 26}
!14 = !{ptr @vcnl3020_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 611, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 613, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vcnl3020_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @vcnl3020_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 642, i32 4}
!27 = !{ptr @vcnl3020_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @vcnl3020_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @vcnl3020_regmap_config, !30, !"vcnl3020_regmap_config", i1 false, i1 false}
!30 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 567, i32 35}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 140, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vcnl3020_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @vcnl3020_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 146, i32 3}
!38 = !{ptr @vcnl3020_init._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @vcnl3020_init._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @vcnl3020_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 153, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 126, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vcnl3020_get_and_apply_property._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @vcnl3020_get_and_apply_property._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 106, i32 10}
!50 = distinct !{null, !51, !"vcnl3020_led_current_property", i1 false, i1 false}
!51 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 105, i32 33}
!52 = !{ptr @vcnl3020_info, !53, !"vcnl3020_info", i1 false, i1 false}
!53 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 557, i32 30}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 196, i32 3}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @vcnl3020_measure_proximity._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @vcnl3020_measure_proximity._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 166, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @vcnl3020_is_in_periodic_mode._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @vcnl3020_is_in_periodic_mode._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @vcnl3020_prox_sampling_frequency, !65, !"vcnl3020_prox_sampling_frequency", i1 false, i1 false}
!65 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 57, i32 18}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 264, i32 3}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @vcnl3020_write_proxy_samp_freq._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @vcnl3020_write_proxy_samp_freq._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 280, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @vcnl3020_is_thr_enabled._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @vcnl3020_is_thr_enabled._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 382, i32 3}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @vcnl3020_enable_periodic._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @vcnl3020_enable_periodic._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @vcnl3020_enable_periodic._entry.29, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 393, i32 3}
!83 = !{ptr @vcnl3020_enable_periodic._entry_ptr.30, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 411, i32 3}
!86 = !{ptr @vcnl3020_disable_periodic._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @vcnl3020_disable_periodic._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 418, i32 3}
!90 = !{ptr @vcnl3020_disable_periodic._entry.32, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @vcnl3020_disable_periodic._entry_ptr.34, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 426, i32 3}
!94 = !{ptr @vcnl3020_disable_periodic._entry.35, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @vcnl3020_disable_periodic._entry_ptr.37, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @vcnl3020_channels, !97, !"vcnl3020_channels", i1 false, i1 false}
!97 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 493, i32 35}
!98 = !{ptr @vcnl3020_event_spec, !99, !"vcnl3020_event_spec", i1 false, i1 false}
!99 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 477, i32 36}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 582, i32 3}
!102 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @vcnl3020_handle_irq_thread._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @vcnl3020_handle_irq_thread._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 598, i32 3}
!107 = !{ptr @vcnl3020_handle_irq_thread._entry.40, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @vcnl3020_handle_irq_thread._entry_ptr.42, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @vcnl3020_of_match, !110, !"vcnl3020_of_match", i1 false, i1 false}
!110 = !{!"../drivers/iio/proximity/vcnl3020.c", i32 652, i32 34}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
