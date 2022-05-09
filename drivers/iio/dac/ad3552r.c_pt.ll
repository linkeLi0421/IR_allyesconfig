; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad3552r.c_pt.bc'
source_filename = "../drivers/iio/dac/ad3552r.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ad3552r_desc = type { %struct.mutex, ptr, ptr, ptr, [2 x %struct.ad3552r_ch_data], [3 x %struct.iio_chan_spec], i32, i32, i32 }
%struct.ad3552r_ch_data = type { i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }

@__initcall__kmod_ad3552r__290_1134_ad3552r_driver_init6 = internal global ptr @ad3552r_driver_init, section ".initcall6.init", align 4
@ad3552r_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad3552r_id, ptr @ad3552r_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad3552r_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad3552r_driver_exit = internal global ptr @ad3552r_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [60 x i8] c"ad3552r.author=Mihail Chindris <mihail.chindris@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [46 x i8] c"ad3552r.description=Analog Device AD3552R DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [37 x i8] c"ad3552r.file=drivers/iio/dac/ad3552r\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"ad3552r.license=GPL v2\00", section ".modinfo", align 1
@ad3552r_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad3542r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16392 }, %struct.spi_device_id { [32 x i8] c"ad3552r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16393 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ad3552r\00", [24 x i8] zeroinitializer }, align 32
@ad3552r_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad3542r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad3552r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ad3552r_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dac->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ad3542r\00", [24 x i8] zeroinitializer }, align 32
@ad3552r_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad3552r_read_raw, ptr null, ptr null, ptr @ad3552r_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad3552r_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1037, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Reset failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad3552r_init\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iio/dac/ad3552r.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad3552r_init._entry_ptr = internal global ptr @ad3552r_init._entry, section ".printk_index", align 4
@ad3552r_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1043, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Scratch pad test failed\0A\00", [39 x i8] zeroinitializer }, align 32
@ad3552r_init._entry_ptr.10 = internal global ptr @ad3552r_init._entry.8, section ".printk_index", align 4
@ad3552r_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1049, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Fail read PRODUCT_ID_L\0A\00", [40 x i8] zeroinitializer }, align 32
@ad3552r_init._entry_ptr.13 = internal global ptr @ad3552r_init._entry.11, section ".printk_index", align 4
@ad3552r_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1056, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Fail read PRODUCT_ID_H\0A\00", [40 x i8] zeroinitializer }, align 32
@ad3552r_init._entry_ptr.16 = internal global ptr @ad3552r_init._entry.14, section ".printk_index", align 4
@ad3552r_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1062, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Product id not matching\0A\00", [39 x i8] zeroinitializer }, align 32
@ad3552r_init._entry_ptr.19 = internal global ptr @ad3552r_init._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error while getting gpio reset\00", [33 x i8] zeroinitializer }, align 32
@ad3552r_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 691, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error while resetting\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ad3552r_reset\00", [18 x i8] zeroinitializer }, align 32
@ad3552r_reset._entry_ptr = internal global ptr @ad3552r_reset._entry, section ".printk_index", align 4
@ad3552r_reset._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 702, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@ad3552r_reset._entry_ptr.25 = internal global ptr @ad3552r_reset._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ldac\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error getting gpio ldac\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error getting vref\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,vref-out-en\00", [16 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 906, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable external vref supply\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ad3552r_configure_device\00", [39 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry_ptr = internal global ptr @ad3552r_configure_device._entry, section ".printk_index", align 4
@ad3552r_configure_device._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.5, i32 918, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vref-supply must be 2.5V\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry_ptr.36 = internal global ptr @ad3552r_configure_device._entry.33, section ".printk_index", align 4
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adi,sdo-drive-strength\00", [41 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.32, ptr @.str.5, i32 934, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"adi,sdo-drive-strength must be less than 4\0A\00", [52 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry_ptr.40 = internal global ptr @ad3552r_configure_device._entry.38, section ".printk_index", align 4
@ad3552r_configure_device._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.32, ptr @.str.5, i32 948, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No channels defined\0A\00", [43 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry_ptr.43 = internal global ptr @ad3552r_configure_device._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str.5, i32 955, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mandatory reg property missing\0A\00", [32 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry_ptr.47 = internal global ptr @ad3552r_configure_device._entry.45, section ".printk_index", align 4
@ad3552r_configure_device._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.32, ptr @.str.5, i32 960, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg must be less than %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry_ptr.50 = internal global ptr @ad3552r_configure_device._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"adi,output-range-microvolt\00", [37 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.32, ptr @.str.5, i32 972, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"adi,output-range-microvolt property could not be parsed\0A\00", [39 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry_ptr.54 = internal global ptr @ad3552r_configure_device._entry.52, section ".printk_index", align 4
@ad3552r_configure_device._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.32, ptr @.str.5, i32 979, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid adi,output-range-microvolt value\0A\00", [54 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry_ptr.57 = internal global ptr @ad3552r_configure_device._entry.55, section ".printk_index", align 4
@ad3552r_configure_device._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.32, ptr @.str.5, i32 992, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"adi,output-range-microvolt is required for ad3542r\0A\00", [44 x i8] zeroinitializer }, align 32
@ad3552r_configure_device._entry_ptr.60 = internal global ptr @ad3552r_configure_device._entry.58, section ".printk_index", align 4
@ad3542r_ch_ranges = internal constant { [6 x [2 x i32]], [48 x i8] } { [6 x [2 x i32]] [[2 x i32] [i32 0, i32 2500], [2 x i32] [i32 0, i32 3000], [2 x i32] [i32 0, i32 5000], [2 x i32] [i32 0, i32 10000], [2 x i32] [i32 -2500, i32 7500], [2 x i32] [i32 -5000, i32 5000]], [48 x i8] zeroinitializer }, align 32
@ad3552r_ch_ranges = internal constant { [5 x [2 x i32]], [56 x i8] } { [5 x [2 x i32]] [[2 x i32] [i32 0, i32 2500], [2 x i32] [i32 0, i32 5000], [2 x i32] [i32 0, i32 10000], [2 x i32] [i32 -5000, i32 5000], [2 x i32] [i32 -10000, i32 10000]], [56 x i8] zeroinitializer }, align 32
@addr_mask_map_ch = internal constant { [10 x [3 x i16]], [36 x i8] } { [10 x [3 x i16]] [[3 x i16] [i16 24, i16 16, i16 32], [3 x i16] [i16 24, i16 1, i16 2], [3 x i16] [i16 25, i16 15, i16 240], [3 x i16] zeroinitializer, [3 x i16] zeroinitializer, [3 x i16] zeroinitializer, [3 x i16] zeroinitializer, [3 x i16] zeroinitializer, [3 x i16] zeroinitializer, [3 x i16] [i16 47, i16 1, i16 2]], [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"custom-output-range-config\00", [37 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.5, i32 814, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"mandatory custom-output-range-config property missing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ad3552r_configure_custom_gain\00", [34 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry_ptr = internal global ptr @ad3552r_configure_custom_gain._entry, section ".printk_index", align 4
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adi,gain-scaling-p\00", [45 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.63, ptr @.str.5, i32 823, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mandatory adi,gain-scaling-p property missing\0A\00", [49 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry_ptr.67 = internal global ptr @ad3552r_configure_custom_gain._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adi,gain-scaling-n\00", [45 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.63, ptr @.str.5, i32 831, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mandatory adi,gain-scaling-n property missing\0A\00", [49 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry_ptr.71 = internal global ptr @ad3552r_configure_custom_gain._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adi,rfb-ohms\00", [19 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.63, ptr @.str.5, i32 839, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mandatory adi,rfb-ohms property missing\0A\00", [55 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry_ptr.75 = internal global ptr @ad3552r_configure_custom_gain._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,gain-offset\00", [16 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.63, ptr @.str.5, i32 846, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mandatory adi,gain-offset property missing\0A\00", [52 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry_ptr.79 = internal global ptr @ad3552r_configure_custom_gain._entry.77, section ".printk_index", align 4
@ad3552r_configure_custom_gain._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.63, ptr @.str.5, i32 859, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing register\0A\00", [40 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry_ptr.82 = internal global ptr @ad3552r_configure_custom_gain._entry.80, section ".printk_index", align 4
@ad3552r_configure_custom_gain._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.63, ptr @.str.5, i32 865, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@ad3552r_configure_custom_gain._entry_ptr.84 = internal global ptr @ad3552r_configure_custom_gain._entry.83, section ".printk_index", align 4
@gains_scaling_table = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1000, i32 500, i32 250, i32 125], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 22]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 22]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 19]
@__sancov_gen_cov_switch_values.87 = internal global [8 x i64] [i64 6, i64 8, i64 4, i64 8, i64 235, i64 242, i64 245, i64 250]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.89 = internal global [8 x i64] [i64 6, i64 8, i64 4, i64 8, i64 235, i64 242, i64 245, i64 250]
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"ad3552r_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1126, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"ad3552r_id\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1112, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1128, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"ad3552r_of_match\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1119, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1084, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1094, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"ad3552r_iio_info\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 514, i32 30 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1037, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1043, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1049, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1056, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1062, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 661, i32 60 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 665, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 691, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 702, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 888, i32 48 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 891, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 893, i32 42 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 897, i32 11 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 899, i32 38 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 906, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 918, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 931, i32 38 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 934, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 948, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 953, i32 41 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 955, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 959, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 965, i32 38 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 971, i32 5 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 978, i32 5 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 991, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant [18 x i8] c"ad3542r_ch_ranges\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 183, i32 18 }
@___asan_gen_.261 = private unnamed_addr constant [18 x i8] c"ad3552r_ch_ranges\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 160, i32 18 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"addr_mask_map_ch\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 293, i32 18 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 811, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 813, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 821, i32 45 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 823, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 829, i32 45 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 831, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 837, i32 45 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 839, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 844, i32 45 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 846, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 859, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 865, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c"gains_scaling_table\00", align 1
@___asan_gen_.325 = private constant [29 x i8] c"../drivers/iio/dac/ad3552r.c\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 204, i32 18 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad3552r_driver_exit, ptr @__initcall__kmod_ad3552r__290_1134_ad3552r_driver_init6, ptr @ad3552r_configure_custom_gain._entry, ptr @ad3552r_configure_custom_gain._entry.65, ptr @ad3552r_configure_custom_gain._entry.69, ptr @ad3552r_configure_custom_gain._entry.73, ptr @ad3552r_configure_custom_gain._entry.77, ptr @ad3552r_configure_custom_gain._entry.80, ptr @ad3552r_configure_custom_gain._entry.83, ptr @ad3552r_configure_custom_gain._entry_ptr, ptr @ad3552r_configure_custom_gain._entry_ptr.67, ptr @ad3552r_configure_custom_gain._entry_ptr.71, ptr @ad3552r_configure_custom_gain._entry_ptr.75, ptr @ad3552r_configure_custom_gain._entry_ptr.79, ptr @ad3552r_configure_custom_gain._entry_ptr.82, ptr @ad3552r_configure_custom_gain._entry_ptr.84, ptr @ad3552r_configure_device._entry, ptr @ad3552r_configure_device._entry.33, ptr @ad3552r_configure_device._entry.38, ptr @ad3552r_configure_device._entry.41, ptr @ad3552r_configure_device._entry.45, ptr @ad3552r_configure_device._entry.48, ptr @ad3552r_configure_device._entry.52, ptr @ad3552r_configure_device._entry.55, ptr @ad3552r_configure_device._entry.58, ptr @ad3552r_configure_device._entry_ptr, ptr @ad3552r_configure_device._entry_ptr.36, ptr @ad3552r_configure_device._entry_ptr.40, ptr @ad3552r_configure_device._entry_ptr.43, ptr @ad3552r_configure_device._entry_ptr.47, ptr @ad3552r_configure_device._entry_ptr.50, ptr @ad3552r_configure_device._entry_ptr.54, ptr @ad3552r_configure_device._entry_ptr.57, ptr @ad3552r_configure_device._entry_ptr.60, ptr @ad3552r_driver_exit, ptr @ad3552r_init._entry, ptr @ad3552r_init._entry.11, ptr @ad3552r_init._entry.14, ptr @ad3552r_init._entry.17, ptr @ad3552r_init._entry.8, ptr @ad3552r_init._entry_ptr, ptr @ad3552r_init._entry_ptr.10, ptr @ad3552r_init._entry_ptr.13, ptr @ad3552r_init._entry_ptr.16, ptr @ad3552r_init._entry_ptr.19, ptr @ad3552r_reset._entry, ptr @ad3552r_reset._entry.24, ptr @ad3552r_reset._entry_ptr, ptr @ad3552r_reset._entry_ptr.25, ptr @ad3552r_driver, ptr @ad3552r_id, ptr @.str, ptr @ad3552r_of_match, ptr @ad3552r_probe.__key, ptr @.str.1, ptr @.str.2, ptr @ad3552r_iio_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @ad3542r_ch_ranges, ptr @ad3552r_ch_ranges, ptr @addr_mask_map_ch, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @gains_scaling_table], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_reset._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_device._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_device._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_device._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_device._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_device._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_device._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_device._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_device._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3542r_ch_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_ch_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_mask_map_ch to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_custom_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_custom_gain._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_custom_gain._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_custom_gain._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_custom_gain._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_custom_gain._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad3552r_configure_custom_gain._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gains_scaling_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad3552r_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad3552r_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad3552r_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad3552r_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad3552r_probe(ptr noundef %spi) #2 align 64 {
entry:
  %buf.i.i15.i361.i.i = alloca [8 x i8], align 1
  %buf.i.i.i363.i.i = alloca [8 x i8], align 1
  %buf.i.i364.i.i = alloca [3 x i8], align 2
  %buf.i.i15.i331.i.i = alloca [8 x i8], align 1
  %buf.i.i.i333.i.i = alloca [8 x i8], align 1
  %buf.i.i334.i.i = alloca [3 x i8], align 2
  %buf.i.i15.i300.i.i = alloca [8 x i8], align 1
  %buf.i.i.i302.i.i = alloca [8 x i8], align 1
  %buf.i.i303.i.i = alloca [3 x i8], align 2
  %remainder.i.i.i.i = alloca i32, align 4
  %remainder.i37.i.i.i.i = alloca i32, align 4
  %remainder.i.i.i.i.i = alloca i32, align 4
  %rem.i.i.i = alloca i32, align 4
  %buf.i.i152.i.i.i = alloca [8 x i8], align 1
  %buf.i153.i.i.i = alloca [3 x i8], align 2
  %buf.i.i.i270.i.i = alloca [8 x i8], align 1
  %buf.i.i271.i.i = alloca [3 x i8], align 2
  %val.i.i.i = alloca i32, align 4
  %buf.i.i15.i244.i.i = alloca [8 x i8], align 1
  %buf.i.i.i246.i.i = alloca [8 x i8], align 1
  %buf.i.i247.i.i = alloca [3 x i8], align 2
  %buf.i.i15.i.i80.i = alloca [8 x i8], align 1
  %buf.i.i.i.i81.i = alloca [8 x i8], align 1
  %buf.i.i.i82.i = alloca [3 x i8], align 2
  %vals.i.i = alloca [2 x i32], align 4
  %val.i.i = alloca i32, align 4
  %ch.i.i = alloca i32, align 4
  %buf.i.i69.i = alloca [8 x i8], align 1
  %buf.i70.i = alloca [3 x i8], align 2
  %buf.i.i.i = alloca [8 x i8], align 1
  %buf.i.i = alloca [3 x i8], align 2
  %buf.i.i43.i.i = alloca [8 x i8], align 1
  %buf.i44.i.i = alloca [3 x i8], align 2
  %buf.i.i39.i.i = alloca [8 x i8], align 1
  %buf.i.i37.i.i = alloca [8 x i8], align 1
  %buf.i38.i.i = alloca [3 x i8], align 2
  %buf.i.i.i60.i = alloca [8 x i8], align 1
  %buf.i.i15.i275.i.i = alloca [8 x i8], align 1
  %buf.i.i.i277.i.i = alloca [8 x i8], align 1
  %buf.i.i278.i.i = alloca [3 x i8], align 2
  %buf.i.i.i249.i.i = alloca [8 x i8], align 1
  %buf.i.i250.i.i = alloca [3 x i8], align 2
  %buf.i.i.i219.i.i = alloca [8 x i8], align 1
  %buf.i.i220.i.i = alloca [3 x i8], align 2
  %buf.i.i.i192.i.i = alloca [8 x i8], align 1
  %buf.i.i193.i.i = alloca [3 x i8], align 2
  %buf.i.i.i180.i.i = alloca [8 x i8], align 1
  %buf.i.i181.i.i = alloca [3 x i8], align 2
  %buf.i.i15.i.i.i = alloca [8 x i8], align 1
  %buf.i.i.i.i.i = alloca [8 x i8], align 1
  %buf.i.i.i.i = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 428) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %spi3 = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %spi3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %spi3, align 4
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %chip_id = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %chip_id, align 4
  tail call void @__mutex_init(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad3552r_probe.__key) #7
  %6 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi3, align 4
  %call.i.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef 3) #7
  %gpio_reset.i.i = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %gpio_reset.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi3, align 4
  %11 = ptrtoint ptr %call.i.i to i32
  %call7.i.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %10, i32 noundef %11, ptr noundef nonnull @.str.21) #7
  br label %ad3552r_reset.exit.i

if.end.i.i:                                       ; preds = %if.end
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %12 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_reset.i.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 1) #7
  br label %if.end14.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i.i.i) #7
  %14 = call ptr @memset(ptr %buf.i.i.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i.i.i) #7
  %15 = getelementptr inbounds i8, ptr %buf.i.i.i.i.i, i32 1
  %16 = call ptr @memset(ptr %15, i32 255, i32 7)
  %17 = ptrtoint ptr %buf.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %buf.i.i.i.i.i, align 1
  %18 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi3, align 4
  %call.i.i.i.i.i = call i32 @spi_write_then_read(ptr noundef %19, ptr noundef nonnull %buf.i.i.i.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %ad3552r_read_reg.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i.i) #7
  %phi.bo310.i.i = or i8 %21, -127
  br label %ad3552r_update_reg_field.exit.i.i

ad3552r_read_reg.exit.i.i.i:                      ; preds = %if.else.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i179.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i179.i.i, label %ad3552r_read_reg.exit.i.i.i.do.end.i_crit_edge, label %ad3552r_read_reg.exit.i.i.i.ad3552r_update_reg_field.exit.i.i_crit_edge

ad3552r_read_reg.exit.i.i.i.ad3552r_update_reg_field.exit.i.i_crit_edge: ; preds = %ad3552r_read_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_update_reg_field.exit.i.i

ad3552r_read_reg.exit.i.i.i.do.end.i_crit_edge:   ; preds = %ad3552r_read_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

ad3552r_update_reg_field.exit.i.i:                ; preds = %ad3552r_read_reg.exit.i.i.i.ad3552r_update_reg_field.exit.i.i_crit_edge, %if.end.i.i.i.i
  %reg.025.i.off0.i.i = phi i8 [ %phi.bo310.i.i, %if.end.i.i.i.i ], [ -1, %ad3552r_read_reg.exit.i.i.i.ad3552r_update_reg_field.exit.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i15.i.i.i) #7
  %22 = getelementptr inbounds i8, ptr %buf.i.i15.i.i.i, i32 1
  %23 = ptrtoint ptr %buf.i.i15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %buf.i.i15.i.i.i, align 1
  %24 = getelementptr inbounds i8, ptr %buf.i.i15.i.i.i, i32 2
  %25 = call ptr @memset(ptr %24, i32 255, i32 6)
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %reg.025.i.off0.i.i, ptr %22, align 1
  %27 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi3, align 4
  %call10.i.i.i.i.i = call i32 @spi_write_then_read(ptr noundef %28, ptr noundef nonnull %buf.i.i15.i.i.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i15.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %call10.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %ad3552r_update_reg_field.exit.i.i.do.end.i_crit_edge, label %ad3552r_update_reg_field.exit.i.i.if.end14.i.i_crit_edge

ad3552r_update_reg_field.exit.i.i.if.end14.i.i_crit_edge: ; preds = %ad3552r_update_reg_field.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

ad3552r_update_reg_field.exit.i.i.do.end.i_crit_edge: ; preds = %ad3552r_update_reg_field.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end14.i.i:                                     ; preds = %ad3552r_update_reg_field.exit.i.i.if.end14.i.i_crit_edge, %if.then9.i.i
  %call17.i.i = call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call17.i.i, 50000000
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 687) #7
  %29 = getelementptr inbounds i8, ptr %buf.i.i.i180.i.i, i32 1
  br label %_ad3552r_reg_len.exit.i.i.i.i

_ad3552r_reg_len.exit.i.i.i.i:                    ; preds = %if.then47.i.i, %if.end14.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i181.i.i) #7
  %30 = call ptr @memset(ptr %buf.i.i181.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i180.i.i) #7
  %31 = call ptr @memset(ptr %29, i32 255, i32 7)
  %32 = ptrtoint ptr %buf.i.i.i180.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -127, ptr %buf.i.i.i180.i.i, align 1
  %33 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spi3, align 4
  %call.i.i.i183.i.i = call i32 @spi_write_then_read(ptr noundef %34, ptr noundef nonnull %buf.i.i.i180.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i181.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i180.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i183.i.i)
  %tobool.not.i.i184.i.i = icmp eq i32 %call.i.i.i183.i.i, 0
  br i1 %tobool.not.i.i184.i.i, label %if.end.i188.i.i, label %ad3552r_read_reg.exit.i187.i.i

ad3552r_read_reg.exit.i187.i.i:                   ; preds = %_ad3552r_reg_len.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i181.i.i) #7
  br label %ad3552r_read_reg_wrapper.exit.i.i

