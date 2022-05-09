; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/resolver/ad2s1210.c_pt.bc'
source_filename = "../drivers/staging/iio/resolver/ad2s1210.c"
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
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ad2s1210_state = type { %struct.mutex, ptr, [5 x ptr], i32, i32, i8, i8, i32, [124 x i8], [2 x i8], [126 x i8], [2 x i8], [126 x i8] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ad2s1210__230_712_ad2s1210_driver_init6 = internal global ptr @ad2s1210_driver_init, section ".initcall6.init", align 4
@ad2s1210_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad2s1210_id, ptr @ad2s1210_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad2s1210_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad2s1210_driver_exit = internal global ptr @ad2s1210_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [50 x i8] c"ad2s1210.author=Graff Yang <graff.yang@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [76 x i8] c"ad2s1210.description=Analog Devices AD2S1210 Resolver to Digital SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [52 x i8] c"ad2s1210.file=drivers/staging/iio/resolver/ad2s1210\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [24 x i8] c"ad2s1210.license=GPL v2\00", section ".modinfo", align 1
@ad2s1210_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad2s1210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ad2s1210\00", [23 x i8] zeroinitializer }, align 32
@ad2s1210_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad2s1210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ad2s1210_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad2s1210_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad2s1210_attribute_group, ptr @ad2s1210_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad2s1210_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 12, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 4, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [48 x i8] zeroinitializer }, align 32
@ad2s1210_setup_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 643, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ad2s1210: failed to request %s GPIO: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ad2s1210_setup_gpios\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/iio/resolver/ad2s1210.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad2s1210_setup_gpios._entry_ptr = internal global ptr @ad2s1210_setup_gpios._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adi,sample\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"adi,a0\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"adi,a1\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adi,res0\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adi,res1\00", [23 x i8] zeroinitializer }, align 32
@ad2s1210_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad2s1210_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad2s1210_attributes = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @iio_dev_attr_fclkin, ptr @iio_dev_attr_fexcit, ptr @iio_dev_attr_control, ptr @iio_dev_attr_bits, ptr @iio_dev_attr_fault, ptr @iio_dev_attr_los_thrd, ptr @iio_dev_attr_dos_ovr_thrd, ptr @iio_dev_attr_dos_mis_thrd, ptr @iio_dev_attr_dos_rst_max_thrd, ptr @iio_dev_attr_dos_rst_min_thrd, ptr @iio_dev_attr_lot_high_thrd, ptr @iio_dev_attr_lot_low_thrd, ptr null], [44 x i8] zeroinitializer }, align 32
@iio_dev_attr_fclkin = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_fclkin, ptr @ad2s1210_store_fclkin }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_fexcit = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_fexcit, ptr @ad2s1210_store_fexcit }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_control = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_control, ptr @ad2s1210_store_control }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_bits = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_resolution, ptr @ad2s1210_store_resolution }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_fault = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_fault, ptr @ad2s1210_clear_fault }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_los_thrd = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_reg, ptr @ad2s1210_store_reg }, i64 136, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_dos_ovr_thrd = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_reg, ptr @ad2s1210_store_reg }, i64 137, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_dos_mis_thrd = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_reg, ptr @ad2s1210_store_reg }, i64 138, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_dos_rst_max_thrd = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_reg, ptr @ad2s1210_store_reg }, i64 139, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_dos_rst_min_thrd = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_reg, ptr @ad2s1210_store_reg }, i64 140, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_lot_high_thrd = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_reg, ptr @ad2s1210_store_reg }, i64 141, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_lot_low_thrd = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad2s1210_show_reg, ptr @ad2s1210_store_reg }, i64 142, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fclkin\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@ad2s1210_store_fclkin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ad2s1210: fclkin out of range\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ad2s1210_store_fclkin\00", [42 x i8] zeroinitializer }, align 32
@ad2s1210_store_fclkin._entry_ptr = internal global ptr @ad2s1210_store_fclkin._entry, section ".printk_index", align 4
@ad2s1210_update_frequency_control_word._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 165, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ad2s1210: FCW out of range\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ad2s1210_update_frequency_control_word\00", [57 x i8] zeroinitializer }, align 32
@ad2s1210_update_frequency_control_word._entry_ptr = internal global ptr @ad2s1210_update_frequency_control_word._entry, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fexcit\00", [25 x i8] zeroinitializer }, align 32
@ad2s1210_store_fexcit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ad2s1210: excitation frequency out of range\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ad2s1210_store_fexcit\00", [42 x i8] zeroinitializer }, align 32
@ad2s1210_store_fexcit._entry_ptr = internal global ptr @ad2s1210_store_fexcit._entry, section ".printk_index", align 4
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@ad2s1210_store_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ad2s1210: write control register fail\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ad2s1210_store_control\00", [41 x i8] zeroinitializer }, align 32
@ad2s1210_store_control._entry_ptr = internal global ptr @ad2s1210_store_control._entry, section ".printk_index", align 4
@ad2s1210_resolution_value = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 10, i32 12, i32 14, i32 16], [16 x i8] zeroinitializer }, align 32
@ad2s1210_res_pins = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 1]], [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bits\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ad2s1210_store_resolution._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ad2s1210: resolution out of range\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ad2s1210_store_resolution\00", [38 x i8] zeroinitializer }, align 32
@ad2s1210_store_resolution._entry_ptr = internal global ptr @ad2s1210_store_resolution._entry, section ".printk_index", align 4
@ad2s1210_store_resolution._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 372, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ad2s1210: setting resolution fail\0A\00", [61 x i8] zeroinitializer }, align 32
@ad2s1210_store_resolution._entry_ptr.31 = internal global ptr @ad2s1210_store_resolution._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fault\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"los_thrd\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dos_ovr_thrd\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dos_mis_thrd\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dos_rst_max_thrd\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dos_rst_min_thrd\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lot_high_thrd\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lot_low_thrd\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"ad2s1210_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 704, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"ad2s1210_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 698, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 706, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"ad2s1210_of_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 692, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 667, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"ad2s1210_info\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 626, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"ad2s1210_channels\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 558, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 641, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 79, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 80, i32 28 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 81, i32 28 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 82, i32 30 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 83, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant [25 x i8] c"ad2s1210_attribute_group\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 588, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"ad2s1210_attributes\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 572, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"iio_dev_attr_fclkin\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"iio_dev_attr_fexcit\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"iio_dev_attr_control\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"iio_dev_attr_bits\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"iio_dev_attr_fault\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [22 x i8] c"iio_dev_attr_los_thrd\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [26 x i8] c"iio_dev_attr_dos_ovr_thrd\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [26 x i8] c"iio_dev_attr_dos_mis_thrd\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [30 x i8] c"iio_dev_attr_dos_rst_max_thrd\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [30 x i8] c"iio_dev_attr_dos_rst_min_thrd\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [27 x i8] c"iio_dev_attr_lot_high_thrd\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"iio_dev_attr_lot_low_thrd\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 525, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 205, i32 22 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 221, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 165, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 527, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 259, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 529, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 285, i32 38 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 315, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"ad2s1210_resolution_value\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 86, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant [18 x i8] c"ad2s1210_res_pins\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 176, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 531, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 336, i32 22 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 350, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 372, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 533, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 536, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 539, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 542, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 545, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 548, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 551, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.240 = private constant [43 x i8] c"../drivers/staging/iio/resolver/ad2s1210.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 554, i32 8 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ad2s1210_driver_exit, ptr @__initcall__kmod_ad2s1210__230_712_ad2s1210_driver_init6, ptr @ad2s1210_driver_exit, ptr @ad2s1210_setup_gpios._entry, ptr @ad2s1210_setup_gpios._entry_ptr, ptr @ad2s1210_store_control._entry, ptr @ad2s1210_store_control._entry_ptr, ptr @ad2s1210_store_fclkin._entry, ptr @ad2s1210_store_fclkin._entry_ptr, ptr @ad2s1210_store_fexcit._entry, ptr @ad2s1210_store_fexcit._entry_ptr, ptr @ad2s1210_store_resolution._entry, ptr @ad2s1210_store_resolution._entry.29, ptr @ad2s1210_store_resolution._entry_ptr, ptr @ad2s1210_store_resolution._entry_ptr.31, ptr @ad2s1210_update_frequency_control_word._entry, ptr @ad2s1210_update_frequency_control_word._entry_ptr, ptr @ad2s1210_driver, ptr @ad2s1210_id, ptr @.str, ptr @ad2s1210_of_match, ptr @ad2s1210_probe.__key, ptr @.str.1, ptr @ad2s1210_info, ptr @ad2s1210_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ad2s1210_attribute_group, ptr @ad2s1210_attributes, ptr @iio_dev_attr_fclkin, ptr @iio_dev_attr_fexcit, ptr @iio_dev_attr_control, ptr @iio_dev_attr_bits, ptr @iio_dev_attr_fault, ptr @iio_dev_attr_los_thrd, ptr @iio_dev_attr_dos_ovr_thrd, ptr @iio_dev_attr_dos_mis_thrd, ptr @iio_dev_attr_dos_rst_max_thrd, ptr @iio_dev_attr_dos_rst_min_thrd, ptr @iio_dev_attr_lot_high_thrd, ptr @iio_dev_attr_lot_low_thrd, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ad2s1210_resolution_value, ptr @ad2s1210_res_pins, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_setup_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_attributes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_fclkin to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_fexcit to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_control to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_bits to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_fault to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_los_thrd to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_dos_ovr_thrd to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_dos_mis_thrd to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_dos_rst_max_thrd to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_dos_rst_min_thrd to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_lot_high_thrd to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_lot_low_thrd to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_store_fclkin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_update_frequency_control_word._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_store_fexcit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_store_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_resolution_value to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_res_pins to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_store_resolution._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad2s1210_store_resolution._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad2s1210_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad2s1210_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad2s1210_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 512) #8
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
  %sdev.i = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev.i, align 4
  %call.i = tail call ptr @devm_gpiod_get(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 3) #8
  %arrayidx2.i = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 0
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %arrayidx2.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.ad2s1210_setup_gpios.exit_crit_edge, label %for.cond.i

if.end.ad2s1210_setup_gpios.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad2s1210_setup_gpios.exit

for.cond.i:                                       ; preds = %if.end
  %call.1.i = tail call ptr @devm_gpiod_get(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef 3) #8
  %arrayidx2.1.i = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.1.i, ptr %arrayidx2.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.cond.i.ad2s1210_setup_gpios.exit_crit_edge, label %for.cond.1.i

for.cond.i.ad2s1210_setup_gpios.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad2s1210_setup_gpios.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call ptr @devm_gpiod_get(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef 3) #8
  %arrayidx2.2.i = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.2.i, ptr %arrayidx2.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.cond.1.i.ad2s1210_setup_gpios.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.ad2s1210_setup_gpios.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad2s1210_setup_gpios.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call ptr @devm_gpiod_get(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef 3) #8
  %arrayidx2.3.i = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.3.i, ptr %arrayidx2.3.i, align 4
  %cmp.i.3.i = icmp ugt ptr %call.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %for.cond.2.i.ad2s1210_setup_gpios.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.ad2s1210_setup_gpios.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad2s1210_setup_gpios.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.4.i = tail call ptr @devm_gpiod_get(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef 3) #8
  %arrayidx2.4.i = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.4.i, ptr %arrayidx2.4.i, align 4
  %cmp.i.4.i = icmp ugt ptr %call.4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i, label %for.cond.3.i.ad2s1210_setup_gpios.exit_crit_edge, label %for.cond.3.i.if.end4_crit_edge

for.cond.3.i.if.end4_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

for.cond.3.i.ad2s1210_setup_gpios.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad2s1210_setup_gpios.exit

ad2s1210_setup_gpios.exit:                        ; preds = %for.cond.3.i.ad2s1210_setup_gpios.exit_crit_edge, %for.cond.2.i.ad2s1210_setup_gpios.exit_crit_edge, %for.cond.1.i.ad2s1210_setup_gpios.exit_crit_edge, %for.cond.i.ad2s1210_setup_gpios.exit_crit_edge, %if.end.ad2s1210_setup_gpios.exit_crit_edge
  %.lcssa.i = phi ptr [ @.str.7, %if.end.ad2s1210_setup_gpios.exit_crit_edge ], [ @.str.8, %for.cond.i.ad2s1210_setup_gpios.exit_crit_edge ], [ @.str.9, %for.cond.1.i.ad2s1210_setup_gpios.exit_crit_edge ], [ @.str.10, %for.cond.2.i.ad2s1210_setup_gpios.exit_crit_edge ], [ @.str.11, %for.cond.3.i.ad2s1210_setup_gpios.exit_crit_edge ]
  %call.lcssa.i = phi ptr [ %call.i, %if.end.ad2s1210_setup_gpios.exit_crit_edge ], [ %call.1.i, %for.cond.i.ad2s1210_setup_gpios.exit_crit_edge ], [ %call.2.i, %for.cond.1.i.ad2s1210_setup_gpios.exit_crit_edge ], [ %call.3.i, %for.cond.2.i.ad2s1210_setup_gpios.exit_crit_edge ], [ %call.4.i, %for.cond.3.i.ad2s1210_setup_gpios.exit_crit_edge ]
  %9 = ptrtoint ptr %call.lcssa.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull %.lcssa.i, i32 noundef %9) #11
  %cmp = icmp slt ptr %call.lcssa.i, null
  br i1 %cmp, label %ad2s1210_setup_gpios.exit.cleanup_crit_edge, label %ad2s1210_setup_gpios.exit.if.end4_crit_edge

