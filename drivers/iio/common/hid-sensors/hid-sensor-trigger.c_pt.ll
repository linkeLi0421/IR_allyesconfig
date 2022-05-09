; ModuleID = '/llk/IR_all_yes/drivers/iio/common/hid-sensors/hid-sensor-trigger.c_pt.bc'
source_filename = "../drivers/iio/common/hid-sensors/hid-sensor-trigger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hid_sensor_power_state\22, \22a\22\09"
module asm "\09.weak\09__crc_hid_sensor_power_state\09\09\09\09"
module asm "\09.long\09__crc_hid_sensor_power_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_sensor_power_state:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_sensor_power_state\22\09\09\09\09\09"
module asm "__kstrtabns_hid_sensor_power_state:\09\09\09\09\09"
module asm "\09.asciz \09\22IIO_HID\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hid_sensor_remove_trigger\22, \22a\22\09"
module asm "\09.weak\09__crc_hid_sensor_remove_trigger\09\09\09\09"
module asm "\09.long\09__crc_hid_sensor_remove_trigger\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_sensor_remove_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_sensor_remove_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_hid_sensor_remove_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22IIO_HID\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hid_sensor_setup_trigger\22, \22a\22\09"
module asm "\09.weak\09__crc_hid_sensor_setup_trigger\09\09\09\09"
module asm "\09.long\09__crc_hid_sensor_setup_trigger\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_sensor_setup_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_sensor_setup_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_hid_sensor_setup_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22IIO_HID\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hid_sensor_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_hid_sensor_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_hid_sensor_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hid_sensor_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22hid_sensor_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_hid_sensor_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22IIO_HID\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hid_sensor_common = type { ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.hid_sensor_hub_attribute_info, %struct.work_struct }
%struct.hid_sensor_hub_attribute_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__kstrtab_hid_sensor_power_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_sensor_power_state = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_sensor_power_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_sensor_power_state to i32), ptr @__kstrtab_hid_sensor_power_state, ptr @__kstrtabns_hid_sensor_power_state }, section "___ksymtab+hid_sensor_power_state", align 4
@__kstrtab_hid_sensor_remove_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_sensor_remove_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_sensor_remove_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_sensor_remove_trigger to i32), ptr @__kstrtab_hid_sensor_remove_trigger, ptr @__kstrtabns_hid_sensor_remove_trigger }, section "___ksymtab+hid_sensor_remove_trigger", align 4
@hid_sensor_fifo_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_hwfifo_timeout, ptr @iio_dev_attr_hwfifo_enabled, ptr null], [20 x i8] zeroinitializer }, align 32
@hid_sensor_setup_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Triggered Buffer Setup Failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hid_sensor_setup_trigger\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/iio/common/hid-sensors/hid-sensor-trigger.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hid_sensor_setup_trigger._entry_ptr = internal global ptr @hid_sensor_setup_trigger._entry, section ".printk_index", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@hid_sensor_setup_trigger._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 255, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Trigger Allocate Failed\0A\00", [39 x i8] zeroinitializer }, align 32
@hid_sensor_setup_trigger._entry_ptr.8 = internal global ptr @hid_sensor_setup_trigger._entry.6, section ".printk_index", align 4
@hid_sensor_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @hid_sensor_data_rdy_trigger_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@hid_sensor_setup_trigger._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 265, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Trigger Register Failed\0A\00", [39 x i8] zeroinitializer }, align 32
@hid_sensor_setup_trigger._entry_ptr.11 = internal global ptr @hid_sensor_setup_trigger._entry.9, section ".printk_index", align 4
@hid_sensor_setup_trigger.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&attrb->work)\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_hid_sensor_setup_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_sensor_setup_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_sensor_setup_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_sensor_setup_trigger to i32), ptr @__kstrtab_hid_sensor_setup_trigger, ptr @__kstrtabns_hid_sensor_setup_trigger }, section "___ksymtab+hid_sensor_setup_trigger", align 4
@hid_sensor_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hid_sensor_suspend, ptr @hid_sensor_resume, ptr @hid_sensor_suspend, ptr @hid_sensor_resume, ptr @hid_sensor_suspend, ptr @hid_sensor_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hid_sensor_suspend, ptr @hid_sensor_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_hid_sensor_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_hid_sensor_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_hid_sensor_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hid_sensor_pm_ops to i32), ptr @__kstrtab_hid_sensor_pm_ops, ptr @__kstrtabns_hid_sensor_pm_ops }, section "___ksymtab+hid_sensor_pm_ops", align 4
@__UNIQUE_ID_author229 = internal constant [78 x i8] c"hid_sensor_trigger.author=Srinivas Pandruvada <srinivas.pandruvada@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [61 x i8] c"hid_sensor_trigger.description=HID Sensor trigger processing\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [74 x i8] c"hid_sensor_trigger.file=drivers/iio/common/hid-sensors/hid-sensor-trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [31 x i8] c"hid_sensor_trigger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns233 = internal constant [48 x i8] c"hid_sensor_trigger.import_ns=IIO_HID_ATTRIBUTES\00", section ".modinfo", align 1
@iio_dev_attr_hwfifo_timeout = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @_hid_sensor_get_report_latency, ptr @_hid_sensor_set_report_latency }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_hwfifo_enabled = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @_hid_sensor_get_fifo_state, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hwfifo_timeout\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%06u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hwfifo_enabled\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@_hid_sensor_power_state.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hid_sensor_trigger\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_hid_sensor_power_state\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"HID_SENSOR %s set power_state %d report_state %d\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"hid_sensor_fifo_attributes\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 78, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 248, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 253, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 255, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"hid_sensor_trigger_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 227, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 265, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 277, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"hid_sensor_pm_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 317, i32 25 }
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_hwfifo_timeout\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_hwfifo_enabled\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 72, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 54, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 75, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 69, i32 22 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [55 x i8] c"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 139, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_import_ns233, ptr @__UNIQUE_ID_license232, ptr @__ksymtab_hid_sensor_pm_ops, ptr @__ksymtab_hid_sensor_power_state, ptr @__ksymtab_hid_sensor_remove_trigger, ptr @__ksymtab_hid_sensor_setup_trigger, ptr @hid_sensor_setup_trigger._entry, ptr @hid_sensor_setup_trigger._entry.6, ptr @hid_sensor_setup_trigger._entry.9, ptr @hid_sensor_setup_trigger._entry_ptr, ptr @hid_sensor_setup_trigger._entry_ptr.11, ptr @hid_sensor_setup_trigger._entry_ptr.8, ptr @hid_sensor_fifo_attributes, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @hid_sensor_trigger_ops, ptr @.str.10, ptr @hid_sensor_setup_trigger.__key, ptr @.str.12, ptr @hid_sensor_pm_ops, ptr @iio_dev_attr_hwfifo_timeout, ptr @iio_dev_attr_hwfifo_enabled, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_fifo_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_setup_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_setup_trigger._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_setup_trigger._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_setup_trigger.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_sensor_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_hwfifo_timeout to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_hwfifo_enabled to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hid_sensor_power_state(ptr noundef %st, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_pm_enable = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %runtime_pm_enable, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %runtime_pm_enable, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %runtime_pm_enable, ptr %runtime_pm_enable, i32 1, i32 1, ptr elementtype(i32) %runtime_pm_enable) #6, !srcloc !69
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !70
  %pdev = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %user_requested_state = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 4
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_requested_state, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %user_requested_state, i32 1, i32 3, i32 1) #6
  br i1 %state, label %if.then1, label %if.end13