if.end.i188.i.i:                                  ; preds = %_ad3552r_reg_len.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %buf.i.i181.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf.i.i181.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i181.i.i) #7
  %conv.i.i.i = zext i8 %36 to i32
  br label %ad3552r_read_reg_wrapper.exit.i.i

ad3552r_read_reg_wrapper.exit.i.i:                ; preds = %if.end.i188.i.i, %ad3552r_read_reg.exit.i187.i.i
  %retval.0.i189.i.i = phi i32 [ %conv.i.i.i, %if.end.i188.i.i ], [ %call.i.i.i183.i.i, %ad3552r_read_reg.exit.i187.i.i ]
  %conv29.i.i = and i32 %retval.0.i189.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv29.i.i)
  %cmp30.i.i = icmp eq i32 %conv29.i.i, 8
  br i1 %cmp30.i.i, label %ad3552r_read_reg_wrapper.exit.i.i.for.end.i.i_crit_edge, label %land.lhs.true.i.i

ad3552r_read_reg_wrapper.exit.i.i.for.end.i.i_crit_edge: ; preds = %ad3552r_read_reg_wrapper.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

land.lhs.true.i.i:                                ; preds = %ad3552r_read_reg_wrapper.exit.i.i
  %call38.i.i = call i64 @ktime_get() #7
  %cmp3.i.i.i = icmp sgt i64 %call38.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %_ad3552r_reg_len.exit.i.i206.i.i, label %if.then47.i.i

_ad3552r_reg_len.exit.i.i206.i.i:                 ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i193.i.i) #7
  %37 = call ptr @memset(ptr %buf.i.i193.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i192.i.i) #7
  %38 = getelementptr inbounds i8, ptr %buf.i.i.i192.i.i, i32 1
  %39 = call ptr @memset(ptr %38, i32 255, i32 7)
  %40 = ptrtoint ptr %buf.i.i.i192.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -127, ptr %buf.i.i.i192.i.i, align 1
  %41 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %spi3, align 4
  %call.i.i.i204.i.i = call i32 @spi_write_then_read(ptr noundef %42, ptr noundef nonnull %buf.i.i.i192.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i193.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i192.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i204.i.i)
  %tobool.not.i.i205.i.i = icmp eq i32 %call.i.i.i204.i.i, 0
  br i1 %tobool.not.i.i205.i.i, label %if.end.i215.i.i, label %ad3552r_read_reg.exit.i212.i.i

ad3552r_read_reg.exit.i212.i.i:                   ; preds = %_ad3552r_reg_len.exit.i.i206.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i193.i.i) #7
  br label %for.end.i.i

if.end.i215.i.i:                                  ; preds = %_ad3552r_reg_len.exit.i.i206.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %buf.i.i193.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %buf.i.i193.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i193.i.i) #7
  %conv.i214.i.i = zext i8 %44 to i32
  br label %for.end.i.i

if.then47.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #7
  br label %_ad3552r_reg_len.exit.i.i.i.i

for.end.i.i:                                      ; preds = %if.end.i215.i.i, %ad3552r_read_reg.exit.i212.i.i, %ad3552r_read_reg_wrapper.exit.i.i.for.end.i.i_crit_edge
  %val.0.in.i.i = phi i32 [ %conv.i214.i.i, %if.end.i215.i.i ], [ %call.i.i.i204.i.i, %ad3552r_read_reg.exit.i212.i.i ], [ %retval.0.i189.i.i, %ad3552r_read_reg_wrapper.exit.i.i.for.end.i.i_crit_edge ]
  %conv49.i.i = and i32 %val.0.in.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv49.i.i)
  %cmp50.i.i = icmp eq i32 %conv49.i.i, 8
  br i1 %cmp50.i.i, label %if.end68.i.i, label %for.end.i.i.do.end.sink.split.i_crit_edge

for.end.i.i.do.end.sink.split.i_crit_edge:        ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split.i

if.end68.i.i:                                     ; preds = %for.end.i.i
  %call72.i.i = call i64 @ktime_get() #7
  %add.i218.i.i = add i64 %call72.i.i, 50000000
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 698) #7
  %45 = getelementptr inbounds i8, ptr %buf.i.i.i219.i.i, i32 1
  br label %_ad3552r_reg_len.exit.i.i233.i.i

_ad3552r_reg_len.exit.i.i233.i.i:                 ; preds = %if.then109.i.i, %if.end68.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i220.i.i) #7
  %46 = call ptr @memset(ptr %buf.i.i220.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i219.i.i) #7
  %47 = call ptr @memset(ptr %45, i32 255, i32 7)
  %48 = ptrtoint ptr %buf.i.i.i219.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -127, ptr %buf.i.i.i219.i.i, align 1
  %49 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %spi3, align 4
  %call.i.i.i231.i.i = call i32 @spi_write_then_read(ptr noundef %50, ptr noundef nonnull %buf.i.i.i219.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i220.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i219.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i231.i.i)
  %tobool.not.i.i232.i.i = icmp eq i32 %call.i.i.i231.i.i, 0
  br i1 %tobool.not.i.i232.i.i, label %if.end.i242.i.i, label %ad3552r_read_reg.exit.i239.i.i

ad3552r_read_reg.exit.i239.i.i:                   ; preds = %_ad3552r_reg_len.exit.i.i233.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i220.i.i) #7
  br label %ad3552r_read_reg_wrapper.exit244.i.i

if.end.i242.i.i:                                  ; preds = %_ad3552r_reg_len.exit.i.i233.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %buf.i.i220.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %buf.i.i220.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i220.i.i) #7
  %conv.i241.i.i = zext i8 %52 to i32
  br label %ad3552r_read_reg_wrapper.exit244.i.i

ad3552r_read_reg_wrapper.exit244.i.i:             ; preds = %if.end.i242.i.i, %ad3552r_read_reg.exit.i239.i.i
  %retval.0.i243.i.i = phi i32 [ %conv.i241.i.i, %if.end.i242.i.i ], [ %call.i.i.i231.i.i, %ad3552r_read_reg.exit.i239.i.i ]
  %and.i.i = and i32 %retval.0.i243.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool91.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool91.not.i.i, label %ad3552r_read_reg_wrapper.exit244.i.i.for.end113.i.i_crit_edge, label %land.lhs.true99.i.i

ad3552r_read_reg_wrapper.exit244.i.i.for.end113.i.i_crit_edge: ; preds = %ad3552r_read_reg_wrapper.exit244.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end113.i.i

land.lhs.true99.i.i:                              ; preds = %ad3552r_read_reg_wrapper.exit244.i.i
  %call100.i.i = call i64 @ktime_get() #7
  %cmp3.i246.i.i = icmp sgt i64 %call100.i.i, %add.i218.i.i
  br i1 %cmp3.i246.i.i, label %_ad3552r_reg_len.exit.i.i263.i.i, label %if.then109.i.i

_ad3552r_reg_len.exit.i.i263.i.i:                 ; preds = %land.lhs.true99.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i250.i.i) #7
  %53 = call ptr @memset(ptr %buf.i.i250.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i249.i.i) #7
  %54 = getelementptr inbounds i8, ptr %buf.i.i.i249.i.i, i32 1
  %55 = call ptr @memset(ptr %54, i32 255, i32 7)
  %56 = ptrtoint ptr %buf.i.i.i249.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -127, ptr %buf.i.i.i249.i.i, align 1
  %57 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spi3, align 4
  %call.i.i.i261.i.i = call i32 @spi_write_then_read(ptr noundef %58, ptr noundef nonnull %buf.i.i.i249.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i250.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i249.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i261.i.i)
  %tobool.not.i.i262.i.i = icmp eq i32 %call.i.i.i261.i.i, 0
  br i1 %tobool.not.i.i262.i.i, label %if.end.i272.i.i, label %ad3552r_read_reg.exit.i269.i.i

ad3552r_read_reg.exit.i269.i.i:                   ; preds = %_ad3552r_reg_len.exit.i.i263.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i250.i.i) #7
  br label %for.end113.i.i

if.end.i272.i.i:                                  ; preds = %_ad3552r_reg_len.exit.i.i263.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %buf.i.i250.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %buf.i.i250.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i250.i.i) #7
  %conv.i271.i.i = zext i8 %60 to i32
  br label %for.end113.i.i

if.then109.i.i:                                   ; preds = %land.lhs.true99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #7
  br label %_ad3552r_reg_len.exit.i.i233.i.i

for.end113.i.i:                                   ; preds = %if.end.i272.i.i, %ad3552r_read_reg.exit.i269.i.i, %ad3552r_read_reg_wrapper.exit244.i.i.for.end113.i.i_crit_edge
  %val.1.in.i.i = phi i32 [ %conv.i271.i.i, %if.end.i272.i.i ], [ %call.i.i.i261.i.i, %ad3552r_read_reg.exit.i269.i.i ], [ %retval.0.i243.i.i, %ad3552r_read_reg_wrapper.exit244.i.i.for.end113.i.i_crit_edge ]
  %and116.i.i = and i32 %val.1.in.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i.i)
  %tobool117.not.i.i = icmp eq i32 %and116.i.i, 0
  br i1 %tobool117.not.i.i, label %if.end137.i.i, label %for.end113.i.i.do.end.sink.split.i_crit_edge

for.end113.i.i.do.end.sink.split.i_crit_edge:     ; preds = %for.end113.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split.i

if.end137.i.i:                                    ; preds = %for.end113.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i278.i.i) #7
  %61 = call ptr @memset(ptr %buf.i.i278.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i277.i.i) #7
  %62 = getelementptr inbounds i8, ptr %buf.i.i.i277.i.i, i32 1
  %63 = call ptr @memset(ptr %62, i32 255, i32 7)
  %64 = ptrtoint ptr %buf.i.i.i277.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -128, ptr %buf.i.i.i277.i.i, align 1
  %65 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spi3, align 4
  %call.i.i.i284.i.i = call i32 @spi_write_then_read(ptr noundef %66, ptr noundef nonnull %buf.i.i.i277.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i278.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i277.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i284.i.i)
  %tobool.not.i.i285.i.i = icmp eq i32 %call.i.i.i284.i.i, 0
  br i1 %tobool.not.i.i285.i.i, label %if.end.i.i288.i.i, label %ad3552r_read_reg.exit.i293.i.i

if.end.i.i288.i.i:                                ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %buf.i.i278.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %buf.i.i278.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i278.i.i) #7
  %69 = and i8 %68, -33
  br label %if.end.i297.i.i

ad3552r_read_reg.exit.i293.i.i:                   ; preds = %if.end137.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i278.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i284.i.i)
  %cmp.i292.i.i = icmp slt i32 %call.i.i.i284.i.i, 0
  br i1 %cmp.i292.i.i, label %ad3552r_read_reg.exit.i293.i.i.do.end.i_crit_edge, label %ad3552r_read_reg.exit.i293.i.i.if.end.i297.i.i_crit_edge

ad3552r_read_reg.exit.i293.i.i.if.end.i297.i.i_crit_edge: ; preds = %ad3552r_read_reg.exit.i293.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i297.i.i

ad3552r_read_reg.exit.i293.i.i.do.end.i_crit_edge: ; preds = %ad3552r_read_reg.exit.i293.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i297.i.i:                                  ; preds = %ad3552r_read_reg.exit.i293.i.i.if.end.i297.i.i_crit_edge, %if.end.i.i288.i.i
  %reg.025.i294.i.i = phi i8 [ %69, %if.end.i.i288.i.i ], [ -33, %ad3552r_read_reg.exit.i293.i.i.if.end.i297.i.i_crit_edge ]
  %val.1.in.tr.i.i = trunc i32 %val.1.in.i.i to i8
  %70 = shl i8 %val.1.in.tr.i.i, 5
  %conv3.i.i.i.i = and i8 %70, 32
  %or13.i296.i.i = or i8 %reg.025.i294.i.i, %conv3.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i15.i275.i.i) #7
  %71 = getelementptr inbounds i8, ptr %buf.i.i15.i275.i.i, i32 1
  %72 = ptrtoint ptr %buf.i.i15.i275.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %buf.i.i15.i275.i.i, align 1
  %73 = getelementptr inbounds i8, ptr %buf.i.i15.i275.i.i, i32 2
  %74 = call ptr @memset(ptr %73, i32 255, i32 6)
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %or13.i296.i.i, ptr %71, align 1
  %76 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %spi3, align 4
  %call10.i.i.i299.i.i = call i32 @spi_write_then_read(ptr noundef %77, ptr noundef nonnull %buf.i.i15.i275.i.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i15.i275.i.i) #7
  br label %ad3552r_reset.exit.i

ad3552r_reset.exit.i:                             ; preds = %if.end.i297.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call7.i.i, %if.then.i.i ], [ %call10.i.i.i299.i.i, %if.end.i297.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ad3552r_reset.exit.i.do.end.i_crit_edge

ad3552r_reset.exit.i.do.end.i_crit_edge:          ; preds = %ad3552r_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.sink.split.i:                              ; preds = %for.end113.i.i.do.end.sink.split.i_crit_edge, %for.end.i.i.do.end.sink.split.i_crit_edge
  %78 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %spi3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.22) #10
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.sink.split.i, %ad3552r_reset.exit.i.do.end.i_crit_edge, %ad3552r_read_reg.exit.i293.i.i.do.end.i_crit_edge, %ad3552r_update_reg_field.exit.i.i.do.end.i_crit_edge, %ad3552r_read_reg.exit.i.i.i.do.end.i_crit_edge
  %retval.0.i110.i = phi i32 [ %retval.0.i.i, %ad3552r_reset.exit.i.do.end.i_crit_edge ], [ %call.i.i.i.i.i, %ad3552r_read_reg.exit.i.i.i.do.end.i_crit_edge ], [ %call.i.i.i284.i.i, %ad3552r_read_reg.exit.i293.i.i.do.end.i_crit_edge ], [ %call10.i.i.i.i.i, %ad3552r_update_reg_field.exit.i.i.do.end.i_crit_edge ], [ -110, %do.end.sink.split.i ]
  %80 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %spi3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end.i:                                         ; preds = %ad3552r_reset.exit.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i60.i) #7
  %82 = getelementptr inbounds i8, ptr %buf.i.i.i60.i, i32 1
  %83 = ptrtoint ptr %buf.i.i.i60.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 10, ptr %buf.i.i.i60.i, align 1
  %84 = getelementptr inbounds i8, ptr %buf.i.i.i60.i, i32 2
  %85 = call ptr @memset(ptr %84, i32 255, i32 6)
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 52, ptr %82, align 1
  %87 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %spi3, align 4
  %call10.i.i.i.i = call i32 @spi_write_then_read(ptr noundef %88, ptr noundef nonnull %buf.i.i.i60.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i60.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i.i)
  %cmp.i61.i = icmp slt i32 %call10.i.i.i.i, 0
  br i1 %cmp.i61.i, label %if.end.i.do.end6.i_crit_edge, label %if.end.i62.i

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

if.end.i62.i:                                     ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i38.i.i) #7
  %89 = call ptr @memset(ptr %buf.i38.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i37.i.i) #7
  %90 = getelementptr inbounds i8, ptr %buf.i.i37.i.i, i32 1
  %91 = call ptr @memset(ptr %90, i32 255, i32 7)
  %92 = ptrtoint ptr %buf.i.i37.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -118, ptr %buf.i.i37.i.i, align 1
  %93 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %spi3, align 4
  %call.i.i.i.i = call i32 @spi_write_then_read(ptr noundef %94, ptr noundef nonnull %buf.i.i37.i.i, i32 noundef 1, ptr noundef nonnull %buf.i38.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i37.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end4.i.i, label %ad3552r_read_reg.exit.i.i

ad3552r_read_reg.exit.i.i:                        ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i38.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i = select i1 %cmp2.i.i, i32 %call.i.i.i.i, i32 -19
  br label %do.end6.i

if.end4.i.i:                                      ; preds = %if.end.i62.i
  %95 = ptrtoint ptr %buf.i38.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %buf.i38.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i38.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %96)
  %cmp5.not.i.i = icmp eq i8 %96, 52
  br i1 %cmp5.not.i.i, label %if.end8.i.i, label %if.end4.i.i.do.end6.i_crit_edge

if.end4.i.i.do.end6.i_crit_edge:                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i39.i.i) #7
  %97 = getelementptr inbounds i8, ptr %buf.i.i39.i.i, i32 1
  %98 = ptrtoint ptr %buf.i.i39.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 10, ptr %buf.i.i39.i.i, align 1
  %99 = getelementptr inbounds i8, ptr %buf.i.i39.i.i, i32 2
  %100 = call ptr @memset(ptr %99, i32 255, i32 6)
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -78, ptr %97, align 1
  %102 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %spi3, align 4
  %call10.i.i42.i.i = call i32 @spi_write_then_read(ptr noundef %103, ptr noundef nonnull %buf.i.i39.i.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i39.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i42.i.i)
  %cmp10.i.i = icmp slt i32 %call10.i.i42.i.i, 0
  br i1 %cmp10.i.i, label %if.end8.i.i.do.end6.i_crit_edge, label %if.end13.i.i

if.end8.i.i.do.end6.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

