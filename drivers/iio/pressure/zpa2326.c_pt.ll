; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/zpa2326.c_pt.bc'
source_filename = "../drivers/iio/pressure/zpa2326.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+zpa2326_isreg_writeable\22, \22a\22\09"
module asm "\09.weak\09__crc_zpa2326_isreg_writeable\09\09\09\09"
module asm "\09.long\09__crc_zpa2326_isreg_writeable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zpa2326_isreg_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22zpa2326_isreg_writeable\22\09\09\09\09\09"
module asm "__kstrtabns_zpa2326_isreg_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zpa2326_isreg_readable\22, \22a\22\09"
module asm "\09.weak\09__crc_zpa2326_isreg_readable\09\09\09\09"
module asm "\09.long\09__crc_zpa2326_isreg_readable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zpa2326_isreg_readable:\09\09\09\09\09"
module asm "\09.asciz \09\22zpa2326_isreg_readable\22\09\09\09\09\09"
module asm "__kstrtabns_zpa2326_isreg_readable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zpa2326_isreg_precious\22, \22a\22\09"
module asm "\09.weak\09__crc_zpa2326_isreg_precious\09\09\09\09"
module asm "\09.long\09__crc_zpa2326_isreg_precious\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zpa2326_isreg_precious:\09\09\09\09\09"
module asm "\09.asciz \09\22zpa2326_isreg_precious\22\09\09\09\09\09"
module asm "__kstrtabns_zpa2326_isreg_precious:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zpa2326_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_zpa2326_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_zpa2326_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zpa2326_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22zpa2326_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_zpa2326_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zpa2326_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_zpa2326_probe\09\09\09\09"
module asm "\09.long\09__crc_zpa2326_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zpa2326_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22zpa2326_probe\22\09\09\09\09\09"
module asm "__kstrtabns_zpa2326_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+zpa2326_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_zpa2326_remove\09\09\09\09"
module asm "\09.long\09__crc_zpa2326_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zpa2326_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22zpa2326_remove\22\09\09\09\09\09"
module asm "__kstrtabns_zpa2326_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.zpa2326_frequency = type { i32, i16 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.zpa2326_private = type { i64, ptr, i32, %struct.completion, ptr, i8, i32, ptr, ptr, ptr }
%struct.anon.86 = type { i32, i16, i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__kstrtab_zpa2326_isreg_writeable = external dso_local constant [0 x i8], align 1
@__kstrtabns_zpa2326_isreg_writeable = external dso_local constant [0 x i8], align 1
@__ksymtab_zpa2326_isreg_writeable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zpa2326_isreg_writeable to i32), ptr @__kstrtab_zpa2326_isreg_writeable, ptr @__kstrtabns_zpa2326_isreg_writeable }, section "___ksymtab_gpl+zpa2326_isreg_writeable", align 4
@__kstrtab_zpa2326_isreg_readable = external dso_local constant [0 x i8], align 1
@__kstrtabns_zpa2326_isreg_readable = external dso_local constant [0 x i8], align 1
@__ksymtab_zpa2326_isreg_readable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zpa2326_isreg_readable to i32), ptr @__kstrtab_zpa2326_isreg_readable, ptr @__kstrtabns_zpa2326_isreg_readable }, section "___ksymtab_gpl+zpa2326_isreg_readable", align 4
@__kstrtab_zpa2326_isreg_precious = external dso_local constant [0 x i8], align 1
@__kstrtabns_zpa2326_isreg_precious = external dso_local constant [0 x i8], align 1
@__ksymtab_zpa2326_isreg_precious = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zpa2326_isreg_precious to i32), ptr @__kstrtab_zpa2326_isreg_precious, ptr @__kstrtabns_zpa2326_isreg_precious }, section "___ksymtab_gpl+zpa2326_isreg_precious", align 4
@zpa2326_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zpa2326_runtime_suspend, ptr @zpa2326_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_zpa2326_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_zpa2326_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_zpa2326_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zpa2326_pm_ops to i32), ptr @__kstrtab_zpa2326_pm_ops, ptr @__kstrtabns_zpa2326_pm_ops }, section "___ksymtab_gpl+zpa2326_pm_ops", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@zpa2326_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @zpa2326_preenable_buffer, ptr @zpa2326_postenable_buffer, ptr null, ptr @zpa2326_postdisable_buffer, ptr null }, [44 x i8] zeroinitializer }, align 32
@zpa2326_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1667, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"found device with unexpected id %02x\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zpa2326_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/pressure/zpa2326.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zpa2326_probe._entry_ptr = internal global ptr @zpa2326_probe._entry, section ".printk_index", align 4
@__kstrtab_zpa2326_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_zpa2326_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_zpa2326_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zpa2326_probe to i32), ptr @__kstrtab_zpa2326_probe, ptr @__kstrtabns_zpa2326_probe }, section "___ksymtab_gpl+zpa2326_probe", align 4
@__kstrtab_zpa2326_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_zpa2326_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_zpa2326_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zpa2326_remove to i32), ptr @__kstrtab_zpa2326_remove, ptr @__kstrtabns_zpa2326_remove }, section "___ksymtab_gpl+zpa2326_remove", align 4
@__UNIQUE_ID_author306 = internal constant [56 x i8] c"zpa2326.author=Gregor Boirie <gregor.boirie@parrot.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [67 x i8] c"zpa2326.description=Core driver for Murata ZPA2326 pressure sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [42 x i8] c"zpa2326.file=drivers/iio/pressure/zpa2326\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [23 x i8] c"zpa2326.license=GPL v2\00", section ".modinfo", align 1
@zpa2326_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@zpa2326_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @zpa2326_attribute_group, ptr @zpa2326_read_raw, ptr null, ptr null, ptr @zpa2326_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@zpa2326_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @zpa2326_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@zpa2326_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.7, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1 5 11 23\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@zpa2326_enable_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 226, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable device (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zpa2326_enable_device\00", [42 x i8] zeroinitializer }, align 32
@zpa2326_enable_device._entry_ptr = internal global ptr @zpa2326_enable_device._entry, section ".printk_index", align 4
@zpa2326_enable_device.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str.4, ptr @.str.12, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zpa2326\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabled\0A\00", [23 x i8] zeroinitializer }, align 32
@zpa2326_clear_fifo.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zpa2326_clear_fifo\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIFO cleared\0A\00", [18 x i8] zeroinitializer }, align 32
@zpa2326_clear_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 497, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to clear FIFO (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@zpa2326_clear_fifo._entry_ptr = internal global ptr @zpa2326_clear_fifo._entry, section ".printk_index", align 4
@zpa2326_start_oneshot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 310, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to start one shot cycle (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zpa2326_start_oneshot\00", [42 x i8] zeroinitializer }, align 32
@zpa2326_start_oneshot._entry_ptr = internal global ptr @zpa2326_start_oneshot._entry, section ".printk_index", align 4
@zpa2326_start_oneshot.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"one shot cycle started\0A\00", [40 x i8] zeroinitializer }, align 32
@zpa2326_wait_oneshot_completion.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"zpa2326_wait_oneshot_completion\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"waiting for one shot completion interrupt\0A\00", [53 x i8] zeroinitializer }, align 32
@zpa2326_wait_oneshot_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 883, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no one shot interrupt occurred (%ld)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@zpa2326_wait_oneshot_completion._entry_ptr = internal global ptr @zpa2326_wait_oneshot_completion._entry, section ".printk_index", align 4
@zpa2326_wait_oneshot_completion._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.4, i32 887, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wait for one shot interrupt cancelled\0A\00", [57 x i8] zeroinitializer }, align 32
@zpa2326_wait_oneshot_completion._entry_ptr.25 = internal global ptr @zpa2326_wait_oneshot_completion._entry.23, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@zpa2326_poll_oneshot_completion.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"zpa2326_poll_oneshot_completion\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"polling for one shot completion\0A\00", [63 x i8] zeroinitializer }, align 32
@zpa2326_poll_oneshot_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 990, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to poll one shot completion (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@zpa2326_poll_oneshot_completion._entry_ptr = internal global ptr @zpa2326_poll_oneshot_completion._entry, section ".printk_index", align 4
@zpa2326_fetch_raw_sample.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zpa2326_fetch_raw_sample\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fetching raw pressure sample\0A\00", [34 x i8] zeroinitializer }, align 32
@zpa2326_fetch_raw_sample._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 1020, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to fetch pressure (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@zpa2326_fetch_raw_sample._entry_ptr = internal global ptr @zpa2326_fetch_raw_sample._entry, section ".printk_index", align 4
@zpa2326_fetch_raw_sample.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.4, ptr @.str.32, i8 1, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fetching raw temperature sample\0A\00", [63 x i8] zeroinitializer }, align 32
@zpa2326_fetch_raw_sample._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.4, i32 1034, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to fetch temperature (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@zpa2326_fetch_raw_sample._entry_ptr.35 = internal global ptr @zpa2326_fetch_raw_sample._entry.33, section ".printk_index", align 4
@zpa2326_sampling_frequencies = internal constant { [4 x %struct.zpa2326_frequency], [32 x i8] } { [4 x %struct.zpa2326_frequency] [%struct.zpa2326_frequency { i32 1, i16 16 }, %struct.zpa2326_frequency { i32 5, i16 80 }, %struct.zpa2326_frequency { i32 11, i16 96 }, %struct.zpa2326_frequency { i32 23, i16 112 }], [32 x i8] zeroinitializer }, align 32
@zpa2326_fill_sample_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.36, ptr @.str.4, i32 594, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"zpa2326_fill_sample_buffer\00", [37 x i8] zeroinitializer }, align 32
@zpa2326_fill_sample_buffer._entry_ptr = internal global ptr @zpa2326_fill_sample_buffer._entry, section ".printk_index", align 4
@zpa2326_fill_sample_buffer._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.36, ptr @.str.4, i32 605, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@zpa2326_fill_sample_buffer._entry_ptr.38 = internal global ptr @zpa2326_fill_sample_buffer._entry.37, section ".printk_index", align 4
@zpa2326_fill_sample_buffer.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.36, ptr @.str.4, ptr @.str.39, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"filling raw samples buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@zpa2326_dequeue_pressure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 532, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FIFO overflow\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zpa2326_dequeue_pressure\00", [39 x i8] zeroinitializer }, align 32
@zpa2326_dequeue_pressure._entry_ptr = internal global ptr @zpa2326_dequeue_pressure._entry, section ".printk_index", align 4
@zpa2326_dequeue_pressure.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cleared %d FIFO entries\0A\00", [39 x i8] zeroinitializer }, align 32
@zpa2326_postenable_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 1255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable buffering (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"zpa2326_postenable_buffer\00", [38 x i8] zeroinitializer }, align 32
@zpa2326_postenable_buffer._entry_ptr = internal global ptr @zpa2326_postenable_buffer._entry, section ".printk_index", align 4
@zpa2326_postenable_buffer._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 1268, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@zpa2326_postenable_buffer._entry_ptr.46 = internal global ptr @zpa2326_postenable_buffer._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@zpa2326_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @zpa2326_set_trigger_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@zpa2326_init_managed_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 1425, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register hardware trigger (%d)\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"zpa2326_init_managed_trigger\00", [35 x i8] zeroinitializer }, align 32
@zpa2326_init_managed_trigger._entry_ptr = internal global ptr @zpa2326_init_managed_trigger._entry, section ".printk_index", align 4
@zpa2326_set_trigger_state.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 1, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"zpa2326_set_trigger_state\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"continuous mode stopped\0A\00", [39 x i8] zeroinitializer }, align 32
@zpa2326_set_trigger_state.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.50, ptr @.str.4, ptr @.str.52, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"continuous mode setup @%dHz\0A\00", [35 x i8] zeroinitializer }, align 32
@zpa2326_init_managed_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 905, ptr @.str.55, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"no interrupt found, running in polling mode\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zpa2326_init_managed_irq\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@zpa2326_init_managed_irq._entry_ptr = internal global ptr @zpa2326_init_managed_irq._entry, section ".printk_index", align 4
@zpa2326_init_managed_irq._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.4, i32 918, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request interrupt %d (%d)\00", [60 x i8] zeroinitializer }, align 32
@zpa2326_init_managed_irq._entry_ptr.58 = internal global ptr @zpa2326_init_managed_irq._entry.56, section ".printk_index", align 4
@zpa2326_init_managed_irq._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.54, ptr @.str.4, i32 922, ptr @.str.55, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using interrupt %d\00", [45 x i8] zeroinitializer }, align 32
@zpa2326_init_managed_irq._entry_ptr.61 = internal global ptr @zpa2326_init_managed_irq._entry.59, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@zpa2326_handle_threaded_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 822, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unexpected interrupt status %02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zpa2326_handle_threaded_irq\00", [36 x i8] zeroinitializer }, align 32
@zpa2326_handle_threaded_irq._entry_ptr = internal global ptr @zpa2326_handle_threaded_irq._entry, section ".printk_index", align 4
@zpa2326_power_on.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.65, ptr @.str.4, ptr @.str.66, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zpa2326_power_on\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"powered on\0A\00", [20 x i8] zeroinitializer }, align 32
@zpa2326_power_on.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.65, ptr @.str.4, ptr @.str.67, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"powered off\0A\00", [19 x i8] zeroinitializer }, align 32
@zpa2326_reset_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 278, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to reset device (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zpa2326_reset_device\00", [43 x i8] zeroinitializer }, align 32
@zpa2326_reset_device._entry_ptr = internal global ptr @zpa2326_reset_device._entry, section ".printk_index", align 4
@zpa2326_reset_device.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.69, ptr @.str.4, ptr @.str.70, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reset\0A\00", [25 x i8] zeroinitializer }, align 32
@zpa2326_config_oneshot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 422, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to setup one shot mode (%d)\00", [61 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zpa2326_config_oneshot\00", [41 x i8] zeroinitializer }, align 32
@zpa2326_config_oneshot._entry_ptr = internal global ptr @zpa2326_config_oneshot._entry, section ".printk_index", align 4
@zpa2326_config_oneshot.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.72, ptr @.str.4, ptr @.str.73, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"one shot mode setup @%dHz\0A\00", [37 x i8] zeroinitializer }, align 32
@zpa2326_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 252, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to sleep (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zpa2326_sleep\00", [18 x i8] zeroinitializer }, align 32
@zpa2326_sleep._entry_ptr = internal global ptr @zpa2326_sleep._entry, section ".printk_index", align 4
@zpa2326_sleep.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.75, ptr @.str.4, ptr @.str.76, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sleeping\0A\00", [22 x i8] zeroinitializer }, align 32
@zpa2326_power_off.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.77, ptr @.str.4, ptr @.str.67, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zpa2326_power_off\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [20 x i64] [i64 18, i64 32, i64 8, i64 9, i64 10, i64 15, i64 16, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 5, i64 11, i64 23]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"zpa2326_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 646, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1624, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1628, i32 41 }
@___asan_gen_.91 = private unnamed_addr constant [25 x i8] c"zpa2326_buffer_setup_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1283, i32 42 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1667, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"zpa2326_channels\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1548, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant [13 x i8] c"zpa2326_info\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1579, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant [24 x i8] c"zpa2326_attribute_group\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1468, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"zpa2326_attributes\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1463, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1461, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 226, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 230, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 492, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 497, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 309, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 314, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 866, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 882, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 887, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 944, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 990, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1015, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1019, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1029, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1033, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant [29 x i8] c"zpa2326_sampling_frequencies\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 91, i32 39 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 593, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 604, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 617, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 532, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 567, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1254, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1267, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1410, i32 43 }
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c"zpa2326_trigger_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1380, i32 37 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1424, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1350, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1373, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 905, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 917, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 922, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 87, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 821, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 344, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 363, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 278, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 284, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 421, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 427, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 252, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 256, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.374 = private constant [34 x i8] c"../drivers/iio/pressure/zpa2326.c\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 382, i32 2 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__ksymtab_zpa2326_isreg_precious, ptr @__ksymtab_zpa2326_isreg_readable, ptr @__ksymtab_zpa2326_isreg_writeable, ptr @__ksymtab_zpa2326_pm_ops, ptr @__ksymtab_zpa2326_probe, ptr @__ksymtab_zpa2326_remove, ptr @zpa2326_clear_fifo._entry, ptr @zpa2326_clear_fifo._entry_ptr, ptr @zpa2326_config_oneshot._entry, ptr @zpa2326_config_oneshot._entry_ptr, ptr @zpa2326_dequeue_pressure._entry, ptr @zpa2326_dequeue_pressure._entry_ptr, ptr @zpa2326_enable_device._entry, ptr @zpa2326_enable_device._entry_ptr, ptr @zpa2326_fetch_raw_sample._entry, ptr @zpa2326_fetch_raw_sample._entry.33, ptr @zpa2326_fetch_raw_sample._entry_ptr, ptr @zpa2326_fetch_raw_sample._entry_ptr.35, ptr @zpa2326_fill_sample_buffer._entry, ptr @zpa2326_fill_sample_buffer._entry.37, ptr @zpa2326_fill_sample_buffer._entry_ptr, ptr @zpa2326_fill_sample_buffer._entry_ptr.38, ptr @zpa2326_handle_threaded_irq._entry, ptr @zpa2326_handle_threaded_irq._entry_ptr, ptr @zpa2326_init_managed_irq._entry, ptr @zpa2326_init_managed_irq._entry.56, ptr @zpa2326_init_managed_irq._entry.59, ptr @zpa2326_init_managed_irq._entry_ptr, ptr @zpa2326_init_managed_irq._entry_ptr.58, ptr @zpa2326_init_managed_irq._entry_ptr.61, ptr @zpa2326_init_managed_trigger._entry, ptr @zpa2326_init_managed_trigger._entry_ptr, ptr @zpa2326_poll_oneshot_completion._entry, ptr @zpa2326_poll_oneshot_completion._entry_ptr, ptr @zpa2326_postenable_buffer._entry, ptr @zpa2326_postenable_buffer._entry.45, ptr @zpa2326_postenable_buffer._entry_ptr, ptr @zpa2326_postenable_buffer._entry_ptr.46, ptr @zpa2326_probe._entry, ptr @zpa2326_probe._entry_ptr, ptr @zpa2326_reset_device._entry, ptr @zpa2326_reset_device._entry_ptr, ptr @zpa2326_sleep._entry, ptr @zpa2326_sleep._entry_ptr, ptr @zpa2326_start_oneshot._entry, ptr @zpa2326_start_oneshot._entry_ptr, ptr @zpa2326_wait_oneshot_completion._entry, ptr @zpa2326_wait_oneshot_completion._entry.23, ptr @zpa2326_wait_oneshot_completion._entry_ptr, ptr @zpa2326_wait_oneshot_completion._entry_ptr.25, ptr @zpa2326_pm_ops, ptr @.str, ptr @.str.1, ptr @zpa2326_buffer_setup_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @zpa2326_channels, ptr @zpa2326_info, ptr @zpa2326_attribute_group, ptr @zpa2326_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @zpa2326_sampling_frequencies, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @zpa2326_trigger_ops, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @init_completion.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_enable_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_clear_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_start_oneshot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_wait_oneshot_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_wait_oneshot_completion._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_poll_oneshot_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_fetch_raw_sample._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_fetch_raw_sample._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_sampling_frequencies to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_fill_sample_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_fill_sample_buffer._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_dequeue_pressure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_postenable_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_postenable_buffer._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_init_managed_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_init_managed_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_init_managed_irq._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_init_managed_irq._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_handle_threaded_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_reset_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_config_oneshot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @zpa2326_isreg_writeable(ptr nocapture readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 31
  %switch.cast = trunc i32 %switch.tableidx to i31
  %switch.downshift = lshr i31 -285212409, %switch.cast
  %1 = and i31 %switch.downshift, 1
  %2 = sext i31 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %switch.masked = icmp ne i31 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @zpa2326_isreg_readable(ptr nocapture readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 8, label %entry.return_crit_edge
    i32 9, label %entry.return_crit_edge1
    i32 10, label %entry.return_crit_edge2
    i32 15, label %entry.return_crit_edge3
    i32 16, label %entry.return_crit_edge4
    i32 32, label %entry.return_crit_edge5
    i32 33, label %entry.return_crit_edge6
    i32 34, label %entry.return_crit_edge7
    i32 35, label %entry.return_crit_edge8
    i32 36, label %entry.return_crit_edge9
    i32 37, label %entry.return_crit_edge10
    i32 38, label %entry.return_crit_edge11
    i32 39, label %entry.return_crit_edge12
    i32 40, label %entry.return_crit_edge13
    i32 41, label %entry.return_crit_edge14
    i32 42, label %entry.return_crit_edge15
    i32 43, label %entry.return_crit_edge16
    i32 44, label %entry.return_crit_edge17
  ]

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @zpa2326_isreg_precious(ptr nocapture readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %reg)
  %switch.selectcmp.case1 = icmp eq i32 %reg, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %reg)
  %switch.selectcmp.case2 = icmp eq i32 %reg, 42
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_runtime_suspend(ptr noundef %parent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i64 @pm_runtime_autosuspend_expiration(ptr noundef %parent) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1)
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %vdd.i = getelementptr inbounds %struct.zpa2326_private, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %5) #7
  %vref.i = getelementptr inbounds %struct.zpa2326_private, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %vref.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vref.i, align 8
  %call1.i = tail call i32 @regulator_disable(ptr noundef %7) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_power_off.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_runtime_suspend, %if.then.i)) #7
          to label %cleanup [label %if.then.i], !srcloc !217

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_power_off.__UNIQUE_ID_ddebug295, ptr noundef %9, ptr noundef nonnull @.str.67) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_runtime_resume(ptr nocapture noundef readonly %parent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call fastcc i32 @zpa2326_power_on(ptr noundef %1, ptr noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zpa2326_probe(ptr noundef %parent, ptr noundef %name, i32 noundef %irq, i32 noundef %hwid, ptr noundef %regmap) #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !218
  %call.i = tail call ptr @devm_iio_device_alloc(ptr noundef %parent, i32 noundef 96) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %call.i, align 8
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @zpa2326_channels, ptr %channels.i, align 8
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 14
  %3 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %num_channels.i, align 4
  %name1.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 15
  %4 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %name1.i, align 8
  %info.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 17
  %5 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @zpa2326_info, ptr %info.i, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %call2 = tail call ptr @devm_regulator_get(ptr noundef %parent, ptr noundef nonnull @.str) #7
  %vref = getelementptr inbounds %struct.zpa2326_private, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %vref, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_regulator_get(ptr noundef %parent, ptr noundef nonnull @.str.1) #7
  %vdd = getelementptr inbounds %struct.zpa2326_private, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %vdd, align 4
  %cmp.i103 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %frequency = getelementptr inbounds %struct.zpa2326_private, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr getelementptr inbounds ([4 x %struct.zpa2326_frequency], ptr @zpa2326_sampling_frequencies, i32 0, i32 3), ptr %frequency, align 4
  %regmap17 = getelementptr inbounds %struct.zpa2326_private, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %regmap17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %regmap, ptr %regmap17, align 8
  %call18 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %parent, ptr noundef nonnull %call.i, ptr noundef null, ptr noundef nonnull @zpa2326_trigger_handler, i32 noundef 0, ptr noundef nonnull @zpa2326_buffer_setup_ops, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq)
  %cmp.i104 = icmp slt i32 %irq, 1
  br i1 %cmp.i104, label %do.end.i109, label %if.end.i107

if.end.i107:                                      ; preds = %if.end21
  %14 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name1.i, align 8
  %call.i105 = tail call i32 @iio_device_id(ptr noundef nonnull %call.i) #7
  %call1.i = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %parent, ptr noundef nonnull @.str.47, ptr noundef %15, i32 noundef %call.i105) #7
  %tobool.not.i106 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i106, label %if.end.i107.cleanup_crit_edge, label %if.end3.i

