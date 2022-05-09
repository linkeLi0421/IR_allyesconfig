; ModuleID = '/llk/IR_all_yes/drivers/iio/gyro/adxrs290.c_pt.bc'
source_filename = "../drivers/iio/gyro/adxrs290.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.adxrs290_state = type { ptr, %struct.mutex, i32, i32, i32, ptr, %struct.anon.72 }
%struct.anon.72 = type { [3 x i16], i64 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_adxrs290__259_704_adxrs290_driver_init6 = internal global ptr @adxrs290_driver_init, section ".initcall6.init", align 4
@adxrs290_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @adxrs290_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adxrs290_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adxrs290_driver_exit = internal global ptr @adxrs290_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author260 = internal constant [59 x i8] c"adxrs290.author=Nishant Malpani <nish.malpani25@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [66 x i8] c"adxrs290.description=Analog Devices ADXRS290 Gyroscope SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file262 = internal constant [40 x i8] c"adxrs290.file=drivers/iio/gyro/adxrs290\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [21 x i8] c"adxrs290.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adxrs290\00", [23 x i8] zeroinitializer }, align 32
@adxrs290_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adxrs290\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adxrs290_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 8, i32 0, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 3076, i32 3072, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 10, i32 1, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 3076, i32 3072, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 12, i32 2, %struct.anon.71 { i8 115, i8 12, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@adxrs290_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adxrs290_read_raw, ptr null, ptr @adxrs290_read_avail, ptr @adxrs290_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adxrs290_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adxrs290_avail_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@adxrs290_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@adxrs290_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 643, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wrong ADI ID 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adxrs290_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/gyro/adxrs290.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adxrs290_probe._entry_ptr = internal global ptr @adxrs290_probe._entry, section ".printk_index", align 4
@adxrs290_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 649, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wrong MEMS ID 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@adxrs290_probe._entry_ptr.9 = internal global ptr @adxrs290_probe._entry.7, section ".printk_index", align 4
@adxrs290_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 655, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wrong DEV ID 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@adxrs290_probe._entry_ptr.12 = internal global ptr @adxrs290_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@adxrs290_lpf_3db_freq_hz_table = internal constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] [i32 480, i32 0], [2 x i32] [i32 320, i32 0], [2 x i32] [i32 160, i32 0], [2 x i32] [i32 80, i32 0], [2 x i32] [i32 56, i32 600000], [2 x i32] [i32 40, i32 0], [2 x i32] [i32 28, i32 300000], [2 x i32] [i32 20, i32 0]], [32 x i8] zeroinitializer }, align 32
@adxrs290_hpf_3db_freq_hz_table = internal constant { [11 x [2 x i32]], [40 x i8] } { [11 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 11000], [2 x i32] [i32 0, i32 22000], [2 x i32] [i32 0, i32 44000], [2 x i32] [i32 0, i32 87000], [2 x i32] [i32 0, i32 175000], [2 x i32] [i32 0, i32 350000], [2 x i32] [i32 0, i32 700000], [2 x i32] [i32 1, i32 400000], [2 x i32] [i32 2, i32 800000], [2 x i32] [i32 11, i32 300000]], [40 x i8] zeroinitializer }, align 32
@adxrs290_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 245, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to set mode: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adxrs290_set_mode\00", [46 x i8] zeroinitializer }, align 32
@adxrs290_set_mode._entry_ptr = internal global ptr @adxrs290_set_mode._entry, section ".printk_index", align 4
@adxrs290_probe_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 587, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no irq, using polling\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adxrs290_probe_trigger\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adxrs290_probe_trigger._entry_ptr = internal global ptr @adxrs290_probe_trigger._entry, section ".printk_index", align 4
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@adxrs290_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @adxrs290_data_rdy_trigger_set_state, ptr @adxrs290_reset_trig, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adxrs290_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request irq %d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@adxrs290_probe_trigger._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.4, i32 609, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iio trigger register failed\0A\00", [35 x i8] zeroinitializer }, align 32
@adxrs290_probe_trigger._entry_ptr.24 = internal global ptr @adxrs290_probe_trigger._entry.22, section ".printk_index", align 4
@adxrs290_data_rdy_trigger_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to start data rdy interrupt\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"adxrs290_data_rdy_trigger_set_state\00", [60 x i8] zeroinitializer }, align 32
@adxrs290_data_rdy_trigger_set_state._entry_ptr = internal global ptr @adxrs290_data_rdy_trigger_set_state._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 10, i64 11]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 11]
@__sancov_gen_cov_switch_values.32 = internal global [10 x i64] [i64 8, i64 32, i64 20, i64 28, i64 40, i64 56, i64 80, i64 160, i64 320, i64 480]
@__sancov_gen_cov_switch_values.33 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 11000, i64 22000, i64 44000, i64 87000, i64 175000, i64 350000, i64 700000]
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"adxrs290_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 697, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 699, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"adxrs290_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 691, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"adxrs290_channels\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 550, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"adxrs290_info\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 574, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant [26 x i8] c"adxrs290_avail_scan_masks\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 569, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 639, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 643, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 649, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 655, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 682, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant [31 x i8] c"adxrs290_lpf_3db_freq_hz_table\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 86, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant [31 x i8] c"adxrs290_hpf_3db_freq_hz_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 101, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 245, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 587, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 591, i32 58 }
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"adxrs290_trigger_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 497, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 602, i32 25 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 605, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 609, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [31 x i8] c"../drivers/iio/gyro/adxrs290.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 477, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file262, ptr @__UNIQUE_ID_license263, ptr @__exitcall_adxrs290_driver_exit, ptr @__initcall__kmod_adxrs290__259_704_adxrs290_driver_init6, ptr @adxrs290_data_rdy_trigger_set_state._entry, ptr @adxrs290_data_rdy_trigger_set_state._entry_ptr, ptr @adxrs290_driver_exit, ptr @adxrs290_probe._entry, ptr @adxrs290_probe._entry.10, ptr @adxrs290_probe._entry.7, ptr @adxrs290_probe._entry_ptr, ptr @adxrs290_probe._entry_ptr.12, ptr @adxrs290_probe._entry_ptr.9, ptr @adxrs290_probe_trigger._entry, ptr @adxrs290_probe_trigger._entry.22, ptr @adxrs290_probe_trigger._entry_ptr, ptr @adxrs290_probe_trigger._entry_ptr.24, ptr @adxrs290_set_mode._entry, ptr @adxrs290_set_mode._entry_ptr, ptr @adxrs290_driver, ptr @.str, ptr @adxrs290_of_match, ptr @adxrs290_channels, ptr @adxrs290_info, ptr @adxrs290_avail_scan_masks, ptr @adxrs290_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @adxrs290_lpf_3db_freq_hz_table, ptr @adxrs290_hpf_3db_freq_hz_table, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @adxrs290_trigger_ops, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_avail_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_lpf_3db_freq_hz_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_hpf_3db_freq_hz_table to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_probe_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_probe_trigger._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxrs290_data_rdy_trigger_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adxrs290_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adxrs290_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adxrs290_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adxrs290_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxrs290_probe(ptr noundef %spi) #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  %buf.i.i = alloca [2 x i8], align 1
  %cmd.addr.i109 = alloca i8, align 1
  %result.i110 = alloca i8, align 1
  %cmd.addr.i101 = alloca i8, align 1
  %result.i102 = alloca i8, align 1
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 128) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %name, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @adxrs290_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @adxrs290_info, ptr %info, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @adxrs290_avail_scan_masks, ptr %available_scan_masks, align 4
  %lock = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @adxrs290_probe.__key) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %9 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #6
  %10 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %result.i, align 1, !annotation !84
  %call.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.spi_w8r8.exit_crit_edge, label %cond.false.i