if.then1:                                         ; preds = %if.end
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_requested_state, ptr %user_requested_state, i32 1, ptr elementtype(i32) %user_requested_state) #6, !srcloc !71
  %pdev2 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 1
  %4 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev2, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev3, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then1.if.end13.thread32_crit_edge

if.then1.if.end13.thread32_crit_edge:             ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.thread32

if.then.i:                                        ; preds = %if.then1
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !69
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.end13.thread_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.end13.thread_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.thread

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !70
  br label %if.end13.thread

if.end13:                                         ; preds = %if.end
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_requested_state, ptr %user_requested_state, i32 1, ptr elementtype(i32) %user_requested_state) #6, !srcloc !72
  %pdev6 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 1
  %8 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev6, align 4
  %call.i26 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i26, ptr %last_busy.i, align 8
  %11 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev6, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev9, i1 noundef zeroext true) #6
  %13 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev6, align 4
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %call.i27 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev11, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp = icmp slt i32 %call.i27, 0
  br i1 %cmp, label %if.end13.if.end13.thread_crit_edge, label %if.end13.if.end13.thread32_crit_edge

if.end13.if.end13.thread32_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.thread32

if.end13.if.end13.thread_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.thread

if.end13.thread:                                  ; preds = %if.end13.if.end13.thread_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.if.end13.thread_crit_edge
  %ret.031 = phi i32 [ %call.i27, %if.end13.if.end13.thread_crit_edge ], [ %call.i, %if.then.i.if.end13.thread_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  br label %if.end13.thread32

if.end13.thread32:                                ; preds = %if.end13.thread, %if.end13.if.end13.thread32_crit_edge, %if.then1.if.end13.thread32_crit_edge
  %15 = phi i32 [ %ret.031, %if.end13.thread ], [ 0, %if.end13.if.end13.thread32_crit_edge ], [ 0, %if.then1.if.end13.thread32_crit_edge ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hid_sensor_remove_trigger(ptr noundef %indio_dev, ptr noundef %attrb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_pm_enable = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %runtime_pm_enable, i32 noundef 4) #6
  %0 = ptrtoint ptr %runtime_pm_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %runtime_pm_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pdev1 = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 1
  %4 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev2, i32 noundef 2) #6
  %work = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 17
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #6
  %trigger = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 9
  %6 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trigger, align 4
  tail call void @iio_trigger_unregister(ptr noundef %7) #6
  %8 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trigger, align 4
  tail call void @iio_trigger_free(ptr noundef %9) #6
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %indio_dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hid_sensor_setup_trigger(ptr noundef %indio_dev, ptr noundef %name, ptr noundef %attrb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @hid_sensor_batch_mode_supported(ptr noundef %attrb) #6
  %hid_sensor_fifo_attributes. = select i1 %call, ptr @hid_sensor_fifo_attributes, ptr null
  %call1 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef %indio_dev, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %hid_sensor_fifo_attributes.) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %dev4 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call5 = tail call i32 @iio_device_id(ptr noundef %indio_dev) #6
  %call6 = tail call ptr (ptr, ptr, ...) @iio_trigger_alloc(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %call5) #6
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.7) #9
  br label %error_triggered_buffer_cleanup