if.end.i107.cleanup_crit_edge:                    ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i107
  %16 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @zpa2326_trigger_ops, ptr %call1.i, align 8
  %trigger4.i = getelementptr inbounds %struct.zpa2326_private, ptr %7, i32 0, i32 4
  %17 = ptrtoint ptr %trigger4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1.i, ptr %trigger4.i, align 8
  %call5.i = tail call i32 @__devm_iio_trigger_register(ptr noundef %parent, ptr noundef nonnull %call1.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i110, label %do.end.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.48, i32 noundef %call5.i) #10
  br label %cleanup

do.end.i109:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %irq1.i115 = getelementptr inbounds %struct.zpa2326_private, ptr %7, i32 0, i32 6
  %18 = ptrtoint ptr %irq1.i115 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %irq, ptr %irq1.i115, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %parent, ptr noundef nonnull @.str.53) #10
  br label %if.end29

if.end.i110:                                      ; preds = %if.end3.i
  %irq1.i = getelementptr inbounds %struct.zpa2326_private, ptr %7, i32 0, i32 6
  %19 = ptrtoint ptr %irq1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %irq, ptr %irq1.i, align 8
  %data_ready.i = getelementptr inbounds %struct.zpa2326_private, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %data_ready.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %data_ready.i, align 4
  %wait.i.i = getelementptr inbounds %struct.zpa2326_private, ptr %7, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @init_completion.__key) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i110.dev_name.exit.i_crit_edge

