; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti-ads131e08.c_pt.bc'
source_filename = "../drivers/iio/adc/ti-ads131e08.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.ads131e08_pga_gain_desc = type { i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ads131e08_data_rate_desc = type { i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ads131e08_info = type { i32, ptr }
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
%struct.ads131e08_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, %struct.anon.85, [120 x i8], [3 x i8], [28 x i8], [97 x i8] }
%struct.anon.85 = type { [24 x i8], i64 }
%struct.ads131e08_channel_config = type { i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ti_ads131e08__320_949_ads131e08_driver_init6 = internal global ptr @ads131e08_driver_init, section ".initcall6.init", align 4
@ads131e08_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ads131e08_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ads131e08_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ads131e08_driver_exit = internal global ptr @ads131e08_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [60 x i8] c"ti_ads131e08.author=Tomislav Denis <tomislav.denis@avl.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [57 x i8] c"ti_ads131e08.description=Driver for ADS131E0x ADC family\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [47 x i8] c"ti_ads131e08.file=drivers/iio/adc/ti-ads131e08\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [28 x i8] c"ti_ads131e08.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ads131e08\00", [22 x i8] zeroinitializer }, align 32
@ads131e08_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads131e04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ads131e08_info_tbl }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads131e06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ads131e08_info_tbl, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads131e08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ads131e08_info_tbl, i64 16) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 814, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ads131e08_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/adc/ti-ads131e08.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry_ptr = internal global ptr @ads131e08_probe._entry, section ".printk_index", align 4
@ads131e08_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 820, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry_ptr.8 = internal global ptr @ads131e08_probe._entry.6, section ".printk_index", align 4
@ads131e08_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ads131e08_attribute_group, ptr @ads131e08_read_raw, ptr null, ptr null, ptr @ads131e08_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ads131e08_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request irq failed\0A\00", [44 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 847, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"data ready IRQ missing\0A\00", [40 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry_ptr.12 = internal global ptr @ads131e08_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 854, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate IIO trigger\0A\00", [32 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry_ptr.16 = internal global ptr @ads131e08_probe._entry.14, section ".printk_index", align 4
@ads131e08_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @ads131e08_set_trigger_state, ptr null, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 863, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register IIO trigger\0A\00", [32 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry_ptr.19 = internal global ptr @ads131e08_probe._entry.17, section ".printk_index", align 4
@ads131e08_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 872, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to setup IIO buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry_ptr.22 = internal global ptr @ads131e08_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 881, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to enable external vref supply\0A\00", [57 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry_ptr.26 = internal global ptr @ads131e08_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adc-clk\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get the ADC clock\0A\00", [35 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 902, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to prepare/enable the ADC clock\0A\00", [56 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry_ptr.31 = internal global ptr @ads131e08_probe._entry.29, section ".printk_index", align 4
@ads131e08_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 912, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get the ADC clock rate\0A\00", [62 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry_ptr.34 = internal global ptr @ads131e08_probe._entry.32, section ".printk_index", align 4
@ads131e08_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 924, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"initial configuration failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ads131e08_probe._entry_ptr.37 = internal global ptr @ads131e08_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,vref-internal\00", [47 x i8] zeroinitializer }, align 32
@ads131e08_alloc_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 713, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid internal voltage reference\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ads131e08_alloc_channels\00", [39 x i8] zeroinitializer }, align 32
@ads131e08_alloc_channels._entry_ptr = internal global ptr @ads131e08_alloc_channels._entry, section ".printk_index", align 4
@ads131e08_alloc_channels._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 719, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no channel children\0A\00", [43 x i8] zeroinitializer }, align 32
@ads131e08_alloc_channels._entry_ptr.43 = internal global ptr @ads131e08_alloc_channels._entry.41, section ".printk_index", align 4
@ads131e08_alloc_channels._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 724, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"num of channel children out of range\0A\00", [58 x i8] zeroinitializer }, align 32
@ads131e08_alloc_channels._entry_ptr.46 = internal global ptr @ads131e08_alloc_channels._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,gain\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ti,mux\00", [25 x i8] zeroinitializer }, align 32
@ads131e08_pga_gain_tbl = internal constant { [5 x %struct.ads131e08_pga_gain_desc], [56 x i8] } { [5 x %struct.ads131e08_pga_gain_desc] [%struct.ads131e08_pga_gain_desc { i32 1, i8 1 }, %struct.ads131e08_pga_gain_desc { i32 2, i8 2 }, %struct.ads131e08_pga_gain_desc { i32 4, i8 4 }, %struct.ads131e08_pga_gain_desc { i32 8, i8 5 }, %struct.ads131e08_pga_gain_desc { i32 12, i8 6 }], [56 x i8] zeroinitializer }, align 32
@ads131e08_pga_gain_to_field_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid PGA gain value\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ads131e08_pga_gain_to_field_value\00", [62 x i8] zeroinitializer }, align 32
@ads131e08_pga_gain_to_field_value._entry_ptr = internal global ptr @ads131e08_pga_gain_to_field_value._entry, section ".printk_index", align 4
@ads131e08_validate_channel_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid channel mux value\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ads131e08_validate_channel_mux\00", [33 x i8] zeroinitializer }, align 32
@ads131e08_validate_channel_mux._entry_ptr = internal global ptr @ads131e08_validate_channel_mux._entry, section ".printk_index", align 4
@ads131e08_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ads131e08_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ads131e08_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.54, %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"1 2 4 8 16 32 64\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@ads131e08_exec_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Exec cmd(%02x) failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ads131e08_exec_cmd\00", [45 x i8] zeroinitializer }, align 32
@ads131e08_exec_cmd._entry_ptr = internal global ptr @ads131e08_exec_cmd._entry, section ".printk_index", align 4
@ads131e08_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Read data failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ads131e08_read_data\00", [44 x i8] zeroinitializer }, align 32
@ads131e08_read_data._entry_ptr = internal global ptr @ads131e08_read_data._entry, section ".printk_index", align 4
@ads131e08_data_rate_tbl = internal constant { [7 x %struct.ads131e08_data_rate_desc], [40 x i8] } { [7 x %struct.ads131e08_data_rate_desc] [%struct.ads131e08_data_rate_desc { i32 64, i8 0 }, %struct.ads131e08_data_rate_desc { i32 32, i8 1 }, %struct.ads131e08_data_rate_desc { i32 16, i8 2 }, %struct.ads131e08_data_rate_desc { i32 8, i8 3 }, %struct.ads131e08_data_rate_desc { i32 4, i8 4 }, %struct.ads131e08_data_rate_desc { i32 2, i8 5 }, %struct.ads131e08_data_rate_desc { i32 1, i8 6 }], [40 x i8] zeroinitializer }, align 32
@ads131e08_set_data_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid data rate value\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ads131e08_set_data_rate\00", [40 x i8] zeroinitializer }, align 32
@ads131e08_set_data_rate._entry_ptr = internal global ptr @ads131e08_set_data_rate._entry, section ".printk_index", align 4
@ads131e08_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Read register failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ads131e08_read_reg\00", [45 x i8] zeroinitializer }, align 32
@ads131e08_read_reg._entry_ptr = internal global ptr @ads131e08_read_reg._entry, section ".printk_index", align 4
@ads131e08_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Write register failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ads131e08_write_reg\00", [44 x i8] zeroinitializer }, align 32
@ads131e08_write_reg._entry_ptr = internal global ptr @ads131e08_write_reg._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ads131e08_info_tbl = internal constant { [3 x %struct.ads131e08_info], [40 x i8] } { [3 x %struct.ads131e08_info] [%struct.ads131e08_info { i32 4, ptr @.str.67 }, %struct.ads131e08_info { i32 6, ptr @.str.68 }, %struct.ads131e08_info { i32 8, ptr @.str }], [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ads131e04\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ads131e06\00", [22 x i8] zeroinitializer }, align 32
@switch.table.ads131e08_probe = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1, i32 2, i32 1, i32 4, i32 1, i32 1, i32 1, i32 8, i32 1, i32 1, i32 1, i32 12], [48 x i8] zeroinitializer }, align 32
@switch.table.ads131e08_probe.69 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 0, i32 3, i32 4], [44 x i8] zeroinitializer }, align 32
@switch.table.ads131e08_initial_config = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 4], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.71 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64]
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"ads131e08_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 942, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 944, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"ads131e08_of_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 931, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 814, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 820, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"ads131e08_iio_info\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 592, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 845, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 847, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 851, i32 47 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 854, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"ads131e08_trigger_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 608, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 863, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 872, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 876, i32 56 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 880, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 895, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 898, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 902, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 912, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 924, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 701, i32 38 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 713, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 719, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 724, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 740, i32 40 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 744, i32 40 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 755, i32 40 }
@___asan_gen_.207 = private unnamed_addr constant [23 x i8] c"ads131e08_pga_gain_tbl\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 152, i32 45 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 294, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 331, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [26 x i8] c"ads131e08_attribute_group\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 574, i32 37 }
@___asan_gen_.231 = private unnamed_addr constant [21 x i8] c"ads131e08_attributes\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 569, i32 26 }
@___asan_gen_.234 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 567, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 168, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 244, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [24 x i8] c"ads131e08_data_rate_tbl\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 137, i32 46 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 259, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 195, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 222, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 87, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [19 x i8] c"ads131e08_info_tbl\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 117, i32 36 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 120, i32 11 }
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private constant [34 x i8] c"../drivers/iio/adc/ti-ads131e08.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 124, i32 11 }
@___asan_gen_.306 = private unnamed_addr constant [29 x i8] c"switch.table.ads131e08_probe\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [32 x i8] c"switch.table.ads131e08_probe.69\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [38 x i8] c"switch.table.ads131e08_initial_config\00", align 1
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_ads131e08_driver_exit, ptr @__initcall__kmod_ti_ads131e08__320_949_ads131e08_driver_init6, ptr @ads131e08_alloc_channels._entry, ptr @ads131e08_alloc_channels._entry.41, ptr @ads131e08_alloc_channels._entry.44, ptr @ads131e08_alloc_channels._entry_ptr, ptr @ads131e08_alloc_channels._entry_ptr.43, ptr @ads131e08_alloc_channels._entry_ptr.46, ptr @ads131e08_driver_exit, ptr @ads131e08_exec_cmd._entry, ptr @ads131e08_exec_cmd._entry_ptr, ptr @ads131e08_pga_gain_to_field_value._entry, ptr @ads131e08_pga_gain_to_field_value._entry_ptr, ptr @ads131e08_probe._entry, ptr @ads131e08_probe._entry.10, ptr @ads131e08_probe._entry.14, ptr @ads131e08_probe._entry.17, ptr @ads131e08_probe._entry.20, ptr @ads131e08_probe._entry.24, ptr @ads131e08_probe._entry.29, ptr @ads131e08_probe._entry.32, ptr @ads131e08_probe._entry.35, ptr @ads131e08_probe._entry.6, ptr @ads131e08_probe._entry_ptr, ptr @ads131e08_probe._entry_ptr.12, ptr @ads131e08_probe._entry_ptr.16, ptr @ads131e08_probe._entry_ptr.19, ptr @ads131e08_probe._entry_ptr.22, ptr @ads131e08_probe._entry_ptr.26, ptr @ads131e08_probe._entry_ptr.31, ptr @ads131e08_probe._entry_ptr.34, ptr @ads131e08_probe._entry_ptr.37, ptr @ads131e08_probe._entry_ptr.8, ptr @ads131e08_read_data._entry, ptr @ads131e08_read_data._entry_ptr, ptr @ads131e08_read_reg._entry, ptr @ads131e08_read_reg._entry_ptr, ptr @ads131e08_set_data_rate._entry, ptr @ads131e08_set_data_rate._entry_ptr, ptr @ads131e08_validate_channel_mux._entry, ptr @ads131e08_validate_channel_mux._entry_ptr, ptr @ads131e08_write_reg._entry, ptr @ads131e08_write_reg._entry_ptr, ptr @ads131e08_driver, ptr @.str, ptr @ads131e08_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ads131e08_iio_info, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @ads131e08_trigger_ops, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @ads131e08_pga_gain_tbl, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @ads131e08_attribute_group, ptr @ads131e08_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @ads131e08_data_rate_tbl, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @init_completion.__key, ptr @.str.66, ptr @ads131e08_info_tbl, ptr @.str.67, ptr @.str.68, ptr @switch.table.ads131e08_probe, ptr @switch.table.ads131e08_probe.69, ptr @switch.table.ads131e08_initial_config], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_alloc_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_alloc_channels._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_alloc_channels._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_pga_gain_tbl to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_pga_gain_to_field_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_validate_channel_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_exec_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_data_rate_tbl to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_set_data_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads131e08_info_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ads131e08_probe to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ads131e08_probe.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ads131e08_initial_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ads131e08_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ads131e08_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ads131e08_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ads131e08_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads131e08_probe(ptr noundef %spi) #2 align 64 {
entry:
  %channel.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @device_get_match_data(ptr noundef %spi) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %1, align 128
  %spi13 = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %spi13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %spi13, align 4
  %4 = load ptr, ptr %priv.i, align 8
  %spi.i = getelementptr inbounds %struct.ads131e08_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel.i) #6
  %7 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %channel.i, align 4, !annotation !162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tmp.i, align 4, !annotation !162
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %6, ptr noundef nonnull @.str.38, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tmp.i, align 4
  br label %sw.epilog.i