if.end13.i.i:                                     ; preds = %if.end8.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i44.i.i) #7
  %104 = call ptr @memset(ptr %buf.i44.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i43.i.i) #7
  %105 = getelementptr inbounds i8, ptr %buf.i.i43.i.i, i32 1
  %106 = call ptr @memset(ptr %105, i32 255, i32 7)
  %107 = ptrtoint ptr %buf.i.i43.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -118, ptr %buf.i.i43.i.i, align 1
  %108 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %spi3, align 4
  %call.i.i46.i.i = call i32 @spi_write_then_read(ptr noundef %109, ptr noundef nonnull %buf.i.i43.i.i, i32 noundef 1, ptr noundef nonnull %buf.i44.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i43.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46.i.i)
  %tobool.not.i47.i.i = icmp eq i32 %call.i.i46.i.i, 0
  br i1 %tobool.not.i47.i.i, label %ad3552r_read_reg.exit50.thread.i.i, label %ad3552r_read_reg.exit50.i.i

ad3552r_read_reg.exit50.thread.i.i:               ; preds = %if.end13.i.i
  %110 = ptrtoint ptr %buf.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %buf.i44.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i44.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -78, i8 %111)
  %phi.cmp.i.i = icmp eq i8 %111, -78
  br i1 %phi.cmp.i.i, label %if.end9.i, label %ad3552r_read_reg.exit50.thread.i.i.ad3552r_check_scratch_pad.exit.thread115.i_crit_edge

ad3552r_read_reg.exit50.thread.i.i.ad3552r_check_scratch_pad.exit.thread115.i_crit_edge: ; preds = %ad3552r_read_reg.exit50.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_check_scratch_pad.exit.thread115.i

ad3552r_read_reg.exit50.i.i:                      ; preds = %if.end13.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i44.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46.i.i)
  %cmp15.i.i = icmp slt i32 %call.i.i46.i.i, 0
  br i1 %cmp15.i.i, label %ad3552r_read_reg.exit50.i.i.do.end6.i_crit_edge, label %ad3552r_read_reg.exit50.i.i.ad3552r_check_scratch_pad.exit.thread115.i_crit_edge

ad3552r_read_reg.exit50.i.i.ad3552r_check_scratch_pad.exit.thread115.i_crit_edge: ; preds = %ad3552r_read_reg.exit50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_check_scratch_pad.exit.thread115.i

ad3552r_read_reg.exit50.i.i.do.end6.i_crit_edge:  ; preds = %ad3552r_read_reg.exit50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

ad3552r_check_scratch_pad.exit.thread115.i:       ; preds = %ad3552r_read_reg.exit50.i.i.ad3552r_check_scratch_pad.exit.thread115.i_crit_edge, %ad3552r_read_reg.exit50.thread.i.i.ad3552r_check_scratch_pad.exit.thread115.i_crit_edge
  br label %do.end6.i

do.end6.i:                                        ; preds = %ad3552r_check_scratch_pad.exit.thread115.i, %ad3552r_read_reg.exit50.i.i.do.end6.i_crit_edge, %if.end8.i.i.do.end6.i_crit_edge, %if.end4.i.i.do.end6.i_crit_edge, %ad3552r_read_reg.exit.i.i, %if.end.i.do.end6.i_crit_edge
  %retval.0.i63113.i = phi i32 [ -19, %ad3552r_check_scratch_pad.exit.thread115.i ], [ %spec.select.i.i, %ad3552r_read_reg.exit.i.i ], [ %call.i.i46.i.i, %ad3552r_read_reg.exit50.i.i.do.end6.i_crit_edge ], [ %call10.i.i42.i.i, %if.end8.i.i.do.end6.i_crit_edge ], [ -19, %if.end4.i.i.do.end6.i_crit_edge ], [ %call10.i.i.i.i, %if.end.i.do.end6.i_crit_edge ]
  %112 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %spi3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end9.i:                                        ; preds = %ad3552r_read_reg.exit50.thread.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #7
  %114 = call ptr @memset(ptr %buf.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i) #7
  %115 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 1
  %116 = call ptr @memset(ptr %115, i32 255, i32 7)
  %117 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -124, ptr %buf.i.i.i, align 1
  %118 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %spi3, align 4
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %119, ptr noundef nonnull %buf.i.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i64.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i64.i, label %if.end18.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  %120 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %spi3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end18.i:                                       ; preds = %if.end9.i
  %122 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %buf.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i70.i) #7
  %124 = call ptr @memset(ptr %buf.i70.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i69.i) #7
  %125 = getelementptr inbounds i8, ptr %buf.i.i69.i, i32 1
  %126 = call ptr @memset(ptr %125, i32 255, i32 7)
  %127 = ptrtoint ptr %buf.i.i69.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -123, ptr %buf.i.i69.i, align 1
  %128 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %spi3, align 4
  %call.i.i72.i = call i32 @spi_write_then_read(ptr noundef %129, ptr noundef nonnull %buf.i.i69.i, i32 noundef 1, ptr noundef nonnull %buf.i70.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i69.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72.i)
  %tobool.not.i73.i = icmp eq i32 %call.i.i72.i, 0
  br i1 %tobool.not.i73.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i70.i) #7
  %130 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %spi3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end27.i:                                       ; preds = %if.end18.i
  %conv5.i.i = zext i8 %123 to i32
  %132 = ptrtoint ptr %buf.i70.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %buf.i70.i, align 2
  %conv5.i76.i = zext i8 %133 to i32
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i70.i) #7
  %shl.i = shl nuw nsw i32 %conv5.i76.i, 8
  %or.i = or i32 %shl.i, %conv5.i.i
  %134 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %or.i)
  %cmp.not.i = icmp eq i32 %135, %or.i
  %136 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %spi3, align 4
  br i1 %cmp.not.i, label %if.end38.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end38.i:                                       ; preds = %if.end27.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vals.i.i) #7
  %138 = ptrtoint ptr %vals.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -1, ptr %vals.i.i, align 4, !annotation !172
  %139 = getelementptr inbounds [2 x i32], ptr %vals.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %139, align 4, !annotation !172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch.i.i) #7
  %141 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %ch.i.i, align 4, !annotation !172
  %call.i84.i = call ptr @devm_gpiod_get_optional(ptr noundef %137, ptr noundef nonnull @.str.26, i32 noundef 7) #7
  %gpio_ldac.i.i = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 2
  %142 = ptrtoint ptr %gpio_ldac.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call.i84.i, ptr %gpio_ldac.i.i, align 4
  %cmp.i.i85.i = icmp ugt ptr %call.i84.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i85.i, label %if.end38.i.ad3552r_init.exit_crit_edge, label %if.end.i88.i

if.end38.i.ad3552r_init.exit_crit_edge:           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_init.exit

if.end.i88.i:                                     ; preds = %if.end38.i
  %call7.i87.i = call ptr @devm_regulator_get_optional(ptr noundef %137, ptr noundef nonnull @.str.28) #7
  %cmp.i240.i.i = icmp ugt ptr %call7.i87.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240.i.i, label %if.then9.i89.i, label %if.else18.i.i

if.then9.i89.i:                                   ; preds = %if.end.i88.i
  %cmp.not.i.i = icmp eq ptr %call7.i87.i, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not.i.i, label %if.end14.i91.i, label %if.then9.i89.i.ad3552r_init.exit_crit_edge

if.then9.i89.i.ad3552r_init.exit_crit_edge:       ; preds = %if.then9.i89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_init.exit

if.end14.i91.i:                                   ; preds = %if.then9.i89.i
  %call.i.i90.i = call zeroext i1 @device_property_present(ptr noundef %137, ptr noundef nonnull @.str.30) #7
  br i1 %call.i.i90.i, label %if.then16.i.i, label %if.else.i92.i

if.then16.i.i:                                    ; preds = %if.end14.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %val.i.i, align 4
  br label %if.end35.i.i

if.else.i92.i:                                    ; preds = %if.end14.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  %144 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %val.i.i, align 4
  br label %if.end35.i.i

if.else18.i.i:                                    ; preds = %if.end.i88.i
  %call19.i.i = call i32 @regulator_enable(ptr noundef %call7.i87.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool.not.i93.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool.not.i93.i, label %if.end21.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.31) #10
  br label %ad3552r_init.exit.thread52

if.end21.i.i:                                     ; preds = %if.else18.i.i
  %call.i241.i.i = call i32 @devm_add_action(ptr noundef %137, ptr noundef nonnull @ad3552r_reg_disable, ptr noundef %call7.i87.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.i.i)
  %tobool.not.i.i94.i = icmp eq i32 %call.i241.i.i, 0
  br i1 %tobool.not.i.i94.i, label %if.end26.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i95.i = call i32 @regulator_disable(ptr noundef %call7.i87.i) #7
  %call25.i.i = call i32 @regulator_disable(ptr noundef %call7.i87.i) #7
  br label %ad3552r_init.exit.thread52

if.end26.i.i:                                     ; preds = %if.end21.i.i
  %call27.i.i = call i32 @regulator_get_voltage(ptr noundef %call7.i87.i) #7
  %145 = add i32 %call27.i.i, -2600001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -200001, i32 %145)
  %146 = icmp ult i32 %145, -200001
  br i1 %146, label %do.end33.i.i, label %if.end34.i.i

do.end33.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %137, ptr noundef nonnull @.str.34) #10
  br label %ad3552r_init.exit.thread52

if.end34.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 2, ptr %val.i.i, align 4
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.end34.i.i, %if.else.i92.i, %if.then16.i.i
  %148 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %val.i.i, align 4
  %conv36.i.i = trunc i32 %149 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i.i82.i) #7
  %150 = call ptr @memset(ptr %buf.i.i.i82.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i.i81.i) #7
  %151 = getelementptr inbounds i8, ptr %buf.i.i.i.i81.i, i32 1
  %152 = call ptr @memset(ptr %151, i32 255, i32 7)
  %153 = ptrtoint ptr %buf.i.i.i.i81.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -107, ptr %buf.i.i.i.i81.i, align 1
  %154 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %spi3, align 4
  %call.i.i.i.i96.i = call i32 @spi_write_then_read(ptr noundef %155, ptr noundef nonnull %buf.i.i.i.i81.i, i32 noundef 1, ptr noundef nonnull %buf.i.i.i82.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i.i81.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i96.i)
  %tobool.not.i.i.i97.i = icmp eq i32 %call.i.i.i.i96.i, 0
  br i1 %tobool.not.i.i.i97.i, label %if.end.i.i.i98.i, label %ad3552r_read_reg.exit.i.i99.i

if.end.i.i.i98.i:                                 ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %buf.i.i.i82.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %buf.i.i.i82.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i82.i) #7
  %phi.bo.i.i = and i8 %157, -4
  br label %ad3552r_update_reg_field.exit.i102.i

ad3552r_read_reg.exit.i.i99.i:                    ; preds = %if.end35.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i82.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i96.i)
  %cmp.i242.i.i = icmp slt i32 %call.i.i.i.i96.i, 0
  br i1 %cmp.i242.i.i, label %ad3552r_read_reg.exit.i.i99.i.ad3552r_init.exit.thread52_crit_edge, label %ad3552r_read_reg.exit.i.i99.i.ad3552r_update_reg_field.exit.i102.i_crit_edge

ad3552r_read_reg.exit.i.i99.i.ad3552r_update_reg_field.exit.i102.i_crit_edge: ; preds = %ad3552r_read_reg.exit.i.i99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_update_reg_field.exit.i102.i

ad3552r_read_reg.exit.i.i99.i.ad3552r_init.exit.thread52_crit_edge: ; preds = %ad3552r_read_reg.exit.i.i99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_init.exit.thread52

ad3552r_update_reg_field.exit.i102.i:             ; preds = %ad3552r_read_reg.exit.i.i99.i.ad3552r_update_reg_field.exit.i102.i_crit_edge, %if.end.i.i.i98.i
  %reg.025.i.i.i = phi i8 [ %phi.bo.i.i, %if.end.i.i.i98.i ], [ -4, %ad3552r_read_reg.exit.i.i99.i.ad3552r_update_reg_field.exit.i102.i_crit_edge ]
  %conv3.i.i.i100.i = and i8 %conv36.i.i, 3
  %or13.i.i.i = or i8 %reg.025.i.i.i, %conv3.i.i.i100.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i15.i.i80.i) #7
  %158 = getelementptr inbounds i8, ptr %buf.i.i15.i.i80.i, i32 1
  %159 = ptrtoint ptr %buf.i.i15.i.i80.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 21, ptr %buf.i.i15.i.i80.i, align 1
  %160 = getelementptr inbounds i8, ptr %buf.i.i15.i.i80.i, i32 2
  %161 = call ptr @memset(ptr %160, i32 255, i32 6)
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %or13.i.i.i, ptr %158, align 1
  %163 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %spi3, align 4
  %call10.i.i.i.i101.i = call i32 @spi_write_then_read(ptr noundef %164, ptr noundef nonnull %buf.i.i15.i.i80.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i15.i.i80.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i.i101.i)
  %tobool38.not.i.i = icmp eq i32 %call10.i.i.i.i101.i, 0
  br i1 %tobool38.not.i.i, label %if.end40.i.i, label %ad3552r_update_reg_field.exit.i102.i.ad3552r_init.exit.thread52_crit_edge

ad3552r_update_reg_field.exit.i102.i.ad3552r_init.exit.thread52_crit_edge: ; preds = %ad3552r_update_reg_field.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_init.exit.thread52

if.end40.i.i:                                     ; preds = %ad3552r_update_reg_field.exit.i102.i
  %call.i243.i.i = call i32 @device_property_read_u32_array(ptr noundef %137, ptr noundef nonnull @.str.37, ptr noundef nonnull %val.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.i.i)
  %tobool42.not.i.i = icmp eq i32 %call.i243.i.i, 0
  br i1 %tobool42.not.i.i, label %if.then43.i.i, label %if.end40.i.i.if.end57.i.i_crit_edge

if.end40.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i.i

if.then43.i.i:                                    ; preds = %if.end40.i.i
  %165 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %166)
  %cmp44.i.i = icmp ugt i32 %166, 3
  br i1 %cmp44.i.i, label %do.end49.i.i, label %if.end50.i.i

do.end49.i.i:                                     ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.39) #10
  br label %ad3552r_init.exit.thread52

if.end50.i.i:                                     ; preds = %if.then43.i.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i247.i.i) #7
  %167 = call ptr @memset(ptr %buf.i.i247.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i246.i.i) #7
  %168 = getelementptr inbounds i8, ptr %buf.i.i.i246.i.i, i32 1
  %169 = call ptr @memset(ptr %168, i32 255, i32 7)
  %170 = ptrtoint ptr %buf.i.i.i246.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 -108, ptr %buf.i.i.i246.i.i, align 1
  %171 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %spi3, align 4
  %call.i.i.i249.i.i = call i32 @spi_write_then_read(ptr noundef %172, ptr noundef nonnull %buf.i.i.i246.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i247.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i246.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i249.i.i)
  %tobool.not.i.i250.i.i = icmp eq i32 %call.i.i.i249.i.i, 0
  br i1 %tobool.not.i.i250.i.i, label %if.end.i.i251.i.i, label %ad3552r_read_reg.exit.i254.i.i

if.end.i.i251.i.i:                                ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %173 = ptrtoint ptr %buf.i.i247.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %buf.i.i247.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i247.i.i) #7
  %phi.bo452.i.i = and i8 %174, -13
  br label %ad3552r_update_reg_field.exit264.i.i

ad3552r_read_reg.exit.i254.i.i:                   ; preds = %if.end50.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i247.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i249.i.i)
  %cmp.i253.i.i = icmp slt i32 %call.i.i.i249.i.i, 0
  br i1 %cmp.i253.i.i, label %ad3552r_read_reg.exit.i254.i.i.ad3552r_init.exit.thread52_crit_edge, label %ad3552r_read_reg.exit.i254.i.i.ad3552r_update_reg_field.exit264.i.i_crit_edge

ad3552r_read_reg.exit.i254.i.i.ad3552r_update_reg_field.exit264.i.i_crit_edge: ; preds = %ad3552r_read_reg.exit.i254.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_update_reg_field.exit264.i.i

ad3552r_read_reg.exit.i254.i.i.ad3552r_init.exit.thread52_crit_edge: ; preds = %ad3552r_read_reg.exit.i254.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_init.exit.thread52

ad3552r_update_reg_field.exit264.i.i:             ; preds = %ad3552r_read_reg.exit.i254.i.i.ad3552r_update_reg_field.exit264.i.i_crit_edge, %if.end.i.i251.i.i
  %reg.025.i255.i.i = phi i8 [ %phi.bo452.i.i, %if.end.i.i251.i.i ], [ -13, %ad3552r_read_reg.exit.i254.i.i.ad3552r_update_reg_field.exit264.i.i_crit_edge ]
  %.tr.i.i = trunc i32 %166 to i8
  %175 = shl nuw nsw i8 %.tr.i.i, 2
  %conv3.i.i258.i.i = and i8 %175, 12
  %or13.i259.i.i = or i8 %reg.025.i255.i.i, %conv3.i.i258.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i15.i244.i.i) #7
  %176 = getelementptr inbounds i8, ptr %buf.i.i15.i244.i.i, i32 1
  %177 = ptrtoint ptr %buf.i.i15.i244.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 20, ptr %buf.i.i15.i244.i.i, align 1
  %178 = getelementptr inbounds i8, ptr %buf.i.i15.i244.i.i, i32 2
  %179 = call ptr @memset(ptr %178, i32 255, i32 6)
  %180 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %or13.i259.i.i, ptr %176, align 1
  %181 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %spi3, align 4
  %call10.i.i.i262.i.i = call i32 @spi_write_then_read(ptr noundef %182, ptr noundef nonnull %buf.i.i15.i244.i.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i15.i244.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i262.i.i)
  %tobool54.not.i.i = icmp eq i32 %call10.i.i.i262.i.i, 0
  br i1 %tobool54.not.i.i, label %ad3552r_update_reg_field.exit264.i.i.if.end57.i.i_crit_edge, label %ad3552r_update_reg_field.exit264.i.i.ad3552r_init.exit.thread52_crit_edge

ad3552r_update_reg_field.exit264.i.i.ad3552r_init.exit.thread52_crit_edge: ; preds = %ad3552r_update_reg_field.exit264.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_init.exit.thread52

ad3552r_update_reg_field.exit264.i.i.if.end57.i.i_crit_edge: ; preds = %ad3552r_update_reg_field.exit264.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %ad3552r_update_reg_field.exit264.i.i.if.end57.i.i_crit_edge, %if.end40.i.i.if.end57.i.i_crit_edge
  %call58.i.i = call i32 @device_get_child_node_count(ptr noundef %137) #7
  %num_ch.i.i = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 7
  %183 = ptrtoint ptr %num_ch.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %call58.i.i, ptr %num_ch.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool60.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool60.not.i.i, label %do.end64.i.i, label %if.end65.i.i

do.end64.i.i:                                     ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.42) #10
  br label %ad3552r_init.exit.thread52

if.end65.i.i:                                     ; preds = %if.end57.i.i
  %call66.i.i = call ptr @device_get_next_child_node(ptr noundef %137, ptr noundef null) #7
  %tobool67.not429.i.i = icmp eq ptr %call66.i.i, null
  br i1 %tobool67.not429.i.i, label %if.end65.i.i.for.end.i105.i_crit_edge, label %for.body.lr.ph.i.i

if.end65.i.i.for.end.i105.i_crit_edge:            ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i105.i

