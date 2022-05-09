; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/adi-axi-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/adi-axi-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adi_axi_adc_conv_priv\22, \22a\22\09"
module asm "\09.weak\09__crc_adi_axi_adc_conv_priv\09\09\09\09"
module asm "\09.long\09__crc_adi_axi_adc_conv_priv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adi_axi_adc_conv_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22adi_axi_adc_conv_priv\22\09\09\09\09\09"
module asm "__kstrtabns_adi_axi_adc_conv_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_adi_axi_adc_conv_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_adi_axi_adc_conv_register\09\09\09\09"
module asm "\09.long\09__crc_devm_adi_axi_adc_conv_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_adi_axi_adc_conv_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_adi_axi_adc_conv_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_adi_axi_adc_conv_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.adi_axi_adc_core_info = type { i32 }
%struct.adi_axi_adc_client = type { %struct.list_head, %struct.adi_axi_adc_conv, ptr, ptr, ptr }
%struct.adi_axi_adc_conv = type { ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.adi_axi_adc_state = type { %struct.mutex, ptr, ptr }
%struct.adi_axi_adc_chip_info = type { ptr, i32, ptr, i32, ptr, i32, i32 }

@__kstrtab_adi_axi_adc_conv_priv = external dso_local constant [0 x i8], align 1
@__kstrtabns_adi_axi_adc_conv_priv = external dso_local constant [0 x i8], align 1
@__ksymtab_adi_axi_adc_conv_priv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adi_axi_adc_conv_priv to i32), ptr @__kstrtab_adi_axi_adc_conv_priv, ptr @__kstrtabns_adi_axi_adc_conv_priv }, section "___ksymtab_gpl+adi_axi_adc_conv_priv", align 4
@__kstrtab_devm_adi_axi_adc_conv_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_adi_axi_adc_conv_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_adi_axi_adc_conv_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_adi_axi_adc_conv_register to i32), ptr @__kstrtab_devm_adi_axi_adc_conv_register, ptr @__kstrtabns_devm_adi_axi_adc_conv_register }, section "___ksymtab_gpl+devm_adi_axi_adc_conv_register", align 4
@__initcall__kmod_adi_axi_adc__183_465_adi_axi_adc_driver_init6 = internal global ptr @adi_axi_adc_driver_init, section ".initcall6.init", align 4
@adi_axi_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adi_axi_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adi_axi_adc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_adi_axi_adc_driver_exit = internal global ptr @adi_axi_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [68 x i8] c"adi_axi_adc.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [70 x i8] c"adi_axi_adc.description=Analog Devices Generic AXI ADC IP core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [45 x i8] c"adi_axi_adc.file=drivers/iio/adc/adi-axi-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [27 x i8] c"adi_axi_adc.license=GPL v2\00", section ".modinfo", align 1
@registered_clients_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @registered_clients_lock, i64 52), ptr getelementptr (i8, ptr @registered_clients_lock, i64 52) }, ptr @registered_clients_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@registered_clients = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @registered_clients, ptr @registered_clients }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"registered_clients_lock.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"registered_clients_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adi_axi_adc\00", [20 x i8] zeroinitializer }, align 32
@adi_axi_adc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,axi-adc-10.0.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @adi_axi_adc_10_0_a_info }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adi_axi_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@adi_axi_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 421, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"IP core version is too old. Expected %d.%.2d.%c, Reported %d.%.2d.%c\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adi_axi_adc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/adc/adi-axi-adc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adi_axi_adc_probe._entry_ptr = internal global ptr @adi_axi_adc_probe._entry, section ".printk_index", align 4
@adi_axi_adc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @adi_axi_adc_attribute_group, ptr @adi_axi_adc_read_raw, ptr null, ptr null, ptr @adi_axi_adc_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adi_axi_adc_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adi-axi-adc\00", [20 x i8] zeroinitializer }, align 32
@adi_axi_adc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 446, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AXI ADC IP core (%d.%.2d.%c) probed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adi_axi_adc_probe._entry_ptr.13 = internal global ptr @adi_axi_adc_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adi,adc-dev\00", [20 x i8] zeroinitializer }, align 32
@adi_axi_adc_attach_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 310, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No 'adi,adc-dev' node defined\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adi_axi_adc_attach_client\00", [38 x i8] zeroinitializer }, align 32
@adi_axi_adc_attach_client._entry_ptr = internal global ptr @adi_axi_adc_attach_client._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@adi_axi_adc_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @axi_adc_attr_is_visible, ptr null, ptr @adi_axi_adc_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adi_axi_adc_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_in_voltage_scale_available, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_voltage_scale_available_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_voltage_scale_available\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u.%06u \00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmas\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-names\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@adi_axi_adc_10_0_a_info = internal constant { %struct.adi_axi_adc_core_info, [28 x i8] } { %struct.adi_axi_adc_core_info { i32 655457 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"adi_axi_adc_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 458, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"registered_clients_lock\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"registered_clients\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 75, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 76, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 460, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"adi_axi_adc_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 452, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 401, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 414, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"adi_axi_adc_info\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 287, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 426, i32 20 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 443, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 308, i32 39 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 310, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"adi_axi_adc_attribute_group\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 282, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant [23 x i8] c"adi_axi_adc_attributes\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 259, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_in_voltage_scale_available\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 250, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 243, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 109, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 112, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 113, i32 14 }
@___asan_gen_.118 = private unnamed_addr constant [24 x i8] c"adi_axi_adc_10_0_a_info\00", align 1
@___asan_gen_.119 = private constant [33 x i8] c"../drivers/iio/adc/adi-axi-adc.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 294, i32 43 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_adi_axi_adc_driver_exit, ptr @__initcall__kmod_adi_axi_adc__183_465_adi_axi_adc_driver_init6, ptr @__ksymtab_adi_axi_adc_conv_priv, ptr @__ksymtab_devm_adi_axi_adc_conv_register, ptr @adi_axi_adc_attach_client._entry, ptr @adi_axi_adc_attach_client._entry_ptr, ptr @adi_axi_adc_driver_exit, ptr @adi_axi_adc_probe._entry, ptr @adi_axi_adc_probe._entry.10, ptr @adi_axi_adc_probe._entry_ptr, ptr @adi_axi_adc_probe._entry_ptr.13, ptr @adi_axi_adc_driver, ptr @registered_clients_lock, ptr @registered_clients, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adi_axi_adc_of_match, ptr @adi_axi_adc_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @adi_axi_adc_info, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @adi_axi_adc_attribute_group, ptr @adi_axi_adc_attributes, ptr @iio_dev_attr_in_voltage_scale_available, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @adi_axi_adc_10_0_a_info], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_axi_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registered_clients_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registered_clients to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_axi_adc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_axi_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_axi_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_axi_adc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_axi_adc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_axi_adc_attach_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_axi_adc_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_axi_adc_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_axi_adc_10_0_a_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @adi_axi_adc_conv_priv(ptr noundef readnone %conv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %conv, i32 120
  ret ptr %add.ptr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_adi_axi_adc_conv_register(ptr noundef %dev, i32 noundef %sizeof_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sizeof_priv)
  %tobool.not.i = icmp eq i32 %sizeof_priv, 0
  %0 = add i32 %sizeof_priv, 255
  %add1.i = and i32 %0, -128
  %alloc_size.0.i = select i1 %tobool.not.i, i32 128, i32 %add1.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %alloc_size.0.i, i32 noundef 3520) #12
  %tobool2.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i, label %entry.cleanup_crit_edge, label %if.end5.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5.i:                                        ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @registered_clients_lock, i32 noundef 0) #9
  %call6.i = tail call ptr @get_device(ptr noundef %dev) #9
  %dev7.i = getelementptr %struct.adi_axi_adc_client, ptr %call9.i.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %dev7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6.i, ptr %dev7.i, align 32
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @registered_clients, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef %2, ptr noundef nonnull @registered_clients) #9
  br i1 %call.i.i.i, label %if.end.i.i15.i, label %if.end5.i.adi_axi_adc_conv_register.exit_crit_edge