if.end.i:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr.i = load i32, ptr %tmp.i, align 4
  %11 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr.i, label %if.end.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge [
    i32 0, label %if.end.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb3.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_alloc_channels.exit.thread.sink.split

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %if.end.i.sw.epilog.i_crit_edge, %if.end.thread.i
  %.sink.i = phi i32 [ 4000, %sw.bb3.i ], [ 2400, %if.end.thread.i ], [ 2400, %if.end.i.sw.epilog.i_crit_edge ]
  %vref_mv4.i = getelementptr inbounds %struct.ads131e08_state, ptr %4, i32 0, i32 7
  %12 = ptrtoint ptr %vref_mv4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink.i, ptr %vref_mv4.i, align 4
  %call7.i = call i32 @device_get_child_node_count(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp eq i32 %call7.i, 0
  br i1 %cmp.i, label %sw.epilog.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge, label %if.end14.i

sw.epilog.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_alloc_channels.exit.thread.sink.split

if.end14.i:                                       ; preds = %sw.epilog.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 128
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %16)
  %cmp15.i = icmp ugt i32 %call7.i, %16
  br i1 %cmp15.i, label %if.end14.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge, label %if.end22.i

if.end14.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_alloc_channels.exit.thread.sink.split

if.end22.i:                                       ; preds = %if.end14.i
  %17 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call7.i, i32 88) #6
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end22.i.ads131e08_alloc_channels.exit.thread_crit_edge, label %devm_kcalloc.exit.i, !prof !163

if.end22.i.ads131e08_alloc_channels.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_alloc_channels.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end22.i
  %19 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spi.i, align 4
  %21 = extractvalue { i32, i1 } %17, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef %21, i32 noundef 3520) #6
  %tobool26.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool26.not.i, label %devm_kcalloc.exit.i.ads131e08_alloc_channels.exit.thread_crit_edge, label %devm_kcalloc.exit163.i

devm_kcalloc.exit.i.ads131e08_alloc_channels.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_alloc_channels.exit.thread

devm_kcalloc.exit163.i:                           ; preds = %devm_kcalloc.exit.i
  %22 = shl nuw nsw i32 %call7.i, 3
  %23 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spi.i, align 4
  %call5.i.i160.i = call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef %22, i32 noundef 3520) #6
  %tobool32.not.i = icmp eq ptr %call5.i.i160.i, null
  br i1 %tobool32.not.i, label %devm_kcalloc.exit163.i.ads131e08_alloc_channels.exit.thread_crit_edge, label %if.end34.i

devm_kcalloc.exit163.i.ads131e08_alloc_channels.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit163.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_alloc_channels.exit.thread

if.end34.i:                                       ; preds = %devm_kcalloc.exit163.i
  %call35.i = call ptr @device_get_next_child_node(ptr noundef %6, ptr noundef null) #6
  %tobool36.not180.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not180.i, label %if.end34.i.if.end17_crit_edge, label %if.end34.i.for.body.i_crit_edge

if.end34.i.for.body.i_crit_edge:                  ; preds = %if.end34.i
  br label %for.body.i

if.end34.i.if.end17_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.body.i:                                       ; preds = %if.end62.i.for.body.i_crit_edge, %if.end34.i.for.body.i_crit_edge
  %i.0182.i = phi i32 [ %inc.i, %if.end62.i.for.body.i_crit_edge ], [ 0, %if.end34.i.for.body.i_crit_edge ]
  %node.0181.i = phi ptr [ %call80.i, %if.end62.i.for.body.i_crit_edge ], [ %call35.i, %if.end34.i.for.body.i_crit_edge ]
  %call.i164.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %node.0181.i, ptr noundef nonnull @.str.47, ptr noundef nonnull %channel.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164.i)
  %tobool38.not.i = icmp eq i32 %call.i164.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %for.body.i.ads131e08_alloc_channels.exit.thread_crit_edge

for.body.i.ads131e08_alloc_channels.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_alloc_channels.exit.thread

if.end40.i:                                       ; preds = %for.body.i
  %call.i165.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %node.0181.i, ptr noundef nonnull @.str.48, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165.i)
  %tobool42.not.i = icmp eq i32 %call.i165.i, 0
  br i1 %tobool42.not.i, label %if.else.i, label %if.end40.i.if.end50.i_crit_edge

if.end40.i.if.end50.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.else.i:                                        ; preds = %if.end40.i
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp.i, align 4
  %switch.tableidx = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %27 = icmp ult i32 %switch.tableidx, 12
  br i1 %27, label %switch.hole_check, label %if.else.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge

if.else.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_alloc_channels.exit.thread.sink.split

switch.hole_check:                                ; preds = %if.else.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 2187, %switch.maskindex
  %28 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %switch.lobit.not = icmp eq i16 %28, 0
  br i1 %switch.lobit.not, label %switch.hole_check.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge, label %switch.lookup

switch.hole_check.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_alloc_channels.exit.thread.sink.split

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.ads131e08_probe, i32 0, i32 %switch.tableidx
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %switch.lookup, %if.end40.i.if.end50.i_crit_edge
  %.sink190.i = phi i32 [ 1, %if.end40.i.if.end50.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %arrayidx48.i = getelementptr %struct.ads131e08_channel_config, ptr %call5.i.i160.i, i32 %i.0182.i
  %30 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink190.i, ptr %arrayidx48.i, align 4
  %call.i166.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %node.0181.i, ptr noundef nonnull @.str.49, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166.i)
  %tobool52.not.i = icmp eq i32 %call.i166.i, 0
  br i1 %tobool52.not.i, label %if.else55.i, label %if.end50.i.if.end62.i_crit_edge

if.end50.i.if.end62.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.else55.i:                                      ; preds = %if.end50.i
  %31 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %33 = icmp ult i32 %32, 5
  br i1 %33, label %switch.hole_check275, label %if.else55.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge

if.else55.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge: ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_alloc_channels.exit.thread.sink.split

switch.hole_check275:                             ; preds = %if.else55.i
  %switch.maskindex277 = trunc i32 %32 to i8
  %switch.shifted278 = lshr i8 27, %switch.maskindex277
  %34 = and i8 %switch.shifted278, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %switch.lobit279.not = icmp eq i8 %34, 0
  br i1 %switch.lobit279.not, label %switch.hole_check275.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge, label %switch.lookup276