for.body.lr.ph.i.i:                               ; preds = %if.end65.i.i
  %184 = getelementptr inbounds i8, ptr %buf.i.i.i270.i.i, i32 1
  %185 = getelementptr inbounds i8, ptr %buf.i.i152.i.i.i, i32 1
  %186 = getelementptr inbounds i8, ptr %buf.i.i.i302.i.i, i32 1
  %187 = getelementptr inbounds i8, ptr %buf.i.i15.i300.i.i, i32 1
  %188 = getelementptr inbounds i8, ptr %buf.i.i15.i300.i.i, i32 2
  %enabled_ch.i.i = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 6
  %189 = getelementptr inbounds i8, ptr %buf.i.i.i333.i.i, i32 1
  %190 = getelementptr inbounds i8, ptr %buf.i.i15.i331.i.i, i32 1
  %191 = getelementptr inbounds i8, ptr %buf.i.i15.i331.i.i, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end128.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %child.0432.i.i = phi ptr [ %call66.i.i, %for.body.lr.ph.i.i ], [ %call139.i.i, %if.end128.i.i.for.body.i.i_crit_edge ]
  %cnt.0431.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end128.i.i.for.body.i.i_crit_edge ]
  %.compoundliteral.sroa.25.0430.i.i = phi i8 [ undef, %for.body.lr.ph.i.i ], [ %bf.set135.i.i, %if.end128.i.i.for.body.i.i_crit_edge ]
  %call.i265.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0432.i.i, ptr noundef nonnull @.str.44, ptr noundef nonnull %ch.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265.i.i)
  %tobool69.not.i.i = icmp eq i32 %call.i265.i.i, 0
  br i1 %tobool69.not.i.i, label %if.end74.i.i, label %do.end73.i.i

do.end73.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.46) #10
  br label %put_child.i.i

if.end74.i.i:                                     ; preds = %for.body.i.i
  %192 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %ch.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %193)
  %cmp75.i.i = icmp ugt i32 %193, 1
  br i1 %cmp75.i.i, label %do.end80.i.i, label %if.end81.i.i

do.end80.i.i:                                     ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.49, i32 noundef 2) #10
  br label %put_child.i.i

if.end81.i.i:                                     ; preds = %if.end74.i.i
  %call82.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %child.0432.i.i, ptr noundef nonnull @.str.51) #7
  br i1 %call82.i.i, label %if.then83.i.i, label %if.else108.i.i

if.then83.i.i:                                    ; preds = %if.end81.i.i
  %call84.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0432.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull %vals.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i.i)
  %tobool85.not.i.i = icmp eq i32 %call84.i.i, 0
  br i1 %tobool85.not.i.i, label %if.end90.i.i, label %do.end89.i.i

do.end89.i.i:                                     ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.53) #10
  br label %put_child.i.i

if.end90.i.i:                                     ; preds = %if.then83.i.i
  %194 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %chip_id, align 4
  %conv91.i.i = trunc i32 %195 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16392, i16 %conv91.i.i)
  %cmp.i266.i.i = icmp eq i16 %conv91.i.i, 16392
  %196 = ptrtoint ptr %vals.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %vals.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cond = icmp eq i32 %197, 0
  br i1 %cond, label %land.lhs.true.i.i.i, label %if.end90.i.i.for.body.i.i.i.3_crit_edge

if.end90.i.i.for.body.i.i.i.3_crit_edge:          ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.3

land.lhs.true.i.i.i:                              ; preds = %if.end90.i.i
  %198 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %199)
  %cmp12.i.i.i = icmp eq i32 %199, 2500000
  br i1 %cmp12.i.i.i, label %land.lhs.true.i.i.i.if.end100.i.i_crit_edge, label %for.body.i.i.i.1

land.lhs.true.i.i.i.if.end100.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.i.i

for.body.i.i.i.1:                                 ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cond181 = icmp eq i32 %197, 0
  br i1 %cond181, label %land.lhs.true.i.i.i.1, label %for.body.i.i.i.1.for.body.i.i.i.3_crit_edge

for.body.i.i.i.1.for.body.i.i.i.3_crit_edge:      ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.3

land.lhs.true.i.i.i.1:                            ; preds = %for.body.i.i.i.1
  %200 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %139, align 4
  %mul11.i.i.i.1 = select i1 %cmp.i266.i.i, i32 3000000, i32 5000000
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %mul11.i.i.i.1)
  %cmp12.i.i.i.1 = icmp eq i32 %201, %mul11.i.i.i.1
  br i1 %cmp12.i.i.i.1, label %land.lhs.true.i.i.i.1.if.end100.i.i_crit_edge, label %for.body.i.i.i.2

land.lhs.true.i.i.i.1.if.end100.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.i.i

for.body.i.i.i.2:                                 ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp6.i.i.i.2 = icmp eq i32 %197, 0
  br i1 %cmp6.i.i.i.2, label %land.lhs.true.i.i.i.2, label %for.body.i.i.i.2.for.body.i.i.i.3_crit_edge

for.body.i.i.i.2.for.body.i.i.i.3_crit_edge:      ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.3

land.lhs.true.i.i.i.2:                            ; preds = %for.body.i.i.i.2
  %202 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %139, align 4
  %mul11.i.i.i.2 = select i1 %cmp.i266.i.i, i32 5000000, i32 10000000
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %mul11.i.i.i.2)
  %cmp12.i.i.i.2 = icmp eq i32 %203, %mul11.i.i.i.2
  br i1 %cmp12.i.i.i.2, label %land.lhs.true.i.i.i.2.if.end100.i.i_crit_edge, label %land.lhs.true.i.i.i.2.for.body.i.i.i.3_crit_edge

land.lhs.true.i.i.i.2.for.body.i.i.i.3_crit_edge: ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.3

land.lhs.true.i.i.i.2.if.end100.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.i.i

for.body.i.i.i.3:                                 ; preds = %land.lhs.true.i.i.i.2.for.body.i.i.i.3_crit_edge, %for.body.i.i.i.2.for.body.i.i.i.3_crit_edge, %for.body.i.i.i.1.for.body.i.i.i.3_crit_edge, %if.end90.i.i.for.body.i.i.i.3_crit_edge
  %mul.i.i.i.3 = select i1 %cmp.i266.i.i, i32 0, i32 -5000000
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %mul.i.i.i.3)
  %cmp6.i.i.i.3 = icmp eq i32 %197, %mul.i.i.i.3
  br i1 %cmp6.i.i.i.3, label %land.lhs.true.i.i.i.3, label %for.body.i.i.i.3.for.body.i.i.i.4_crit_edge

for.body.i.i.i.3.for.body.i.i.i.4_crit_edge:      ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.4

land.lhs.true.i.i.i.3:                            ; preds = %for.body.i.i.i.3
  %204 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %139, align 4
  %mul11.i.i.i.3 = select i1 %cmp.i266.i.i, i32 10000000, i32 5000000
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %mul11.i.i.i.3)
  %cmp12.i.i.i.3 = icmp eq i32 %205, %mul11.i.i.i.3
  br i1 %cmp12.i.i.i.3, label %land.lhs.true.i.i.i.3.if.end100.i.i_crit_edge, label %land.lhs.true.i.i.i.3.for.body.i.i.i.4_crit_edge

land.lhs.true.i.i.i.3.for.body.i.i.i.4_crit_edge: ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.4

land.lhs.true.i.i.i.3.if.end100.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.i.i

for.body.i.i.i.4:                                 ; preds = %land.lhs.true.i.i.i.3.for.body.i.i.i.4_crit_edge, %for.body.i.i.i.3.for.body.i.i.i.4_crit_edge
  %mul.i.i.i.4 = select i1 %cmp.i266.i.i, i32 -2500000, i32 -10000000
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %mul.i.i.i.4)
  %cmp6.i.i.i.4 = icmp eq i32 %197, %mul.i.i.i.4
  br i1 %cmp6.i.i.i.4, label %land.lhs.true.i.i.i.4, label %for.body.i.i.i.4.for.inc.i.i.i.4_crit_edge

for.body.i.i.i.4.for.inc.i.i.i.4_crit_edge:       ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.4

land.lhs.true.i.i.i.4:                            ; preds = %for.body.i.i.i.4
  %206 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %139, align 4
  %mul11.i.i.i.4 = select i1 %cmp.i266.i.i, i32 7500000, i32 10000000
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %mul11.i.i.i.4)
  %cmp12.i.i.i.4 = icmp eq i32 %207, %mul11.i.i.i.4
  br i1 %cmp12.i.i.i.4, label %land.lhs.true.i.i.i.4.if.end100.i.i_crit_edge, label %land.lhs.true.i.i.i.4.for.inc.i.i.i.4_crit_edge

land.lhs.true.i.i.i.4.for.inc.i.i.i.4_crit_edge:  ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.4

land.lhs.true.i.i.i.4.if.end100.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.i.i

for.inc.i.i.i.4:                                  ; preds = %land.lhs.true.i.i.i.4.for.inc.i.i.i.4_crit_edge, %for.body.i.i.i.4.for.inc.i.i.i.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5000000, i32 %197)
  %cmp6.i.i.i.5 = icmp eq i32 %197, -5000000
  %or.cond = select i1 %cmp.i266.i.i, i1 %cmp6.i.i.i.5, i1 false
  br i1 %or.cond, label %land.lhs.true.i.i.i.5, label %for.inc.i.i.i.4.do.end99.i.i_crit_edge

for.inc.i.i.i.4.do.end99.i.i_crit_edge:           ; preds = %for.inc.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end99.i.i

land.lhs.true.i.i.i.5:                            ; preds = %for.inc.i.i.i.4
  %208 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %139, align 4
  %arrayidx10.i.i.i.5 = select i1 %cmp.i266.i.i, ptr getelementptr inbounds ([6 x [2 x i32]], ptr @ad3542r_ch_ranges, i32 0, i32 5, i32 1), ptr getelementptr ([5 x [2 x i32]], ptr @ad3552r_ch_ranges, i32 1, i32 0, i32 1)
  %210 = ptrtoint ptr %arrayidx10.i.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx10.i.i.i.5, align 4
  %mul11.i.i.i.5 = mul i32 %211, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %mul11.i.i.i.5)
  %cmp12.i.i.i.5 = icmp eq i32 %209, %mul11.i.i.i.5
  br i1 %cmp12.i.i.i.5, label %land.lhs.true.i.i.i.5.if.end100.i.i_crit_edge, label %land.lhs.true.i.i.i.5.do.end99.i.i_crit_edge

land.lhs.true.i.i.i.5.do.end99.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end99.i.i

land.lhs.true.i.i.i.5.if.end100.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100.i.i

do.end99.i.i:                                     ; preds = %land.lhs.true.i.i.i.5.do.end99.i.i_crit_edge, %for.inc.i.i.i.4.do.end99.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.56) #10
  br label %put_child.i.i

if.end100.i.i:                                    ; preds = %land.lhs.true.i.i.i.5.if.end100.i.i_crit_edge, %land.lhs.true.i.i.i.4.if.end100.i.i_crit_edge, %land.lhs.true.i.i.i.3.if.end100.i.i_crit_edge, %land.lhs.true.i.i.i.2.if.end100.i.i_crit_edge, %land.lhs.true.i.i.i.1.if.end100.i.i_crit_edge, %land.lhs.true.i.i.i.if.end100.i.i_crit_edge
  %i.024.i.i.i.lcssa = phi i32 [ 0, %land.lhs.true.i.i.i.if.end100.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.1.if.end100.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.2.if.end100.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.i.3.if.end100.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.4.if.end100.i.i_crit_edge ], [ 5, %land.lhs.true.i.i.i.5.if.end100.i.i_crit_edge ]
  %212 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %i.024.i.i.i.lcssa, ptr %val.i.i, align 4
  %213 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %ch.i.i, align 4
  %conv3.i.i.i = and i32 %214, 255
  %add.i.i103.i = add nuw nsw i32 %conv3.i.i.i, 1
  %arrayidx4.i268.i.i = getelementptr [10 x [3 x i16]], ptr @addr_mask_map_ch, i32 0, i32 2, i32 %add.i.i103.i
  %215 = ptrtoint ptr %arrayidx4.i268.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %arrayidx4.i268.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i303.i.i) #7
  %217 = call ptr @memset(ptr %buf.i.i303.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i302.i.i) #7
  %218 = call ptr @memset(ptr %186, i32 255, i32 7)
  %219 = ptrtoint ptr %buf.i.i.i302.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 -103, ptr %buf.i.i.i302.i.i, align 1
  %220 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %spi3, align 4
  %call.i.i.i308.i.i = call i32 @spi_write_then_read(ptr noundef %221, ptr noundef nonnull %buf.i.i.i302.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i303.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i302.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i308.i.i)
  %tobool.not.i.i309.i.i = icmp eq i32 %call.i.i.i308.i.i, 0
  br i1 %tobool.not.i.i309.i.i, label %if.end.i.i311.i.i, label %ad3552r_read_reg.exit.i315.i.i

if.end.i.i311.i.i:                                ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %222 = ptrtoint ptr %buf.i.i303.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %buf.i.i303.i.i, align 2
  %conv5.i.i312.i.i = zext i8 %223 to i16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i303.i.i) #7
  br label %ad3552r_update_reg_field.exit330.i.i

ad3552r_read_reg.exit.i315.i.i:                   ; preds = %if.end100.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i303.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i308.i.i)
  %cmp.i314.i.i = icmp slt i32 %call.i.i.i308.i.i, 0
  br i1 %cmp.i314.i.i, label %ad3552r_read_reg.exit.i315.i.i.put_child.i.i_crit_edge, label %ad3552r_read_reg.exit.i315.i.i.ad3552r_update_reg_field.exit330.i.i_crit_edge

ad3552r_read_reg.exit.i315.i.i.ad3552r_update_reg_field.exit330.i.i_crit_edge: ; preds = %ad3552r_read_reg.exit.i315.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_update_reg_field.exit330.i.i

ad3552r_read_reg.exit.i315.i.i.put_child.i.i_crit_edge: ; preds = %ad3552r_read_reg.exit.i315.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.i.i

ad3552r_update_reg_field.exit330.i.i:             ; preds = %ad3552r_read_reg.exit.i315.i.i.ad3552r_update_reg_field.exit330.i.i_crit_edge, %if.end.i.i311.i.i
  %reg.025.i316.i.i = phi i16 [ %conv5.i.i312.i.i, %if.end.i.i311.i.i ], [ -1, %ad3552r_read_reg.exit.i315.i.i.ad3552r_update_reg_field.exit330.i.i_crit_edge ]
  %neg.i.i.i = xor i16 %216, -1
  %and.i317.i.i = and i16 %reg.025.i316.i.i, %neg.i.i.i
  %conv1.i.i.i.i = zext i16 %216 to i32
  %224 = call i32 @llvm.cttz.i32(i32 %conv1.i.i.i.i, i1 false) #7, !range !173
  %shl.i.i319.i.i = shl i32 %i.024.i.i.i.lcssa, %224
  %225 = trunc i32 %shl.i.i319.i.i to i16
  %conv3.i.i320.i.i = and i16 %216, %225
  %or13.i321.i.i = or i16 %and.i317.i.i, %conv3.i.i320.i.i
  %conv10.i.i323.i.i = trunc i16 %or13.i321.i.i to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i15.i300.i.i) #7
  %226 = ptrtoint ptr %buf.i.i15.i300.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 25, ptr %buf.i.i15.i300.i.i, align 1
  %227 = call ptr @memset(ptr %188, i32 255, i32 6)
  %228 = ptrtoint ptr %187 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv10.i.i323.i.i, ptr %187, align 1
  %229 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %spi3, align 4
  %call10.i.i.i327.i.i = call i32 @spi_write_then_read(ptr noundef %230, ptr noundef nonnull %buf.i.i15.i300.i.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i15.i300.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i327.i.i)
  %tobool104.not.i.i = icmp eq i32 %call10.i.i.i327.i.i, 0
  br i1 %tobool104.not.i.i, label %if.end106.i.i, label %ad3552r_update_reg_field.exit330.i.i.put_child.i.i_crit_edge

ad3552r_update_reg_field.exit330.i.i.put_child.i.i_crit_edge: ; preds = %ad3552r_update_reg_field.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.i.i

if.end106.i.i:                                    ; preds = %ad3552r_update_reg_field.exit330.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %231 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %val.i.i, align 4
  %conv107.i.i = trunc i32 %232 to i8
  %233 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %ch.i.i, align 4
  %range.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %234, i32 8
  %235 = ptrtoint ptr %range.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %conv107.i.i, ptr %range.i.i, align 2
  br label %if.end122.i.i

if.else108.i.i:                                   ; preds = %if.end81.i.i
  %236 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16392, i32 %237)
  %cmp110.i.i = icmp eq i32 %237, 16392
  br i1 %cmp110.i.i, label %do.end115.i.i, label %if.else116.i.i

do.end115.i.i:                                    ; preds = %if.else108.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.59) #10
  br label %put_child.i.i

if.else116.i.i:                                   ; preds = %if.else108.i.i
  %238 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %ch.i.i, align 4
  %240 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %spi3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #7
  %242 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !172
  %call.i272.i.i = call ptr @fwnode_get_named_child_node(ptr noundef nonnull %child.0432.i.i, ptr noundef nonnull @.str.61) #7
  %cmp.i.i.i.i = icmp ugt ptr %call.i272.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i, label %if.end.i275.i.i

do.end.i.i.i:                                     ; preds = %if.else116.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %241, ptr noundef nonnull @.str.62) #10
  %243 = ptrtoint ptr %call.i272.i.i to i32
  br label %ad3552r_configure_custom_gain.exit.i.i

if.end.i275.i.i:                                  ; preds = %if.else116.i.i
  %range_override.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %239, i32 9
  %244 = ptrtoint ptr %range_override.i.i.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 1, ptr %range_override.i.i.i, align 1
  %call.i.i273.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %call.i272.i.i, ptr noundef nonnull @.str.64, ptr noundef nonnull %val.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i273.i.i)
  %tobool.not.i274.i.i = icmp eq i32 %call.i.i273.i.i, 0
  br i1 %tobool.not.i274.i.i, label %if.end12.i.i.i, label %if.end.i275.i.i.put_child.sink.split.i.i.i_crit_edge

if.end.i275.i.i.put_child.sink.split.i.i.i_crit_edge: ; preds = %if.end.i275.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.sink.split.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end.i275.i.i
  %245 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %val.i.i.i, align 4
  %conv19.i.i.i = trunc i32 %246 to i8
  %p.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %239, i32 7
  %247 = ptrtoint ptr %p.i.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv19.i.i.i, ptr %p.i.i.i, align 1
  %call.i141.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %call.i272.i.i, ptr noundef nonnull @.str.68, ptr noundef nonnull %val.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %call.i141.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %if.end28.i.i.i, label %if.end12.i.i.i.put_child.sink.split.i.i.i_crit_edge

if.end12.i.i.i.put_child.sink.split.i.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.sink.split.i.i.i

if.end28.i.i.i:                                   ; preds = %if.end12.i.i.i
  %.tr.i.i.i = trunc i32 %246 to i16
  %248 = shl i16 %.tr.i.i.i, 3
  %conv3.i.i276.i.i = and i16 %248, 24
  %249 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %val.i.i.i, align 4
  %.tr168.i.i.i = trunc i32 %250 to i16
  %251 = shl i16 %.tr168.i.i.i, 5
  %conv3.i144.i.i.i = and i16 %251, 96
  %conv35.i.i.i = trunc i32 %250 to i8
  %n.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %239, i32 6
  %252 = ptrtoint ptr %n.i.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %conv35.i.i.i, ptr %n.i.i.i, align 4
  %call.i145.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %call.i272.i.i, ptr noundef nonnull @.str.72, ptr noundef nonnull %val.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.i.i.i)
  %tobool39.not.i.i.i = icmp eq i32 %call.i145.i.i.i, 0
  br i1 %tobool39.not.i.i.i, label %if.end44.i.i.i, label %if.end28.i.i.i.put_child.sink.split.i.i.i_crit_edge

if.end28.i.i.i.put_child.sink.split.i.i.i_crit_edge: ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.sink.split.i.i.i

