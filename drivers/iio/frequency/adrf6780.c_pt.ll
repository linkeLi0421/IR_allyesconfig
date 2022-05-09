; ModuleID = '/llk/IR_all_yes/drivers/iio/frequency/adrf6780.c_pt.bc'
source_filename = "../drivers/iio/frequency/adrf6780.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
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
%struct.adrf6780_state = type { ptr, ptr, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [18 x i8], [3 x i8], [125 x i8] }

@__initcall__kmod_adrf6780__335_523_adrf6780_driver_init6 = internal global ptr @adrf6780_driver_init, section ".initcall6.init", align 4
@adrf6780_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adrf6780_id, ptr @adrf6780_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adrf6780_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adrf6780_driver_exit = internal global ptr @adrf6780_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author336 = internal constant [60 x i8] c"adrf6780.author=Antoniu Miclaus <antoniu.miclaus@analog.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description337 = internal constant [45 x i8] c"adrf6780.description=Analog Devices ADRF6780\00", section ".modinfo", align 1
@__UNIQUE_ID_file338 = internal constant [45 x i8] c"adrf6780.file=drivers/iio/frequency/adrf6780\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [24 x i8] c"adrf6780.license=GPL v2\00", section ".modinfo", align 1
@adrf6780_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adrf6780\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adrf6780\00", [23 x i8] zeroinitializer }, align 32
@adrf6780_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adrf6780\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adrf6780_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adrf6780_read_raw, ptr null, ptr null, ptr @adrf6780_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adrf6780_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adrf6780_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 15, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 15, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 15, i32 0, i32 32, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 16384, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -32 }, %struct.iio_chan_spec { i32 15, i32 0, i32 33, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 16384, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -32 }], [64 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lo_in\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get the LO input clock\0A\00", [62 x i8] zeroinitializer }, align 32
@adrf6780_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,vga-buff-en\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,lo-buff-en\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,if-mode-en\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,iq-mode-en\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adi,lo-x2-en\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adi,lo-ppf-en\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adi,lo-en\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,uc-bias-en\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,lo-sideband\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adi,vdet-out-en\00", [16 x i8] zeroinitializer }, align 32
@adrf6780_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 388, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ADRF6780 Invalid Chip ID.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adrf6780_init\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/frequency/adrf6780.c\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adrf6780_init._entry_ptr = internal global ptr @adrf6780_init._entry, section ".printk_index", align 4
@adrf6780_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.16, i32 356, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ADRF6780 SPI software reset failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adrf6780_reset\00", [17 x i8] zeroinitializer }, align 32
@adrf6780_reset._entry_ptr = internal global ptr @adrf6780_reset._entry, section ".printk_index", align 4
@adrf6780_reset._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.16, i32 364, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ADRF6780 SPI software reset disable failed.\0A\00", [51 x i8] zeroinitializer }, align 32
@adrf6780_reset._entry_ptr.23 = internal global ptr @adrf6780_reset._entry.21, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 14]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 33]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 14]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 33]
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"adrf6780_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 515, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"adrf6780_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 503, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 517, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"adrf6780_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 509, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"adrf6780_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 308, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"adrf6780_channels\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 340, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 476, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 479, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 490, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 432, i32 57 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 433, i32 56 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 434, i32 56 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 435, i32 56 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 436, i32 54 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 437, i32 55 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 438, i32 51 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 439, i32 56 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 440, i32 57 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 441, i32 57 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 388, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 356, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [36 x i8] c"../drivers/iio/frequency/adrf6780.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 364, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author336, ptr @__UNIQUE_ID_description337, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @__exitcall_adrf6780_driver_exit, ptr @__initcall__kmod_adrf6780__335_523_adrf6780_driver_init6, ptr @adrf6780_driver_exit, ptr @adrf6780_init._entry, ptr @adrf6780_init._entry_ptr, ptr @adrf6780_reset._entry, ptr @adrf6780_reset._entry.21, ptr @adrf6780_reset._entry_ptr, ptr @adrf6780_reset._entry_ptr.23, ptr @adrf6780_driver, ptr @adrf6780_id, ptr @.str, ptr @adrf6780_of_match, ptr @adrf6780_info, ptr @adrf6780_channels, ptr @.str.1, ptr @.str.2, ptr @adrf6780_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adrf6780_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adrf6780_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adrf6780_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adrf6780_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adrf6780_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adrf6780_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adrf6780_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adrf6780_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adrf6780_reset._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adrf6780_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adrf6780_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adrf6780_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adrf6780_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adrf6780_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @adrf6780_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @adrf6780_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %num_channels, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %1, align 128
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.4) #5
  %vga_buff_en.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 3
  %frombool.i = zext i1 %call.i.i to i8
  %7 = ptrtoint ptr %vga_buff_en.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool.i, ptr %vga_buff_en.i, align 4
  %call.i48.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.5) #5
  %lo_buff_en.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 4
  %frombool4.i = zext i1 %call.i48.i to i8
  %8 = ptrtoint ptr %lo_buff_en.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool4.i, ptr %lo_buff_en.i, align 1
  %call.i49.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.6) #5
  %if_mode_en.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 5
  %frombool7.i = zext i1 %call.i49.i to i8
  %9 = ptrtoint ptr %if_mode_en.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool7.i, ptr %if_mode_en.i, align 2
  %call.i50.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.7) #5
  %iq_mode_en.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 6
  %frombool10.i = zext i1 %call.i50.i to i8
  %10 = ptrtoint ptr %iq_mode_en.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool10.i, ptr %iq_mode_en.i, align 1
  %call.i51.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.8) #5
  %lo_x2_en.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 7
  %frombool13.i = zext i1 %call.i51.i to i8
  %11 = ptrtoint ptr %lo_x2_en.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool13.i, ptr %lo_x2_en.i, align 8
  %call.i52.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.9) #5
  %lo_ppf_en.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 8
  %frombool16.i = zext i1 %call.i52.i to i8
  %12 = ptrtoint ptr %lo_ppf_en.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool16.i, ptr %lo_ppf_en.i, align 1
  %call.i53.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.10) #5
  %lo_en.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 9
  %frombool19.i = zext i1 %call.i53.i to i8
  %13 = ptrtoint ptr %lo_en.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool19.i, ptr %lo_en.i, align 2
  %call.i54.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.11) #5
  %uc_bias_en.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 10
  %frombool22.i = zext i1 %call.i54.i to i8
  %14 = ptrtoint ptr %uc_bias_en.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool22.i, ptr %uc_bias_en.i, align 1
  %call.i55.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.12) #5
  %lo_sideband.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 11
  %frombool25.i = zext i1 %call.i55.i to i8
  %15 = ptrtoint ptr %lo_sideband.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool25.i, ptr %lo_sideband.i, align 4
  %call.i56.i = tail call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.13) #5
  %vdet_out_en.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 12
  %frombool28.i = zext i1 %call.i56.i to i8
  %16 = ptrtoint ptr %vdet_out_en.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool28.i, ptr %vdet_out_en.i, align 1
  %call4 = tail call ptr @devm_clk_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #5
  %clkin = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %clkin to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call4, ptr %clkin, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call4 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %18, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end17, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call4) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end.i
  %19 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clkin, align 4
  %call.i65 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @adrf6780_clk_disable, ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i66, label %do.body, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %20) #5
  tail call void @clk_unprepare(ptr noundef %20) #5
  br label %cleanup