if.end.i110.dev_name.exit.i_crit_edge:            ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i110.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %if.end.i110.dev_name.exit.i_crit_edge ]
  %call2.i = tail call i32 @devm_request_threaded_irq(ptr noundef %parent, i32 noundef %irq, ptr noundef nonnull @zpa2326_handle_irq, ptr noundef nonnull @zpa2326_handle_threaded_irq, i32 noundef 8193, ptr noundef %retval.0.i.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i111 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i111, label %do.end10.i, label %zpa2326_init_managed_irq.exit

do.end10.i:                                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %parent, ptr noundef nonnull @.str.60, i32 noundef %irq) #10
  br label %if.end29

zpa2326_init_managed_irq.exit:                    ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.57, i32 noundef %irq, i32 noundef %call2.i) #10
  br label %cleanup

if.end29:                                         ; preds = %do.end10.i, %do.end.i109
  %call30 = tail call fastcc i32 @zpa2326_power_on(ptr noundef nonnull %call.i, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %call34 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 15, ptr noundef nonnull %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.sleep_crit_edge

if.end33.sleep_crit_edge:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sleep

if.end37:                                         ; preds = %if.end33
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %hwid)
  %cmp.not = icmp eq i32 %26, %hwid
  br i1 %cmp.not, label %if.end39, label %do.end

do.end:                                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.2, i32 noundef %26) #10
  br label %sleep

if.end39:                                         ; preds = %if.end37
  %call40 = call fastcc i32 @zpa2326_config_oneshot(ptr noundef nonnull %call.i, i32 noundef %irq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.sleep_crit_edge

if.end39.sleep_crit_edge:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sleep

if.end43:                                         ; preds = %if.end39
  %call44 = call fastcc i32 @zpa2326_sleep(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.poweroff_crit_edge

if.end43.poweroff_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %poweroff

if.end47:                                         ; preds = %if.end43
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i, align 4
  call fastcc void @zpa2326_init_runtime(ptr noundef %parent)
  %call48 = call i32 @__iio_device_register(ptr noundef nonnull %call.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.then50

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @zpa2326_fini_runtime(ptr noundef %parent)
  br label %poweroff

sleep:                                            ; preds = %if.end39.sleep_crit_edge, %do.end, %if.end33.sleep_crit_edge
  %err.0 = phi i32 [ %call34, %if.end33.sleep_crit_edge ], [ -19, %do.end ], [ %call40, %if.end39.sleep_crit_edge ]
  %call52 = call fastcc i32 @zpa2326_sleep(ptr noundef nonnull %call.i)
  br label %poweroff

poweroff:                                         ; preds = %sleep, %if.then50, %if.end43.poweroff_crit_edge
  %err.1 = phi i32 [ %err.0, %sleep ], [ %call44, %if.end43.poweroff_crit_edge ], [ %call48, %if.then50 ]
  call fastcc void @zpa2326_power_off(ptr noundef nonnull %call.i, ptr noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %poweroff, %if.end47.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %zpa2326_init_managed_irq.exit, %do.end.i, %if.end.i107.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then5 ], [ %11, %if.then12 ], [ %err.1, %poweroff ], [ %call18, %if.end15.cleanup_crit_edge ], [ %call2.i, %zpa2326_init_managed_irq.exit ], [ %call30, %if.end29.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ -12, %if.end.i107.cleanup_crit_edge ], [ %call5.i, %do.end.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %1) #7
  br i1 %call2, label %if.end23.critedge, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %regmap.i = getelementptr inbounds %struct.zpa2326_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  %call1.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 32, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %zpa2326_start_oneshot.exit.thread49

zpa2326_start_oneshot.exit.thread49:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.16, i32 noundef %call1.i) #10
  br label %if.then21

do.body2.i:                                       ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_start_oneshot.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_trigger_handler, %zpa2326_start_oneshot.exit.thread)) #7
          to label %if.end [label %zpa2326_start_oneshot.exit.thread], !srcloc !217

