; ModuleID = '/llk/IR_all_yes/drivers/iio/common/st_sensors/st_sensors_trigger.c_pt.bc'
source_filename = "../drivers/iio/common/st_sensors/st_sensors_trigger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st_sensors_allocate_trigger\22, \22a\22\09"
module asm "\09.weak\09__crc_st_sensors_allocate_trigger\09\09\09\09"
module asm "\09.long\09__crc_st_sensors_allocate_trigger\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_sensors_allocate_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22st_sensors_allocate_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_st_sensors_allocate_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st_sensors_validate_device\22, \22a\22\09"
module asm "\09.weak\09__crc_st_sensors_validate_device\09\09\09\09"
module asm "\09.long\09__crc_st_sensors_validate_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_sensors_validate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22st_sensors_validate_device\22\09\09\09\09\09"
module asm "__kstrtabns_st_sensors_validate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.st_sensor_data = type { ptr, %struct.iio_mount_matrix, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i8, i8, i32, i8, i8, i64, [32 x i8], [16 x i8], [112 x i8] }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.st_sensor_settings = type { i8, i8, [8 x [17 x i8]], ptr, i32, %struct.st_sensor_odr, %struct.st_sensor_power, %struct.st_sensor_axis, %struct.st_sensor_fullscale, %struct.st_sensor_bdu, %struct.st_sensor_das, %struct.st_sensor_data_ready_irq, %struct.st_sensor_sim, i8, i32 }
%struct.st_sensor_odr = type { i8, i8, [10 x %struct.st_sensor_odr_avl] }
%struct.st_sensor_odr_avl = type { i32, i8 }
%struct.st_sensor_power = type { i8, i8, i8, i8 }
%struct.st_sensor_axis = type { i8, i8 }
%struct.st_sensor_fullscale = type { i8, i8, [10 x %struct.st_sensor_fullscale_avl] }
%struct.st_sensor_fullscale_avl = type { i32, i8, i32, i32 }
%struct.st_sensor_bdu = type { i8, i8 }
%struct.st_sensor_das = type { i8, i8 }
%struct.st_sensor_data_ready_irq = type { %struct.st_sensor_int_drdy, %struct.st_sensor_int_drdy, i8, i8, %struct.anon.85, %struct.anon.86 }
%struct.st_sensor_int_drdy = type { i8, i8, i8, i8 }
%struct.anon.85 = type { i8, i8 }
%struct.anon.86 = type { i8, i8 }
%struct.st_sensor_sim = type { i8, i8 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-trigger\00", [21 x i8] zeroinitializer }, align 32
@st_sensors_allocate_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate iio trigger.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st_sensors_allocate_trigger\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/iio/common/st_sensors/st_sensors_trigger.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_sensors_allocate_trigger._entry_ptr = internal global ptr @st_sensors_allocate_trigger._entry, section ".printk_index", align 4
@st_sensors_allocate_trigger._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"falling/low specified for IRQ but hardware supports only rising/high: will request rising/high\0A\00", [32 x i8] zeroinitializer }, align 32
@st_sensors_allocate_trigger._entry_ptr.8 = internal global ptr @st_sensors_allocate_trigger._entry.6, section ".printk_index", align 4
@st_sensors_allocate_trigger._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 161, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"interrupts on the falling edge or active low level\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st_sensors_allocate_trigger._entry_ptr.12 = internal global ptr @st_sensors_allocate_trigger._entry.9, section ".printk_index", align 4
@st_sensors_allocate_trigger._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 166, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"interrupts on the rising edge\0A\00", [33 x i8] zeroinitializer }, align 32
@st_sensors_allocate_trigger._entry_ptr.15 = internal global ptr @st_sensors_allocate_trigger._entry.13, section ".printk_index", align 4
@st_sensors_allocate_trigger._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 170, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"interrupts active high level\0A\00", [34 x i8] zeroinitializer }, align 32
@st_sensors_allocate_trigger._entry_ptr.18 = internal global ptr @st_sensors_allocate_trigger._entry.16, section ".printk_index", align 4
@st_sensors_allocate_trigger._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"unsupported IRQ trigger specified (%lx), enforce rising edge\0A\00", [34 x i8] zeroinitializer }, align 32
@st_sensors_allocate_trigger._entry_ptr.21 = internal global ptr @st_sensors_allocate_trigger._entry.19, section ".printk_index", align 4
@st_sensors_allocate_trigger._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"edge IRQ not supported w/o stat register.\0A\00", [53 x i8] zeroinitializer }, align 32
@st_sensors_allocate_trigger._entry_ptr.24 = internal global ptr @st_sensors_allocate_trigger._entry.22, section ".printk_index", align 4
@st_sensors_allocate_trigger._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request trigger IRQ.\0A\00", [32 x i8] zeroinitializer }, align 32
@st_sensors_allocate_trigger._entry_ptr.27 = internal global ptr @st_sensors_allocate_trigger._entry.25, section ".printk_index", align 4
@st_sensors_allocate_trigger._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register iio trigger.\0A\00", [63 x i8] zeroinitializer }, align 32
@st_sensors_allocate_trigger._entry_ptr.30 = internal global ptr @st_sensors_allocate_trigger._entry.28, section ".printk_index", align 4
@__kstrtab_st_sensors_allocate_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_sensors_allocate_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_st_sensors_allocate_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_sensors_allocate_trigger to i32), ptr @__kstrtab_st_sensors_allocate_trigger, ptr @__kstrtabns_st_sensors_allocate_trigger }, section "___ksymtab+st_sensors_allocate_trigger", align 4
@__kstrtab_st_sensors_validate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_sensors_validate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_st_sensors_validate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_sensors_validate_device to i32), ptr @__kstrtab_st_sensors_validate_device, ptr @__kstrtabns_st_sensors_validate_device }, section "___ksymtab+st_sensors_validate_device", align 4
@__UNIQUE_ID_author292 = internal constant [53 x i8] c"st_sensors.author=Denis Ciocca <denis.ciocca@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [61 x i8] c"st_sensors.description=STMicroelectronics ST-sensors trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [57 x i8] c"st_sensors.file=drivers/iio/common/st_sensors/st_sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"st_sensors.license=GPL v2\00", section ".modinfo", align 1
@st_sensors_irq_thread.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st_sensors\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st_sensors_irq_thread\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spurious IRQ\0A\00", [18 x i8] zeroinitializer }, align 32
@st_sensors_irq_thread.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"more samples came in during polling\0A\00", [59 x i8] zeroinitializer }, align 32
@st_sensors_new_samples_available._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 46, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error checking samples available\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"st_sensors_new_samples_available\00", [63 x i8] zeroinitializer }, align 32
@st_sensors_new_samples_available._entry_ptr = internal global ptr @st_sensors_new_samples_available._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 128, i32 47 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 131, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 147, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 160, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 165, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 169, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 174, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 183, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 218, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 224, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 91, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 111, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [54 x i8] c"../drivers/iio/common/st_sensors/st_sensors_trigger.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 45, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_st_sensors_allocate_trigger, ptr @__ksymtab_st_sensors_validate_device, ptr @st_sensors_allocate_trigger._entry, ptr @st_sensors_allocate_trigger._entry.13, ptr @st_sensors_allocate_trigger._entry.16, ptr @st_sensors_allocate_trigger._entry.19, ptr @st_sensors_allocate_trigger._entry.22, ptr @st_sensors_allocate_trigger._entry.25, ptr @st_sensors_allocate_trigger._entry.28, ptr @st_sensors_allocate_trigger._entry.6, ptr @st_sensors_allocate_trigger._entry.9, ptr @st_sensors_allocate_trigger._entry_ptr, ptr @st_sensors_allocate_trigger._entry_ptr.12, ptr @st_sensors_allocate_trigger._entry_ptr.15, ptr @st_sensors_allocate_trigger._entry_ptr.18, ptr @st_sensors_allocate_trigger._entry_ptr.21, ptr @st_sensors_allocate_trigger._entry_ptr.24, ptr @st_sensors_allocate_trigger._entry_ptr.27, ptr @st_sensors_allocate_trigger._entry_ptr.30, ptr @st_sensors_allocate_trigger._entry_ptr.8, ptr @st_sensors_new_samples_available._entry, ptr @st_sensors_new_samples_available._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_allocate_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_allocate_trigger._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_allocate_trigger._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_allocate_trigger._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_allocate_trigger._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_allocate_trigger._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_allocate_trigger._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_allocate_trigger._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_allocate_trigger._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_sensors_new_samples_available._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_sensors_allocate_trigger(ptr noundef %indio_dev, ptr noundef %trigger_ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %parent1 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %call2 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef %5) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %1, align 128
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call2, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %indio_dev, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %trigger_ops, ptr %9, align 8
  %irq = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @irq_get_irq_data(i32 noundef %12) #5
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call7, i32 0, i32 3
  %13 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %common.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and.i = and i32 %16, 15
  %17 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end46 [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 8, label %if.end.sw.bb_crit_edge154
    i32 1, label %do.end37
    i32 4, label %sw.epilog.thread149
  ]