ad2s1210_setup_gpios.exit.if.end4_crit_edge:      ; preds = %ad2s1210_setup_gpios.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

ad2s1210_setup_gpios.exit.cleanup_crit_edge:      ; preds = %ad2s1210_setup_gpios.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %ad2s1210_setup_gpios.exit.if.end4_crit_edge, %for.cond.3.i.if.end4_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %driver_data.i.i, align 4
  tail call void @__mutex_init(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad2s1210_probe.__key) #8
  %11 = ptrtoint ptr %sdev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spi, ptr %sdev.i, align 4
  %hysteresis = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %hysteresis to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %hysteresis, align 4
  %mode = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %mode, align 128
  %resolution = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %resolution to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 12, ptr %resolution, align 1
  %fexcit = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %fexcit to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 10000, ptr %fexcit, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %16 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ad2s1210_info, ptr %info, align 8
  %17 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ad2s1210_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %19 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %num_channels, align 4
  %call5 = tail call ptr @spi_get_device_id(ptr noundef %spi) #8
  %name6 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %20 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5, ptr %name6, align 8
  %call8 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %21 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_speed_hz, align 8
  %fclkin = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %fclkin to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %fclkin, align 4
  %mode12 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %24 = ptrtoint ptr %mode12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %mode12, align 8
  %call13 = tail call i32 @spi_setup(ptr noundef %spi) #8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %arrayidx.i.i = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %27 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %resolution, align 1
  %conv.i.i = zext i8 %28 to i16
  %sub.i.i = add nsw i16 %conv.i.i, -10
  %div14.i.i = sdiv i16 %sub.i.i, 2
  %div.sext.i.i = sext i16 %div14.i.i to i32
  %arrayidx1.i.i = getelementptr [4 x [2 x i32]], ptr @ad2s1210_res_pins, i32 0, i32 %div.sext.i.i
  %29 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx1.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %26, i32 noundef %30) #8
  %arrayidx4.i.i = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx4.i.i, align 16
  %33 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %resolution, align 1
  %conv6.i.i = zext i8 %34 to i16
  %sub7.i.i = add nsw i16 %conv6.i.i, -10
  %div815.i.i = sdiv i16 %sub7.i.i, 2
  %div8.sext.i.i = sext i16 %div815.i.i to i32
  %arrayidx10.i.i = getelementptr [4 x [2 x i32]], ptr @ad2s1210_res_pins, i32 0, i32 %div8.sext.i.i, i32 1
  %35 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx10.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %32, i32 noundef %36) #8
  %call.i43 = tail call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext -110) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i = icmp slt i32 %call.i43, 0
  br i1 %cmp.i, label %if.end11.ad2s1210_initial.exit_crit_edge, label %if.end.i