zpa2326_start_oneshot.exit.thread:                ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent9.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %parent9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent9.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_start_oneshot.__UNIQUE_ID_ddebug292, ptr noundef %11, ptr noundef nonnull @.str.18) #7
  br label %if.end

if.end:                                           ; preds = %zpa2326_start_oneshot.exit.thread, %do.body2.i
  %irq6 = getelementptr inbounds %struct.zpa2326_private, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp slt i32 %13, 1
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %call8 = tail call fastcc i32 @zpa2326_poll_oneshot_completion(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.if.then21_crit_edge

if.then7.if.then21_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i64 @iio_get_time_ns(ptr noundef %1) #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call12, ptr %3, align 8
  tail call fastcc void @zpa2326_fill_sample_buffer(ptr noundef %1, ptr noundef %3)
  br label %if.then21

if.else:                                          ; preds = %if.end
  %call13 = tail call fastcc i32 @zpa2326_wait_oneshot_completion(ptr noundef %1, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then21.critedge39, label %if.else.if.then21_crit_edge

if.else.if.then21_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then21

if.then21.critedge39:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @zpa2326_fill_sample_buffer(ptr noundef %1, ptr noundef %3)
  br label %if.then21

if.then21:                                        ; preds = %if.then21.critedge39, %if.else.if.then21_crit_edge, %if.end11, %if.then7.if.then21_crit_edge, %zpa2326_start_oneshot.exit.thread49
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %regmap.i41 = getelementptr inbounds %struct.zpa2326_private, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i41, align 8
  %call1.i42 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %do.body2.i46, label %do.end.i45

do.end.i45:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i44 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %parent.i44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.74, i32 noundef %call1.i42) #10
  br label %if.end23

do.body2.i46:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_sleep.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_trigger_handler, %if.then7.i48)) #7
          to label %if.end23 [label %if.then7.i48], !srcloc !217

if.then7.i48:                                     ; preds = %do.body2.i46
  call void @__sanitizer_cov_trace_pc() #9
  %parent9.i47 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %parent9.i47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent9.i47, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_sleep.__UNIQUE_ID_ddebug290, ptr noundef %22, ptr noundef nonnull @.str.76) #7
  br label %if.end23

if.end23.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @zpa2326_fill_sample_buffer(ptr noundef %1, ptr noundef %3)
  br label %if.end23

if.end23:                                         ; preds = %if.end23.critedge, %if.then7.i48, %do.body2.i46, %do.end.i45
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %24) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zpa2326_power_on(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %private) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vref = getelementptr inbounds %struct.zpa2326_private, ptr %private, i32 0, i32 8
  %0 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vref, align 8
  %call = tail call i32 @regulator_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vdd = getelementptr inbounds %struct.zpa2326_private, ptr %private, i32 0, i32 9
  %2 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %if.end.vref23_crit_edge

if.end.vref23_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vref23

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_power_on.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_power_on, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !217

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_power_on.__UNIQUE_ID_ddebug293, ptr noundef %5, ptr noundef nonnull @.str.66) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %regmap.i = getelementptr inbounds %struct.zpa2326_private, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 8
  %call1.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 32, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %zpa2326_enable_device.exit.thread77

zpa2326_enable_device.exit.thread77:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef %call1.i) #10
  br label %vdd20

do.body2.i:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_enable_device.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_power_on, %zpa2326_enable_device.exit.thread)) #7
          to label %if.end14 [label %zpa2326_enable_device.exit.thread], !srcloc !217

zpa2326_enable_device.exit.thread:                ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent9.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %parent9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent9.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_enable_device.__UNIQUE_ID_ddebug289, ptr noundef %13, ptr noundef nonnull @.str.12) #7
  br label %if.end14

if.end14:                                         ; preds = %zpa2326_enable_device.exit.thread, %do.body2.i
  %14 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.i, align 8
  %regmap.i60 = getelementptr inbounds %struct.zpa2326_private, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i60, align 8
  %call1.i61 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 34, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool.not.i62, label %if.end.i, label %sleep

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_reset_device.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_power_on, %zpa2326_reset_device.exit.thread)) #7
          to label %cleanup [label %zpa2326_reset_device.exit.thread], !srcloc !217

zpa2326_reset_device.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent9.i65 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %parent9.i65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent9.i65, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_reset_device.__UNIQUE_ID_ddebug291, ptr noundef %19, ptr noundef nonnull @.str.70) #7
  br label %cleanup

sleep:                                            ; preds = %if.end14
  %parent.i63 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %parent.i63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i63, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.68, i32 noundef %call1.i61) #10
  %22 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i.i, align 8
  %regmap.i68 = getelementptr inbounds %struct.zpa2326_private, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %regmap.i68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i68, align 8
  %call1.i69 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i69)
  %tobool.not.i70 = icmp eq i32 %call1.i69, 0
  br i1 %tobool.not.i70, label %do.body2.i73, label %do.end.i72

do.end.i72:                                       ; preds = %sleep
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %parent.i63 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i63, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.74, i32 noundef %call1.i69) #10
  br label %vdd20

do.body2.i73:                                     ; preds = %sleep
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_sleep.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_power_on, %if.then7.i75)) #7
          to label %vdd20 [label %if.then7.i75], !srcloc !217

if.then7.i75:                                     ; preds = %do.body2.i73
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %parent.i63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent.i63, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_sleep.__UNIQUE_ID_ddebug290, ptr noundef %29, ptr noundef nonnull @.str.76) #7
  br label %vdd20

vdd20:                                            ; preds = %if.then7.i75, %do.body2.i73, %do.end.i72, %zpa2326_enable_device.exit.thread77
  %err.0 = phi i32 [ %call1.i, %zpa2326_enable_device.exit.thread77 ], [ %call1.i61, %do.end.i72 ], [ %call1.i61, %do.body2.i73 ], [ %call1.i61, %if.then7.i75 ]
  %30 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vdd, align 4
  %call22 = tail call i32 @regulator_disable(ptr noundef %31) #7
  br label %vref23

vref23:                                           ; preds = %vdd20, %if.end.vref23_crit_edge
  %err.1 = phi i32 [ %call1, %if.end.vref23_crit_edge ], [ %err.0, %vdd20 ]
  %32 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vref, align 8
  %call25 = tail call i32 @regulator_disable(ptr noundef %33) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_power_on.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_power_on, %if.then38)) #7
          to label %cleanup [label %if.then38], !srcloc !217

if.then38:                                        ; preds = %vref23
  call void @__sanitizer_cov_trace_pc() #9
  %parent40 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %parent40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent40, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_power_on.__UNIQUE_ID_ddebug294, ptr noundef %35, ptr noundef nonnull @.str.67) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %vref23, %zpa2326_reset_device.exit.thread, %if.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %err.1, %if.then38 ], [ 0, %zpa2326_reset_device.exit.thread ], [ 0, %if.end.i ], [ %err.1, %vref23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zpa2326_config_oneshot(ptr nocapture noundef readonly %indio_dev, i32 noundef %irq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 35, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp = icmp sgt i32 %irq, 0
  br i1 %cmp, label %if.then4, label %if.end.do.body10_crit_edge

if.end.do.body10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 33, i32 noundef 251) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.do.body10_crit_edge, label %do.end

if.then4.do.body10_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.71, i32 noundef %call5) #10
  br label %cleanup

do.body10:                                        ; preds = %if.then4.do.body10_crit_edge, %if.end.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_config_oneshot.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_config_oneshot, %if.then15)) #7
          to label %cleanup [label %if.then15], !srcloc !217

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %parent17 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent17, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_config_oneshot.__UNIQUE_ID_ddebug296, ptr noundef %7, ptr noundef nonnull @.str.73, i32 noundef 23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zpa2326_sleep(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.74, i32 noundef %call1) #10
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_sleep.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_sleep, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !217

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %parent9 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent9, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_sleep.__UNIQUE_ID_ddebug290, ptr noundef %7, ptr noundef nonnull @.str.76) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body2, %do.end
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zpa2326_init_runtime(ptr noundef %parent) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usage_count.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !219
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %parent, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %parent) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %parent, i32 noundef 1000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %parent, i1 noundef zeroext true) #7
  %call.i8 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 12, i32 22
  %1 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store volatile i64 %call.i8, ptr %last_busy.i, align 8
  %call.i9 = tail call i32 @__pm_runtime_suspend(ptr noundef %parent, i32 noundef 13) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zpa2326_fini_runtime(ptr noundef %parent) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %parent, i1 noundef zeroext true) #7
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %parent, i32 noundef 2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zpa2326_power_off(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %private) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.zpa2326_private, ptr %private, i32 0, i32 9
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #7
  %vref = getelementptr inbounds %struct.zpa2326_private, ptr %private, i32 0, i32 8
  %2 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vref, align 8
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_power_off.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_power_off, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_power_off.__UNIQUE_ID_ddebug295, ptr noundef %5, ptr noundef nonnull @.str.67) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zpa2326_remove(ptr nocapture noundef readonly %parent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #7
  %parent1 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #7
  %call.i.i = tail call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 2) #7
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 8
  %regmap.i = getelementptr inbounds %struct.zpa2326_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  %call1.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.74, i32 noundef %call1.i) #10
  br label %zpa2326_sleep.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_sleep.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_remove, %if.then7.i)) #7
          to label %zpa2326_sleep.exit [label %if.then7.i], !srcloc !217

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_sleep.__UNIQUE_ID_ddebug290, ptr noundef %11, ptr noundef nonnull @.str.76) #7
  br label %zpa2326_sleep.exit