if.end5.i.adi_axi_adc_conv_register.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adi_axi_adc_conv_register.exit

if.end.i.i15.i:                                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call9.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @registered_clients, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @registered_clients, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call9.i.i.i, ptr %2, align 4
  br label %adi_axi_adc_conv_register.exit

adi_axi_adc_conv_register.exit:                   ; preds = %if.end.i.i15.i, %if.end5.i.adi_axi_adc_conv_register.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @registered_clients_lock) #9
  %conv.i = getelementptr inbounds %struct.adi_axi_adc_client, ptr %call9.i.i.i, i32 0, i32 1
  %cmp.i = icmp ugt ptr %conv.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %adi_axi_adc_conv_register.exit.cleanup_crit_edge, label %if.end

adi_axi_adc_conv_register.exit.cleanup_crit_edge: ; preds = %adi_axi_adc_conv_register.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %adi_axi_adc_conv_register.exit
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_adi_axi_adc_conv_release, ptr noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i12 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i12, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @registered_clients_lock, i32 noundef 0) #9
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call9.i.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i13, label %if.then.i.if.then3_crit_edge

if.then.i.if.then3_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i.i.i.i13:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr %struct.adi_axi_adc_client, ptr %call9.i.i.i, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i.i, align 4
  %8 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call9.i.i.i, align 128
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %if.then3