if.end11.ad2s1210_initial.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad2s1210_initial.exit

if.end.i:                                         ; preds = %if.end11
  %37 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %resolution, align 1
  %conv.i = zext i8 %38 to i16
  %sub.i = add nuw nsw i16 %conv.i, 502
  %39 = lshr i16 %sub.i, 1
  %40 = trunc i16 %39 to i8
  %conv2.i = or i8 %40, 124
  %call3.i = tail call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext %conv2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.ad2s1210_initial.exit_crit_edge, label %if.end7.i

if.end.i.ad2s1210_initial.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad2s1210_initial.exit

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call fastcc i32 @ad2s1210_config_read(ptr noundef %1, i8 noundef zeroext -110) #8
  %41 = and i32 %call8.i, -2147483520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %if.end14.i, label %if.end7.i.ad2s1210_initial.exit_crit_edge

if.end7.i.ad2s1210_initial.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad2s1210_initial.exit

if.end14.i:                                       ; preds = %if.end7.i
  %43 = ptrtoint ptr %fexcit to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fexcit, align 8
  %mul.i.i = shl i32 %44, 15
  %45 = ptrtoint ptr %fclkin to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fclkin, align 4
  %div.i.i = udiv i32 %mul.i.i, %46
  %conv.i1.i = trunc i32 %div.i.i to i8
  %conv1.i.i = and i32 %div.i.i, 255
  %47 = add nsw i32 %conv1.i.i, -81
  call void @__sanitizer_cov_trace_const_cmp4(i32 -77, i32 %47)
  %48 = icmp ult i32 %47, -77
  br i1 %48, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.16) #11
  br label %ad2s1210_initial.exit