if.end44.i.i.i:                                   ; preds = %if.end28.i.i.i
  %253 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %val.i.i.i, align 4
  %conv45.i.i.i = trunc i32 %254 to i16
  %rfb.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %239, i32 5
  %255 = ptrtoint ptr %rfb.i.i.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %conv45.i.i.i, ptr %rfb.i.i.i, align 2
  %call.i146.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %call.i272.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull %val.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146.i.i.i)
  %tobool49.not.i.i.i = icmp eq i32 %call.i146.i.i.i, 0
  br i1 %tobool49.not.i.i.i, label %if.end54.i.i.i, label %if.end44.i.i.i.put_child.sink.split.i.i.i_crit_edge

if.end44.i.i.i.put_child.sink.split.i.i.i_crit_edge: ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.sink.split.i.i.i

if.end54.i.i.i:                                   ; preds = %if.end44.i.i.i
  %256 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %val.i.i.i, align 4
  %conv55.i.i.i = trunc i32 %257 to i16
  %gain_offset.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %239, i32 4
  %258 = ptrtoint ptr %gain_offset.i.i.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %conv55.i.i.i, ptr %gain_offset.i.i.i, align 4
  %259 = call i32 @llvm.abs.i32(i32 %257, i1 false) #7
  %260 = trunc i32 %259 to i16
  %261 = lshr i16 %260, 8
  %conv3.i148.i.i.i = and i16 %261, 1
  %262 = lshr i32 %257, 29
  %263 = trunc i32 %262 to i16
  %264 = and i16 %263, 4
  %ch.tr.i.i.i = trunc i32 %239 to i8
  %265 = shl i8 %ch.tr.i.i.i, 1
  %conv75.i.i.i = add i8 %265, 28
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i271.i.i)
  %266 = call ptr @memset(ptr %buf.i.i271.i.i, i32 0, i32 3)
  %267 = zext i8 %265 to i64
  call void @__sanitizer_cov_trace_switch(i64 %267, ptr @__sancov_gen_cov_switch_values)
  switch i8 %265, label %sw.epilog.i.i.i.i.i [
    i8 12, label %if.end54.i.i.i.if.then7.i.i.i.i_crit_edge
    i8 22, label %if.end54.i.i.i.if.then7.i.i.i.i_crit_edge182
  ]

if.end54.i.i.i.if.then7.i.i.i.i_crit_edge182:     ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i.i.i.i

if.end54.i.i.i.if.then7.i.i.i.i_crit_edge:        ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i.i.i.i

sw.epilog.i.i.i.i.i:                              ; preds = %if.end54.i.i.i
  %conv77.i.i.i = and i16 %260, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %conv75.i.i.i)
  %cmp.i.i.i.i.i = icmp ugt i8 %conv75.i.i.i, 55
  br i1 %cmp.i.i.i.i.i, label %sw.epilog.i.i.i.i.i.if.else.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

sw.epilog.i.i.i.i.i.if.else.i.i.i.i_crit_edge:    ; preds = %sw.epilog.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %sw.epilog.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %conv75.i.i.i)
  %cmp4.i.i.i.i.i = icmp ugt i8 %conv75.i.i.i, 40
  br i1 %cmp4.i.i.i.i.i, label %.thread.i.i.i.i, label %if.end.i.i.i.i.i.if.then7.i.i.i.i_crit_edge

if.end.i.i.i.i.i.if.then7.i.i.i.i_crit_edge:      ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %268 = and i16 %260, 240
  br label %if.else.i.i.i.i

if.then7.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.i.if.then7.i.i.i.i_crit_edge, %if.end54.i.i.i.if.then7.i.i.i.i_crit_edge, %if.end54.i.i.i.if.then7.i.i.i.i_crit_edge182
  %conv10.i.i277.i.i = trunc i32 %259 to i8
  %269 = ptrtoint ptr %buf.i.i271.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %conv10.i.i277.i.i, ptr %buf.i.i271.i.i, align 2
  br label %ad3552r_write_reg.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %.thread.i.i.i.i, %sw.epilog.i.i.i.i.i.if.else.i.i.i.i_crit_edge
  %270 = phi i16 [ %268, %.thread.i.i.i.i ], [ %conv77.i.i.i, %sw.epilog.i.i.i.i.i.if.else.i.i.i.i_crit_edge ]
  %retval.0.i2428.i.i.i.i = phi i32 [ 2, %.thread.i.i.i.i ], [ 3, %sw.epilog.i.i.i.i.i.if.else.i.i.i.i_crit_edge ]
  %271 = ptrtoint ptr %buf.i.i271.i.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %270, ptr %buf.i.i271.i.i, align 2
  br label %ad3552r_write_reg.exit.i.i.i

ad3552r_write_reg.exit.i.i.i:                     ; preds = %if.else.i.i.i.i, %if.then7.i.i.i.i
  %retval.0.i2427.i.i.i.i = phi i32 [ %retval.0.i2428.i.i.i.i, %if.else.i.i.i.i ], [ 1, %if.then7.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i270.i.i) #7
  %272 = and i8 %conv75.i.i.i, 126
  %273 = ptrtoint ptr %buf.i.i.i270.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %272, ptr %buf.i.i.i270.i.i, align 1
  %274 = zext i32 %retval.0.i2427.i.i.i.i to i64
  %275 = sub nuw nsw i64 7, %274
  %276 = getelementptr i8, ptr %184, i32 %retval.0.i2427.i.i.i.i
  %277 = trunc i64 %275 to i32
  %278 = call ptr @memset(ptr %276, i32 255, i32 %277)
  %279 = call ptr @memcpy(ptr %184, ptr %buf.i.i271.i.i, i32 %retval.0.i2427.i.i.i.i)
  %280 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %spi3, align 4
  %add.i.i.i.i.i = add nuw nsw i32 %retval.0.i2427.i.i.i.i, 1
  %call10.i.i.i278.i.i = call i32 @spi_write_then_read(ptr noundef %281, ptr noundef nonnull %buf.i.i.i270.i.i, i32 noundef %add.i.i.i.i.i, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i270.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i271.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i278.i.i)
  %tobool79.not.i.i.i = icmp eq i32 %call10.i.i.i278.i.i, 0
  br i1 %tobool79.not.i.i.i, label %if.end84.i.i.i, label %ad3552r_write_reg.exit.i.i.i.put_child.sink.split.i.i.i_crit_edge

ad3552r_write_reg.exit.i.i.i.put_child.sink.split.i.i.i_crit_edge: ; preds = %ad3552r_write_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.sink.split.i.i.i

if.end84.i.i.i:                                   ; preds = %ad3552r_write_reg.exit.i.i.i
  %or17137.i.i.i = or i16 %conv3.i.i276.i.i, %conv3.i144.i.i.i
  %or33138.i.i.i = or i16 %or17137.i.i.i, %264
  %or65139.i.i.i = or i16 %or33138.i.i.i, %conv3.i148.i.i.i
  %or73140.i.i.i = or i16 %or65139.i.i.i, 128
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i153.i.i.i)
  %282 = call ptr @memset(ptr %buf.i153.i.i.i, i32 0, i32 3)
  %283 = zext i8 %265 to i64
  call void @__sanitizer_cov_trace_switch(i64 %283, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %265, label %sw.epilog.i.i155.i.i.i [
    i8 12, label %if.end84.i.i.i.if.then7.i160.i.i.i_crit_edge
    i8 22, label %if.end84.i.i.i.if.then7.i160.i.i.i_crit_edge183
  ]

if.end84.i.i.i.if.then7.i160.i.i.i_crit_edge183:  ; preds = %if.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i160.i.i.i

if.end84.i.i.i.if.then7.i160.i.i.i_crit_edge:     ; preds = %if.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i160.i.i.i

sw.epilog.i.i155.i.i.i:                           ; preds = %if.end84.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %conv75.i.i.i)
  %cmp.i.i154.i.i.i = icmp ugt i8 %conv75.i.i.i, 55
  br i1 %cmp.i.i154.i.i.i, label %sw.epilog.i.i155.i.i.i.if.else.i162.i.i.i_crit_edge, label %if.end.i.i157.i.i.i

sw.epilog.i.i155.i.i.i.if.else.i162.i.i.i_crit_edge: ; preds = %sw.epilog.i.i155.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i162.i.i.i

if.end.i.i157.i.i.i:                              ; preds = %sw.epilog.i.i155.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %conv75.i.i.i)
  %cmp4.i.i156.i.i.i = icmp ugt i8 %conv75.i.i.i, 40
  br i1 %cmp4.i.i156.i.i.i, label %.thread.i158.i.i.i, label %if.end.i.i157.i.i.i.if.then7.i160.i.i.i_crit_edge

if.end.i.i157.i.i.i.if.then7.i160.i.i.i_crit_edge: ; preds = %if.end.i.i157.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i160.i.i.i

.thread.i158.i.i.i:                               ; preds = %if.end.i.i157.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %284 = and i16 %or73140.i.i.i, 240
  br label %if.else.i162.i.i.i

if.then7.i160.i.i.i:                              ; preds = %if.end.i.i157.i.i.i.if.then7.i160.i.i.i_crit_edge, %if.end84.i.i.i.if.then7.i160.i.i.i_crit_edge, %if.end84.i.i.i.if.then7.i160.i.i.i_crit_edge183
  %conv10.i159.i.i.i = trunc i16 %or73140.i.i.i to i8
  %285 = ptrtoint ptr %buf.i153.i.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %conv10.i159.i.i.i, ptr %buf.i153.i.i.i, align 2
  br label %ad3552r_write_reg.exit167.i.i.i

if.else.i162.i.i.i:                               ; preds = %.thread.i158.i.i.i, %sw.epilog.i.i155.i.i.i.if.else.i162.i.i.i_crit_edge
  %286 = phi i16 [ %284, %.thread.i158.i.i.i ], [ %or73140.i.i.i, %sw.epilog.i.i155.i.i.i.if.else.i162.i.i.i_crit_edge ]
  %retval.0.i2428.i161.i.i.i = phi i32 [ 2, %.thread.i158.i.i.i ], [ 3, %sw.epilog.i.i155.i.i.i.if.else.i162.i.i.i_crit_edge ]
  %287 = ptrtoint ptr %buf.i153.i.i.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 %286, ptr %buf.i153.i.i.i, align 2
  br label %ad3552r_write_reg.exit167.i.i.i

ad3552r_write_reg.exit167.i.i.i:                  ; preds = %if.else.i162.i.i.i, %if.then7.i160.i.i.i
  %retval.0.i2427.i163.i.i.i = phi i32 [ %retval.0.i2428.i161.i.i.i, %if.else.i162.i.i.i ], [ 1, %if.then7.i160.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i152.i.i.i) #7
  %288 = ptrtoint ptr %buf.i.i152.i.i.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %272, ptr %buf.i.i152.i.i.i, align 1
  %289 = zext i32 %retval.0.i2427.i163.i.i.i to i64
  %290 = sub nuw nsw i64 7, %289
  %291 = getelementptr i8, ptr %185, i32 %retval.0.i2427.i163.i.i.i
  %292 = trunc i64 %290 to i32
  %293 = call ptr @memset(ptr %291, i32 255, i32 %292)
  %294 = call ptr @memcpy(ptr %185, ptr %buf.i153.i.i.i, i32 %retval.0.i2427.i163.i.i.i)
  %295 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %spi3, align 4
  %add.i.i165.i.i.i = add nuw nsw i32 %retval.0.i2427.i163.i.i.i, 1
  %call10.i.i166.i.i.i = call i32 @spi_write_then_read(ptr noundef %296, ptr noundef nonnull %buf.i.i152.i.i.i, i32 noundef %add.i.i165.i.i.i, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i152.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i153.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i166.i.i.i)
  %tobool86.not.i.i.i = icmp eq i32 %call10.i.i166.i.i.i, 0
  br i1 %tobool86.not.i.i.i, label %ad3552r_write_reg.exit167.i.i.i.put_child.i.i.i_crit_edge, label %ad3552r_write_reg.exit167.i.i.i.put_child.sink.split.i.i.i_crit_edge

ad3552r_write_reg.exit167.i.i.i.put_child.sink.split.i.i.i_crit_edge: ; preds = %ad3552r_write_reg.exit167.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.sink.split.i.i.i

ad3552r_write_reg.exit167.i.i.i.put_child.i.i.i_crit_edge: ; preds = %ad3552r_write_reg.exit167.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.i.i.i

put_child.sink.split.i.i.i:                       ; preds = %ad3552r_write_reg.exit167.i.i.i.put_child.sink.split.i.i.i_crit_edge, %ad3552r_write_reg.exit.i.i.i.put_child.sink.split.i.i.i_crit_edge, %if.end44.i.i.i.put_child.sink.split.i.i.i_crit_edge, %if.end28.i.i.i.put_child.sink.split.i.i.i_crit_edge, %if.end12.i.i.i.put_child.sink.split.i.i.i_crit_edge, %if.end.i275.i.i.put_child.sink.split.i.i.i_crit_edge
  %.str.81.sink.i.i.i = phi ptr [ @.str.66, %if.end.i275.i.i.put_child.sink.split.i.i.i_crit_edge ], [ @.str.70, %if.end12.i.i.i.put_child.sink.split.i.i.i_crit_edge ], [ @.str.74, %if.end28.i.i.i.put_child.sink.split.i.i.i_crit_edge ], [ @.str.78, %if.end44.i.i.i.put_child.sink.split.i.i.i_crit_edge ], [ @.str.81, %ad3552r_write_reg.exit.i.i.i.put_child.sink.split.i.i.i_crit_edge ], [ @.str.81, %ad3552r_write_reg.exit167.i.i.i.put_child.sink.split.i.i.i_crit_edge ]
  %err.0.ph.i.i.i = phi i32 [ %call.i.i273.i.i, %if.end.i275.i.i.put_child.sink.split.i.i.i_crit_edge ], [ %call.i141.i.i.i, %if.end12.i.i.i.put_child.sink.split.i.i.i_crit_edge ], [ %call.i145.i.i.i, %if.end28.i.i.i.put_child.sink.split.i.i.i_crit_edge ], [ %call.i146.i.i.i, %if.end44.i.i.i.put_child.sink.split.i.i.i_crit_edge ], [ %call10.i.i.i278.i.i, %ad3552r_write_reg.exit.i.i.i.put_child.sink.split.i.i.i_crit_edge ], [ %call10.i.i166.i.i.i, %ad3552r_write_reg.exit167.i.i.i.put_child.sink.split.i.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %241, ptr noundef nonnull %.str.81.sink.i.i.i) #10
  br label %put_child.i.i.i

put_child.i.i.i:                                  ; preds = %put_child.sink.split.i.i.i, %ad3552r_write_reg.exit167.i.i.i.put_child.i.i.i_crit_edge
  %err.0.i.i.i = phi i32 [ 0, %ad3552r_write_reg.exit167.i.i.i.put_child.i.i.i_crit_edge ], [ %err.0.ph.i.i.i, %put_child.sink.split.i.i.i ]
  call void @fwnode_handle_put(ptr noundef %call.i272.i.i) #7
  br label %ad3552r_configure_custom_gain.exit.i.i

ad3552r_configure_custom_gain.exit.i.i:           ; preds = %put_child.i.i.i, %do.end.i.i.i
  %retval.0.i279.i.i = phi i32 [ %243, %do.end.i.i.i ], [ %err.0.i.i.i, %put_child.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i279.i.i)
  %tobool118.not.i.i = icmp eq i32 %retval.0.i279.i.i, 0
  br i1 %tobool118.not.i.i, label %ad3552r_configure_custom_gain.exit.i.i.if.end122.i.i_crit_edge, label %ad3552r_configure_custom_gain.exit.i.i.put_child.i.i_crit_edge

ad3552r_configure_custom_gain.exit.i.i.put_child.i.i_crit_edge: ; preds = %ad3552r_configure_custom_gain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.i.i

ad3552r_configure_custom_gain.exit.i.i.if.end122.i.i_crit_edge: ; preds = %ad3552r_configure_custom_gain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i.i

if.end122.i.i:                                    ; preds = %ad3552r_configure_custom_gain.exit.i.i.if.end122.i.i_crit_edge, %if.end106.i.i
  %297 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %ch.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem.i.i.i) #7
  %299 = ptrtoint ptr %rem.i.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 -1, ptr %rem.i.i.i, align 4, !annotation !172
  %range_override.i280.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %298, i32 9
  %300 = ptrtoint ptr %range_override.i280.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %range_override.i280.i.i, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %301)
  %tobool.not.i281.i.i = icmp eq i8 %301, 0
  br i1 %tobool.not.i281.i.i, label %if.else.i.i.i, label %if.then.i283.i.i

if.then.i283.i.i:                                 ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rfb.i.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %298, i32 5
  %302 = ptrtoint ptr %rfb.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %rfb.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %303 to i32
  %mul.i.i.i.i = mul nuw nsw i32 %conv.i.i.i.i, 2575
  %304 = zext i32 %mul.i.i.i.i to i64
  %gain_offset.i.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %298, i32 4
  %305 = ptrtoint ptr %gain_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %gain_offset.i.i.i.i, align 4
  %conv4.i.i.i.i = sext i16 %306 to i64
  %n.i.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %298, i32 6
  %307 = ptrtoint ptr %n.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %n.i.i.i.i, align 4
  %idxprom.i.i.i.i = zext i8 %308 to i32
  %arrayidx7.i.i.i.i = getelementptr [4 x i32], ptr @gains_scaling_table, i32 0, i32 %idxprom.i.i.i.i
  %309 = ptrtoint ptr %arrayidx7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx7.i.i.i.i, align 4
  %conv8.i.i.i.i = sext i32 %310 to i64
  %mul9.i.i.i.i = shl nsw i64 %conv8.i.i.i.i, 10
  %mul10.i.i.i.i = mul nsw i64 %conv4.i.i.i.i, 1000
  %add.i.i.i.i = add nsw i64 %mul9.i.i.i.i, %mul10.i.i.i.i
  %mul11.i.i.i.i = mul i64 %add.i.i.i.i, %304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i.i) #7
  %311 = ptrtoint ptr %remainder.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 -1, ptr %remainder.i.i.i.i.i, align 4, !annotation !172
  %call.i.i.i282.i.i = call i64 @div_s64_rem(i64 noundef %mul11.i.i.i.i, i32 noundef 1024000, ptr noundef nonnull %remainder.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i.i) #7
  %312 = trunc i64 %call.i.i.i282.i.i to i32
  %conv13.i.i.i.i = add i32 %312, 2500
  %p.i.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %298, i32 7
  %313 = ptrtoint ptr %p.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %p.i.i.i.i, align 1
  %idxprom16.i.i.i.i = zext i8 %314 to i32
  %arrayidx17.i.i.i.i = getelementptr [4 x i32], ptr @gains_scaling_table, i32 0, i32 %idxprom16.i.i.i.i
  %315 = ptrtoint ptr %arrayidx17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx17.i.i.i.i, align 4
  %conv18.i.i.i.i = sext i32 %316 to i64
  %mul19.i.i.i.i = shl nsw i64 %conv18.i.i.i.i, 10
  %sub.i.i.i.i = sub nsw i64 %mul19.i.i.i.i, %mul10.i.i.i.i
  %mul21.i.i.i.i = mul i64 %sub.i.i.i.i, %304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i37.i.i.i.i) #7
  %317 = ptrtoint ptr %remainder.i37.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 -1, ptr %remainder.i37.i.i.i.i, align 4, !annotation !172
  %call.i38.i.i.i.i = call i64 @div_s64_rem(i64 noundef %mul21.i.i.i.i, i32 noundef 1024000, ptr noundef nonnull %remainder.i37.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i37.i.i.i.i) #7
  %318 = trunc i64 %call.i38.i.i.i.i to i32
  %conv24.i.i.i.i = sub i32 2500, %318
  br label %ad3552r_calc_gain_and_offset.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end122.i.i
  %range.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %298, i32 8
  %319 = ptrtoint ptr %range.i.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %range.i.i.i, align 2
  %conv.i.i104.i = zext i8 %320 to i32
  %321 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16392, i32 %322)
  %cmp.i284.i.i = icmp eq i32 %322, 16392
  br i1 %cmp.i284.i.i, label %if.then4.i.i.i, label %if.else9.i.i.i