if.end.spi_w8r8.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_w8r8.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %result.i, align 1
  %conv.i = zext i8 %12 to i32
  br label %spi_w8r8.exit

spi_w8r8.exit:                                    ; preds = %cond.false.i, %if.end.spi_w8r8.exit_crit_edge
  %cond.i = phi i32 [ %conv.i, %cond.false.i ], [ %call.i, %if.end.spi_w8r8.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %conv4 = and i32 %cond.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 173, i32 %conv4)
  %cmp.not = icmp eq i32 %conv4, 173
  br i1 %cmp.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef %conv4) #9
  br label %cleanup

if.end12:                                         ; preds = %spi_w8r8.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i101)
  %13 = ptrtoint ptr %cmd.addr.i101 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -127, ptr %cmd.addr.i101, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i102) #6
  %14 = ptrtoint ptr %result.i102 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %result.i102, align 1, !annotation !84
  %call.i103 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i101, i32 noundef 1, ptr noundef nonnull %result.i102, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp.i104 = icmp slt i32 %call.i103, 0
  br i1 %cmp.i104, label %if.end12.spi_w8r8.exit108_crit_edge, label %cond.false.i106

if.end12.spi_w8r8.exit108_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_w8r8.exit108

cond.false.i106:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %result.i102 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %result.i102, align 1
  %conv.i105 = zext i8 %16 to i32
  br label %spi_w8r8.exit108

spi_w8r8.exit108:                                 ; preds = %cond.false.i106, %if.end12.spi_w8r8.exit108_crit_edge
  %cond.i107 = phi i32 [ %conv.i105, %cond.false.i106 ], [ %call.i103, %if.end12.spi_w8r8.exit108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i102) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i101)
  %conv15 = and i32 %cond.i107, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %conv15)
  %cmp16.not = icmp eq i32 %conv15, 29
  br i1 %cmp16.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %spi_w8r8.exit108
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %conv15) #9
  br label %cleanup

if.end24:                                         ; preds = %spi_w8r8.exit108
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i109)
  %17 = ptrtoint ptr %cmd.addr.i109 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -126, ptr %cmd.addr.i109, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i110) #6
  %18 = ptrtoint ptr %result.i110 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %result.i110, align 1, !annotation !84
  %call.i111 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i109, i32 noundef 1, ptr noundef nonnull %result.i110, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp.i112 = icmp slt i32 %call.i111, 0
  br i1 %cmp.i112, label %if.end24.spi_w8r8.exit116_crit_edge, label %cond.false.i114

if.end24.spi_w8r8.exit116_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_w8r8.exit116

cond.false.i114:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %result.i110 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %result.i110, align 1
  %conv.i113 = zext i8 %20 to i32
  br label %spi_w8r8.exit116