switch.hole_check275.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge: ; preds = %switch.hole_check275
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_alloc_channels.exit.thread.sink.split

switch.lookup276:                                 ; preds = %switch.hole_check275
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep280 = getelementptr inbounds [5 x i32], ptr @switch.table.ads131e08_probe.69, i32 0, i32 %32
  %35 = ptrtoint ptr %switch.gep280 to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load281 = load i32, ptr %switch.gep280, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %switch.lookup276, %if.end50.i.if.end62.i_crit_edge
  %.sink191.i = phi i32 [ 0, %if.end50.i.if.end62.i_crit_edge ], [ %switch.load281, %switch.lookup276 ]
  %mux61.i = getelementptr %struct.ads131e08_channel_config, ptr %call5.i.i160.i, i32 %i.0182.i, i32 1
  %36 = ptrtoint ptr %mux61.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink191.i, ptr %mux61.i, align 4
  %arrayidx63.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i
  %37 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx63.i, align 4
  %indexed.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i, i32 19
  %38 = ptrtoint ptr %indexed.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %indexed.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %indexed.i, align 4
  %39 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channel.i, align 4
  %channel66.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i, i32 1
  %41 = ptrtoint ptr %channel66.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %channel66.i, align 4
  %address.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i, i32 3
  %42 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %i.0182.i, ptr %address.i, align 4
  %info_mask_separate.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i, i32 6
  %43 = ptrtoint ptr %info_mask_separate.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %info_mask_separate.i, align 4
  %info_mask_shared_by_type.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i, i32 8
  %44 = ptrtoint ptr %info_mask_shared_by_type.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4096, ptr %info_mask_shared_by_type.i, align 4
  %scan_index.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i, i32 4
  %45 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %40, ptr %scan_index.i, align 4
  %scan_type.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i, i32 5
  %46 = ptrtoint ptr %scan_type.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 115, ptr %scan_type.i, align 4
  %realbits.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i, i32 5, i32 1
  %47 = ptrtoint ptr %realbits.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 24, ptr %realbits.i, align 1
  %storagebits.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i, i32 5, i32 2
  %48 = ptrtoint ptr %storagebits.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 32, ptr %storagebits.i, align 2
  %shift.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i, i32 5, i32 3
  %49 = ptrtoint ptr %shift.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %shift.i, align 1
  %endianness.i = getelementptr %struct.iio_chan_spec, ptr %call5.i.i.i, i32 %i.0182.i, i32 5, i32 5
  %50 = ptrtoint ptr %endianness.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %endianness.i, align 4
  %inc.i = add i32 %i.0182.i, 1
  %call80.i = call ptr @device_get_next_child_node(ptr noundef %6, ptr noundef nonnull %node.0181.i) #6
  %tobool36.not.i = icmp eq ptr %call80.i, null
  br i1 %tobool36.not.i, label %if.end62.i.if.end17_crit_edge, label %if.end62.i.for.body.i_crit_edge

if.end62.i.for.body.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end62.i.if.end17_crit_edge:                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

ads131e08_alloc_channels.exit.thread.sink.split:  ; preds = %switch.hole_check275.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge, %if.else55.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge, %switch.hole_check.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge, %if.else.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge, %if.end14.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge, %sw.epilog.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge, %if.end.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge
  %.str.39.sink = phi ptr [ @.str.39, %if.end.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ @.str.42, %sw.epilog.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ @.str.45, %if.end14.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ @.str.52, %switch.hole_check275.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ @.str.50, %switch.hole_check.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ @.str.50, %if.else.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ @.str.52, %if.else55.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ -22, %if.end.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ -19, %sw.epilog.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ -22, %if.end14.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ -22, %switch.hole_check275.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ -22, %if.else55.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ -22, %switch.hole_check.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ], [ -22, %if.else.i.ads131e08_alloc_channels.exit.thread.sink.split_crit_edge ]
  %51 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull %.str.39.sink) #9
  br label %ads131e08_alloc_channels.exit.thread

ads131e08_alloc_channels.exit.thread:             ; preds = %ads131e08_alloc_channels.exit.thread.sink.split, %for.body.i.ads131e08_alloc_channels.exit.thread_crit_edge, %devm_kcalloc.exit163.i.ads131e08_alloc_channels.exit.thread_crit_edge, %devm_kcalloc.exit.i.ads131e08_alloc_channels.exit.thread_crit_edge, %if.end22.i.ads131e08_alloc_channels.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end22.i.ads131e08_alloc_channels.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit163.i.ads131e08_alloc_channels.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit.i.ads131e08_alloc_channels.exit.thread_crit_edge ], [ %retval.0.i.ph.ph, %ads131e08_alloc_channels.exit.thread.sink.split ], [ %call.i164.i, %for.body.i.ads131e08_alloc_channels.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end62.i.if.end17_crit_edge, %if.end34.i.if.end17_crit_edge
  %channels81.i = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 13
  %53 = ptrtoint ptr %channels81.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call5.i.i.i, ptr %channels81.i, align 8
  %num_channels82.i = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 14
  %54 = ptrtoint ptr %num_channels82.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call7.i, ptr %num_channels82.i, align 4
  %channel_config83.i = getelementptr inbounds %struct.ads131e08_state, ptr %4, i32 0, i32 5
  %55 = ptrtoint ptr %channel_config83.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call5.i.i160.i, ptr %channel_config83.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 128
  %name = getelementptr inbounds %struct.ads131e08_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name, align 4
  %name19 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 15
  %60 = ptrtoint ptr %name19 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %name19, align 8
  %info20 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 17
  %61 = ptrtoint ptr %info20 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ads131e08_iio_info, ptr %info20, align 8
  %62 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %call3, align 8
  %completion = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 11
  %63 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 11, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @init_completion.__key) #6
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool21.not = icmp eq i32 %65, 0
  br i1 %tobool21.not, label %do.end35, label %if.then22

if.then22:                                        ; preds = %if.end17
  %driver = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 6
  %66 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %65, ptr noundef nonnull @ads131e08_interrupt, ptr noundef null, i32 noundef 8194, ptr noundef %69, ptr noundef nonnull %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %if.end37, label %if.then29

if.then29:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call.i, ptr noundef nonnull @.str.9) #6
  br label %cleanup

do.end35:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end37:                                         ; preds = %if.then22
  %70 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name19, align 8
  %call40 = call i32 @iio_device_id(ptr noundef nonnull %call3) #6
  %call41 = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %spi, ptr noundef nonnull @.str.13, ptr noundef %71, i32 noundef %call40) #6
  %trig = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 2
  %72 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call41, ptr %trig, align 8
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %do.end47, label %if.end49

do.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end37
  %73 = ptrtoint ptr %call41 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @ads131e08_trigger_ops, ptr %call41, align 8
  %74 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %trig, align 8
  %parent = getelementptr inbounds %struct.iio_trigger, ptr %75, i32 0, i32 4, i32 1
  %76 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %spi, ptr %parent, align 8
  %77 = load ptr, ptr %trig, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %77, i32 0, i32 4, i32 8
  %78 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %79 = load ptr, ptr %trig, align 8
  %call57 = call i32 @__devm_iio_trigger_register(ptr noundef %spi, ptr noundef %79, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end49
  %80 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %trig, align 8
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %81, i32 0, i32 4
  %call.i242 = call ptr @get_device(ptr noundef %dev.i) #6
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %owner.i, align 4
  call void @__module_get(ptr noundef %83) #6
  %trig67 = getelementptr inbounds %struct.iio_dev, ptr %call3, i32 0, i32 10
  %84 = ptrtoint ptr %trig67 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %trig67, align 4
  %call69 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call3, ptr noundef null, ptr noundef nonnull @ads131e08_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end76, label %do.end74

do.end74:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end76:                                         ; preds = %if.end64
  %call78 = call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.23) #6
  %vref_reg = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 4
  %85 = ptrtoint ptr %vref_reg to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call78, ptr %vref_reg, align 16
  %cmp.i243 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %if.else96, label %if.then81

if.then81:                                        ; preds = %if.end76
  %call83 = call i32 @regulator_enable(ptr noundef %call78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end90, label %do.end88

do.end88:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end90:                                         ; preds = %if.then81
  %call.i244 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ads131e08_regulator_disable, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %tobool.not.i245 = icmp eq i32 %call.i244, 0
  br i1 %tobool.not.i245, label %if.end90.if.end104_crit_edge, label %devm_add_action_or_reset.exit

if.end90.if.end104_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

devm_add_action_or_reset.exit:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vref_reg, align 16
  %call.i257 = call i32 @regulator_disable(ptr noundef %87) #6
  br label %cleanup

if.else96:                                        ; preds = %if.end76
  %88 = ptrtoint ptr %call78 to i32
  %cmp.not = icmp eq ptr %call78, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.end102, label %if.else96.cleanup_crit_edge

if.else96.cleanup_crit_edge:                      ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end102:                                        ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %vref_reg to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %vref_reg, align 16
  br label %if.end104

if.end104:                                        ; preds = %if.end102, %if.end90.if.end104_crit_edge
  %call106 = call ptr @devm_clk_get(ptr noundef %spi, ptr noundef nonnull @.str.27) #6
  %adc_clk = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %adc_clk to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call106, ptr %adc_clk, align 4
  %cmp.i247 = icmp ugt ptr %call106, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %if.then109, label %if.end114

if.then109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %call106 to i32
  %call113 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %91, ptr noundef nonnull @.str.28) #6
  br label %cleanup

if.end114:                                        ; preds = %if.end104
  %call.i248 = call i32 @clk_prepare(ptr noundef %call106) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %tobool.not.i249 = icmp eq i32 %call.i248, 0
  br i1 %tobool.not.i249, label %if.end.i250, label %if.end114.do.end121_crit_edge