if.end12:                                         ; preds = %if.end3
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call6, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %attrb, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hid_sensor_trigger_ops, ptr %call6, align 8
  %call13 = tail call i32 @__iio_trigger_register(ptr noundef nonnull %call6, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.10) #9
  br label %error_free_trig

if.end20:                                         ; preds = %if.end12
  %trigger = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 9
  %4 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %trigger, align 4
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %call6, i32 0, i32 4
  %call.i = tail call ptr @get_device(ptr noundef %dev.i) #6
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %call6, i32 0, i32 1
  %5 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %6) #6
  %trig22 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %7 = ptrtoint ptr %trig22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %trig22, align 4
  %call.i72 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev4, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool25.not = icmp eq i32 %call.i72, 0
  br i1 %tobool25.not, label %if.end27, label %error_unreg_trigger

if.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i73 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 8
  %8 = ptrtoint ptr %driver_data.i.i73 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %attrb, ptr %driver_data.i.i73, align 4
  %work = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 17
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @hid_sensor_setup_trigger.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry32 = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 17, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry32, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hid_sensor_set_power_work, ptr %func, align 4
  %pdev = getelementptr inbounds %struct.hid_sensor_common, ptr %attrb, i32 0, i32 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %ignore_children.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 12, i32 15
  %15 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  %16 = load ptr, ptr %pdev, align 4
  %dev38 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev38, i32 noundef 3000) #6
  br label %cleanup