spi_w8r8.exit116:                                 ; preds = %cond.false.i114, %if.end24.spi_w8r8.exit116_crit_edge
  %cond.i115 = phi i32 [ %conv.i113, %cond.false.i114 ], [ %call.i111, %if.end24.spi_w8r8.exit116_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i110) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i109)
  %conv27 = and i32 %cond.i115, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 146, i32 %conv27)
  %cmp28.not = icmp eq i32 %conv27, 146
  br i1 %cmp28.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %spi_w8r8.exit116
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11, i32 noundef %conv27) #9
  br label %cleanup

if.end36:                                         ; preds = %spi_w8r8.exit116
  %mode = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %mode, align 8
  %22 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %26 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 16, ptr %buf.i.i, align 1
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %26, align 1
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %25, ptr noundef nonnull %buf.i.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i117 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i117, label %if.end36.cleanup_crit_edge, label %if.end.i

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end36
  %mode.i = getelementptr inbounds %struct.adxrs290_state, ptr %23, i32 0, i32 2
  %29 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %mode.i, align 8
  %call.i10.i = call i32 @devm_add_action(ptr noundef %25, ptr noundef nonnull @adxrs290_chip_off_action, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end41_crit_edge, label %adxrs290_initial_setup.exit

if.end.i.if.end41_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

adxrs290_initial_setup.exit:                      ; preds = %if.end.i
  call void @adxrs290_chip_off_action(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp38 = icmp slt i32 %call.i10.i, 0
  br i1 %cmp38, label %adxrs290_initial_setup.exit.cleanup_crit_edge, label %adxrs290_initial_setup.exit.if.end41_crit_edge

adxrs290_initial_setup.exit.if.end41_crit_edge:   ; preds = %adxrs290_initial_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

adxrs290_initial_setup.exit.cleanup_crit_edge:    ; preds = %adxrs290_initial_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %adxrs290_initial_setup.exit.if.end41_crit_edge, %if.end.i.if.end41_crit_edge
  call void @msleep(i32 noundef 100) #6
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.adxrs290_state, ptr %31, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %34 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -111, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #6
  %35 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %result.i.i, align 1, !annotation !84
  %call.i.i119 = call i32 @spi_write_then_read(ptr noundef %33, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i119)
  %cmp.i.i = icmp slt i32 %call.i.i119, 0
  br i1 %cmp.i.i, label %if.end41.spi_w8r8.exit.i_crit_edge, label %cond.false.i.i

if.end41.spi_w8r8.exit.i_crit_edge:               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_w8r8.exit.i

cond.false.i.i:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %37 to i32
  br label %spi_w8r8.exit.i

spi_w8r8.exit.i:                                  ; preds = %cond.false.i.i, %if.end41.spi_w8r8.exit.i_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ %call.i.i119, %if.end41.spi_w8r8.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %sext.i = shl i32 %cond.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.i)
  %cmp.i120 = icmp slt i32 %sext.i, 0
  br i1 %cmp.i120, label %adxrs290_get_3db_freq.exit.thread, label %if.end46

adxrs290_get_3db_freq.exit.thread:                ; preds = %spi_w8r8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv2.i = ashr exact i32 %sext.i, 16
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

if.end46:                                         ; preds = %spi_w8r8.exit.i
  %conv18.i = and i32 %cond.i.i, 7
  %38 = lshr i32 %cond.i.i, 4
  call void @mutex_unlock(ptr noundef %lock.i) #6
  %lpf_3db_freq_idx = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %lpf_3db_freq_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv18.i, ptr %lpf_3db_freq_idx, align 4
  %conv48 = and i32 %38, 15
  %hpf_3db_freq_idx = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %hpf_3db_freq_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv48, ptr %hpf_3db_freq_idx, align 8
  %call50 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @adxrs290_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call50, ptr noundef nonnull @.str.13) #6
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  %41 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i122

do.end.i:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.16) #9
  br label %if.end61

if.end.i122:                                      ; preds = %if.end56
  %47 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name, align 8
  %call4.i = call i32 @iio_device_id(ptr noundef nonnull %call) #6
  %call5.i = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %44, ptr noundef nonnull @.str.19, ptr noundef %48, i32 noundef %call4.i) #6
  %dready_trig.i = getelementptr inbounds %struct.adxrs290_state, ptr %42, i32 0, i32 5
  %49 = ptrtoint ptr %dready_trig.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call5.i, ptr %dready_trig.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %if.end.i122.cleanup_crit_edge, label %if.end9.i

if.end.i122.cleanup_crit_edge:                    ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i122
  %50 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @adxrs290_trigger_ops, ptr %call5.i, align 8
  %51 = ptrtoint ptr %dready_trig.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dready_trig.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %52, i32 0, i32 4, i32 8
  %53 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call, ptr %driver_data.i.i.i, align 4
  %54 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %42, align 8
  %irq15.i = getelementptr inbounds %struct.spi_device, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %irq15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq15.i, align 4
  %58 = load ptr, ptr %dready_trig.i, align 4
  %call.i.i123 = call i32 @devm_request_threaded_irq(ptr noundef %55, i32 noundef %57, ptr noundef nonnull @iio_trigger_generic_data_rdy_poll, ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str.20, ptr noundef %58) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %cmp.i124 = icmp slt i32 %call.i.i123, 0
  %59 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %42, align 8
  br i1 %cmp.i124, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq22.i = getelementptr inbounds %struct.spi_device, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %irq22.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq22.i, align 4
  %call23.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %60, i32 noundef %call.i.i123, ptr noundef nonnull @.str.21, i32 noundef %62) #6
  br label %adxrs290_probe_trigger.exit