if.end114.do.end121_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end121

if.end.i250:                                      ; preds = %if.end114
  %call1.i = call i32 @clk_enable(ptr noundef %call106) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end123, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call106) #6
  br label %do.end121

do.end121:                                        ; preds = %if.then3.i, %if.end114.do.end121_crit_edge
  %retval.0.i251.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i248, %if.end114.do.end121_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end123:                                        ; preds = %if.end.i250
  %call.i252 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ads131e08_clk_disable, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %tobool.not.i253 = icmp eq i32 %call.i252, 0
  %92 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adc_clk, align 4
  br i1 %tobool.not.i253, label %if.end128, label %devm_add_action_or_reset.exit256

devm_add_action_or_reset.exit256:                 ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_disable(ptr noundef %93) #6
  call void @clk_unprepare(ptr noundef %93) #6
  br label %cleanup

if.end128:                                        ; preds = %if.end123
  %call130 = call i32 @clk_get_rate(ptr noundef %93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %do.end135, label %if.end137

do.end135:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end137:                                        ; preds = %if.end128
  %div = udiv i32 1000000000, %call130
  %mul = shl nuw i32 %div, 2
  %sub = add nuw i32 %mul, 999
  %div138 = udiv i32 %sub, 1000
  %sdecode_delay_us = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 8
  %94 = ptrtoint ptr %sdecode_delay_us to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %div138, ptr %sdecode_delay_us, align 32
  %mul139 = mul i32 %div, 18
  %sub141 = add i32 %mul139, 999
  %div142 = udiv i32 %sub141, 1000
  %reset_delay_us = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 9
  %95 = ptrtoint ptr %reset_delay_us to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %div142, ptr %reset_delay_us, align 4
  %call143 = call fastcc i32 @ads131e08_initial_config(ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end150, label %do.end148

do.end148:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end150:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  %call152 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call3, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end150, %do.end148, %do.end135, %devm_add_action_or_reset.exit256, %do.end121, %if.then109, %if.else96.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end88, %do.end74, %do.end62, %do.end47, %do.end35, %if.then29, %ads131e08_alloc_channels.exit.thread, %do.end8, %do.end
  %retval.0 = phi i32 [ %call31, %if.then29 ], [ -12, %do.end62 ], [ %call69, %do.end74 ], [ %call113, %if.then109 ], [ %retval.0.i251.ph, %do.end121 ], [ %call143, %do.end148 ], [ %call152, %if.end150 ], [ -22, %do.end135 ], [ %call83, %do.end88 ], [ -12, %do.end47 ], [ -19, %do.end35 ], [ -12, %do.end8 ], [ -19, %do.end ], [ %call.i244, %devm_add_action_or_reset.exit ], [ %call.i252, %devm_add_action_or_reset.exit256 ], [ %retval.0.i.ph, %ads131e08_alloc_channels.exit.thread ], [ %88, %if.else96.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads131e08_interrupt(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 1
  %2 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %3, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %private) #6
  br i1 %call2, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %trig = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trig, align 8
  tail call void @iio_trigger_poll(ptr noundef %5) #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %completion = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 11
  tail call void @complete(ptr noundef %completion) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads131e08_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %data_rate = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %cmp = icmp ugt i32 %5, 31
  %cond = select i1 %cmp, i32 2, i32 3
  %call4 = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %1) #6
  br i1 %call4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %readback_len = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %readback_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %readback_len, align 8
  %call5 = tail call fastcc i32 @ads131e08_read_data(ptr noundef %3, i32 noundef %7)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call fastcc i32 @ads131e08_pool_data(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call5, %if.then ], [ %call6, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end8:                                          ; preds = %if.end
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %masklength, align 8
  %call9 = tail call i32 @_find_next_bit_be(ptr noundef %9, i32 noundef %11, i32 noundef 0) #6
  %12 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %13)
  %cmp1157 = icmp ult i32 %call9, %13
  br i1 %cmp1157, label %for.body.lr.ph, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %add.ptr = getelementptr %struct.ads131e08_state, ptr %3, i32 0, i32 15, i32 3
  %tmp_buf = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 12
  %conv17 = zext i1 %cmp to i32
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end25.for.body_crit_edge ]
  %chn.058 = phi i32 [ %call9, %for.body.lr.ph ], [ %call28, %if.end25.for.body_crit_edge ]
  %mul = mul i32 %chn.058, %cond
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %mul
  %mul15 = shl i32 %i.059, 2
  %add.ptr16 = getelementptr i8, ptr %tmp_buf, i32 %mul15
  %add.ptr18 = getelementptr i8, ptr %add.ptr16, i32 %conv17
  %14 = call ptr @memcpy(ptr %add.ptr18, ptr %add.ptr13, i32 %cond)
  br i1 %cmp, label %if.then20, label %for.body.if.end25_crit_edge

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr13, align 1
  %.lobit = ashr i8 %16, 7
  %17 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.lobit, ptr %add.ptr16, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %for.body.if.end25_crit_edge
  %inc = add i32 %i.059, 1
  %18 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_scan_mask, align 4
  %20 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %chn.058, 1
  %call28 = tail call i32 @_find_next_bit_be(ptr noundef %19, i32 noundef %21, i32 noundef %add) #6
  %22 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %masklength, align 8
  %cmp11 = icmp ult i32 %call28, %23
  br i1 %cmp11, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %if.end8.for.end_crit_edge
  %tmp_buf29 = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 12
  %call32 = tail call i64 @iio_get_time_ns(ptr noundef %1) #6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %scan_timestamp.i, align 8, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %27, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %tmp_buf29, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call32, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %tmp_buf29) #6
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.end.out_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %30) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ads131e08_regulator_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vref_reg = getelementptr inbounds %struct.ads131e08_state, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vref_reg, align 16
  %call = tail call i32 @regulator_disable(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ads131e08_clk_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adc_clk = getelementptr inbounds %struct.ads131e08_state, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %adc_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adc_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #6
  tail call void @clk_unprepare(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads131e08_initial_config(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i173 = alloca %struct.spi_message, align 4
  %transfer.i.i174 = alloca [1 x %struct.spi_transfer], align 4
  %msg.i.i.i143 = alloca %struct.spi_message, align 4
  %transfer.i.i144 = alloca [1 x %struct.spi_transfer], align 4
  %msg.i.i.i117 = alloca %struct.spi_message, align 4
  %transfer.i.i118 = alloca [1 x %struct.spi_transfer], align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %transfer.i.i = alloca [1 x %struct.spi_transfer], align 4
  %cmd.addr.i108 = alloca i8, align 1
  %cmd.addr.i = alloca i8, align 1
  %active_channels = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channels, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_channels) #6
  %4 = ptrtoint ptr %active_channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %active_channels, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %5 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %cmd.addr.i, align 1
  %spi.i = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %7, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %ads131e08_exec_cmd.exit

ads131e08_exec_cmd.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi.i, align 4
  %10 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmd.addr.i, align 1
  %conv.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.56, i32 noundef %conv.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %reset_delay_us = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %reset_delay_us to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reset_delay_us, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %14(i32 noundef %13) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i108)
  %15 = ptrtoint ptr %cmd.addr.i108 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 17, ptr %cmd.addr.i108, align 1
  %16 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi.i, align 4
  %call.i110 = call i32 @spi_write_then_read(ptr noundef %17, ptr noundef nonnull %cmd.addr.i108, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i111 = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i111, label %if.end11, label %ads131e08_exec_cmd.exit114

ads131e08_exec_cmd.exit114:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i, align 4
  %20 = ptrtoint ptr %cmd.addr.i108 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmd.addr.i108, align 1
  %conv.i112 = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.56, i32 noundef %conv.i112) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i108)
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i108)
  %call12 = call fastcc i32 @ads131e08_set_data_rate(ptr noundef %3, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call.i115 = call fastcc i32 @ads131e08_read_reg(ptr noundef %3, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %cmp.i = icmp slt i32 %call.i115, 0
  br i1 %cmp.i, label %if.end15.cleanup_crit_edge, label %if.end.i

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %and.i = and i32 %call.i115, -129
  %vref_reg.i = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %vref_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vref_reg.i, align 16
  %tobool.not.i116 = icmp eq ptr %23, null
  br i1 %tobool.not.i116, label %do.end13.i, label %if.end.i.if.end44.i_crit_edge

if.end.i.if.end44.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = and i32 %call.i115, -161
  %vref_mv.i = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %vref_mv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vref_mv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %25)
  %cmp22.i = icmp eq i32 %25, 4000
  %shl.i = select i1 %cmp22.i, i32 32, i32 0
  %and14.i = or i32 %or.i, %shl.i
  %or43.i = or i32 %and14.i, 128
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end13.i, %if.end.i.if.end44.i_crit_edge
  %reg.0.i = phi i32 [ %and.i, %if.end.i.if.end44.i_crit_edge ], [ %or43.i, %do.end13.i ]
  %conv45.i = trunc i32 %reg.0.i to i8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i) #6
  %26 = getelementptr inbounds i8, ptr %transfer.i.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 92)
  %tx_buf1.i.i = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 14
  %28 = ptrtoint ptr %transfer.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tx_buf1.i.i, ptr %transfer.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %len.i.i, align 4
  %delay.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 9
  %sdecode_delay_us.i.i = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %sdecode_delay_us.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sdecode_delay_us.i.i, align 32
  %conv.i.i = trunc i32 %31 to i16
  %32 = ptrtoint ptr %delay.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i, ptr %delay.i.i, align 2
  %33 = ptrtoint ptr %tx_buf1.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 67, ptr %tx_buf1.i.i, align 128
  %arrayidx7.i.i = getelementptr %struct.ads131e08_state, ptr %3, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx7.i.i, align 1
  %arrayidx9.i.i = getelementptr %struct.ads131e08_state, ptr %3, i32 0, i32 14, i32 2
  %35 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv45.i, ptr %arrayidx9.i.i, align 2
  %36 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %38 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 40)
  %40 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end44.i.spi_message_add_tail.exit.i.i.i.i_crit_edge