if.then3:                                         ; preds = %if.end.i.i.i.i13, %if.then.i.if.then3_crit_edge
  %12 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %call9.i.i.i, align 128
  %prev.i.i.i = getelementptr %struct.adi_axi_adc_client, ptr %call9.i.i.i, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7.i, align 32
  tail call void @put_device(ptr noundef %15) #9
  tail call void @mutex_unlock(ptr noundef nonnull @registered_clients_lock) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  %16 = inttoptr i32 %call.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %adi_axi_adc_conv_register.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %if.then3 ], [ %conv.i, %adi_axi_adc_conv_register.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %conv.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_adi_axi_adc_conv_release(ptr noundef %conv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %conv, i32 -8
  tail call void @mutex_lock_nested(ptr noundef nonnull @registered_clients_lock, i32 noundef 0) #9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.adi_axi_adc_conv_unregister.exit_crit_edge

entry.adi_axi_adc_conv_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %adi_axi_adc_conv_unregister.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %conv, i32 -4
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i.i, align 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %adi_axi_adc_conv_unregister.exit

adi_axi_adc_conv_unregister.exit:                 ; preds = %if.end.i.i.i, %entry.adi_axi_adc_conv_unregister.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i.i, align 4
  %prev.i.i = getelementptr i8, ptr %conv, i32 -4
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %dev.i = getelementptr i8, ptr %conv, i32 24
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void @put_device(ptr noundef %9) #9
  tail call void @mutex_unlock(ptr noundef nonnull @registered_clients_lock) #9
  tail call void @kfree(ptr noundef %add.ptr.i.i) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adi_axi_adc_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adi_axi_adc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adi_axi_adc_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @adi_axi_adc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adi_axi_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %dma_name.i = alloca ptr, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #9
  %2 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %3 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  %tobool3.not.i = icmp eq ptr %4, null
  br i1 %tobool3.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end6.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  br label %if.then

if.end6.i:                                        ; preds = %of_parse_phandle.exit.i
  call void @mutex_lock_nested(ptr noundef nonnull @registered_clients_lock, i32 noundef 0) #9
  %cl.046.i = load ptr, ptr @registered_clients, align 4
  %cmp.not47.i = icmp eq ptr %cl.046.i, @registered_clients
  br i1 %cmp.not47.i, label %if.end6.i.for.end.i_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.for.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %cl.048.i = phi ptr [ %cl.0.i, %for.inc.i.for.body.i_crit_edge ], [ %cl.046.i, %if.end6.i.for.body.i_crit_edge ]
  %dev8.i = getelementptr inbounds %struct.adi_axi_adc_client, ptr %cl.048.i, i32 0, i32 3
  %5 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev8.i, align 4
  %tobool9.not.i = icmp eq ptr %6, null
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i
  %of_node13.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node13.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node13.i, align 8
  %cmp14.not.i = icmp eq ptr %8, %4
  br i1 %cmp14.not.i, label %if.end16.i, label %if.end11.i.for.inc.i_crit_edge

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end16.i:                                       ; preds = %if.end11.i
  %dev8.i.le = getelementptr inbounds %struct.adi_axi_adc_client, ptr %cl.048.i, i32 0, i32 3
  %driver.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver.i, align 4
  %owner.i = getelementptr inbounds %struct.device_driver, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner.i, align 4
  %call18.i = call zeroext i1 @try_module_get(ptr noundef %12) #9
  br i1 %call18.i, label %adi_axi_adc_attach_client.exit, label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef nonnull @registered_clients_lock) #9
  br label %if.then

for.inc.i:                                        ; preds = %if.end11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %cl.048.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cl.0.i = load ptr, ptr %cl.048.i, align 4
  %cmp.not.i = icmp eq ptr %cl.0.i, @registered_clients
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end6.i.for.end.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @registered_clients_lock) #9
  br label %if.then