if.end.sw.bb_crit_edge154:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge154
  %sensor_settings = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %sensor_settings to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sensor_settings, align 8
  %addr_ihl = getelementptr inbounds %struct.st_sensor_settings, ptr %19, i32 0, i32 11, i32 2
  %20 = ptrtoint ptr %addr_ihl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr_ihl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %do.end12, label %if.else

do.end12:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp14 = icmp eq i32 %and.i, 2
  %spec.store.select = select i1 %cmp14, i32 1, i32 %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.store.select)
  %cmp17 = icmp eq i32 %spec.store.select, 8
  %spec.store.select99 = select i1 %cmp17, i32 4, i32 %spec.store.select
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %mask_ihl = getelementptr inbounds %struct.st_sensor_settings, ptr %19, i32 0, i32 11, i32 3
  %22 = ptrtoint ptr %mask_ihl to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mask_ihl, align 1
  %call25 = tail call i32 @st_sensors_write_data_with_mask(ptr noundef %indio_dev, i8 noundef zeroext %21, i8 noundef zeroext %23, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.else.cleanup_crit_edge, label %do.end31

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %sw.epilog

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %if.then50

sw.epilog.thread149:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %if.else60

do.end46:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %and.i) #8
  br label %if.then50

sw.epilog:                                        ; preds = %do.end31, %do.end12
  %irq_trig.0 = phi i32 [ %and.i, %do.end31 ], [ %spec.store.select99, %do.end12 ]
  %irq_trig.0.off = add nsw i32 %irq_trig.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %irq_trig.0.off)
  %switch = icmp ult i32 %irq_trig.0.off, 2
  br i1 %switch, label %sw.epilog.if.then50_crit_edge, label %sw.epilog.if.else60_crit_edge