if.then4.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.i.i.i = getelementptr [6 x [2 x i32]], ptr @ad3542r_ch_ranges, i32 0, i32 %conv.i.i104.i
  %323 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %arrayidx5.i.i.i, align 4
  %arrayidx8.i285.i.i = getelementptr [6 x [2 x i32]], ptr @ad3542r_ch_ranges, i32 0, i32 %conv.i.i104.i, i32 1
  %325 = ptrtoint ptr %arrayidx8.i285.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %arrayidx8.i285.i.i, align 4
  br label %ad3552r_calc_gain_and_offset.exit.i.i

if.else9.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.i286.i.i = getelementptr [5 x [2 x i32]], ptr @ad3552r_ch_ranges, i32 0, i32 %conv.i.i104.i
  %327 = ptrtoint ptr %arrayidx10.i286.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx10.i286.i.i, align 4
  %arrayidx13.i.i.i = getelementptr [5 x [2 x i32]], ptr @ad3552r_ch_ranges, i32 0, i32 %conv.i.i104.i, i32 1
  %329 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx13.i.i.i, align 4
  br label %ad3552r_calc_gain_and_offset.exit.i.i

ad3552r_calc_gain_and_offset.exit.i.i:            ; preds = %if.else9.i.i.i, %if.then4.i.i.i, %if.then.i283.i.i
  %v_max.0.i.i.i = phi i32 [ %326, %if.then4.i.i.i ], [ %330, %if.else9.i.i.i ], [ %conv13.i.i.i.i, %if.then.i283.i.i ]
  %v_min.0.i.i.i = phi i32 [ %324, %if.then4.i.i.i ], [ %328, %if.else9.i.i.i ], [ %conv24.i.i.i.i, %if.then.i283.i.i ]
  %arrayidx.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %298
  %sub.i.i.i = sub i32 %v_max.0.i.i.i, %v_min.0.i.i.i
  %conv15.i.i.i = sext i32 %sub.i.i.i to i64
  %call.i287.i.i = call i64 @div_s64_rem(i64 noundef %conv15.i.i.i, i32 noundef 65536, ptr noundef nonnull %rem.i.i.i) #7
  %conv16.i.i.i = trunc i64 %call.i287.i.i to i32
  %331 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %conv16.i.i.i, ptr %arrayidx.i.i.i, align 4
  %332 = ptrtoint ptr %rem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %rem.i.i.i, align 4
  %conv19.i288.i.i = sext i32 %333 to i64
  %mul.i289.i.i = mul nsw i64 %conv19.i288.i.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %cmp21.i.i.i = icmp sgt i32 %333, 0
  %cond.in.v.i.i.i = select i1 %cmp21.i.i.i, i64 32768, i64 -32768
  %cond.in.i.i.i = add nsw i64 %mul.i289.i.i, %cond.in.v.i.i.i
  %cond.i.i.i = sdiv i64 %cond.in.i.i.i, 65536
  %conv35.i290.i.i = trunc i64 %cond.i.i.i to i32
  %scale_dec.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %298, i32 1
  %334 = ptrtoint ptr %scale_dec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %conv35.i290.i.i, ptr %scale_dec.i.i.i, align 4
  %mul38.i.i.i = shl i32 %v_min.0.i.i.i, 16
  %conv39.i.i.i = sext i32 %mul38.i.i.i to i64
  %call40.i.i.i = call i64 @div_s64_rem(i64 noundef %conv39.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull %rem.i.i.i) #7
  %conv41.i.i.i = trunc i64 %call40.i.i.i to i32
  %offset_int.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %298, i32 2
  %335 = ptrtoint ptr %offset_int.i.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %conv41.i.i.i, ptr %offset_int.i.i.i, align 4
  %336 = ptrtoint ptr %rem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %rem.i.i.i, align 4
  %conv44.i.i.i = sext i32 %337 to i64
  %mul45.i.i.i = mul nsw i64 %conv44.i.i.i, 1000000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #7
  %338 = ptrtoint ptr %remainder.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 -1, ptr %remainder.i.i.i.i, align 4, !annotation !172
  %call.i.i291.i.i = call i64 @div_s64_rem(i64 noundef %mul45.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull %remainder.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #7
  %conv47.i.i.i = trunc i64 %call.i.i291.i.i to i32
  %offset_dec.i.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %298, i32 3
  %339 = ptrtoint ptr %offset_dec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %conv47.i.i.i, ptr %offset_dec.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem.i.i.i) #7
  %340 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %ch.i.i, align 4
  %shl.i.i = shl nuw i32 1, %341
  %342 = ptrtoint ptr %enabled_ch.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %enabled_ch.i.i, align 4
  %or.i.i = or i32 %343, %shl.i.i
  store i32 %or.i.i, ptr %enabled_ch.i.i, align 4
  %conv3.i292.i.i = and i32 %341, 255
  %add.i293.i.i = add nuw nsw i32 %conv3.i292.i.i, 1
  %arrayidx4.i294.i.i = getelementptr [10 x [3 x i16]], ptr @addr_mask_map_ch, i32 0, i32 9, i32 %add.i293.i.i
  %344 = ptrtoint ptr %arrayidx4.i294.i.i to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %arrayidx4.i294.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i334.i.i) #7
  %346 = call ptr @memset(ptr %buf.i.i334.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i333.i.i) #7
  %347 = call ptr @memset(ptr %189, i32 255, i32 7)
  %348 = ptrtoint ptr %buf.i.i.i333.i.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 -81, ptr %buf.i.i.i333.i.i, align 1
  %349 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %spi3, align 4
  %call.i.i.i337.i.i = call i32 @spi_write_then_read(ptr noundef %350, ptr noundef nonnull %buf.i.i.i333.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i334.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i333.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i337.i.i)
  %tobool.not.i.i338.i.i = icmp eq i32 %call.i.i.i337.i.i, 0
  br i1 %tobool.not.i.i338.i.i, label %if.end.i.i340.i.i, label %ad3552r_read_reg.exit.i344.i.i

if.end.i.i340.i.i:                                ; preds = %ad3552r_calc_gain_and_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %351 = ptrtoint ptr %buf.i.i334.i.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %buf.i.i334.i.i, align 2
  %conv5.i.i341.i.i = zext i8 %352 to i16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i334.i.i) #7
  br label %ad3552r_update_reg_field.exit360.i.i

ad3552r_read_reg.exit.i344.i.i:                   ; preds = %ad3552r_calc_gain_and_offset.exit.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i334.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i337.i.i)
  %cmp.i343.i.i = icmp slt i32 %call.i.i.i337.i.i, 0
  br i1 %cmp.i343.i.i, label %ad3552r_read_reg.exit.i344.i.i.put_child.i.i_crit_edge, label %ad3552r_read_reg.exit.i344.i.i.ad3552r_update_reg_field.exit360.i.i_crit_edge

ad3552r_read_reg.exit.i344.i.i.ad3552r_update_reg_field.exit360.i.i_crit_edge: ; preds = %ad3552r_read_reg.exit.i344.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_update_reg_field.exit360.i.i

ad3552r_read_reg.exit.i344.i.i.put_child.i.i_crit_edge: ; preds = %ad3552r_read_reg.exit.i344.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.i.i

ad3552r_update_reg_field.exit360.i.i:             ; preds = %ad3552r_read_reg.exit.i344.i.i.ad3552r_update_reg_field.exit360.i.i_crit_edge, %if.end.i.i340.i.i
  %reg.025.i345.i.i = phi i16 [ %conv5.i.i341.i.i, %if.end.i.i340.i.i ], [ -1, %ad3552r_read_reg.exit.i344.i.i.ad3552r_update_reg_field.exit360.i.i_crit_edge ]
  %neg.i346.i.i = xor i16 %345, -1
  %and.i347.i.i = and i16 %reg.025.i345.i.i, %neg.i346.i.i
  %conv1.i.i348.i.i = zext i16 %345 to i32
  %353 = call i32 @llvm.cttz.i32(i32 %conv1.i.i348.i.i, i1 false) #7, !range !173
  %shl.i.i349.i.i = shl nuw i32 1, %353
  %354 = trunc i32 %shl.i.i349.i.i to i16
  %conv3.i.i350.i.i = and i16 %345, %354
  %or13.i351.i.i = or i16 %and.i347.i.i, %conv3.i.i350.i.i
  %conv10.i.i353.i.i = trunc i16 %or13.i351.i.i to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i15.i331.i.i) #7
  %355 = ptrtoint ptr %buf.i.i15.i331.i.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 47, ptr %buf.i.i15.i331.i.i, align 1
  %356 = call ptr @memset(ptr %191, i32 255, i32 6)
  %357 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %conv10.i.i353.i.i, ptr %190, align 1
  %358 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %spi3, align 4
  %call10.i.i.i357.i.i = call i32 @spi_write_then_read(ptr noundef %359, ptr noundef nonnull %buf.i.i15.i331.i.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i15.i331.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i357.i.i)
  %cmp125.i.i = icmp slt i32 %call10.i.i.i357.i.i, 0
  br i1 %cmp125.i.i, label %ad3552r_update_reg_field.exit360.i.i.put_child.i.i_crit_edge, label %if.end128.i.i

ad3552r_update_reg_field.exit360.i.i.put_child.i.i_crit_edge: ; preds = %ad3552r_update_reg_field.exit360.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_child.i.i

if.end128.i.i:                                    ; preds = %ad3552r_update_reg_field.exit360.i.i
  %arrayidx129.i.i = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 5, i32 %cnt.0431.i.i
  %360 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %ch.i.i, align 4
  %bf.clear131.i.i = and i8 %.compoundliteral.sroa.25.0430.i.i, 15
  %bf.set135.i.i = or i8 %bf.clear131.i.i, 96
  %362 = ptrtoint ptr %arrayidx129.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 0, ptr %arrayidx129.i.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 4
  %363 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %361, ptr %.compoundliteral.sroa.2.0.arrayidx129.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 8
  %364 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 0, ptr %.compoundliteral.sroa.3.0.arrayidx129.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 12
  %365 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 0, ptr %.compoundliteral.sroa.4.0.arrayidx129.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 16
  %366 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %361, ptr %.compoundliteral.sroa.5.0.arrayidx129.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.6.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 20
  %367 = ptrtoint ptr %.compoundliteral.sroa.6.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 117, ptr %.compoundliteral.sroa.6.0.arrayidx129.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.7.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 21
  %368 = ptrtoint ptr %.compoundliteral.sroa.7.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 16, ptr %.compoundliteral.sroa.7.0.arrayidx129.sroa_idx.i.i, align 1
  %.compoundliteral.sroa.8.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 22
  %369 = ptrtoint ptr %.compoundliteral.sroa.8.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 16, ptr %.compoundliteral.sroa.8.0.arrayidx129.sroa_idx.i.i, align 2
  %.compoundliteral.sroa.9.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 23
  %370 = ptrtoint ptr %.compoundliteral.sroa.9.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 0, ptr %.compoundliteral.sroa.9.0.arrayidx129.sroa_idx.i.i, align 1
  %.compoundliteral.sroa.10.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 24
  %371 = ptrtoint ptr %.compoundliteral.sroa.10.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 0, ptr %.compoundliteral.sroa.10.0.arrayidx129.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.11166.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 28
  %372 = ptrtoint ptr %.compoundliteral.sroa.11166.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 1, ptr %.compoundliteral.sroa.11166.0.arrayidx129.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.12.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 32
  %373 = ptrtoint ptr %.compoundliteral.sroa.12.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 524301, ptr %.compoundliteral.sroa.12.0.arrayidx129.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.13.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 36
  %.compoundliteral.sroa.25.0.arrayidx129.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx129.i.i, i32 84
  %374 = call ptr @memset(ptr %.compoundliteral.sroa.13.0.arrayidx129.sroa_idx.i.i, i32 0, i32 48)
  %375 = ptrtoint ptr %.compoundliteral.sroa.25.0.arrayidx129.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 %bf.set135.i.i, ptr %.compoundliteral.sroa.25.0.arrayidx129.sroa_idx.i.i, align 4
  %inc.i.i = add i32 %cnt.0431.i.i, 1
  %call139.i.i = call ptr @device_get_next_child_node(ptr noundef %137, ptr noundef nonnull %child.0432.i.i) #7
  %tobool67.not.i.i = icmp eq ptr %call139.i.i, null
  br i1 %tobool67.not.i.i, label %if.end128.i.i.for.end.i105.i_crit_edge, label %if.end128.i.i.for.body.i.i_crit_edge

if.end128.i.i.for.body.i.i_crit_edge:             ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end128.i.i.for.end.i105.i_crit_edge:           ; preds = %if.end128.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i105.i

for.end.i105.i:                                   ; preds = %if.end128.i.i.for.end.i105.i_crit_edge, %if.end65.i.i.for.end.i105.i_crit_edge
  %cnt.0.lcssa.i.i = phi i32 [ 0, %if.end65.i.i.for.end.i105.i_crit_edge ], [ %inc.i.i, %if.end128.i.i.for.end.i105.i_crit_edge ]
  %enabled_ch140.i.i = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 6
  %call141.i.i = call i32 @_find_next_zero_bit_be(ptr noundef %enabled_ch140.i.i, i32 noundef 2, i32 noundef 0) #7
  %376 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 %call141.i.i, ptr %ch.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call141.i.i)
  %cmp143435.i.i = icmp ult i32 %call141.i.i, 2
  br i1 %cmp143435.i.i, label %for.body145.lr.ph.i.i, label %for.end.i105.i.ad3552r_init.exit.thread55_crit_edge

for.end.i105.i.ad3552r_init.exit.thread55_crit_edge: ; preds = %for.end.i105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_init.exit.thread55

for.body145.lr.ph.i.i:                            ; preds = %for.end.i105.i
  %377 = getelementptr inbounds i8, ptr %buf.i.i.i363.i.i, i32 1
  %378 = getelementptr inbounds i8, ptr %buf.i.i15.i361.i.i, i32 1
  %379 = getelementptr inbounds i8, ptr %buf.i.i15.i361.i.i, i32 2
  br label %for.body145.i.i

for.body145.i.i:                                  ; preds = %for.inc151.i.i.for.body145.i.i_crit_edge, %for.body145.lr.ph.i.i
  %storemerge436.i.i = phi i32 [ %call141.i.i, %for.body145.lr.ph.i.i ], [ %call154.i.i, %for.inc151.i.i.for.body145.i.i_crit_edge ]
  %add.i297.i.i = add nuw nsw i32 %storemerge436.i.i, 1
  %arrayidx4.i298.i.i = getelementptr [10 x [3 x i16]], ptr @addr_mask_map_ch, i32 0, i32 1, i32 %add.i297.i.i
  %380 = ptrtoint ptr %arrayidx4.i298.i.i to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %arrayidx4.i298.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i364.i.i) #7
  %382 = call ptr @memset(ptr %buf.i.i364.i.i, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i363.i.i) #7
  %383 = call ptr @memset(ptr %377, i32 255, i32 7)
  %384 = ptrtoint ptr %buf.i.i.i363.i.i to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 -104, ptr %buf.i.i.i363.i.i, align 1
  %385 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %spi3, align 4
  %call.i.i.i369.i.i = call i32 @spi_write_then_read(ptr noundef %386, ptr noundef nonnull %buf.i.i.i363.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i364.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i363.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i369.i.i)
  %tobool.not.i.i370.i.i = icmp eq i32 %call.i.i.i369.i.i, 0
  br i1 %tobool.not.i.i370.i.i, label %if.end.i.i372.i.i, label %ad3552r_read_reg.exit.i376.i.i

if.end.i.i372.i.i:                                ; preds = %for.body145.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %387 = ptrtoint ptr %buf.i.i364.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %buf.i.i364.i.i, align 2
  %conv5.i.i373.i.i = zext i8 %388 to i16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i364.i.i) #7
  br label %ad3552r_update_reg_field.exit392.i.i

ad3552r_read_reg.exit.i376.i.i:                   ; preds = %for.body145.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i364.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i369.i.i)
  %cmp.i375.i.i = icmp slt i32 %call.i.i.i369.i.i, 0
  br i1 %cmp.i375.i.i, label %ad3552r_read_reg.exit.i376.i.i.ad3552r_init.exit.thread52_crit_edge, label %ad3552r_read_reg.exit.i376.i.i.ad3552r_update_reg_field.exit392.i.i_crit_edge

ad3552r_read_reg.exit.i376.i.i.ad3552r_update_reg_field.exit392.i.i_crit_edge: ; preds = %ad3552r_read_reg.exit.i376.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_update_reg_field.exit392.i.i

ad3552r_read_reg.exit.i376.i.i.ad3552r_init.exit.thread52_crit_edge: ; preds = %ad3552r_read_reg.exit.i376.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_init.exit.thread52

ad3552r_update_reg_field.exit392.i.i:             ; preds = %ad3552r_read_reg.exit.i376.i.i.ad3552r_update_reg_field.exit392.i.i_crit_edge, %if.end.i.i372.i.i
  %reg.025.i377.i.i = phi i16 [ %conv5.i.i373.i.i, %if.end.i.i372.i.i ], [ -1, %ad3552r_read_reg.exit.i376.i.i.ad3552r_update_reg_field.exit392.i.i_crit_edge ]
  %neg.i378.i.i = xor i16 %381, -1
  %and.i379.i.i = and i16 %reg.025.i377.i.i, %neg.i378.i.i
  %conv1.i.i380.i.i = zext i16 %381 to i32
  %389 = call i32 @llvm.cttz.i32(i32 %conv1.i.i380.i.i, i1 false) #7, !range !173
  %shl.i.i381.i.i = shl nuw i32 1, %389
  %390 = trunc i32 %shl.i.i381.i.i to i16
  %conv3.i.i382.i.i = and i16 %381, %390
  %or13.i383.i.i = or i16 %and.i379.i.i, %conv3.i.i382.i.i
  %conv10.i.i385.i.i = trunc i16 %or13.i383.i.i to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i15.i361.i.i) #7
  %391 = ptrtoint ptr %buf.i.i15.i361.i.i to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 24, ptr %buf.i.i15.i361.i.i, align 1
  %392 = call ptr @memset(ptr %379, i32 255, i32 6)
  %393 = ptrtoint ptr %378 to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %conv10.i.i385.i.i, ptr %378, align 1
  %394 = ptrtoint ptr %spi3 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %spi3, align 4
  %call10.i.i.i389.i.i = call i32 @spi_write_then_read(ptr noundef %395, ptr noundef nonnull %buf.i.i15.i361.i.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i15.i361.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i389.i.i)
  %tobool148.not.i.i = icmp eq i32 %call10.i.i.i389.i.i, 0
  br i1 %tobool148.not.i.i, label %for.inc151.i.i, label %ad3552r_update_reg_field.exit392.i.i.ad3552r_init.exit.thread52_crit_edge

ad3552r_update_reg_field.exit392.i.i.ad3552r_init.exit.thread52_crit_edge: ; preds = %ad3552r_update_reg_field.exit392.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_init.exit.thread52