if.end44.i.spi_message_add_tail.exit.i.i.i.i_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i

spi_message_add_tail.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i, %if.end44.i.spi_message_add_tail.exit.i.i.i.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %37, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %ads131e08_config_reference_voltage.exit, label %ads131e08_config_reference_voltage.exit.thread201

ads131e08_config_reference_voltage.exit.thread201: ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.64) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i) #6
  br label %cleanup

ads131e08_config_reference_voltage.exit:          ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i) #6
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %50 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp20219 = icmp sgt i32 %51, 0
  br i1 %cmp20219, label %for.body.lr.ph, label %ads131e08_config_reference_voltage.exit.for.end_crit_edge

ads131e08_config_reference_voltage.exit.for.end_crit_edge: ; preds = %ads131e08_config_reference_voltage.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %ads131e08_config_reference_voltage.exit
  %channel_config = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 5
  %52 = getelementptr inbounds i8, ptr %transfer.i.i118, i32 4
  %len.i.i126 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i118, i32 0, i32 2
  %delay.i.i127 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i118, i32 0, i32 9
  %53 = getelementptr inbounds i8, ptr %msg.i.i.i117, i32 8
  %prev.i.i.i.i.i.i.i131 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i117, i32 0, i32 1
  %resources.i.i.i.i.i.i132 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i117, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i133 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i117, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i134 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i118, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i136 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i118, i32 0, i32 18, i32 1
  %54 = getelementptr inbounds i8, ptr %transfer.i.i144, i32 4
  %len.i.i153 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i144, i32 0, i32 2
  %delay.i.i154 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i144, i32 0, i32 9
  %55 = getelementptr inbounds i8, ptr %msg.i.i.i143, i32 8
  %prev.i.i.i.i.i.i.i160 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i143, i32 0, i32 1
  %resources.i.i.i.i.i.i161 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i143, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i162 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i143, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i163 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i144, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i165 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i144, i32 0, i32 18, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %i.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end32.for.body_crit_edge ]
  %channel.0220 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %if.end32.for.body_crit_edge ]
  %channel21 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel.0220, i32 0, i32 1
  %56 = ptrtoint ptr %channel21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %channel21, align 4
  %58 = ptrtoint ptr %channel_config to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channel_config, align 4
  %arrayidx = getelementptr %struct.ads131e08_channel_config, ptr %59, i32 %i.0221
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  %switch.tableidx = add i32 %61, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %62 = icmp ult i32 %switch.tableidx, 12
  br i1 %62, label %switch.hole_check, label %for.body.ads131e08_pga_gain_to_field_value.exit.thread.i_crit_edge

for.body.ads131e08_pga_gain_to_field_value.exit.thread.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_pga_gain_to_field_value.exit.thread.i

ads131e08_pga_gain_to_field_value.exit.thread.i:  ; preds = %switch.hole_check.ads131e08_pga_gain_to_field_value.exit.thread.i_crit_edge, %for.body.ads131e08_pga_gain_to_field_value.exit.thread.i_crit_edge
  %63 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.50) #9
  br label %cleanup

switch.hole_check:                                ; preds = %for.body
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 2187, %switch.maskindex
  %65 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %switch.lobit.not = icmp eq i16 %65, 0
  br i1 %switch.lobit.not, label %switch.hole_check.ads131e08_pga_gain_to_field_value.exit.thread.i_crit_edge, label %switch.lookup

switch.hole_check.ads131e08_pga_gain_to_field_value.exit.thread.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_pga_gain_to_field_value.exit.thread.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.ads131e08_initial_config, i32 0, i32 %switch.tableidx
  %66 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %66)
  %switch.load = load i32, ptr %switch.gep, align 4
  %reg.i.i = getelementptr [5 x %struct.ads131e08_pga_gain_desc], ptr @ads131e08_pga_gain_tbl, i32 0, i32 %switch.load, i32 1
  %67 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %reg.i.i, align 4
  %69 = trunc i32 %57 to i8
  %conv.i120 = add i8 %69, 5
  %call1.i = call fastcc i32 @ads131e08_read_reg(ptr noundef %3, i8 noundef zeroext %conv.i120) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %switch.lookup.cleanup_crit_edge, label %do.end20.i

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end20.i:                                       ; preds = %switch.lookup
  %conv.i.i121 = zext i8 %68 to i32
  %and.i122 = and i32 %call1.i, 143
  %shl.i123 = shl nuw nsw i32 %conv.i.i121, 4
  %and21.i = and i32 %shl.i123, 112
  %or.i124 = or i32 %and21.i, %and.i122
  %conv24.i = trunc i32 %or.i124 to i8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i118) #6
  %70 = call ptr @memset(ptr %52, i32 0, i32 92)
  %71 = ptrtoint ptr %transfer.i.i118 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %tx_buf1.i.i, ptr %transfer.i.i118, align 4
  %72 = ptrtoint ptr %len.i.i126 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3, ptr %len.i.i126, align 4
  %73 = ptrtoint ptr %sdecode_delay_us.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sdecode_delay_us.i.i, align 32
  %conv.i38.i = trunc i32 %74 to i16
  %75 = ptrtoint ptr %delay.i.i127 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i38.i, ptr %delay.i.i127, align 2
  %76 = and i8 %conv.i120, 31
  %77 = or i8 %76, 64
  %78 = ptrtoint ptr %tx_buf1.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %tx_buf1.i.i, align 128
  %79 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %arrayidx7.i.i, align 1
  %80 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv24.i, ptr %arrayidx9.i.i, align 2
  %81 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i117) #6
  %83 = call ptr @memset(ptr %53, i32 0, i32 40)
  %84 = ptrtoint ptr %msg.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %msg.i.i.i117, ptr %msg.i.i.i117, align 4
  %85 = ptrtoint ptr %prev.i.i.i.i.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %msg.i.i.i117, ptr %prev.i.i.i.i.i.i.i131, align 4
  %86 = ptrtoint ptr %resources.i.i.i.i.i.i132 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %resources.i.i.i.i.i.i132, ptr %resources.i.i.i.i.i.i132, align 4
  %87 = ptrtoint ptr %prev.i2.i.i.i.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %resources.i.i.i.i.i.i132, ptr %prev.i2.i.i.i.i.i.i133, align 4
  %call.i.i.i.i.i.i.i135 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i134, ptr noundef nonnull %msg.i.i.i117, ptr noundef nonnull %msg.i.i.i117) #6
  br i1 %call.i.i.i.i.i.i.i135, label %if.end.i.i.i.i.i.i.i137, label %do.end20.i.spi_message_add_tail.exit.i.i.i.i140_crit_edge

do.end20.i.spi_message_add_tail.exit.i.i.i.i140_crit_edge: ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i.i140

if.end.i.i.i.i.i.i.i137:                          ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %prev.i.i.i.i.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %transfer_list.i.i.i.i.i134, ptr %prev.i.i.i.i.i.i.i131, align 4
  %89 = ptrtoint ptr %transfer_list.i.i.i.i.i134 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %msg.i.i.i117, ptr %transfer_list.i.i.i.i.i134, align 4
  %90 = ptrtoint ptr %prev3.i.i.i.i.i.i.i136 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %msg.i.i.i117, ptr %prev3.i.i.i.i.i.i.i136, align 4
  %91 = ptrtoint ptr %msg.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %transfer_list.i.i.i.i.i134, ptr %msg.i.i.i117, align 4
  br label %spi_message_add_tail.exit.i.i.i.i140

spi_message_add_tail.exit.i.i.i.i140:             ; preds = %if.end.i.i.i.i.i.i.i137, %do.end20.i.spi_message_add_tail.exit.i.i.i.i140_crit_edge
  %call.i.i.i138 = call i32 @spi_sync(ptr noundef %82, ptr noundef nonnull %msg.i.i.i117) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i117) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i138)
  %tobool.not.i.i139 = icmp eq i32 %call.i.i.i138, 0
  br i1 %tobool.not.i.i139, label %if.end25, label %ads131e08_set_pga_gain.exit

ads131e08_set_pga_gain.exit:                      ; preds = %spi_message_add_tail.exit.i.i.i.i140
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.64) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i118) #6
  br label %cleanup