sw.epilog.if.else60_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else60

sw.epilog.if.then50_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then50

if.then50:                                        ; preds = %sw.epilog.if.then50_crit_edge, %do.end46, %do.end37
  %irq_trig.0148 = phi i32 [ %irq_trig.0, %sw.epilog.if.then50_crit_edge ], [ 1, %do.end46 ], [ 1, %do.end37 ]
  %sensor_settings51 = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %sensor_settings51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sensor_settings51, align 8
  %stat_drdy = getelementptr inbounds %struct.st_sensor_settings, ptr %25, i32 0, i32 11, i32 4
  %26 = ptrtoint ptr %stat_drdy to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %stat_drdy, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool53.not = icmp eq i8 %27, 0
  br i1 %tobool53.not, label %do.end57, label %if.end59

do.end57:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end59:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  %edge_irq = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %edge_irq to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %edge_irq, align 16
  br label %if.end61

if.else60:                                        ; preds = %sw.epilog.if.else60_crit_edge, %sw.epilog.thread149
  %irq_trig.0153 = phi i32 [ 4, %sw.epilog.thread149 ], [ %irq_trig.0, %sw.epilog.if.else60_crit_edge ]
  %or = or i32 %irq_trig.0153, 8192
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.end59
  %irq_trig.1 = phi i32 [ %irq_trig.0148, %if.end59 ], [ %or, %if.else60 ]
  %int_pin_open_drain = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %int_pin_open_drain to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %int_pin_open_drain, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool62.not = icmp eq i8 %30, 0
  br i1 %tobool62.not, label %if.end61.if.end70_crit_edge, label %land.lhs.true