if.end.i.i:                                       ; preds = %if.end14.i
  %call.i.i = tail call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext -111) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp6.i.i, label %if.end.i.i.ad2s1210_initial.exit_crit_edge, label %ad2s1210_update_frequency_control_word.exit.i

if.end.i.i.ad2s1210_initial.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad2s1210_initial.exit

ad2s1210_update_frequency_control_word.exit.i:    ; preds = %if.end.i.i
  %call10.i.i = tail call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext %conv.i1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp16.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp16.i, label %ad2s1210_update_frequency_control_word.exit.i.ad2s1210_initial.exit_crit_edge, label %if.end19.i

ad2s1210_update_frequency_control_word.exit.i.ad2s1210_initial.exit_crit_edge: ; preds = %ad2s1210_update_frequency_control_word.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad2s1210_initial.exit

if.end19.i:                                       ; preds = %ad2s1210_update_frequency_control_word.exit.i
  %call.i2.i = tail call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext -16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp.i.i44 = icmp slt i32 %call.i2.i, 0
  br i1 %cmp.i.i44, label %if.end19.i.ad2s1210_initial.exit_crit_edge, label %if.end.i3.i

if.end19.i.ad2s1210_initial.exit_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad2s1210_initial.exit

if.end.i3.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = tail call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext 0) #8
  br label %ad2s1210_initial.exit

ad2s1210_initial.exit:                            ; preds = %if.end.i3.i, %if.end19.i.ad2s1210_initial.exit_crit_edge, %ad2s1210_update_frequency_control_word.exit.i.ad2s1210_initial.exit_crit_edge, %if.end.i.i.ad2s1210_initial.exit_crit_edge, %do.end.i.i, %if.end7.i.ad2s1210_initial.exit_crit_edge, %if.end.i.ad2s1210_initial.exit_crit_edge, %if.end11.ad2s1210_initial.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %ad2s1210_initial.exit, %if.end4.cleanup_crit_edge, %ad2s1210_setup_gpios.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ad2s1210_initial.exit ], [ -12, %entry.cleanup_crit_edge ], [ %9, %ad2s1210_setup_gpios.exit.cleanup_crit_edge ], [ %call8, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %m) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %gpios = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 32
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.error_ret_crit_edge [
    i32 12, label %entry.if.end_crit_edge
    i32 4, label %sw.bb1
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.error_ret_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %sw.bb1, %entry.if.end_crit_edge
  %.sink85 = phi i32 [ 1, %sw.bb1 ], [ 0, %entry.if.end_crit_edge ]
  %arrayidx.i79 = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i79, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #8
  %arrayidx4.i80 = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx4.i80 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4.i80, align 8
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef %.sink85) #8
  %mode7.i81 = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %mode7.i81 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink85, ptr %mode7.i81, align 128
  %sdev = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdev, align 4
  %rx = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %15 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %16 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rx, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %18 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_read.exit_crit_edge

if.end.spi_read.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_read.exit

spi_read.exit:                                    ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3 = icmp slt i32 %call.i.i, 0
  br i1 %cmp3, label %spi_read.exit.error_ret_crit_edge, label %if.end5

spi_read.exit.error_ret_crit_edge:                ; preds = %spi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end5:                                          ; preds = %spi_read.exit
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chan, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %29, label %if.end5.cleanup_crit_edge [
    i32 12, label %sw.bb7
    i32 4, label %sw.bb16
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb7:                                           ; preds = %if.end5
  %31 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rx, align 2
  %hysteresis = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %hysteresis to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hysteresis, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not = icmp eq i8 %34, 0
  br i1 %tobool.not, label %sw.bb7.if.end14_crit_edge, label %if.then11

sw.bb7.if.end14_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %resolution = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %resolution, align 1
  %conv = zext i8 %36 to i32
  %sub = sub nsw i32 16, %conv
  %conv12 = zext i16 %32 to i32
  %shr = lshr i32 %conv12, %sub
  %conv13 = trunc i32 %shr to i16
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %sw.bb7.if.end14_crit_edge
  %pos.0 = phi i16 [ %conv13, %if.then11 ], [ %32, %sw.bb7.if.end14_crit_edge ]
  %conv15 = zext i16 %pos.0 to i32
  br label %error_ret.sink.split

sw.bb16:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %rx to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %rx, align 2
  %resolution24 = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %resolution24 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %resolution24, align 1
  %conv25 = zext i8 %40 to i32
  %sub26 = sub nsw i32 16, %conv25
  %conv27 = sext i16 %38 to i32
  %shr28 = ashr i32 %conv27, %sub26
  %and31 = and i32 %shr28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %41 = shl nsw i32 -1, %conv25
  %or = select i1 %tobool32.not, i32 0, i32 %41
  %vel.0.in = or i32 %or, %shr28
  %sext = shl i32 %vel.0.in, 16
  %conv44 = ashr exact i32 %sext, 16
  br label %error_ret.sink.split

error_ret.sink.split:                             ; preds = %sw.bb16, %if.end14
  %conv15.sink = phi i32 [ %conv15, %if.end14 ], [ %conv44, %sw.bb16 ]
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv15.sink, ptr %val, align 4
  br label %error_ret

error_ret:                                        ; preds = %error_ret.sink.split, %spi_read.exit.error_ret_crit_edge, %entry.error_ret_crit_edge
  %ret.1 = phi i32 [ %call.i.i, %spi_read.exit.error_ret_crit_edge ], [ -22, %entry.error_ret_crit_edge ], [ 1, %error_ret.sink.split ]
  %43 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gpios, align 32
  call void @gpiod_set_value(ptr noundef %44, i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748) #8
  br label %cleanup

cleanup:                                          ; preds = %error_ret, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error_ret ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_show_fclkin(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %fclkin = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fclkin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fclkin, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_store_fclkin(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %fclkin = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fclkin) #8
  %2 = ptrtoint ptr %fclkin to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fclkin, align 4, !annotation !136
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %fclkin) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fclkin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fclkin, align 4
  %5 = add i32 %4, -10240001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096001, i32 %5)
  %6 = icmp ult i32 %5, -4096001
  br i1 %6, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %7 = ptrtoint ptr %fclkin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fclkin, align 4
  %fclkin6 = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %fclkin6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fclkin6, align 4
  %fexcit.i = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %fexcit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fexcit.i, align 8
  %mul.i = shl i32 %11, 15
  %div.i = udiv i32 %mul.i, %8
  %conv.i = trunc i32 %div.i to i8
  %conv1.i = and i32 %div.i, 255
  %12 = add nsw i32 %conv1.i, -81
  call void @__sanitizer_cov_trace_const_cmp4(i32 -77, i32 %12)
  %13 = icmp ult i32 %12, -77
  br i1 %13, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %sdev.i = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.16) #11
  br label %error_ret.thread