do.body:                                          ; preds = %if.end17
  %lock = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @adrf6780_probe.__key) #5
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  %call.i.i68 = tail call fastcc i32 @__adrf6780_spi_update_bits(ptr noundef %1, i32 noundef 0, i32 noundef 16384, i32 noundef 16384) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68)
  %tobool.not.i.i = icmp eq i32 %call.i.i68, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.adrf6780_reset.exit.i_crit_edge

do.body.adrf6780_reset.exit.i_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %adrf6780_reset.exit.i

if.end.i.i:                                       ; preds = %do.body
  %call33.i.i = tail call fastcc i32 @__adrf6780_spi_update_bits(ptr noundef %1, i32 noundef 0, i32 noundef 16384, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end.i69, label %if.end.i.i.adrf6780_reset.exit.i_crit_edge

if.end.i.i.adrf6780_reset.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adrf6780_reset.exit.i

adrf6780_reset.exit.i:                            ; preds = %if.end.i.i.adrf6780_reset.exit.i_crit_edge, %do.body.adrf6780_reset.exit.i_crit_edge
  %.str.22.sink.i.i = phi ptr [ @.str.19, %do.body.adrf6780_reset.exit.i_crit_edge ], [ @.str.22, %if.end.i.i.adrf6780_reset.exit.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %call.i.i68, %do.body.adrf6780_reset.exit.i_crit_edge ], [ %call33.i.i, %if.end.i.i.adrf6780_reset.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull %.str.22.sink.i.i) #8
  br label %cleanup

if.end.i69:                                       ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %23 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %24 = call ptr @memset(ptr %23, i32 0, i32 84)
  %data.i.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -128, ptr %data.i.i, align 128
  %arrayidx2.i.i = getelementptr %struct.adrf6780_state, ptr %1, i32 0, i32 14, i32 1
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr %struct.adrf6780_state, ptr %1, i32 0, i32 14, i32 2
  %27 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx4.i.i, align 2
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %data.i.i, ptr %rx_buf.i.i, align 4
  %29 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %data.i.i, ptr %t.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %len.i.i, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %33 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %34 = call ptr @memset(ptr %33, i32 0, i32 40)
  %35 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %37 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.i69.spi_sync_transfer.exit.i.i_crit_edge

if.end.i69.spi_sync_transfer.exit.i.i_crit_edge:  ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_sync_transfer.exit.i.i

spi_sync_transfer.exit.i.i:                       ; preds = %if.end.i.i.i.i.i.i.i, %if.end.i69.spi_sync_transfer.exit.i.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %32, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i407.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i407.i, label %do.end17.i, label %__adrf6780_spi_read.exit.i

__adrf6780_spi_read.exit.i:                       ; preds = %spi_sync_transfer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  br label %cleanup

do.end17.i:                                       ; preds = %spi_sync_transfer.exit.i.i
  %43 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx2.i.i, align 1
  %conv2.i.i.i.i = zext i8 %44 to i32
  %shl3.i.i.i.i = shl nuw nsw i32 %conv2.i.i.i.i, 8
  %45 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i.i.i = zext i8 %46 to i32
  %or6.i.i.i.i = or i32 %shl3.i.i.i.i, %conv5.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  %47 = and i32 %or6.i.i.i.i, 8160
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %47)
  %cmp.not.i = icmp eq i32 %47, 320
  br i1 %cmp.not.i, label %if.end22.i, label %do.end21.i

