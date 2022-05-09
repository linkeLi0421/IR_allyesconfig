; ModuleID = '/llk/IR_all_yes/drivers/iio/frequency/admv1013.c_pt.bc'
source_filename = "../drivers/iio/frequency/admv1013.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
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
%struct.admv1013_state = type { ptr, ptr, %struct.mutex, ptr, %struct.notifier_block, i32, i32, i8, [3 x i8], [3 x i8], [125 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_admv1013__400_652_admv1013_driver_init6 = internal global ptr @admv1013_driver_init, section ".initcall6.init", align 4
@admv1013_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @admv1013_id, ptr @admv1013_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @admv1013_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_admv1013_driver_exit = internal global ptr @admv1013_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author401 = internal constant [60 x i8] c"admv1013.author=Antoniu Miclaus <antoniu.miclaus@analog.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description402 = internal constant [45 x i8] c"admv1013.description=Analog Devices ADMV1013\00", section ".modinfo", align 1
@__UNIQUE_ID_file403 = internal constant [45 x i8] c"admv1013.file=drivers/iio/frequency/admv1013\00", section ".modinfo", align 1
@__UNIQUE_ID_license404 = internal constant [24 x i8] c"admv1013.license=GPL v2\00", section ".modinfo", align 1
@admv1013_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"admv1013\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"admv1013\00", [23 x i8] zeroinitializer }, align 32
@admv1013_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,admv1013\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@admv1013_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @admv1013_read_raw, ptr null, ptr null, ptr @admv1013_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @admv1013_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@admv1013_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 15, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @admv1013_ext_info, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 15, i32 0, i32 32, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 15, i32 0, i32 33, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 15, i32 1, i32 32, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 15, i32 1, i32 33, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [104 x i8] zeroinitializer }, align 32
@admv1013_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to enable specified Common-Mode Voltage!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"admv1013_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/frequency/admv1013.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@admv1013_probe._entry_ptr = internal global ptr @admv1013_probe._entry, section ".printk_index", align 4
@admv1013_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@admv1013_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 621, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"admv1013 init failed\0A\00", [42 x i8] zeroinitializer }, align 32
@admv1013_probe._entry_ptr.9 = internal global ptr @admv1013_probe._entry.7, section ".printk_index", align 4
@admv1013_ext_info = internal constant { [3 x %struct.iio_chan_spec_ext_info], [36 x i8] } { [3 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.10, i32 0, ptr @admv1013_read, ptr @admv1013_write, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.11, i32 0, ptr @admv1013_read, ptr @admv1013_write, i32 1 }, %struct.iio_chan_spec_ext_info zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i_calibphase\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"q_calibphase\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adi,detector-enable\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,input-mode\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"iq\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"if\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adi,quad-se-mode\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"diff\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"se-pos\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"se-neg\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcm\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get the common-mode voltage\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lo_in\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get the LO input clock\0A\00", [62 x i8] zeroinitializer }, align 32
@admv1013_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid Chip ID.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"admv1013_init\00", [18 x i8] zeroinitializer }, align 32
@admv1013_init._entry_ptr = internal global ptr @admv1013_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 33]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 33]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"admv1013_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 644, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"admv1013_id\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 632, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 646, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"admv1013_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 638, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"admv1013_info\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 376, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"admv1013_channels\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 430, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 595, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 617, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 621, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"admv1013_ext_info\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 405, i32 44 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 406, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 407, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 286, i32 25 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 531, i32 52 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 533, i32 47 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 537, i32 19 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 539, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 544, i32 47 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 548, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 550, i32 24 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 552, i32 24 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 557, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 560, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 562, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 565, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [36 x i8] c"../drivers/iio/frequency/admv1013.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 463, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author401, ptr @__UNIQUE_ID_description402, ptr @__UNIQUE_ID_file403, ptr @__UNIQUE_ID_license404, ptr @__exitcall_admv1013_driver_exit, ptr @__initcall__kmod_admv1013__400_652_admv1013_driver_init6, ptr @admv1013_driver_exit, ptr @admv1013_init._entry, ptr @admv1013_init._entry_ptr, ptr @admv1013_probe._entry, ptr @admv1013_probe._entry.7, ptr @admv1013_probe._entry_ptr, ptr @admv1013_probe._entry_ptr.9, ptr @admv1013_driver, ptr @admv1013_id, ptr @.str, ptr @admv1013_of_match, ptr @admv1013_info, ptr @admv1013_channels, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @admv1013_probe.__key, ptr @.str.6, ptr @.str.8, ptr @admv1013_ext_info, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @admv1013_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @admv1013_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @admv1013_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @admv1013_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @admv1013_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @admv1013_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @admv1013_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @admv1013_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @admv1013_ext_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @admv1013_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @admv1013_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @admv1013_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @admv1013_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @admv1013_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @admv1013_probe(ptr noundef %spi) #2 align 64 {
entry:
  %str.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #6
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
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @admv1013_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @admv1013_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %num_channels, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str.i) #6
  %7 = ptrtoint ptr %str.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %str.i, align 4, !annotation !83
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %9, ptr noundef nonnull @.str.13) #6
  %det_en.i = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 7
  %frombool.i = zext i1 %call.i.i to i8
  %10 = ptrtoint ptr %det_en.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool.i, ptr %det_en.i, align 4
  %call3.i = call i32 @device_property_read_string(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef nonnull %str.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %input_mode.i = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %input_mode.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %input_mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %12 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %str.i, align 4
  %call4.i = call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(3) @.str.15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.else.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(3) @.str.16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.else.i.if.end14.i_crit_edge, label %if.else.i.admv1013_properties_parse.exit.thread_crit_edge

if.else.i.admv1013_properties_parse.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %admv1013_properties_parse.exit.thread

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.end.i.if.end14.i_crit_edge ], [ 1, %if.else.i.if.end14.i_crit_edge ]
  %input_mode11.i = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %input_mode11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink.i, ptr %input_mode11.i, align 4
  %call16.i = call i32 @device_property_read_string(ptr noundef %9, ptr noundef nonnull @.str.17, ptr noundef nonnull %str.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end19.i_crit_edge, label %if.then18.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %quad_se_mode.i = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %quad_se_mode.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12, ptr %quad_se_mode.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end14.i.if.end19.i_crit_edge
  %16 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %str.i, align 4
  %call20.i = call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(5) @.str.18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end37.i_crit_edge, label %if.else24.i

if.end19.i.if.end37.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.else24.i:                                      ; preds = %if.end19.i
  %call25.i = call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(7) @.str.19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.else24.i.if.end37.i_crit_edge, label %if.else29.i

if.else24.i.if.end37.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.else29.i:                                      ; preds = %if.else24.i
  %call30.i = call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(7) @.str.20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.else29.i.if.end37.i_crit_edge, label %if.else29.i.admv1013_properties_parse.exit.thread_crit_edge

if.else29.i.admv1013_properties_parse.exit.thread_crit_edge: ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %admv1013_properties_parse.exit.thread

if.else29.i.if.end37.i_crit_edge:                 ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else29.i.if.end37.i_crit_edge, %if.else24.i.if.end37.i_crit_edge, %if.end19.i.if.end37.i_crit_edge
  %.sink82.i = phi i32 [ 12, %if.end19.i.if.end37.i_crit_edge ], [ 6, %if.else24.i.if.end37.i_crit_edge ], [ 9, %if.else29.i.if.end37.i_crit_edge ]
  %quad_se_mode28.i = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %quad_se_mode28.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink82.i, ptr %quad_se_mode28.i, align 8
  %call39.i = call ptr @devm_regulator_get(ptr noundef %9, ptr noundef nonnull @.str.21) #6
  %reg.i = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call39.i, ptr %reg.i, align 4
  %cmp.i.i = icmp ugt ptr %call39.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end37.i.admv1013_properties_parse.exit_crit_edge, label %if.end47.i

if.end37.i.admv1013_properties_parse.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %admv1013_properties_parse.exit

if.end47.i:                                       ; preds = %if.end37.i
  %call49.i = call ptr @devm_clk_get(ptr noundef %9, ptr noundef nonnull @.str.23) #6
  %clkin.i = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %clkin.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call49.i, ptr %clkin.i, align 4
  %cmp.i81.i = icmp ugt ptr %call49.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81.i, label %if.end47.i.admv1013_properties_parse.exit_crit_edge, label %admv1013_properties_parse.exit.thread115

if.end47.i.admv1013_properties_parse.exit_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %admv1013_properties_parse.exit

admv1013_properties_parse.exit.thread115:         ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str.i) #6
  br label %if.end6