if.end.i:                                         ; preds = %if.end5
  %call.i = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext -111) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %if.end.i.error_ret.thread_crit_edge, label %ad2s1210_update_frequency_control_word.exit

if.end.i.error_ret.thread_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret.thread

ad2s1210_update_frequency_control_word.exit:      ; preds = %if.end.i
  %call10.i = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp8 = icmp slt i32 %call10.i, 0
  br i1 %cmp8, label %ad2s1210_update_frequency_control_word.exit.error_ret.thread_crit_edge, label %if.end10

ad2s1210_update_frequency_control_word.exit.error_ret.thread_crit_edge: ; preds = %ad2s1210_update_frequency_control_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret.thread

if.end10:                                         ; preds = %ad2s1210_update_frequency_control_word.exit
  %call.i25 = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext -16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.i = icmp slt i32 %call.i25, 0
  br i1 %cmp.i, label %if.end10.error_ret.thread_crit_edge, label %error_ret

if.end10.error_ret.thread_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret.thread

error_ret.thread:                                 ; preds = %if.end10.error_ret.thread_crit_edge, %ad2s1210_update_frequency_control_word.exit.error_ret.thread_crit_edge, %if.end.i.error_ret.thread_crit_edge, %do.end.i
  %ret.0.ph = phi i32 [ -34, %do.end.i ], [ %call.i, %if.end.i.error_ret.thread_crit_edge ], [ %call.i25, %if.end10.error_ret.thread_crit_edge ], [ %call10.i, %ad2s1210_update_frequency_control_word.exit.error_ret.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #8
  br label %16

error_ret:                                        ; preds = %if.end10
  %call1.i = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext 0) #8
  call void @mutex_unlock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp13 = icmp slt i32 %call1.i, 0
  br i1 %cmp13, label %error_ret._crit_edge, label %error_ret.cleanup_crit_edge

error_ret.cleanup_crit_edge:                      ; preds = %error_ret
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_ret._crit_edge:                             ; preds = %error_ret
  call void @__sanitizer_cov_trace_pc() #10
  br label %16

16:                                               ; preds = %error_ret._crit_edge, %error_ret.thread
  %ret.032 = phi i32 [ %ret.0.ph, %error_ret.thread ], [ %call1.i, %error_ret._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %16, %error_ret.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %entry.cleanup_crit_edge ], [ %ret.032, %16 ], [ %len, %error_ret.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclkin) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad2s1210_config_write(ptr noundef %st, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ad2s1210_state, ptr %st, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #8
  %arrayidx4.i = getelementptr %struct.ad2s1210_state, ptr %st, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4.i, align 8
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #8
  %mode7.i = getelementptr inbounds %struct.ad2s1210_state, ptr %st, i32 0, i32 7
  %4 = ptrtoint ptr %mode7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %mode7.i, align 128
  %tx = getelementptr inbounds %struct.ad2s1210_state, ptr %st, i32 0, i32 11
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %data, ptr %tx, align 128
  %sdev = getelementptr inbounds %struct.ad2s1210_state, ptr %st, i32 0, i32 1
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %8 = getelementptr inbounds i8, ptr %t.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tx, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %11 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
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
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  %22 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0)
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_show_fexcit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %fexcit = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fexcit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fexcit, align 8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_store_fexcit(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %fexcit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fexcit) #8
  %2 = ptrtoint ptr %fexcit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fexcit, align 4, !annotation !136
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %fexcit) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fexcit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fexcit, align 4
  %5 = add i32 %4, -20001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -18001, i32 %5)
  %6 = icmp ult i32 %5, -18001
  br i1 %6, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %7 = ptrtoint ptr %fexcit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fexcit, align 4
  %fexcit7 = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %fexcit7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fexcit7, align 8
  %mul.i = shl i32 %8, 15
  %fclkin.i = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %fclkin.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fclkin.i, align 4
  %div.i = udiv i32 %mul.i, %11
  %conv.i = trunc i32 %div.i to i8
  %conv1.i = and i32 %div.i, 255
  %12 = add nsw i32 %conv1.i, -81
  call void @__sanitizer_cov_trace_const_cmp4(i32 -77, i32 %12)
  %13 = icmp ult i32 %12, -77
  br i1 %13, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %sdev.i = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %sdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.16) #11
  br label %error_ret.thread

if.end.i:                                         ; preds = %if.end6
  %call.i = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext -111) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %if.end.i.error_ret.thread_crit_edge, label %ad2s1210_update_frequency_control_word.exit

if.end.i.error_ret.thread_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret.thread