adi_axi_adc_attach_client.exit:                   ; preds = %if.end16.i
  %14 = ptrtoint ptr %dev8.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev8.i.le, align 4
  %call23.i = call ptr @get_device(ptr noundef %15) #9
  %info24.i = getelementptr inbounds %struct.adi_axi_adc_client, ptr %cl.048.i, i32 0, i32 4
  %16 = ptrtoint ptr %info24.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %info24.i, align 4
  call void @mutex_unlock(ptr noundef nonnull @registered_clients_lock) #9
  %cmp.i = icmp ugt ptr %cl.048.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %adi_axi_adc_attach_client.exit.if.then_crit_edge, label %if.end

adi_axi_adc_attach_client.exit.if.then_crit_edge: ; preds = %adi_axi_adc_attach_client.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %adi_axi_adc_attach_client.exit.if.then_crit_edge, %for.end.i, %if.then19.i, %do.end.i, %entry.if.then_crit_edge
  %retval.0.i146 = phi ptr [ %cl.048.i, %adi_axi_adc_attach_client.exit.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %do.end.i ], [ inttoptr (i32 -517 to ptr), %for.end.i ], [ inttoptr (i32 -19 to ptr), %if.then19.i ]
  %17 = ptrtoint ptr %retval.0.i146 to i32
  br label %cleanup

if.end:                                           ; preds = %adi_axi_adc_attach_client.exit
  %call.i125 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @adi_axi_adc_cleanup, ptr noundef %cl.048.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i126 = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i126, label %if.end6, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %dev8.i.le to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev8.i.le, align 4
  call void @put_device(ptr noundef %19) #9
  %20 = ptrtoint ptr %dev8.i.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev8.i.le, align 4
  %driver.i142 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %driver.i142 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver.i142, align 4
  %owner.i143 = getelementptr inbounds %struct.device_driver, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %owner.i143 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %owner.i143, align 4
  call void @module_put(ptr noundef %25) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 100) #9
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call8, i32 0, i32 19
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 8
  %client = getelementptr inbounds %struct.adi_axi_adc_state, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cl.048.i, ptr %client, align 4
  %state = getelementptr inbounds %struct.adi_axi_adc_client, ptr %cl.048.i, i32 0, i32 2
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %state, align 4
  call void @__mutex_init(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull @adi_axi_adc_probe.__key) #9
  %call13 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.adi_axi_adc_state, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call13, ptr %regs, align 4
  %cmp.i128 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %32 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call13, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 214748000) #9
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %45, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 33554432) #9, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 214748000) #9
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %57, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 50331648) #9, !srcloc !80
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !81
  %61 = call i32 @llvm.bswap.i32(i32 %60) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %62 = ptrtoint ptr %info24.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %info24.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %61)
  %cmp23 = icmp ugt i32 %65, %61
  br i1 %cmp23, label %do.end28, label %if.end44

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %65, 16
  %and = and i32 %shr, 255
  %shr34 = lshr i32 %65, 8
  %and35 = and i32 %shr34, 255
  %and38 = and i32 %65, 255
  %shr39 = lshr i32 %61, 16
  %and40 = and i32 %shr39, 255
  %shr41 = lshr i32 %61, 8
  %and42 = and i32 %shr41, 255
  %and43 = and i32 %61, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %and, i32 noundef %and35, i32 noundef %and38, i32 noundef %and40, i32 noundef %and42, i32 noundef %and43) #13
  br label %cleanup