if.end24.i:                                       ; preds = %if.end9.i
  %63 = ptrtoint ptr %dready_trig.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dready_trig.i, align 4
  %call28.i = call i32 @__devm_iio_trigger_register(ptr noundef %60, ptr noundef %64, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end36.i, label %do.end33.i

do.end33.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %42, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.23) #9
  br label %adxrs290_probe_trigger.exit

if.end36.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %dready_trig.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dready_trig.i, align 4
  %dev.i.i = getelementptr inbounds %struct.iio_trigger, ptr %68, i32 0, i32 4
  %call.i62.i = call ptr @get_device(ptr noundef %dev.i.i) #6
  %owner.i.i = getelementptr inbounds %struct.iio_trigger, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %owner.i.i, align 4
  call void @__module_get(ptr noundef %70) #6
  %trig.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 10
  %71 = ptrtoint ptr %trig.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %trig.i, align 4
  br label %if.end61

adxrs290_probe_trigger.exit:                      ; preds = %do.end33.i, %if.then18.i
  %retval.0.i125 = phi i32 [ %call23.i, %if.then18.i ], [ %call28.i, %do.end33.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i125)
  %cmp58 = icmp slt i32 %retval.0.i125, 0
  br i1 %cmp58, label %adxrs290_probe_trigger.exit.cleanup_crit_edge, label %adxrs290_probe_trigger.exit.if.end61_crit_edge

adxrs290_probe_trigger.exit.if.end61_crit_edge:   ; preds = %adxrs290_probe_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

adxrs290_probe_trigger.exit.cleanup_crit_edge:    ; preds = %adxrs290_probe_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %adxrs290_probe_trigger.exit.if.end61_crit_edge, %if.end36.i, %do.end.i
  %call63 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %adxrs290_probe_trigger.exit.cleanup_crit_edge, %if.end.i122.cleanup_crit_edge, %if.then53, %adxrs290_get_3db_freq.exit.thread, %adxrs290_initial_setup.exit.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %do.end33, %do.end21, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end9 ], [ -19, %do.end21 ], [ -19, %do.end33 ], [ %call55, %if.then53 ], [ %call63, %if.end61 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i10.i, %adxrs290_initial_setup.exit.cleanup_crit_edge ], [ %retval.0.i125, %adxrs290_probe_trigger.exit.cleanup_crit_edge ], [ %conv2.i, %adxrs290_get_3db_freq.exit.thread ], [ %call.i.i, %if.end36.cleanup_crit_edge ], [ -12, %if.end.i122.cleanup_crit_edge ]
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
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxrs290_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %tx = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx) #6
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -120, ptr %tx, align 1
  %lock = getelementptr inbounds %struct.adxrs290_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %buffer = getelementptr inbounds %struct.adxrs290_state, ptr %3, i32 0, i32 6
  %call2 = call i32 @spi_write_then_read(ptr noundef %6, ptr noundef nonnull %tx, i32 noundef 1, ptr noundef %buffer, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_unlock_notify_crit_edge, label %if.end

entry.out_unlock_notify_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock_notify

if.end:                                           ; preds = %entry
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scan_timestamp.i, align 8, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %12, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer, i32 %sub.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer) #6
  br label %out_unlock_notify

out_unlock_notify:                                ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.out_unlock_notify_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %15) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxrs290_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %cmd.addr.i.i61 = alloca i8, align 1
  %result.i.i62 = alloca i16, align 2
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i16, align 2
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
    i32 2, label %sw.bb13
    i32 10, label %sw.bb18
    i32 11, label %sw.bb25
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %4, label %if.end.sw.epilog_crit_edge [
    i32 4, label %sw.bb2
    i32 9, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address, align 4
  %8 = trunc i32 %7 to i8
  %conv = or i8 %8, -128
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.adxrs290_state, ptr %10, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %13 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %result.i.i) #6
  %14 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %result.i.i, align 2, !annotation !84
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %12, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %18, label %adxrs290_get_rate_data.exit

adxrs290_get_rate_data.exit:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %result.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %shr.i.i = sext i16 %16 to i32
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr.i.i, ptr %val, align 4
  br label %sw.epilog.sink.split

18:                                               ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %lock.i64 = getelementptr inbounds %struct.adxrs290_state, ptr %20, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i64, i32 noundef 0) #6
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i61) #6
  %23 = ptrtoint ptr %cmd.addr.i.i61 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -116, ptr %cmd.addr.i.i61, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %result.i.i62) #6
  %24 = ptrtoint ptr %result.i.i62 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %result.i.i62, align 2, !annotation !84
  %call.i.i65 = call i32 @spi_write_then_read(ptr noundef %22, ptr noundef nonnull %cmd.addr.i.i61, i32 noundef 1, ptr noundef nonnull %result.i.i62, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %cmp.i.i66 = icmp slt i32 %call.i.i65, 0
  br i1 %cmp.i.i66, label %28, label %adxrs290_get_temp_data.exit

adxrs290_get_temp_data.exit:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %result.i.i62 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %result.i.i62, align 2
  %conv.i.i = zext i16 %26 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result.i.i62) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i61) #6
  %shl.i.i = shl i32 %conv.i.i, 20
  %shr.i.i68 = ashr exact i32 %shl.i.i, 20
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr.i.i68, ptr %val, align 4
  br label %sw.epilog.sink.split