zpa2326_sleep.exit:                               ; preds = %if.then7.i, %do.body2.i, %do.end.i
  %12 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i, align 8
  %vdd.i = getelementptr inbounds %struct.zpa2326_private, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdd.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %15) #7
  %vref.i = getelementptr inbounds %struct.zpa2326_private, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %vref.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vref.i, align 8
  %call1.i8 = tail call i32 @regulator_disable(ptr noundef %17) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_power_off.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_remove, %if.then.i)) #7
          to label %zpa2326_power_off.exit [label %if.then.i], !srcloc !217

if.then.i:                                        ; preds = %zpa2326_sleep.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_power_off.__UNIQUE_ID_ddebug295, ptr noundef %19, ptr noundef nonnull @.str.67) #7
  br label %zpa2326_power_off.exit

zpa2326_power_off.exit:                           ; preds = %if.then.i, %zpa2326_sleep.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @pm_runtime_autosuspend_expiration(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %mask, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb5
    i32 12, label %sw.bb9
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chan, align 4
  %call = tail call fastcc i32 @zpa2326_sample_oneshot(ptr noundef %indio_dev, i32 noundef %2, ptr noundef %val)
  br label %return

sw.bb1:                                           ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %4, label %sw.bb1.return_crit_edge [
    i32 17, label %sw.bb3
    i32 9, label %sw.bb4
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb3:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %val, align 4
  %7 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64000, ptr %val2, align 4
  br label %return

sw.bb4:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %val, align 4
  %9 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 490000, ptr %val2, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %cond = icmp eq i32 %11, 9
  br i1 %cond, label %sw.bb7, label %sw.bb5.return_crit_edge

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb7:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -17683000, ptr %val, align 4
  %13 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 649, ptr %val2, align 4
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %14 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.i, align 8
  %frequency.i = getelementptr inbounds %struct.zpa2326_private, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %frequency.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %frequency.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  br label %return

return:                                           ; preds = %sw.bb9, %sw.bb7, %sw.bb5.return_crit_edge, %sw.bb4, %sw.bb3, %sw.bb1.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb9 ], [ 10, %sw.bb7 ], [ 2, %sw.bb4 ], [ 10, %sw.bb3 ], [ %call, %sw.bb ], [ -22, %sw.bb1.return_crit_edge ], [ -22, %sw.bb5.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cmp.not = icmp eq i32 %mask, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool.not = icmp eq i32 %val2, 0
  %or.cond = and i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %2 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %val, label %if.end.return_crit_edge [
    i32 1, label %if.end.if.end5.i_crit_edge
    i32 5, label %if.end5.fold.split.i
    i32 11, label %if.end5.fold.split24.i
    i32 23, label %if.end5.fold.split25.i
  ]

if.end.if.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end5.fold.split24.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end5.fold.split25.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end5.fold.split25.i, %if.end5.fold.split24.i, %if.end5.fold.split.i, %if.end.if.end5.i_crit_edge
  %freq.022.lcssa.i = phi i32 [ 0, %if.end.if.end5.i_crit_edge ], [ 1, %if.end5.fold.split.i ], [ 2, %if.end5.fold.split24.i ], [ 3, %if.end5.fold.split25.i ]
  %call6.i = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end5.i.return_crit_edge

if.end5.i.return_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.i = getelementptr [4 x %struct.zpa2326_frequency], ptr @zpa2326_sampling_frequencies, i32 0, i32 %freq.022.lcssa.i
  %frequency.i = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %frequency.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx9.i, ptr %frequency.i, align 4
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  br label %return

return:                                           ; preds = %if.end8.i, %if.end5.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end8.i ], [ %call6.i, %if.end5.i.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zpa2326_sample_oneshot(ptr noundef %indio_dev, i32 noundef %type, ptr noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @zpa2326_resume(ptr noundef %indio_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.release_crit_edge, label %if.end3

if.end.release_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %release

if.end3:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp5.not = icmp eq i32 %call1, 0
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %type)
  %cmp7 = icmp eq i32 %type, 17
  br i1 %cmp7, label %if.then8, label %if.then6.if.end18_crit_edge

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then8:                                         ; preds = %if.then6
  %call9 = tail call fastcc i32 @zpa2326_clear_fifo(ptr noundef %indio_dev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end18_crit_edge, label %if.then8.suspend_crit_edge

if.then8.suspend_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %suspend

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.else:                                          ; preds = %if.end3
  %irq = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  %regmap.i = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %call2.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 35, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.suspend_crit_edge

if.else.suspend_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %suspend

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp sgt i32 %3, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.do.body10.i_crit_edge

if.end.i.do.body10.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10.i

if.then4.i:                                       ; preds = %if.end.i
  %call5.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 33, i32 noundef 251) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.do.body10.i_crit_edge, label %do.end.i

if.then4.i.do.body10.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.71, i32 noundef %call5.i) #10
  br label %suspend

do.body10.i:                                      ; preds = %if.then4.i.do.body10.i_crit_edge, %if.end.i.do.body10.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_config_oneshot.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_sample_oneshot, %if.then15.i)) #7
          to label %if.end18 [label %if.then15.i], !srcloc !217

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent17.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %parent17.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent17.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_config_oneshot.__UNIQUE_ID_ddebug296, ptr noundef %9, ptr noundef nonnull @.str.73, i32 noundef 23) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then15.i, %do.body10.i, %if.then8.if.end18_crit_edge, %if.then6.if.end18_crit_edge
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %regmap.i57 = getelementptr inbounds %struct.zpa2326_private, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i57 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i57, align 8
  %call1.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 32, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i58 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i58, label %do.body2.i, label %zpa2326_start_oneshot.exit.thread63

zpa2326_start_oneshot.exit.thread63:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i59 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %parent.i59 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i59, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.16, i32 noundef %call1.i) #10
  br label %suspend

do.body2.i:                                       ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_start_oneshot.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_sample_oneshot, %zpa2326_start_oneshot.exit.thread)) #7
          to label %if.end22 [label %zpa2326_start_oneshot.exit.thread], !srcloc !217

zpa2326_start_oneshot.exit.thread:                ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent9.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %parent9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent9.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_start_oneshot.__UNIQUE_ID_ddebug292, ptr noundef %17, ptr noundef nonnull @.str.18) #7
  br label %if.end22

if.end22:                                         ; preds = %zpa2326_start_oneshot.exit.thread, %do.body2.i
  %irq23 = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %irq23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp24 = icmp sgt i32 %19, 0
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call fastcc i32 @zpa2326_wait_oneshot_completion(ptr noundef %indio_dev, ptr noundef %1)
  br label %if.end29

if.else27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call fastcc i32 @zpa2326_poll_oneshot_completion(ptr noundef %indio_dev)
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then25
  %ret.0 = phi i32 [ %call26, %if.then25 ], [ %call28, %if.else27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool30.not = icmp eq i32 %ret.0, 0
  br i1 %tobool30.not, label %if.end32, label %if.end29.suspend_crit_edge

if.end29.suspend_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %suspend

if.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call fastcc i32 @zpa2326_fetch_raw_sample(ptr noundef %indio_dev, i32 noundef %type, ptr noundef %value)
  br label %suspend

suspend:                                          ; preds = %if.end32, %if.end29.suspend_crit_edge, %zpa2326_start_oneshot.exit.thread63, %do.end.i, %if.else.suspend_crit_edge, %if.then8.suspend_crit_edge
  %ret.1 = phi i32 [ %call9, %if.then8.suspend_crit_edge ], [ %ret.0, %if.end29.suspend_crit_edge ], [ %call33, %if.end32 ], [ %call1.i, %zpa2326_start_oneshot.exit.thread63 ], [ %call2.i, %if.else.suspend_crit_edge ], [ %call5.i, %do.end.i ]
  tail call fastcc void @zpa2326_suspend(ptr noundef %indio_dev)
  br label %release

release:                                          ; preds = %suspend, %if.end.release_crit_edge
  %ret.2 = phi i32 [ %call1, %if.end.release_crit_edge ], [ %ret.1, %suspend ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #7
  br label %cleanup

cleanup:                                          ; preds = %release, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %release ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zpa2326_resume(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i12 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not = icmp eq i32 %call.i, 0
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 8
  %regmap.i = getelementptr inbounds %struct.zpa2326_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  %call1.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 32, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %do.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %call1.i) #10
  br label %cleanup

do.body2.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_enable_device.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_resume, %if.then7.i)) #7
          to label %cleanup [label %if.then7.i], !srcloc !217

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_enable_device.__UNIQUE_ID_ddebug289, ptr noundef %11, ptr noundef nonnull @.str.12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %do.body2.i, %do.end.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %do.end.i ], [ 1, %do.body2.i ], [ 1, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zpa2326_clear_fifo(ptr nocapture noundef readonly %indio_dev, i32 noundef %min_count) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_count)
  %tobool.not = icmp eq i32 %min_count, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body.preheader_crit_edge

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.preheader