for.inc151.i.i:                                   ; preds = %ad3552r_update_reg_field.exit392.i.i
  %396 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %ch.i.i, align 4
  %add153.i.i = add i32 %397, 1
  %call154.i.i = call i32 @_find_next_zero_bit_be(ptr noundef %enabled_ch140.i.i, i32 noundef 2, i32 noundef %add153.i.i) #7
  %398 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %call154.i.i, ptr %ch.i.i, align 4
  %cmp143.i.i = icmp ult i32 %call154.i.i, 2
  br i1 %cmp143.i.i, label %for.inc151.i.i.for.body145.i.i_crit_edge, label %for.inc151.i.i.ad3552r_init.exit.thread55_crit_edge

for.inc151.i.i.ad3552r_init.exit.thread55_crit_edge: ; preds = %for.inc151.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_init.exit.thread55

for.inc151.i.i.for.body145.i.i_crit_edge:         ; preds = %for.inc151.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body145.i.i

ad3552r_init.exit.thread55:                       ; preds = %for.inc151.i.i.ad3552r_init.exit.thread55_crit_edge, %for.end.i105.i.ad3552r_init.exit.thread55_crit_edge
  %399 = ptrtoint ptr %num_ch.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %cnt.0.lcssa.i.i, ptr %num_ch.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vals.i.i) #7
  br label %if.end7

put_child.i.i:                                    ; preds = %ad3552r_update_reg_field.exit360.i.i.put_child.i.i_crit_edge, %ad3552r_read_reg.exit.i344.i.i.put_child.i.i_crit_edge, %ad3552r_configure_custom_gain.exit.i.i.put_child.i.i_crit_edge, %do.end115.i.i, %ad3552r_update_reg_field.exit330.i.i.put_child.i.i_crit_edge, %ad3552r_read_reg.exit.i315.i.i.put_child.i.i_crit_edge, %do.end99.i.i, %do.end89.i.i, %do.end80.i.i, %do.end73.i.i
  %err.0.i.i = phi i32 [ %call.i265.i.i, %do.end73.i.i ], [ -22, %do.end80.i.i ], [ %call84.i.i, %do.end89.i.i ], [ -22, %do.end99.i.i ], [ -22, %do.end115.i.i ], [ %call.i.i.i308.i.i, %ad3552r_read_reg.exit.i315.i.i.put_child.i.i_crit_edge ], [ %call10.i.i.i327.i.i, %ad3552r_update_reg_field.exit330.i.i.put_child.i.i_crit_edge ], [ %retval.0.i279.i.i, %ad3552r_configure_custom_gain.exit.i.i.put_child.i.i_crit_edge ], [ %call.i.i.i337.i.i, %ad3552r_read_reg.exit.i344.i.i.put_child.i.i_crit_edge ], [ %call10.i.i.i357.i.i, %ad3552r_update_reg_field.exit360.i.i.put_child.i.i_crit_edge ]
  call void @fwnode_handle_put(ptr noundef nonnull %child.0432.i.i) #7
  br label %ad3552r_init.exit.thread52

ad3552r_init.exit.thread52:                       ; preds = %put_child.i.i, %ad3552r_update_reg_field.exit392.i.i.ad3552r_init.exit.thread52_crit_edge, %ad3552r_read_reg.exit.i376.i.i.ad3552r_init.exit.thread52_crit_edge, %do.end64.i.i, %ad3552r_update_reg_field.exit264.i.i.ad3552r_init.exit.thread52_crit_edge, %ad3552r_read_reg.exit.i254.i.i.ad3552r_init.exit.thread52_crit_edge, %do.end49.i.i, %ad3552r_update_reg_field.exit.i102.i.ad3552r_init.exit.thread52_crit_edge, %ad3552r_read_reg.exit.i.i99.i.ad3552r_init.exit.thread52_crit_edge, %do.end33.i.i, %if.then24.i.i, %do.end.i.i
  %retval.0.i106.i.ph = phi i32 [ %call.i.i.i249.i.i, %ad3552r_read_reg.exit.i254.i.i.ad3552r_init.exit.thread52_crit_edge ], [ %call.i.i.i.i96.i, %ad3552r_read_reg.exit.i.i99.i.ad3552r_init.exit.thread52_crit_edge ], [ %call10.i.i.i262.i.i, %ad3552r_update_reg_field.exit264.i.i.ad3552r_init.exit.thread52_crit_edge ], [ %call10.i.i.i.i101.i, %ad3552r_update_reg_field.exit.i102.i.ad3552r_init.exit.thread52_crit_edge ], [ -22, %do.end33.i.i ], [ %call.i241.i.i, %if.then24.i.i ], [ %call19.i.i, %do.end.i.i ], [ -22, %do.end49.i.i ], [ -19, %do.end64.i.i ], [ %err.0.i.i, %put_child.i.i ], [ %call10.i.i.i389.i.i, %ad3552r_update_reg_field.exit392.i.i.ad3552r_init.exit.thread52_crit_edge ], [ %call.i.i.i369.i.i, %ad3552r_read_reg.exit.i376.i.i.ad3552r_init.exit.thread52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vals.i.i) #7
  br label %cleanup

ad3552r_init.exit:                                ; preds = %if.then9.i89.i.ad3552r_init.exit_crit_edge, %if.end38.i.ad3552r_init.exit_crit_edge
  %call.i84.i.sink = phi ptr [ %call.i84.i, %if.end38.i.ad3552r_init.exit_crit_edge ], [ %call7.i87.i, %if.then9.i89.i.ad3552r_init.exit_crit_edge ]
  %.str.27.sink = phi ptr [ @.str.27, %if.end38.i.ad3552r_init.exit_crit_edge ], [ @.str.29, %if.then9.i89.i.ad3552r_init.exit_crit_edge ]
  %400 = ptrtoint ptr %call.i84.i.sink to i32
  %call6.i.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %137, i32 noundef %400, ptr noundef nonnull %.str.27.sink) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vals.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool5.not = icmp eq i32 %call6.i.i, 0
  br i1 %tobool5.not, label %ad3552r_init.exit.if.end7_crit_edge, label %ad3552r_init.exit.cleanup_crit_edge

ad3552r_init.exit.cleanup_crit_edge:              ; preds = %ad3552r_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ad3552r_init.exit.if.end7_crit_edge:              ; preds = %ad3552r_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %ad3552r_init.exit.if.end7_crit_edge, %ad3552r_init.exit.thread55
  %401 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16393, i32 %402)
  %cmp = icmp eq i32 %402, 16393
  %spec.select = select i1 %cmp, ptr @.str, ptr @.str.2
  %403 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %404 = ptrtoint ptr %403 to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr %spec.select, ptr %403, align 8
  %dev13 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 2
  %parent = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 2, i32 1
  %405 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr %spi, ptr %parent, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %406 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr @ad3552r_iio_info, ptr %info, align 8
  %num_ch = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 7
  %407 = ptrtoint ptr %num_ch to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %num_ch, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %409 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %408, ptr %num_channels, align 4
  %channels = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 5
  %channels14 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %410 = ptrtoint ptr %channels14 to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr %channels, ptr %channels14, align 8
  %411 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 1, ptr %call1, align 8
  %call16 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev13, ptr noundef nonnull %call1, ptr noundef null, ptr noundef nonnull @ad3552r_trigger_handler, i32 noundef 1, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end7.cleanup_crit_edge, %ad3552r_init.exit.cleanup_crit_edge, %ad3552r_init.exit.thread52, %do.end35.i, %do.end24.i, %do.end15.i, %do.end6.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end19 ], [ -12, %entry.cleanup_crit_edge ], [ %call6.i.i, %ad3552r_init.exit.cleanup_crit_edge ], [ %call16, %if.end7.cleanup_crit_edge ], [ %retval.0.i106.i.ph, %ad3552r_init.exit.thread52 ], [ -19, %do.end35.i ], [ %call.i.i72.i, %do.end24.i ], [ %call.i.i.i, %do.end15.i ], [ %retval.0.i63113.i, %do.end6.i ], [ %retval.0.i110.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad3552r_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %buf.i.i2.i = alloca [8 x i8], align 1
  %buf.i.i = alloca [8 x i8], align 1
  %buf.i.i.i = alloca [8 x i8], align 1
  %buff.i.i = alloca [7 x i8], align 2
  %buff = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %buffer = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buff) #7
  %6 = getelementptr inbounds [6 x i8], ptr %buff, i32 0, i32 2
  %7 = call ptr @memset(ptr %buff, i32 0, i32 6)
  %call3 = call i32 @iio_pop_from_buffer(ptr noundef %3, ptr noundef nonnull %buff) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #7
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_scan_mask, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp eq i32 %11, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %buff, ptr noundef dereferenceable(2) %6, i32 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp1.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp1.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then2.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buff.i.i)
  %buff.i.i.6.buff.i.i.6.buff.i.6.buff.i.6..sroa_idx = getelementptr inbounds i8, ptr %buff.i.i, i32 6
  %12 = ptrtoint ptr %buff.i.i.6.buff.i.i.6.buff.i.6.buff.i.6..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %buff.i.i.6.buff.i.i.6.buff.i.6.buff.i.6..sroa_idx, align 2
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %6, align 2
  %15 = ptrtoint ptr %buff.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %buff.i.i, align 2
  %buff.i.i.2.buff.i.i.2.buff.i.2.buff.i.2.buff.2.buff.2..sroa_idx = getelementptr inbounds i8, ptr %buff.i.i, i32 2
  %16 = ptrtoint ptr %buff.i.i.2.buff.i.i.2.buff.i.2.buff.i.2.buff.2.buff.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %buff.i.i.2.buff.i.i.2.buff.i.2.buff.i.2.buff.2.buff.2..sroa_idx, align 2
  %17 = ptrtoint ptr %buff to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buff, align 2
  %buff.i.i.3.buff.i.i.3.buff.i.3.buff.i.3.buff.3.buff.3..sroa_idx = getelementptr inbounds i8, ptr %buff.i.i, i32 3
  %19 = ptrtoint ptr %buff.i.i.3.buff.i.i.3.buff.i.3.buff.i.3.buff.3.buff.3..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %buff.i.i.3.buff.i.i.3.buff.i.3.buff.i.3.buff.3.buff.3..sroa_idx, align 1
  %buff.i.i.5.buff.i.i.5.buff.i.5.buff.i.5.buff.5.buff.5..sroa_idx = getelementptr inbounds i8, ptr %buff.i.i, i32 5
  %20 = ptrtoint ptr %buff.i.i.5.buff.i.i.5.buff.i.5.buff.i.5.buff.5.buff.5..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %buff.i.i.5.buff.i.i.5.buff.i.5.buff.i.5.buff.5.buff.5..sroa_idx, align 1
  %gpio_ldac.i.i = getelementptr inbounds %struct.ad3552r_desc, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %gpio_ldac.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpio_ldac.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then2.i.if.end.i.i_crit_edge

if.then2.i.if.end.i.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %buff.i.i.6.buff.i.i.6.buff.i.6.buff.i.6..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %buff.i.i.6.buff.i.i.6.buff.i.6.buff.i.6..sroa_idx, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then2.i.if.end.i.i_crit_edge
  %len.0.i.i = phi i32 [ 6, %if.then2.i.if.end.i.i_crit_edge ], [ 7, %if.then.i.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i) #7
  %24 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 1
  %25 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 75, ptr %buf.i.i.i, align 1
  %26 = xor i32 %len.0.i.i, 7
  %27 = zext i32 %26 to i64
  %28 = select i1 %tobool.not.i.i, i64 0, i64 %27
  %29 = getelementptr i8, ptr %24, i32 %len.0.i.i
  %30 = trunc i64 %28 to i32
  %31 = call ptr @memset(ptr %29, i32 255, i32 %30)
  %32 = call ptr @memcpy(ptr %24, ptr %buff.i.i, i32 %len.0.i.i)
  %spi8.i.i.i = getelementptr inbounds %struct.ad3552r_desc, ptr %5, i32 0, i32 3
  %33 = ptrtoint ptr %spi8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spi8.i.i.i, align 4
  %add.i.i.i = add nuw nsw i32 %len.0.i.i, 1
  %call10.i.i.i = call i32 @spi_write_then_read(ptr noundef %34, ptr noundef nonnull %buf.i.i.i, i32 noundef %add.i.i.i, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool6.not.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i.i.ad3552r_write_all_channels.exit.i_crit_edge

if.end.i.i.ad3552r_write_all_channels.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_write_all_channels.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %35 = ptrtoint ptr %gpio_ldac.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpio_ldac.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %36, null
  br i1 %tobool10.not.i.i, label %if.end8.i.i.ad3552r_write_all_channels.exit.i_crit_edge, label %if.then11.i.i

if.end8.i.i.ad3552r_write_all_channels.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_write_all_channels.exit.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %36, i32 noundef 0) #7
  call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #7
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %36, i32 noundef 1) #7
  br label %ad3552r_write_all_channels.exit.i

ad3552r_write_all_channels.exit.i:                ; preds = %if.then11.i.i, %if.end8.i.i.ad3552r_write_all_channels.exit.i_crit_edge, %if.end.i.i.ad3552r_write_all_channels.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buff.i.i)
  br label %ad3552r_write_codes.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %37 = call i32 @llvm.cttz.i32(i32 %11, i1 false) #7, !range !173
  %38 = trunc i32 %37 to i8
  %39 = sub nsw i8 1, %38
  %40 = mul i8 %39, 125
  %conv.i = add i8 %40, 75
  %phi.bo.i = and i8 %conv.i, 127
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then.i.if.end6.i_crit_edge
  %addr.0.i = phi i8 [ %phi.bo.i, %if.else.i ], [ 68, %if.then.i.if.end6.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i) #7
  %41 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %42 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %addr.0.i, ptr %buf.i.i, align 1
  %43 = getelementptr inbounds i8, ptr %buf.i.i, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 -1, ptr %43, align 1
  %45 = call ptr @memcpy(ptr %41, ptr %buff, i32 3)
  %spi8.i.i = getelementptr inbounds %struct.ad3552r_desc, ptr %5, i32 0, i32 3
  %46 = ptrtoint ptr %spi8.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %spi8.i.i, align 4
  %call10.i.i = call i32 @spi_write_then_read(ptr noundef %47, ptr noundef nonnull %buf.i.i, i32 noundef 4, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.end6.i.ad3552r_write_codes.exit_crit_edge

if.end6.i.ad3552r_write_codes.exit_crit_edge:     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad3552r_write_codes.exit

if.end9.i:                                        ; preds = %if.end6.i
  %gpio_ldac.i = getelementptr inbounds %struct.ad3552r_desc, ptr %5, i32 0, i32 2
  %48 = ptrtoint ptr %gpio_ldac.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gpio_ldac.i, align 4
  %tobool10.not.i = icmp eq ptr %49, null
  br i1 %tobool10.not.i, label %if.end14.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %49, i32 noundef 0) #7
  call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #7
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %49, i32 noundef 1) #7
  br label %ad3552r_write_codes.exit

if.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv10.i.i = trunc i32 %11 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i2.i) #7
  %50 = getelementptr inbounds i8, ptr %buf.i.i2.i, i32 1
  %51 = ptrtoint ptr %buf.i.i2.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 69, ptr %buf.i.i2.i, align 1
  %52 = getelementptr inbounds i8, ptr %buf.i.i2.i, i32 2
  %53 = call ptr @memset(ptr %52, i32 255, i32 6)
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv10.i.i, ptr %50, align 1
  %55 = ptrtoint ptr %spi8.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spi8.i.i, align 4
  %call10.i.i6.i = call i32 @spi_write_then_read(ptr noundef %56, ptr noundef nonnull %buf.i.i2.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i2.i) #7
  br label %ad3552r_write_codes.exit

ad3552r_write_codes.exit:                         ; preds = %if.end14.i, %if.then11.i, %if.end6.i.ad3552r_write_codes.exit_crit_edge, %ad3552r_write_all_channels.exit.i
  call void @mutex_unlock(ptr noundef %5) #7
  br label %end

end:                                              ; preds = %ad3552r_write_codes.exit, %entry.end_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %57 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %58) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buff) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad3552r_reg_disable(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad3552r_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buf.i.i58 = alloca [8 x i8], align 1
  %buf.i59 = alloca [3 x i8], align 2
  %buf.i.i = alloca [8 x i8], align 1
  %buf.i = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 19, label %sw.bb8
    i32 2, label %sw.bb22
    i32 3, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %5 = trunc i32 %3 to i8
  %6 = sub i8 1, %5
  %7 = mul i8 %6, -3
  %conv3 = add i8 %7, 61
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #7
  %8 = call ptr @memset(ptr %buf.i, i32 0, i32 3)
  %9 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %7, label %sw.epilog.i.i [
    i8 -21, label %sw.bb._ad3552r_reg_len.exit.i_crit_edge
    i8 -14, label %sw.bb._ad3552r_reg_len.exit.i_crit_edge83
    i8 -11, label %sw.bb._ad3552r_reg_len.exit.i_crit_edge84
    i8 -6, label %sw.bb._ad3552r_reg_len.exit.i_crit_edge85
    i8 4, label %sw.bb._ad3552r_reg_len.exit.i_crit_edge86
    i8 8, label %sw.bb._ad3552r_reg_len.exit.i_crit_edge87
  ]

sw.bb._ad3552r_reg_len.exit.i_crit_edge87:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ad3552r_reg_len.exit.i

sw.bb._ad3552r_reg_len.exit.i_crit_edge86:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ad3552r_reg_len.exit.i

sw.bb._ad3552r_reg_len.exit.i_crit_edge85:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ad3552r_reg_len.exit.i

sw.bb._ad3552r_reg_len.exit.i_crit_edge84:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ad3552r_reg_len.exit.i

sw.bb._ad3552r_reg_len.exit.i_crit_edge83:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ad3552r_reg_len.exit.i

sw.bb._ad3552r_reg_len.exit.i_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ad3552r_reg_len.exit.i

sw.epilog.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %conv3)
  %cmp.i.i = icmp ugt i8 %conv3, 55
  br i1 %cmp.i.i, label %sw.epilog.i.i._ad3552r_reg_len.exit.i_crit_edge, label %if.end.i.i

sw.epilog.i.i._ad3552r_reg_len.exit.i_crit_edge:  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_ad3552r_reg_len.exit.i

if.end.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %conv3)
  %cmp4.i.i = icmp ugt i8 %conv3, 40
  %..i.i = select i1 %cmp4.i.i, i8 2, i8 1
  br label %_ad3552r_reg_len.exit.i

_ad3552r_reg_len.exit.i:                          ; preds = %if.end.i.i, %sw.epilog.i.i._ad3552r_reg_len.exit.i_crit_edge, %sw.bb._ad3552r_reg_len.exit.i_crit_edge, %sw.bb._ad3552r_reg_len.exit.i_crit_edge83, %sw.bb._ad3552r_reg_len.exit.i_crit_edge84, %sw.bb._ad3552r_reg_len.exit.i_crit_edge85, %sw.bb._ad3552r_reg_len.exit.i_crit_edge86, %sw.bb._ad3552r_reg_len.exit.i_crit_edge87
  %retval.0.i.i = phi i8 [ 1, %sw.bb._ad3552r_reg_len.exit.i_crit_edge ], [ 1, %sw.bb._ad3552r_reg_len.exit.i_crit_edge83 ], [ 1, %sw.bb._ad3552r_reg_len.exit.i_crit_edge84 ], [ 1, %sw.bb._ad3552r_reg_len.exit.i_crit_edge85 ], [ 1, %sw.bb._ad3552r_reg_len.exit.i_crit_edge86 ], [ 1, %sw.bb._ad3552r_reg_len.exit.i_crit_edge87 ], [ 3, %sw.epilog.i.i._ad3552r_reg_len.exit.i_crit_edge ], [ %..i.i, %if.end.i.i ]
  %conv.i = zext i8 %retval.0.i.i to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i) #7
  %or.i.i = or i8 %conv3, -128
  %10 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %11 = call ptr @memset(ptr %10, i32 255, i32 7)
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or.i.i, ptr %buf.i.i, align 1
  %spi.i.i = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi.i.i, align 4
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %14, ptr noundef nonnull %buf.i.i, i32 noundef 1, ptr noundef nonnull %buf.i, i32 noundef %conv.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ad3552r_read_reg.exit