do.end21.i:                                       ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end22.i:                                       ; preds = %do.end17.i
  %48 = ptrtoint ptr %vga_buff_en.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %vga_buff_en.i, align 4, !range !75
  %50 = zext i8 %49 to i32
  %shl.i = shl nuw nsw i32 %50, 8
  %51 = ptrtoint ptr %lo_buff_en.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %lo_buff_en.i, align 1, !range !75
  %53 = shl nuw nsw i8 %52, 6
  %shl95.i = zext i8 %53 to i32
  %54 = ptrtoint ptr %if_mode_en.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %if_mode_en.i, align 2, !range !75
  %56 = shl nuw nsw i8 %55, 5
  %shl127.i = zext i8 %56 to i32
  %57 = ptrtoint ptr %iq_mode_en.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %iq_mode_en.i, align 1, !range !75
  %59 = shl nuw nsw i8 %58, 4
  %shl159.i = zext i8 %59 to i32
  %60 = ptrtoint ptr %lo_x2_en.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %lo_x2_en.i, align 8, !range !75
  %62 = shl nuw nsw i8 %61, 3
  %shl191.i = zext i8 %62 to i32
  %63 = ptrtoint ptr %lo_ppf_en.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %lo_ppf_en.i, align 1, !range !75
  %65 = shl nuw nsw i8 %64, 2
  %shl223.i = zext i8 %65 to i32
  %66 = ptrtoint ptr %lo_en.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %lo_en.i, align 2, !range !75
  %68 = shl nuw nsw i8 %67, 1
  %shl255.i = zext i8 %68 to i32
  %69 = ptrtoint ptr %uc_bias_en.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %uc_bias_en.i, align 1, !range !75
  %71 = zext i8 %70 to i32
  %or.i = or i32 %shl.i, %shl95.i
  %or97.i = or i32 %or.i, %shl127.i
  %or129.i = or i32 %or97.i, %shl159.i
  %or161.i = or i32 %or129.i, %shl191.i
  %or193.i = or i32 %or161.i, %shl223.i
  %or225.i = or i32 %or193.i, %shl255.i
  %or257.i = or i32 %or225.i, %71
  %or289.i = or i32 %or257.i, 128
  %call290.i = call fastcc i32 @__adrf6780_spi_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 511, i32 noundef %or289.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290.i)
  %tobool291.not.i = icmp eq i32 %call290.i, 0
  br i1 %tobool291.not.i, label %if.end293.i, label %if.end22.i.cleanup_crit_edge

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end293.i:                                      ; preds = %if.end22.i
  %72 = ptrtoint ptr %lo_sideband.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %lo_sideband.i, align 4, !range !75
  %74 = zext i8 %73 to i32
  %shl323.i = shl nuw nsw i32 %74, 10
  %call325.i = call fastcc i32 @__adrf6780_spi_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 1024, i32 noundef %shl323.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325.i)
  %tobool326.not.i = icmp eq i32 %call325.i, 0
  br i1 %tobool326.not.i, label %adrf6780_init.exit, label %if.end293.i.cleanup_crit_edge