if.then:                                          ; preds = %entry
  %call1 = call i32 @regmap_read(ptr noundef %3, i32 noundef 39, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.do.end33_crit_edge, label %if.end

if.then.do.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

if.end:                                           ; preds = %if.then
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.do.body.preheader_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.do.body.preheader_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.end.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %min_count.addr.0 = phi i32 [ %min_count.addr.1, %do.cond.do.body_crit_edge ], [ %min_count, %do.body.preheader ]
  %call7 = call i32 @regmap_read(ptr noundef %3, i32 noundef 42, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.body.do.end33_crit_edge, label %if.end10

do.body.do.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

if.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_count.addr.0)
  %tobool11.not = icmp eq i32 %min_count.addr.0, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dec = add i32 %min_count.addr.0, -1
  br label %do.cond

if.end13:                                         ; preds = %if.end10
  %call14 = call i32 @regmap_read(ptr noundef %3, i32 noundef 39, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.do.end33_crit_edge, label %if.end13.do.cond_crit_edge

if.end13.do.cond_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond

if.end13.do.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.cond:                                          ; preds = %if.end13.do.cond_crit_edge, %if.then12
  %min_count.addr.1 = phi i32 [ %dec, %if.then12 ], [ 0, %if.end13.do.cond_crit_edge ]
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and18 = and i32 %8, 4
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.cond.do.body_crit_edge, label %do.body20

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body20:                                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_clear_fifo.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_clear_fifo, %if.then26)) #7
          to label %cleanup [label %if.then26], !srcloc !217

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_clear_fifo.__UNIQUE_ID_ddebug297, ptr noundef %10, ptr noundef nonnull @.str.14) #7
  br label %cleanup

do.end33:                                         ; preds = %if.end13.do.end33_crit_edge, %do.body.do.end33_crit_edge, %if.then.do.end33_crit_edge
  %err.0 = phi i32 [ %call1, %if.then.do.end33_crit_edge ], [ %call14, %if.end13.do.end33_crit_edge ], [ %call7, %do.body.do.end33_crit_edge ]
  %parent35 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %parent35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent35, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.15, i32 noundef %err.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.then26, %do.body20, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end33 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %do.body20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zpa2326_wait_oneshot_completion(ptr nocapture noundef readonly %indio_dev, ptr noundef %private) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !218
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_wait_oneshot_completion.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_wait_oneshot_completion, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_wait_oneshot_completion.__UNIQUE_ID_ddebug300, ptr noundef %2, ptr noundef nonnull @.str.20) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data_ready = getelementptr inbounds %struct.zpa2326_private, ptr %private, i32 0, i32 3
  %call3 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %data_ready, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %result = getelementptr inbounds %struct.zpa2326_private, ptr %private, i32 0, i32 2
  %3 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %result, align 4
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %regmap = getelementptr inbounds %struct.zpa2326_private, ptr %private, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 8
  %call6 = call i32 @regmap_read(ptr noundef %6, i32 noundef 36, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool7.not = icmp eq i32 %call3, 0
  %parent13 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent13, align 8
  br i1 %tobool7.not, label %do.end11, label %do.end17

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 0) #10
  br label %cleanup

do.end17:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.24) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %do.end11, %if.then4
  %retval.0 = phi i32 [ %4, %if.then4 ], [ -512, %do.end17 ], [ -62, %do.end11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zpa2326_poll_oneshot_completion(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 20
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.zpa2326_private, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !218
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_poll_oneshot_completion.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_poll_oneshot_completion, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_poll_oneshot_completion.__UNIQUE_ID_ddebug301, ptr noundef %7, ptr noundef nonnull @.str.27) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @msleep_interruptible(i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.cond.preheader, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end
  %call841 = call i32 @regmap_read(ptr noundef %4, i32 noundef 32, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call841)
  %cmp42 = icmp slt i32 %call841, 0
  br i1 %cmp42, label %while.cond.preheader.do.end28_crit_edge, label %while.cond.preheader.if.end10_crit_edge

while.cond.preheader.if.end10_crit_edge:          ; preds = %while.cond.preheader
  br label %if.end10

while.cond.preheader.do.end28_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

if.end10:                                         ; preds = %if.end16.if.end10_crit_edge, %while.cond.preheader.if.end10_crit_edge
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %while.end, label %if.end13

if.end13:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %if.end13.do.end28_crit_edge, label %if.end16

if.end13.do.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

if.end16:                                         ; preds = %if.end13
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  %call8 = call i32 @regmap_read(ptr noundef %4, i32 noundef 32, ptr noundef nonnull %val) #7
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end16.do.end28_crit_edge, label %if.end16.if.end10_crit_edge

if.end16.if.end10_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end16.do.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

while.end:                                        ; preds = %if.end10
  %call17 = call i32 @regmap_read(ptr noundef %4, i32 noundef 39, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %while.end.do.end28_crit_edge, label %if.end20

while.end.do.end28_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

if.end20:                                         ; preds = %while.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and21 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.do.end28_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20.do.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

do.end28:                                         ; preds = %if.end20.do.end28_crit_edge, %while.end.do.end28_crit_edge, %if.end16.do.end28_crit_edge, %if.end13.do.end28_crit_edge, %while.cond.preheader.do.end28_crit_edge
  %err.0 = phi i32 [ %call17, %while.end.do.end28_crit_edge ], [ -61, %if.end20.do.end28_crit_edge ], [ %call841, %while.cond.preheader.do.end28_crit_edge ], [ %call8, %if.end16.do.end28_crit_edge ], [ -62, %if.end13.do.end28_crit_edge ]
  %parent30 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %parent30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent30, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.28, i32 noundef %err.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end20.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end28 ], [ -512, %do.end.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zpa2326_fetch_raw_sample(ptr nocapture noundef readonly %indio_dev, i32 noundef %type, ptr noundef %value) unnamed_addr #2 align 64 {
entry:
  %v = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %v) #7
  %4 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %v, align 1, !annotation !218
  %5 = getelementptr inbounds [3 x i8], ptr %v, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !218
  %7 = getelementptr inbounds [3 x i8], ptr %v, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !218
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 17, label %do.body
    i32 9, label %do.body15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_fetch_raw_sample.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_fetch_raw_sample, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_fetch_raw_sample.__UNIQUE_ID_ddebug302, ptr noundef %11, ptr noundef nonnull @.str.30) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call4 = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 40, ptr noundef nonnull %v, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %parent11 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %parent11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent11, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.31, i32 noundef %call4) #10
  br label %cleanup

if.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %v, align 1
  %conv.i.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %5, align 1
  %conv2.i.i = zext i8 %17 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %7, align 1
  %conv4.i.i = zext i8 %19 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %or6.i.i = or i32 %or.i.i, %shl5.i.i
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or6.i.i, ptr %value, align 4
  br label %cleanup

do.body15:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_fetch_raw_sample.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_fetch_raw_sample, %if.then27)) #7
          to label %do.end32 [label %if.then27], !srcloc !217

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %parent29 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %parent29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent29, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_fetch_raw_sample.__UNIQUE_ID_ddebug303, ptr noundef %22, ptr noundef nonnull @.str.32) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body15
  %call33 = tail call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 43, ptr noundef %value, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %parent40 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %parent40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent40, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.34, i32 noundef %call33) #10
  br label %cleanup

if.end41:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %value, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #7
  %conv = zext i16 %27 to i32
  %28 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end38, %if.end12, %do.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %do.end38 ], [ 1, %if.end41 ], [ %call4, %do.end9 ], [ 1, %if.end12 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %v) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zpa2326_suspend(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %regmap.i = getelementptr inbounds %struct.zpa2326_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %call1.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body2.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.74, i32 noundef %call1.i) #10
  br label %zpa2326_sleep.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_sleep.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_suspend, %if.then7.i)) #7
          to label %zpa2326_sleep.exit [label %if.then7.i], !srcloc !217

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_sleep.__UNIQUE_ID_ddebug290, ptr noundef %9, ptr noundef nonnull @.str.76) #7
  br label %zpa2326_sleep.exit

zpa2326_sleep.exit:                               ; preds = %if.then7.i, %do.body2.i, %do.end.i
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i5 = tail call i32 @__pm_runtime_suspend(ptr noundef %1, i32 noundef 13) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_trigger_using_own(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zpa2326_fill_sample_buffer(ptr noundef %indio_dev, ptr nocapture noundef readonly %private) unnamed_addr #2 align 64 {
entry:
  %sample = alloca %struct.anon.86, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sample) #7
  %0 = call ptr @memset(ptr %sample, i32 255, i32 16)
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %1 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %active_scan_mask, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @zpa2326_dequeue_pressure(ptr noundef %indio_dev, ptr noundef nonnull %sample)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.31, i32 noundef %call1) #10
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %7 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %active_scan_mask, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.end4.do.body19_crit_edge, label %if.then8

if.end4.do.body19_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

if.then8:                                         ; preds = %if.end4
  %regmap = getelementptr inbounds %struct.zpa2326_private, ptr %private, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 8
  %temperature = getelementptr inbounds %struct.anon.86, ptr %sample, i32 0, i32 1
  %call9 = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 43, ptr noundef %temperature, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.do.body19_crit_edge, label %do.end14

if.then8.do.body19_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %parent16 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %parent16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent16, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.34, i32 noundef %call9) #10
  br label %cleanup

do.body19:                                        ; preds = %if.then8.do.body19_crit_edge, %if.end4.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_fill_sample_buffer.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_fill_sample_buffer, %if.then24)) #7
          to label %do.end29 [label %if.then24], !srcloc !217

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %parent26 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %parent26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent26, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_fill_sample_buffer.__UNIQUE_ID_ddebug299, ptr noundef %17, ptr noundef nonnull @.str.39) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body19
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 9
  %18 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %scan_timestamp.i, align 8, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %do.end29.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