28:                                               ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result.i.i62) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i61) #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %28, %adxrs290_get_temp_data.exit, %18, %adxrs290_get_rate_data.exit
  %lock.i64.sink = phi ptr [ %lock.i64, %28 ], [ %lock.i64, %adxrs290_get_temp_data.exit ], [ %lock.i, %18 ], [ %lock.i, %adxrs290_get_rate_data.exit ]
  %ret.0.ph = phi i32 [ %call.i.i65, %28 ], [ 1, %adxrs290_get_temp_data.exit ], [ %call.i.i, %18 ], [ 1, %adxrs290_get_rate_data.exit ]
  call void @mutex_unlock(ptr noundef %lock.i64.sink) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %29 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chan, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %30, label %sw.bb13.cleanup_crit_edge [
    i32 4, label %sw.bb15
    i32 9, label %sw.bb16
  ]

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %val, align 4
  %33 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 87266, ptr %val2, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 100, ptr %val, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %35 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cond36 = icmp eq i32 %36, 4
  br i1 %cond36, label %sw.bb20, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  %lpf_3db_freq_idx = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %lpf_3db_freq_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lpf_3db_freq_idx, align 4
  %arrayidx = getelementptr [8 x [2 x i32]], ptr @adxrs290_lpf_3db_freq_hz_table, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %val, align 4
  %arrayidx23 = getelementptr [8 x [2 x i32]], ptr @adxrs290_lpf_3db_freq_hz_table, i32 0, i32 %38, i32 1
  %42 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx23, align 4
  %44 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val2, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %45 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cond = icmp eq i32 %46, 4
  br i1 %cond, label %sw.bb27, label %sw.bb25.cleanup_crit_edge

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb27:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %hpf_3db_freq_idx = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %hpf_3db_freq_idx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hpf_3db_freq_idx, align 8
  %arrayidx28 = getelementptr [11 x [2 x i32]], ptr @adxrs290_hpf_3db_freq_hz_table, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx28, align 4
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val, align 4
  %arrayidx31 = getelementptr [11 x [2 x i32]], ptr @adxrs290_hpf_3db_freq_hz_table, i32 0, i32 %48, i32 1
  %52 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx31, align 4
  %54 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb27, %sw.bb25.cleanup_crit_edge, %sw.bb20, %sw.bb18.cleanup_crit_edge, %sw.bb16, %sw.bb15, %sw.bb13.cleanup_crit_edge, %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb27 ], [ 2, %sw.bb20 ], [ 1, %sw.bb16 ], [ 3, %sw.bb15 ], [ %ret.0, %sw.epilog ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @adxrs290_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %mask, label %entry.return_crit_edge [
    i32 10, label %entry.return.sink.split_crit_edge
    i32 11, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %adxrs290_hpf_3db_freq_hz_table.sink = phi ptr [ @adxrs290_hpf_3db_freq_hz_table, %sw.bb1 ], [ @adxrs290_lpf_3db_freq_hz_table, %entry.return.sink.split_crit_edge ]
  %.sink = phi i32 [ 22, %sw.bb1 ], [ 16, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adxrs290_hpf_3db_freq_hz_table.sink, ptr %vals, align 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %length, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxrs290_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buf.i.i46 = alloca [2 x i8], align 1
  %buf.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %mask, label %if.end.sw.epilog_crit_edge [
    i32 10, label %for.body.i.preheader
    i32 11, label %for.body.i37.preheader
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.i37.preheader:                           ; preds = %if.end
  %3 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %val, label %for.body.i37.preheader.sw.epilog_crit_edge [
    i32 0, label %land.lhs.true.i40
    i32 1, label %land.lhs.true.i40.8
    i32 2, label %land.lhs.true.i40.9
    i32 11, label %land.lhs.true.i40.10
  ]

for.body.i37.preheader.sw.epilog_crit_edge:       ; preds = %for.body.i37.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.i.preheader:                             ; preds = %if.end
  %4 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %val, label %for.body.i.preheader.sw.epilog_crit_edge [
    i32 480, label %land.lhs.true.i
    i32 320, label %land.lhs.true.i.1
    i32 160, label %land.lhs.true.i.2
    i32 80, label %land.lhs.true.i.3
    i32 56, label %land.lhs.true.i.4
    i32 40, label %land.lhs.true.i.5
    i32 28, label %land.lhs.true.i.6
    i32 20, label %land.lhs.true.i.7
  ]

for.body.i.preheader.sw.epilog_crit_edge:         ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i, label %land.lhs.true.i.if.end4_crit_edge, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i.if.end4_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.i.1:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.1 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.1, label %land.lhs.true.i.1.if.end4_crit_edge, label %land.lhs.true.i.1.sw.epilog_crit_edge

land.lhs.true.i.1.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i.1.if.end4_crit_edge:              ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.i.2:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.2 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.2, label %land.lhs.true.i.2.if.end4_crit_edge, label %land.lhs.true.i.2.sw.epilog_crit_edge

land.lhs.true.i.2.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i.2.if.end4_crit_edge:              ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.i.3:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.3 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.3, label %land.lhs.true.i.3.if.end4_crit_edge, label %land.lhs.true.i.3.sw.epilog_crit_edge

land.lhs.true.i.3.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i.3.if.end4_crit_edge:              ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.i.4:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %val2)
  %cmp5.i.4 = icmp eq i32 %val2, 600000
  br i1 %cmp5.i.4, label %land.lhs.true.i.4.if.end4_crit_edge, label %land.lhs.true.i.4.sw.epilog_crit_edge

land.lhs.true.i.4.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i.4.if.end4_crit_edge:              ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.i.5:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.5 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.5, label %land.lhs.true.i.5.if.end4_crit_edge, label %land.lhs.true.i.5.sw.epilog_crit_edge

land.lhs.true.i.5.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i.5.if.end4_crit_edge:              ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.i.6:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %val2)
  %cmp5.i.6 = icmp eq i32 %val2, 300000
  br i1 %cmp5.i.6, label %land.lhs.true.i.6.if.end4_crit_edge, label %land.lhs.true.i.6.sw.epilog_crit_edge

land.lhs.true.i.6.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i.6.if.end4_crit_edge:              ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

land.lhs.true.i.7:                                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.7 = icmp eq i32 %val2, 0
  br i1 %cmp5.i.7, label %land.lhs.true.i.7.if.end4_crit_edge, label %land.lhs.true.i.7.sw.epilog_crit_edge

land.lhs.true.i.7.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i.7.if.end4_crit_edge:              ; preds = %land.lhs.true.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.i.7.if.end4_crit_edge, %land.lhs.true.i.6.if.end4_crit_edge, %land.lhs.true.i.5.if.end4_crit_edge, %land.lhs.true.i.4.if.end4_crit_edge, %land.lhs.true.i.3.if.end4_crit_edge, %land.lhs.true.i.2.if.end4_crit_edge, %land.lhs.true.i.1.if.end4_crit_edge, %land.lhs.true.i.if.end4_crit_edge
  %i.012.i.lcssa = phi i32 [ 0, %land.lhs.true.i.if.end4_crit_edge ], [ 1, %land.lhs.true.i.1.if.end4_crit_edge ], [ 2, %land.lhs.true.i.2.if.end4_crit_edge ], [ 3, %land.lhs.true.i.3.if.end4_crit_edge ], [ 4, %land.lhs.true.i.4.if.end4_crit_edge ], [ 5, %land.lhs.true.i.5.if.end4_crit_edge ], [ 6, %land.lhs.true.i.6.if.end4_crit_edge ], [ 7, %land.lhs.true.i.7.if.end4_crit_edge ]
  %lpf_3db_freq_idx = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %lpf_3db_freq_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.012.i.lcssa, ptr %lpf_3db_freq_idx, align 4
  %hpf_3db_freq_idx = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %hpf_3db_freq_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hpf_3db_freq_idx, align 8
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %shl.i = shl i32 %7, 4
  %or.i = or i32 %shl.i, %i.012.i.lcssa
  %conv.i = trunc i32 %or.i to i8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %12 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 17, ptr %buf.i.i, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %12, align 1
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %11, ptr noundef nonnull %buf.i.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %sw.epilog

land.lhs.true.i40:                                ; preds = %for.body.i37.preheader
  %15 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %val2, label %land.lhs.true.i40.sw.epilog_crit_edge [
    i32 0, label %land.lhs.true.i40.do.end12.i51_crit_edge
    i32 11000, label %do.end12.i51.fold.split
    i32 22000, label %do.end12.i51.fold.split79
    i32 44000, label %do.end12.i51.fold.split80
    i32 87000, label %do.end12.i51.fold.split81
    i32 175000, label %do.end12.i51.fold.split82
    i32 350000, label %do.end12.i51.fold.split83
    i32 700000, label %do.end12.i51.fold.split84
  ]

land.lhs.true.i40.do.end12.i51_crit_edge:         ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i51

land.lhs.true.i40.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i40.8:                              ; preds = %for.body.i37.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %val2)
  %cmp5.i39.8 = icmp eq i32 %val2, 400000
  br i1 %cmp5.i39.8, label %land.lhs.true.i40.8.do.end12.i51_crit_edge, label %land.lhs.true.i40.8.sw.epilog_crit_edge

land.lhs.true.i40.8.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i40.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i40.8.do.end12.i51_crit_edge:       ; preds = %land.lhs.true.i40.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i51

land.lhs.true.i40.9:                              ; preds = %for.body.i37.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %val2)
  %cmp5.i39.9 = icmp eq i32 %val2, 800000
  br i1 %cmp5.i39.9, label %land.lhs.true.i40.9.do.end12.i51_crit_edge, label %land.lhs.true.i40.9.sw.epilog_crit_edge