ad2s1210_update_frequency_control_word.exit:      ; preds = %if.end.i
  %call10.i = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp9 = icmp slt i32 %call10.i, 0
  br i1 %cmp9, label %ad2s1210_update_frequency_control_word.exit.error_ret.thread_crit_edge, label %if.end11

ad2s1210_update_frequency_control_word.exit.error_ret.thread_crit_edge: ; preds = %ad2s1210_update_frequency_control_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret.thread

if.end11:                                         ; preds = %ad2s1210_update_frequency_control_word.exit
  %call.i26 = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext -16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i = icmp slt i32 %call.i26, 0
  br i1 %cmp.i, label %if.end11.error_ret.thread_crit_edge, label %error_ret

if.end11.error_ret.thread_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret.thread

error_ret.thread:                                 ; preds = %if.end11.error_ret.thread_crit_edge, %ad2s1210_update_frequency_control_word.exit.error_ret.thread_crit_edge, %if.end.i.error_ret.thread_crit_edge, %do.end.i
  %ret.0.ph = phi i32 [ -34, %do.end.i ], [ %call.i, %if.end.i.error_ret.thread_crit_edge ], [ %call.i26, %if.end11.error_ret.thread_crit_edge ], [ %call10.i, %ad2s1210_update_frequency_control_word.exit.error_ret.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #8
  br label %16

error_ret:                                        ; preds = %if.end11
  %call1.i = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext 0) #8
  call void @mutex_unlock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp14 = icmp slt i32 %call1.i, 0
  br i1 %cmp14, label %error_ret._crit_edge, label %error_ret.cleanup_crit_edge

error_ret.cleanup_crit_edge:                      ; preds = %error_ret
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_ret._crit_edge:                             ; preds = %error_ret
  call void @__sanitizer_cov_trace_pc() #10
  br label %16

16:                                               ; preds = %error_ret._crit_edge, %error_ret.thread
  %ret.033 = phi i32 [ %ret.0.ph, %error_ret.thread ], [ %call1.i, %error_ret._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %16, %error_ret.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %entry.cleanup_crit_edge ], [ %ret.033, %16 ], [ %len, %error_ret.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fexcit) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_show_control(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %call2 = tail call fastcc i32 @ad2s1210_config_read(ptr noundef %1, i8 noundef zeroext -110)
  tail call void @mutex_unlock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %call2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call4, %cond.false ], [ %call2, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_store_control(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %udata = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udata) #8
  %2 = ptrtoint ptr %udata to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %udata, align 1, !annotation !136
  %call2 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %udata) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %call3 = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext -110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.error_ret_crit_edge, label %if.end5

if.end.error_ret_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %udata to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %udata, align 1
  %5 = and i8 %4, 127
  %call7 = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.error_ret_crit_edge, label %if.end11

if.end5.error_ret_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end11:                                         ; preds = %if.end5
  %call12 = call fastcc i32 @ad2s1210_config_read(ptr noundef %1, i8 noundef zeroext -110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.error_ret_crit_edge, label %if.end16

if.end11.error_ret_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end16:                                         ; preds = %if.end11
  %and17 = and i32 %call12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  br label %error_ret

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i8 %4, 3
  %and22 = zext i8 %6 to i32
  %arrayidx = getelementptr [4 x i32], ptr @ad2s1210_resolution_value, i32 0, i32 %and22
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %conv23 = trunc i32 %8 to i8
  %resolution = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %resolution to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv23, ptr %resolution, align 1
  %arrayidx.i = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = trunc i32 %8 to i16
  %conv.i = and i16 %12, 255
  %sub.i = add nsw i16 %conv.i, -10
  %div14.i = sdiv i16 %sub.i, 2
  %div.sext.i = sext i16 %div14.i to i32
  %arrayidx1.i = getelementptr [4 x [2 x i32]], ptr @ad2s1210_res_pins, i32 0, i32 %div.sext.i
  %13 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1.i, align 4
  call void @gpiod_set_value(ptr noundef %11, i32 noundef %14) #8
  %arrayidx4.i = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4.i, align 16
  %17 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %resolution, align 1
  %conv6.i = zext i8 %18 to i16
  %sub7.i = add nsw i16 %conv6.i, -10
  %div815.i = sdiv i16 %sub7.i, 2
  %div8.sext.i = sext i16 %div815.i to i32
  %arrayidx10.i = getelementptr [4 x [2 x i32]], ptr @ad2s1210_res_pins, i32 0, i32 %div8.sext.i, i32 1
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx10.i, align 4
  call void @gpiod_set_value(ptr noundef %16, i32 noundef %20) #8
  %hysteresis = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 5
  %and25 = lshr i8 %4, 4
  %and25.lobit = and i8 %and25, 1
  %21 = ptrtoint ptr %hysteresis to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %and25.lobit, ptr %hysteresis, align 4
  br label %error_ret

error_ret:                                        ; preds = %if.end20, %if.then19, %if.end11.error_ret_crit_edge, %if.end5.error_ret_crit_edge, %if.end.error_ret_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.error_ret_crit_edge ], [ %call7, %if.end5.error_ret_crit_edge ], [ %call12, %if.end11.error_ret_crit_edge ], [ -5, %if.then19 ], [ %len, %if.end20 ]
  call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %error_ret, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_ret ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udata) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad2s1210_config_read(ptr noundef %st, i8 noundef zeroext %address) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfers = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers) #8
  %0 = getelementptr inbounds i8, ptr %xfers, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 180)
  %tx = getelementptr inbounds %struct.ad2s1210_state, ptr %st, i32 0, i32 11
  %2 = ptrtoint ptr %xfers to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tx, ptr %xfers, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 1
  %rx = getelementptr inbounds %struct.ad2s1210_state, ptr %st, i32 0, i32 9
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rx, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 7
  %5 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %cs_change, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1
  %arrayidx4 = getelementptr %struct.ad2s1210_state, ptr %st, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx4, ptr %arrayinit.element, align 4
  %rx_buf5 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 1
  %arrayidx7 = getelementptr %struct.ad2s1210_state, ptr %st, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %rx_buf5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx7, ptr %rx_buf5, align 4
  %len8 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 2
  %8 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %len8, align 4
  %arrayidx.i = getelementptr %struct.ad2s1210_state, ptr %st, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 1) #8
  %arrayidx4.i = getelementptr %struct.ad2s1210_state, ptr %st, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4.i, align 8
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 0) #8
  %mode7.i = getelementptr inbounds %struct.ad2s1210_state, ptr %st, i32 0, i32 7
  %13 = ptrtoint ptr %mode7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %mode7.i, align 128
  %14 = or i8 %address, -128
  %15 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %tx, align 128
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %arrayidx4, align 1
  %sdev = getelementptr inbounds %struct.ad2s1210_state, ptr %st, i32 0, i32 1
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %19 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18
  %29 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %30, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i.i.i.1, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i.i.i.1, ptr %30, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %18, ptr noundef nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge, label %if.end