do.end29.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %private to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %private, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 4
  %22 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %23, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %sample, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %21, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %do.end29.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %indio_dev, ptr noundef nonnull %sample) #7
  br label %cleanup

cleanup:                                          ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end14, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zpa2326_dequeue_pressure(ptr nocapture noundef readonly %indio_dev, ptr noundef %pressure) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !218
  %call1 = call i32 @regmap_read(ptr noundef %3, i32 noundef 39, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pressure to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pressure, align 4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.body9_crit_edge, label %do.end

if.end.do.body9_crit_edge:                        ; preds = %if.end
  br label %do.body9

do.end:                                           ; preds = %if.end
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.40) #10
  %call3 = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 40, ptr noundef %pressure, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call fastcc i32 @zpa2326_clear_fifo(ptr noundef %indio_dev, i32 noundef 15)
  br label %cleanup

do.body9:                                         ; preds = %if.end17.do.body9_crit_edge, %if.end.do.body9_crit_edge
  %cleared.0 = phi i32 [ %inc, %if.end17.do.body9_crit_edge ], [ -1, %if.end.do.body9_crit_edge ]
  %call10 = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef 40, ptr noundef %pressure, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %do.body9
  %call14 = call i32 @regmap_read(ptr noundef %3, i32 noundef 39, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %inc = add i32 %cleared.0, 1
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %and19 = and i32 %11, 4
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.do.body9_crit_edge, label %do.end21

if.end17.do.body9_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

do.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool22.not = icmp eq i32 %inc, 0
  br i1 %tobool22.not, label %do.end21.cleanup_crit_edge, label %do.body24

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body24:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_dequeue_pressure.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_dequeue_pressure, %if.then30)) #7
          to label %cleanup [label %if.then30], !srcloc !217

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %parent32 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %parent32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent32, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_dequeue_pressure.__UNIQUE_ID_ddebug298, ptr noundef %13, ptr noundef nonnull @.str.42, i32 noundef %inc) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body24, %do.end21.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.body9.cleanup_crit_edge, %if.end6, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %do.end.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %do.end21.cleanup_crit_edge ], [ 0, %do.body24 ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call10, %do.body9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_preenable_buffer(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @zpa2326_resume(ptr noundef %indio_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool = icmp ne ptr %1, null
  %waken = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 5
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %waken to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %waken, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_postenable_buffer(ptr noundef %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %waken = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %waken to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %waken, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @zpa2326_clear_fifo(ptr noundef %indio_dev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.43, i32 noundef %call1) #10
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %indio_dev) #7
  br i1 %call5, label %if.end4.cleanup_crit_edge, label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %6 = ptrtoint ptr %waken to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %waken, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %if.then8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  %irq = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 8
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %regmap.i = getelementptr inbounds %struct.zpa2326_private, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 8
  %call2.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 35, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.do.end14_crit_edge

if.then8.do.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp sgt i32 %9, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.do.body10.i_crit_edge

if.end.i.do.body10.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10.i

if.then4.i:                                       ; preds = %if.end.i
  %call5.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 33, i32 noundef 251) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then4.i.do.body10.i_crit_edge, label %do.end.i

if.then4.i.do.body10.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.71, i32 noundef %call5.i) #10
  br label %do.end14

do.body10.i:                                      ; preds = %if.then4.i.do.body10.i_crit_edge, %if.end.i.do.body10.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_config_oneshot.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_postenable_buffer, %if.then15.i)) #7
          to label %cleanup [label %if.then15.i], !srcloc !217

if.then15.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent17.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %parent17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent17.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_config_oneshot.__UNIQUE_ID_ddebug296, ptr noundef %17, ptr noundef nonnull @.str.73, i32 noundef 23) #7
  br label %cleanup

do.end14:                                         ; preds = %do.end.i, %if.then8.do.end14_crit_edge
  %retval.0.i.ph = phi i32 [ %call2.i, %if.then8.do.end14_crit_edge ], [ %call5.i, %do.end.i ]
  %parent16 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %parent16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.then15.i, %do.body10.i, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end14 ], [ %call1, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %do.body10.i ], [ 0, %if.then15.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_postdisable_buffer(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @zpa2326_suspend(ptr noundef %indio_dev)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_set_trigger_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  br i1 %state, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !218
  %irq = getelementptr inbounds %struct.zpa2326_private, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %8) #7
  %regmap = getelementptr inbounds %struct.zpa2326_private, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 8
  %call3 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 35, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup.thread_crit_edge

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 8
  %call7 = call i32 @regmap_read(ptr noundef %12, i32 noundef 36, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end.cleanup.thread_crit_edge, label %if.end10

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 8
  call void @enable_irq(i32 noundef %14) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_set_trigger_state.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_set_trigger_state, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !217

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %parent19 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %parent19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent19, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_set_trigger_state.__UNIQUE_ID_ddebug304, ptr noundef %16, ptr noundef nonnull @.str.51) #7
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call7, %if.end.cleanup.thread_crit_edge ], [ %call3, %if.then.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %cleanup56

cleanup:                                          ; preds = %if.then17, %if.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %cleanup56

if.else:                                          ; preds = %entry
  %waken = getelementptr inbounds %struct.zpa2326_private, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %waken to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %waken, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool21.not = icmp eq i8 %18, 0
  br i1 %tobool21.not, label %if.else.if.end28_crit_edge, label %if.then22

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %if.else
  %regmap23 = getelementptr inbounds %struct.zpa2326_private, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %regmap23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap23, align 8
  %call24 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 33, i32 noundef 251) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.if.end28_crit_edge, label %if.then22.cleanup56_crit_edge

if.then22.cleanup56_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.else.if.end28_crit_edge
  %regmap29 = getelementptr inbounds %struct.zpa2326_private, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap29, align 8
  %frequency = getelementptr inbounds %struct.zpa2326_private, ptr %5, i32 0, i32 7
  %23 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %frequency, align 4
  %odr30 = getelementptr inbounds %struct.zpa2326_frequency, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %odr30 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %odr30, align 4
  %27 = or i16 %26, 128
  %or = zext i16 %27 to i32
  %call32 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 35, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body36, label %if.end28.cleanup56_crit_edge

if.end28.cleanup56_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

do.body36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zpa2326_set_trigger_state.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zpa2326_set_trigger_state, %if.then48)) #7
          to label %cleanup56 [label %if.then48], !srcloc !217

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %parent50 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %parent50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent50, align 8
  %30 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %frequency, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zpa2326_set_trigger_state.__UNIQUE_ID_ddebug305, ptr noundef %29, ptr noundef nonnull @.str.52, i32 noundef %33) #7
  br label %cleanup56

cleanup56:                                        ; preds = %if.then48, %do.body36, %if.end28.cleanup56_crit_edge, %if.then22.cleanup56_crit_edge, %cleanup, %cleanup.thread
  %retval.1 = phi i32 [ %call24, %if.then22.cleanup56_crit_edge ], [ %call32, %if.end28.cleanup56_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ 0, %do.body36 ], [ 0, %cleanup ], [ 0, %if.then48 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_handle_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %1, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %data) #7
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call1, ptr %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_handle_threaded_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !218
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %4, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %data) #7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %5 = phi i1 [ false, %entry.land.end_crit_edge ], [ %call2, %land.rhs ]
  %regmap = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 36, ptr noundef nonnull %val) #7
  %result = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %land.end
  br i1 %5, label %if.then.cleanup_crit_edge, label %if.then.complete_crit_edge

if.then.complete_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %complete

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %land.end
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6
  %parent = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.63, i32 noundef %10) #10
  br i1 %5, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -61, ptr %result, align 4
  br label %complete

if.end13:                                         ; preds = %if.end6
  %trigger = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trigger, align 8
  call void @iio_trigger_poll_chained(ptr noundef %15) #7
  br i1 %5, label %if.end13.cleanup_crit_edge, label %if.end13.complete_crit_edge

if.end13.complete_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %complete

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

complete:                                         ; preds = %if.end13.complete_crit_edge, %if.end11, %if.then.complete_crit_edge
  %ret.0 = phi i32 [ 0, %if.then.complete_crit_edge ], [ 0, %if.end11 ], [ 1, %if.end13.complete_crit_edge ]
  %data_ready = getelementptr inbounds %struct.zpa2326_private, ptr %1, i32 0, i32 3
  call void @complete(ptr noundef %data_ready) #7
  br label %cleanup