land.lhs.true.i40.9.sw.epilog_crit_edge:          ; preds = %land.lhs.true.i40.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i40.9.do.end12.i51_crit_edge:       ; preds = %land.lhs.true.i40.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i51

land.lhs.true.i40.10:                             ; preds = %for.body.i37.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %val2)
  %cmp5.i39.10 = icmp eq i32 %val2, 300000
  br i1 %cmp5.i39.10, label %land.lhs.true.i40.10.do.end12.i51_crit_edge, label %land.lhs.true.i40.10.sw.epilog_crit_edge

land.lhs.true.i40.10.sw.epilog_crit_edge:         ; preds = %land.lhs.true.i40.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i40.10.do.end12.i51_crit_edge:      ; preds = %land.lhs.true.i40.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i51

do.end12.i51.fold.split:                          ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i51

do.end12.i51.fold.split79:                        ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i51

do.end12.i51.fold.split80:                        ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i51

do.end12.i51.fold.split81:                        ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i51

do.end12.i51.fold.split82:                        ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i51

do.end12.i51.fold.split83:                        ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i51

do.end12.i51.fold.split84:                        ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12.i51

do.end12.i51:                                     ; preds = %do.end12.i51.fold.split84, %do.end12.i51.fold.split83, %do.end12.i51.fold.split82, %do.end12.i51.fold.split81, %do.end12.i51.fold.split80, %do.end12.i51.fold.split79, %do.end12.i51.fold.split, %land.lhs.true.i40.10.do.end12.i51_crit_edge, %land.lhs.true.i40.9.do.end12.i51_crit_edge, %land.lhs.true.i40.8.do.end12.i51_crit_edge, %land.lhs.true.i40.do.end12.i51_crit_edge
  %i.012.i34.lcssa = phi i32 [ %val2, %land.lhs.true.i40.do.end12.i51_crit_edge ], [ 8, %land.lhs.true.i40.8.do.end12.i51_crit_edge ], [ 9, %land.lhs.true.i40.9.do.end12.i51_crit_edge ], [ 10, %land.lhs.true.i40.10.do.end12.i51_crit_edge ], [ 1, %do.end12.i51.fold.split ], [ 2, %do.end12.i51.fold.split79 ], [ 3, %do.end12.i51.fold.split80 ], [ 4, %do.end12.i51.fold.split81 ], [ 5, %do.end12.i51.fold.split82 ], [ 6, %do.end12.i51.fold.split83 ], [ 7, %do.end12.i51.fold.split84 ]
  %hpf_3db_freq_idx11 = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %hpf_3db_freq_idx11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.012.i34.lcssa, ptr %hpf_3db_freq_idx11, align 8
  %lpf_3db_freq_idx12 = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %lpf_3db_freq_idx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lpf_3db_freq_idx12, align 4
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %shl.i53 = shl nuw nsw i32 %i.012.i34.lcssa, 4
  %and37.i54 = and i32 %18, 7
  %or.i55 = or i32 %and37.i54, %shl.i53
  %conv.i56 = trunc i32 %or.i55 to i8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i46) #6
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i.i46, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i.i46 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 17, ptr %buf.i.i46, align 1
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i56, ptr %23, align 1
  %call.i.i57 = call i32 @spi_write_then_read(ptr noundef %22, ptr noundef nonnull %buf.i.i46, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i46) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end12.i51, %land.lhs.true.i40.10.sw.epilog_crit_edge, %land.lhs.true.i40.9.sw.epilog_crit_edge, %land.lhs.true.i40.8.sw.epilog_crit_edge, %land.lhs.true.i40.sw.epilog_crit_edge, %if.end4, %land.lhs.true.i.7.sw.epilog_crit_edge, %land.lhs.true.i.6.sw.epilog_crit_edge, %land.lhs.true.i.5.sw.epilog_crit_edge, %land.lhs.true.i.4.sw.epilog_crit_edge, %land.lhs.true.i.3.sw.epilog_crit_edge, %land.lhs.true.i.2.sw.epilog_crit_edge, %land.lhs.true.i.1.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %for.body.i.preheader.sw.epilog_crit_edge, %for.body.i37.preheader.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call.i.i57, %do.end12.i51 ], [ %call.i.i, %if.end4 ], [ -22, %if.end.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.7.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i40.10.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.6.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.5.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.4.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.3.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.2.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.1.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i40.9.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i40.8.sw.epilog_crit_edge ], [ -22, %for.body.i.preheader.sw.epilog_crit_edge ], [ -22, %land.lhs.true.i40.sw.epilog_crit_edge ], [ -22, %for.body.i37.preheader.sw.epilog_crit_edge ]
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxrs290_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %readval, null
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %conv = trunc i32 %reg to i8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv.i = or i8 %conv, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %4 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #6
  %5 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %result.i.i, align 1, !annotation !84
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %spi_w8r8.exit.thread.i, label %spi_w8r8.exit.i