admv1013_properties_parse.exit.thread:            ; preds = %if.else29.i.admv1013_properties_parse.exit.thread_crit_edge, %if.else.i.admv1013_properties_parse.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str.i) #6
  br label %cleanup

admv1013_properties_parse.exit:                   ; preds = %if.end47.i.admv1013_properties_parse.exit_crit_edge, %if.end37.i.admv1013_properties_parse.exit_crit_edge
  %call49.sink.i = phi ptr [ %call39.i, %if.end37.i.admv1013_properties_parse.exit_crit_edge ], [ %call49.i, %if.end47.i.admv1013_properties_parse.exit_crit_edge ]
  %.str.24.sink.i = phi ptr [ @.str.22, %if.end37.i.admv1013_properties_parse.exit_crit_edge ], [ @.str.24, %if.end47.i.admv1013_properties_parse.exit_crit_edge ]
  %21 = ptrtoint ptr %call49.sink.i to i32
  %call56.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %9, i32 noundef %21, ptr noundef nonnull %.str.24.sink.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool4.not = icmp eq i32 %call56.i, 0
  br i1 %tobool4.not, label %admv1013_properties_parse.exit.if.end6_crit_edge, label %admv1013_properties_parse.exit.cleanup_crit_edge

admv1013_properties_parse.exit.cleanup_crit_edge: ; preds = %admv1013_properties_parse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