if.end25:                                         ; preds = %spi_message_add_tail.exit.i.i.i.i140
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i118) #6
  %94 = ptrtoint ptr %channel21 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %channel21, align 4
  %96 = ptrtoint ptr %channel_config to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %channel_config, align 4
  %mux = getelementptr %struct.ads131e08_channel_config, ptr %97, i32 %i.0221, i32 1
  %98 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mux, align 4
  %100 = trunc i32 %95 to i8
  %conv.i145 = add i8 %100, 5
  %call.i146 = call fastcc i32 @ads131e08_read_reg(ptr noundef %3, i8 noundef zeroext %conv.i145) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp.i147 = icmp slt i32 %call.i146, 0
  br i1 %cmp.i147, label %if.end25.cleanup_crit_edge, label %do.end16.i

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end16.i:                                       ; preds = %if.end25
  %and.i150 = and i32 %call.i146, 248
  %and17.i = and i32 %99, 7
  %or.i151 = or i32 %and.i150, %and17.i
  %conv20.i = trunc i32 %or.i151 to i8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i144) #6
  %101 = call ptr @memset(ptr %54, i32 0, i32 92)
  %102 = ptrtoint ptr %transfer.i.i144 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %tx_buf1.i.i, ptr %transfer.i.i144, align 4
  %103 = ptrtoint ptr %len.i.i153 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 3, ptr %len.i.i153, align 4
  %104 = ptrtoint ptr %sdecode_delay_us.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sdecode_delay_us.i.i, align 32
  %conv.i.i156 = trunc i32 %105 to i16
  %106 = ptrtoint ptr %delay.i.i154 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i.i156, ptr %delay.i.i154, align 2
  %107 = and i8 %conv.i145, 31
  %108 = or i8 %107, 64
  %109 = ptrtoint ptr %tx_buf1.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %tx_buf1.i.i, align 128
  %110 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %arrayidx7.i.i, align 1
  %111 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv20.i, ptr %arrayidx9.i.i, align 2
  %112 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i143) #6
  %114 = call ptr @memset(ptr %55, i32 0, i32 40)
  %115 = ptrtoint ptr %msg.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %msg.i.i.i143, ptr %msg.i.i.i143, align 4
  %116 = ptrtoint ptr %prev.i.i.i.i.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %msg.i.i.i143, ptr %prev.i.i.i.i.i.i.i160, align 4
  %117 = ptrtoint ptr %resources.i.i.i.i.i.i161 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %resources.i.i.i.i.i.i161, ptr %resources.i.i.i.i.i.i161, align 4
  %118 = ptrtoint ptr %prev.i2.i.i.i.i.i.i162 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %resources.i.i.i.i.i.i161, ptr %prev.i2.i.i.i.i.i.i162, align 4
  %call.i.i.i.i.i.i.i164 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i163, ptr noundef nonnull %msg.i.i.i143, ptr noundef nonnull %msg.i.i.i143) #6
  br i1 %call.i.i.i.i.i.i.i164, label %if.end.i.i.i.i.i.i.i166, label %do.end16.i.spi_message_add_tail.exit.i.i.i.i169_crit_edge

do.end16.i.spi_message_add_tail.exit.i.i.i.i169_crit_edge: ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i.i169

if.end.i.i.i.i.i.i.i166:                          ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %prev.i.i.i.i.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %transfer_list.i.i.i.i.i163, ptr %prev.i.i.i.i.i.i.i160, align 4
  %120 = ptrtoint ptr %transfer_list.i.i.i.i.i163 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %msg.i.i.i143, ptr %transfer_list.i.i.i.i.i163, align 4
  %121 = ptrtoint ptr %prev3.i.i.i.i.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %msg.i.i.i143, ptr %prev3.i.i.i.i.i.i.i165, align 4
  %122 = ptrtoint ptr %msg.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %transfer_list.i.i.i.i.i163, ptr %msg.i.i.i143, align 4
  br label %spi_message_add_tail.exit.i.i.i.i169

spi_message_add_tail.exit.i.i.i.i169:             ; preds = %if.end.i.i.i.i.i.i.i166, %do.end16.i.spi_message_add_tail.exit.i.i.i.i169_crit_edge
  %call.i.i.i167 = call i32 @spi_sync(ptr noundef %113, ptr noundef nonnull %msg.i.i.i143) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i143) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i167)
  %tobool.not.i.i168 = icmp eq i32 %call.i.i.i167, 0
  br i1 %tobool.not.i.i168, label %if.end32, label %ads131e08_set_channel_mux.exit

ads131e08_set_channel_mux.exit:                   ; preds = %spi_message_add_tail.exit.i.i.i.i169
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.64) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i144) #6
  br label %cleanup

if.end32:                                         ; preds = %spi_message_add_tail.exit.i.i.i.i169
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i144) #6
  %125 = ptrtoint ptr %channel21 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %channel21, align 4
  %shl = shl nuw i32 1, %126
  %127 = ptrtoint ptr %active_channels to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %active_channels, align 4
  %or = or i32 %128, %shl
  store i32 %or, ptr %active_channels, align 4
  %incdec.ptr = getelementptr %struct.iio_chan_spec, ptr %channel.0220, i32 1
  %inc = add nuw nsw i32 %i.0221, 1
  %129 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_channels, align 4
  %cmp20 = icmp slt i32 %inc, %130
  br i1 %cmp20, label %if.end32.for.body_crit_edge, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %ads131e08_config_reference_voltage.exit.for.end_crit_edge
  %131 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %3, align 128
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %132, align 4
  %call34 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %active_channels, i32 noundef %134, i32 noundef 0) #6
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %3, align 128
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call34, i32 %138)
  %cmp38222 = icmp ult i32 %call34, %138
  br i1 %cmp38222, label %for.body39.lr.ph, label %for.end.for.end48_crit_edge

for.end.for.end48_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48

for.body39.lr.ph:                                 ; preds = %for.end
  %139 = getelementptr inbounds i8, ptr %transfer.i.i174, i32 4
  %len.i.i179 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i174, i32 0, i32 2
  %delay.i.i180 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i174, i32 0, i32 9
  %140 = getelementptr inbounds i8, ptr %msg.i.i.i173, i32 8
  %prev.i.i.i.i.i.i.i186 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i173, i32 0, i32 1
  %resources.i.i.i.i.i.i187 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i173, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i188 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i173, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i189 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i174, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i191 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i.i174, i32 0, i32 18, i32 1
  br label %for.body39

for.body39:                                       ; preds = %for.inc44.for.body39_crit_edge, %for.body39.lr.ph
  %i.1223 = phi i32 [ %call34, %for.body39.lr.ph ], [ %call47, %for.inc44.for.body39_crit_edge ]
  %141 = trunc i32 %i.1223 to i8
  %conv.i175 = add i8 %141, 5
  %call.i176 = call fastcc i32 @ads131e08_read_reg(ptr noundef %3, i8 noundef zeroext %conv.i175) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %cmp.i177 = icmp slt i32 %call.i176, 0
  br i1 %cmp.i177, label %for.body39.cleanup_crit_edge, label %do.end19.i

for.body39.cleanup_crit_edge:                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end19.i:                                       ; preds = %for.body39
  %142 = trunc i32 %call.i176 to i8
  %conv25.i = or i8 %142, -128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i.i174) #6
  %143 = call ptr @memset(ptr %139, i32 0, i32 92)
  %144 = ptrtoint ptr %transfer.i.i174 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %tx_buf1.i.i, ptr %transfer.i.i174, align 4
  %145 = ptrtoint ptr %len.i.i179 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 3, ptr %len.i.i179, align 4
  %146 = ptrtoint ptr %sdecode_delay_us.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %sdecode_delay_us.i.i, align 32
  %conv.i.i182 = trunc i32 %147 to i16
  %148 = ptrtoint ptr %delay.i.i180 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv.i.i182, ptr %delay.i.i180, align 2
  %149 = and i8 %conv.i175, 31
  %150 = or i8 %149, 64
  %151 = ptrtoint ptr %tx_buf1.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %tx_buf1.i.i, align 128
  %152 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %arrayidx7.i.i, align 1
  %153 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv25.i, ptr %arrayidx9.i.i, align 2
  %154 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i173) #6
  %156 = call ptr @memset(ptr %140, i32 0, i32 40)
  %157 = ptrtoint ptr %msg.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %msg.i.i.i173, ptr %msg.i.i.i173, align 4
  %158 = ptrtoint ptr %prev.i.i.i.i.i.i.i186 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %msg.i.i.i173, ptr %prev.i.i.i.i.i.i.i186, align 4
  %159 = ptrtoint ptr %resources.i.i.i.i.i.i187 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %resources.i.i.i.i.i.i187, ptr %resources.i.i.i.i.i.i187, align 4
  %160 = ptrtoint ptr %prev.i2.i.i.i.i.i.i188 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %resources.i.i.i.i.i.i187, ptr %prev.i2.i.i.i.i.i.i188, align 4
  %call.i.i.i.i.i.i.i190 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i189, ptr noundef nonnull %msg.i.i.i173, ptr noundef nonnull %msg.i.i.i173) #6
  br i1 %call.i.i.i.i.i.i.i190, label %if.end.i.i.i.i.i.i.i192, label %do.end19.i.spi_message_add_tail.exit.i.i.i.i195_crit_edge

do.end19.i.spi_message_add_tail.exit.i.i.i.i195_crit_edge: ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i.i195

if.end.i.i.i.i.i.i.i192:                          ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %161 = ptrtoint ptr %prev.i.i.i.i.i.i.i186 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %transfer_list.i.i.i.i.i189, ptr %prev.i.i.i.i.i.i.i186, align 4
  %162 = ptrtoint ptr %transfer_list.i.i.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %msg.i.i.i173, ptr %transfer_list.i.i.i.i.i189, align 4
  %163 = ptrtoint ptr %prev3.i.i.i.i.i.i.i191 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %msg.i.i.i173, ptr %prev3.i.i.i.i.i.i.i191, align 4
  %164 = ptrtoint ptr %msg.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %transfer_list.i.i.i.i.i189, ptr %msg.i.i.i173, align 4
  br label %spi_message_add_tail.exit.i.i.i.i195

spi_message_add_tail.exit.i.i.i.i195:             ; preds = %if.end.i.i.i.i.i.i.i192, %do.end19.i.spi_message_add_tail.exit.i.i.i.i195_crit_edge
  %call.i.i.i193 = call i32 @spi_sync(ptr noundef %155, ptr noundef nonnull %msg.i.i.i173) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i173) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i193)
  %tobool.not.i.i194 = icmp eq i32 %call.i.i.i193, 0
  br i1 %tobool.not.i.i194, label %for.inc44, label %ads131e08_power_down_channel.exit

ads131e08_power_down_channel.exit:                ; preds = %spi_message_add_tail.exit.i.i.i.i195
  call void @__sanitizer_cov_trace_pc() #8
  %165 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.64) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i174) #6
  br label %cleanup

for.inc44:                                        ; preds = %spi_message_add_tail.exit.i.i.i.i195
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i.i174) #6
  %167 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %3, align 128
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 4
  %add = add nuw i32 %i.1223, 1
  %call47 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %active_channels, i32 noundef %170, i32 noundef %add) #6
  %171 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %3, align 128
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 4
  %cmp38 = icmp ult i32 %call47, %174
  br i1 %cmp38, label %for.inc44.for.body39_crit_edge, label %for.inc44.for.end48_crit_edge