if.end61.if.end70_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_settings63 = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %sensor_settings63 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sensor_settings63, align 8
  %stat_drdy65 = getelementptr inbounds %struct.st_sensor_settings, ptr %32, i32 0, i32 11, i32 4
  %33 = ptrtoint ptr %stat_drdy65 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %stat_drdy65, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool67.not = icmp eq i8 %34, 0
  %or69 = or i32 %irq_trig.1, 128
  %spec.select = select i1 %tobool67.not, i32 %irq_trig.1, i32 %or69
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true, %if.end61.if.end70_crit_edge
  %irq_trig.2 = phi i32 [ %irq_trig.1, %if.end61.if.end70_crit_edge ], [ %spec.select, %land.lhs.true ]
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 128
  %name73 = getelementptr inbounds %struct.iio_trigger, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %name73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name73, align 4
  %call75 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %36, ptr noundef nonnull @st_sensors_irq_handler, ptr noundef nonnull @st_sensors_irq_thread, i32 noundef %irq_trig.2, ptr noundef %40, ptr noundef %38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end82:                                         ; preds = %if.end70
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 128
  %call84 = tail call i32 @__devm_iio_trigger_register(ptr noundef %3, ptr noundef %42, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end90, label %if.end92

do.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #8
  br label %cleanup

if.end92:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 128
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %44, i32 0, i32 4
  %call.i = tail call ptr @get_device(ptr noundef %dev.i) #5
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %46) #5
  %trig95 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %47 = ptrtoint ptr %trig95 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %trig95, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %do.end90, %do.end80, %do.end57, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call75, %do.end80 ], [ %call84, %do.end90 ], [ 0, %if.end92 ], [ -95, %do.end57 ], [ %call25, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_write_data_with_mask(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_sensors_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %p, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call i64 @iio_get_time_ns(ptr noundef %1) #5
  %hw_timestamp = getelementptr inbounds %struct.st_sensor_data, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %hw_timestamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call2, ptr %hw_timestamp, align 8
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_sensors_irq_thread(i32 noundef %irq, ptr noundef %p) #0 align 64 {
entry:
  %status.i52 = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %p, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %hw_irq_trigger = getelementptr inbounds %struct.st_sensor_data, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %hw_irq_trigger to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_irq_trigger, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #5
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status.i, align 4, !annotation !77
  %sensor_settings.i = getelementptr inbounds %struct.st_sensor_data, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %sensor_settings.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sensor_settings.i, align 8
  %stat_drdy.i = getelementptr inbounds %struct.st_sensor_settings, ptr %8, i32 0, i32 11, i32 4
  %9 = ptrtoint ptr %stat_drdy.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %stat_drdy.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %st_sensors_new_samples_available.exit.thread74, label %if.end.i

st_sensors_new_samples_available.exit.thread74:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #5
  br label %if.then

if.end.i:                                         ; preds = %land.lhs.true
  %active_scan_mask.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %active_scan_mask.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.end.i.st_sensors_new_samples_available.exit.thread_crit_edge, label %if.end3.i

if.end.i.st_sensors_new_samples_available.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_sensors_new_samples_available.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %regmap.i = getelementptr inbounds %struct.st_sensor_data, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 8
  %conv.i = zext i8 %10 to i32
  %call.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %conv.i, ptr noundef nonnull %status.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %st_sensors_new_samples_available.exit

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.35) #8
  br label %st_sensors_new_samples_available.exit.thread

st_sensors_new_samples_available.exit.thread:     ; preds = %do.end.i, %if.end.i.st_sensors_new_samples_available.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #5
  br label %do.body

st_sensors_new_samples_available.exit:            ; preds = %if.end3.i
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status.i, align 4
  %19 = ptrtoint ptr %sensor_settings.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sensor_settings.i, align 8
  %mask.i = getelementptr inbounds %struct.st_sensor_settings, ptr %20, i32 0, i32 11, i32 4, i32 1
  %21 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mask.i, align 1
  %conv14.i = zext i8 %22 to i32
  %and.i = and i32 %18, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #5
  br i1 %tobool15.i.not, label %st_sensors_new_samples_available.exit.do.body_crit_edge, label %st_sensors_new_samples_available.exit.if.then_crit_edge

st_sensors_new_samples_available.exit.if.then_crit_edge: ; preds = %st_sensors_new_samples_available.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

st_sensors_new_samples_available.exit.do.body_crit_edge: ; preds = %st_sensors_new_samples_available.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %st_sensors_new_samples_available.exit.if.then_crit_edge, %st_sensors_new_samples_available.exit.thread74
  call void @iio_trigger_poll_chained(ptr noundef %p) #5
  %edge_irq = getelementptr inbounds %struct.st_sensor_data, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %edge_irq to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %edge_irq, align 16, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not = icmp eq i8 %24, 0
  br i1 %tobool9.not, label %if.then.cleanup_crit_edge, label %while.cond.preheader

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %if.then
  %25 = ptrtoint ptr %hw_irq_trigger to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hw_irq_trigger, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool13.not81 = icmp eq i8 %26, 0
  br i1 %tobool13.not81, label %while.cond.preheader.cleanup_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %active_scan_mask.i56 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %regmap.i59 = getelementptr inbounds %struct.st_sensor_data, ptr %3, i32 0, i32 6
  %parent29 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %hw_timestamp = getelementptr inbounds %struct.st_sensor_data, ptr %3, i32 0, i32 15
  br label %land.rhs

do.body:                                          ; preds = %st_sensors_new_samples_available.exit.do.body_crit_edge, %st_sensors_new_samples_available.exit.thread, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_sensors_irq_thread.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_sensors_irq_thread, %if.then7)) #5
          to label %cleanup [label %if.then7], !srcloc !78

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_sensors_irq_thread.__UNIQUE_ID_ddebug290, ptr noundef %28, ptr noundef nonnull @.str.33) #5
  br label %cleanup