error_unreg_trigger:                              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iio_trigger_unregister(ptr noundef nonnull %call6) #6
  br label %error_free_trig

error_free_trig:                                  ; preds = %error_unreg_trigger, %do.end18
  %ret.0 = phi i32 [ %call13, %do.end18 ], [ %call.i72, %error_unreg_trigger ]
  tail call void @iio_trigger_free(ptr noundef nonnull %call6) #6
  br label %error_triggered_buffer_cleanup

error_triggered_buffer_cleanup:                   ; preds = %error_free_trig, %do.end10
  %ret.1 = phi i32 [ -12, %do.end10 ], [ %ret.0, %error_free_trig ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %indio_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %error_triggered_buffer_cleanup, %if.end27, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %ret.1, %error_triggered_buffer_cleanup ], [ 0, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hid_sensor_batch_mode_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hid_sensor_set_power_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -260
  %poll_interval = getelementptr i8, ptr %work, i32 -236
  %0 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %report_id = getelementptr i8, ptr %work, i32 -208
  %4 = ptrtoint ptr %report_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %report_id, align 4
  %index = getelementptr i8, ptr %work, i32 -204
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call = tail call i32 @sensor_hub_set_feature(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 4, ptr noundef %poll_interval) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %raw_hystersis = getelementptr i8, ptr %work, i32 -232
  %8 = ptrtoint ptr %raw_hystersis to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %raw_hystersis, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp3 = icmp sgt i32 %9, -1
  br i1 %cmp3, label %if.then4, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %report_id6 = getelementptr i8, ptr %work, i32 -100
  %12 = ptrtoint ptr %report_id6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %report_id6, align 4
  %index8 = getelementptr i8, ptr %work, i32 -96
  %14 = ptrtoint ptr %index8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index8, align 4
  %call10 = tail call i32 @sensor_hub_set_feature(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 4, ptr noundef %raw_hystersis) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end.if.end11_crit_edge
  %latency_ms = getelementptr i8, ptr %work, i32 -228
  %16 = ptrtoint ptr %latency_ms to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %latency_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp12 = icmp sgt i32 %17, 0
  br i1 %cmp12, label %if.then13, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @hid_sensor_set_report_latency(ptr noundef %add.ptr, i32 noundef %17) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %user_requested_state = getelementptr i8, ptr %work, i32 -244
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %user_requested_state, i32 noundef 4) #6
  %18 = ptrtoint ptr %user_requested_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %user_requested_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call fastcc i32 @_hid_sensor_power_state(ptr noundef %add.ptr, i1 noundef zeroext true)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call fastcc i32 @_hid_sensor_power_state(ptr noundef %3, i1 noundef zeroext false)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.hid_sensor_common, ptr %3, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call fastcc i32 @_hid_sensor_power_state(ptr noundef %3, i1 noundef zeroext true)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_hid_sensor_get_report_latency(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @hid_sensor_get_report_latency(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2.frozen = freeze i32 %call2
  %div9 = udiv i32 %call2.frozen, 1000
  %2 = mul i32 %div9, 1000
  %rem10.decomposed = sub i32 %call2.frozen, %2
  %mul = mul nuw nsw i32 %rem10.decomposed, 1000
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %div9, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_hid_sensor_set_report_latency(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %integer = alloca i32, align 4
  %fract = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %integer) #6
  %2 = ptrtoint ptr %integer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %integer, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fract) #6
  %3 = ptrtoint ptr %fract to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fract, align 4, !annotation !73
  %call2 = call i32 @iio_str_to_fixpoint(ptr noundef %buf, i32 noundef 100000, ptr noundef nonnull %integer, ptr noundef nonnull %fract) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %integer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %integer, align 4
  %mul = mul i32 %5, 1000
  %6 = ptrtoint ptr %fract to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fract, align 4
  %div = sdiv i32 %7, 1000
  %add = add i32 %div, %mul
  %call3 = call i32 @hid_sensor_set_report_latency(ptr noundef %1, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call i32 @hid_sensor_get_report_latency(ptr noundef %1) #6
  %latency_ms = getelementptr inbounds %struct.hid_sensor_common, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %latency_ms to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call6, ptr %latency_ms, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end5 ], [ %call2, %entry.cleanup_crit_edge ], [ %len, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fract) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %integer) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_get_report_latency(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_str_to_fixpoint(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_set_report_latency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_hid_sensor_get_fifo_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @hid_sensor_get_report_latency(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool = icmp ne i32 %call2, 0
  %lnot.ext = zext i1 %tobool to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %lnot.ext)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_sensor_data_rdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @hid_sensor_power_state(ptr noundef %1, i1 noundef zeroext %state)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_set_feature(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_hid_sensor_power_state(ptr noundef %st, i1 noundef zeroext %state) unnamed_addr #0 align 64 {
entry:
  %state_val = alloca i32, align 4
  %report_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state_val) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %report_val) #6
  br i1 %state, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 4
  %call = tail call i32 @sensor_hub_device_open(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup70_crit_edge

if.then.cleanup70_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %data_ready = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_ready, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %data_ready, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %data_ready, ptr %data_ready, i32 1, ptr elementtype(i32) %data_ready) #6, !srcloc !71
  %3 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %st, align 4
  %report_id = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 13, i32 2
  %5 = ptrtoint ptr %report_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %report_id, align 4
  %index = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 13, i32 3
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %call5 = tail call i32 @hid_sensor_get_usage_index(ptr noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef 2099281) #6
  %9 = ptrtoint ptr %state_val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call5, ptr %state_val, align 4
  %10 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %st, align 4
  %report_id7 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 12, i32 2
  %12 = ptrtoint ptr %report_id7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %report_id7, align 4
  %index9 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 12, i32 3
  %14 = ptrtoint ptr %index9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index9, align 4
  %call10 = tail call i32 @hid_sensor_get_usage_index(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 2099265) #6
  %16 = ptrtoint ptr %report_val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call10, ptr %report_val, align 4
  %call11 = tail call i32 @hid_sensor_read_poll_value(ptr noundef %st) #6
  br label %if.end29

if.else:                                          ; preds = %entry
  %data_ready12 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 3
  %call.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_ready12, i32 noundef 4) #6
  %17 = ptrtoint ptr %data_ready12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %data_ready12, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %if.else
  %c.0.i.i = phi i32 [ %18, %if.else ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  %sub.i.i = add i32 %c.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.cleanup70_crit_edge, label %do.cond3.i.i, !prof !74

do.body1.i.i.cleanup70_crit_edge:                 ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @llvm.prefetch.p0(ptr %data_ready12, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %data_ready12, ptr %data_ready12, i32 %c.0.i.i, i32 %sub.i.i, ptr elementtype(i32) %data_ready12) #6, !srcloc !76
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !77
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %if.end15, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !78

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i.i

if.end15:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %st, align 4
  tail call void @sensor_hub_device_close(ptr noundef %21) #6
  %22 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %st, align 4
  %report_id19 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 13, i32 2
  %24 = ptrtoint ptr %report_id19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %report_id19, align 4
  %index21 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 13, i32 3
  %26 = ptrtoint ptr %index21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index21, align 4
  %call22 = tail call i32 @hid_sensor_get_usage_index(ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef 2099285) #6
  %28 = ptrtoint ptr %state_val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call22, ptr %state_val, align 4
  %29 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %st, align 4
  %report_id25 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 12, i32 2
  %31 = ptrtoint ptr %report_id25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %report_id25, align 4
  %index27 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 12, i32 3
  %33 = ptrtoint ptr %index27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index27, align 4
  %call28 = tail call i32 @hid_sensor_get_usage_index(ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef 2099264) #6
  %35 = ptrtoint ptr %report_val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call28, ptr %report_val, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end15, %if.end
  %poll_value.0 = phi i32 [ %call11, %if.end ], [ 0, %if.end15 ]
  %36 = ptrtoint ptr %state_val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp30 = icmp sgt i32 %37, -1
  br i1 %cmp30, label %if.then31, label %if.end29.if.end39_crit_edge

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %logical_minimum = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 13, i32 7
  %38 = ptrtoint ptr %logical_minimum to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %logical_minimum, align 4
  %add = add i32 %39, %37
  %40 = ptrtoint ptr %state_val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %state_val, align 4
  %41 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %st, align 4
  %report_id35 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 13, i32 2
  %43 = ptrtoint ptr %report_id35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %report_id35, align 4
  %index37 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 13, i32 3
  %45 = ptrtoint ptr %index37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index37, align 4
  %call38 = call i32 @sensor_hub_set_feature(ptr noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef 4, ptr noundef nonnull %state_val) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %if.end29.if.end39_crit_edge
  %47 = ptrtoint ptr %report_val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %report_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp40 = icmp sgt i32 %48, -1
  br i1 %cmp40, label %if.then41, label %if.end39.do.body_crit_edge

if.end39.do.body_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %logical_minimum43 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 12, i32 7
  %49 = ptrtoint ptr %logical_minimum43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %logical_minimum43, align 4
  %add44 = add i32 %50, %48
  %51 = ptrtoint ptr %report_val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add44, ptr %report_val, align 4
  %52 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %st, align 4
  %report_id47 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 12, i32 2
  %54 = ptrtoint ptr %report_id47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %report_id47, align 4
  %index49 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 12, i32 3
  %56 = ptrtoint ptr %index49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index49, align 4
  %call50 = call i32 @sensor_hub_set_feature(ptr noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef 4, ptr noundef nonnull %report_val) #6
  br label %do.body

do.body:                                          ; preds = %if.then41, %if.end39.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_hid_sensor_power_state.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_hid_sensor_power_state, %if.then57)) #6
          to label %do.end [label %if.then57], !srcloc !79