if.end293.i.cleanup_crit_edge:                    ; preds = %if.end293.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

adrf6780_init.exit:                               ; preds = %if.end293.i
  %75 = ptrtoint ptr %vdet_out_en.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %vdet_out_en.i, align 1, !range !75
  %77 = shl nuw nsw i8 %76, 3
  %shl358.i = zext i8 %77 to i32
  %call360.i = call fastcc i32 @__adrf6780_spi_update_bits(ptr noundef %1, i32 noundef 6, i32 noundef 8, i32 noundef %shl358.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call360.i)
  %tobool25.not = icmp eq i32 %call360.i, 0
  br i1 %tobool25.not, label %if.end27, label %adrf6780_init.exit.cleanup_crit_edge

adrf6780_init.exit.cleanup_crit_edge:             ; preds = %adrf6780_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %adrf6780_init.exit
  %call.i81 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @adrf6780_powerdown, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i82 = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i82, label %if.end32, label %devm_add_action_or_reset.exit85

devm_add_action_or_reset.exit85:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  call void @adrf6780_powerdown(ptr noundef %1) #5, !callees !76
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %call34 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %devm_add_action_or_reset.exit85, %adrf6780_init.exit.cleanup_crit_edge, %if.end293.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %do.end21.i, %__adrf6780_spi_read.exit.i, %adrf6780_reset.exit.i, %devm_add_action_or_reset.exit, %if.then3.i, %if.end12.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then7 ], [ %call34, %if.end32 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i65, %devm_add_action_or_reset.exit ], [ %call360.i, %adrf6780_init.exit.cleanup_crit_edge ], [ %call.i81, %devm_add_action_or_reset.exit85 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end12.cleanup_crit_edge ], [ %call325.i, %if.end293.i.cleanup_crit_edge ], [ %call290.i, %if.end22.i.cleanup_crit_edge ], [ %call.i.i.i, %__adrf6780_spi_read.exit.i ], [ %retval.0.ph.i.i, %adrf6780_reset.exit.i ], [ -22, %do.end21.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adrf6780_clk_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #5
  tail call void @clk_unprepare(ptr noundef %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adrf6780_powerdown(ptr noundef %data) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.adrf6780_state, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %data.i.i = getelementptr inbounds %struct.adrf6780_state, ptr %data, i32 0, i32 14
  %incdec.ptr.i.i.i.i = getelementptr %struct.adrf6780_state, ptr %data, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 6, ptr %data.i.i, align 1
  %incdec.ptr3.i.i.i.i = getelementptr %struct.adrf6780_state, ptr %data, i32 0, i32 14, i32 2
  %1 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %incdec.ptr.i.i.i.i, align 1
  %2 = ptrtoint ptr %incdec.ptr3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %incdec.ptr3.i.i.i.i, align 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %5 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %entry.adrf6780_spi_write.exit_crit_edge

entry.adrf6780_spi_write.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %adrf6780_spi_write.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %adrf6780_spi_write.exit

adrf6780_spi_write.exit:                          ; preds = %if.end.i.i.i.i.i.i.i.i, %entry.adrf6780_spi_write.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @mutex_unlock(ptr noundef %lock.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adrf6780_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %info) #2 align 64 {
entry:
  %msg.i.i85.i = alloca %struct.spi_message, align 4
  %t.i86.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !77
  %3 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 14, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %call.i = tail call fastcc i32 @__adrf6780_spi_update_bits(ptr noundef %1, i32 noundef 6, i32 noundef 7, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.adrf6780_read_adc_raw.exit.thread_crit_edge

sw.bb.adrf6780_read_adc_raw.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %adrf6780_read_adc_raw.exit.thread

if.end.i:                                         ; preds = %sw.bb
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 250, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %4 = getelementptr inbounds i8, ptr %t.i.i, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 84)
  %data.i.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -104, ptr %data.i.i, align 128
  %arrayidx2.i.i = getelementptr %struct.adrf6780_state, ptr %1, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr %struct.adrf6780_state, ptr %1, i32 0, i32 14, i32 2
  %8 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx4.i.i, align 2
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data.i.i, ptr %rx_buf.i.i, align 4
  %10 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data.i.i, ptr %t.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %len.i.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %14 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.i.spi_sync_transfer.exit.i.i_crit_edge

if.end.i.spi_sync_transfer.exit.i.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_sync_transfer.exit.i.i

spi_sync_transfer.exit.i.i:                       ; preds = %if.end.i.i.i.i.i.i.i, %if.end.i.spi_sync_transfer.exit.i.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end49.i, label %__adrf6780_spi_read.exit.i

__adrf6780_spi_read.exit.i:                       ; preds = %spi_sync_transfer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  br label %adrf6780_read_adc_raw.exit.thread

if.end49.i:                                       ; preds = %spi_sync_transfer.exit.i.i
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data.i.i, align 1
  %conv.i.i.i.i = zext i8 %25 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 16
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.i.i, align 1
  %conv2.i.i.i.i = zext i8 %27 to i32
  %shl3.i.i.i.i = shl nuw nsw i32 %conv2.i.i.i.i, 8
  %or.i.i.i.i = or i32 %shl3.i.i.i.i, %shl.i.i.i.i
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i.i.i = zext i8 %29 to i32
  %or6.i.i.i.i = or i32 %or.i.i.i.i, %conv5.i.i.i.i
  %shr.i.i = lshr i32 %or6.i.i.i.i, 1
  %and.i.i = and i32 %shr.i.i, 65535
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.i.i, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  %31 = and i32 %conv2.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool50.not.i = icmp eq i32 %31, 0
  br i1 %tobool50.not.i, label %if.end49.i.adrf6780_read_adc_raw.exit.thread_crit_edge, label %if.end52.i

if.end49.i.adrf6780_read_adc_raw.exit.thread_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adrf6780_read_adc_raw.exit.thread

if.end52.i:                                       ; preds = %if.end49.i
  %call69.i = call fastcc i32 @__adrf6780_spi_update_bits(ptr noundef %1, i32 noundef 6, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end72.i, label %if.end52.i.adrf6780_read_adc_raw.exit.thread_crit_edge

if.end52.i.adrf6780_read_adc_raw.exit.thread_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %adrf6780_read_adc_raw.exit.thread

if.end72.i:                                       ; preds = %if.end52.i
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i86.i) #5
  %32 = getelementptr inbounds i8, ptr %t.i86.i, i32 12
  %33 = call ptr @memset(ptr %32, i32 0, i32 84)
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -104, ptr %data.i.i, align 128
  %35 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %36 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx4.i.i, align 2
  %rx_buf.i90.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i86.i, i32 0, i32 1
  %37 = ptrtoint ptr %rx_buf.i90.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data.i.i, ptr %rx_buf.i90.i, align 4
  %38 = ptrtoint ptr %t.i86.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %data.i.i, ptr %t.i86.i, align 4
  %len.i91.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i86.i, i32 0, i32 2
  %39 = ptrtoint ptr %len.i91.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %len.i91.i, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i85.i) #5
  %42 = getelementptr inbounds i8, ptr %msg.i.i85.i, i32 8
  %43 = call ptr @memset(ptr %42, i32 0, i32 40)
  %44 = ptrtoint ptr %msg.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %msg.i.i85.i, ptr %msg.i.i85.i, align 4
  %prev.i.i.i.i.i.i92.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i85.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i85.i, ptr %prev.i.i.i.i.i.i92.i, align 4
  %resources.i.i.i.i.i93.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i85.i, i32 0, i32 10
  %46 = ptrtoint ptr %resources.i.i.i.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %resources.i.i.i.i.i93.i, ptr %resources.i.i.i.i.i93.i, align 4
  %prev.i2.i.i.i.i.i94.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i85.i, i32 0, i32 10, i32 1
  %47 = ptrtoint ptr %prev.i2.i.i.i.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %resources.i.i.i.i.i93.i, ptr %prev.i2.i.i.i.i.i94.i, align 4
  %transfer_list.i.i.i.i95.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i86.i, i32 0, i32 18
  %call.i.i.i.i.i.i96.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i95.i, ptr noundef nonnull %msg.i.i85.i, ptr noundef nonnull %msg.i.i85.i) #5
  br i1 %call.i.i.i.i.i.i96.i, label %if.end.i.i.i.i.i.i98.i, label %if.end72.i.spi_sync_transfer.exit.i101.i_crit_edge