land.rhs:                                         ; preds = %do.end32.land.rhs_crit_edge, %land.rhs.lr.ph
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i52) #5
  %29 = ptrtoint ptr %status.i52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %status.i52, align 4, !annotation !77
  %30 = ptrtoint ptr %sensor_settings.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sensor_settings.i, align 8
  %stat_drdy.i54 = getelementptr inbounds %struct.st_sensor_settings, ptr %31, i32 0, i32 11, i32 4
  %32 = ptrtoint ptr %stat_drdy.i54 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %stat_drdy.i54, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i55 = icmp eq i8 %33, 0
  br i1 %tobool.not.i55, label %st_sensors_new_samples_available.exit72.thread78, label %if.end.i58

st_sensors_new_samples_available.exit72.thread78: ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i52) #5
  br label %do.body15

if.end.i58:                                       ; preds = %land.rhs
  %34 = ptrtoint ptr %active_scan_mask.i56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %active_scan_mask.i56, align 4
  %tobool1.not.i57 = icmp eq ptr %35, null
  br i1 %tobool1.not.i57, label %if.end.i58.st_sensors_new_samples_available.exit72.thread_crit_edge, label %if.end3.i63

if.end.i58.st_sensors_new_samples_available.exit72.thread_crit_edge: ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_sensors_new_samples_available.exit72.thread

if.end3.i63:                                      ; preds = %if.end.i58
  %36 = ptrtoint ptr %regmap.i59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i59, align 8
  %conv.i60 = zext i8 %33 to i32
  %call.i61 = call i32 @regmap_read(ptr noundef %37, i32 noundef %conv.i60, ptr noundef nonnull %status.i52) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.i62 = icmp slt i32 %call.i61, 0
  br i1 %cmp.i62, label %do.end.i65, label %st_sensors_new_samples_available.exit72

do.end.i65:                                       ; preds = %if.end3.i63
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %parent29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent29, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.35) #8
  br label %st_sensors_new_samples_available.exit72.thread

st_sensors_new_samples_available.exit72.thread:   ; preds = %do.end.i65, %if.end.i58.st_sensors_new_samples_available.exit72.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i52) #5
  br label %cleanup

st_sensors_new_samples_available.exit72:          ; preds = %if.end3.i63
  %40 = ptrtoint ptr %status.i52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status.i52, align 4
  %42 = ptrtoint ptr %sensor_settings.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sensor_settings.i, align 8
  %mask.i66 = getelementptr inbounds %struct.st_sensor_settings, ptr %43, i32 0, i32 11, i32 4, i32 1
  %44 = ptrtoint ptr %mask.i66 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mask.i66, align 1
  %conv14.i67 = zext i8 %45 to i32
  %and.i68 = and i32 %41, %conv14.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool15.i69.not = icmp eq i32 %and.i68, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i52) #5
  br i1 %tobool15.i69.not, label %st_sensors_new_samples_available.exit72.cleanup_crit_edge, label %st_sensors_new_samples_available.exit72.do.body15_crit_edge

st_sensors_new_samples_available.exit72.do.body15_crit_edge: ; preds = %st_sensors_new_samples_available.exit72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