spi_message_add_tail.exit.i.i.1.cleanup_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx7, align 1
  %conv21 = zext i8 %36 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv21, %if.end ], [ %call.i, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_show_resolution(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %resolution = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %resolution, align 1
  %conv = zext i8 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_store_resolution(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %udata = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udata) #8
  %2 = ptrtoint ptr %udata to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %udata, align 1, !annotation !136
  %call2 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %udata) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %udata to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %udata, align 1
  %5 = add i8 %4, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %5)
  %6 = icmp ult i8 %5, -7
  br i1 %6, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %call8 = call fastcc i32 @ad2s1210_config_read(ptr noundef %1, i8 noundef zeroext -110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.error_ret_crit_edge, label %if.end12

if.end.error_ret_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end12:                                         ; preds = %if.end
  %7 = ptrtoint ptr %udata to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %udata, align 1
  %call19 = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext -110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end12.error_ret_crit_edge, label %if.end23

if.end12.error_ret_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end23:                                         ; preds = %if.end12
  %conv15 = and i32 %call8, 124
  %conv16 = zext i8 %8 to i32
  %sub = add nuw nsw i32 %conv16, 246
  %9 = lshr i32 %sub, 1
  %.masked = and i32 %9, 127
  %and25 = or i32 %.masked, %conv15
  %conv26 = trunc i32 %and25 to i8
  %call27 = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext %conv26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end23.error_ret_crit_edge, label %if.end31

if.end23.error_ret_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end31:                                         ; preds = %if.end23
  %call32 = call fastcc i32 @ad2s1210_config_read(ptr noundef %1, i8 noundef zeroext -110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.error_ret_crit_edge, label %if.end36

if.end31.error_ret_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end36:                                         ; preds = %if.end31
  %and39 = and i32 %call32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end45, label %if.then41

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %error_ret

if.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %and47 = and i32 %call32, 3
  %arrayidx = getelementptr [4 x i32], ptr @ad2s1210_resolution_value, i32 0, i32 %and47
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %conv48 = trunc i32 %11 to i8
  %resolution = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %resolution to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv48, ptr %resolution, align 1
  %arrayidx.i = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %15 = trunc i32 %11 to i16
  %conv.i = and i16 %15, 255
  %sub.i = add nsw i16 %conv.i, -10
  %div14.i = sdiv i16 %sub.i, 2
  %div.sext.i = sext i16 %div14.i to i32
  %arrayidx1.i = getelementptr [4 x [2 x i32]], ptr @ad2s1210_res_pins, i32 0, i32 %div.sext.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.i, align 4
  call void @gpiod_set_value(ptr noundef %14, i32 noundef %17) #8
  %arrayidx4.i = getelementptr %struct.ad2s1210_state, ptr %1, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4.i, align 16
  %20 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %resolution, align 1
  %conv6.i = zext i8 %21 to i16
  %sub7.i = add nsw i16 %conv6.i, -10
  %div815.i = sdiv i16 %sub7.i, 2
  %div8.sext.i = sext i16 %div815.i to i32
  %arrayidx10.i = getelementptr [4 x [2 x i32]], ptr @ad2s1210_res_pins, i32 0, i32 %div8.sext.i, i32 1
  %22 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx10.i, align 4
  call void @gpiod_set_value(ptr noundef %19, i32 noundef %23) #8
  br label %error_ret

error_ret:                                        ; preds = %if.end45, %if.then41, %if.end31.error_ret_crit_edge, %if.end23.error_ret_crit_edge, %if.end12.error_ret_crit_edge, %if.end.error_ret_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end.error_ret_crit_edge ], [ %call19, %if.end12.error_ret_crit_edge ], [ %call27, %if.end23.error_ret_crit_edge ], [ %call32, %if.end31.error_ret_crit_edge ], [ -5, %if.then41 ], [ %len, %if.end45 ]
  call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %error_ret, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %error_ret ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udata) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_show_fault(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %call2 = tail call fastcc i32 @ad2s1210_config_read(ptr noundef %1, i8 noundef zeroext -1)
  tail call void @mutex_unlock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call4, %cond.false ], [ %call2, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_clear_fault(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %gpios = getelementptr inbounds %struct.ad2s1210_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 32
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #8
  %5 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpios, align 32
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 1) #8
  %call4 = tail call fastcc i32 @ad2s1210_config_read(ptr noundef %1, i8 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.error_ret_crit_edge, label %if.end

entry.error_ret_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpios, align 32
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #8
  %9 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpios, align 32
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 1) #8
  br label %error_ret

error_ret:                                        ; preds = %if.end, %entry.error_ret_crit_edge
  %call4.len = phi i32 [ %call4, %entry.error_ret_crit_edge ], [ %len, %if.end ]
  tail call void @mutex_unlock(ptr noundef %1) #8
  ret i32 %call4.len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_show_reg(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %address, align 8
  %conv = trunc i64 %3 to i8
  %call2 = tail call fastcc i32 @ad2s1210_config_read(ptr noundef %1, i8 noundef zeroext %conv)
  tail call void @mutex_unlock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %call2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call5, %cond.false ], [ %call2, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad2s1210_store_reg(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !136
  %call2 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %address, align 8
  %conv = trunc i64 %4 to i8
  %call3 = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.error_ret_crit_edge, label %if.end6

if.end.error_ret_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  %7 = and i8 %6, 127
  %call9 = call fastcc i32 @ad2s1210_config_write(ptr noundef %1, i8 noundef zeroext %7)
  br label %error_ret

error_ret:                                        ; preds = %if.end6, %if.end.error_ret_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.error_ret_crit_edge ], [ %call9, %if.end6 ]
  call void @mutex_unlock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp11 = icmp slt i32 %ret.0, 0
  %ret.0.len = select i1 %cmp11, i32 %ret.0, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %error_ret, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.len, %error_ret ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !64, !65, !67, !68, !69, !70, !72, !73, !75, !77, !78, !79, !80, !82, !84, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__initcall__kmod_ad2s1210__230_712_ad2s1210_driver_init6, !1, !"__initcall__kmod_ad2s1210__230_712_ad2s1210_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 712, i32 1}
!2 = !{ptr @__exitcall_ad2s1210_driver_exit, !1, !"__exitcall_ad2s1210_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 714, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 715, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 716, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 706, i32 11}
!12 = !{ptr @ad2s1210_driver, !13, !"ad2s1210_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 704, i32 26}
!14 = !{ptr @ad2s1210_id, !15, !"ad2s1210_id", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 698, i32 35}
!16 = !{ptr @ad2s1210_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 667, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 641, i32 4}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ad2s1210_setup_gpios._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ad2s1210_setup_gpios._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 79, i32 32}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 80, i32 28}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 81, i32 28}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 82, i32 30}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 83, i32 30}
!37 = distinct !{null, !38, !"gpios", i1 false, i1 false}
!38 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 78, i32 35}
!39 = !{ptr @ad2s1210_info, !40, !"ad2s1210_info", i1 false, i1 false}
!40 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 626, i32 30}
!41 = !{ptr @ad2s1210_attribute_group, !42, !"ad2s1210_attribute_group", i1 false, i1 false}
!42 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 588, i32 37}
!43 = !{ptr @ad2s1210_attributes, !44, !"ad2s1210_attributes", i1 false, i1 false}
!44 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 572, i32 26}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 525, i32 8}
!47 = !{ptr @iio_dev_attr_fclkin, !46, !"iio_dev_attr_fclkin", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 205, i32 22}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 221, i32 3}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ad2s1210_store_fclkin._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ad2s1210_store_fclkin._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 165, i32 3}
!57 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ad2s1210_update_frequency_control_word._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ad2s1210_update_frequency_control_word._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"ad2s1210_mode_vals", i1 false, i1 false}
!61 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 101, i32 18}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 527, i32 8}
!64 = !{ptr @iio_dev_attr_fexcit, !63, !"iio_dev_attr_fexcit", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 259, i32 3}
!67 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ad2s1210_store_fexcit._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @ad2s1210_store_fexcit._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 529, i32 8}
!72 = !{ptr @iio_dev_attr_control, !71, !"iio_dev_attr_control", i1 false, i1 false}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 285, i32 38}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 315, i32 3}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ad2s1210_store_control._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ad2s1210_store_control._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @ad2s1210_resolution_value, !81, !"ad2s1210_resolution_value", i1 false, i1 false}
!81 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 86, i32 27}
!82 = !{ptr @ad2s1210_res_pins, !83, !"ad2s1210_res_pins", i1 false, i1 false}
!83 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 176, i32 18}
!84 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 531, i32 8}
!86 = !{ptr @iio_dev_attr_bits, !85, !"iio_dev_attr_bits", i1 false, i1 false}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 336, i32 22}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 350, i32 3}
!91 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ad2s1210_store_resolution._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @ad2s1210_store_resolution._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 372, i32 3}
!96 = !{ptr @ad2s1210_store_resolution._entry.29, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @ad2s1210_store_resolution._entry_ptr.31, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 533, i32 8}
!100 = !{ptr @iio_dev_attr_fault, !99, !"iio_dev_attr_fault", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 536, i32 8}
!103 = !{ptr @iio_dev_attr_los_thrd, !102, !"iio_dev_attr_los_thrd", i1 false, i1 false}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 539, i32 8}
!106 = !{ptr @iio_dev_attr_dos_ovr_thrd, !105, !"iio_dev_attr_dos_ovr_thrd", i1 false, i1 false}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 542, i32 8}
!109 = !{ptr @iio_dev_attr_dos_mis_thrd, !108, !"iio_dev_attr_dos_mis_thrd", i1 false, i1 false}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 545, i32 8}
!112 = !{ptr @iio_dev_attr_dos_rst_max_thrd, !111, !"iio_dev_attr_dos_rst_max_thrd", i1 false, i1 false}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 548, i32 8}
!115 = !{ptr @iio_dev_attr_dos_rst_min_thrd, !114, !"iio_dev_attr_dos_rst_min_thrd", i1 false, i1 false}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 551, i32 8}
!118 = !{ptr @iio_dev_attr_lot_high_thrd, !117, !"iio_dev_attr_lot_high_thrd", i1 false, i1 false}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 554, i32 8}
!121 = !{ptr @iio_dev_attr_lot_low_thrd, !120, !"iio_dev_attr_lot_low_thrd", i1 false, i1 false}
!122 = !{ptr @ad2s1210_channels, !123, !"ad2s1210_channels", i1 false, i1 false}
!123 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 558, i32 35}
!124 = !{ptr @ad2s1210_of_match, !125, !"ad2s1210_of_match", i1 false, i1 false}
!125 = !{!"../drivers/staging/iio/resolver/ad2s1210.c", i32 692, i32 34}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i8 0, i8 2}
!136 = !{!"auto-init"}