if.then57:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 1
  %58 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %62 = ptrtoint ptr %state_val to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state_val, align 4
  %64 = ptrtoint ptr %report_val to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %report_val, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_hid_sensor_power_state.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.19, ptr noundef %61, i32 noundef %63, i32 noundef %65) #6
  br label %do.end

do.end:                                           ; preds = %if.then57, %do.body
  %66 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %st, align 4
  %report_id61 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 13, i32 2
  %68 = ptrtoint ptr %report_id61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %report_id61, align 4
  %index63 = getelementptr inbounds %struct.hid_sensor_common, ptr %st, i32 0, i32 13, i32 3
  %70 = ptrtoint ptr %index63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index63, align 4
  %call64 = call i32 @sensor_hub_get_feature(ptr noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef 4, ptr noundef nonnull %state_val) #6
  %state.not = xor i1 %state, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_value.0)
  %tobool66.not = icmp eq i32 %poll_value.0, 0
  %or.cond = select i1 %state.not, i1 true, i1 %tobool66.not
  br i1 %or.cond, label %do.end.cleanup70_crit_edge, label %if.then67

do.end.cleanup70_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

if.then67:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %poll_value.0, 1
  %call68 = call i32 @msleep_interruptible(i32 noundef %mul) #6
  br label %cleanup70