st_sensors_new_samples_available.exit72.cleanup_crit_edge: ; preds = %st_sensors_new_samples_available.exit72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body15:                                        ; preds = %st_sensors_new_samples_available.exit72.do.body15_crit_edge, %st_sensors_new_samples_available.exit72.thread78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_sensors_irq_thread.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_sensors_irq_thread, %if.then27)) #5
          to label %do.end32 [label %if.then27], !srcloc !78

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %parent29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent29, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_sensors_irq_thread.__UNIQUE_ID_ddebug291, ptr noundef %47, ptr noundef nonnull @.str.34) #5
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body15
  %call33 = call i64 @iio_get_time_ns(ptr noundef %1) #5
  %48 = ptrtoint ptr %hw_timestamp to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %call33, ptr %hw_timestamp, align 8
  call void @iio_trigger_poll_chained(ptr noundef %p) #5
  %49 = ptrtoint ptr %hw_irq_trigger to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hw_irq_trigger, align 1, !range !76
  %tobool13.not = icmp eq i8 %50, 0
  br i1 %tobool13.not, label %do.end32.cleanup_crit_edge, label %do.end32.land.rhs_crit_edge

do.end32.land.rhs_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %do.end32.cleanup_crit_edge, %st_sensors_new_samples_available.exit72.cleanup_crit_edge, %st_sensors_new_samples_available.exit72.thread, %if.then7, %do.body, %while.cond.preheader.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.then.cleanup_crit_edge ], [ 0, %do.body ], [ 1, %st_sensors_new_samples_available.exit72.thread ], [ 1, %while.cond.preheader.cleanup_crit_edge ], [ 1, %st_sensors_new_samples_available.exit72.cleanup_crit_edge ], [ 1, %do.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @st_sensors_validate_device(ptr nocapture noundef readonly %trig, ptr noundef readnone %indio_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.not = icmp eq ptr %1, %indio_dev
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !54, !56, !57, !58, !59, !61, !62, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 128, i32 47}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 131, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @st_sensors_allocate_trigger._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @st_sensors_allocate_trigger._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 147, i32 4}
!12 = !{ptr @st_sensors_allocate_trigger._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @st_sensors_allocate_trigger._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 160, i32 4}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @st_sensors_allocate_trigger._entry.9, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @st_sensors_allocate_trigger._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 165, i32 3}
!21 = !{ptr @st_sensors_allocate_trigger._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @st_sensors_allocate_trigger._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 169, i32 3}
!25 = !{ptr @st_sensors_allocate_trigger._entry.16, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @st_sensors_allocate_trigger._entry_ptr.18, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 174, i32 3}
!29 = !{ptr @st_sensors_allocate_trigger._entry.19, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @st_sensors_allocate_trigger._entry_ptr.21, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.23, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 183, i32 4}
!33 = !{ptr @st_sensors_allocate_trigger._entry.22, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @st_sensors_allocate_trigger._entry_ptr.24, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.26, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 218, i32 3}
!37 = !{ptr @st_sensors_allocate_trigger._entry.25, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @st_sensors_allocate_trigger._entry_ptr.27, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.29, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 224, i32 3}
!41 = !{ptr @st_sensors_allocate_trigger._entry.28, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @st_sensors_allocate_trigger._entry_ptr.30, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @__ksymtab_st_sensors_allocate_trigger, !44, !"__ksymtab_st_sensors_allocate_trigger", i1 false, i1 false}
!44 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 231, i32 1}
!45 = !{ptr @__ksymtab_st_sensors_validate_device, !46, !"__ksymtab_st_sensors_validate_device", i1 false, i1 false}
!46 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 243, i32 1}
!47 = !{ptr @__UNIQUE_ID_author292, !48, !"__UNIQUE_ID_author292", i1 false, i1 false}
!48 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 245, i32 1}
!49 = !{ptr @__UNIQUE_ID_description293, !50, !"__UNIQUE_ID_description293", i1 false, i1 false}
!50 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 246, i32 1}
!51 = !{ptr @__UNIQUE_ID_file294, !52, !"__UNIQUE_ID_file294", i1 false, i1 false}
!52 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 247, i32 1}
!53 = !{ptr @__UNIQUE_ID_license295, !52, !"__UNIQUE_ID_license295", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 91, i32 3}
!56 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @st_sensors_irq_thread.__UNIQUE_ID_ddebug290, !55, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 111, i32 3}
!61 = !{ptr @st_sensors_irq_thread.__UNIQUE_ID_ddebug291, !60, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/common/st_sensors/st_sensors_trigger.c", i32 45, i32 3}
!64 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @st_sensors_new_samples_available._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @st_sensors_new_samples_available._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i8 0, i8 2}
!77 = !{!"auto-init"}
!78 = !{i64 2148696825, i64 2148696830, i64 2148696843, i64 2148696887, i64 2148696921, i64 2148696942}