if.end44:                                         ; preds = %if.end19
  %conv21 = getelementptr inbounds %struct.adi_axi_adc_client, ptr %33, i32 0, i32 1
  %info45 = getelementptr inbounds %struct.iio_dev, ptr %call8, i32 0, i32 17
  %66 = ptrtoint ptr %info45 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @adi_axi_adc_info, ptr %info45, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call8, i32 0, i32 15
  %67 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.9, ptr %name, align 8
  %68 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %call8, align 8
  %69 = ptrtoint ptr %conv21 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %conv21, align 4
  %num_channels = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_channels, align 4
  %num_channels46 = getelementptr inbounds %struct.iio_dev, ptr %call8, i32 0, i32 14
  %73 = ptrtoint ptr %num_channels46 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %num_channels46, align 4
  %74 = load ptr, ptr %conv21, align 4
  %channels = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %channels, align 4
  %channels48 = getelementptr inbounds %struct.iio_dev, ptr %call8, i32 0, i32 13
  %77 = ptrtoint ptr %channels48 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %channels48, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_name.i) #9
  %78 = ptrtoint ptr %dma_name.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 -1 to ptr), ptr %dma_name.i, align 4, !annotation !83
  %call.i129 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br i1 %call.i129, label %if.end.i131, label %adi_axi_adc_config_dma_buffer.exit.thread

adi_axi_adc_config_dma_buffer.exit.thread:        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_name.i) #9
  br label %if.end53

if.end.i131:                                      ; preds = %if.end44
  %call1.i = call i32 @device_property_read_string(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull %dma_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i130 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i130, label %if.end.i131.adi_axi_adc_config_dma_buffer.exit_crit_edge, label %if.then2.i

if.end.i131.adi_axi_adc_config_dma_buffer.exit_crit_edge: ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %adi_axi_adc_config_dma_buffer.exit

if.then2.i:                                       ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %dma_name.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.21, ptr %dma_name.i, align 4
  br label %adi_axi_adc_config_dma_buffer.exit

adi_axi_adc_config_dma_buffer.exit:               ; preds = %if.then2.i, %if.end.i131.adi_axi_adc_config_dma_buffer.exit_crit_edge
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %call8, i32 0, i32 2, i32 1
  %80 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent.i, align 8
  %82 = ptrtoint ptr %dma_name.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dma_name.i, align 4
  %call5.i = call i32 @devm_iio_dmaengine_buffer_setup(ptr noundef %81, ptr noundef nonnull %call8, ptr noundef %83) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool51.not = icmp eq i32 %call5.i, 0
  br i1 %tobool51.not, label %adi_axi_adc_config_dma_buffer.exit.if.end53_crit_edge, label %adi_axi_adc_config_dma_buffer.exit.cleanup_crit_edge

adi_axi_adc_config_dma_buffer.exit.cleanup_crit_edge: ; preds = %adi_axi_adc_config_dma_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

adi_axi_adc_config_dma_buffer.exit.if.end53_crit_edge: ; preds = %adi_axi_adc_config_dma_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end53:                                         ; preds = %adi_axi_adc_config_dma_buffer.exit.if.end53_crit_edge, %adi_axi_adc_config_dma_buffer.exit.thread
  %84 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %client, align 4
  %conv1.i = getelementptr inbounds %struct.adi_axi_adc_client, ptr %85, i32 0, i32 1
  %preenable_setup.i = getelementptr inbounds %struct.adi_axi_adc_client, ptr %85, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %preenable_setup.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %preenable_setup.i, align 4
  %tobool.not.i133 = icmp eq ptr %87, null
  br i1 %tobool.not.i133, label %if.end53.if.end5.i_crit_edge, label %if.then.i136

if.end53.if.end5.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i136:                                     ; preds = %if.end53
  %call.i134 = call i32 %87(ptr noundef %conv1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool3.not.i135 = icmp eq i32 %call.i134, 0
  br i1 %tobool3.not.i135, label %if.then.i136.if.end5.i_crit_edge, label %if.then.i136.cleanup_crit_edge

if.then.i136.cleanup_crit_edge:                   ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i136.if.end5.i_crit_edge:                 ; preds = %if.then.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i136.if.end5.i_crit_edge, %if.end53.if.end5.i_crit_edge
  %88 = ptrtoint ptr %conv1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %conv1.i, align 4
  %num_channels1.i = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %num_channels1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_channels1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp2.not.i = icmp eq i32 %91, 0
  br i1 %cmp2.not.i, label %if.end5.i.if.end58_crit_edge, label %if.end5.i.for.body.i140_crit_edge

if.end5.i.for.body.i140_crit_edge:                ; preds = %if.end5.i
  br label %for.body.i140

if.end5.i.if.end58_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

for.body.i140:                                    ; preds = %for.body.i140.for.body.i140_crit_edge, %if.end5.i.for.body.i140_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i140.for.body.i140_crit_edge ], [ 0, %if.end5.i.for.body.i140_crit_edge ]
  %mul.i = shl i32 %i.03.i, 6
  %add.i = add i32 %mul.i, 1024
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %add.ptr.i.i138 = getelementptr i8, ptr %93, i32 %add.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i138, i32 1358954496) #9, !srcloc !80
  %inc.i = add nuw i32 %i.03.i, 1
  %94 = ptrtoint ptr %conv1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %conv1.i, align 4
  %num_channels.i = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_channels.i, align 4
  %cmp.i139 = icmp ult i32 %inc.i, %97
  br i1 %cmp.i139, label %for.body.i140.for.body.i140_crit_edge, label %for.body.i140.if.end58_crit_edge