if.end72.i.spi_sync_transfer.exit.i101.i_crit_edge: ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit.i101.i

if.end.i.i.i.i.i.i98.i:                           ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %transfer_list.i.i.i.i95.i, ptr %prev.i.i.i.i.i.i92.i, align 4
  %49 = ptrtoint ptr %transfer_list.i.i.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %msg.i.i85.i, ptr %transfer_list.i.i.i.i95.i, align 4
  %prev3.i.i.i.i.i.i97.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i86.i, i32 0, i32 18, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.i.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i85.i, ptr %prev3.i.i.i.i.i.i97.i, align 4
  %51 = ptrtoint ptr %msg.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %transfer_list.i.i.i.i95.i, ptr %msg.i.i85.i, align 4
  br label %spi_sync_transfer.exit.i101.i

spi_sync_transfer.exit.i101.i:                    ; preds = %if.end.i.i.i.i.i.i98.i, %if.end72.i.spi_sync_transfer.exit.i101.i_crit_edge
  %call.i.i99.i = call i32 @spi_sync(ptr noundef %41, ptr noundef nonnull %msg.i.i85.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i85.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i99.i)
  %tobool.not.i100.i = icmp eq i32 %call.i.i99.i, 0
  br i1 %tobool.not.i100.i, label %if.end, label %adrf6780_read_adc_raw.exit