cleanup70:                                        ; preds = %if.then67, %do.end.cleanup70_crit_edge, %do.body1.i.i.cleanup70_crit_edge, %if.then.cleanup70_crit_edge
  %retval.1 = phi i32 [ -5, %if.then.cleanup70_crit_edge ], [ 0, %if.then67 ], [ 0, %do.end.cleanup70_crit_edge ], [ 0, %do.body1.i.i.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %report_val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state_val) #6
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_device_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_get_usage_index(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_sensor_read_poll_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sensor_hub_device_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sensor_hub_get_feature(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !45, !47, !49, !50, !52, !54, !56, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__ksymtab_hid_sensor_power_state, !1, !"__ksymtab_hid_sensor_power_state", i1 false, i1 false}
!1 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 150, i32 1}
!2 = !{ptr @__ksymtab_hid_sensor_remove_trigger, !3, !"__ksymtab_hid_sensor_remove_trigger", i1 false, i1 false}
!3 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 225, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 248, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hid_sensor_setup_trigger._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @hid_sensor_setup_trigger._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 253, i32 6}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 255, i32 3}
!16 = !{ptr @hid_sensor_setup_trigger._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @hid_sensor_setup_trigger._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 265, i32 3}
!20 = !{ptr @hid_sensor_setup_trigger._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @hid_sensor_setup_trigger._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @hid_sensor_setup_trigger.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 277, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__ksymtab_hid_sensor_setup_trigger, !26, !"__ksymtab_hid_sensor_setup_trigger", i1 false, i1 false}
!26 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 292, i32 1}
!27 = !{ptr @hid_sensor_pm_ops, !28, !"hid_sensor_pm_ops", i1 false, i1 false}
!28 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 317, i32 25}
!29 = !{ptr @__ksymtab_hid_sensor_pm_ops, !30, !"__ksymtab_hid_sensor_pm_ops", i1 false, i1 false}
!30 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 322, i32 1}
!31 = !{ptr @__UNIQUE_ID_author229, !32, !"__UNIQUE_ID_author229", i1 false, i1 false}
!32 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 324, i32 1}
!33 = !{ptr @__UNIQUE_ID_description230, !34, !"__UNIQUE_ID_description230", i1 false, i1 false}
!34 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 325, i32 1}
!35 = !{ptr @__UNIQUE_ID_file231, !36, !"__UNIQUE_ID_file231", i1 false, i1 false}
!36 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 326, i32 1}
!37 = !{ptr @__UNIQUE_ID_license232, !36, !"__UNIQUE_ID_license232", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_import_ns233, !39, !"__UNIQUE_ID_import_ns233", i1 false, i1 false}
!39 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 327, i32 1}
!40 = !{ptr @hid_sensor_fifo_attributes, !41, !"hid_sensor_fifo_attributes", i1 false, i1 false}
!41 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 78, i32 32}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 72, i32 8}
!44 = !{ptr @iio_dev_attr_hwfifo_timeout, !43, !"iio_dev_attr_hwfifo_timeout", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 54, i32 22}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 75, i32 8}
!49 = !{ptr @iio_dev_attr_hwfifo_enabled, !48, !"iio_dev_attr_hwfifo_enabled", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 69, i32 22}
!52 = !{ptr @hid_sensor_trigger_ops, !53, !"hid_sensor_trigger_ops", i1 false, i1 false}
!53 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 227, i32 37}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/common/hid-sensors/hid-sensor-trigger.c", i32 139, i32 2}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @_hid_sensor_power_state.__UNIQUE_ID_ddebug228, !55, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148470780}
!69 = !{i64 957380, i64 957405, i64 957427, i64 957443, i64 957455, i64 957475, i64 957499, i64 957515, i64 957527}
!70 = !{i64 2148470968}
!71 = !{i64 2148471361, i64 2148471387, i64 2148471416, i64 2148471450, i64 2148471481, i64 2148471504}
!72 = !{i64 2148473826, i64 2148473852, i64 2148473881, i64 2148473915, i64 2148473946, i64 2148473969}
!73 = !{!"auto-init"}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 2148573184}
!76 = !{i64 956874, i64 956898, i64 956919, i64 956936, i64 956953}
!77 = !{i64 2148573410}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2148284754, i64 2148284759, i64 2148284772, i64 2148284816, i64 2148284850, i64 2148284871}