spi_w8r8.exit.thread.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  br label %cleanup

spi_w8r8.exit.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %8 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i.i, ptr %readval, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv3 = trunc i32 %writeval to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %buf.i, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3, ptr %9, align 1
  %call.i = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %spi_w8r8.exit.i, %spi_w8r8.exit.thread.i
  %retval.0 = phi i32 [ %call.i, %if.else ], [ 0, %spi_w8r8.exit.i ], [ %call.i.i, %spi_w8r8.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adxrs290_chip_off_action(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %mode1.i = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.adxrs290_set_mode.exit_crit_edge, label %if.end.i

entry.adxrs290_set_mode.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %adxrs290_set_mode.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adxrs290_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %6 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -112, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #6
  %7 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %result.i.i, align 1, !annotation !84
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %spi_w8r8.exit.thread.i, label %spi_w8r8.exit.i

spi_w8r8.exit.thread.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  br label %out_unlock.i

spi_w8r8.exit.i:                                  ; preds = %if.end.i
  %8 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %result.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %conv.i = and i8 %9, -3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %12 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %buf.i.i, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %12, align 1
  %call.i1.i = call i32 @spi_write_then_read(ptr noundef %11, ptr noundef nonnull %buf.i.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp9.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp9.i, label %do.end.i, label %if.end13.i

do.end.i:                                         ; preds = %spi_w8r8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14, i32 noundef %call.i1.i) #9
  br label %out_unlock.i

if.end13.i:                                       ; preds = %spi_w8r8.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mode1.i, align 8
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.end13.i, %do.end.i, %spi_w8r8.exit.thread.i
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %adxrs290_set_mode.exit

adxrs290_set_mode.exit:                           ; preds = %out_unlock.i, %entry.adxrs290_set_mode.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_generic_data_rdy_poll(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxrs290_data_rdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %spec.select = zext i1 %state to i8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select, ptr %6, align 1
  %call.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %buf.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end18, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.25) #9
  br label %if.end

if.end:                                           ; preds = %do.end18, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adxrs290_reset_trig(ptr nocapture noundef readonly %trig) #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %lock.i = getelementptr inbounds %struct.adxrs290_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %6 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -118, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %result.i.i) #6
  %7 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %result.i.i, align 2, !annotation !84
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !56, !58, !60, !62, !64, !65, !66, !68, !70, !71, !72, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_adxrs290__259_704_adxrs290_driver_init6, !1, !"__initcall__kmod_adxrs290__259_704_adxrs290_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/gyro/adxrs290.c", i32 704, i32 1}
!2 = !{ptr @__exitcall_adxrs290_driver_exit, !1, !"__exitcall_adxrs290_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author260, !4, !"__UNIQUE_ID_author260", i1 false, i1 false}
!4 = !{!"../drivers/iio/gyro/adxrs290.c", i32 706, i32 1}
!5 = !{ptr @__UNIQUE_ID_description261, !6, !"__UNIQUE_ID_description261", i1 false, i1 false}
!6 = !{!"../drivers/iio/gyro/adxrs290.c", i32 707, i32 1}
!7 = !{ptr @__UNIQUE_ID_file262, !8, !"__UNIQUE_ID_file262", i1 false, i1 false}
!8 = !{!"../drivers/iio/gyro/adxrs290.c", i32 708, i32 1}
!9 = !{ptr @__UNIQUE_ID_license263, !8, !"__UNIQUE_ID_license263", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/gyro/adxrs290.c", i32 699, i32 11}
!12 = !{ptr @adxrs290_driver, !13, !"adxrs290_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/gyro/adxrs290.c", i32 697, i32 26}
!14 = !{ptr @adxrs290_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/gyro/adxrs290.c", i32 639, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/gyro/adxrs290.c", i32 643, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @adxrs290_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @adxrs290_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/gyro/adxrs290.c", i32 649, i32 3}
!27 = !{ptr @adxrs290_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @adxrs290_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/gyro/adxrs290.c", i32 655, i32 3}
!31 = !{ptr @adxrs290_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @adxrs290_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/gyro/adxrs290.c", i32 682, i32 10}
!35 = !{ptr @adxrs290_channels, !36, !"adxrs290_channels", i1 false, i1 false}
!36 = !{!"../drivers/iio/gyro/adxrs290.c", i32 550, i32 35}
!37 = !{ptr @adxrs290_info, !38, !"adxrs290_info", i1 false, i1 false}
!38 = !{!"../drivers/iio/gyro/adxrs290.c", i32 574, i32 30}
!39 = !{ptr @adxrs290_lpf_3db_freq_hz_table, !40, !"adxrs290_lpf_3db_freq_hz_table", i1 false, i1 false}
!40 = !{!"../drivers/iio/gyro/adxrs290.c", i32 86, i32 18}
!41 = !{ptr @adxrs290_hpf_3db_freq_hz_table, !42, !"adxrs290_hpf_3db_freq_hz_table", i1 false, i1 false}
!42 = !{!"../drivers/iio/gyro/adxrs290.c", i32 101, i32 18}
!43 = !{ptr @adxrs290_avail_scan_masks, !44, !"adxrs290_avail_scan_masks", i1 false, i1 false}
!44 = !{!"../drivers/iio/gyro/adxrs290.c", i32 569, i32 28}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/gyro/adxrs290.c", i32 245, i32 3}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @adxrs290_set_mode._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @adxrs290_set_mode._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/gyro/adxrs290.c", i32 587, i32 3}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @adxrs290_probe_trigger._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @adxrs290_probe_trigger._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/gyro/adxrs290.c", i32 591, i32 58}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/gyro/adxrs290.c", i32 602, i32 25}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/gyro/adxrs290.c", i32 605, i32 10}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/gyro/adxrs290.c", i32 609, i32 3}
!64 = !{ptr @adxrs290_probe_trigger._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @adxrs290_probe_trigger._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @adxrs290_trigger_ops, !67, !"adxrs290_trigger_ops", i1 false, i1 false}
!67 = !{!"../drivers/iio/gyro/adxrs290.c", i32 497, i32 37}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/gyro/adxrs290.c", i32 477, i32 3}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @adxrs290_data_rdy_trigger_set_state._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @adxrs290_data_rdy_trigger_set_state._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @adxrs290_of_match, !74, !"adxrs290_of_match", i1 false, i1 false}
!74 = !{!"../drivers/iio/gyro/adxrs290.c", i32 691, i32 34}
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
!85 = !{i8 0, i8 2}