adrf6780_read_adc_raw.exit.thread:                ; preds = %if.end52.i.adrf6780_read_adc_raw.exit.thread_crit_edge, %if.end49.i.adrf6780_read_adc_raw.exit.thread_crit_edge, %__adrf6780_spi_read.exit.i, %sw.bb.adrf6780_read_adc_raw.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ -22, %if.end49.i.adrf6780_read_adc_raw.exit.thread_crit_edge ], [ %call69.i, %if.end52.i.adrf6780_read_adc_raw.exit.thread_crit_edge ], [ %call.i.i.i, %__adrf6780_spi_read.exit.i ], [ %call.i, %sw.bb.adrf6780_read_adc_raw.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %cleanup

adrf6780_read_adc_raw.exit:                       ; preds = %spi_sync_transfer.exit.i101.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i86.i) #5
  call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %cleanup

if.end:                                           ; preds = %spi_sync_transfer.exit.i101.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx2.i.i, align 1
  %conv2.i.i.i104.i = zext i8 %53 to i32
  %shl3.i.i.i105.i = shl nuw nsw i32 %conv2.i.i.i104.i, 8
  %54 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i.i107.i = zext i8 %55 to i32
  %or6.i.i.i108.i = or i32 %shl3.i.i.i105.i, %conv5.i.i.i107.i
  %shr.i109.i = lshr i32 %or6.i.i.i108.i, 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i86.i) #5
  call void @mutex_unlock(ptr noundef %lock.i) #5
  %and = and i32 %shr.i109.i, 255
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %call3 = call fastcc i32 @adrf6780_spi_read(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data, align 4
  %and7 = and i32 %58, 255
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and7, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %call9 = call fastcc i32 @adrf6780_spi_read(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %60 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %channel2, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %61, label %if.end12.cleanup_crit_edge [
    i32 32, label %sw.bb13
    i32 33, label %do.end27
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb13:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data, align 4
  %and14 = and i32 %64, 15
  %65 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and14, ptr %val, align 4
  br label %cleanup

do.end27:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data, align 4
  %and28 = lshr i32 %67, 4
  %shr = and i32 %and28, 15
  %68 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shr, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %sw.bb13, %if.end12.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end6, %sw.bb2.cleanup_crit_edge, %if.end, %adrf6780_read_adc_raw.exit, %adrf6780_read_adc_raw.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end27 ], [ 1, %sw.bb13 ], [ 1, %if.end6 ], [ 1, %if.end ], [ %call.i.i99.i, %adrf6780_read_adc_raw.exit ], [ %call3, %sw.bb2.cleanup_crit_edge ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.i.ph, %adrf6780_read_adc_raw.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adrf6780_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 14, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @adrf6780_spi_write(ptr noundef %1, i32 noundef 4, i32 noundef %val)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %3 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %4, label %sw.bb2.cleanup_crit_edge [
    i32 32, label %do.end15
    i32 33, label %do.end39
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %and16 = and i32 %val, 15
  %lock.i = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %call.i = tail call fastcc i32 @__adrf6780_spi_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 15, i32 noundef %and16) #5
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %cleanup

do.end39:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %shl41 = shl i32 %val, 4
  %and42 = and i32 %shl41, 240
  %lock.i55 = getelementptr inbounds %struct.adrf6780_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i55, i32 noundef 0) #5
  %call.i56 = tail call fastcc i32 @__adrf6780_spi_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 240, i32 noundef %and42) #5
  tail call void @mutex_unlock(ptr noundef %lock.i55) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %do.end15, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i56, %do.end39 ], [ %call.i, %do.end15 ], [ %call1, %sw.bb ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adrf6780_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %write_val, ptr noundef writeonly %read_val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %read_val, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call fastcc i32 @adrf6780_spi_read(ptr noundef %1, i32 noundef %reg, ptr noundef nonnull %read_val)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call fastcc i32 @adrf6780_spi_write(ptr noundef %1, i32 noundef %reg, i32 noundef %write_val)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adrf6780_spi_read(ptr noundef %st, i32 noundef %reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.adrf6780_state, ptr %st, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %0 = getelementptr inbounds i8, ptr %t.i, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %reg.tr.i = trunc i32 %reg to i8
  %2 = shl i8 %reg.tr.i, 1
  %conv.i = or i8 %2, -128
  %data.i = getelementptr inbounds %struct.adrf6780_state, ptr %st, i32 0, i32 14
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %data.i, align 128
  %arrayidx2.i = getelementptr %struct.adrf6780_state, ptr %st, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.adrf6780_state, ptr %st, i32 0, i32 14, i32 2
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx4.i, align 2
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
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
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
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_sync_transfer.exit.i_crit_edge

entry.spi_sync_transfer.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %spi_sync_transfer.exit.i.__adrf6780_spi_read.exit_crit_edge

spi_sync_transfer.exit.i.__adrf6780_spi_read.exit_crit_edge: ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__adrf6780_spi_read.exit

if.end.i:                                         ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.i, align 1
  %conv.i.i.i = zext i8 %22 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2.i, align 1
  %conv2.i.i.i = zext i8 %24 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i.i.i = zext i8 %26 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %shr.i = lshr i32 %or6.i.i.i, 1
  %and.i = and i32 %shr.i, 65535
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i, ptr %val, align 4
  br label %__adrf6780_spi_read.exit

__adrf6780_spi_read.exit:                         ; preds = %if.end.i, %spi_sync_transfer.exit.i.__adrf6780_spi_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__adrf6780_spi_update_bits(ptr noundef %st, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %0 = getelementptr inbounds i8, ptr %t.i, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %reg.tr.i = trunc i32 %reg to i8
  %2 = shl i8 %reg.tr.i, 1
  %conv.i = or i8 %2, -128
  %data.i = getelementptr inbounds %struct.adrf6780_state, ptr %st, i32 0, i32 14
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %data.i, align 128
  %arrayidx2.i = getelementptr %struct.adrf6780_state, ptr %st, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.adrf6780_state, ptr %st, i32 0, i32 14, i32 2
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx4.i, align 2
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
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
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
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_sync_transfer.exit.i_crit_edge

entry.spi_sync_transfer.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %__adrf6780_spi_read.exit

__adrf6780_spi_read.exit:                         ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  br label %cleanup

if.end:                                           ; preds = %spi_sync_transfer.exit.i
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.i, align 1
  %conv.i.i.i = zext i8 %22 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2.i, align 1
  %conv2.i.i.i = zext i8 %24 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i.i.i = zext i8 %26 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %shr.i = lshr i32 %or6.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  %neg = and i32 %mask, 65535
  %and.i = xor i32 %neg, 65535
  %and = and i32 %and.i, %shr.i
  %and1 = and i32 %val, %mask
  %or = or i32 %and, %and1
  %shl.i = shl i32 %or, 1
  %shl1.i = shl i32 %reg, 17
  %or.i = or i32 %shl.i, %shl1.i
  %shr.i.i.i = lshr i32 %or.i, 16
  %conv.i.i.i10 = trunc i32 %shr.i.i.i to i8
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i.i.i10, ptr %data.i, align 1
  %shr1.i.i.i = lshr i32 %shl.i, 8
  %conv2.i.i.i11 = trunc i32 %shr1.i.i.i to i8
  %28 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv2.i.i.i11, ptr %arrayidx2.i, align 1
  %conv4.i.i.i = trunc i32 %shl.i to i8
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv4.i.i.i, ptr %arrayidx4.i, align 1
  %30 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %32 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 92)
  %34 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
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
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.__adrf6780_spi_write.exit_crit_edge

if.end.__adrf6780_spi_write.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__adrf6780_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
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
  br label %__adrf6780_spi_write.exit

__adrf6780_spi_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %if.end.__adrf6780_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %31, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %__adrf6780_spi_write.exit, %__adrf6780_spi_read.exit
  %retval.0 = phi i32 [ %call.i.i.i, %__adrf6780_spi_write.exit ], [ %call.i.i, %__adrf6780_spi_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adrf6780_spi_write(ptr noundef %st, i32 noundef %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.adrf6780_state, ptr %st, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %shl.i = shl i32 %val, 1
  %shl1.i = shl i32 %reg, 17
  %or.i = or i32 %shl.i, %shl1.i
  %data.i = getelementptr inbounds %struct.adrf6780_state, ptr %st, i32 0, i32 14
  %shr.i.i.i = lshr i32 %or.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %incdec.ptr.i.i.i = getelementptr %struct.adrf6780_state, ptr %st, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv.i.i.i, ptr %data.i, align 1
  %shr1.i.i.i = lshr i32 %shl.i, 8
  %conv2.i.i.i = trunc i32 %shr1.i.i.i to i8
  %incdec.ptr3.i.i.i = getelementptr %struct.adrf6780_state, ptr %st, i32 0, i32 14, i32 2
  %1 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv2.i.i.i, ptr %incdec.ptr.i.i.i, align 1
  %conv4.i.i.i = trunc i32 %shl.i to i8
  %2 = ptrtoint ptr %incdec.ptr3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4.i.i.i, ptr %incdec.ptr3.i.i.i, align 1
  %3 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.__adrf6780_spi_write.exit_crit_edge

entry.__adrf6780_spi_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__adrf6780_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %__adrf6780_spi_write.exit

__adrf6780_spi_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %entry.__adrf6780_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %4, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %call.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_adrf6780__335_523_adrf6780_driver_init6, !1, !"__initcall__kmod_adrf6780__335_523_adrf6780_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/frequency/adrf6780.c", i32 523, i32 1}
!2 = !{ptr @__exitcall_adrf6780_driver_exit, !1, !"__exitcall_adrf6780_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author336, !4, !"__UNIQUE_ID_author336", i1 false, i1 false}
!4 = !{!"../drivers/iio/frequency/adrf6780.c", i32 525, i32 1}
!5 = !{ptr @__UNIQUE_ID_description337, !6, !"__UNIQUE_ID_description337", i1 false, i1 false}
!6 = !{!"../drivers/iio/frequency/adrf6780.c", i32 526, i32 1}
!7 = !{ptr @__UNIQUE_ID_file338, !8, !"__UNIQUE_ID_file338", i1 false, i1 false}
!8 = !{!"../drivers/iio/frequency/adrf6780.c", i32 527, i32 1}
!9 = !{ptr @__UNIQUE_ID_license339, !8, !"__UNIQUE_ID_license339", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/frequency/adrf6780.c", i32 517, i32 11}
!12 = !{ptr @adrf6780_driver, !13, !"adrf6780_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/frequency/adrf6780.c", i32 515, i32 26}
!14 = !{ptr @adrf6780_id, !15, !"adrf6780_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/frequency/adrf6780.c", i32 503, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/frequency/adrf6780.c", i32 476, i32 38}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/frequency/adrf6780.c", i32 479, i32 10}
!20 = !{ptr @adrf6780_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/iio/frequency/adrf6780.c", i32 490, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @adrf6780_info, !24, !"adrf6780_info", i1 false, i1 false}
!24 = !{!"../drivers/iio/frequency/adrf6780.c", i32 308, i32 30}
!25 = !{ptr @adrf6780_channels, !26, !"adrf6780_channels", i1 false, i1 false}
!26 = !{!"../drivers/iio/frequency/adrf6780.c", i32 340, i32 35}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/frequency/adrf6780.c", i32 432, i32 57}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/frequency/adrf6780.c", i32 433, i32 56}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/frequency/adrf6780.c", i32 434, i32 56}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/frequency/adrf6780.c", i32 435, i32 56}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/frequency/adrf6780.c", i32 436, i32 54}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/frequency/adrf6780.c", i32 437, i32 55}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/frequency/adrf6780.c", i32 438, i32 51}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/frequency/adrf6780.c", i32 439, i32 56}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/frequency/adrf6780.c", i32 440, i32 57}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/frequency/adrf6780.c", i32 441, i32 57}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/frequency/adrf6780.c", i32 388, i32 3}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @adrf6780_init._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @adrf6780_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/frequency/adrf6780.c", i32 356, i32 3}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @adrf6780_reset._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @adrf6780_reset._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/frequency/adrf6780.c", i32 364, i32 3}
!62 = !{ptr @adrf6780_reset._entry.21, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @adrf6780_reset._entry_ptr.23, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @adrf6780_of_match, !65, !"adrf6780_of_match", i1 false, i1 false}
!65 = !{!"../drivers/iio/frequency/adrf6780.c", i32 509, i32 34}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i8 0, i8 2}
!76 = !{ptr @adrf6780_clk_disable, ptr @adrf6780_powerdown}
!77 = !{!"auto-init"}