cleanup:                                          ; preds = %complete, %if.end13.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %complete ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !122, !123, !125, !126, !128, !130, !131, !132, !133, !135, !136, !138, !140, !141, !142, !143, !145, !147, !148, !149, !151, !152, !154, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !183, !184, !185, !186, !188, !189, !191, !192, !193, !194, !196, !197, !199, !200, !201, !202, !204, !205, !207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @__ksymtab_zpa2326_isreg_writeable, !1, !"__ksymtab_zpa2326_isreg_writeable", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/zpa2326.c", i32 165, i32 1}
!2 = !{ptr @__ksymtab_zpa2326_isreg_readable, !3, !"__ksymtab_zpa2326_isreg_readable", i1 false, i1 false}
!3 = !{!"../drivers/iio/pressure/zpa2326.c", i32 194, i32 1}
!4 = !{ptr @__ksymtab_zpa2326_isreg_precious, !5, !"__ksymtab_zpa2326_isreg_precious", i1 false, i1 false}
!5 = !{!"../drivers/iio/pressure/zpa2326.c", i32 207, i32 1}
!6 = !{ptr @zpa2326_pm_ops, !7, !"zpa2326_pm_ops", i1 false, i1 false}
!7 = !{!"../drivers/iio/pressure/zpa2326.c", i32 646, i32 25}
!8 = !{ptr @__ksymtab_zpa2326_pm_ops, !9, !"__ksymtab_zpa2326_pm_ops", i1 false, i1 false}
!9 = !{!"../drivers/iio/pressure/zpa2326.c", i32 652, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1624, i32 42}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1628, i32 41}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1667, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @zpa2326_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @zpa2326_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_zpa2326_probe, !23, !"__ksymtab_zpa2326_probe", i1 false, i1 false}
!23 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1701, i32 1}
!24 = !{ptr @__ksymtab_zpa2326_remove, !25, !"__ksymtab_zpa2326_remove", i1 false, i1 false}
!25 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1712, i32 1}
!26 = !{ptr @__UNIQUE_ID_author306, !27, !"__UNIQUE_ID_author306", i1 false, i1 false}
!27 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1714, i32 1}
!28 = !{ptr @__UNIQUE_ID_description307, !29, !"__UNIQUE_ID_description307", i1 false, i1 false}
!29 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1715, i32 1}
!30 = !{ptr @__UNIQUE_ID_file308, !31, !"__UNIQUE_ID_file308", i1 false, i1 false}
!31 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1716, i32 1}
!32 = !{ptr @__UNIQUE_ID_license309, !31, !"__UNIQUE_ID_license309", i1 false, i1 false}
!33 = !{ptr @zpa2326_channels, !34, !"zpa2326_channels", i1 false, i1 false}
!34 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1548, i32 35}
!35 = !{ptr @zpa2326_info, !36, !"zpa2326_info", i1 false, i1 false}
!36 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1579, i32 30}
!37 = !{ptr @zpa2326_attribute_group, !38, !"zpa2326_attribute_group", i1 false, i1 false}
!38 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1468, i32 37}
!39 = !{ptr @zpa2326_attributes, !40, !"zpa2326_attributes", i1 false, i1 false}
!40 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1463, i32 26}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1461, i32 8}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @iio_const_attr_sampling_frequency_available, !42, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/pressure/zpa2326.c", i32 226, i32 3}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @zpa2326_enable_device._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @zpa2326_enable_device._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/pressure/zpa2326.c", i32 230, i32 2}
!52 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @zpa2326_enable_device.__UNIQUE_ID_ddebug289, !51, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/pressure/zpa2326.c", i32 492, i32 2}
!56 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @zpa2326_clear_fifo.__UNIQUE_ID_ddebug297, !55, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/pressure/zpa2326.c", i32 497, i32 2}
!60 = !{ptr @zpa2326_clear_fifo._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @zpa2326_clear_fifo._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/pressure/zpa2326.c", i32 309, i32 3}
!64 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @zpa2326_start_oneshot._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @zpa2326_start_oneshot._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/pressure/zpa2326.c", i32 314, i32 2}
!69 = !{ptr @zpa2326_start_oneshot.__UNIQUE_ID_ddebug292, !68, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/pressure/zpa2326.c", i32 866, i32 2}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @zpa2326_wait_oneshot_completion.__UNIQUE_ID_ddebug300, !71, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/pressure/zpa2326.c", i32 882, i32 3}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @zpa2326_wait_oneshot_completion._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @zpa2326_wait_oneshot_completion._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/pressure/zpa2326.c", i32 887, i32 2}
!81 = !{ptr @zpa2326_wait_oneshot_completion._entry.23, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @zpa2326_wait_oneshot_completion._entry_ptr.25, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/pressure/zpa2326.c", i32 944, i32 2}
!85 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @zpa2326_poll_oneshot_completion.__UNIQUE_ID_ddebug301, !84, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/pressure/zpa2326.c", i32 990, i32 2}
!89 = !{ptr @zpa2326_poll_oneshot_completion._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @zpa2326_poll_oneshot_completion._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1015, i32 3}
!93 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @zpa2326_fetch_raw_sample.__UNIQUE_ID_ddebug302, !92, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1019, i32 4}
!97 = !{ptr @zpa2326_fetch_raw_sample._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @zpa2326_fetch_raw_sample._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1029, i32 3}
!101 = !{ptr @zpa2326_fetch_raw_sample.__UNIQUE_ID_ddebug303, !100, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1033, i32 4}
!104 = !{ptr @zpa2326_fetch_raw_sample._entry.33, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @zpa2326_fetch_raw_sample._entry_ptr.35, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @zpa2326_sampling_frequencies, !107, !"zpa2326_sampling_frequencies", i1 false, i1 false}
!107 = !{!"../drivers/iio/pressure/zpa2326.c", i32 91, i32 39}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/pressure/zpa2326.c", i32 593, i32 4}
!110 = !{ptr @zpa2326_fill_sample_buffer._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @zpa2326_fill_sample_buffer._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @zpa2326_fill_sample_buffer._entry.37, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/iio/pressure/zpa2326.c", i32 604, i32 4}
!114 = !{ptr @zpa2326_fill_sample_buffer._entry_ptr.38, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/pressure/zpa2326.c", i32 617, i32 2}
!117 = !{ptr @zpa2326_fill_sample_buffer.__UNIQUE_ID_ddebug299, !116, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/pressure/zpa2326.c", i32 532, i32 3}
!120 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @zpa2326_dequeue_pressure._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @zpa2326_dequeue_pressure._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/pressure/zpa2326.c", i32 567, i32 3}
!125 = !{ptr @zpa2326_dequeue_pressure.__UNIQUE_ID_ddebug298, !124, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!126 = !{ptr @zpa2326_buffer_setup_ops, !127, !"zpa2326_buffer_setup_ops", i1 false, i1 false}
!127 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1283, i32 42}
!128 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1254, i32 4}
!130 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @zpa2326_postenable_buffer._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @zpa2326_postenable_buffer._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @zpa2326_postenable_buffer._entry.45, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1267, i32 4}
!135 = !{ptr @zpa2326_postenable_buffer._entry_ptr.46, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1410, i32 43}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1424, i32 3}
!140 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @zpa2326_init_managed_trigger._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @zpa2326_init_managed_trigger._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @zpa2326_trigger_ops, !144, !"zpa2326_trigger_ops", i1 false, i1 false}
!144 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1380, i32 37}
!145 = !{ptr @.str.50, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1350, i32 3}
!147 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @zpa2326_set_trigger_state.__UNIQUE_ID_ddebug304, !146, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!149 = !{ptr @.str.52, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/pressure/zpa2326.c", i32 1373, i32 3}
!151 = !{ptr @zpa2326_set_trigger_state.__UNIQUE_ID_ddebug305, !150, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!152 = !{ptr @.str.53, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/iio/pressure/zpa2326.c", i32 905, i32 3}
!154 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @zpa2326_init_managed_irq._entry, !153, !"_entry", i1 false, i1 false}
!157 = !{ptr @zpa2326_init_managed_irq._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/iio/pressure/zpa2326.c", i32 917, i32 3}
!160 = !{ptr @zpa2326_init_managed_irq._entry.56, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @zpa2326_init_managed_irq._entry_ptr.58, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/iio/pressure/zpa2326.c", i32 922, i32 2}
!164 = !{ptr @zpa2326_init_managed_irq._entry.59, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @zpa2326_init_managed_irq._entry_ptr.61, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @init_completion.__key, !167, !"__key", i1 false, i1 false}
!167 = !{!"../include/linux/completion.h", i32 87, i32 2}
!168 = !{ptr @.str.62, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/iio/pressure/zpa2326.c", i32 821, i32 3}
!171 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @zpa2326_handle_threaded_irq._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @zpa2326_handle_threaded_irq._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.65, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/iio/pressure/zpa2326.c", i32 344, i32 2}
!176 = !{ptr @.str.66, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @zpa2326_power_on.__UNIQUE_ID_ddebug293, !175, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!178 = !{ptr @.str.67, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/iio/pressure/zpa2326.c", i32 363, i32 2}
!180 = !{ptr @zpa2326_power_on.__UNIQUE_ID_ddebug294, !179, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!181 = !{ptr @.str.68, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/iio/pressure/zpa2326.c", i32 278, i32 3}
!183 = !{ptr @.str.69, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @zpa2326_reset_device._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @zpa2326_reset_device._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.70, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/iio/pressure/zpa2326.c", i32 284, i32 2}
!188 = !{ptr @zpa2326_reset_device.__UNIQUE_ID_ddebug291, !187, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!189 = !{ptr @.str.71, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/iio/pressure/zpa2326.c", i32 421, i32 4}
!191 = !{ptr @.str.72, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @zpa2326_config_oneshot._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @zpa2326_config_oneshot._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.73, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/iio/pressure/zpa2326.c", i32 427, i32 2}
!196 = !{ptr @zpa2326_config_oneshot.__UNIQUE_ID_ddebug296, !195, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!197 = !{ptr @.str.74, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/iio/pressure/zpa2326.c", i32 252, i32 3}
!199 = !{ptr @.str.75, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @zpa2326_sleep._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @zpa2326_sleep._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/iio/pressure/zpa2326.c", i32 256, i32 2}
!204 = !{ptr @zpa2326_sleep.__UNIQUE_ID_ddebug290, !203, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!205 = !{ptr @.str.77, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/iio/pressure/zpa2326.c", i32 382, i32 2}
!207 = !{ptr @zpa2326_power_off.__UNIQUE_ID_ddebug295, !206, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{i64 2148999993, i64 2148999998, i64 2149000011, i64 2149000055, i64 2149000089, i64 2149000110}
!218 = !{!"auto-init"}
!219 = !{i64 2148386616, i64 2148386642, i64 2148386671, i64 2148386705, i64 2148386736, i64 2148386759}
!220 = !{i8 0, i8 2}