if.end.i:                                         ; preds = %_ad3552r_reg_len.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %retval.0.i.i)
  %cmp.i = icmp eq i8 %retval.0.i.i, 1
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf.i, align 2
  %conv5.i = zext i8 %16 to i16
  br label %ad3552r_read_reg.exit.thread

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buf.i, align 2
  br label %ad3552r_read_reg.exit.thread

ad3552r_read_reg.exit.thread:                     ; preds = %if.else.i, %if.then4.i
  %tmp_val.0.ph = phi i16 [ %conv5.i, %if.then4.i ], [ %18, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @mutex_unlock(ptr noundef %1) #7
  br label %if.end

ad3552r_read_reg.exit:                            ; preds = %_ad3552r_reg_len.exit.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #7
  call void @mutex_unlock(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %ad3552r_read_reg.exit.cleanup_crit_edge, label %ad3552r_read_reg.exit.if.end_crit_edge

ad3552r_read_reg.exit.if.end_crit_edge:           ; preds = %ad3552r_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ad3552r_read_reg.exit.cleanup_crit_edge:          ; preds = %ad3552r_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ad3552r_read_reg.exit.if.end_crit_edge, %ad3552r_read_reg.exit.thread
  %tmp_val.079 = phi i16 [ %tmp_val.0.ph, %ad3552r_read_reg.exit.thread ], [ -1, %ad3552r_read_reg.exit.if.end_crit_edge ]
  %conv7 = zext i16 %tmp_val.079 to i32
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv7, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i59) #7
  %20 = call ptr @memset(ptr %buf.i59, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i58) #7
  %21 = getelementptr inbounds i8, ptr %buf.i.i58, i32 1
  %22 = call ptr @memset(ptr %21, i32 255, i32 7)
  %23 = ptrtoint ptr %buf.i.i58 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -104, ptr %buf.i.i58, align 1
  %spi.i.i64 = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %spi.i.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi.i.i64, align 4
  %call.i.i65 = call i32 @spi_write_then_read(ptr noundef %25, ptr noundef nonnull %buf.i.i58, i32 noundef 1, ptr noundef nonnull %buf.i59, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %tobool.not.i66 = icmp eq i32 %call.i.i65, 0
  br i1 %tobool.not.i66, label %ad3552r_read_reg.exit75.thread, label %ad3552r_read_reg.exit75

ad3552r_read_reg.exit75.thread:                   ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf.i59, align 2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i59) #7
  call void @mutex_unlock(ptr noundef %1) #7
  %phi.cast = zext i8 %27 to i32
  br label %if.end15

ad3552r_read_reg.exit75:                          ; preds = %sw.bb8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i59) #7
  call void @mutex_unlock(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %cmp12 = icmp slt i32 %call.i.i65, 0
  br i1 %cmp12, label %ad3552r_read_reg.exit75.cleanup_crit_edge, label %ad3552r_read_reg.exit75.if.end15_crit_edge

ad3552r_read_reg.exit75.if.end15_crit_edge:       ; preds = %ad3552r_read_reg.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

ad3552r_read_reg.exit75.cleanup_crit_edge:        ; preds = %ad3552r_read_reg.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %ad3552r_read_reg.exit75.if.end15_crit_edge, %ad3552r_read_reg.exit75.thread
  %tmp_val.182 = phi i32 [ %phi.cast, %ad3552r_read_reg.exit75.thread ], [ 65535, %ad3552r_read_reg.exit75.if.end15_crit_edge ]
  %conv17 = and i32 %3, 255
  %shl = shl i32 16, %conv17
  %and = and i32 %tmp_val.182, %shl
  %28 = call i32 @llvm.cttz.i32(i32 %shl, i1 false) #7, !range !173
  %shr = lshr i32 %and, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not = icmp eq i32 %shr, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %lnot.ext, ptr %val, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom = and i32 %3, 255
  %arrayidx = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %val, align 4
  %scale_dec = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %idxprom, i32 1
  %33 = ptrtoint ptr %scale_dec to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scale_dec, align 4
  %35 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %val2, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom28 = and i32 %3, 255
  %offset_int = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %idxprom28, i32 2
  %36 = ptrtoint ptr %offset_int to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset_int, align 4
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %val, align 4
  %offset_dec = getelementptr %struct.ad3552r_desc, ptr %1, i32 0, i32 4, i32 %idxprom28, i32 3
  %39 = ptrtoint ptr %offset_dec to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset_dec, align 4
  %41 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb26, %sw.bb22, %if.end15, %ad3552r_read_reg.exit75.cleanup_crit_edge, %if.end, %ad3552r_read_reg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb26 ], [ 2, %sw.bb22 ], [ 1, %if.end15 ], [ 1, %if.end ], [ %call.i.i, %ad3552r_read_reg.exit.cleanup_crit_edge ], [ %call.i.i65, %ad3552r_read_reg.exit75.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad3552r_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buf.i.i15.i = alloca [8 x i8], align 1
  %buf.i.i.i = alloca [8 x i8], align 1
  %buf.i.i15 = alloca [3 x i8], align 2
  %buf.i.i = alloca [8 x i8], align 1
  %buf.i = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 19, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %5 = trunc i32 %4 to i8
  %6 = sub i8 1, %5
  %7 = mul i8 %6, -3
  %conv = add i8 %7, 61
  %conv2 = trunc i32 %val to i16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i)
  %8 = call ptr @memset(ptr %buf.i, i32 0, i32 3)
  %9 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %7, label %sw.epilog.i.i [
    i8 -21, label %sw.bb.if.then7.i_crit_edge
    i8 -14, label %sw.bb.if.then7.i_crit_edge18
    i8 -11, label %sw.bb.if.then7.i_crit_edge19
    i8 -6, label %sw.bb.if.then7.i_crit_edge20
    i8 4, label %sw.bb.if.then7.i_crit_edge21
    i8 8, label %sw.bb.if.then7.i_crit_edge22
  ]

sw.bb.if.then7.i_crit_edge22:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

sw.bb.if.then7.i_crit_edge21:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

sw.bb.if.then7.i_crit_edge20:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

sw.bb.if.then7.i_crit_edge19:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

sw.bb.if.then7.i_crit_edge18:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

sw.bb.if.then7.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

sw.epilog.i.i:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %conv)
  %cmp.i.i = icmp ugt i8 %conv, 55
  br i1 %cmp.i.i, label %sw.epilog.i.i.if.else.i_crit_edge, label %if.end.i.i

sw.epilog.i.i.if.else.i_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.end.i.i:                                       ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %conv)
  %cmp4.i.i = icmp ugt i8 %conv, 40
  br i1 %cmp4.i.i, label %.thread.i, label %if.end.i.i.if.then7.i_crit_edge

if.end.i.i.if.then7.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

.thread.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = and i16 %conv2, -16
  br label %if.else.i

if.then7.i:                                       ; preds = %if.end.i.i.if.then7.i_crit_edge, %sw.bb.if.then7.i_crit_edge, %sw.bb.if.then7.i_crit_edge18, %sw.bb.if.then7.i_crit_edge19, %sw.bb.if.then7.i_crit_edge20, %sw.bb.if.then7.i_crit_edge21, %sw.bb.if.then7.i_crit_edge22
  %conv10.i = trunc i32 %val to i8
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10.i, ptr %buf.i, align 2
  br label %ad3552r_write_reg.exit

if.else.i:                                        ; preds = %.thread.i, %sw.epilog.i.i.if.else.i_crit_edge
  %12 = phi i16 [ %10, %.thread.i ], [ %conv2, %sw.epilog.i.i.if.else.i_crit_edge ]
  %retval.0.i2428.i = phi i32 [ 2, %.thread.i ], [ 3, %sw.epilog.i.i.if.else.i_crit_edge ]
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %buf.i, align 2
  br label %ad3552r_write_reg.exit

ad3552r_write_reg.exit:                           ; preds = %if.else.i, %if.then7.i
  %retval.0.i2427.i = phi i32 [ %retval.0.i2428.i, %if.else.i ], [ 1, %if.then7.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i) #7
  %14 = and i8 %conv, 127
  %15 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %buf.i.i, align 1
  %17 = zext i32 %retval.0.i2427.i to i64
  %18 = sub nuw nsw i64 7, %17
  %19 = getelementptr i8, ptr %15, i32 %retval.0.i2427.i
  %20 = trunc i64 %18 to i32
  %21 = call ptr @memset(ptr %19, i32 255, i32 %20)
  %22 = call ptr @memcpy(ptr %15, ptr %buf.i, i32 %retval.0.i2427.i)
  %spi8.i.i = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %spi8.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spi8.i.i, align 4
  %add.i.i = add nuw nsw i32 %retval.0.i2427.i, 1
  %call10.i.i = call i32 @spi_write_then_read(ptr noundef %24, ptr noundef nonnull %buf.i.i, i32 noundef %add.i.i, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %channel5 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %25 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %conv3.i = and i32 %26, 255
  %add.i = add nuw nsw i32 %conv3.i, 1
  %arrayidx4.i = getelementptr [10 x [3 x i16]], ptr @addr_mask_map_ch, i32 0, i32 0, i32 %add.i
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx4.i, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i15) #7
  %29 = call ptr @memset(ptr %buf.i.i15, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i.i) #7
  %30 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 1
  %31 = call ptr @memset(ptr %30, i32 255, i32 7)
  %32 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -104, ptr %buf.i.i.i, align 1
  %spi.i.i.i = getelementptr inbounds %struct.ad3552r_desc, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spi.i.i.i, align 4
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %34, ptr noundef nonnull %buf.i.i.i, i32 noundef 1, ptr noundef nonnull %buf.i.i15, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i17, label %ad3552r_read_reg.exit.i

if.end.i.i17:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %buf.i.i15 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf.i.i15, align 2
  %conv5.i.i = zext i8 %36 to i16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i15) #7
  br label %if.end.i

ad3552r_read_reg.exit.i:                          ; preds = %sw.bb4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %ad3552r_read_reg.exit.i.sw.epilog_crit_edge, label %ad3552r_read_reg.exit.i.if.end.i_crit_edge

ad3552r_read_reg.exit.i.if.end.i_crit_edge:       ; preds = %ad3552r_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

ad3552r_read_reg.exit.i.sw.epilog_crit_edge:      ; preds = %ad3552r_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %ad3552r_read_reg.exit.i.if.end.i_crit_edge, %if.end.i.i17
  %reg.025.i = phi i16 [ %conv5.i.i, %if.end.i.i17 ], [ -1, %ad3552r_read_reg.exit.i.if.end.i_crit_edge ]
  %neg.i = xor i16 %28, -1
  %and.i = and i16 %reg.025.i, %neg.i
  %conv.i14.i = zext i1 %tobool.not to i32
  %conv1.i.i = zext i16 %28 to i32
  %37 = call i32 @llvm.cttz.i32(i32 %conv1.i.i, i1 false) #7, !range !173
  %shl.i.i = shl nuw i32 %conv.i14.i, %37
  %38 = trunc i32 %shl.i.i to i16
  %conv3.i.i = and i16 %28, %38
  %or13.i = or i16 %and.i, %conv3.i.i
  %conv10.i.i = trunc i16 %or13.i to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i.i15.i) #7
  %39 = getelementptr inbounds i8, ptr %buf.i.i15.i, i32 1
  %40 = ptrtoint ptr %buf.i.i15.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 24, ptr %buf.i.i15.i, align 1
  %41 = getelementptr inbounds i8, ptr %buf.i.i15.i, i32 2
  %42 = call ptr @memset(ptr %41, i32 255, i32 6)
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv10.i.i, ptr %39, align 1
  %44 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %spi.i.i.i, align 4
  %call10.i.i.i = call i32 @spi_write_then_read(ptr noundef %45, ptr noundef nonnull %buf.i.i15.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i.i15.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i, %ad3552r_read_reg.exit.i.sw.epilog_crit_edge, %ad3552r_write_reg.exit, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call10.i.i, %ad3552r_write_reg.exit ], [ -22, %entry.sw.epilog_crit_edge ], [ %call10.i.i.i, %if.end.i ], [ %call.i.i.i, %ad3552r_read_reg.exit.i.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pop_from_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !130, !131, !132, !134, !136, !137, !138, !140, !142, !143, !144, !146, !148, !149, !150, !152, !153, !154, !156, !157, !159, !161}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__initcall__kmod_ad3552r__290_1134_ad3552r_driver_init6, !1, !"__initcall__kmod_ad3552r__290_1134_ad3552r_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad3552r.c", i32 1134, i32 1}
!2 = !{ptr @__exitcall_ad3552r_driver_exit, !1, !"__exitcall_ad3552r_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad3552r.c", i32 1136, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad3552r.c", i32 1137, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad3552r.c", i32 1138, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad3552r.c", i32 1128, i32 11}
!12 = !{ptr @ad3552r_driver, !13, !"ad3552r_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad3552r.c", i32 1126, i32 26}
!14 = !{ptr @ad3552r_id, !15, !"ad3552r_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad3552r.c", i32 1112, i32 35}
!16 = !{ptr @ad3552r_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad3552r.c", i32 1084, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/dac/ad3552r.c", i32 1094, i32 21}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/dac/ad3552r.c", i32 1037, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ad3552r_init._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @ad3552r_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/dac/ad3552r.c", i32 1043, i32 3}
!31 = !{ptr @ad3552r_init._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ad3552r_init._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/dac/ad3552r.c", i32 1049, i32 3}
!35 = !{ptr @ad3552r_init._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ad3552r_init._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/dac/ad3552r.c", i32 1056, i32 3}
!39 = !{ptr @ad3552r_init._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ad3552r_init._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/dac/ad3552r.c", i32 1062, i32 3}
!43 = !{ptr @ad3552r_init._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ad3552r_init._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/dac/ad3552r.c", i32 661, i32 60}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/dac/ad3552r.c", i32 665, i32 10}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/dac/ad3552r.c", i32 691, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ad3552r_reset._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ad3552r_reset._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @ad3552r_reset._entry.24, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/iio/dac/ad3552r.c", i32 702, i32 3}
!56 = !{ptr @ad3552r_reset._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!57 = distinct !{null, !58, !"addr_mask_map", i1 false, i1 false}
!58 = !{!"../drivers/iio/dac/ad3552r.c", i32 277, i32 18}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/dac/ad3552r.c", i32 888, i32 48}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/dac/ad3552r.c", i32 891, i32 10}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/dac/ad3552r.c", i32 893, i32 42}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/dac/ad3552r.c", i32 897, i32 11}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/dac/ad3552r.c", i32 899, i32 38}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/dac/ad3552r.c", i32 906, i32 4}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ad3552r_configure_device._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ad3552r_configure_device._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/dac/ad3552r.c", i32 918, i32 4}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ad3552r_configure_device._entry.33, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ad3552r_configure_device._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/dac/ad3552r.c", i32 931, i32 38}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/dac/ad3552r.c", i32 934, i32 4}
!83 = !{ptr @ad3552r_configure_device._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ad3552r_configure_device._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/dac/ad3552r.c", i32 948, i32 3}
!87 = !{ptr @ad3552r_configure_device._entry.41, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ad3552r_configure_device._entry_ptr.43, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/dac/ad3552r.c", i32 953, i32 41}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/dac/ad3552r.c", i32 955, i32 4}
!93 = !{ptr @ad3552r_configure_device._entry.45, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ad3552r_configure_device._entry_ptr.47, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/dac/ad3552r.c", i32 959, i32 4}
!97 = !{ptr @ad3552r_configure_device._entry.48, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ad3552r_configure_device._entry_ptr.50, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/dac/ad3552r.c", i32 965, i32 38}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/dac/ad3552r.c", i32 971, i32 5}
!103 = !{ptr @ad3552r_configure_device._entry.52, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ad3552r_configure_device._entry_ptr.54, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/dac/ad3552r.c", i32 978, i32 5}
!107 = !{ptr @ad3552r_configure_device._entry.55, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ad3552r_configure_device._entry_ptr.57, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/dac/ad3552r.c", i32 991, i32 4}
!111 = !{ptr @ad3552r_configure_device._entry.58, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ad3552r_configure_device._entry_ptr.60, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @ad3542r_ch_ranges, !114, !"ad3542r_ch_ranges", i1 false, i1 false}
!114 = !{!"../drivers/iio/dac/ad3552r.c", i32 183, i32 18}
!115 = !{ptr @ad3552r_ch_ranges, !116, !"ad3552r_ch_ranges", i1 false, i1 false}
!116 = !{!"../drivers/iio/dac/ad3552r.c", i32 160, i32 18}
!117 = !{ptr @addr_mask_map_ch, !118, !"addr_mask_map_ch", i1 false, i1 false}
!118 = !{!"../drivers/iio/dac/ad3552r.c", i32 293, i32 18}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/dac/ad3552r.c", i32 811, i32 8}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/dac/ad3552r.c", i32 813, i32 3}
!123 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @ad3552r_configure_custom_gain._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @ad3552r_configure_custom_gain._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/dac/ad3552r.c", i32 821, i32 45}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/dac/ad3552r.c", i32 823, i32 3}
!130 = !{ptr @ad3552r_configure_custom_gain._entry.65, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @ad3552r_configure_custom_gain._entry_ptr.67, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/dac/ad3552r.c", i32 829, i32 45}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/dac/ad3552r.c", i32 831, i32 3}
!136 = !{ptr @ad3552r_configure_custom_gain._entry.69, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ad3552r_configure_custom_gain._entry_ptr.71, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/iio/dac/ad3552r.c", i32 837, i32 45}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/dac/ad3552r.c", i32 839, i32 3}
!142 = !{ptr @ad3552r_configure_custom_gain._entry.73, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ad3552r_configure_custom_gain._entry_ptr.75, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.76, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/iio/dac/ad3552r.c", i32 844, i32 45}
!146 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/iio/dac/ad3552r.c", i32 846, i32 3}
!148 = !{ptr @ad3552r_configure_custom_gain._entry.77, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ad3552r_configure_custom_gain._entry_ptr.79, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/iio/dac/ad3552r.c", i32 859, i32 3}
!152 = !{ptr @ad3552r_configure_custom_gain._entry.80, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ad3552r_configure_custom_gain._entry_ptr.82, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @ad3552r_configure_custom_gain._entry.83, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/iio/dac/ad3552r.c", i32 865, i32 3}
!156 = !{ptr @ad3552r_configure_custom_gain._entry_ptr.84, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @gains_scaling_table, !158, !"gains_scaling_table", i1 false, i1 false}
!158 = !{!"../drivers/iio/dac/ad3552r.c", i32 204, i32 18}
!159 = !{ptr @ad3552r_iio_info, !160, !"ad3552r_iio_info", i1 false, i1 false}
!160 = !{!"../drivers/iio/dac/ad3552r.c", i32 514, i32 30}
!161 = !{ptr @ad3552r_of_match, !162, !"ad3552r_of_match", i1 false, i1 false}
!162 = !{!"../drivers/iio/dac/ad3552r.c", i32 1119, i32 34}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{!"auto-init"}
!173 = !{i32 0, i32 33}
!174 = !{i8 0, i8 2}