for.inc44.for.end48_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48

for.inc44.for.body39_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

for.end48:                                        ; preds = %for.inc44.for.end48_crit_edge, %for.end.for.end48_crit_edge
  %call49 = call fastcc i32 @ads131e08_exec_cmd(ptr noundef %3, i8 noundef zeroext 26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %for.end48.cleanup_crit_edge

for.end48.cleanup_crit_edge:                      ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %for.end48
  %call53 = call fastcc i32 @ads131e08_exec_cmd(ptr noundef %3, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 153) #6
  %call57 = call fastcc i32 @ads131e08_exec_cmd(ptr noundef %3, i8 noundef zeroext 10)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end52.cleanup_crit_edge, %for.end48.cleanup_crit_edge, %ads131e08_power_down_channel.exit, %for.body39.cleanup_crit_edge, %ads131e08_set_channel_mux.exit, %if.end25.cleanup_crit_edge, %ads131e08_set_pga_gain.exit, %switch.lookup.cleanup_crit_edge, %ads131e08_pga_gain_to_field_value.exit.thread.i, %ads131e08_config_reference_voltage.exit.thread201, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %ads131e08_exec_cmd.exit114, %ads131e08_exec_cmd.exit
  %retval.0 = phi i32 [ %call57, %if.end56 ], [ %call.i, %ads131e08_exec_cmd.exit ], [ %call.i110, %ads131e08_exec_cmd.exit114 ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call.i.i.i138, %ads131e08_set_pga_gain.exit ], [ %call.i.i.i167, %ads131e08_set_channel_mux.exit ], [ %call.i.i.i193, %ads131e08_power_down_channel.exit ], [ %call49, %for.end48.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ], [ %call.i.i.i, %ads131e08_config_reference_voltage.exit.thread201 ], [ %call.i115, %if.end15.cleanup_crit_edge ], [ -22, %ads131e08_pga_gain_to_field_value.exit.thread.i ], [ %call.i176, %for.body39.cleanup_crit_edge ], [ %call.i146, %if.end25.cleanup_crit_edge ], [ %call1.i, %switch.lookup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_channels) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads131e08_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef %value, ptr nocapture noundef writeonly %value2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
    i32 12, label %sw.bb16
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
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %call1.i = tail call fastcc i32 @ads131e08_pool_data(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ads131e08_read_direct.exit_crit_edge

if.end.ads131e08_read_direct.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_read_direct.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr %struct.ads131e08_state, ptr %4, i32 0, i32 15, i32 3
  %channel2.i = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 1
  %5 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel2.i, align 4
  %data_rate.i = getelementptr inbounds %struct.ads131e08_state, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %data_rate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %8)
  %cmp.i = icmp ugt i32 %8, 31
  %cond.i = select i1 %cmp.i, i32 2, i32 3
  %mul.i = mul i32 %cond.i, %6
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %conv.neg.i = mul nsw i32 %cond.i, -8
  %9 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr3.i, align 1
  %sub.i = add nsw i32 %conv.neg.i, 32
  %shr.i.i = ashr i32 %10, %sub.i
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr.i.i, ptr %value, align 4
  br label %ads131e08_read_direct.exit

ads131e08_read_direct.exit:                       ; preds = %if.end.i, %if.end.ads131e08_read_direct.exit_crit_edge
  %.call2 = phi i32 [ %call1.i, %if.end.ads131e08_read_direct.exit_crit_edge ], [ 1, %if.end.i ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %vref_reg = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vref_reg, align 16
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.bb6
  %call10 = tail call i32 @regulator_get_voltage(ptr noundef nonnull %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then8.cleanup_crit_edge, label %if.end12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %div38 = udiv i32 %call10, 1000
  br label %if.end13

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %vref_mv = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vref_mv, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end12
  %storemerge = phi i32 [ %15, %if.else ], [ %div38, %if.end12 ]
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %value, align 4
  %channel_config = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %channel_config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel_config, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 3
  %19 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %address, align 4
  %arrayidx = getelementptr %struct.ads131e08_channel_config, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %div14 = udiv i32 %storemerge, %22
  store i32 %div14, ptr %value, align 4
  %data_rate = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %24)
  %cmp15 = icmp ugt i32 %24, 31
  %sub = select i1 %cmp15, i32 15, i32 23
  %25 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %value2, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data_rate17 = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %data_rate17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_rate17, align 8
  %28 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %if.end13, %if.then8.cleanup_crit_edge, %ads131e08_read_direct.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb16 ], [ 11, %if.end13 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %.call2, %ads131e08_read_direct.exit ], [ %call10, %if.then8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads131e08_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %channel, i32 noundef %value, i32 noundef %value2, i32 noundef %mask) #2 align 64 {
entry:
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
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @ads131e08_set_data_rate(ptr noundef %1, i32 noundef %value)
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads131e08_debugfs_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %transfer.i = alloca [1 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %readval, null
  %conv2 = trunc i32 %reg to i8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @ads131e08_read_reg(ptr noundef %1, i8 noundef zeroext %conv2)
  %2 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %readval, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = trunc i32 %writeval to i8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #6
  %3 = getelementptr inbounds i8, ptr %transfer.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %tx_buf1.i = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_buf1.i, ptr %transfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %len.i, align 4
  %delay.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 9
  %sdecode_delay_us.i = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %sdecode_delay_us.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sdecode_delay_us.i, align 32
  %conv.i = trunc i32 %8 to i16
  %9 = ptrtoint ptr %delay.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %delay.i, align 2
  %10 = and i8 %conv2, 31
  %11 = or i8 %10, 64
  %12 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tx_buf1.i, align 128
  %arrayidx7.i = getelementptr %struct.ads131e08_state, ptr %1, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.ads131e08_state, ptr %1, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv3, ptr %arrayidx9.i, align 2
  %spi.i = getelementptr inbounds %struct.ads131e08_state, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %17 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_message_add_tail.exit.i.i.i_crit_edge

if.end.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_message_add_tail.exit.i.i.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %spi_message_add_tail.exit.i.i.i.ads131e08_write_reg.exit_crit_edge, label %do.end.i

spi_message_add_tail.exit.i.i.i.ads131e08_write_reg.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_write_reg.exit

do.end.i:                                         ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.64) #9
  br label %ads131e08_write_reg.exit

ads131e08_write_reg.exit:                         ; preds = %do.end.i, %spi_message_add_tail.exit.i.i.i.ads131e08_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ads131e08_write_reg.exit, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call.i.i, %ads131e08_write_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads131e08_pool_data(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %cmd.addr.i22 = alloca i8, align 1
  %cmd.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 11
  %0 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %completion, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %1 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %cmd.addr.i, align 1
  %spi.i = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 1
  %2 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %ads131e08_exec_cmd.exit

ads131e08_exec_cmd.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi.i, align 4
  %6 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd.addr.i, align 1
  %conv.i = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.56, i32 noundef %conv.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %call3 = call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %readback_len = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 10
  %8 = ptrtoint ptr %readback_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %readback_len, align 8
  %call7 = call fastcc i32 @ads131e08_read_data(ptr noundef %st, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i22)
  %10 = ptrtoint ptr %cmd.addr.i22 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %cmd.addr.i22, align 1
  %11 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi.i, align 4
  %call.i24 = call i32 @spi_write_then_read(ptr noundef %12, ptr noundef nonnull %cmd.addr.i22, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not.i25 = icmp eq i32 %call.i24, 0
  br i1 %tobool.not.i25, label %if.end10.ads131e08_exec_cmd.exit28_crit_edge, label %do.end.i27

if.end10.ads131e08_exec_cmd.exit28_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_exec_cmd.exit28

do.end.i27:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi.i, align 4
  %15 = ptrtoint ptr %cmd.addr.i22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cmd.addr.i22, align 1
  %conv.i26 = zext i8 %16 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.56, i32 noundef %conv.i26) #9
  br label %ads131e08_exec_cmd.exit28

ads131e08_exec_cmd.exit28:                        ; preds = %do.end.i27, %if.end10.ads131e08_exec_cmd.exit28_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i22)
  br label %cleanup

cleanup:                                          ; preds = %ads131e08_exec_cmd.exit28, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ads131e08_exec_cmd.exit
  %retval.0 = phi i32 [ %call.i24, %ads131e08_exec_cmd.exit28 ], [ %call.i, %ads131e08_exec_cmd.exit ], [ -110, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads131e08_exec_cmd(ptr nocapture noundef readonly %st, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  %cmd.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %cmd, ptr %cmd.addr, align 1
  %spi = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 1
  %1 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spi, align 4
  %call = call i32 @spi_write_then_read(ptr noundef %2, ptr noundef nonnull %cmd.addr, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi, align 4
  %5 = ptrtoint ptr %cmd.addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmd.addr, align 1
  %conv = zext i8 %6 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.56, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads131e08_read_data(ptr noundef %st, i32 noundef %rx_len) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %transfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer) #6
  %0 = getelementptr inbounds i8, ptr %transfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  %tx_buf1 = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 14
  %2 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tx_buf1, ptr %transfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %len, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 1, i32 1
  %rx_buf3 = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 15
  %4 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx_buf3, ptr %rx_buf, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 1, i32 2
  %5 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %rx_len, ptr %len4, align 4
  %6 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 18, ptr %tx_buf1, align 128
  %spi = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 1
  %7 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 1, i32 18
  %19 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %20, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 1, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i.i.i.1, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.1, ptr %20, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %spi_message_add_tail.exit.i.i.1.if.end_crit_edge, label %do.end

spi_message_add_tail.exit.i.i.1.if.end_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.58) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %spi_message_add_tail.exit.i.i.1.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads131e08_set_data_rate(ptr noundef %st, i32 noundef %data_rate) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %transfer.i = alloca [1 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %data_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %data_rate, label %do.end [
    i32 64, label %entry.if.end4_crit_edge
    i32 32, label %if.end4.fold.split
    i32 16, label %if.end4.fold.split68
    i32 8, label %if.end4.fold.split69
    i32 4, label %if.end4.fold.split70
    i32 2, label %if.end4.fold.split71
    i32 1, label %if.end4.fold.split72
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spi = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 1
  %1 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.60) #9
  br label %cleanup

if.end4.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4.fold.split68:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4.fold.split69:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4.fold.split70:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4.fold.split71:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4.fold.split72:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.end4.fold.split72, %if.end4.fold.split71, %if.end4.fold.split70, %if.end4.fold.split69, %if.end4.fold.split68, %if.end4.fold.split, %entry.if.end4_crit_edge
  %i.066.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %if.end4.fold.split ], [ 2, %if.end4.fold.split68 ], [ 3, %if.end4.fold.split69 ], [ 4, %if.end4.fold.split70 ], [ 5, %if.end4.fold.split71 ], [ 6, %if.end4.fold.split72 ]
  %call = tail call fastcc i32 @ads131e08_read_reg(ptr noundef %st, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %reg16 = getelementptr [7 x %struct.ads131e08_data_rate_desc], ptr @ads131e08_data_rate_tbl, i32 0, i32 %i.066.lcssa, i32 1
  %3 = ptrtoint ptr %reg16 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %reg16, align 4
  %5 = and i8 %4, 7
  %6 = trunc i32 %call to i8
  %7 = and i8 %6, -8
  %conv34 = or i8 %5, %7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #6
  %8 = getelementptr inbounds i8, ptr %transfer.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %tx_buf1.i = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 14
  %10 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tx_buf1.i, ptr %transfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %len.i, align 4
  %delay.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 9
  %sdecode_delay_us.i = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 8
  %12 = ptrtoint ptr %sdecode_delay_us.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdecode_delay_us.i, align 32
  %conv.i = trunc i32 %13 to i16
  %14 = ptrtoint ptr %delay.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %delay.i, align 2
  %15 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 65, ptr %tx_buf1.i, align 128
  %arrayidx7.i = getelementptr %struct.ads131e08_state, ptr %st, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.ads131e08_state, ptr %st, i32 0, i32 14, i32 2
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv34, ptr %arrayidx9.i, align 2
  %spi.i = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 1
  %18 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %20 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end7.spi_message_add_tail.exit.i.i.i_crit_edge

if.end7.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end7.spi_message_add_tail.exit.i.i.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end38, label %ads131e08_write_reg.exit

ads131e08_write_reg.exit:                         ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.64) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #6
  br label %cleanup

if.end38:                                         ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #6
  %data_rate39 = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 6
  %32 = ptrtoint ptr %data_rate39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %data_rate, ptr %data_rate39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %data_rate)
  %cmp41 = icmp ugt i32 %data_rate, 31
  %cond = select i1 %cmp41, i32 2, i32 3
  %33 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %st, align 128
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %mul = mul i32 %36, %cond
  %add = add i32 %mul, 3
  %readback_len = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 10
  %37 = ptrtoint ptr %readback_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %readback_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %ads131e08_write_reg.exit, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end38 ], [ %call, %if.end4.cleanup_crit_edge ], [ %call.i.i, %ads131e08_write_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads131e08_read_reg(ptr noundef %st, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %transfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer) #6
  %0 = getelementptr inbounds i8, ptr %transfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  %tx_buf1 = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 14
  %2 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tx_buf1, ptr %transfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %len, align 4
  %delay = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 9
  %sdecode_delay_us = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 8
  %4 = ptrtoint ptr %sdecode_delay_us to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sdecode_delay_us, align 32
  %conv = trunc i32 %5 to i16
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %delay, align 2
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 1, i32 1
  %rx_buf3 = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 15
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rx_buf3, ptr %rx_buf, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 1, i32 2
  %8 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %len4, align 4
  %9 = and i8 %reg, 31
  %10 = or i8 %9, 32
  %11 = ptrtoint ptr %tx_buf1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tx_buf1, align 128
  %arrayidx14 = getelementptr %struct.ads131e08_state, ptr %st, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx14, align 1
  %spi = getelementptr inbounds %struct.ads131e08_state, ptr %st, i32 0, i32 1
  %13 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  %15 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 1, i32 18
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %26, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 1, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i.i.i.1, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.1, ptr %26, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.62) #9
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %rx_buf3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rx_buf3, align 1
  %conv18 = zext i8 %34 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %conv18, %if.end ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_trigger_using_own(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads131e08_set_trigger_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  %cmd.addr.i = alloca i8, align 1
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
  %conv = select i1 %state, i8 8, i8 10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %4 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %cmd.addr.i, align 1
  %spi.i = getelementptr inbounds %struct.ads131e08_state, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %6, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ads131e08_exec_cmd.exit_crit_edge, label %do.end.i

entry.ads131e08_exec_cmd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ads131e08_exec_cmd.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi.i, align 4
  %9 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cmd.addr.i, align 1
  %conv.i = zext i8 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.56, i32 noundef %conv.i) #9
  br label %ads131e08_exec_cmd.exit