admv1013_properties_parse.exit.if.end6_crit_edge: ; preds = %admv1013_properties_parse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %admv1013_properties_parse.exit.if.end6_crit_edge, %admv1013_properties_parse.exit.thread115
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %call7 = call i32 @regulator_enable(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg.i, align 4
  %call.i = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @admv1013_reg_disable, ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i95 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i95, label %if.end17, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call.i112 = call i32 @regulator_disable(ptr noundef %25) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %clkin = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clkin, align 4
  %call.i98 = call i32 @clk_prepare(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i99 = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i99, label %if.end.i100, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i100:                                      ; preds = %if.end17
  %call1.i = call i32 @clk_enable(ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end21, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %27) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end.i100
  %28 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clkin, align 4
  %call.i102 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @admv1013_clk_disable, ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i103 = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i103, label %if.end27, label %devm_add_action_or_reset.exit106

devm_add_action_or_reset.exit106:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_disable(ptr noundef %29) #6
  call void @clk_unprepare(ptr noundef %29) #6
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %nb = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @admv1013_freq_change, ptr %nb, align 8
  %31 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clkin, align 4
  %call31 = call i32 @devm_clk_notifier_register(ptr noundef %spi, ptr noundef %32, ptr noundef %nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body35, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body35:                                        ; preds = %if.end27
  %lock = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @admv1013_probe.__key) #6
  %call38 = call fastcc i32 @admv1013_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end45:                                         ; preds = %do.body35
  %call.i107 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @admv1013_powerdown, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %if.end50, label %devm_add_action_or_reset.exit111

devm_add_action_or_reset.exit111:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void @admv1013_powerdown(ptr noundef %1) #6, !callees !84
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %devm_add_action_or_reset.exit111, %do.end43, %if.end27.cleanup_crit_edge, %devm_add_action_or_reset.exit106, %if.then3.i, %if.end17.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end, %admv1013_properties_parse.exit.cleanup_crit_edge, %admv1013_properties_parse.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %call38, %do.end43 ], [ %call52, %if.end50 ], [ -12, %entry.cleanup_crit_edge ], [ %call56.i, %admv1013_properties_parse.exit.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call.i102, %devm_add_action_or_reset.exit106 ], [ %call31, %if.end27.cleanup_crit_edge ], [ %call.i107, %devm_add_action_or_reset.exit111 ], [ -22, %admv1013_properties_parse.exit.thread ], [ %call1.i, %if.then3.i ], [ %call.i98, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @admv1013_reg_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @admv1013_clk_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #6
  tail call void @clk_unprepare(ptr noundef %data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @admv1013_freq_change(ptr noundef %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action)
  %cmp = icmp eq i32 %action, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %nb, i32 -104
  %lock = getelementptr i8, ptr %nb, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %clkin.i = getelementptr i8, ptr %nb, i32 -100
  %0 = ptrtoint ptr %clkin.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkin.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %1) #6
  %2 = add i32 %call.i, -1105032704
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000001, i32 %2)
  %3 = icmp ult i32 %2, 1600000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1694967295, i32 %2)
  %4 = icmp ult i32 %2, -1694967295
  %spec.select.i = select i1 %4, i32 10, i32 0
  %filt_raw.0.i = select i1 %3, i32 15, i32 %spec.select.i
  %call35.i = tail call fastcc i32 @__admv1013_spi_update_bits(ptr noundef %add.ptr, i32 noundef 9, i32 noundef 15, i32 noundef %filt_raw.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool.not.i = icmp eq i32 %call35.i, 0
  %sub.i = sub i32 1, %call35.i
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_notifier_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @admv1013_init(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 128
  %call = tail call fastcc i32 @__admv1013_spi_update_bits(ptr noundef %st, i32 noundef 0, i32 noundef 16384, i32 noundef 16384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call30 = tail call fastcc i32 @__admv1013_spi_update_bits(ptr noundef %st, i32 noundef 0, i32 noundef 16384, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %2 = getelementptr inbounds i8, ptr %t.i, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %data.i = getelementptr inbounds %struct.admv1013_state, ptr %st, i32 0, i32 9
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %data.i, align 128
  %arrayidx15.i = getelementptr %struct.admv1013_state, ptr %st, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx15.i, align 1
  %arrayidx17.i = getelementptr %struct.admv1013_state, ptr %st, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx17.i, align 2
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data.i, ptr %rx_buf.i, align 4
  %8 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data.i, ptr %t.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %len.i, align 4
  %10 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
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
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end33.spi_sync_transfer.exit.i_crit_edge

if.end33.spi_sync_transfer.exit.i_crit_edge:      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
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
  br label %spi_sync_transfer.exit.i

spi_sync_transfer.exit.i:                         ; preds = %if.end.i.i.i.i.i.i, %if.end33.spi_sync_transfer.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %11, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool22.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool22.not.i, label %do.end52, label %__admv1013_spi_read.exit

__admv1013_spi_read.exit:                         ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  br label %cleanup

do.end52:                                         ; preds = %spi_sync_transfer.exit.i
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx15.i, align 1
  %conv2.i.i.i = zext i8 %23 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx17.i, align 1
  %conv5.i.i.i = zext i8 %25 to i32
  %or6.i.i.i = or i32 %shl3.i.i.i, %conv5.i.i.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  %26 = and i32 %or6.i.i.i, 8160
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %26)
  %cmp.not = icmp eq i32 %26, 320
  br i1 %cmp.not, label %if.end58, label %do.end57

do.end57:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end58:                                         ; preds = %do.end52
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 21, ptr %data.i, align 1
  %28 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -50, ptr %arrayidx15.i, align 1
  %29 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx17.i, align 1
  %30 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %32 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 92)
  %34 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %36 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 40)
  %38 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %40 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end58.__admv1013_spi_write.exit_crit_edge

if.end58.__admv1013_spi_write.exit_crit_edge:     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %__admv1013_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %__admv1013_spi_write.exit

__admv1013_spi_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %if.end58.__admv1013_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %31, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool60.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool60.not, label %do.end82, label %__admv1013_spi_write.exit.cleanup_crit_edge

__admv1013_spi_write.exit.cleanup_crit_edge:      ; preds = %__admv1013_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end82:                                         ; preds = %__admv1013_spi_write.exit
  %quad_se_mode = getelementptr inbounds %struct.admv1013_state, ptr %st, i32 0, i32 6
  %46 = ptrtoint ptr %quad_se_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %quad_se_mode, align 8
  %shl = shl i32 %47, 6
  %and85 = and i32 %shl, 960
  %call86 = call fastcc i32 @__admv1013_spi_update_bits(ptr noundef %st, i32 noundef 9, i32 noundef 960, i32 noundef %and85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %do.end82.cleanup_crit_edge

do.end82.cleanup_crit_edge:                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end89:                                         ; preds = %do.end82
  %call90 = call fastcc i32 @admv1013_update_mixer_vgate(ptr noundef %st)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  %call94 = call fastcc i32 @admv1013_update_quad_filters(ptr noundef %st)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end97:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %det_en = getelementptr inbounds %struct.admv1013_state, ptr %st, i32 0, i32 7
  %48 = ptrtoint ptr %det_en to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %det_en, align 4, !range !85
  %50 = zext i8 %49 to i32
  %input_mode = getelementptr inbounds %struct.admv1013_state, ptr %st, i32 0, i32 5
  %51 = ptrtoint ptr %input_mode to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %input_mode, align 4
  %or = or i32 %52, %50
  %call99 = call fastcc i32 @__admv1013_spi_update_bits(ptr noundef %st, i32 noundef 3, i32 noundef 160, i32 noundef %or)
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.end93.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %do.end82.cleanup_crit_edge, %__admv1013_spi_write.exit.cleanup_crit_edge, %do.end57, %__admv1013_spi_read.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end57 ], [ %call99, %if.end97 ], [ %call, %entry.cleanup_crit_edge ], [ %call30, %if.end.cleanup_crit_edge ], [ %call.i.i, %__admv1013_spi_read.exit ], [ %call.i.i.i, %__admv1013_spi_write.exit.cleanup_crit_edge ], [ %call86, %do.end82.cleanup_crit_edge ], [ %call90, %if.end89.cleanup_crit_edge ], [ %call94, %if.end93.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @admv1013_powerdown(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.admv1013_state, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %call.i = tail call fastcc i32 @__admv1013_spi_update_bits(ptr noundef %data, i32 noundef 3, i32 noundef 64672, i32 noundef 64512) #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @admv1013_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %info) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %info)
  %cond = icmp eq i32 %info, 5
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 32, label %sw.bb.sw.epilog_crit_edge
    i32 33, label %sw.bb2
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb.sw.epilog_crit_edge
  %addr.0 = phi i32 [ 8, %sw.bb2 ], [ 7, %sw.bb.sw.epilog_crit_edge ]
  %call3 = call fastcc i32 @admv1013_spi_read(ptr noundef %1, i32 noundef %addr.0, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  %. = select i1 %tobool5.not, i32 9, i32 2
  %and35 = lshr i32 %9, %.
  %storemerge = and i32 %and35, 127
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call3, %sw.epilog.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @admv1013_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %info)
  %cond = icmp eq i32 %info, 5
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %3, label %sw.bb.cleanup_crit_edge [
    i32 32, label %sw.bb.sw.epilog_crit_edge
    i32 33, label %sw.bb2
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb.sw.epilog_crit_edge
  %addr.0 = phi i32 [ 8, %sw.bb2 ], [ 7, %sw.bb.sw.epilog_crit_edge ]
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %. = select i1 %tobool.not, i32 9, i32 2
  %.57 = select i1 %tobool.not, i32 65024, i32 508
  %shl40 = shl i32 %val, %.
  %and41 = and i32 %shl40, %.57
  %lock.i = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %call.i = tail call fastcc i32 @__admv1013_spi_update_bits(ptr noundef %1, i32 noundef %addr.0, i32 noundef %.57, i32 noundef %and41) #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @admv1013_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %write_val, ptr noundef writeonly %read_val) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %read_val, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @admv1013_spi_read(ptr noundef %1, i32 noundef %reg, ptr noundef nonnull %read_val)
  br label %cleanup

if.else:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %shl.i.i = shl i32 %write_val, 1
  %and9.i.i = and i32 %shl.i.i, 65536
  %shl27.i.i = shl i32 %reg, 17
  %and28.i.i = and i32 %shl27.i.i, 8257536
  %or.i.i = or i32 %and9.i.i, %and28.i.i
  %data.i.i = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 9
  %shr.i.i.i.i = lshr exact i32 %or.i.i, 16
  %conv.i.i.i.i = trunc i32 %shr.i.i.i.i to i8
  %incdec.ptr.i.i.i.i = getelementptr %struct.admv1013_state, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.i.i.i.i, ptr %data.i.i, align 1
  %shr1.i.i.i.i = lshr i32 %shl.i.i, 8
  %conv2.i.i.i.i = trunc i32 %shr1.i.i.i.i to i8
  %incdec.ptr3.i.i.i.i = getelementptr %struct.admv1013_state, ptr %1, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2.i.i.i.i, ptr %incdec.ptr.i.i.i.i, align 1
  %conv4.i.i.i.i = trunc i32 %shl.i.i to i8
  %4 = ptrtoint ptr %incdec.ptr3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4.i.i.i.i, ptr %incdec.ptr3.i.i.i.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #6
  %7 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.else.admv1013_spi_write.exit_crit_edge

if.else.admv1013_spi_write.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %admv1013_spi_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %admv1013_spi_write.exit

admv1013_spi_write.exit:                          ; preds = %if.end.i.i.i.i.i.i.i.i, %if.else.admv1013_spi_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %msg.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %admv1013_spi_write.exit, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call.i.i.i.i, %admv1013_spi_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @admv1013_spi_read(ptr noundef %st, i32 noundef %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.admv1013_state, ptr %st, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %0 = getelementptr inbounds i8, ptr %t.i, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %reg.tr.i = trunc i32 %reg to i8
  %2 = shl i8 %reg.tr.i, 1
  %conv.i = or i8 %2, -128
  %data.i = getelementptr inbounds %struct.admv1013_state, ptr %st, i32 0, i32 9
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %data.i, align 128
  %arrayidx15.i = getelementptr %struct.admv1013_state, ptr %st, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx15.i, align 1
  %arrayidx17.i = getelementptr %struct.admv1013_state, ptr %st, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx17.i, align 2
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %6 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data.i, ptr %rx_buf.i, align 4
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data.i, ptr %t.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %len.i, align 4
  %9 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_sync_transfer.exit.i_crit_edge

entry.spi_sync_transfer.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_sync_transfer.exit.i

spi_sync_transfer.exit.i:                         ; preds = %if.end.i.i.i.i.i.i, %entry.spi_sync_transfer.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool22.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool22.not.i, label %do.end39.i, label %spi_sync_transfer.exit.i.__admv1013_spi_read.exit_crit_edge

spi_sync_transfer.exit.i.__admv1013_spi_read.exit_crit_edge: ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__admv1013_spi_read.exit

do.end39.i:                                       ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.i, align 1
  %conv.i.i.i = zext i8 %22 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %23 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx15.i, align 1
  %conv2.i.i.i = zext i8 %24 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %25 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx17.i, align 1
  %conv5.i.i.i = zext i8 %26 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %and44.i = lshr i32 %or6.i.i.i, 1
  %shr.i = and i32 %and44.i, 65535
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr.i, ptr %val, align 4
  br label %__admv1013_spi_read.exit

__admv1013_spi_read.exit:                         ; preds = %do.end39.i, %spi_sync_transfer.exit.i.__admv1013_spi_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__admv1013_spi_update_bits(ptr noundef %st, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %0 = getelementptr inbounds i8, ptr %t.i, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %reg.tr.i = trunc i32 %reg to i8
  %2 = shl i8 %reg.tr.i, 1
  %conv.i = or i8 %2, -128
  %data.i = getelementptr inbounds %struct.admv1013_state, ptr %st, i32 0, i32 9
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %data.i, align 128
  %arrayidx15.i = getelementptr %struct.admv1013_state, ptr %st, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx15.i, align 1
  %arrayidx17.i = getelementptr %struct.admv1013_state, ptr %st, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx17.i, align 2
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %6 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data.i, ptr %rx_buf.i, align 4
  %7 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data.i, ptr %t.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %len.i, align 4
  %9 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_sync_transfer.exit.i_crit_edge

entry.spi_sync_transfer.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_sync_transfer.exit.i

spi_sync_transfer.exit.i:                         ; preds = %if.end.i.i.i.i.i.i, %entry.spi_sync_transfer.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool22.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool22.not.i, label %if.end, label %__admv1013_spi_read.exit

__admv1013_spi_read.exit:                         ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  br label %cleanup

if.end:                                           ; preds = %spi_sync_transfer.exit.i
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.i, align 1
  %23 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx15.i, align 1
  %25 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx17.i, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  %neg = and i32 %mask, 65535
  %shr.i = xor i32 %neg, 65535
  %conv2.i.i.i = zext i8 %24 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %conv.i.i.i = zext i8 %22 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %conv5.i.i.i = zext i8 %26 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %and44.i = lshr i32 %or6.i.i.i, 1
  %and = and i32 %shr.i, %and44.i
  %and1 = and i32 %val, %mask
  %or = or i32 %and, %and1
  %shl.i = shl i32 %or, 1
  %and9.i = and i32 %shl.i, 65536
  %shl27.i = shl i32 %reg, 17
  %and28.i = and i32 %shl27.i, 8257536
  %or.i = or i32 %and9.i, %and28.i
  %shr.i.i.i = lshr exact i32 %or.i, 16
  %conv.i.i.i12 = trunc i32 %shr.i.i.i to i8
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i.i.i12, ptr %data.i, align 1
  %shr1.i.i.i = lshr i32 %shl.i, 8
  %conv2.i.i.i13 = trunc i32 %shr1.i.i.i to i8
  %28 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv2.i.i.i13, ptr %arrayidx15.i, align 1
  %conv4.i.i.i = trunc i32 %shl.i to i8
  %29 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv4.i.i.i, ptr %arrayidx17.i, align 1
  %30 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %32 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 92)
  %34 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %36 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %37 = call ptr @memset(ptr %36, i32 0, i32 40)
  %38 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %40 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.__admv1013_spi_write.exit_crit_edge

if.end.__admv1013_spi_write.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__admv1013_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %__admv1013_spi_write.exit

__admv1013_spi_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %if.end.__admv1013_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %31, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %__admv1013_spi_write.exit, %__admv1013_spi_read.exit
  %retval.0 = phi i32 [ %call.i.i.i, %__admv1013_spi_write.exit ], [ %call.i.i, %__admv1013_spi_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @admv1013_read(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !83
  %3 = zext i32 %private to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %private, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %addr.0 = phi i32 [ 6, %sw.bb1 ], [ 5, %entry.sw.epilog_crit_edge ]
  %call2 = call fastcc i32 @admv1013_spi_read(ptr noundef %1, i32 noundef %addr.0, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end14, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end14:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %and = lshr i32 %5, 7
  %shr = and i32 %and, 127
  %call15 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %shr) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end14 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @admv1013_write(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !83
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.end16, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end16:                                         ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  %shl = shl i32 %4, 7
  %and17 = and i32 %shl, 16256
  store i32 %and17, ptr %data, align 4
  %5 = zext i32 %private to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %private, label %do.end16.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb22
  ]

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end16
  %lock.i = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %call.i40 = call fastcc i32 @__admv1013_spi_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 16256, i32 noundef %and17) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool19.not = icmp eq i32 %call.i40, 0
  br i1 %tobool19.not, label %sw.bb.cond.end_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

sw.bb22:                                          ; preds = %do.end16
  %lock.i41 = getelementptr inbounds %struct.admv1013_state, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i41, i32 noundef 0) #6
  %call.i42 = call fastcc i32 @__admv1013_spi_update_bits(ptr noundef %1, i32 noundef 6, i32 noundef 16256, i32 noundef %and17) #6
  call void @mutex_unlock(ptr noundef %lock.i41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool24.not = icmp eq i32 %call.i42, 0
  br i1 %tobool24.not, label %sw.bb22.cond.end_crit_edge, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb22.cond.end_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.end:                                         ; preds = %sw.bb22.cond.end_crit_edge, %sw.bb.cond.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.bb22.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %cond.end ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i40, %sw.bb.cleanup_crit_edge ], [ %call.i42, %sw.bb22.cleanup_crit_edge ], [ -22, %do.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @admv1013_update_quad_filters(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clkin = getelementptr inbounds %struct.admv1013_state, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkin, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #6
  %2 = add i32 %call, -1105032704
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000001, i32 %2)
  %3 = icmp ult i32 %2, 1600000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1694967295, i32 %2)
  %4 = icmp ult i32 %2, -1694967295
  %spec.select = select i1 %4, i32 10, i32 0
  %filt_raw.0 = select i1 %3, i32 15, i32 %spec.select
  %call35 = tail call fastcc i32 @__admv1013_spi_update_bits(ptr noundef %st, i32 noundef 9, i32 noundef 15, i32 noundef %filt_raw.0)
  ret i32 %call35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @admv1013_update_mixer_vgate(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.admv1013_state, ptr %st, i32 0, i32 3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %call = tail call i32 @regulator_get_voltage(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %call)
  %cmp = icmp ult i32 %call, 1800000
  br i1 %cmp, label %entry.do.end24_crit_edge, label %if.else

entry.do.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %call)
  %cmp2.not = icmp ne i32 %call, 1800000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2600000, i32 %call)
  %cmp3 = icmp ult i32 %call, 2600000
  %or.cond = and i1 %cmp2.not, %cmp3
  br i1 %or.cond, label %if.else.do.end24_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.do.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end24:                                         ; preds = %if.else.do.end24_crit_edge, %entry.do.end24_crit_edge
  %.sink37 = phi i32 [ 2389, %entry.do.end24_crit_edge ], [ 2375, %if.else.do.end24_crit_edge ]
  %.sink = phi i32 [ 8100, %entry.do.end24_crit_edge ], [ 125, %if.else.do.end24_crit_edge ]
  %mul5 = mul i32 %call, %.sink37
  %div6 = udiv i32 %mul5, 1000000
  %add7 = add nuw nsw i32 %div6, %.sink
  %mixer_vgate.0.lhs.trunc = trunc i32 %add7 to i16
  %mixer_vgate.036 = udiv i16 %mixer_vgate.0.lhs.trunc, 100
  %mixer_vgate.0.zext = zext i16 %mixer_vgate.036 to i32
  %call26 = tail call fastcc i32 @__admv1013_spi_update_bits(ptr noundef %st, i32 noundef 5, i32 noundef 127, i32 noundef %mixer_vgate.0.zext)
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %do.end24 ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_admv1013__400_652_admv1013_driver_init6, !1, !"__initcall__kmod_admv1013__400_652_admv1013_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/frequency/admv1013.c", i32 652, i32 1}
!2 = !{ptr @__exitcall_admv1013_driver_exit, !1, !"__exitcall_admv1013_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author401, !4, !"__UNIQUE_ID_author401", i1 false, i1 false}
!4 = !{!"../drivers/iio/frequency/admv1013.c", i32 654, i32 1}
!5 = !{ptr @__UNIQUE_ID_description402, !6, !"__UNIQUE_ID_description402", i1 false, i1 false}
!6 = !{!"../drivers/iio/frequency/admv1013.c", i32 655, i32 1}
!7 = !{ptr @__UNIQUE_ID_file403, !8, !"__UNIQUE_ID_file403", i1 false, i1 false}
!8 = !{!"../drivers/iio/frequency/admv1013.c", i32 656, i32 1}
!9 = !{ptr @__UNIQUE_ID_license404, !8, !"__UNIQUE_ID_license404", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/frequency/admv1013.c", i32 646, i32 11}
!12 = !{ptr @admv1013_driver, !13, !"admv1013_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/frequency/admv1013.c", i32 644, i32 26}
!14 = !{ptr @admv1013_id, !15, !"admv1013_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/frequency/admv1013.c", i32 632, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/frequency/admv1013.c", i32 595, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @admv1013_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @admv1013_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @admv1013_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/frequency/admv1013.c", i32 617, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/frequency/admv1013.c", i32 621, i32 3}
!29 = !{ptr @admv1013_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @admv1013_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @admv1013_info, !32, !"admv1013_info", i1 false, i1 false}
!32 = !{!"../drivers/iio/frequency/admv1013.c", i32 376, i32 30}
!33 = !{ptr @admv1013_channels, !34, !"admv1013_channels", i1 false, i1 false}
!34 = !{!"../drivers/iio/frequency/admv1013.c", i32 430, i32 35}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/frequency/admv1013.c", i32 406, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/frequency/admv1013.c", i32 407, i32 2}
!39 = !{ptr @admv1013_ext_info, !40, !"admv1013_ext_info", i1 false, i1 false}
!40 = !{!"../drivers/iio/frequency/admv1013.c", i32 405, i32 44}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/frequency/admv1013.c", i32 286, i32 25}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/frequency/admv1013.c", i32 531, i32 52}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/frequency/admv1013.c", i32 533, i32 47}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/frequency/admv1013.c", i32 537, i32 19}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/frequency/admv1013.c", i32 539, i32 24}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/frequency/admv1013.c", i32 544, i32 47}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/frequency/admv1013.c", i32 548, i32 19}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/frequency/admv1013.c", i32 550, i32 24}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/frequency/admv1013.c", i32 552, i32 24}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/frequency/admv1013.c", i32 557, i32 42}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/frequency/admv1013.c", i32 560, i32 10}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/frequency/admv1013.c", i32 562, i32 38}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/frequency/admv1013.c", i32 565, i32 10}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/frequency/admv1013.c", i32 463, i32 3}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @admv1013_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @admv1013_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @admv1013_of_match, !73, !"admv1013_of_match", i1 false, i1 false}
!73 = !{!"../drivers/iio/frequency/admv1013.c", i32 638, i32 34}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{ptr @admv1013_clk_disable, ptr @admv1013_powerdown, ptr @admv1013_reg_disable}
!85 = !{i8 0, i8 2}