for.body.i140.if.end58_crit_edge:                 ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

for.body.i140.for.body.i140_crit_edge:            ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i140

if.end58:                                         ; preds = %for.body.i140.if.end58_crit_edge, %if.end5.i.if.end58_crit_edge
  %call60 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call8, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end66, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %shr68 = lshr i32 %61, 16
  %and69 = and i32 %shr68, 255
  %shr70 = lshr i32 %61, 8
  %and71 = and i32 %shr70, 255
  %and72 = and i32 %61, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %and69, i32 noundef %and71, i32 noundef %and72) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %if.end58.cleanup_crit_edge, %if.then.i136.cleanup_crit_edge, %adi_axi_adc_config_dma_buffer.exit.cleanup_crit_edge, %do.end28, %if.then16, %if.end6.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ %31, %if.then16 ], [ -19, %do.end28 ], [ 0, %do.end66 ], [ %call.i125, %devm_add_action_or_reset.exit ], [ -12, %if.end6.cleanup_crit_edge ], [ %call5.i, %adi_axi_adc_config_dma_buffer.exit.cleanup_crit_edge ], [ %call60, %if.end58.cleanup_crit_edge ], [ %call.i134, %if.then.i136.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adi_axi_adc_cleanup(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.adi_axi_adc_client, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @put_device(ptr noundef %1) #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adi_axi_adc_read_raw(ptr nocapture noundef readonly %indio_dev, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client = getelementptr inbounds %struct.adi_axi_adc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %read_raw = getelementptr inbounds %struct.adi_axi_adc_client, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %read_raw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_raw, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1 = getelementptr inbounds %struct.adi_axi_adc_client, ptr %3, i32 0, i32 1
  %call3 = tail call i32 %5(ptr noundef %conv1, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adi_axi_adc_write_raw(ptr nocapture noundef readonly %indio_dev, ptr noundef %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client = getelementptr inbounds %struct.adi_axi_adc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %write_raw = getelementptr inbounds %struct.adi_axi_adc_client, ptr %3, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %write_raw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_raw, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1 = getelementptr inbounds %struct.adi_axi_adc_client, ptr %3, i32 0, i32 1
  %call3 = tail call i32 %5(ptr noundef %conv1, ptr noundef %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adi_axi_adc_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client = getelementptr inbounds %struct.adi_axi_adc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %conv1 = getelementptr inbounds %struct.adi_axi_adc_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %conv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conv1, align 4
  %num_channels17 = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %num_channels17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_channels17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp18.not = icmp eq i32 %7, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regs.i = getelementptr inbounds %struct.adi_axi_adc_state, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.019, 6
  %add = add i32 %mul, 1024
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  %div3.i = lshr i32 %i.019, 5
  %arrayidx.i = getelementptr i32, ptr %scan_mask, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.019, 31
  %13 = and i32 %10, -16777217
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = lshr i32 %12, %and.i
  %16 = and i32 %15, 1
  %ctrl.0 = or i32 %16, %14
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !79
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %19) #9, !srcloc !80
  %inc = add nuw i32 %i.019, 1
  %20 = ptrtoint ptr %conv1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conv1, align 4
  %num_channels = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @axi_adc_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cond = icmp eq i32 %n, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %entry
  %priv.i = getelementptr i8, ptr %kobj, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client = getelementptr inbounds %struct.adi_axi_adc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %conv3 = getelementptr inbounds %struct.adi_axi_adc_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %conv3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conv3, align 4
  %num_scales = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %num_scales to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_scales, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %mode4 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %8 = ptrtoint ptr %mode4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode4, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %sw.bb.cleanup_crit_edge ], [ %9, %cleanup.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_voltage_scale_available_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client = getelementptr inbounds %struct.adi_axi_adc_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %conv2 = getelementptr inbounds %struct.adi_axi_adc_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %conv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conv2, align 4
  %num_scales19 = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %num_scales19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_scales19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp20 = icmp sgt i32 %7, 0
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %8 = phi ptr [ %16, %for.body.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %len.021 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %scale_table = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %scale_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scale_table, align 4
  %arrayidx = getelementptr [2 x i32], ptr %10, i32 %i.022
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.021
  %sub = sub i32 4096, %len.021
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr i32, ptr %arrayidx, i32 1
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.18, i32 noundef %12, i32 noundef %14) #9
  %add = add i32 %call7, %len.021
  %inc = add nuw nsw i32 %i.022, 1
  %15 = ptrtoint ptr %conv2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conv2, align 4
  %num_scales = getelementptr inbounds %struct.adi_axi_adc_chip_info, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %num_scales to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_scales, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %sub8 = add i32 %len.0.lcssa, -1
  %arrayidx9 = getelementptr i8, ptr %buf, i32 %sub8
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %arrayidx9, align 1
  ret i32 %len.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_dmaengine_buffer_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__ksymtab_adi_axi_adc_conv_priv, !1, !"__ksymtab_adi_axi_adc_conv_priv", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 89, i32 1}
!2 = !{ptr @__ksymtab_devm_adi_axi_adc_conv_register, !3, !"__ksymtab_devm_adi_axi_adc_conv_register", i1 false, i1 false}
!3 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 227, i32 1}
!4 = !{ptr @__initcall__kmod_adi_axi_adc__183_465_adi_axi_adc_driver_init6, !5, !"__initcall__kmod_adi_axi_adc__183_465_adi_axi_adc_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 465, i32 1}
!6 = !{ptr @__exitcall_adi_axi_adc_driver_exit, !5, !"__exitcall_adi_axi_adc_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author184, !8, !"__UNIQUE_ID_author184", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 467, i32 1}
!9 = !{ptr @__UNIQUE_ID_description185, !10, !"__UNIQUE_ID_description185", i1 false, i1 false}
!10 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 468, i32 1}
!11 = !{ptr @__UNIQUE_ID_file186, !12, !"__UNIQUE_ID_file186", i1 false, i1 false}
!12 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 469, i32 1}
!13 = !{ptr @__UNIQUE_ID_license187, !12, !"__UNIQUE_ID_license187", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 76, i32 8}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @registered_clients_lock, !15, !"registered_clients_lock", i1 false, i1 false}
!18 = !{ptr @registered_clients, !19, !"registered_clients", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 75, i32 8}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 460, i32 11}
!22 = !{ptr @adi_axi_adc_driver, !23, !"adi_axi_adc_driver", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 458, i32 31}
!24 = !{ptr @adi_axi_adc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 401, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 414, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @adi_axi_adc_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @adi_axi_adc_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 426, i32 20}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 443, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @adi_axi_adc_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @adi_axi_adc_probe._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 308, i32 39}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 310, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @adi_axi_adc_attach_client._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @adi_axi_adc_attach_client._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @adi_axi_adc_info, !50, !"adi_axi_adc_info", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 287, i32 30}
!51 = !{ptr @adi_axi_adc_attribute_group, !52, !"adi_axi_adc_attribute_group", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 282, i32 37}
!53 = !{ptr @adi_axi_adc_attributes, !54, !"adi_axi_adc_attributes", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 259, i32 26}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 250, i32 8}
!57 = !{ptr @iio_dev_attr_in_voltage_scale_available, !56, !"iio_dev_attr_in_voltage_scale_available", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 243, i32 6}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 109, i32 36}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 112, i32 39}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 113, i32 14}
!66 = !{ptr @adi_axi_adc_of_match, !67, !"adi_axi_adc_of_match", i1 false, i1 false}
!67 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 452, i32 34}
!68 = !{ptr @adi_axi_adc_10_0_a_info, !69, !"adi_axi_adc_10_0_a_info", i1 false, i1 false}
!69 = !{!"../drivers/iio/adc/adi-axi-adc.c", i32 294, i32 43}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2149608072}
!80 = !{i64 2065950}
!81 = !{i64 2066368}
!82 = !{i64 2149606717}
!83 = !{!"auto-init"}