ads131e08_exec_cmd.exit:                          ; preds = %do.end.i, %entry.ads131e08_exec_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !89, !91, !92, !93, !94, !96, !98, !99, !100, !101, !103, !105, !107, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !145, !147, !149, !151}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @__initcall__kmod_ti_ads131e08__320_949_ads131e08_driver_init6, !1, !"__initcall__kmod_ti_ads131e08__320_949_ads131e08_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 949, i32 1}
!2 = !{ptr @__exitcall_ads131e08_driver_exit, !1, !"__exitcall_ads131e08_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author321, !4, !"__UNIQUE_ID_author321", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 951, i32 1}
!5 = !{ptr @__UNIQUE_ID_description322, !6, !"__UNIQUE_ID_description322", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 952, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 953, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 944, i32 11}
!12 = !{ptr @ads131e08_driver, !13, !"ads131e08_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 942, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 814, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ads131e08_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ads131e08_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 820, i32 3}
!24 = !{ptr @ads131e08_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ads131e08_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 845, i32 11}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 847, i32 3}
!30 = !{ptr @ads131e08_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ads131e08_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 851, i32 47}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 854, i32 3}
!36 = !{ptr @ads131e08_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ads131e08_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 863, i32 3}
!40 = !{ptr @ads131e08_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ads131e08_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 872, i32 3}
!44 = !{ptr @ads131e08_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ads131e08_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 876, i32 56}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 880, i32 4}
!50 = !{ptr @ads131e08_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ads131e08_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 895, i32 40}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 898, i32 10}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 902, i32 3}
!58 = !{ptr @ads131e08_probe._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ads131e08_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 912, i32 3}
!62 = !{ptr @ads131e08_probe._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ads131e08_probe._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 924, i32 3}
!66 = !{ptr @ads131e08_probe._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ads131e08_probe._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 701, i32 38}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 713, i32 3}
!72 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ads131e08_alloc_channels._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ads131e08_alloc_channels._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 719, i32 3}
!77 = !{ptr @ads131e08_alloc_channels._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ads131e08_alloc_channels._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 724, i32 3}
!81 = !{ptr @ads131e08_alloc_channels._entry.44, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ads131e08_alloc_channels._entry_ptr.46, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 740, i32 40}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 744, i32 40}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 755, i32 40}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 294, i32 3}
!91 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ads131e08_pga_gain_to_field_value._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @ads131e08_pga_gain_to_field_value._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @ads131e08_pga_gain_tbl, !95, !"ads131e08_pga_gain_tbl", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 152, i32 45}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 331, i32 3}
!98 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ads131e08_validate_channel_mux._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @ads131e08_validate_channel_mux._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = distinct !{null, !102, !"ads131e08_valid_channel_mux_values", i1 false, i1 false}
!102 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 160, i32 17}
!103 = !{ptr @ads131e08_iio_info, !104, !"ads131e08_iio_info", i1 false, i1 false}
!104 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 592, i32 30}
!105 = !{ptr @ads131e08_attribute_group, !106, !"ads131e08_attribute_group", i1 false, i1 false}
!106 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 574, i32 37}
!107 = !{ptr @ads131e08_attributes, !108, !"ads131e08_attributes", i1 false, i1 false}
!108 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 569, i32 26}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 567, i32 8}
!111 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @iio_const_attr_sampling_frequency_available, !110, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 168, i32 3}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ads131e08_exec_cmd._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ads131e08_exec_cmd._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 244, i32 3}
!120 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ads131e08_read_data._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @ads131e08_read_data._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 259, i32 3}
!125 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @ads131e08_set_data_rate._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @ads131e08_set_data_rate._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @ads131e08_data_rate_tbl, !129, !"ads131e08_data_rate_tbl", i1 false, i1 false}
!129 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 137, i32 46}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 195, i32 3}
!132 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ads131e08_read_reg._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @ads131e08_read_reg._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 222, i32 3}
!137 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ads131e08_write_reg._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @ads131e08_write_reg._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @init_completion.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../include/linux/completion.h", i32 87, i32 2}
!142 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @ads131e08_trigger_ops, !144, !"ads131e08_trigger_ops", i1 false, i1 false}
!144 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 608, i32 37}
!145 = !{ptr @ads131e08_of_match, !146, !"ads131e08_of_match", i1 false, i1 false}
!146 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 931, i32 34}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 120, i32 11}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 124, i32 11}
!151 = !{ptr @ads131e08_info_tbl, !152, !"ads131e08_info_tbl", i1 false, i1 false}
!152 = !{!"../drivers/iio/adc/ti-ads131e08.c", i32 117, i32 36}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{!"auto-init"}
!163 = !{!"branch_weights", i32 1, i32 2000}
!164 = !{i8 0, i8 2}
